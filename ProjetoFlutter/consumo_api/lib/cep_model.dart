class CepModel {
  final String cep;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final String service;
  final double? latitude;
  final double? longitude;

  CepModel({
    required this.cep,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.street,
    required this.service,
    this.latitude,
    this.longitude,
  });

  factory CepModel.formMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'],
      state: map['state'],
      city: map['city'],
      neighborhood: map['neighborhood'],
      street: map['street'],
      service: map['service'],
      latitude: map['location']?['coordinates']?['latitude'] != null
          ? double.tryParse(
              map['location']['coordinates']['latitude'].toString())
          : null,
      longitude: map['location']?['coordinates']?['longitude'] != null
          ? double.tryParse(
              map['location']['coordinates']['longitude'].toString())
          : null,
    );
  }
}
