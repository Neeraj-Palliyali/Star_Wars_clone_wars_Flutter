class Planets{
  final String name;
  final String diameter;
  final String rotationPeriod;
  final String orbitalPeriod;
  final String gravity;
  final String population;
  final String climate;
  final String terrain;
  final String surfaceWater;
  final List<String> residentsUrl;
  final List<String> filmsUrl;
  final String url;
  final String created;
  final String edited;
  Planets.fromJsonData(Map data):
      name=data['name'],
      diameter=data['diameter'],
      rotationPeriod=data['rotation_period'],
      orbitalPeriod=data['orbital_period'],
      gravity=data['gravity'],
      population=data['population'],
      climate=data['climate'],
      terrain=data['terrain'],
      surfaceWater=data['surface_water'],
      residentsUrl=data['residents'],
      filmsUrl=data['films'],
      url=data['url'],
      created=data['created'],
      edited=data['edited'];
}