import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_ecommerce/screens/main_screen/chat/chat_screen.dart';
import 'package:user_app_ecommerce/screens/main_screen/fav_screen/fav_screen.dart';
import 'package:user_app_ecommerce/screens/main_screen/home_screen/home_screen.dart';
import 'package:user_app_ecommerce/screens/main_screen/search/search_screen.dart';
import 'package:user_app_ecommerce/screens/main_screen/settings/settings_screen.dart';
import 'package:user_app_ecommerce/shared/styles/icon_broken.dart';
import 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutInitial());

  static MainLayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    ChatScreen(),
    SettingsScreen(),
  ];

  List<BottomNavigationBarItem> navListItems = [
    BottomNavigationBarItem(icon: Icon(IconBroken.Home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(IconBroken.Search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(IconBroken.Heart), label: 'Favourite'),
    BottomNavigationBarItem(icon: Icon(IconBroken.Chat), label: 'Chat'),
    BottomNavigationBarItem(icon: Icon(IconBroken.Setting), label: 'Settings'),
  ];

  int index = 0;

  void changeBottomNavIndex(int indexFrom) {
    this.index = indexFrom;
    emit(ChangeBottomNavIndex());
  }

/////////////////////////////////////////////////////////////////////////


}
