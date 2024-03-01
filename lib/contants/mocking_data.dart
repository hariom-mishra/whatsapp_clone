const info = [
  {
    'name': 'Rajesh Kumar',
    'message':
        'Hey there! Did you hear about the talking dog? He said he wants a "cat" scan!',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'Vikram Singh',
    'message':
        'Hello, do you know why the bicycle couldn\'t stand up by itself? Because it was two-tired!',
    'time': '2:25 pm',
    'profilePic':
        'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
  },
  {
    'name': 'Neha Sharma',
    'message':
        'Hey there, I told my wife she was drawing her eyebrows too high. She looked surprised!',
    'time': '1:03 pm',
    'profilePic':
        'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
  },
  {
    'name': 'Pawan Gupta',
    'message':
        'Call me ASAP, I found a solution to world peace... it\'s pizza!',
    'time': '12:06 pm',
    'profilePic':
        'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
  },
  {
    'name': 'Meera Patel',
    'message':
        'Hey, did you hear about the mathematician who’s afraid of negative numbers? He’ll stop at nothing to avoid them!',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Rahul Sharma',
    'message':
        'Hey buddy, why don\'t scientists trust atoms? Because they make up everything!',
    'time': '9:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Aarav Gupta',
    'message': 'Am I fat? Ha! You’re so funny you should be on Comedy Central!',
    'time': '7:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Alok Verma',
    'message':
        'I am from the International Olympics for Lazy People. It\'s called The Napping Games!',
    'time': '6:02 am',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Satyam Singh',
    'message': 'Let\'s Code! And by code, I mean let\'s order pizza!',
    'time': '4:56 am',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Priya Gupta',
    'message':
        'I found some amazing images on Unsplash. And by "found," I mean I spent hours procrastinating!',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
];

const messages = [
  {
    "isMe": false,
    "text": "Good morning! How's your day shaping up so far?",
    "time": "9:00 am"
  },
  {
    "isMe": true,
    "text": "Good morning! It's been busy already, but I'm managing. You?",
    "time": "9:05 am"
  },
  {
    "isMe": false,
    "text":
        "Same here, lots to tackle. By the way, did you catch the quarterly report presentation yesterday?",
    "time": "9:08 am"
  },
  {
    "isMe": true,
    "text":
        "Yes, I did. Quite insightful, especially the market analysis section.",
    "time": "9:10 am"
  },
  {
    "isMe": false,
    "text":
        "Absolutely, it provided a clear picture of our standing. On another note, have you finalized the agenda for tomorrow's meeting?",
    "time": "9:15 am"
  },
  {
    "isMe": true,
    "text":
        "Not yet, but I'm working on it. We need to ensure we cover all key points regarding the upcoming project milestones.",
    "time": "9:18 am"
  },
  {
    "isMe": false,
    "text":
        "Agreed. It's crucial to align everyone's understanding and expectations.",
    "time": "9:20 am"
  },
  {
    "isMe": true,
    "text":
        "Exactly. I'll send over the draft agenda by midday for your review.",
    "time": "9:25 am"
  },
  {
    "isMe": false,
    "text":
        "Great, I'll provide feedback promptly. Also, let's touch base later about the client meeting logistics.",
    "time": "9:30 am"
  },
  {
    "isMe": true,
    "text":
        "Sounds like a plan. I'll catch up with you after my conference call at 11.",
    "time": "9:32 am"
  },
  {
    "isMe": false,
    "text": "Perfect, talk to you then. Have a productive morning!",
    "time": "9:35 am"
  },
  {"isMe": true, "text": "You too, take care!", "time": "9:37 am"}
];
