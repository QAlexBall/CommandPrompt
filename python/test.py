import subprocess

obj = subprocess.Popen("ssh -t chris@119.23.33.220", shell=True,  stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

def input_cmd(commands):
    for cmd in commands:
        obj.stdin.write(cmd+'\n')

input_cmd(["echo hello", "ls -la", "ifconfig | grep 192"])
obj.stdin.close()

cmd_out = obj.stdout.read()
obj.stdout.close()
cmd_error = obj.stderr.read()
obj.stderr.close()

print(cmd_out)
print(cmd_error)
