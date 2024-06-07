import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../components/service_displayer.dart';

part 'state.g.dart';

@riverpod 
class Content extends _$Content {
  @override
  Widget build() {
    return ServiceCardList();
  }  

  void setContent(Widget content) {
    state = content;
  }
}