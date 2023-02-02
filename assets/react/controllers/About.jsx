// assets/react/controllers/About.js
import React from 'react';
    
const About = (props) => {
   return (
      <div dangerouslySetInnerHTML={{__html: props.text}} />
   );
};

export default About;