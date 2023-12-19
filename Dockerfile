FROM pytorch/pytorch:2.1.2-cuda12.1-cudnn8-runtime
## ensure locale is set during build
ENV LANG C.UTF-8

ARG DEBIAN_FRONTEND=noninteractive

RUN python -m pip install --upgrade pip

RUN pip3 install argparse && \
    pip3 install nodejs && \
    pip3 install uproot && \
    pip3 install jupyter && \
    pip3 install jupyterhub && \
    pip3 install jupyterlab && \
    pip3 install matplotlib && \
    pip3 install seaborn && \
    pip3 install hep_ml && \
    pip3 install sklearn && \
    pip3 install scipy && \
    pip3 install tables && \
    pip3 install "dask[complete]" && \
    pip3 install pydot && \
    pip3 install pyparser && \
    pip3 install pyparsing && \
    pip3 install pytest && \
    pip3 install pandas && \
    pip3 install h5py && \
    pip3 install numpy && \
    pip3 install torch && \
    pip3 install pyro-ppl && \
    pip3 install vector && \
    pip3 install awkward && \
    pip3 install batchup && \
    pip3 install slot_attention \