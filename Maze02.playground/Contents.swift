import Cocoa

var Maze:[String]=["#","S","#","#","#","#","#","#","#","#",
                   "#"," ","#","#","#","#","#","#"," ","#",
                   "#"," "," "," "," ","#","#"," "," ","#",
                   "#"," ","#","#"," "," "," "," ","#","#",
                   "#","#","#","#"," ","#","#","#","#","#",
                   "#"," "," "," "," ","#"," "," "," ","#",
                   "#"," ","#","#","#","#"," ","#"," ","#",
                   "#"," "," "," "," "," "," ","#"," ","#",
                   "#","#"," ","#"," ","#","#","#"," ","#",
                   "#","#","#","#","#","#","#","#","G","#",
                   "#","#","#","#","#","#","#","#"," ","#",
                   " "," "," "," "," "," "," "," "," "," ",]

                    
//現在地
var Loc = 0
//現在地からみて上下左右
var Under = 0
var Right = 0
var Left = 0
var Uper = 0

//本文----------------------------------------------------------------------------------------

if let i = Maze.firstIndex(of: "S") {
    Loc = i + 10
    Maze[Loc] = "+"
}

Mazepri()
reloadCheck()
print(" ")

while Maze[Under] != "G" {
    reload()
    progress()
}
Mazepri()
reloadCheck()

//関数----------------------------------------------------------------------------------------

//現在地と上下左右を更新
func reload(){
    Under = Loc + 10
    Right = Loc + 1
    Left = Loc - 1
    Uper = Loc - 10
}

//下、右、左、上、もう一度下の順番でスペースを確認して進む
func progress(){
    if (Maze[Under] == " " && Maze[Under + 10] == " ") {

    Maze[Under]  = "+"
    Loc = Under

    }else if(Maze[Right] == " "){

    Maze[Right] = "+"
    Loc = Right

    }else if(Maze[Left] == " "){

    Maze[Left] = "+"
    Loc = Left

    }else if(Maze[Uper] == " "){

    Maze[Uper] = "+"
    Loc = Uper

    }else if(Maze[Under] == " "){

    Maze[Under] = "+"
    Loc = Under
    }//else if(Maze[Under] == "G"){
     //  Loc = Under
     //}
}

//現在地と上下左右の値をプリント
func reloadCheck(){
 print(Loc,Under,Uper,Right,Left)
}

//迷路をプリント
func Mazepri(){
    print(Maze[0],Maze[1],Maze[2],Maze[3],Maze[4],Maze[5],Maze[6],Maze[7],Maze[8],Maze[9])
    print(Maze[10],Maze[11],Maze[12],Maze[13],Maze[14],Maze[15],Maze[16],Maze[17],Maze[18],Maze[19])
    print(Maze[20],Maze[21],Maze[22],Maze[23],Maze[24],Maze[25],Maze[26],Maze[27],Maze[28],Maze[29])
    print(Maze[30],Maze[31],Maze[32],Maze[33],Maze[34],Maze[35],Maze[36],Maze[37],Maze[38],Maze[39])
    print(Maze[40],Maze[41],Maze[42],Maze[43],Maze[44],Maze[45],Maze[46],Maze[47],Maze[48],Maze[49])
    print(Maze[50],Maze[51],Maze[52],Maze[53],Maze[54],Maze[55],Maze[56],Maze[57],Maze[58],Maze[59])
    print(Maze[60],Maze[61],Maze[62],Maze[63],Maze[64],Maze[65],Maze[66],Maze[67],Maze[68],Maze[69])
    print(Maze[70],Maze[71],Maze[72],Maze[73],Maze[74],Maze[75],Maze[76],Maze[77],Maze[78],Maze[79])
    print(Maze[80],Maze[81],Maze[82],Maze[83],Maze[84],Maze[85],Maze[86],Maze[87],Maze[88],Maze[89])
    print(Maze[90],Maze[91],Maze[92],Maze[93],Maze[94],Maze[95],Maze[96],Maze[97],Maze[98],Maze[99])
}
