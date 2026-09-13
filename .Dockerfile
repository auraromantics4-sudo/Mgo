FROM python:3.10-slim

# লিনাক্স প্যাকেজ ম্যানেজার আপডেট ও FFmpeg ইন্সটল
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# প্রয়োজনীয় ডিপেন্ডেন্সি
RUN pip install --no-cache-dir flask

COPY . /app

# রেলওয়ের ডাইনামিক পোর্ট বাইন্ড করার জন্য
ENV PORT=8080

CMD ["python", "app.py"]
