import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 1, color: Colors.black12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  red: 0,
                  blue: 0,
                  green: 0,
                  alpha: 0.7,
                ),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 40),
              Icon(Icons.search_rounded, color: Colors.white),
              SizedBox(width: 20),
              Text(
                "Search any movie or serise",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
