class Films {
  final String title;
  final int episodeId;
  final String openingCrawl;
  final String director;
  final String producer;
  final DateTime releaseDate;
  final List<String> speciesUrl;
  final List<String> starsShipsUrl;
  final List<String> vehiclesUrl;
  final List<String> charactersUrl;
  final List<String> planetsUrl;
  final String url;
  final String created;
  final String edited;
  Films.fromJsonData(Map data):
      title=data['title'],
      episodeId=data['episode_id'],
      openingCrawl=data['opening_crawl'],
      director=data['director'],
      producer=data['producer'],
      releaseDate=data['release_date'],
      speciesUrl=data['species'],
      starsShipsUrl=data['starships'],
      vehiclesUrl=data['vehicles'],
      charactersUrl=data['characters'],
      planetsUrl=data['planets'],
      url=data['url'],
      created=data['created'],
      edited=data['edited'];
}