import Foundation

struct DataManager {

    // Создаем проперти, через которую мы будем работать с данными
    private let defaults = UserDefaults.standard

    // Функция принимает Любой (Any) тип данных и сохраняет
    private func save(_ data: Any, for key: String) {
        defaults.set(data, forKey: key)
    }
    // Функция, которая возвращает сохраненный объект типа String по ключу
    private func getString(for key: String) -> String? {
        return defaults.string(forKey: key)
    }
    // Функция, которая возвращает сохраненный объект типа Data по ключу
    private func getData(for key: String) -> Data? {
        return defaults.data(forKey: key)
    }
    // Функция, которая удаляет значение по ключу
    private func deleteValue(for key: String) {
        defaults.removeObject(forKey: key)
    }

    // Publiuc

    // Сохранить пользователя:
    // Превращаем объект типа User в объект типа Data и сохраняем
    // его с помощью функции save (9 строка) по ключу "USER"

    func saveUser(_ user: User) {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(user)
            save(data, for: "USER")
        } catch {
            print("Cant save the data")
        }

    }

    // Загрузить пользователя:
    // Получаем из UserDefaults объект типа Data по ключу "USER"
    // Превращаем объект типа Data в User и возвращаем его
    func getUser() -> User? {

        guard let data = getData(for: "USER") else {
            return nil
        }

        do {
            let decoder = JSONDecoder()
            let user = try decoder.decode(User.self, from: data)
            return user
        } catch {
            print("Unable to Decode User (\(error))")
            return nil
        }
    }

    // Удаляем объект по ключу "USER" с помощью функции deleteValue (21 cnhjrf)
    func deleteSavedUser() {
        deleteValue(for: "USER")
    }


}
