// assets/react/controllers/MyFooter.js
import React from 'react';
import { Layout } from 'antd';

const { Footer } = Layout;

const MyFooter = (props) => {
  return (
    <Footer className="footer">
      { props.text } &copy;2023
    </Footer>
  );
};

export default MyFooter;