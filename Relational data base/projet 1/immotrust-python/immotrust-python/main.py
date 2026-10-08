from utils.inject_data import inject_data
from utils.get_logement import get_logement
from utils.add_charge_column import add_charge_column, calculate_price_meter


def main():
    # inject_data()
    data = get_logement()
    print(data.head())

    # df_paris = df[df["ville"] == "Paris"]
    # df_paris["loyer_au_m2"].mean()

    inject_data()


if __name__ == "__main__":
    main()
