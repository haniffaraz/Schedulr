const initialState = {
  providers: [],
  selectedProvider: [],
  slots: []
}

export default function providerReducer (state = initialState, action) {
  switch (action.type) {
    case "LOAD_PROVIDERS":
    return {...state,
      providers: action.payload
    }
    case "LOAD_SLOTS":
    return {...state,
      slots: action.payload
    }
    default:
     return state
  }
}
