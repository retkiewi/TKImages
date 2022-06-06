
cd ImageFinderRabbitMqSetupApp 
docker-compose up -d
call sbt run 
cd ../Client
python -m pip install -r requirements.txt
start cmd /k python ColorFilterConsumer.py 
start cmd /k python DogFilterConsumer.py 
start cmd /k python SimilarityConsumer.py 
start cmd /k python SizeFilterConsumer.py 
start cmd /k python FacesFilterConsumer.py 
start cmd /k python WeatherFilterConsumer.py 
start "server-people" cmd.exe /k "cd ../people_server/build/bin && peopleServer.exe"
start cmd /k python App.py 