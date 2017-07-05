import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import CommentBox from './components/CommentBox';


$(function() {
  ReactDOM.render(
    <CommentBox/>,
    document.getElementById('commentBox')
  );
});
