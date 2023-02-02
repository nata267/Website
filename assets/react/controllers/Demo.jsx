// assets/react/controllers/Demo.js
import React from 'react';
import { Col, Row, Divider } from 'antd';

import Chart from './Chart';

const Demo = (props) => {
    return (
    <>
      <div dangerouslySetInnerHTML={{__html: props.text}} />
      <Divider />
      <Chart name="BTC/USD" min="23500" max="24000"/>
      <Divider />
      <Chart name="ETH/USD" min="1620" max="1700"/>
      <Divider />
      <Chart name="LTC/USD" min="97" max="103"/>
      <Divider />
      <Chart name="XRP/USD" min="0.408" max="0.418"/>
    </>
    );
};

export default Demo;