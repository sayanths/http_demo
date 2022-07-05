import 'package:json_annotation/json_annotation.dart';

part 'number_fact_respo.g.dart';

@JsonSerializable()
class NumberFactRespo {

  @JsonKey(name :'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  NumberFactRespo({this.text, this.number, this.found, this.type});

  factory NumberFactRespo.fromJson(Map<String, dynamic> json) {
    return _$NumberFactRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberFactRespoToJson(this);
}
