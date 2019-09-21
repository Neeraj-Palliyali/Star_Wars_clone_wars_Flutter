class StarShips{
  final String name;
  final String model;
  final String starShipClass;
  final String manufacturer;
  final String costInCredits;
  final String length;
  final String crew;
  final String passengers;
  final String maxAtmosphericSpeed;
  final String hyperDriveRating;
  final String mglt;
  final String cargoCapacity;
  final String consumables;
  final List<String> filmsUrl;
  final List<String> pilotsUrl;
  final String url;
  final String created;
  final String edited;
  StarShips.fromJsonData(Map data):
      name=data['name'],
      model=data['model'],
      starShipClass=data['starship_class'],
      manufacturer=data['manufacturer'],
      costInCredits=data['cost_in_credits'],
      length=data['length'],
      crew=data['crew'],
    passengers=data['passengers'],
    maxAtmosphericSpeed=data['max_atmospheric_speed'],
    hyperDriveRating=data['hyperdrive_rating'],
    mglt=data['MGLT'],
    cargoCapacity=data['cargo_capacity'],
    consumables=data['consumables'],
    filmsUrl=data['films'],
    pilotsUrl=data['pilots'],
    url=data['url'],
    created=data['created'],
    edited=data['edited'];
}