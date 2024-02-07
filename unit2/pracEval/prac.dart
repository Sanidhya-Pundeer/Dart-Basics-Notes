abstract class MediaItem {
  String? Name;
  // List<String> Playlist = [];
  // List<String> Albums = [];
}

class Song with Logger implements MediaItem, Playable {
  @override
  String? Name;

  Song(String? name) : Name = name;
  play() {
    print('currently playing ${Name}');
  }
}

class Album with Logger implements MediaItem, Playable {
  @override
  String? Name;

  Album(String? name) : Name = name;

  @override
  play() {
    // TODO: implement play
    print('current item selected: ${Name}');
  }
}

class Playlist with Logger implements MediaItem, Playable {
  @override
  String? Name;

  Playlist(String? name) : Name = name;
  @override
  play() {
    // TODO: implement play
    print('current playlist selected: ${Name}');
  }
}

abstract class Playable {
  play() {
    print('playing song');
  }
}

mixin Logger {
  void debug() {
    print('debugging:');
  }

  void info() {
    print('info is following:');
  }

  void error() {
    print('error is following:');
  }

  void warning() {
    print('warning is following:');
  }
}

// 47.5
void main() {
  Song s = Song('Swimming Pools');
  Playlist p = Playlist('God');
  Album a = Album('Calm down');
  a.error();
  p.play();
  s.play();
  s.debug();
  s.warning();
  s.info();
  s.error();
}
