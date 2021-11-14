FROM python:3.9

RUN pip install CounterFit
RUN sed -ie 's/socketio\.run(app, port=args\.port)/socketio.run(app, host="0.0.0.0", port=args.port)/g' $(find / -name counterfit.py)

EXPOSE 5000
ENTRYPOINT counterfit
