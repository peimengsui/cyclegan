# cyclegan generate results on NYU HPC Prince

First, please clone this repo to NYU HPC File system. 
## To download the dataset and the trained the model, first run 
```bash
wget https://s3.amazonaws.com/deeplearningfrc/cycle_gan_training.zip
wget https://s3.amazonaws.com/deeplearningfrc/faces_cyclegan.zip
```
## Then move the dataset to the desired loading directory
```bash
mv trainA ./datasets/faces_cyclegan/
mv trainB ./datasets/faces_cyclegan/
```
## Put the trained model to the desired directory 
```bash
mv faces_cyclegan ./checkpoints/
```
## submit a job to get generated image translations
```bash
sbatch gan_generate.sh
```
The generated results should be dowloaded automaticallly to the directory ./results/faces_cyclegan/train_30/

