FROM jenkins/jnlp-slave
MAINTAINER Jason Gerry

ENV TFENV_VERSION=0.11.6
ENV TF_ALKS_PROVIDER_VERSION=0.9.11.1
ENV TERRAGRUNT_VERSION=v0.14.7

## alks
USER root
RUN wget -q -O tfalks.tar.gz https://github.com/Cox-Automotive/terraform-provider-alks/releases/download/${TF_ALKS_PROVIDER_VERSION}/terraform-provider-alks-linux-amd64.tar.gz && \
    tar -zxvf tfalks.tar.gz -C /usr/bin/ && \
    chmod a+x /usr/bin/terraform-provider-alks

### tfenv
RUN git clone https://github.com/kamatama41/tfenv.git /opt/.tfenv
RUN ln -s /opt/.tfenv/bin/tfenv /usr/local/bin/tfenv
RUN ln -s /opt/.tfenv/bin/terraform /usr/local/bin/terraform
RUN tfenv install 0.11.3
RUN tfenv install 0.11.4
RUN tfenv install 0.11.5
RUN tfenv install 0.11.6
RUN tfenv install 0.11.7

RUN chown -R jenkins: /opt/.tfenv

COPY .terraformrc /home/jenkins/.terraformrc
RUN chown jenkins: /home/jenkins/.terraformrc

ENTRYPOINT ["jenkins-slave"]
