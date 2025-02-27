import 'package:bookly/core/utils/functions/di.dart';
import 'package:bookly/features/details/presentation/view_model/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.myBook});
  final BookEntity myBook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplement>()),
          child: DetailsViewBody(myBook: myBook),
        ),
      ),
    );
  }
}
