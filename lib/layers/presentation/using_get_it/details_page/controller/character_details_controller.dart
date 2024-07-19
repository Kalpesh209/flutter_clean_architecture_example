import 'package:flutter_clean_architecture_example/layers/domain/entity/character.dart';

class CharacterDetailsController {
  CharacterDetailsController();

  // No need to over complicate anything
  // The controller just holds the 'character' that UI will show
  late Character character;
}
