// assets/react/controllers/Chat.js
import React from 'react';
import { Divider } from 'antd';

import Messages from './Messages';
import AddMessage from './AddMessage';

const Chat = (props) => {  
    return (
     <>
      <div dangerouslySetInnerHTML={{__html: props.text}} />
      <AddMessage />
      <Messages />
     </>
    );
};
export default Chat;