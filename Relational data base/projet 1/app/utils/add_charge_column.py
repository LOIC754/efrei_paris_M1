from utils.get_logement import get_logement


def add_charge_column():
    df = get_logement()
    df["loyer_avec_charges"] = df["loyer"] + 100
    return df


def calculate_price_meter():
    df = get_logement()
    df["loyer_au_m2"] = df["loyer"] / df["surface"]
    return df
