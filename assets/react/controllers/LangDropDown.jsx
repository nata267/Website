// assets/react/controllers/LangDropDown.js
import React from 'react';
import { Dropdown, Space, Typography } from 'antd';
import { DownOutlined } from '@ant-design/icons';

const { Link, Paragraph } = Typography;

const items = [
  {
    label: ( <a rel="noopener noreferrer" href="?lang=ENG">ENG</a> ),
    key: 'ENG',
  },
  {
    label: ( <a rel="noopener noreferrer" href="?lang=SRP">SRP</a> ),
    key: 'SRP',
  },
  {
    label: ( <a rel="noopener noreferrer" href="?lang=RUS">RUS</a>),
    key: 'RUS',
  },
];

const LangDropDown = ( props ) => {
  return (
    <Paragraph style={{ textAlign: 'right', }}>
      <Dropdown menu={{ items }}>
        <Link onClick={(e) => e.preventDefault()}>
          <Space>{ props.lang } <DownOutlined /></Space>
        </Link>
      </Dropdown>
    </Paragraph>
  );
};

export default LangDropDown;