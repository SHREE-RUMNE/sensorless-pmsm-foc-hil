# Sensorless Field-Oriented Control (FOC) of a PMSM with Code Generation & HIL Validation

An end-to-end Model-Based Design (MBD) project implementing sensorless vector control for a Permanent Magnet Synchronous Motor (PMSM) traction drive, featuring automated C code generation and Hardware-in-the-Loop (HIL) validation.

## 🚀 Project Overview
This project eliminates the need for physical mechanical sensors (optical encoders or resolvers) by observing rotor position and speed in real time. Built using MATLAB, Simulink, Stateflow, and Embedded Coder, the workflow covers everything from foundational mathematical modeling to target MCU code deployment and real-time plant stress testing.

## ⚙️ Key Engineering Milestones
* **Mathematical Modeling & Tuning:** Implemented Clarke & Park coordinate transforms and internal-model tuned PI current loops (1 kHz bandwidth).
* **Robust Standstill Startup:** Designed a Stateflow supervisory mode manager executing an open-loop I/f ramp to accelerate the motor before seamless handover to a Sliding-Mode Observer (SMO).
* **High-Precision Estimation:** Maintained rotor angle estimation error below <2° electrical in steady-state operation.
* **Production Code Readiness:** Generated ISO-compliant C code via MATLAB Embedded Coder with verified Software-in-the-Loop (SIL) parity and execution well within the 50 µs PWM period budget.
* **HIL Stress Testing:** Validated closed-loop performance under dynamic load torque steps (8 Nm) and high-speed field-weakening conditions.

## 📂 Repository Structure
* `foc_params.m`: Motor parameters and controller initialization script.
* `transforms.m`: Clarke and Park coordinate transformation functions.
* `TECHNICAL REPORT PROJECT 08.pdf`: Comprehensive technical report detailing the complete engineering workflow.
