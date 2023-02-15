// assets/react/controllers/MyMenu.js
import React from 'react';
import { HomeOutlined, WechatOutlined, LineChartOutlined, GithubOutlined } from '@ant-design/icons';
import { Menu } from 'antd';

function getItems( props ) {
  return [
    {
      label: <a href="/" rel="noopener noreferrer">{ props.menu.about }</a>,
      key: 'about',
      icon: <HomeOutlined />,
    },
    {
      label: <a href="/demo" rel="noopener noreferrer">{ props.menu.demo }</a>,
      key: 'demo',
      icon: <LineChartOutlined />,
    },
    {
      label: <a href="https://github.com/nata267" target="_blank" rel="noopener noreferrer">Github</a>,
      key: 'github',
      icon: <GithubOutlined />,
    },
    {
      label: <a href="/chat" rel="noopener noreferrer">{ props.menu.chat }</a>,
      key: 'chat',
      icon: <WechatOutlined />,
    }
  ];
}

const MyMenu = ( props ) => {
  return (
      <Menu style={{ width: 200 }}
        defaultSelectedKeys={[ props.selected ]}
        mode='inline'
        items={ getItems( props ) }
      />
  );
};
export default MyMenu;