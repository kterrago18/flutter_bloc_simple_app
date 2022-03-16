import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_simple_app/models/post.dart';
import 'package:flutter_bloc_simple_app/services/data_service.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPosts());
}
