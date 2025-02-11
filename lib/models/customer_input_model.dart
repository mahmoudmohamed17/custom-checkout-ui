class CustomerInputModel {
  final String id, name;

  CustomerInputModel({required this.id, required this.name});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}
