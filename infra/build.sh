
pip install --user pipenv

git clone -b perf https://github.com/djhmateer/Prepared_HateSpeech_Models hatespeech

cd hatespeech

pipenv install

wget https://functionsdm2storage.blob.core.windows.net/outputfiles/_all_train_results-20210712T152424Z-001.zip

unzip _all_train_results-20210712T152424Z-001.zip -d /home/dave/hatespeech

pipenv run python PreBERT.py -m xlm-roberta-base -d all_train -s input/input.csv -fn output/output
