async function fetchData() {
    try {
        const response = await fetch('http://localhost/api/api.php');
        const datas = await response.json();
        return datas
    } catch (error) {
    }
}

export default fetchData