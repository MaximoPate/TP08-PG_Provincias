// Esto lo hizo claude, pero lo leí y lo entendí. Ademas es una boludes

const validateProvince = (province) => {
    if (!province.name || province.name.trim().length < 3) {
        return "El nombre es obligatorio y debe tener al menos 3 caracteres";
    }
    return null; // null significa que no hay error
}

export { validateProvince };