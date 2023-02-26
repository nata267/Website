// assets/react/controllers/About.js
import React from 'react';
import { Image } from 'antd';

const About = (props) => {
   return (
   <>
      <div style={{float: 'left', margin: '0 30px 20px 0'}}><Image width={200} src="/img/me_black_white.jpeg" /></div>
      <div dangerouslySetInnerHTML={{__html: props.text}} />
   </>
   );
};

export default About;