#!/bin/bash


# cdo -setctomiss,0 \
#     -remap,/scratch/a/a270046/cycle3/extracted/tco2559-ng5/moda/2t.nc,/work/bm1344/AWI/Cycle3/test/monthly_means/weights_NG5_3d_025.nc \
#     -setgrid,/work/bm1235/a270046/meshes/NG5_griddes_nodes_IFS.nc \
#     /work/bm1344/AWI/Cycle3/test/monthly_means/temp/temp_2020.nc \
#     /work/bm1344/AWI/Cycle3/test/monthly_means/025/temp/temp_2020_025.nc


# monthly 025 degree
# variables to iterate over
variables=("temp" "salt" "w")

# years to iterate over
years=("2020" "2021" "2022" "2023" "2024")

loop over variables
for variable in "${variables[@]}"; do
    # loop over years
    for year in "${years[@]}"; do
        echo "Processing variable: ${variable}, Year: ${year} for 0.25 degree"
        cdo -settunits,hours \
            -settaxis,${year}-01-15,00:00:00,1mon \
            -setctomiss,0 \
            -remap,/scratch/a/a270046/cycle3/extracted/tco2559-ng5/moda/2t.nc,/work/bm1344/AWI/Cycle3/test/monthly_means/weights_ORCA25_3d_025.nc \
            -setgrid,/pool/data/AWICM/FESOM2/MESHES_FESOM2.1/orca25/orca25_griddes_nodes_IFS.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/${variable}/${variable}_${year}.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/025/${variable}/${variable}_${year}_025.nc
    done
done

#################################
#################################

# monthly 1 degree
# variables to iterate over
variables=("temp" "salt" "w")

# years to iterate over
years=("2020" "2021" "2022" "2023" "2024")

# loop over variables
for variable in "${variables[@]}"; do
    # loop over years
    for year in "${years[@]}"; do
        echo "Processing variable: ${variable}, Year: ${year} for 1 degree"
        cdo -settunits,hours \
            -settaxis,${year}-01-15,00:00:00,1mon \
            -setctomiss,0 \
            -remap,/scratch/a/a270046/cycle3/extracted/tco2559-ng5/sst.nc,/work/bm1344/AWI/Cycle3/test/monthly_means/weights_ORCA25_3d_100.nc \
            -setgrid,/pool/data/AWICM/FESOM2/MESHES_FESOM2.1/orca25/orca25_griddes_nodes_IFS.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/${variable}/${variable}_${year}.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/100/${variable}/${variable}_${year}_100.nc
    done
done

###########################
###########################
##### ELEMENTS ############
###########################

# monthly 025 degree
# variables to iterate over
variables=("u" "v")

# years to iterate over
years=("2020" "2021" "2022" "2023" "2024")

loop over variables
for variable in "${variables[@]}"; do
    # loop over years
    for year in "${years[@]}"; do
        echo "Processing variable: ${variable}, Year: ${year} for 0.25 degree"
        cdo -settunits,hours \
            -settaxis,${year}-01-15,00:00:00,1mon \
            -setctomiss,0 \
            -remap,/scratch/a/a270046/cycle3/extracted/tco2559-ng5/moda/2t.nc,/work/bm1344/AWI/Cycle3/test/monthly_means/weights_ORCA25_3d_025_elems.nc \
            -setgrid,/pool/data/AWICM/FESOM2/MESHES_FESOM2.1/orca25/orca25_griddes_elements_IFS.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/${variable}/${variable}_${year}.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/025/${variable}/${variable}_${year}_025.nc
    done
done

#################################
#################################

# monthly 1 degree
# variables to iterate over
variables=("u" "v")

# years to iterate over
years=("2020" "2021" "2022" "2023" "2024")

# loop over variables
for variable in "${variables[@]}"; do
    # loop over years
    for year in "${years[@]}"; do
        echo "Processing variable: ${variable}, Year: ${year} for 1 degree"
        cdo -settunits,hours \
            -settaxis,${year}-01-15,00:00:00,1mon \
            -setctomiss,0 \
            -remap,/scratch/a/a270046/cycle3/extracted/tco2559-ng5/sst.nc,/work/bm1344/AWI/Cycle3/test/monthly_means/weights_ORCA25_3d_100_elems.nc \
            -setgrid,/pool/data/AWICM/FESOM2/MESHES_FESOM2.1/orca25/orca25_griddes_elements_IFS.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/${variable}/${variable}_${year}.nc \
            /work/bm1344/AWI/Cycle3/IFS_28-FESOM_25-cycle3/monthly_means/100/${variable}/${variable}_${year}_100.nc
    done
done