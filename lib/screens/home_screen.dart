import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football_app/cubit/football_cubit.dart';
import 'package:football_app/widget/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FootballCubit, FootballState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Football',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: .5,
          ),
          body: FootballCubit.get(context).footballModel != null? ListView.builder(
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children:  [
                            Image.network(
                              '${FootballCubit.get(context).footballModel!.matches![index].homeTeam!.crest}',
                              errorBuilder: (context, error, stackTrace) =>SvgPicture.network(
                                '${FootballCubit.get(context).footballModel!.matches![index].homeTeam!.crest}',
                                height: 70,
                                width: 70,
                              ),
                              height: 70,
                              width: 70,
                            ),
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                child: Text(
                                  '${FootballCubit.get(context).footballModel!.matches![index].homeTeam!.name}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700, fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(" '54' : '20' "),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              '${FootballCubit.get(context).footballModel!.matches![index].awayTeam!.crest}',
                              errorBuilder: (context, error, stackTrace) =>SvgPicture.network(
                                '${FootballCubit.get(context).footballModel!.matches![index].awayTeam!.crest}',
                                height: 70,
                                width: 70,
                              ),
                              height: 70,
                              width: 70,
                            ),
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                child: Text(
                                  '${FootballCubit.get(context).footballModel!.matches![index].awayTeam!.name}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700, fontSize: 10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: FootballCubit.get(context).footballModel!.matches!.length,
          ): const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
