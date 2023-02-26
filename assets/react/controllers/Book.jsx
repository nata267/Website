// assets/react/controllers/Book.js
import React, { useState, useEffect } from 'react';
import useWebSocket from 'react-use-websocket';

const subscribe = {
    method: 'SUBSCRIBE',
    params: [ 'btcusdt@depth5@1000ms' ],
    id: 1
};

const unsubscribe = {
    method: 'UNSUBSCRIBE',
    params: [ 'btcusdt@depth5@1000ms' ],
    id: 1
};

const Book = (props) => {
    const [bids, setBids] = useState([]); 
    const [asks, setAsks] = useState([]);
    const [ws, setWebsocket] = useState(null);
    const [haveData, setHaveData] = useState(false); 
    
    useEffect(() => {
        setWebsocket(old => {
           if(old !== null) {
               old.close();
           }
           
           const ws = new WebSocket('wss://stream.binance.com:9443/ws/' + props.symbol + '@depth5@100ms');
           /*ws.onopen = () => {
              ws.send(JSON.stringify(subscribe));
           }
           ws.onclose = () => {
              ws.send(JSON.stringify(unsubscribe));
           }*/
           ws.onmessage = evt => {
              const json = JSON.parse(evt.data);
              try {
                  if(json.hasOwnProperty('lastUpdateId')) {
                     setBids(json.bids);
                     setAsks(json.asks);
                     setHaveData(true);
                  }
              } catch (err) {
                 setHaveData(false);
              }
           };
           return ws;
        })
    }, [props.symbol]);
    
    if (!haveData) { 
      return <div>Loading...</div>
    } else {
      return (
        <>
        <div class="book">
           {props.name} SPOT (binance.com)<br/>
           <table style={{ width: '100%' }}>
                <tr>
                   <td style={{ width: '50%', textAlign: 'right', borderBottom: '1px solid #ddd'}}>Price - </td>
                   <td style={{ width: '50%', textAlign: 'left', borderBottom: '1px solid #ddd'}}>Volume</td>
                </tr>
           { asks.reverse().map((quote) => (
                <tr style={{color: '#cc0000'}} >
                  <td style={{ width: '50%', textAlign: 'right', borderBottom: '1px solid #ddd'}}>{Math.round(quote[0] * 10000) / 10000} - </td>
                  <td style={{ width: '50%', textAlign: 'left', borderBottom: '1px solid #ddd'}}>{quote[1]}</td></tr>
            )) } 
           { bids.map((quote) => (
                <tr style={{color: '#339966'}} >
                  <td style={{ width: '50%', textAlign: 'right', borderBottom: '1px solid #ddd' }}>{Math.round(quote[0] * 10000) / 10000} - </td>
                  <td style={{ width: '50%', textAlign: 'left', borderBottom: '1px solid #ddd'}}>{quote[1]}</td></tr>
            )) }
            </table>
       </div>
       </>
      );
   }
};

export default Book;