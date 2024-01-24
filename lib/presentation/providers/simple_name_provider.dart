import 'package:riverpod/riverpod.dart';
import 'package:riverpod_app/config/config.dart';

//Provider de solo lectura
/*
final simpleNameProvider = Provider<String>((ref) { //Normal , no cambia
  //return 'Ari e Isra';
  return RandomGenerator.getRandomName();
});
*/
final simpleNameProvider = Provider.autoDispose<String>((ref) {
  //Cambia cada vez que se refresca la pantalla, limpiando el anterior con el autodispose
  //return 'Ari e Isra';
  return RandomGenerator.getRandomName();
});
