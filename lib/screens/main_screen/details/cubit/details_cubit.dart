import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_ecommerce/screens/main_screen/details/cubit/state.dart';

class DetialsCubit extends Cubit<DetailsStates> {
  DetialsCubit() : super(InitialState());

  static DetialsCubit get(context) => BlocProvider.of(context);
  int numberOfProducts = 1;

  void productSelectedNumberAdd(double price) {
    numberOfProducts++;
    double newPrice =price*numberOfProducts;
    emit(ChangeProudctNumber(newPrice:newPrice));
  }

  void productSelectedNumberMinus(double price) {
    numberOfProducts--;
    double newPrice =price*numberOfProducts;
    emit(ChangeProudctNumber(newPrice:newPrice));
  }
}
