import os
import subprocess
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    try:
        # FFmpeg ভার্সন চেক করার কমান্ড
        result = subprocess.run(['ffmpeg', '-version'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        ffmpeg_version = result.stdout.split('\n')[0]
        return f"Status: Active | Engine: {ffmpeg_version}"
    except Exception as e:
        return f"Status: Error | Details: {str(e)}"

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
