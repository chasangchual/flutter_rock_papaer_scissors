const imageAssetPath = 'assets/images';

enum Selection {
  rock,
  paper,
  scissors;

  String get path => '$imageAssetPath/$name.png';
}

enum GameBoardState { ready, start, thinking, done }

enum GameWinner { computer, user, tie }
