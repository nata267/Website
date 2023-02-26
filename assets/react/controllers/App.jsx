// assets/react/controllers/App.js
import React, { useState } from 'react';
import { useMediaQuery } from 'react-responsive';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { Layout, Space, theme, Drawer } from 'antd';
import { StyleProvider, legacyLogicalPropertiesTransformer } from '@ant-design/cssinjs';
import { MenuOutlined } from '@ant-design/icons';
const { Header, Content } = Layout;

import ErrorBoundary from './ErrorBoundary';
import MyMenu from './MyMenu';
import LangDropDown from './LangDropDown';
import MyFooter from './MyFooter';
import About from './About';
import Demo from './Demo';
import Chat from './Chat';

const App = ({ props }) => {  

  const isTabletOrMobile = useMediaQuery({ query: "(max-width: 1224px)" });
  const isDesktopOrLaptop = useMediaQuery({
    query: "(min-width: 1224px)",
  });
  
  const [openMenu, setOpenMenu] = useState(false);
  
  const {
    token: { colorBgContainer },
  } = theme.useToken();
  
  return (
      <ErrorBoundary>
      <StyleProvider hashPriority="high" transformers={[legacyLogicalPropertiesTransformer]}>
    <Layout>
     
      
      {isDesktopOrLaptop && (
       <Header className="header">
         <div class="logo">
           Natalia Romanova PR
         </div>
         
         <MyMenu menu={ props.menu } selected={ props.selected } theme="dark" mode="horizontal"/>
         <div class="lang-drop-down">
            <LangDropDown lang={ props.lang }/>
         </div>
      </Header>
       )}
       
       {isTabletOrMobile && (
       <Header className="header">
          <MenuOutlined className="menu-button" onClick={()=>{ setOpenMenu(true) }}/>
          <Drawer placement="left" open={openMenu} closable={false} onClose={()=>{ setOpenMenu(false) }}>
              <MyMenu menu={ props.menu } selected={ props.selected } theme="light" mode="inline"/>
           </Drawer>
           
           <div class="logo">
             Natalia Romanova PR
            </div>
         
            <div class="lang-drop-down">
               <LangDropDown lang={ props.lang }/>
             </div>
         </Header>
       )}
       
      <Content className="site-layout-content">
        <div
          style={{
            padding: 24,
            minHeight: 600,
            background: colorBgContainer,
          }}
        >
           <BrowserRouter>
              <Switch>
                 <Route path="/" exact component={() => (<About text={ props.contents } />)} />
                 <Route path="/chat" exact component={() => (<Chat text={ props.contents } />)} />
                 <Route path="/demo" exact component={() => (<Demo text={ props.contents } periods={ props.periods }/>)} />
               </Switch>
           </BrowserRouter>
        </div>
      </Content>
      <MyFooter text={ props.header }/>
    </Layout>

      </StyleProvider>
      </ErrorBoundary>
  );
};

export default App;