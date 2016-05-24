ansible-role-editors
=====================

Install editors.

Requirements
------------

None

Role Variables
--------------

| Variable | Description | Default |
|----------|-------------|---------|
| editors\_to\_add | a list of editors to install | {% if ansible\_os\_family == 'FreeBSD' %}[ 'vim-lite', 'emacs-nox11' ]{% elif ansible\_os\_family == 'OpenBSD' %}[ 'vim--no\_x11', 'emacs-24.5p2-no\_x11' ]{% else %}[ 'vim', 'emacs' ]{% endif %} |
| editors\_map | this variable is currently not used see [issue 15649](https://github.com/ansible/ansible/issues/15649) | {{ \_\_editors\_map }} |


Dependencies
------------

None

Example Playbook
----------------

If you install vim and emacs, no configuration is needed except OpenBSD (PKG\_PATH must be defined somehow).

    - hosts: localhost
      roles:
        - ansible-role-editors
      environment:
        PKG_PATH: "http://ftp.openbsd.org/pub/OpenBSD/{{ ansible_distribution_release }}/packages/{{ ansible_architecture }}/"

License
-------

Copyright (c) 2016 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

Author Information
------------------

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [ansible-role-init](https://gist.github.com/trombik/d01e280f02c78618429e334d8e4995c0)
