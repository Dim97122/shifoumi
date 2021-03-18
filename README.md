# README

This simple API reproduces the Shifumi or Rock/Paper/Scissors game.

## BUILT WITH
- Ruby 2.7.1
- Rails 6.0.3.5
- PostgreSQL 1.2.3

## LAUNCH
1. Bundle install
1. Setting the DB => `rails db:create`
2. Run Migrations => `rails db:migrate`
3. Run Seeds => `rails db:seed`
4. Launch server on port 3000 => `rails s -p 3000`

## TEST
rspec

## ENDPOINTS
### *PLAY*
http://localhost:3000/play?{query_parameters}
The PLAY endpoint lets you instantly play the game !
The API will respond with your move, the I.A move and the game result
The **COMPULSORY** query parameters are :
- game[move] => Accepts only the following values (rock - paper - scissors)
- game[player] => Basically your name or pseudo
**Expected Response:**
```
{
  "moves": [
    {
      "name": "\"Sophie\".json",
      "move": "scissors"
    },
    {
      "name": "IA",
      "move": "scissors"
    }
  ],
  "result": "Draw"
}
```
### *HISTORY*
http://localhost:3000/games?{query_parameters}
The HISTORY endpoint lets you access the games history !
The API will respond with the total number games and list of games per page
The query parameters are :
- page => Accepts integers

**Expected Response:**
```
{
  "nb_total_games": 14,
  "games": [
    {
      "moves": [
        {
          "name": "\"Paul\"",
          "move": "scissors",
          "created_at": "2021-03-18T10:55:00.156Z",
          "updated_at": "2021-03-18T10:55:00.156Z"
        },
        {
          "name": "IA",
          "move": "paper",
          "created_at": "2021-03-18T10:55:00.202Z",
          "updated_at": "2021-03-18T10:55:00.202Z"
        }
      ],
      "result": "none"
    },
    {
      "moves": [
        {
          "name": "\"Paul\"",
          "move": "paper",
          "created_at": "2021-03-18T10:55:23.829Z",
          "updated_at": "2021-03-18T10:55:23.829Z"
        },
        {
          "name": "IA",
          "move": "rock",
          "created_at": "2021-03-18T10:55:23.860Z",
          "updated_at": "2021-03-18T10:55:23.860Z"
        }
      ],
      "result": "\"Paul\" wins"
    },
    {
      "moves": [
        {
          "name": "\"Paul\"",
          "move": "scissors",
          "created_at": "2021-03-18T10:57:28.155Z",
          "updated_at": "2021-03-18T10:57:28.155Z"
        },
        {
          "name": "IA",
          "move": "rock",
          "created_at": "2021-03-18T10:57:28.415Z",
          "updated_at": "2021-03-18T10:57:28.415Z"
        }
      ],
      "result": "IA wins"
    },
    {
      "moves": [
        {
          "name": "\"Paul\"",
          "move": "scissors",
          "created_at": "2021-03-18T11:00:46.612Z",
          "updated_at": "2021-03-18T11:00:46.612Z"
        },
        {
          "name": "IA",
          "move": "rock",
          "created_at": "2021-03-18T11:00:46.628Z",
          "updated_at": "2021-03-18T11:00:46.628Z"
        }
      ],
      "result": "IA wins"
    },
    {
      "moves": [
        {
          "name": "\"Paul\"",
          "move": "rock",
          "created_at": "2021-03-18T11:01:21.129Z",
          "updated_at": "2021-03-18T11:01:21.129Z"
        },
        {
          "name": "IA",
          "move": "paper",
          "created_at": "2021-03-18T11:01:21.155Z",
          "updated_at": "2021-03-18T11:01:21.155Z"
        }
      ],
      "result": "IA wins"
    }
  ]
}
```
