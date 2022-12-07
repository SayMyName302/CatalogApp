import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/catalogs.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  late CatalogModel _catalog;
  final List<int> _itemsid = [];
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items =>
      _itemsid.map((id) => CatalogModel.getById(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

 

 
}

class AddMutation extends VxMutation<MyStore> {
  late final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemsid.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  late final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemsid.remove(item.id);
  }
}
