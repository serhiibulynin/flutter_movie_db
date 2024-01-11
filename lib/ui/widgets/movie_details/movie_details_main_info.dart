import 'package:flutter/material.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TopPosterWidget(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: _MovieNameWidget(),
        ),
        _SummaryWidget(),
        _OverviewWidget(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: _DescriptionWidget(),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: _StaffWidget(),
        ),
      ],
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Set during the Cold War period in the 1980s, The Americans is the story of Elizabeth and Philip Jennings, two Soviet KGB officers posing as an American married couple in the suburbs of Washington D.C. and their neighbor, Stan Beeman, an FBI Counterintelligence agent.",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Overvieew",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(
          image: AssetImage('images/fast_x_lg_movie_img.jpeg'),
        ),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(
            image: AssetImage('images/fast_x_sm_movie_img.jpeg'),
          ),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget();

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      textAlign: TextAlign.center,
      text: const TextSpan(children: [
        TextSpan(
            text: "Life on Our Planet",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 21,
            )),
        TextSpan(
            text: "2023",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            )),
      ]),
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget();

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 80,
        ),
        child: Text(
          "TV-MA Crime, Drama ",
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _StaffWidget extends StatelessWidget {
  const _StaffWidget();

  @override
  Widget build(BuildContext context) {
    const nameStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    const actorStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    return const Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al Paccino",
                  style: nameStyle,
                ),
                Text(
                  "Actor",
                  style: actorStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al Paccino",
                  style: nameStyle,
                ),
                Text(
                  "Actor",
                  style: actorStyle,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al Paccino",
                  style: nameStyle,
                ),
                Text(
                  "Actor",
                  style: actorStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al Paccino",
                  style: nameStyle,
                ),
                Text(
                  "Actor",
                  style: actorStyle,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
