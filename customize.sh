# Check if the device architecture is arm64
if [ "$ARCH" == "arm64" ]; then
    # Set permissions for binaries in the system/bin directory
    set_perm_recursive "$MODPATH/system/bin" 0 0 0755 0755

    # Set permissions for libraries in the system/lib directory
    set_perm_recursive "$MODPATH/system/lib" 0 0 0755 0644

    # Set permissions for shared data in the system/share directory
    set_perm_recursive "$MODPATH/system/share" 0 0 0755 0644
else
    # Abort installation if the device is not arm64
    abort "ERROR: This module is for AARCH64 devices only"
fi
