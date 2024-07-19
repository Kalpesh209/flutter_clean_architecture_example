import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture_example/layers/domain/entity/character.dart';
import 'package:meta/meta.dart';

part 'character_details_event.dart';

part 'character_details_state.dart';

class CharacterDetailsBloc
    extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc({required Character character})
      : super(CharacterDetailsState(character: character));
}
