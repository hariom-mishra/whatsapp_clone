import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<NavigateToIndividualChatEvent>(navigateToIndividualChat);
  }

  FutureOr<void> navigateToIndividualChat(NavigateToIndividualChatEvent event, Emitter<HomeState> emit) {
    emit(NavigateToIndividualChatState(name: event.name, profileUrl: event.profileUrl));
  }
}
