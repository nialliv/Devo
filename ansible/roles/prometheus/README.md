files > /etc/systemd/system/
======
Prometheus #####

wget https://github.com/prometheus/prometheus/releases/download/v2.20.1/prometheus-2.20.1.linux-amd64.tar.gz
tar xvzf prometheus-*.tar.gz

cd prometheus-*.tar.gz
sudo cp prometheus promtool /usr/local/bin
sudo mkdir /etc/prometheus /var/lib/prometheus
sudo cp prometheus.yml /etc/prometheus
sudo useradd --no-create-home --home-dir / --shell /bin/false prometheus
sudo chown -R prometheus:prometheus /var/lib/prometheus

sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl status prometheus
# localhost:9090
======
Node exporter #####

wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar xvzf node_exporter-*.tar.gz

cd node_exporter-*
sudo cp node_exporter /usr/local/bin
sudo useradd --no-create-home --home-dir / --shell /bin/false node_exporter

sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl status node_exporter

curl -s http://localhost:9100/metrics

=====
wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz
tar xf alertmanager-*.tar.gz
cd alertmanager-*
sudo cp alertmanager /usr/local/bin
sudo mkdir /etc/alertmanager /var/lib/alertmanager
sudo cp alertmanager.yml /etc/alertmanager
sudo useradd --no-create-home --home-dir / --shell /bin/false alertmanager
sudo chown -R alertmanager:alertmanager /var/lib/alertmanager

sudo systemctl daemon-reload
sudo systemctl start alertmanager
sudo systemctl status alertmanager

http://localhost:9093
=====
wget https://dl.grafana.com/oss/release/grafana-7.1.3-1.x86_64.rpm
sudo yum install grafana-7.1.3-1.x86_64.rpm
sudo systemctl start grafana
sudo systemctl status grafana

http://localhost:3030
admin/admin

=====
settings etalon /etc/prometheus/prometheus.yml

global:
  scrape_interval:     15s
  evaluation_interval: 15s

# Alertmanager configuration
alerting:
  alertmanagers:
  - static_configs:
    - targets:
       - localhost:9093

scrape_configs:
  - job_name: 'node'
    static_configs:
    - targets:
       - localhost:9100
     # - anotherhost:9100

=====
sudo systemctl reload prometheus

=====

Import 1860 template for grafana
=====

sudo systemctl enable prometheus
sudo systemctl enable grafana
sudo systemctl enable alertmanager
sudo systemctl enable node_exporter

