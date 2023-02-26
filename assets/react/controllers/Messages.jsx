// assets/react/controllers/Messages.js
import React, { useState, useEffect } from 'react';

const Messages = (props) => {  
  const [messages, setMessages] = useState([]);
  const [haveData, setHaveData] = useState(false); 

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await fetch('/api/messages' );
        const result = await res.json();
        
        setMessages( result );
        setHaveData(true);
        
      } catch(error) {
        setHaveData(false);
      }
    }
    
    fetchData();
    
    const interval = setInterval(() => {
       fetchData();
     }, 1000);
     
     //Clearing the interval
     return () => clearInterval(interval);
     
  }, [messages]);

  if (!haveData) { 
    return <div></div>
  } else {

    return (
     <p>
       {messages.map((message) => (
          <div style={{color: message.color}}><b>{message.time} {message.name}:</b> {message.text}</div>
       ))}
     </p>
    );
  }
};

export default Messages;