# jmake
This is a simple shell-based Java compile wrapper.

![Screenie](https://github.com/draumaz/jmake/raw/main/headline.svg "Screenshot")

Run the script inside of your source folder, and jmake will:

#### Create classes based on your .java files

#### Compile a .jar file using main() as entry point

#### Delete the aforementioned class files

# Download
Grab a shell script from the root directory. We've got Bash and PowerShell flavors.

## Add a temporary environment variable

```
cd /path/to/jmake/clone
export jmake="sh $PWD/jmake.sh"
```
