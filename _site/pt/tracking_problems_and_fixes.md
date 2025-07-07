# PedroNogueira404.github.io

My personal website. Written w/ Jekyll, using HTML, JavaScript, and CSS.

What to fix:

- hamburguer menu
- Giscus change of theme
- Sidebar size - change of theme
- Include CV not as PDF but inserting on the page
  - Is it possible to collect/update newest versions from Overleaf?

Consertado mudanca de linguagens e links apropriados!

Separar publications e codes secao?

Problema pior de site raiz nao ter formatacao css

- RESOLVIDO com o redirecionamento em base.html

NAO CONSIGO FAZER BUILD NO GITHUB - funcionou mudando .github/workflows/jekyll.yml para a versao 3.2.2 (nao funcionava com 3.3.0)e usar o bash no terminal interno do vscode, o que requer a instalacao por snap (é quebrada por flatpak e a versao .deb nao é compativel com os libnss3.so s mais recentes do ubuntu 22.04)
/usr/share/code/bin/../code: /lib/x86_64-linux-gnu/libnss3.so: version `NSS_3.30' not found (required by /usr/share/code/bin/../code)
     /usr/share/code/bin/../code: /lib/x86_64-linux-gnu/libnss3.so: version `NSS_3.65' not found (required by /usr/lib/x86_64-linux-gnu/libsmime3.so)
