import 'package:mobx/mobx.dart';
part 'dashboard_store.g.dart';

class DashBoardStore = _DashBoardStoreBase with _$DashBoardStore;

abstract class _DashBoardStoreBase with Store {
  @observable
  List<String> filterChips = [
    'Sport',
    'Food',
    'Horror',
    'Drama',
    'Comedy',
    'Action',
  ];
}
