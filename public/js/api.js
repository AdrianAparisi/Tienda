function apiCall(event, form, method) {
    event.preventDefault();
    toCallApi(form);
}

async function toCallApi(form, method) {
    let apiCall = await fetch('/api/' + form.id, {
        method: method,
        body: new FormData(form)
    })
    let response = await apiCall;
    console.log(response);
}

function toCreate() { return 'POST'; }

function toUpdate() { return 'PUT'; }

function toDelete() { return 'DELETE'; }

function bodyDelete() {
    return JSON.stringify({
        _method: 'DELETE'
    });
}

function bodyForm(form) {
    return new FormData(form);
}
