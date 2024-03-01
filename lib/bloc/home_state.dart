part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ActionState extends HomeState{}

final class NavigateToIndividualChatState extends ActionState{
  final String name;
  final String profileUrl;

  NavigateToIndividualChatState({required this.name, required this.profileUrl});

}
