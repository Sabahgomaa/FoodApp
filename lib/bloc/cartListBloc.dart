import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:food_cart_app/bloc/provider.dart';
import 'package:food_cart_app/model/fooditem.dart';

class CartListBloc extends BlocBase {

  CartListBloc();

  var _listControler = BehaviorSubject<List<FoodItem>>.seeded([]);
  CardProvider provider = CardProvider();

  //output
  Stream<List<FoodItem>> get listStream => _listControler.stream;

  //input
  Sink<List<FoodItem>> get listSink => _listControler.sink;

  addToList(FoodItem foodItem) {
    listSink.add(provider.addToList(foodItem));
  }

  removeFromList(FoodItem foodItem) {
    listSink.add(provider.removeFromList(foodItem));
  }
  @override
  void dispose() {
    // will be called automatically
    _listControler.close();
    super.dispose();
  }

}