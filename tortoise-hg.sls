# Source: http://tortoisehg.bitbucket.org/
tortoise-hg:
  '3.6.2':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'TortoiseHg 3.6.2 (x64)'
    installer: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.6.2-x64.msi'
    uninstaller: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.6.2-x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'TortoiseHg 3.6.2 (x86)'
    installer: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.6.2-x86.msi'
    uninstaller: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.6.2-x86.msi'
    {% endif %}
    install_flags: '/qn /norestart'    
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False  
  '3.3.0':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'TortoiseHg 3.3.0 (x64)'
    installer: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.3.0-x64.msi'
    uninstaller: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.3.0-x64.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'TortoiseHg 3.3.0 (x86)'
    installer: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.3.0-x86.msi'
    uninstaller: 'salt://{{ salt["pillar.get"]("repo_binary_root", "win/repo-ng") }}/tortoise-hg/tortoisehg-3.3.0-x86.msi'
    {% endif %}
    install_flags: '/qn /norestart'    
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False    
# Need to download from source site above, so it will append proper aws key credentials
# place downloaded msi in master's win_repo-ng 
