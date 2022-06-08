# TechEase

For inexperienced users, such as seniors, using smartphones with all their apps and functionalities can be difficult, scary, and confusing. These users fear making irreversible mistakes while using their smartphones.

My group created TechEase, an iOS app to help people become more comfortable using their iPhones. TechEase provides text, video, and practice tutorials on many different apps and iPhone functionalities to appeal to a wide range of learning styles and prior smartphone experience. TechEase also provides many accessibility options, such as larger-than-typical text size, text-to-speech functionality, large buttons, and high-contrast light and dark mode designs. There is also a Help button on every screen of the app in case the users need help.

As of early June 2022, TechEase meets the following MVP requirements:

* An accessible, high-contrast, user-friendly interface.
* Easy-to-understand controls, navigation, and menus.
* Written and video tutorials implemented for the tutorial topics of Emergency Information (Medical ID), Compass app, and Calendar app.
* File I/O functionality for the written tutorials and a video player for the video tutorials.
* A help button available on every page.
* Some accessibility options, including text-to-speech and dark mode.

## Future TechEase Development

Before further developing TechEase, additional usability testing should be conducted to gather more feedback about the functionality of the app and what tutorials are most important. It will be necessary for the next version of TechEase to add more written, video, and practice tutorials for more phone functionality topics, such as calling, texting, contact list, and the keypad. The existing accessibility features of the app should be developed further, such as a navigation menu design for dark mode, and dynamic help content should be created that changes based on what information is displayed on the current screen.

## Product Backlog

Based on the current state of TechEase and the feedback provided from usability testing, there are many tasks that could be completed for the next iteration of TechEase:

* Add information at the top of each written tutorial that explains how to switch between the tutorial and the associated iPhone app to follow along.
* Continued implementation of written and video tutorials for more tutorial topics, such as texting, calling, and the camera.
* Create additional written tutorials with common examples of using the associated iPhone app. For instance, create a mini tutorial on adding a doctor's appointment to the Calendar app.
* Practice tutorial implementation for existing tutorial topics.
* Dynamic help content that changes based on the information being displayed on the current screen.
* Continued development of the current accessibility features, such as having the Listen button read all the text on the screens.
* Create additional accessibility features, like a magnifying glass for screenshots and text, and transcripts for the video tutorials for those hard of hearing.
* Implement a working Home button.
* Implement a dark mode navigation menu design.
* Implement dark mode versions of the written tutorial screenshots.
* Possibly change the navigation menu color to be yellow when on the Help screen, similar to what the Marvel App prototype has.

## Developers: Using This App

For any developers interested in using this app, all you have to do is clone this repository's code into Xcode and then run the app using an iPhone (not iPad) in the Simulator. The screen design looks best on an iPhone 11, but any iPhone generally works fine. Since this app has no login or user data being stored, simply running the app is all that is required to use TechEase.

# Customers

## Personas

TechEase can be used by people with a wide range of smartphone experience and knowledge. Beginners and advanced users are all welcome.

* Persona 1: A first-time user who has no prior experience using a smartphone.
* Persona 2: An intermediate user with a basic understanding of smartphones, but does not know how to use the internet.
* Persona 3: An intermediate user with moderate smartphone experience, but has difficulty installing and uninstalling apps.
* Persona 4: An advanced user with a solid foundation of smartphone experience who wants to learn more about using the internet safely.

## Pain Points and User Needs

The target audience typically has trouble with navigation, small UI features, and an overwhelming amount of information.

* Pain Point 1: Fear of making mistakes.
* Pain Point 2: Overwhelming amount of information and choices.
* Pain Point 3: Inconsistent navigation.
* Pain Point 4: Small sizes of UI features, like text and buttons.

These pain points need to be addressed in order to increase their confidence using smartphones.

* Need 1: Consistent UI design.
* Need 2: Clear and logical tutorials.
* Need 3: Hands-on experience and knowledge using smartphones.
* Need 4: Increased confidence using smartphones.

## Scenarios

### User Scenario 1

A user is texted a family photo from his grandchildren and he would like to make it the background wallpaper of his smartphone.

He starts thinking about how he would change his background wallpaper, but he is not sure where to begin. He feels bad asking his family for help again, as he worries he is bothering them with something they consider a simple task. Frustrated, the user decides to take care of other chores instead. This is not the first time when he has been confused about how to complete a task with his smartphone.

The user is then recommended by his daughter to use the TechEase app. Through the help of TechEase, the user is able to teach himself how to find answers to his tech problems on his own by searching through TechEase’s tutorial category lists. He watches a video tutorial on setting a photo as the background wallpaper and then decides to try it out for himself.

The user is pleased that he was successful at changing his smartphone’s background wallpaper and did not need to call his family for help. He feels more independent and confident in his ability to use a smartphone.

### User Scenario 2

An elderly user was gifted her very first smartphone for Christmas and is unsure how to use it. Even after having it explained to her by her son multiple times, she still struggles with basic functions such as typing and texting, and she also struggles with small icons and buttons.

The user's son then installs the app TechEase on her phone. After being taught how to access the app, the user slowly reads through the tutorials on how to text. It takes quite a bit of time and a few visits to the help menu.

After a few days of returning to read TechEase’s texting tutorials, she starts trying out texting by herself and eventually feels comfortable sending texts to her family members. Emboldened by her progress, the user reads more and more tutorials. She learns more techniques for texting, such as sending pictures through texts. After learning how to text, the user feels a bit more at ease while using her smartphone.

# Competitive Analysis

There are a handful of opportunities that exist among our competitors. Some existing applications have not been well-received, so their audiences may be looking for alternatives. By creating a more accessible application, these users may decide to try and stick with our application. The services offered by Papa were very broad, but the people providing the services were not always reliable. On the other hand, the information available in an eBook is more reliable because it is consistent, but it might not always be up-to-date and could even be defunct. The scope of a static document is also more limited. An app in the marketplace, Empowerji, provides easy video tutorials for users to watch, but most are locked behind a paywall, preventing users from accessing these resources for free. In contrast, YouTube and the internet are essentially free to use. Another app in the marketplace, Easy Tablet Help for Seniors, teaches older users how to use their tablet, but due to its limited nature, the help the app provides may not be applicable to smartphones or the internet. 

Our app addresses these issues by being more refined in its goals and more easily accessible to a range of users. Accessibility was also one of our app's most important goals, and utilizing high contrast colors and large buttons and fonts should make it easier for older users to use. Having our app be available on the app store should make it easier to ship updates for our app to make sure it doesn’t become out of date like eBooks. Our app focuses on phone and internet tutorials for older users, unlike competitors that focus on tablets exclusively or real-world physical help. We also wanted to make sure we included internet related tutorials, since internet usage and safety were important target areas for seniors and aren't talked about in competing apps or services. If our planned monetization model comes to fruition, then our app would also be able to bypass the paywall barrier that one of our competitors had. Since our goal is to try and get a sponsorship for the app, we can offer the full app’s worth of information to older users immediately and not need them to also figure out in-app purchases before learning more basic phone tasks. 

# Implementation

## User Stories

This is a prioritized list of functional components that describe the implementation from an end-user perspective.

* P0: User can find tutorials for different skills.
* P0: User can always return to the Home screen if they need to.
* P1: User can change their accessibility settings.
* P1: User can practice what they learned in the tutorial lesson while still inside the app.
* P1: User can watch a video to learn more about a skill.
* P1: User can see how to navigate screens with scroll bars.
* P2: User can get a hint if they become stuck during practice.
* P2: User can complete multiple tutorials.
* P3: User can contact someone if they need assistance or information.
* P3: User can make a video fullscreen to see the content better.

## High-Fidelity Prototype

https://marvelapp.com/prototype/7ecje2g

## Screens

### Welcome Screen
![screen1](https://user-images.githubusercontent.com/48658023/102295715-98791c80-3f11-11eb-9261-e8e71e9cba2b.png)

### Tutorials Option Screens
![screen2](https://user-images.githubusercontent.com/48658023/102295905-ef7ef180-3f11-11eb-924f-0dbf8888341b.png)![screen3](https://user-images.githubusercontent.com/48658023/102295943-fefe3a80-3f11-11eb-9b1c-1d36a10c39dd.png)![screen8](https://user-images.githubusercontent.com/48658023/102295962-0887a280-3f12-11eb-8832-6cb3f230e125.png)

### Tutorial Screens
![screen10](https://user-images.githubusercontent.com/48658023/102296388-d88ccf00-3f12-11eb-9e8c-05d9d4579b1d.png)![screen4](https://user-images.githubusercontent.com/48658023/102296377-d1fe5780-3f12-11eb-86e8-a5bcf86babd7.png)

### Video Tutorial Screens
![screen5](https://user-images.githubusercontent.com/48658023/102296515-1ab61080-3f13-11eb-9ea6-f473283b196d.png)![screen11](https://user-images.githubusercontent.com/48658023/102296606-5355ea00-3f13-11eb-8841-adb7d43a2396.png)

### Practice Screens
![screen6](https://user-images.githubusercontent.com/48658023/102296682-7bdde400-3f13-11eb-81a7-0ca8f88dbd6f.png)![screen7](https://user-images.githubusercontent.com/48658023/102296688-80a29800-3f13-11eb-899d-6b21b5b98a16.png)

### Setting Screens
![screen12](https://user-images.githubusercontent.com/48658023/102296834-cf503200-3f13-11eb-8d97-52b820ecb471.png)![screen9](https://user-images.githubusercontent.com/48658023/102296845-d2e3b900-3f13-11eb-9f61-695559fb2427.png)

### Help Screen
![screen13](https://user-images.githubusercontent.com/48658023/102298703-36231a80-3f17-11eb-94fa-3019262d5650.png)

## Color Palette
![Palette](https://github.com/Cascadia-Mobile-App-Projects/BIT271_Team1/blob/colors-gjesionowski/PaletteTechEase.png)

## App Icon
Android Icon:
<br/><br/>![Android Icon](https://github.com/Cascadia-Mobile-App-Projects/BIT271_Team1/blob/main/android-icon.png)<br/><br/>

iOS Icon:
<br/><br/>![iOS Icon](https://github.com/Cascadia-Mobile-App-Projects/BIT271_Team1/blob/main/iOS-icon.png)<br/><br/>

Icon Only:
<br/><br/>![Icon Only](https://github.com/Cascadia-Mobile-App-Projects/BIT271_Team1/blob/main/icon-only.png)<br/><br/>

## Possible Integration

* Our app could use [Google Firebase](https://firebase.google.com/) to store data into its real-time database. 
* [Youtube API](https://developers.google.com/youtube/v3) could be used for video tutorials.
* We could use [Google cloud Speech-to-Text API](https://cloud.google.com/speech-to-text#section-1) for text-to-speech and voice commands in our Application.
* We could use [Google Maps API](https://cloud.google.com/maps-platform) to mimic Google Maps' functionality, so users can practice how to use Google Maps.

# Future Considerations

## High-Fidelity Prototype Usability Summary

Due to time constraints, we were not able to do many usability studies on our high-fidelity prototype, particularly from participants in our target audience. However, we were still able to get feedback from two participants who have experience teaching seniors how to use technology. Their feedback falls into the three categories below.</br>

#### What Worked Well:<br/>
The participants liked the overall design and layout of our prototype. Everything was clearly marked and the navigation worked like how it should. Nothing surprised the participants, as they knew what would happen if they pressed a certain button. They enjoyed the calming color scheme and how it was not jarring or distracting to look at. They thought the buttons were spaced nicely apart and the icons on the buttons helped to enhance what each button meant. Lastly, they appreciated the wide range of accessibility options in our prototype’s settings, as well as the help button always being present on each screen.</br>

#### What Was Challenging:</br>
The participants found the limited number of screens in our prototype a challenge. They wanted to press all of the buttons, but we only implemented a few of them for proof of concept. Additionally, most of the tutorial text was placeholder text, not what the tutorial would actually say. As a result, the participants could not accurately say if the written or video tutorials would be useful. They do think the texting practice tutorial would be useful for seniors learning technology, but they would have liked to see the entirety of the tutorial implemented. They wanted to see what the live instructions would look like as the tutorial progressed.</br>

#### What We Will Update:</br>
Something that could be updated is filling out the help screen more, particularly the “Phone Controls” section. Some of the questions the participants raised about seniors using the app could be answered if we explicitly said what that particular section teaches the users. For instance, one participant asked if seniors would know how to turn the volume up on their phone. That question could be answered if we put a mini tutorial on how to turn up the volume in the “Phone Controls” section. Additionally, one participant asked if the app would render well for colorblind users. Adding a color blindness option in the accessibility settings might be useful for those users, especially since our color palette includes yellow, green, and blue, which might not render as well for them. Finally, for any potential usability studies we do in the future, adding more screens for each button would be helpful for participants to see what they would learn in each tutorial. More screens would be particularly useful in the practice tutorial sections.</br> 

## Monetization

A lot of apps nowadays try to go the freemium route, where the app is free to use, but then comes with ads and some paid way to turn ads off. These kinds of ads are (in our opinion) very predatory and rely on people clicking somewhere they don't want to by mistake to download alternative apps they don’t need. Since one of the main selling points of our app is that it would be able to teach seniors with little tech experience how to stay safe on the internet and avoid scams, it seems counterintuitive to monetize our app with such a system. If users get shown large ads up front without knowing what they are, they might click on ads thinking it is part of the actual app before ever learning their true purpose. This is why we believe an upfront paid app is probably more appropriate than a free app with ads. The only problem with this is the same problem that plagued most apps: an initial paid barrier limits the user base pretty significantly right off the bat. Another suggestion to combat this might be a limited free version of the app, that only has some of the total content, but then doing this puts us in a situation where we’ve put a paywall in front of most of the content, which is the issue with some of our competitors. The last suggestion for monetization would be to get a sponsorship for our app. Working closely with a larger company that shares the same interests as us might allow us to gain funding for the app without needing to place ads or charge customers, and instead use it as a form of mobile marketing for the sponsor itself. Though this is probably the most difficult route to take, since the sponsor would need to agree to help fund it and not want to place ads in the app, we believe this to be the best possible route we could take for monetization.

## Measuring Engagement

For measuring activity of our app, we believe it would be fair to look at daily usage even at small intervals of time. The purpose of our app is to have readily available tutorials for users to peruse at their leisure. There is a high chance that our app gets used once in a day, and only for a few minutes in order for the user to learn how to do some task, and then they stop using the app for that day. As new users learn to use the app and become more comfortable with their phones, their usage might start out with much longer, more frequent sessions, but then slow down over time. Session length for our app might not be very long, since as we mentioned users might just use it for a few minutes to learn a task and then close it, but continued usage across a month might be more indicative of high retention. The worst-case scenario with our users would be spending too long in a single session, not being able to solve their issues, and not coming back to it when another problem arises. Other important metrics would be download numbers as well as user reviews. One of the things we noticed when researching competitors was that their apps weren’t very widely downloaded, or had mixed to negative user reviews. Being able to achieve larger downloads as well as more positive reviews would prove our app as ideal among users. 

## Stretch Features

We had ideas of an app that when auto-detecting your phone, had an option to apply an overlay that would guide you through the process of learning some app or task. With tutorials set up the way we have now, there's always the chance that a user's phone won't match up directly with a tutorial causing confusion, and this overlay idea might help that. If we had more time / expertise, we would have liked to explore this option idea further and it's something we want to keep in mind for the future. Other more attainable stretch features would be adding more phone controls to our help menu. We want the help menu to give the most basic of phone controls to those who need it before trying out the tutorials. It would include more information on how tapping and swiping works as well as basic controls like volume, closing and opening apps, etc. We also wanted to try adding different color options in our accessibility menus to help color blind users. Our current color scheme that uses mostly green, yellow, and blue might present an issue to those with certain forms of color blindness. 
