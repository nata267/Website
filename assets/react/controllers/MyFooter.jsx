// assets/react/controllers/MyFooter.js
import React from 'react';
import { Layout } from 'antd';

const { Footer } = Layout;

const MyFooter = (props) => {
  return (
    <Footer style={{ textAlign: 'center', }}>
      { props.text } &copy;2023
    </Footer>
  );
};

export default MyFooter;