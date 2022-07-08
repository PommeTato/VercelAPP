# run on local
    # Windows https://code.visualstudio.com/docs/python/tutorial-flask
    py -3 -m venv .venv
    .venv\scripts\activate
	
    python -m pip install --upgrade pip
    python -m pip install flask

	# https://flask.palletsprojects.com/en/2.0.x/quickstart/
    # https://flask.palletsprojects.com/en/2.1.x/cli/
		# powershell 
			$env:FLASK_APP="index.py"   
			$env:FLASK_ENV="development"
		# command prompt
			SET FLASK_APP="index.py"   
			SET FLASK_ENV="development"
		# linux prompt
			export FLASK_APP="index.py"   
			export FLASK_ENV="development"

    # run website:
        python -m flask run
        # or:  
        python -m flask run --host=0.0.0.0 --port=80



# deploy:  run on remote in heroku
    # https://realpython.com/flask-by-example-part-1-project-setup/
    python -m pip install gunicorn
    python -m pip freeze > requirements.txt
    echo "web: gunicorn index:app" > Procfile  # Save the file and in the encoding option, change the encoding to UTF-8 CRLF (default is UTF-16). https://stackoverflow.com/questions/19846342/unable-to-parse-procfile#:~:text=It%20is%20happening%20due%20to,your%20project%20and%20remove%20the%20.

    # https://stackoverflow.com/questions/13714205/deploying-flask-app-to-heroku
    # https://stackoverflow.com/questions/65195367/how-to-fix-code-h14-desc-no-web-processes-running-error-on-flask-heroku-ap


# deploy:  run on remote in vercel
# https://huogerac.hashnode.dev/deploy-flask-for-free-with-vercel
# https://github.com/huogerac/flask-vercel/tree/v1
	# Requirements
		Vercel account
		NodeJS and NPM
		Vercel CLI (npm i -g vercel)

		npm i -g vercel
		pip install Flask
		mkdir vercel-python-app
		cd vercel-python-app
		python -m venv venv
		. venv/bin/activate
		cd venv

		new-item index.py

		$env:FLASK_APP="index.py"   
		$env:FLASK_ENV="development"
		python -m flask run

		vercel

		new-item vercel.json
		python -m pip freeze > requirements.txt

		vercel --prod

	# Deploy to vercel
		python -m pip freeze > requirements.txt
		# Create an account at 
			https://vercel.com/
		# Install the Vercel CLI: 
			npm i -g vercel
		# Then, inside your repo folder, run 
			vercel
		#  To deploy to production (xxxxx.vercel.app), run：
			vercel --prod

# install as requirements.txt
	pip install -r requirements.txt