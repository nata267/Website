// assets/react/controllers/Chart.js
import React, { useState, useEffect } from 'react';

import { Line } from 'react-chartjs-2';
import { CategoryScale, LinearScale, TimeScale, PointElement, LineElement, Title, Tooltip, Legend, Chart as ChartJS } from "chart.js";
ChartJS.register( CategoryScale, LinearScale, TimeScale, PointElement, LineElement,  Title, Tooltip, Legend );
import { Moment } from 'chartjs-adapter-moment';

import ErrorBoundary from './ErrorBoundary';

const Chart = (props) => {
  const [chartData, setChartData] = useState({ labels: [], datasets: [{ label: props.name, data: [] }] });
  const [haveData, setHaveData] = useState(false); 
  const [text, setText] = useState({}); 

  useEffect(() => {
  
    const fetchData = async () => {
      try {
        const res = await fetch('/api/crypto?symbol='+ props.name );
        const result = await res.json();
        
        setText( JSON.stringify(result) );
        setChartData( result );
        
        /*setChartData(oldData => {
          const copyData = Object.assign({}, oldData);
          copyData.datasets[0].data.push(result.response[0].c);
          copyData.labels.push(result.response[0].tm);
          if(copyData.labels.length > 10)
          {
             copyData.labels.shift();
             copyData.datasets[0].data.shift();
          }
          return copyData;
        });*/
       
        setHaveData(true);
        
      } catch(error) {
        setHaveData(false);
      }
    }
    
    const interval = setInterval(() => {
    
       fetchData();
       
       /*setChartData(oldData => {
          const copyData = Object.assign({}, oldData);
          copyData.datasets[0].data.push(Math.random() * (23900 - 16500) + 16500);
          copyData.labels.push(new Date());
          if(copyData.labels.length > 10)
          {
             copyData.labels.shift();
             copyData.datasets[0].data.shift();
          }
          return copyData;
       });

       setHaveData(true);*/
     }, 1000);
     
     //Clearing the interval
     return () => clearInterval(interval);
     
  }, [chartData]);

  if (!haveData) { 
    return <div>Loading...</div>
  } else {

    return (
     <ErrorBoundary>
       <div style={{ width: '600px' }}>
       <Line
        data={ chartData } 
        options={{ 
          scales: {
                x: {
                    type: 'time',
                },
                y: {
                    suggestedMin: props.min,
                    suggestedMax: props.max,
                    ticks: {
                       callback: function(value, index, ticks) {
                           return '$' + value;
                       }
                    }
                }
            },
          animation: {
             duration: 0
          },
        }}
       /></div></ErrorBoundary>
    );

  }
};

export default Chart;