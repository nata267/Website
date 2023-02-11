// assets/react/controllers/Demo.js
import React, { useState } from 'react';
import { Divider, Dropdown, Space, Button } from 'antd';

import Chart from './Chart';

const items = [
  {
    label: 'BTC/USD',
    key: 'BTC/USD',
  },
  {
    label: 'ETH/USD',
    key: 'ETH/USD',
  },
  {
    label: 'LTC/USD',
    key: 'LTC/USD',
  },
  {
    label: 'XRP/USD',
    key: 'XRP/USD',
  }
];

const Demo = (props) => {
  const [symbol, setSymbol] = useState('BTC/USD'); 
  const [label, setLabel] = useState('BTC/USD'); 
  const [period, setPeriod] = useState(1); 

  const onDropdownClick = (e) => {
    setSymbol(e.key);
    setLabel(items.find((elm) => elm.key === e.key).label)
  };
  
    return (
    <>
      <div dangerouslySetInnerHTML={{__html: props.text}} />
      <Divider />
      <Space>
         <Dropdown.Button
           menu={{ 
             items,
             onClick: onDropdownClick }}
         >
           {label}
         </Dropdown.Button>
         
         {Object.keys(props.periods).map(key => {
            return (
               <>
                  <Divider type="vertical" />
                  <Button type="link" size="small" onClick={() => setPeriod(key)}>{props.periods[key]}</Button>
               </>
           );
         })}
         
      </Space>
      <Divider />
      <Chart name={symbol} source="1" period={period} />
    </>
    );
};

export default Demo;