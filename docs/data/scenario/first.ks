*first 
[cm]

@clearstack
[position frame="message.png" color="0x000000" opacity="0"]
@bg storage ="start.png" time=100
@wait time = 200



[button x=450 y=500 graphic="button_start.png" target="gamestart"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="start.ks"
