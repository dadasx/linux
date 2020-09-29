#!/bin/bash


echo "--------------------------"
echo "  subvolume creat ...     "
echo "--------------------------"

echo "                          "

sudo btrfs subvolume creat /mnt/@
sudo btrfs subvolume creat /mnt/@home

echo "                          "


echo "--------------------------"
echo "  show subvolume list ... "
echo "--------------------------"

echo "                          "
echo "                          "

sudo btrfs subvolume list /

echo "                          "

echo "-----------------------------------------"
echo "  complete btrfs subvolume list ...      "
echo "  B06170026 2020/09/28 final             "
echo "-----------------------------------------"

echo "                          "

