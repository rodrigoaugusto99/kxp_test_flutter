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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MoedaModel && other.code == code;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
}
