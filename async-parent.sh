#!/bin/bash
# async-parent: промер асинхронного выполнения (родитель)

echo "Parent: starting..."
echo "Parent: Launching child script..."
./async-child.sh &
pid=$!
echo "Parent: child (PID= $pid) Launched."

echo "Parent: cotinuing..."
sleep 2

echo "Parent: pausing to wait for child to finish..."
wait $pid

echo "Parent: child is finisheg. Continuing..."
echo "Parent: parent is done. Exiting."

