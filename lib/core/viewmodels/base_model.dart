import 'package:flutter/material.dart';
import 'package:shopnbuy/core/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void applyState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
