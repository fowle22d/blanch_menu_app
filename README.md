# blanch_menu_app

Thank you for opening up the blanch menu app repository. 

1. Before running the code, please follow this link(https://flutter.dev/docs/get-started/install) to install Flutter, Xcode, and Android Studio. If you are using Flutter in China, please take a look at this page(https://flutter.dev/community/china) first.

2. Once you have installed the required software, open it up in your preferred IDE.

3. All of our source code is contained in blanch_menu_app/lib. Locate main.dart and double click to open it. Follow this page(https://flutter.dev/docs/get-started/test-drive?tab=vscode) (from Run the App section) to run the app on ios or Android simulator.

<img src="https://user-images.githubusercontent.com/44713951/117642874-661ad500-b1ba-11eb-9adf-2b5c8c22cd0f.png" width="256" height="520">|<img src="https://user-images.githubusercontent.com/44713951/117642890-6a46f280-b1ba-11eb-90e9-edd631ae81ae.png" width="256" height="520">
<img src="https://user-images.githubusercontent.com/44713951/117642901-6d41e300-b1ba-11eb-9e32-e82ac8fc4ecb.png" width="256" height="520">
<img src="https://user-images.githubusercontent.com/44713951/117642911-6fa43d00-b1ba-11eb-9897-eaaa141ce14a.png" width="256" height="520">
<img src="https://user-images.githubusercontent.com/44713951/117642890-6a46f280-b1ba-11eb-90e9-edd631ae81ae.png" width="256" height="520">
<img src="https://user-images.githubusercontent.com/44713951/117642918-72069700-b1ba-11eb-94b0-c75675d71053.png" width="256" height="520">
<img src="https://user-images.githubusercontent.com/44713951/117642938-75018780-b1ba-11eb-8663-2bbaec4de2bd.png" width="256" height="520">


**Road Map of Directory Structure:** 
1. Blanch_menu_app directory: 
    * Assets → Contains images that we used within the application (MHC logo, etc.)
    * Build → Contains files relating to firebase, this file helped us connect firebase to our application
    * Android/Ios/web → These folders are auto-created when one creates a flutter project, to help the app run on both ios, android, and web platforms. 
    * **Lib** → Lib is where our main code lies. 
2. Lib directory: 
    * **Main.dart** → Calls runApp() on the root widget of the app, this root widget calls SignInScreen(), which displays a page telling the user to log in with google using their MHC email. This code is located in sign_in_screen.dart, which can be navigated to by going to view → pages → sign_in_screen.dart. 
    * Helper → This folder contains demo_values.dart, which is where the hardcoded values of the menu Items are located.
    * **View** → This directory contains the code of the pages and widgets that are displayed in the application
    * **Model** → This folder contains the classes for the comment objects and menu item objects; comment_model.dart and post_model.dart respectively.  
    * **Menu** → This folder contains the code for each station page, displaying the stations data in the human readable way
3. View directory: 
    * Pages → this folder contains code for the display of specific pages, for example the user Information page is created with user_info_screen.dart. This includes the comment feed page, the “select a station page,” and the sign in screen. 
    * Widgets → this folder contains code that takes in objects, or specific pieces of information, returning widgets that display the data in a human readable fashion, which can then be added to a page in the application. 

**List of Functionality:**
* Ability to log in to application using Google authentication 
    - Will only allow people with Mount Holyoke email to log in 
*  Displays different stations 
* Displays menu Items within those stations, differentiating between breakfast, lunch, and dinner items
* Allows users to click on menu Item and read comments made by previous users on the item 
* Allows users to submit their own comments, displaying them in real time, including the date and time they commented, as well as displaying their profile pic and email address
    - Ability to read and write from a database 
* Have a comment feed, displaying all comments regardless of station. 
* Ability to log out of application 

**Known problems:**
* The code won’t function on an android phone 
* Note: The comments won’t display in order of when the comment was submitted (not really an issue, but leads to slightly less organized comments) 

**Brief description of changes:** 
	Due to time constraints we were unable to implement recipe submissions and a rating system for the menu items. In our original plan we also said we would webscrape the menu items; however, although we were able to webscrape, we couldn’t get the items properly formatted, so we hardcoded them instead. We also had a plan to implement a guest user case, which would allow people without an MHC email to use the app, this was also cut out due to time. 
