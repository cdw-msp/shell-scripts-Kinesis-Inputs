#!/bin/bash


now=$(date +"%Y-%m-%d %T")
time=$(date +"%T")
counter=0
fixedtext="rk"

while (true)

        do
                counter=$((counter+1))
                echo $counter
                for ((i=1; i<=$counter; ++i))
                        do
                                echo $i
                                # curl --HEAD  http://52.15.44.10/
                                #curl --HEAD   http://ec2-34-228-112-49.compute-1.amazonaws.com
                                # curl --HEAD http://18.219.29.94/
                                # curl --HEAD http://ec2-18-220-209-105.us-east-2.compute.amazonaws.com

                                # curl  --HEAD  http://18.218.151.54/
                                aws kinesis put-record --stream-name bluemoon-movie-stream --data "avengers" --partition-key "shard1" --region us-east-1
                                aws kinesis put-record --stream-name bluemoon-movie-stream --data "avatar" --partition-key "shard1" --region us-east-1
                        done
                sleep 1
        done
