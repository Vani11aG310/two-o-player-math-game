## Extract Nouns for Classes

- Player
  - This class will mainly keep track of each players health totals. It will manage the deduction of health totals as well as give the respectove player object to the Turn class to determine who's turn it is.
  - Each instance of the player class will be initialized with a health total.
  - public methods for this class will be one to change the health total of the player.

- Game
  - This class will be responsible for tracking the main game loop.
  - This will be initialized with instances of the player class to manage states of the game such as current losing player.
  - Will be used to display messages relevant to the game state, like Player x wins!
  - public methods here would be to console log the message of the winner

- Turn
  - Will be used to track which player's turn it is.
  - Initialized with an instance of the player who's turn it is.
  - Each round, a new turn instance will be created, generating a new question and answer.
  - This will be the class that provides the I/O for the user in order for them to answer questions.
  - public methods would be to set the current_player, question, correct answer, user answer, and to display if the user got the answer incorrect or not.

- Question
  - Will be used to generate new question each round.
  - Will track the correct answer as well.
  - public methods will be to generate a new question and answer, and get the answer.