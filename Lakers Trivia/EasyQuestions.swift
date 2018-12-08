//
//  EasyQuestions.swift
//  Lakers Trivia
//
//  Created by Jesus Andres Bernal Lopez on 11/21/18.
//  Copyright © 2018 Jesus Andres Bernal Lopez. All rights reserved.
//

import Foundation

class EasyQuestions{
    
    var list = [Questions]()
    
    init() {
        list.append(Questions(question: "How many championships do the Lakers have?",
                              correctAnswer: "16", optionTwo: "10", optionThree: "24", optionFour: "18"))
        list.append(Questions(question: "How many conference titles do the Lakers have?",
                              correctAnswer: "31", optionTwo: "16", optionThree: "40", optionFour: "51"))
        list.append(Questions(question: "How many division titles do the Lakers have?",
                              correctAnswer: "23", optionTwo: "60", optionThree: "14", optionFour: "27"))
        list.append(Questions(question: "Which of the following is NOT a Lakers color?",
                              correctAnswer: "Blue", optionTwo: "Purple", optionThree: "Gold", optionFour: "Black"))
        list.append(Questions(question: "Who is the Lakers biggest rival?",
                              correctAnswer: "Celtics", optionTwo: "Clippers", optionThree: "Warriors", optionFour: "Kings"))
        list.append(Questions(question: "What conference do the Lakers play in?",
                              correctAnswer: "Western", optionTwo: "Eastern", optionThree: "Pacific", optionFour: "Atlantic"))
        list.append(Questions(question: "What number did Kobe Bryant wear in his rookie season?",
                              correctAnswer: "8", optionTwo: "24", optionThree: "10", optionFour: "14"))
        list.append(Questions(question: "How many championships did Earving 'Magic' Johnson help bring to the Lakers?",
                              correctAnswer: "5", optionTwo: "4", optionThree: "3", optionFour: "1"))
        list.append(Questions(question: "How many points did Kobe score in his final game?",
                              correctAnswer: "60", optionTwo: "50", optionThree: "55", optionFour: "81"))
        list.append(Questions(question: "What is the Lakers single game record for points by a player?",
                              correctAnswer: "81", optionTwo: "100", optionThree: "70", optionFour: "69"))
        list.append(Questions(question: "Before Los Angeles where did the Lakers play?",
                              correctAnswer: "Minneapolis", optionTwo: "San Diego", optionThree: "Las Vegas", optionFour: "Chicago"))
        list.append(Questions(question: "What year did the Lakers draft Earving 'Magic' Johnson?",
                              correctAnswer: "1979", optionTwo: "1981", optionThree: "1983", optionFour: "1975"))
        list.append(Questions(question: "Who is the Lakers all-time leader in points?",
                              correctAnswer: "Kobe Bryant", optionTwo: "Magic Johnson", optionThree: "LeBron James", optionFour: "Micharl Jordan"))
        list.append(Questions(question: "Who is the Lakers all-time leader in rebounds?",
                              correctAnswer: "Elgin Baylor", optionTwo: "Kareem Abdul-Jabbar", optionThree: "Shaquille O'Neal", optionFour: "Kobe Bryant"))
        list.append(Questions(question: "Who is the Lakers all-time leader in assists?",
                              correctAnswer: "Earving 'Magic' Johnson", optionTwo: "Kobe Bryant", optionThree: "John Stockton", optionFour: "LeBron James"))
        list.append(Questions(question: "Who is the Lakers all-time leader in points in the playoffs?",
                              correctAnswer: "Kobe Bryant", optionTwo: "LeBron James", optionThree: "Earving 'Magic' Johnson", optionFour: "James Worthy"))
        list.append(Questions(question: "Who is the Lakers current coach?",
                              correctAnswer: "Luke Walton", optionTwo: "LeBron James", optionThree: "Magic Johnson", optionFour: "Rob Pelinka"))
        list.append(Questions(question: "Which number is not retired by the Lakers?",
                              correctAnswer: "23", optionTwo: "8", optionThree: "33", optionFour: "42"))
        list.append(Questions(question: "What year did Lakers win their first championship?",
                              correctAnswer: "1949", optionTwo: "2010", optionThree: "1930", optionFour: "1974"))
        list.append(Questions(question: "How many championships did Kobe win with the Lakers?",
                              correctAnswer: "5", optionTwo: "10", optionThree: "6", optionFour: "3"))
        list.append(Questions(question: "What stadium do the Lakers play their home games in?",
                              correctAnswer: "Staples Center", optionTwo: "The Forum", optionThree: "Oracle Arena", optionFour: "TD Garden"))
        list.append(Questions(question: "What player won rookie of the year while on the Lakers?",
                              correctAnswer: "Elgin Baylor", optionTwo: "Kobe Bryant", optionThree: "Earvin 'Magic' Johnson", optionFour: "Pau Gasol"))
        list.append(Questions(question: "What is the Lakers longest winning streak?",
                              correctAnswer: "33", optionTwo: "23", optionThree: "24", optionFour: "18"))
        list.append(Questions(question: "What is the Lakers longest road winning streak?",
                              correctAnswer: "16", optionTwo: "21", optionThree: "33", optionFour: "24"))
        list.append(Questions(question: "How many times have the Lakers gone to the NBA Finals?",
                              correctAnswer: "31", optionTwo: "16", optionThree: "18", optionFour: "21"))
        list.append(Questions(question: "What player has the most double doubles for the Lakers?",
                              correctAnswer: "Earving 'Magic' Johnson", optionTwo: "Kobe Bryant", optionThree: "Pau Gasol", optionFour: "Jerry West"))
        list.append(Questions(question: "What player has the most triple doubles for the Lakers?",
                              correctAnswer: "Earving 'Magic' Johnson", optionTwo: "Kobe Bryant", optionThree: "Lonzo Ball", optionFour: "LeBron James"))
        list.append(Questions(question: "What is the largest margin of victory the Lakers have had?",
                              correctAnswer: "63", optionTwo: "47", optionThree: "50", optionFour: "33"))
        list.append(Questions(question: "What is the largest margin of victory the Lakers have had in a home game?",
                              correctAnswer: "63", optionTwo: "47", optionThree: "32", optionFour: "24"))
        list.append(Questions(question: "What is the largest margin of victory the Lakers have had in a road game?",
                              correctAnswer: "47", optionTwo: "63", optionThree: "24", optionFour: "60"))
        list.append(Questions(question: "What is the most points allowed in a game by the Lakers?",
                              correctAnswer: "173", optionTwo: "159", optionThree: "189", optionFour: "190"))
        list.append(Questions(question: "What is the most points scored in a game by the Lakers",
                              correctAnswer: "162", optionTwo: "179", optionThree: "148", optionFour: "103"))
        list.append(Questions(question: "What is the most field goals the Lakers have made in a game",
                              correctAnswer: "69", optionTwo: "81", optionThree: "80", optionFour: "90"))
        list.append(Questions(question: "What player has played the most minutes for the Lakers?",
                              correctAnswer: "Kobe Bryant", optionTwo: "Kareem Abdul-Jabbar", optionThree: "Derek Fisher", optionFour: "Shaquille O'Neal "))
        list.append(Questions(question: "What player has played the most games for the Lakers?",
                              correctAnswer: "Kobe Bryant", optionTwo: "Derek Fisher", optionThree: "LeBron James", optionFour: "James Worthy "))
        list.append(Questions(question: "What player has the most steals for the Lakers?",
                              correctAnswer: "Earving 'Magic' Johnson", optionTwo: "Kobe Bryant", optionThree: "Michael Cooper", optionFour: "Byron Scott"))
        list.append(Questions(question: "What players has the most rebounds for the Lakers?",
                              correctAnswer: "Wilt Chamberlain", optionTwo: "Shaquille O'Neal", optionThree: "A. C. Green", optionFour: "Lamar Odom"))
        list.append(Questions(question: "What is the most turnovers the Lakers have had in a game?",
                              correctAnswer: "43", optionTwo: "18", optionThree: "24", optionFour: "25"))
        list.append(Questions(question: "What is the most rebounds the Lakers have had in a game?",
                              correctAnswer: "107", optionTwo: "100", optionThree: "98", optionFour: "110"))
        list.append(Questions(question: "What year did Kobe Bryant win the scoring title?",
                              correctAnswer: "2006", optionTwo: "1998", optionThree: "2010", optionFour: "2008"))
        list.append(Questions(question: "What year did Kobe Bryant win the scoring title?",
                              correctAnswer: "2007", optionTwo: "2008", optionThree: "2005", optionFour: "2003"))
        list.append(Questions(question: "What player has won the most scoring titles while playing for the Lakers?",
                              correctAnswer: "George Mikan", optionTwo: "Kobe Bryant", optionThree: "Jerry West", optionFour: "Shaquille O'Neal"))
        list.append(Questions(question: "Who is the only player to win sixth man of the year for the Lakers?",
                              correctAnswer: "Lamar Odom", optionTwo: "Lou Williams", optionThree: "Jordan Clarkson", optionFour: "Eddie Jones"))
        list.append(Questions(question: "Who won defensive player of the year with the Lakers?",
                              correctAnswer: "Michael Cooper", optionTwo: "Kobe Bryant", optionThree: "Earving 'Magic' Johnson", optionFour: "Shaquille O'Neal"))
        list.append(Questions(question: "What player won NBA Finals MVP with the Lakers three times?",
                              correctAnswer: "Earving 'Magic' Johnson", optionTwo: "Kobe Bryany", optionThree: "Jerry West", optionFour: "Wilt Chamberlain"))
        list.append(Questions(question: "What player won NBA Finals MVP with the Lakers three times?",
                              correctAnswer: "Shaquille O'Neal", optionTwo: "Kobe Bryant", optionThree: "James Worthy", optionFour: "Kareem Abdul-Jabbar"))
        list.append(Questions(question: "What player was part of the All-NBA First Team the most while playing for the Lakers?",
                              correctAnswer: "Kobe Bryant", optionTwo: "Earving 'Magic' Johnson", optionThree: "George Mikan", optionFour: "Gail Goodrich"))
        list.append(Questions(question: "What player was part of the All-NBA Defensice First Team the most while part of the Lakers?",
                              correctAnswer: "Kobe Bryant", optionTwo: "Michael Cooper", optionThree: "Jerry West", optionFour: "Earving 'Magic' Johnson"))
        list.append(Questions(question: "What coach did NOT win Coach of the Year while coaching the Lakers?",
                              correctAnswer: "Phil Jackson", optionTwo: "Bill Sharman", optionThree: "Pat Riley", optionFour: "Del Harris"))
        list.append(Questions(question: "What player did NOT win NBA MVP while playing for the Lakers?",
                              correctAnswer: "Jerry West", optionTwo: "Kobe Bryant", optionThree: "Earving 'Magic' Johnson", optionFour: "Shaquille O'Neal"))
        list.append(Questions(question: "How many times did Earving 'Magic' Johnson win MVP while playing for the Lakers?",
                              correctAnswer: "3", optionTwo: "5", optionThree: "2", optionFour: "1"))
        list.append(Questions(question: "How many times did Kobe Bryant win MVP while playing for the Lakers?",
                              correctAnswer: "1", optionTwo: "2", optionThree: "0", optionFour: "5"))
        list.append(Questions(question: "How many times did Shaquille O'Neal win MVP while playing for the Lakers?",
                              correctAnswer: "1", optionTwo: "0", optionThree: "3", optionFour: "2"))
        list.append(Questions(question: "How many times did Kareem Abdul-Jabbar win MVP while playing for the Lakers?",
                              correctAnswer: "3", optionTwo: "2", optionThree: "1", optionFour: "0"))
        list.append(Questions(question: "How many times did Jerry West win MVP while playing for the Lakers?",
                              correctAnswer: "0", optionTwo: "1", optionThree: "2", optionFour: "4"))
        list.append(Questions(question: "How many times did Jerry West win NBA Finals MVP while playing for the Lakers?",
                              correctAnswer: "1", optionTwo: "2", optionThree: "7", optionFour: "4"))
    }
    
}
