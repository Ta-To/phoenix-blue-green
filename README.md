Phoenixアプリケーションを対象として想定した、
DockerコンテナでのBlue-Green Deploymentの習作です。

deploy.sh: alpha/betaフォルダへのtarボール展開

primary.sh: alpha/betaのいずれかをprimaryに設定 (指定しなかった方がtrial)


**NOTE**

- trialのほうはBasic認証がかかるように（とりあえず）している
- 実際の運用時はHTTPSだろうのでその点でのnginxの追加設定は必要
