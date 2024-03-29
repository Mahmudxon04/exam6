import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/data/data_source/data_source.dart';
import '../../features/home/data/repository/repository.dart';
import '../../features/home/domain/usecase/usecase.dart';

final sl = GetIt.instance;

Future<void> getItInjector() async {
 articleUseCase();
  sl.registerSingletonAsync(() async => await SharedPreferences.getInstance());


}

articleUseCase() {
  sl
    ..registerFactory(() => ArticleUseCase(repositoryImpl: sl()))
    ..registerLazySingleton<ArticleRepositoryImpl>(
        () => ArticleRepositoryImpl(dataSource: sl()))
    ..registerLazySingleton(() => ArticleDataSource());
}
