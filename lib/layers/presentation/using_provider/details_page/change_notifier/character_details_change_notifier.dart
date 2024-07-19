import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture_example/layers/domain/entity/character.dart';

class CharacterDetailsChangeNotifier extends ChangeNotifier {
  CharacterDetailsChangeNotifier({required this.character});

  final Character character;
}
