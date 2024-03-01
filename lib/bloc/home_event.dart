part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class NavigateToIndividualChatEvent extends HomeEvent{
  final String name;
  final String profileUrl;

  NavigateToIndividualChatEvent({required this.name, required this.profileUrl});

}