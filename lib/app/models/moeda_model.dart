class MoedaModel {
  final String name;
  final String code;

  const MoedaModel({
    required this.name,
    required this.code,
  });

  factory MoedaModel.init() {
    return const MoedaModel(code: '', name: '');
  }
}
