import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_clean_architecture_example/layers/presentation/app_root.dart';
import 'package:flutter_clean_architecture_example/layers/presentation/using_get_it/injector.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum StateManagementOptions {
  bloc,
  cubit,
  provider,
  riverpod,
  getIt,
  mobX,
}

late SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  await initializeGetIt();
  Animate.restartOnHotReload = true;

  runApp(const ProviderScope(child: AppRoot()));
}
