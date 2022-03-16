abstract class DetailsStates {}
class InitialState extends DetailsStates{}
class ChangeProudctNumber extends DetailsStates {
  double newPrice;

  ChangeProudctNumber({required this.newPrice});
}
