library(NBATools)

command <- 'z'
while(command!='q') {
    print("Command:")
    print("a. Player Salary Prediction.")
    print("b. Game Result Prediction.")
    print("c. Team Quality Prediction.")
    print("d. Free-Agent Signing Proposal.")
    print("e. Trade Proposal.")
    print("l. List of player names.")
    print("q. Quit.")
    print("Please type a letter, hit enter, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
    command <- scan(file("stdin"), what=character())
    if(command=='q') {
        break;
    } else if(command=='a') {
        print("========================================")
        print("========================================")
        print("Player Salary Prediction.")
        print("Please type the name of a player, eg. 'LeBron James', hit enter, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        player <- scan(file("stdin"), what=character(), sep="\n")
        res <- salaryPred(player)
        print(paste("Salary prediction of", player, "is $", res))
        print("========================================")
        print("========================================")
    } else if(command=='b') {
        print("========================================")
        print("========================================")
        print("Game Result Prediction.")
        print("Please type the names of the first team, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team1 <- scan(file("stdin"), what=character(), sep="\n")
        print("Please type the names of the second team, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team2 <- scan(file("stdin"), what=character(), sep="\n")
        res <- gamePred(team1, team2)
        print(paste("Game prediction(W/L) is", res))
        print("========================================")
        print("========================================")
    } else if(command=='c') {
        print("========================================")
        print("========================================")
        print("Team Quality Prediction.")
        print("Please type the names of the team, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team <- scan(file("stdin"), what=character(), sep="\n")
        print("Please type the accuracy you want, recommend 100 or 1000, run time is directly proportion to accuracy, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        accuracy <- scan(file("stdin"))
        res <- teamQualityPred(team, accuracy)
        print(paste("Team quality prediction is", res, "/100"))
        print("========================================")
        print("========================================")
    } else if(command=='d') {
        print("========================================")
        print("========================================")
        print("Free-Agent Signing Proposal.")
        print("Please type the names of the current team, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team <- scan(file("stdin"), what=character(), sep="\n")
        print("Please type the salary cap you want to pay, recommend 121000000, which is the luxury tax line, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        cap <- scan(file("stdin"))
        print("Please type the accuracy you want, recommend 10, run time is directly proportion to accuracy, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        accuracy <- scan(file("stdin"))
        print("It might take several minutes, even more than 10 minutes according to your accuracy, please be patient")
        freeAgentProp(team, cap, accuracy)
        print("========================================")
        print("========================================")
    } else if(command=='e') {
        print("========================================")
        print("========================================")
        print("Trade Proposal.")
        print("Please type the names of the team before trade, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team1 <- scan(file("stdin"), what=character(), sep="\n")
        print("Please type the names of the team after trade, one enter after one name, then hit CTRL+Z on windows or CTRL+D on mac to end scanning")
        team2 <- scan(file("stdin"), what=character(), sep="\n")
        tradeProp(team1, team2)
        print("========================================")
        print("========================================")
    } else if(command=='l') {
        print("========================================")
        print("========================================")
        print("List of player names")
        print(subset(player_salary, X1718>0, Player)[,1])
        print("========================================")
        print("========================================")
    }
}
