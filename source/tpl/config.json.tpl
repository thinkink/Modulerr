{
    "app.name": "{{ $data->name }}",
    "app.subscription": {
        "maxUsers": 5,
        "type": "free",
        "validDate": "1:1:15",
        "days": 1,
        "expirationDate": "30"
    },
    "app.modules": [
        "Publications",
        "Content"
    ],
    "core_modules": [
        {
            "name": "Addons",
            "core": true,
            "active": true
        },
        {
            "name": "Auth",
            "core": true,
            "active": true
        },
        {
            "name": "Cockpit",
            "core": true,
            "active": true
        },
        {
            "name": "Collections",
            "core": true,
            "active": true
        },
        {
            "name": "Datastore",
            "core": true,
            "active": true
        },
        {
            "name": "Mediamanager",
            "core": true,
            "active": true
        },
        {
            "name": "Regions",
            "core": true,
            "active": true
        },
        {
            "name": "Forms",
            "core": false,
            "active": true
        },
        {
            "name": "Galleries",
            "core": false,
            "active": true
        }
    ],
    "extend_modules": [
        {
            "name": ".gitattributes",
            "core": false,
            "active": false
        },
        {
            "name": ".git",
            "core": false,
            "active": false
        },
        {
            "name": "Catalogos",
            "core": true,
            "active": false
        },
        {
            "name": "Flipinks",
            "core": true,
            "active": true
        },
        {
            "name": "Flipinks_stable",
            "core": true,
            "active": false
        },
        {
            "name": "Flipinks_beta",
            "core": true,
            "active": false
        },
        {
            "name": "Flipinks_dev",
            "core": true,
            "active": false
        },
        {
            "name": "Restinks",
            "core": true,
            "active": false
        },
        {
            "name": "Sellers",
            "core": true,
            "active": true
        },
        {
            "name": "Inkdesigns",
            "core": true,
            "active": true
        },
        {
            "name": "Schemas",
            "core": true,
            "active": true
        },
        {
            "name": "Thinkend",
            "core": true,
            "active": true
        },
        {
            "name": "Showinks",
            "core": true,
            "active": true
        },
        {
            "name": "Todos",
            "core": true,
            "active": true
        },
        {
            "name": "Tools",
            "core": true,
            "active": true
        },
        {
            "name": "Restservice",
            "core": false,
            "active": true
        },
        {
            "name": "EditButton",
            "stable": false,
            "core": true,
            "active": true
        },
        {
            "name": "Hugo",
            "stable": false,
            "core": true,
            "active": false
        },
        {
            "name": "Storinks",
            "stable": false,
            "core": true,
            "active": false
        },
        {
            "name": "Settinks",
            "stable": false,
            "core": true,
            "active": false
        },
        {
            "name": "Recaptcha",
            "stable": false,
            "core": true,
            "active": false
        },
        {
            "name": "Printdesigner",
            "stable": false,
            "core": true,
            "active": false
        },
        {
            "name": "Backups",
            "core": false,
            "active": false
        },
        {
            "name": "Updater",
            "core": false,
            "active": false
        },
        {
            "name": "Editbutton",
            "core": false,
            "active": false
        },
        {
            "name": "Indesignscripts",
            "core": false,
            "active": false
        },
        {
            "name": "Mymodule",
            "core": false,
            "active": true
        },
        {
            "name": "Webhooks",
            "core": false,
            "active": false
        }
    ],
    "tarifa": "V05",
    "browser": "browser information",
    "clientConfig": {
        "importerHour": "3.30",
        "importerUrl": ".\/client\/importerFile.php",
        "importerRepeat": -1,
        "files": [
            {
                "file": "descripciones.csv"
            },
            {
                "file": "familias.csv"
            },
            {
                "file": "idiomas.csv"
            },
            {
                "file": "marcas.csv"
            },
            {
                "file": "series.csv",
                "af": {

                }
            },
            {
                "file": "precios.csv"
            },
            {
                "file": "productos.csv",
                "f": {

                }
            }
        ],
        "tokenClientFields": [
            "email",
            "tarifa",
            "group",
            "IVA",
            "Idioma"
        ],
        "headersDictionary": {
            "pvp": "price",
            "p.v.p.": "price",
            "TPRMOD": "name",
            "TPRART": "id",
            "BPC": "bpc",
            "TPRPRE": "price",
            "categoria": "category",
            "preci": "price",
            "productcategory_id": "categoryId",
            "unit_id": "unitId",
            "units_per_pack": "unitsPack",
            "price_with_tax": "price"
        },
        "fieldDictionary": {
            "tar_TDA": "formatNumber",
            "tar_MG": "formatNumber",
            "tar_MM": "formatNumber",
            "tar_1": "formatNumber"
        }
    }
}