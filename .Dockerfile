FROM python:3.10-slim

WORKDIR /app

COPY . /app

# ইচ্ছাকৃত ভুল সিনট্যাক্স যা রেলওয়ে বা ডকার বিল্ড ইঞ্জিন ফেইল করাবে
RUN pip install --no-cache-dir flask non_existing_fake_package_xyz_99

CMD ["python", "app.py"]
