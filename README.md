# README

## Project Overview

This project contains three shell scripts designed to handle heart rate data logging, archival of logs, and secure backup to a remote server for a hospital's monitoring system. The scripts aim to simulate heart rate data logging, archive the logs with timestamped filenames, and securely back up the archived files to a remote server. These scripts were developed as part of a collaborative effort to improve patient monitoring and data handling in a hospital environment.

### Team Collaboration
All members of the team were actively involved in the development of these scripts. Every team member was present during live coding sessions via a collaborative call, where ideas were shared, discussed, and implemented in real-time. Although no separate commits were made individually, the contributions and discussions were ongoing, ensuring that each member played a significant role in the development of the scripts.

###Team Member
Hycient Igweze
h.igweze@alustudent.com

Ariette Rusaro
a.rusaro@alustudent.com

Francis Mutabazi
f.mutabazi1@alustudent.com

Jeremie Iyamurinze
j.iyamurinz@alustudent.com

Loic Higiro
l.higiro@alustudent.com

Principie Cyubahiro
p.cyubahiro@alustudent.com

## Project Structure

The project contains the following three shell scripts:

1. **heart_rate_monitor.sh**  
   Script to monitor and log heart rate data every second.
   
2. **archive_log.sh**  
   Script to archive heart rate logs by renaming them with a timestamp.
   
3. **backup_archives.sh**  
   Script to move archived log files to a designated directory and securely back them up to a remote server using SSH.

---

## Task 1: Heart Rate Monitoring Script (heart_rate_monitor.sh)

### Description:
This script is responsible for monitoring and logging heart rate data from a specified device every second. It generates a random heart rate value and appends it to a log file (`heart_rate_log.txt`) along with the timestamp and the device name.

### Features:
- Prompt for the device name (e.g., Monitor_A, Monitor_B).
- Generate a simulated heart rate value every second.
- Log the device name, heart rate, and timestamp in `heart_rate_log.txt`.
- Run the script as a background process and display its Process ID (PID).

### Usage:
1. Run the script:  
   ```bash
   ./heart_rate_monitor.sh
   ```
2. Enter the device name when prompted.
3. The heart rate data will be logged every second into `heart_rate_log.txt`.
4. You can monitor the log in real-time using:  
   ```bash
   tail -f heart_rate_log.txt
   ```
5. The script will run in the background, and the PID will be shown on the screen.

---

## Task 2: Log Archival Script (archive_log.sh)

### Description:
This script archives the `heart_rate_log.txt` file by renaming it with a timestamp. The archived log will follow the format `heart_rate_log.txt_YYYYMMDD_HHMMSS`, where `YYYYMMDD_HHMMSS` is the current timestamp.

### Features:
- Rename `heart_rate_log.txt` with a timestamp for archival purposes.
- Ensure the original log file is archived safely.

### Usage:
1. Run the script:  
   ```bash
   ./archive_log.sh
   ```
2. The script will check if the log file (`heart_rate_log.txt`) exists.
3. If the log file exists, it will be renamed to `heart_rate_log.txt_YYYYMMDD_HHMMSS`.
4. A confirmation message will be displayed with the new file name.

---

## Task 3: Archival and Backup Script (backup_archives.sh)

### Description:
This script moves the archived log files (those with timestamped names) to a designated directory and then securely backs up the directory to a remote server using SSH.

### Features:
- Move all archived logs to a directory named `archived_logs_group$` (where `$` is your group number).
- Securely back up the archived logs to a remote server using `scp` over SSH.

### Usage:
1. Update the following details in the script:
   - Replace `your_sandbox_host` with the actual host of the remote sandbox server.
   - Replace `your_sandbox_user` with the actual username on the sandbox server.
2. Run the script:  
   ```bash
   ./backup_archives.sh
   ```
3. The script will move all archived log files into the `archived_logs_group$` directory.
4. After moving the files, it will back up the contents of this directory to the remote server using the `scp` command.
5. Upon successful backup, a confirmation message will be displayed.

---

## Requirements

To run these scripts, ensure the following:

- **Bash shell** is installed on your Linux environment.
- **SSH access** is configured for secure file transfer to the remote server.
- **scp command** is available for file transfer.

---

## Notes

- **Collaboration and Contribution:**  
  Each team member was equally involved in the development process during live sessions. Code was discussed and written together in real-time to ensure collaborative development. Though no individual commits were made, each member contributed valuable insights and suggestions during the coding process, improving both the functionality and performance of the scripts.

- **Error Handling:**  
  The scripts include basic error handling, such as checking for the existence of the log file before attempting to archive it. Ensure that SSH keys are configured for password-less access to simplify backups.

---

## Conclusion

These three shell scripts provide the hospital with a functional and efficient solution to monitor heart rate data, archive logs for future reference, and securely back up those logs to a remote server. The entire team worked together to develop these solutions, ensuring everyone was involved in the learning process, contributing code, and testing the scripts live during collaborative sessions.

