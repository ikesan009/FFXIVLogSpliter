# FFXIVLogSpliter (FF14ログ分割ツール)
**FFXIVLogSpliter**は、FF14用Advanced Combat Trackerのログ整理をより簡単にするために開発されました。このツールを利用することで、任意のタイミングでログファイルをアーカイブすることができます。

# Processing Flow (処理の流れ)
1. Advanced Combat Trackerが起動している場合は停止します。
2. 最新のログファイルをアーカイブします。
3. 古いログファイルが設定値を超えている場合は、削除します。
4. Advanced Combat Trackerを再度起動します。

# Requirement (必要動作環境)
* OSがWindows OSであること

# Usage (利用方法)
1. zipファイルをダウンロードし、任意の場所に格納します。
* [**FFXIVLogSpliter-1.0.0.zip**](https://github.com/ikesan009/FFXIVLogSpliter/archive/refs/tags/1.0.0.zip)
2. 格納したzipファイルを展開します。
![image](https://user-images.githubusercontent.com/30005561/169692294-c8ac7111-1ebd-483a-8481-2392bf986de9.png)
3. 展開したフォルダに含まれる「**settings.txt**」をメモ帳などで開き、以下を**自身の環境に合わせて**編集して上書き保存します。(画像はあくまで例です。)
* actinstallpath : Advanced Combat Trackerのインストールパス
* ffxivlogdir : ACTのログの保存先フォルダパス
* lognum : ログの最大保持数 **※デフォルト20**
![image](https://user-images.githubusercontent.com/30005561/169692926-75937478-014d-431b-bafe-582d66912996.png)
4. 「**FFXIVLogSpliter.exe**」を**管理者として実行**します。
![image](https://user-images.githubusercontent.com/30005561/169692978-d845499d-534e-4c5a-a9b8-d4cebf88d3a7.png)
5. ユーザーアカウント制御が出た場合は、「はい」を選択します。
※Windowsの設定で無効化することもできます。
![image](https://user-images.githubusercontent.com/30005561/169693049-2c7d0c72-4f6f-4859-9a83-10426f8fb844.png)
6. コマンドプロンプトが起動し、自動で処理が行われます。
「続行するには何かキーを押してください．．．」が表示されたら、任意のキーを入力するか「×」閉じしてください。次回以降利用する場合は設定が完了しているので、手順4から実施します。
![image](https://user-images.githubusercontent.com/30005561/169693132-e64941ad-6341-4a84-abdc-bfaf386faaab.png)

# ひとこと
exe形式なのでショートカットをデスクトップに配置したり、スタートメニューに登録しておくとアクセスしやすく便利です。  
なにかバグなどあれば報告していただければ幸いです。  
それでは皆さん、良いエオルゼアライフを！
