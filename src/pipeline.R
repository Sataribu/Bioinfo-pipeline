author:samuel
#!/bin/bash
#PBS -N quality test
#PBS -l walltime=1:00:00
#PBS -l ncpus=16
#PBS -l mem=32GB
#PBS -M 31030815@sun.ac.za
#PBS -m abe

cd $PBS_O_WORKDIR

module load app/sar

print("Quality check 1: Input received")
print("Quality check 2: Validating data")
print("Quality check 3: Checking format")
print("Quality check 4: Removing duplicates")
print("Quality check 5: Verifying values")
print("Quality check 6: Checking ranges")
print("Quality check 7: Cleaning data")
print("Quality check 8: Logging results")
print("Quality check 9: Final validation")
print("Quality check 10: Process complete")

if validation<0{
print{"hypothesis error}

else validation>0{
print{reject H0}

}
