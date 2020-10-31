
# Add source roots to PYTHONPATH


cd ~/development/trnava-covid19-testing-scraper/src/main/python
echo `pwd`
export PYTHONPATH=`pwd`

source ~/programs/anaconda3/etc/profile.d/conda.sh
conda activate trnava-covid19-testing-scraper
python3 ./main.py
