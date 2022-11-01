FROM python

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

# EXPOSE 8000

#First copied only requirements.txt instead of copying the entire directory so as to not invalidate
#the cache of the previous container. If I had copied the entire directory at once in the start
#itself, then it would invalidate the entire cache. So to avoid this and only invalidate the cache
#only when requirements.txt is changed, this step is done.