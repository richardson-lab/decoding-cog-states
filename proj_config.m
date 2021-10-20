
function p = proj_config()

% Parameters for obtaining data
p.ddir = '/Users/graceng/OneDrive/CCDTnewDat/CCDT/eeg/'; %'/Users/bscheid/Documents/LittLab/PROJECTS/p15_Cog_Performance/CCDT/eeg/'; % data directory
p.subjChLoc = '/Users/graceng/Documents/Med_School/Research/BCI/glasso_data/patient_loc_101421.mat';
p.subj = 'HUP069'; %'HUP142'; % string name of the subject (eg, 'HUP069') or 
% [] to process all subjects
p.stsubj = 1; %index of first subject if processing all subjects
p.sess = []; % session date (leave empty to choose automatically)
p.stime = []; % session time (leave empty for all session times)
p.sI = 1; %0 for sI0, 1 for sIall

% Parameters for raw data processing
p.reref = 'noreref';
p.rln = 1; % remove line noise? (0 or 1)
p.rrf = 1; % re-reference? (0 = none, 1 = common average re-reference, 2 = bipolar re-reference, 3 = laplacian re-reference)
            % always use 0 (no re-referencing for CCDT data)
p.bpfilt = [.5, 150]; % band pass filter cuttoffs (Hz) (leave empty if no filter)
p.outl = 1; % remove outlier channels? (0 or 1)
p.outlMetric = 'powGamma'; % outlier metric ('rms' = root-median-squared, 'powGamma' = high-gamma power)
p.outlThresh = 5; % outlier threshold (standard deviations)

% Parameters identifying time windows of interest
p.baselineLength = 10000; % length of time window (ms) for baseline 
                            % recording prior to first cue
p.iev = 1; % event of interest (1 = cue, 2 = go, 3 = response)
p.winLength = 2500; % length of time window (ms) to analyze prior to event of interest

% Parameters for GLASSO
p.Lwin = 0.5; % length of window (s) to compute controllability
p.glassoPath = './'; 
p.gamma = .25;
p.beta = [];

end