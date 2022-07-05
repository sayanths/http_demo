// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFactRespo _$NumberFactRespoFromJson(Map<String, dynamic> json) =>
    NumberFactRespo(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberFactRespoToJson(NumberFactRespo instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
