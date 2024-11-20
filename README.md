# UWMadison_MSE760

## MS&E760: Molecular Modeling of Materials (001) FA24

![image](https://github.com/user-attachments/assets/2b7924f5-911a-44e6-baba-3b58df11d4dc)

![image](https://github.com/user-attachments/assets/0e230409-017a-4f1b-9114-d7a6ee7e39e2)

**Group Folder (CHTC):** /home/groups/mse_course_ping

### Student

Name: Jiahui Yang, Mechanical Engineering

Email: jyang753@wisc.edu

### Lab1-Assignment
This lab project focuses on determining the electronic structure and lattice constant of fcc diamond, as part of MSE760. The tasks include:
- Building the diamond structure (similar to fcc silicon but with a different lattice constant).
- Achieving total energy convergence with respect to k-points and wavefunction cutoff, using norm-conserving pseudopotentials.
- Optimizing the lattice constant by fitting the total energy to the Murnaghan equation of state.
- Optionally optimizing the lattice constant using varicell optimization.
- Comparing the lattice constant with experimental results.
- Computing and analyzing the band structure and density of states, and comparing with experimental data.
- Writing a detailed lab report that includes abstract, methods, results, discussion, and conclusions​(lab1-diamond).

### Lab2-Assignment
This lab instruction document includes three tasks focused on phonon calculations for bulk Silicon (Si) and Aluminum Arsenide (AlAs):
- Task One: Bulk Silicon
  - Calculate the total energy of bulk Si and report the value.
  - Calculate and report the phonon frequency of bulk Si at the Gamma point.
- Task Two: AlAs
  - Calculate the total energy of AlAs and report it.
  - Calculate and report the phonon frequency of AlAs at the Gamma point.
  - Apply the Acoustic Sum Rule and LO-TO splitting, then report the adjusted phonon frequency at the Gamma point.
- Task Three: Bulk Silicon
  - Calculate the phonon frequency on a 4x4x4 uniform grid.
  - Plot the phonon dispersion curve.
  - Calculate and plot the phonon density of states.
 
### Lab3 MD-Assignment
This lab instruction document includes several tasks focused on calculating the thermodynamic and physical properties of Aluminum (Al) using Molecular Dynamics (MD) simulations:
- Task One: Equilibration
  - Calculate the equilibration time for volume, temperature, pressure, and total energy of the aluminum system during a temperature step, and record the timestep and total simulation time to reach equilibrium.
  - Plot the changes in volume, temperature, pressure, and total energy against timesteps based on the equilibrated simulation data.
- Task Two: Error Estimation
  - Perform a one-million-step equilibration simulation, calculate the standard error for the mean volume and energy, and report the errors for different block counts (e.g., 5, 10, 100, 500, and 900).
  - Plot the standard error for both volume and energy as a function of the number of blocks and use logarithmic fitting to extrapolate precision.
- Task Three: Heating and Cooling
  - Analyze the solidification/melting process of aluminum and identify the melting temperature from the heating and cooling curves.
  - Calculate the latent heat for the phase transition using the phase diagram data.
  - Estimate the specific heat and thermal expansion coefficient of aluminum by fitting the temperature-dependent data in the solid phase.

### Lab4 ML-Assignment
This lab aims to predict material band gaps using machine learning techniques. The tasks and requirements are outlined below:

- Task 1: Data Cleaning
  - Filter reliable data, average duplicates, and plot bandgap distribution.

-Task 2: Feature Engineering
  - Generate features with pymatgen, remove redundant features, and normalize.

- Task 3: Model Training
  - Train a Random Forest model, optimize hyperparameters, and compare performance.

- Task 4: Prediction
  - Predict bandgaps for Si, SiO₂, and evaluate for high-bandgap and solar materials.

Deliverables: Cleaned data, optimized features, performance metrics, and predictions.







