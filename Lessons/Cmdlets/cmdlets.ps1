# =====================================
#               Cmdlets
# =====================================
# Goal: The goal of this file is to 
#       illustrate some common cmdlets
#       in PowerShell.
# =====================================


# =====================================
# PowerShell equivalent of ping
# =====================================

Test-Connection -TargetName '127.0.0.1'

# Example result:
# Ping Source           Address                   Latency BufferSize Status
#                                                    (ms)        (B)
# ---- ------           -------                   ------- ---------- ------
#    1 Carolines-MacBo… 127.0.0.1                       0         32 Success
#    2 Carolines-MacBo… 127.0.0.1                       0         32 Success
#    3 Carolines-MacBo… 127.0.0.1                       0         32 Success
#    4 Carolines-MacBo… 127.0.0.1                       0         32 Success

# =====================================
# PowerShell equivalent of ls or dir
# =====================================

Get-ChildItem ./

# Example result:
#     Directory: C:\Users\caroline.chiari\temp
#
# Mode                LastWriteTime         Length Name
# ----                -------------         ------ ----
# -a----         7/6/2021   7:51 PM              6 file1.txt
# -a----         7/6/2021   7:51 PM              6 file2.txt
# -a----         7/6/2021   7:51 PM              6 file3.txt
# -a----         7/6/2021   7:51 PM              6 file4.txt

# =====================================
# PowerShell equivalent of echo
# =====================================

Write-Host "This is a test"

# Example result:
# This is a test

