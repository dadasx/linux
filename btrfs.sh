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

echo "--------------------------"
echo "  show /etc/fstab ...     "
echo "--------------------------"
echo "                          "

sudo cat /etc/fstab


echo "                          "

