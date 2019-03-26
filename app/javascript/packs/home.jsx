import React from 'react'
import ReactDOM from 'react-dom'

class Hello extends React.Component {
  render() {
    return <h1>Hello, Tania</h1>
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello />,
    document.body.appendChild(document.createElement('div')),
  )
})
