
const Alert = ({ messages }) => {
  return (
  	<div>
	 		{messages.map((message, i ) => (<li key={i}>{message}</li>))}
	  </div>
	 )
};
export default Alert;