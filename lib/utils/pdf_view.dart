// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class CvPageView extends StatefulWidget {
//   final String? path;
//   const CvPageView({super.key, required this.path});
//
//   @override
//   State<CvPageView> createState() => _CvPageViewState();
// }
//
// class _CvPageViewState extends State<CvPageView> {
//
//   final Completer<PDFViewController> _controller = Completer<PDFViewController>();
//   int? pages = 0;
//   int? currentPage = 0;
//   int? totalPages = 0;
//   bool isReady = false;
//   String errorMessage = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           PDFView(
//             filePath: widget.path,
//             autoSpacing: true,
//             enableSwipe: true,
//             pageSnap: true,
//             swipeHorizontal: false,
//             pageFling: true,
//             defaultPage: currentPage!,
//             preventLinkNavigation: false,
//             onRender: (pages) {
//               setState(() {
//                 totalPages = pages;
//                 isReady = true;
//               });
//             },
//             onError: (e) {
//               setState(() {
//                 errorMessage = e.toString();
//               });
//               print(e.toString());
//             },
//             onPageError: (page, e) {
//               setState(() {
//                 errorMessage = '$page: ${e.toString()}';
//               });
//               print('$page: ${e.toString()}');
//             },
//             onViewCreated: (PDFViewController pdfViewController) {
//               _controller.complete(pdfViewController);
//             },
//             onLinkHandler: (String? uri) {
//               print('goto uri: $uri');
//             },
//             onPageChanged: (int? page, int? total) {
//               print('page change: $page/$total');
//               setState(() {
//                 currentPage = page;
//               });
//             },
//           ),
//           errorMessage.isEmpty
//               ? !isReady
//                   ? const Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : Container()
//               : Center(
//                   child: Text(errorMessage),
//                 ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 140, bottom: 10),
//                 child: Text(
//                   currentPage != null && totalPages != null
//                       ? 'Page ${currentPage! + 1} of ${totalPages!}'
//                       : '',
//                   style: const TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
