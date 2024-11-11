class CepModel {
  final String cep;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final String service;

  CepModel(
      {required this.cep,
      required this.state,
      required this.city,
      required this.neighborhood,
      required this.street,
      required this.service});

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
        cep: map['cep'],
        state: map['state'],
        city: map['city'],
        neighborhood: map['neighborhood'],
        street: map['street'],
        service: map['service']);
  }
}
