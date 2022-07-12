import jsonpickle


def handler(event, context):
    return {
        "EVENT": jsonpickle.encode(event),
        "CONTEXT": jsonpickle.encode(context)
    }
