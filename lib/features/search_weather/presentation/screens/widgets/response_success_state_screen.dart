import 'package:flutter/material.dart';
import 'package:task_weather/features/search_weather/domain/entities/searrch_entity.dart';

import '../../../../../generated/assets.dart';
import 'card_weather.dart';
import 'description_section.dart';

class ResponseSuccessStateScreen extends StatelessWidget {
  const ResponseSuccessStateScreen({
    super.key, required this.searchEntity,
  });
  final SearchEntity searchEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.imagesCloud)
          )
      ),
      child:  Column(
        children: [
          ///card of weather
          CardWeather(searchEntity: searchEntity,),
          const SizedBox(height: 20,),
          ///description
          DescriptionSection(searchEntity: searchEntity,),
        ],
      ),
    );
  }
}
