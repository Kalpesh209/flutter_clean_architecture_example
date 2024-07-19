import 'package:flutter_clean_architecture_example/layers/domain/entity/character.dart';

abstract class CharacterRepository {
  Future<List<Character>> getCharacters({int page = 0});
}
