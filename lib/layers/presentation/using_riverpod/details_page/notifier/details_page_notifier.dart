import 'package:flutter_clean_architecture_example/layers/presentation/using_riverpod/details_page/notifier/details_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailsPageProvider =
    NotifierProvider<DetailsPageNotifier, DetailsPageState>(
  () => DetailsPageNotifier(),
);

class DetailsPageNotifier extends Notifier<DetailsPageState> {
  DetailsPageNotifier();

  @override
  DetailsPageState build() => DetailsPageState();
}
