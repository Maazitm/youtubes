import 'dart:convert'; // For decoding JSON data
import 'package:get/get.dart'; // GetX package for state management
import 'package:http/http.dart' as http; // HTTP package for making API requests
import 'package:youtube/modals/news_modal.dart'; // Importing the NewsArticle model

// NewsController manages the fetching and state of news articles
class NewsController extends GetxController {
  // Observable list of news articles
  var articles = <NewsArticle>[].obs;

  // Observable boolean to indicate loading state
  var isLoading = false.obs;

  // Observable string to store any error messages
  var errorMessage = ''.obs;

  // Your API key for accessing the News API
  final String _apiKey = '93eca693e74f4e668aca032f44be95bd'; 

  // Called automatically when the controller is initialized
  @override
  void onInit() {
    super.onInit();
    fetchNews(); // Call fetchNews when the controller initializes
  }

  // Function to fetch news articles from the API
  Future<void> fetchNews() async {
    isLoading.value = true; // Show loading indicator
    errorMessage.value = ''; // Clear any existing error message

    try {
      // Make GET request to the News API with specified parameters
      final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$_apiKey',
      ));

      // Check if the request was successful (HTTP 200 OK)
      if (response.statusCode == 200) {
        // Decode the JSON response body
        final data = json.decode(response.body);

        // Extract the list of articles from the JSON data
        final List articlesJson = data['articles'];

        // Map the JSON articles to NewsArticle objects and update the observable list
        articles.value = articlesJson
            .map((article) => NewsArticle.fromJson(article))
            .toList();
      } else {
        // If response failed, set the error message
        errorMessage.value =
            'Failed to fetch news: ${response.statusCode}';
      }
    } catch (e) {
      // If an exception occurred, set the error message
      errorMessage.value = 'Error: ${e.toString()}';
    } finally {
      // Stop showing the loading indicator
      isLoading.value = false;
    }
  }
}
