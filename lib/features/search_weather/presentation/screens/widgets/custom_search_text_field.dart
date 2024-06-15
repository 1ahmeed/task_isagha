import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/features/search_weather/presentation/cubit/search_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: SearchCubit.get(context)!.searchController,
            keyboardType: TextInputType.text,
            onChanged: (value) {},
            validator: (value){
              if(value!.isEmpty){
                return"Please enter name of city";
              }else{
                return null;
              }
            },
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search),
                ),
                label: const Text(
                  'Search',
                ),
                hintText: 'enter a city',
                hintStyle: TextStyle(color: Colors.white.withOpacity(.6)),
                border: const OutlineInputBorder()
              // border: BorderRadius.circular(15)
            ),
          ),
        );
      },
    );
  }
}