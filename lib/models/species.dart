class Species{
  final String name;
  final String classification;
  final String designation;
  final String averageHeight;
  final String averageLifeSpan;
  final String eyeColor;
  final String hairColor;
  final String skinColor;
  final String language;
  final String homeWorld;
  final String created;
  final String url;
  final List<String> filmsUrl;
  final List<String> peopleUrl;
  final String edited;
  Species.fromJsonData(Map data):
      name=data['name'],
      classification=data['classification'],
      designation=data['designation'],
      averageHeight=data['average_height'],
      averageLifeSpan=data['average_lifespan'],
      eyeColor=data['eye_color'],
      skinColor=data['skin_color'],
      hairColor=data['hair_color'],
      language=data['language'],
      homeWorld=data['homeworld'],
      peopleUrl=data['people'],
      filmsUrl=data['films'],
      url=data['url'],
      created=data['created'],
      edited=data['edited'];

}