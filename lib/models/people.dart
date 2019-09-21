class PeopleModel {
  final String name;
  final String birthYear;
  final String eyeColor;
  final String gender;
  final String hairColor;
  final String height;
  final String mass;
  final String skinColor;
  final String homeWorld;
  final List<String> filmsUrl;
  final List<String> speciesUrl;
  final List<String> starShipsUrl;
  final List<String> vehiclesUrl;
  final String url;
  final String created;
  final String edited;

  PeopleModel.fromJsonData(Map  data):
      name = data['name'],
      birthYear = data['birth_year'],
      eyeColor=data['eye_color'],
      gender=data['gender'],
      hairColor=data['hair_color'],
      height=data['height'],
      mass=data['mass'],
      skinColor=data['skin_color'],
      homeWorld=data['homeworld'],
      filmsUrl=data['films'],
      speciesUrl=data['species'],
      starShipsUrl=data['starships'],
      vehiclesUrl=data['vehicles'],
      url=data['url'],
      created=data['created'],
      edited=data['edited'];
}