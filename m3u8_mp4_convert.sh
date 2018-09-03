# m3u8ファイル検索とffmpeg実行
find . -maxdepth 1 -name "*.m3u8" | while read file
do
  ls "${file}"
  ffmpeg -i "$file" -movflags faststart -c copy -bsf:a aac_adtstoasc "$file.mp4"
  wait
  rm -r "$file"
done

# .tsファイルを削除
#find . -maxdepth 1 -name "*.ts" | while read file
#do
 # ls "${file}"
 # rm -r "$file"
#done

# .m3u8ファイルを削除
#find . -maxdepth 1 -name "*.m3u8" | while read file
#do
#  ls "${file}"
#  rm -r "$file"
#done


