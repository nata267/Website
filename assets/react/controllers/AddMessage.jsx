// assets/react/controllers/AddMessage.js
import React, { useState } from 'react';
import { Button, Input, Form, Space } from 'antd';
const { TextArea } = Input;

const AddMessage = (props) => {
  const [form] = Form.useForm();
  const [response, setResponse] = useState("");

  const onFinish = async (values) => {
    try {
      const res = await fetch('/api/messages/add', {
        method: "POST",
        body: JSON.stringify(values),
      });
      const result = await res.json();
      if (result.status === 'ok') {
        setResponse('');
        form.setFieldsValue({
             message: ''
        });
      } else {
        setResponse(result.error);
      }
    } catch(error) {
      setResponse(JSON.stringify(error));
    }
  }
  
  const onFinishFailed = (errors) => {
    setResponse('Please fill all required fields beow');
  };
    
  return (
  <>
    <p style={{color: 'red'}}>{response}</p>
    
    <Form form={form} 
         onFinish={onFinish} 
         onFinishFailed={onFinishFailed} size="small">
     <Space.Compact block>
      <Form.Item 
           name="name"
           rules={[{
             required: true,
             message: 'Please input your name!',
           }]} 
           style={{ width: '35%' }}>
         <Input 
          placeholder="Your name"
          showCount maxLength={30} 
          />
      </Form.Item>
      <Form.Item 
           name="email" 
           rules={[{
              type: 'email'
           }]}
           style={{ width: '35%' }}>  
         <Input 
          placeholder="Your email (optional)" 
          showCount maxLength={50} 
          />
       </Form.Item>
      </Space.Compact>
      <Space.Compact block>
       <Form.Item style={{ width: '70%' }}
           name="message"
           rules={[{
             required: true,
             message: 'Please input your message!',
           }]}>
          <Input
           placeholder="Your message" 
           showCount maxLength={500} 
            />
       </Form.Item>
       <Form.Item>
          <Button type="primary" htmlType="submit">Send</Button> 
       </Form.Item>
      </Space.Compact>
    </Form>
  </>
    );
};

export default AddMessage;