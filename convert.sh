#convert photos to jpg
for i in *.heic; do sips -s format jpeg -s formatOptions high "${i}" --out "${i%heic}jpg" && touch -r "${i}" "${i%heic}jpg"; done

for i in *.HEIC; do sips -s format jpeg -s formatOptions high "${i}" --out "${i%HEIC}jpg" && touch -r "${i}" "${i%HEIC}jpg"; done

for i in *.png; do sips -s format jpeg -s formatOptions high "${i}" --out "${i%png}jpg" && touch -r "${i}" "${i%png}jpg"; done

for i in *.PNG; do sips -s format jpeg -s formatOptions high "${i}" --out "${i%PNG}jpg" && touch -r "${i}" "${i%PNG}jpg"; done

rm *.heic
rm *.HEIC
rm *.png
rm *.PNG


# rename files
for i in *.JPG; do mv "${i}" "${i%JPG}jpg"; done
for i in *.JPEG; do mv "${i}" "${i%JPEG}jpg"; done
for i in *.jpeg; do mv "${i}" "${i%jpeg}jpg"; done
for i in *.MOV; do mv "${i}" "${i%MOV}mov"; done



#ffmpeg -i IMG_00001.mov -acodec copy -vcodec copy output.mp4
for i in *.MP4; do ffmpeg -i "${i}" "${i%MP4}mov" && touch -r "${i}" "${i%MP4}mov"; done
for i in *.mp4; do ffmpeg -i "${i}" "${i%mp4}mov" && touch -r "${i}" "${i%mp4}mov"; done

rm *.mp4
rm *.MP4
