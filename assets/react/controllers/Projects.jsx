// assets/react/controllers/App.js
import React, { useState } from 'react';
import { Avatar, List, Space, Image } from 'antd';
import { StarOutlined, LikeOutlined, MessageOutlined } from '@ant-design/icons';

import ErrorBoundary from './ErrorBoundary';

const data = [
{
  title: 'Client-server banking application "Currencies Board"',
  description:
    'Technologies: <b>C++/QT 5.3.1, sqlite, tcp, xml</b>',
  content:
    'Architecture,  implementation of client-side, server-side software, building structure of database, developing of hand-coded http server, writing installation scripts., to help people create their product prototypes beautifully and efficiently.',
  images: ['currencies_1.png', 'currencies_2.png', 'currencies_3.png']
},

{
  title: 'Client-server banking application "Currencies Board"',
  description:
    'Technologies: <b>C++/QT 5.3.1, sqlite, tcp, xml</b>',
  content:
    'Architecture,  implementation of client-side, server-side software, building structure of database, developing of hand-coded http server, writing installation scripts., to help people create their product prototypes beautifully and efficiently.',
},

];

const MyImage = (props) => {
const [visible, setVisible] = useState(false);
return (
     <><Image
        preview={{
          visible: false,
        }}
        width={200}
        src="/img/cookbook.jpeg"
        onClick={() => setVisible(true)}
      /><div
        style={{
          display: 'none',
        }}
      ><Image.PreviewGroup
          preview={{
            visible,
            onVisibleChange: (vis) => setVisible(vis),
          }}
        >
          <Image src="/img/cookbook.jpeg" />
          <Image src="/img/coauthor_1.jpeg" />
        </Image.PreviewGroup>
      </div></>
  )
};

const Projects = () => {  

return (
<ErrorBoundary>
  <List
    itemLayout="vertical"
    size="large"
    dataSource={data}
    renderItem={(item) => (
      <List.Item
        key={item.title}
        extra={<MyImage images={item.images} />}
      >
        <List.Item.Meta
          title={item.title}
          description={item.description}
        />
        {item.content}
      </List.Item>
    )}
  /></ErrorBoundary>
);
};
export default Projects;