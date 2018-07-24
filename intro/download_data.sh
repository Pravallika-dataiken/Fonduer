echo "Downloading tutorial databases..."
url=http://i.stanford.edu/hazy/share/fonduer/intro_dbs.tar.gz
data_tar=intro_dbs
if type curl &>/dev/null; then
    curl -RLO $url
elif type wget &>/dev/null; then
    wget -N $url
fi

mkdir -p data
echo "Unpacking hardware tutorial data..."
tar -zxvf $data_tar.tar.gz -C data

echo "Deleting tar file..."
rm $data_tar.tar.gz

echo "Done!"

