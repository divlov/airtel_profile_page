import 'package:flutter/material.dart';

class OptionsState{}
class OptionsStateLoading extends OptionsState{}
class OptionsStateLoaded extends OptionsState{
  Map<String,IconData> titles;
  OptionsStateLoaded(this.titles);
}
class OptionsStateError extends OptionsState{}

