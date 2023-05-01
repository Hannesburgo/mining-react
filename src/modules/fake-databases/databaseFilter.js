import itemData from "./itemData";

class DatabaseFilter {
    filterItemData(type) {
        let filterResult = [];

        itemData.filter(item => {
            return (item.type === type ? true : false);
        }).forEach(filtered => {
            filterResult.push(filtered);
        })

        return filterResult;
    }
}

const databaseFilter = new DatabaseFilter();
export default databaseFilter;