// assets/react/controllers/App.js
import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { Layout, Space, Image, theme, Typography } from 'antd';
const { Sider, Content } = Layout;
const { Paragraph } = Typography;

import ErrorBoundary from './ErrorBoundary';
import MyMenu from './MyMenu';
import LangDropDown from './LangDropDown';
import MyFooter from './MyFooter';
import About from './About';
import Demo from './Demo';
import Chat from './Chat';

const App = ({ props }) => {  
  const {
    token: { colorBgContainer },
  } = theme.useToken();
  
  return (
  <ErrorBoundary>
    <Space direction="vertical" style={{ width: '100%', }} size={[0, 48]}>
      <Layout className="layout">
    
        <Content style={{ padding: '0 50px' }}>
          <Layout style={{ padding: '24px', background: colorBgContainer, minWidth: 900 }}>
          
            <Sider style={{ background: colorBgContainer }} width={200}>
              <Image width={200} src="../img/me_black_white.jpeg" />
              <MyMenu menu={ props.menu } selected={ props.selected } />
            </Sider>
          
            <Content style={{ padding: '0 24px', minHeight: 600 }}>
              <LangDropDown lang={ props.lang }/>
              
              <Paragraph>
                 <h3>{ props.header }</h3>
                 
                 <BrowserRouter>
                    <Switch>
                       <Route path="/" exact component={() => (<About text={ props.contents } />)} />
                       <Route path="/chat" exact component={() => (<Chat text={ props.contents } />)} />
                       <Route path="/demo" exact component={() => (<Demo text={ props.contents } periods={ props.periods }/>)} />
                    </Switch>
                 </BrowserRouter>
                 
              </Paragraph>
            </Content>
           
          </Layout>
        </Content>
      
        <MyFooter text={ props.header }/>
      
      </Layout>
    </Space>
  </ErrorBoundary>
  );

};

export default App;