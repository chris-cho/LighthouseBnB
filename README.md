# LightBnB

Please head to the [LightBnB_WebApp](https://github.com/chris-cho/LighthouseBnB/tree/main/LightBnB_WebApp) directory of this repo!

## Overview

LightBnB is a mock BnB site. You will be able to sign up, log in, then either post your property or look for places to stay!

## Project Structure

```
├── public
│   ├── index.html
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── index.js
│   │   ├── libraries
│   │   ├── network.js
│   │   └── views_manager.js
│   └── styles
├── sass
└── server
  ├── apiRoutes.js
  ├── database.js
  ├── json
  ├── server.js
  └── userRoutes.js
```

* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `sass` contains all of the sass files. 
* `server` contains all of the server side and database code.
  * `server.js` is the entry point to the application. This connects the routes to the database.
  * `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `json` is a directory that contains a bunch of dummy data in `.json` files.
  * `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.

## Getting Started

1. Fork this repository, then clone your fork of this repository.
2. Install dependencies using the `npm install` command.
3. Start the web server using the `npm run local` command. The app will be served at <http://localhost:3000/>.
4. Go to <http://localhost:3000/> in your browser.

## Dependencies

- Express
- Node 5.10.x or above
- bCrypt
- Body-Parser
- Cookie-session
- Nodemon
- Postgresql (pg)
- Sass


## Final Product

!["Landing Page"](https://github.com/chris-cho/LighthouseBnB/blob/main/docs/landing.png)
!["Landing Page - Logged in"](hhttps://github.com/chris-cho/LighthouseBnB/blob/main/docs/loggedin.png)
!["Reservations"](https://github.com/chris-cho/LighthouseBnB/blob/main/docs/reservations.png)