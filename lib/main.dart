import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';

import 'core/utils/app_routes.dart';
import 'features/search_weather/data/repo_impl/search_repo_impl.dart';
import 'features/search_weather/domain/use_cases/search_use_case.dart';
import 'injection_container.dart';

void main() {

  initServiceLocator();
   runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>
            SearchCubit(searchUseCase: SearchUseCase(getIt.get<SearchRepoImpl>()))
          ,)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.onGenerateRoute,

      ),
    );
  }
}
