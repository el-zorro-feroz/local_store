// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Test extends Equatable {
  final int id;
  final String data;

  Test({
    required this.id,
    required this.data,
  });

  @override
  List<Object> get props => [id];

  Test copyWith({
    int? id,
    String? data,
  }) {
    return Test(
      id: id ?? this.id,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': {
        'id': id,
        'data': data,
      }
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    final data = map['data'];

    return Test(
      id: data['id'] as int,
      data: data['data'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
