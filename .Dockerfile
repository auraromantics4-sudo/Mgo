FROM alpine:latest

# FFmpeg ইন্সটল
RUN apk add --no-cache ffmpeg

WORKDIR /app

# স্ট্যাটাস ফাইল তৈরি
RUN echo "Service Active | FFmpeg Ready" > index.html

# রেলওয়ের জন্য ডিফল্ট পোর্ট
ENV PORT=8080

# বিল্ট-ইন ওয়েব সার্ভার চালু রাখা যাতে ক্র্যাশ না করে
CMD sh -c "httpd -f -p ${PORT:-8080}"
