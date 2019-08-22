FROM tensorflow/tensorflow:1.13.1-py3-jupyter

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
        build-essential \
        g++ \
        git \
        vim \
        openssh-client \
        # install python
        python-dev \
        python-pip \
        python-setuptools \
        python-virtualenv \
        python-wheel \
        pkg-config \
        python-matplotlib \
        python3-tk \
        python-pillow \
        # requirements for numpy
        libopenblas-base \
        python-numpy \
        python-scipy \
        # requirements for keras
        python-h5py \
        python-yaml \
        python-pydot \
        openjdk-8-jdk \
        python3-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip \
 && pip --no-cache-dir install -U \
        keras \
        lime \
        shap \
        eli5 \
        xgboost \
        gensim \
        pandas \
        scikit-learn \
        statsmodels \
        jupyter \
        seaborn \
        pydot \
        numpy \
        scipy \
        sklearn \
        scikit-image \
        matplotlib \
        Cython \
        requests \
        opencv-python \
        konlpy \
        nltk \
        bert-serving-server \
        bert-serving-client \
        pandas_ml

COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
