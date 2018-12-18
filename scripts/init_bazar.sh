#!/bin/bash
BAZAR_DIRECTORY=`dirname $0`/../bazar

echo "Rechargement des fixtures en cours…"
echo "-------"

# Suppression du précédent dossier de fixtures
rm -Rf $BAZAR_DIRECTORY

# Création des répertoires de fixtures
mkdir -p $BAZAR_DIRECTORY/Bureau/secret \
    $BAZAR_DIRECTORY/01 \
    $BAZAR_DIRECTORY/Bureau/01

# Téléchargement de l'image
wget https://static.wamiz.fr/images/news/facebook/article/age-adulte-acc-fb-5915c5fca3f43.jpg \
    -q -O $BAZAR_DIRECTORY/Bureau/secret/chaton.jpg

# Copie de l'image
cp $BAZAR_DIRECTORY/Bureau/secret/chaton.jpg $BAZAR_DIRECTORY/chaton_01.jpg
touch -t -a 20181101100000 $BAZAR_DIRECTORY/chaton_01.jpg
cp $BAZAR_DIRECTORY/Bureau/secret/chaton.jpg $BAZAR_DIRECTORY/chaton_02.jpg
touch -t -a 20181001100000 $BAZAR_DIRECTORY/chaton_01.jpg
cp $BAZAR_DIRECTORY/Bureau/secret/chaton.jpg $BAZAR_DIRECTORY/chaton_03.jpg
touch -t -a 20181201100000 $BAZAR_DIRECTORY/chaton_01.jpg

# Fichiers textes
touch $BAZAR_DIRECTORY/info.txt $BAZAR_DIRECTORY/test.txt $BAZAR_DIRECTORY/01/todo.txt $BAZAR_DIRECTORY/Bureau/01/salut.txt

du -ah $BAZAR_DIRECTORY
