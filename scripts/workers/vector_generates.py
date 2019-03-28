#!/usr/bin/env python3

import random
import itertools
import sys, getopt
import argparse
import numpy as np
from sklearn import preprocessing

def get_args():
  parser = argparse.ArgumentParser(description='generates vectors for community simulation')
  parser.add_argument('-f', '--genomes', help='genome list file path',
    type=str, metavar='GENOMES', required=True)
  parser.add_argument('-v', '--vector', help='vector list file path',
    type=str, metavar='VECTOR', required=True)
  parser.add_argument('-m', '--meta', help='nb of metagenomes',
    type=int, metavar='META', required=True)
  parser.add_argument('-o', '--output', help='output directory',
    type=str, metavar='OUTPUT', required=True)

  return parser.parse_args()

def main():
    args = get_args()
    outdir= args.output
    mygenomes= args.genomes
    myabundance=args.vector
    nb_meta= args.meta

    my_vec = list()
    my_names = list()
    np.set_printoptions(precision=5,suppress=True)

    fin = open(myabundance, "r")
    for x in fin:
        line=x.strip()
        my_vec = line.split(",")
    vec = np.array(my_vec) 
    print(vec)

    fin2 = open(mygenomes, "r")
    for x in fin2:
        my_names.append(x.strip())
    names=np.array(my_names)
    print(names)

    for i in range(nb_meta):
        cpt=0
        np.random.shuffle(names)
        outfile=outdir+"/meta_"+str(i+1)+".txt"
        fout = open(outfile, 'w')
        for i in np.nditer(vec):
            fout.write(names[cpt]+"\t"+str(float(i))+"\n")
            cpt+=1


if __name__ == "__main__":main()
