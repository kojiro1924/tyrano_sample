;
*start

[cm  ]
[clearfix]
[start_keyconfig]
 
[bg storage="uni.png" time="100"]

 
;メッセージウィンドウの設定
[position layer="message0" frame="message.png" left=80 top=450 width=1200 height=250 page=fore visible=true opacity="256"]
 
;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[deffont size="30" color="0x800080" bold=true]
[resetfont]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
[eval exp="f.uni_found = 0"]
[eval exp="f.uni_total = 6"]
[eval exp="f.choice = false"]
 
[pushlog text="ここには何もないようだ...."]
[nolog]

私を覚えていますか？[p]

なんだこれは......夢か？[p]

私を......見つけ出してください[p]

何を言っているんだ？[l][r]

お前を見つけ出す？どこから？[p]

すぐに理解できますように．．．[p]
[jump target=*game_start]

;-------
*game_start

[bg storage="morning.png"]
何だったんだあれは？[p]
ただの夢だよな．．．[p]

[link target=*C1 keyfocus=false]そういえば，アニメを見ている途[endlink][link target=*C2 keyfocus=false]中に[endlink][link target=*C1 keyfocus=false]寝ちゃったんだよな。[r]いいところだったのに[endlink]
[s]
*C2
[iscript]
f.uni_found += 1
[endscript]
 
[er]__これでいいのか...？[p]
[jump target=*P1]
 

*C1

[jump target=*P1]
; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---
*P1
[er][link target=*P2 keyfocus=false]しかしもうこんな時間か，さっさと支度して大学に行かなきゃな[endlink]
[s]


; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---

*P2
[er][link target=*D1 keyfocus=false]普[endlink][link target=*D2 keyfocus=false]通に[endlink][link target=*D1 keyfocus=false]考えて夢なんて気にする必要ないし，[r]大学に行くとするか。[endlink]
[s]
*D2
 
[iscript]
f.uni_found += 1
[endscript]
[er]これでいいんだよな...[p]
[jump target=*P3]
 

*D1

[jump target=*P3]
; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---
*P3
[bg storage="classroom.png"]
[er][link target=*E1 keyfocus=false]もう[endlink][link target=*E2 keyfocus=false]12時[endlink][link target=*E1 keyfocus=false]かー[r]友達と飯でも食べに行くか[endlink]
[s]
*E1
[jump target=*P4]
*E2
[iscript]
f.uni_found += 1
[endscript]
[er]またうに...[p]
[jump target=*P4]
; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---
*P4
[er]（友人）お前，単位は大丈夫そうなのか？[p]
[link target=*F1 keyfocus=false]その話はもうしないよ[endlink][r][link target=*F2 keyfocus=false]うに[endlink][link target=*F1 keyfocus=false]お願いするよ．．．[endlink]
[s]
*F1
[jump target=*P4]
*F2
[iscript]
f.uni_found += 1
[endscript]

[er]だんだんわかってきた気がする[p]
[jump target=*P5]

; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---
*P5
[er]もうこんな時間だし，[r]アニメの続きを見るために帰ろう[p]
[bg storage="night.png"]

[link target=*G1 keyfocus=false]やっぱあのアニメの[endlink][link target=*G2 keyfocus=false]挿入[endlink][link target=*G1 keyfocus=false]歌は何度聞いても飽きないな[endlink]
[s]

*G1
[jump target=*P6]

*G2
[iscript]
f.uni_found += 1
[endscript]

[er]いつまでなんだ．．．？[p]

[jump target=*P6]
; ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---
*P6
[er]もうこんな時間か，アニメでも見ながら寝よう[p]
[link target=*H1 keyfocus=false]ベッドの上に横たわったら，[endlink][link target=*H2 keyfocus=false]急に[endlink][link target=*H1 keyfocus=false]眠気が襲ってきた[endlink]
[s]

*H1
[jump target=*P7]

*H2
[iscript]
f.uni_found += 1
[endscript]

[er]．．．[p]


[jump target=*P7]

;終了判定
*P7
[er]
[if exp="f.uni_found == f.uni_total"]
    [jump target=*good_end]
[else]
    [jump target=*bad_end]
[endif]
 
;-----

*good_end
[bg storage="uni.png"]
この光景は，以前見たような．．．[p]
私を覚えて．．．[r]見つけ出してくれてありがとうございます[p]
これで終わりですが，[l]また思い出してくれると嬉しいです．[p]
こんな終わりがあっていいのか？[p]
[bg storage="b.png"]
[clearfix]
[position frame="none" color="0x000000" opacity="128"]
[position width="800" height="240" left="70" top="380"]
[position margint="25" marginr="25" marginb="25" marginl="25"]
[position opacity="255"]
[font size=50 color="0x000000" bold=true]
【END】[p]
[er]
[resetfont]
[jump storage="first.ks" target=*first]


;------
*bad_end
[bg storage="uni.png"]
この光景はなんだ．．．あれはウニか？[p]
おや，また会いましたね[p]
なんで変な夢ばかり見るんだ．．．[p]
あなたは6つのうちまだ[emb exp=f.uni_found]個の私しか見つけられていないようですね．[p]
どういうことだ．．．まあいいか[p]
[jump target=*game_start]



[endnolog]