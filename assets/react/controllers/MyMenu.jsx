// assets/react/controllers/MyMenu.js
import React from 'react';
import { HomeOutlined, WechatOutlined, LineChartOutlined, GithubOutlined } from '@ant-design/icons';
import { Menu } from 'antd';

function getItems( props ) {
  return [
    {
      label: <a href="/" rel="noopener noreferrer">{ props.menu.about }</a>,
      key: 'about',
      icon: <HomeOutlined className="menu-icon"/>,
    },
    {
      label: <a href="/demo" rel="noopener noreferrer">{ props.menu.demo }</a>,
      key: 'demo',
      icon: <LineChartOutlined className="menu-icon"/>,
    },
    {
      label: <a href="https://github.com/nata267" target="_blank" rel="noopener noreferrer">Github</a>,
      key: 'github',
      icon: <GithubOutlined className="menu-icon"/>,
    },
    {
      label: <a href="/chat" rel="noopener noreferrer">{ props.menu.chat }</a>,
      key: 'chat',
      icon: <WechatOutlined className="menu-icon"/>,
    }
  ];
}

const MyMenu = ( props ) => {  
  return (
      <Menu 
        defaultSelectedKeys={[ props.selected ]}
        mode={ props.mode }
        theme={ props.theme }
        items={ getItems( props ) }
      />
  );
};
export default MyMenu;