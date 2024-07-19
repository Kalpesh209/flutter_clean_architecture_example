import 'package:flutter_clean_architecture_example/layers/data/character_repository_impl.dart';
import 'package:flutter_clean_architecture_example/layers/data/source/local/local_storage.dart';
import 'package:flutter_clean_architecture_example/layers/data/source/network/api.dart';
import 'package:flutter_clean_architecture_example/layers/domain/repository/character_repository.dart';
import 'package:flutter_clean_architecture_example/layers/domain/usecase/get_all_characters.dart';
import 'package:flutter_clean_architecture_example/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// -----------------------------------------------------------------------------
// Presentation
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// Domain
// -----------------------------------------------------------------------------
final characterRepositoryProvider = Provider<CharacterRepository>(
  (ref) => CharacterRepositoryImpl(
    api: ref.read(apiProvider),
    localStorage: ref.read(localStorageProvider),
  ),
);

final getAllCharactersProvider = Provider(
  (ref) => GetAllCharacters(
    repository: ref.read(characterRepositoryProvider),
  ),
);

// -----------------------------------------------------------------------------
// Data
// -----------------------------------------------------------------------------
final apiProvider = Provider<Api>((ref) => ApiImpl());

final localStorageProvider = Provider<LocalStorage>(
  (ref) => LocalStorageImpl(sharedPreferences: sharedPref),
);
