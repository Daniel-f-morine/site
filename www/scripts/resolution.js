//Note in most cases you should use local or session storage.
//Only use ID's for JS, use classes for styling, as ID's are global making them performance heavy.

let UserWidth = screen.width+"X"+screen.height;
const UserRes = document.querySelector("#resolution"); //delcare UserRes to be a header element
UserRes.innerText = "Your Resolution: " + UserWidth; //Modify the text of the header element to be UserWidth.













// document.cookie = "resolutioncook="+UserWidth; // (ignore SameSite) SameSite = Strict; NOTATION ->(name)=(value); expiration= (date); SameSite = (strict/lax/none);
// fetch("index.php", {
//     method: 'post',
//     headers: {
//         'Content-Type': 'application/json'
//     },
//     credentials: 'include'
// }).then(res => {
//     return res.json()
// })
// .then(data => console.log(data))
// .catch(error => console.log('ERROR'))

// //UPDATE, FUCK THAT, CUT YOUR LOSSES, WE NEED STYLING AND FEATURES OVER FETCH API KNOWLEDGE.  For now anyway.  I'll leave it documented here just incase.
// //Why is this fetch request failing?  Test a simpler version and work backwards from there.

// //client is .js, server is .php

// //https://www.youtube.com/watch?v=q-li1Zdnwuo (ajax explanation, see if u can convert to fetch)
// //(Cookie specific fetch info https://web.dev/introduction-to-fetch/)
// //If all else fails, just make the javascript display with HTMLelements or whatever the echo equivalent was.