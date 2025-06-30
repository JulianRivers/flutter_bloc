import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({bool darkMode = false}) : super(ThemeState(isDarkmode: false));

  void toggleTheme() {
    emit(ThemeState(isDarkmode: !state.isDarkmode));
  }

  void setDarkMode() {
    emit(ThemeState(isDarkmode: true));
  }

  void setLightMode() {
    emit(ThemeState(isDarkmode: false));
  }
}