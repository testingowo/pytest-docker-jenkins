FROM python:3.6-slim
MAINTAINER j.skibinski@teb-akademia.pl
COPY . /python-test-calculator
WORKDIR /python-test-calculator
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
RUN ["pytest", "-v", "--html=reports/result.html"]
CMD tail -f /dev/null