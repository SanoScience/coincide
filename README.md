# COINCIDE: Consumer-grade wearable captures users' internal context in the wild.

Repository showing how to load data from coinside dataset.

For Anaconda users:

```
conda create -n coincideenv pip

conda activate coincideenv

pip install -r requirements.txt
```


For those who wish to use data for deep learning and run on GPU
Building an image...
```
docker build -t exp_coincide .
```
...and explore experimental notebooks run 

```
docker run --gpus all -v  your local data path/:/opt/data -p 8899:8899 exp_coincide:latest jupyter notebook --port=8899 --allow-root --no-browser --ip=0.0.0.0
```

To explore the dataset follow:

1. Download coincide.zip dataset and place in this repo 
2. Open DataExploration.ipynb to view example of reading data (with conda execute```jupyter lab``` )


