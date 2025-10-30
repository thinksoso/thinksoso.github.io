# Blog Local Preview Scripts

## Usage

### Windows Users
```bash
# Use default port 4000
serve.bat

# Or specify port
serve.bat 5000
```

### macOS/Linux Users
```bash
# Give script execution permission
chmod +x serve.sh

# Use default port 4000
./serve.sh

# Or specify port
./serve.sh 5000
```

## Requirements

1. **Ruby Environment**
   - Windows: Download [RubyInstaller](https://rubyinstaller.org/)
   - macOS: `brew install ruby`
   - Linux: Install Ruby using package manager

2. **Bundler**
   ```bash
   gem install bundler
   ```


## Access URL

After successful startup, visit in browser:
- Default: http://localhost:4000
- Custom port: http://localhost:your-port-number

## Stop Service

Press `Ctrl+C` in terminal to stop the preview server.

## Notes

- Ensure running scripts in project root directory
- Scripts will automatically check and install dependencies
- Support LAN access (binds to 0.0.0.0)
- Browser will auto-refresh when files are modified
