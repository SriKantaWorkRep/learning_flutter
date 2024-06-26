import 'package:dealdox_integrated/BLOC_grocery_app/features/wishlist/ui/wishlist_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/wishlist_bloc.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();
  void initState() {
    wishlistBloc.add(WishlistInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Wishlisted Items"),
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        bloc: wishlistBloc,
        listener: (context, state) {},
        listenWhen: (previous, current) => current is WishlistActionState,
        buildWhen: (previous, current) => current is! WishlistActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case WishlistSuccessState:
              final successState = state as WishlistSuccessState;
              return ListView.builder(
                  itemCount: successState.wishListItems.length,
                  itemBuilder: (context, index) {
                    return WishlistTileWidget(
                      productDataModel: successState.wishListItems[index],
                      wishlistBloc: wishlistBloc,
                    );
                  });
              default:
              return Container();
          }
        },
      ),
    );
  }
}
