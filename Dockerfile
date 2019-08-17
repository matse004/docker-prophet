FROM lambci/lambda:build-python3.6

ENV VIRTUAL_ENV=venv
ENV PATH $VIRTUAL_ENV/bin:$PATH

RUN python3 -m venv $VIRTUAL_ENV
RUN . $VIRTUAL_ENV/bin/activate

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt