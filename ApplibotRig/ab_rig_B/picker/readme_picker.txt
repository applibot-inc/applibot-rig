Regarding the picker:

--------------------------------------------------------------------------

・アプリボットリグでは、株式会社ABCアニメーション 宮本様制作のARSピッカーを採用しております。
  ピッカーをご利用の際は以下よりダウンロードお願い致します。（v02_230222）
  https://abc-anime.box.com/s/6e03tgsphwfvjb5so96a10vh5858ejyc

・アプリボットリグのpickerフォルダはab_rig_A（またはab_rig_B）フォルダの下に置くようにお願いします。
  SetProjectを行うと相対パスにて背景画像も参照されるようになります。


【ピッカーのボタンをハイライトさせる方法】
  ボタンにスクリプトを関連付けた場合デフォルトではハイライトしない仕様となっております。
  ハイライトさせたい場合は以下の対応を行って下さい。

  ① picker/settings/settings.json  をテキスト形式で開いて下さい。
  ② hilight_selected_script を 0 から 1 に変更して上書き保存して下さい。

  これでボタン選択時にハイライト表示されるようになります。

--------------------------------------------------------------------------

In the applibot_rig, we use the ARS picker created by Mr. Miyamoto at ABC Animation Co., Ltd.
Please download the picker from the following link when using it. (v02_230222)
https://abc-anime.box.com/s/6e03tgsphwfvjb5so96a10vh5858ejyc

Please place the picker folder of applibot_rig under the ab_rig_A (or ab_rig_B) folder.
When you perform SetProject, the background image will also be referenced with a relative path.

[How to highlight the picker button]
By default, the button does not highlight when a script is associated with it.
If you want to highlight it, please follow the instructions below.
  1. Open picker/settings/settings.json in text format.
  2. Change hilight_selected_script from 0 to 1 and save it overwriting the file.
  
This will highlight the button when it is selected.

--------------------------------------------------------------------------
 20240115
 