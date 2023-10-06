# istio

##### nodePort

30080，myapp - HTTP，3 nodes；

30088，vpro - HTTP，3 nodes；

30779，Nginx Ingress Controller - HTTP，only kworker1；

30605，Istio Ingress Gateway - HTTP，3 nodes；

32228，Istio Ingress Gateway - HTTPS，3 nodes；

30008，Dashboard - HTTPS，3 nodes；

##### Dashboard, HTTPS
Client ---> Nginx(443->kworker1:30008 ) ---> K8SDashboard

##### Kiali, HTTP and HTTPS
HTTP： 
Client ---> Nginx(80-> kworker2:30605) ---> Istio Ingress Gateway(8080) ---HTTP---> Kiali(20001)

HTTPS：
Client ---> Nginx(443->kworker2:32228 ) ---> Istio Ingress Gateway(8443) ---HTTP---> Kiali(20001)

##### vpro, HTTP
Client ---> Nginx(80-> kworker2:30605) ---> Istio Ingress Gateway(8080) ---HTTP---> vproapp(v1/v11, 80)

##### demo, HTTP
Client ---> Nginx(80-> kworker2:30605) ---> Istio Ingress Gateway(8080) ---HTTP---> productpage(9080)

##### myapp, HTTP
Client ---> Nginx(80-> kworker1:30779) ---> Nginx Ingress Controller(8080) ---HTTP---> myapp(80)
    


