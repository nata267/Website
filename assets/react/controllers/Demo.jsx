// assets/react/controllers/Demo.js
import React, { useState } from 'react';
import { Divider, Dropdown, Space, Button } from 'antd';

import Chart from './Chart';
import Book from './Book';

const items = [
  {
    label: 'BTC/USD',
    key: 'BTC/USD',
    alias: 'btcusdt'
  },
  {
    label: 'ETH/USD',
    key: 'ETH/USD',
    alias: 'ethusdt'
  },
  {
    label: 'LTC/USD',
    key: 'LTC/USD',
    alias: 'ltcusdt'
  },
  {
    label: 'XRP/USD',
    key: 'XRP/USD',
    alias: 'xrpusdt'
  }
];

const Demo = (props) => {
  const [symbol, setSymbol] = useState('BTC/USD'); 
  const [label, setLabel] = useState('BTC/USD'); 
  const [alias, setAlias] = useState('btcusdt'); 
  const [period, setPeriod] = useState(1); 

  const onDropdownClick = (e) => {
    setSymbol(e.key);
    setLabel(items.find((elm) => elm.key === e.key).label);
    setAlias(items.find((elm) => elm.key === e.key).alias);
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
                  <Button type="link" onClick={() => setPeriod(key)}>{props.periods[key]}</Button>
               </>
           );
         })}
      </Space>
      <Divider />
      <Chart name={symbol} source="1" period={period} />
      <Divider />
      <Book name={symbol} symbol={alias}/>
    </>
    );
};

export default Demo;