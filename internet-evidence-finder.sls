internet-evidence-finder:
  '6.2.3.0001':
    full_name: 'Internet Evidence Finder'
    installer: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/ief/IEFv623.0001setup.exe'
    install_flags: '/sp- /verysilent /norestart'
    uninstaller: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/ief/IEFv623.0001setup.exe'
    uninstall_flags: '/verysilent /norestart'
    msiexec: False
    locale: en_US
    reboot: False
