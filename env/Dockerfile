# 以下よりバージョンの確認をしつつ選択
# https://hub.docker.com/_/python/tags
FROM python:3.11-buster
ARG DEBIAN_FRONTEND=noninteractive

# パッケージの追加とタイムゾーンの設定
# 必要に応じてインストールするパッケージを追加してください
RUN apt-get update && apt-get install -y \
    tzdata \
&&  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Tokyo

# JupyterLab + 拡張機能
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black \
    jupyterlab \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb


# 基本パッケージ
RUN pip install --no-cache-dir \
    numpy  \
    scipy  \
    pandas \
    statsmodels  \
    scikit-learn \
    imbalanced-learn    \
    category_encoders   \
    matplotlib          \
    japanize_matplotlib \
    seaborn \
    plotly

# 分析パッケージ
RUN pip install --no-cache-dir \
    xgboost \
    lightgbm \
    catboost \
    pydeps \
    graphviz \
    shap \
    umap

