// assets/react/controllers/LangDropDown.js
import React from 'react';
import { Dropdown, Space, Typography } from 'antd';
import { DownOutlined } from '@ant-design/icons';

const { Link, Paragraph } = Typography;

const items = [
  {
    label: ( <a rel="noopener noreferrer" href="?lang=ENG" class="lang-drop-down-link">ENG</a> ),
    key: 'ENG',
  },
  {
    label: ( <a rel="noopener noreferrer" href="?lang=SRP" class="lang-drop-down-link">SRP</a> ),
    key: 'SRP',
  },
  {
    label: ( <a rel="noopener noreferrer" href="?lang=RUS" class="lang-drop-down-link">RUS</a>),
    key: 'RUS',
  },
];

const LangDropDown = ( props ) => {
  return (
      <Dropdown menu={{ items }}>
        <Link onClick={(e) => e.preventDefault()}>
          <Space className="lang-drop-down-link">{ props.lang } <DownOutlined /></Space>
        </Link>
      </Dropdown>
  );
};

export default LangDropDown;