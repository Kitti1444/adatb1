{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "SELECT\r\n",
                "  -- LOGIN partial\r\n",
                "  LEFT(LOGIN, 1) + '****' + RIGHT(LOGIN, 1) AS LOGIN_MASKED,\r\n",
                "\r\n",
                "  -- EMAIL email\r\n",
                "  LEFT(EMAIL, 1) + '*****@' + SUBSTRING(EMAIL, CHARINDEX('@', EMAIL) + 1, LEN(EMAIL)) AS EMAIL_MASKED,\r\n",
                "\r\n",
                "  -- NEV partial\r\n",
                "  LEFT(NEV, 2) + '****' + RIGHT(NEV, 2) AS NEV_MASKED,\r\n",
                "\r\n",
                "  -- SZULEV random\r\n",
                "  FLOOR(RAND(CHECKSUM(NEWID())) * (2000 - 1960 + 1)) + 1960 AS SZULEV_MASKED,\r\n",
                "\r\n",
                "  NEM,\r\n",
                "\r\n",
                "  -- CIM partial\r\n",
                "  LEFT(CIM, 5) + '****' AS CIM_MASKED\r\n",
                "\r\n",
                "FROM Ugyfel;\r\n",
                "\r\n",
                "\r\n",
                "\r\n",
                "\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "fe623d9c-c3d0-4717-b79e-1852ccea722c",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(200 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.066"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "metadata": {},
                    "execution_count": 12,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "LOGIN_MASKED"
                                    },
                                    {
                                        "name": "EMAIL_MASKED"
                                    },
                                    {
                                        "name": "NEV_MASKED"
                                    },
                                    {
                                        "name": "SZULEV_MASKED"
                                    },
                                    {
                                        "name": "NEM"
                                    },
                                    {
                                        "name": "CIM_MASKED"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "LOGIN_MASKED": "a****1",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Ki****ám",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "F",
                                    "CIM_MASKED": "5630 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****3",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ba****ám",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "F",
                                    "CIM_MASKED": "3910 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****4",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Bi****ám",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "F",
                                    "CIM_MASKED": "8630 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****s",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Le****es",
                                    "SZULEV_MASKED": "1999",
                                    "NEM": "N",
                                    "CIM_MASKED": "5200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****3",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ha****es",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "N",
                                    "CIM_MASKED": "6430 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****H",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Ho****es",
                                    "SZULEV_MASKED": "1983",
                                    "NEM": "N",
                                    "CIM_MASKED": "8200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****K",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Ko****es",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "N",
                                    "CIM_MASKED": "1084 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****s",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Bí****os",
                                    "SZULEV_MASKED": "1986",
                                    "NEM": "F",
                                    "CIM_MASKED": "9023 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****r",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Du****ár",
                                    "SZULEV_MASKED": "1987",
                                    "NEM": "F",
                                    "CIM_MASKED": "5931 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****a",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ba****ra",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "N",
                                    "CIM_MASKED": "2381 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****s",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Bi****er",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "F",
                                    "CIM_MASKED": "6914 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****i",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ma****ea",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "N",
                                    "CIM_MASKED": "5465 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****2",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Tó****ás",
                                    "SZULEV_MASKED": "1980",
                                    "NEM": "F",
                                    "CIM_MASKED": "4071 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****1",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Mo****ás",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "F",
                                    "CIM_MASKED": "7900 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****3",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ví****ás",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "F",
                                    "CIM_MASKED": "1118 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****4",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ba****ás",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "F",
                                    "CIM_MASKED": "3783 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****1",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ko****ás",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "F",
                                    "CIM_MASKED": "5065 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****E",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Er****ás",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "F",
                                    "CIM_MASKED": "5071 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****N",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Na****ás",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "6500 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****a",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ki****ea",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "N",
                                    "CIM_MASKED": "1113 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****3",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Sz****ea",
                                    "SZULEV_MASKED": "1973",
                                    "NEM": "N",
                                    "CIM_MASKED": "7960 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****4",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ne****ea",
                                    "SZULEV_MASKED": "1979",
                                    "NEM": "N",
                                    "CIM_MASKED": "1124 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****T",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "To****ea",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "N",
                                    "CIM_MASKED": "6131 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****3",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Pi****tt",
                                    "SZULEV_MASKED": "1983",
                                    "NEM": "N",
                                    "CIM_MASKED": "1149 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****o",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Tó****kó",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "2085 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****4",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Bö****kó",
                                    "SZULEV_MASKED": "1975",
                                    "NEM": "N",
                                    "CIM_MASKED": "2484 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****S",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Si****kó",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "N",
                                    "CIM_MASKED": "5137 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****a",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ha****ta",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "N",
                                    "CIM_MASKED": "7220 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****1",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Sz****ia",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "1191 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****R",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Re****ia",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "N",
                                    "CIM_MASKED": "8283 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****2",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ja****on",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "F",
                                    "CIM_MASKED": "7133 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****K",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Ke****on",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "F",
                                    "CIM_MASKED": "8200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****2",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Öt****ád",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "2600 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****H",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Ho****ád",
                                    "SZULEV_MASKED": "1986",
                                    "NEM": "F",
                                    "CIM_MASKED": "7349 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****M",
                                    "EMAIL_MASKED": "á*****@mail.hu",
                                    "NEV_MASKED": "Mó****ád",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "F",
                                    "CIM_MASKED": "3910 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****a",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Cs****la",
                                    "SZULEV_MASKED": "1986",
                                    "NEM": "F",
                                    "CIM_MASKED": "3000 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****1",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Gu****la",
                                    "SZULEV_MASKED": "1993",
                                    "NEM": "F",
                                    "CIM_MASKED": "3881 ****"
                                },
                                {
                                    "LOGIN_MASKED": "a****4",
                                    "EMAIL_MASKED": "a*****@mail.hu",
                                    "NEV_MASKED": "Ba****la",
                                    "SZULEV_MASKED": "1962",
                                    "NEM": "F",
                                    "CIM_MASKED": "7149 ****"
                                },
                                {
                                    "LOGIN_MASKED": "A****O",
                                    "EMAIL_MASKED": "A*****@gmail.com",
                                    "NEV_MASKED": "Op****la",
                                    "SZULEV_MASKED": "1991",
                                    "NEM": "F",
                                    "CIM_MASKED": "8283 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****1",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Bo****zs",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "F",
                                    "CIM_MASKED": "2300 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****2",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Sz****zs",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "F",
                                    "CIM_MASKED": "3170 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****3",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Ba****zs",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "F",
                                    "CIM_MASKED": "2131 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****t",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Ho****nt",
                                    "SZULEV_MASKED": "1967",
                                    "NEM": "F",
                                    "CIM_MASKED": "6646 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****1",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Mo****nt",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "9181 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****2",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Vu****nt",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "F",
                                    "CIM_MASKED": "2330 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****u",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "En****nt",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "F",
                                    "CIM_MASKED": "3973 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****4",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Ba****ta",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "N",
                                    "CIM_MASKED": "8477 ****"
                                },
                                {
                                    "LOGIN_MASKED": "B****K",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Ke****ix",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "N",
                                    "CIM_MASKED": "7396 ****"
                                },
                                {
                                    "LOGIN_MASKED": "B****S",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Sz****ix",
                                    "SZULEV_MASKED": "1998",
                                    "NEM": "N",
                                    "CIM_MASKED": "4060 ****"
                                },
                                {
                                    "LOGIN_MASKED": "B****F",
                                    "EMAIL_MASKED": "B*****@gmail.com",
                                    "NEV_MASKED": "Fa****la",
                                    "SZULEV_MASKED": "1967",
                                    "NEM": "F",
                                    "CIM_MASKED": "5530 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****e",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Gy****ce",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "F",
                                    "CIM_MASKED": "6900 ****"
                                },
                                {
                                    "LOGIN_MASKED": "B****B",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Ba****ce",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "F",
                                    "CIM_MASKED": "8391 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****1",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Si****tt",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "N",
                                    "CIM_MASKED": "2300 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****2",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Ko****tt",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "N",
                                    "CIM_MASKED": "4200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "B****O",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Or****tt",
                                    "SZULEV_MASKED": "1974",
                                    "NEM": "N",
                                    "CIM_MASKED": "5085 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****n",
                                    "EMAIL_MASKED": "b*****@gmail.com",
                                    "NEV_MASKED": "Cs****an",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "1192 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****a",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Sz****ta",
                                    "SZULEV_MASKED": "1978",
                                    "NEM": "N",
                                    "CIM_MASKED": "2462 ****"
                                },
                                {
                                    "LOGIN_MASKED": "b****3",
                                    "EMAIL_MASKED": "b*****@mail.hu",
                                    "NEV_MASKED": "Pa****ta",
                                    "SZULEV_MASKED": "1991",
                                    "NEM": "N",
                                    "CIM_MASKED": "2730 ****"
                                },
                                {
                                    "LOGIN_MASKED": "c****3",
                                    "EMAIL_MASKED": "c*****@mail.hu",
                                    "NEV_MASKED": "Na****or",
                                    "SZULEV_MASKED": "1962",
                                    "NEM": "F",
                                    "CIM_MASKED": "9181 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****i",
                                    "EMAIL_MASKED": "d*****@gmail.com",
                                    "NEV_MASKED": "Vö****el",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "F",
                                    "CIM_MASKED": "7150 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****l",
                                    "EMAIL_MASKED": "d*****@mail.hu",
                                    "NEV_MASKED": "Rá****el",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "9181 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****1",
                                    "EMAIL_MASKED": "d*****@mail.hu",
                                    "NEV_MASKED": "Ke****el",
                                    "SZULEV_MASKED": "1998",
                                    "NEM": "F",
                                    "CIM_MASKED": "3580 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****d",
                                    "EMAIL_MASKED": "d*****@gmail.com",
                                    "NEV_MASKED": "Am****id",
                                    "SZULEV_MASKED": "1982",
                                    "NEM": "F",
                                    "CIM_MASKED": "1149 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****1",
                                    "EMAIL_MASKED": "d*****@gmail.com",
                                    "NEV_MASKED": "So****id",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "5083 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****4",
                                    "EMAIL_MASKED": "d*****@gmail.com",
                                    "NEV_MASKED": "Be****id",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "F",
                                    "CIM_MASKED": "3500 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****a",
                                    "EMAIL_MASKED": "d*****@mail.hu",
                                    "NEV_MASKED": "Ba****ra",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "N",
                                    "CIM_MASKED": "1155 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****s",
                                    "EMAIL_MASKED": "d*****@gmail.com",
                                    "NEV_MASKED": "Tö****es",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "F",
                                    "CIM_MASKED": "2400 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****a",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Mó****tó",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "F",
                                    "CIM_MASKED": "9200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "d****3",
                                    "EMAIL_MASKED": "d*****@mail.hu",
                                    "NEV_MASKED": "Sa****ra",
                                    "SZULEV_MASKED": "1980",
                                    "NEM": "N",
                                    "CIM_MASKED": "2855 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****t",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Bi****it",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "N",
                                    "CIM_MASKED": "6077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****e",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Ku****se",
                                    "SZULEV_MASKED": "1975",
                                    "NEM": "N",
                                    "CIM_MASKED": "6700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****r",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Mo****er",
                                    "SZULEV_MASKED": "1980",
                                    "NEM": "N",
                                    "CIM_MASKED": "6800 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****2",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Ba****er",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "N",
                                    "CIM_MASKED": "6760 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****4",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Fü****er",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "N",
                                    "CIM_MASKED": "3643 ****"
                                },
                                {
                                    "LOGIN_MASKED": "E****E",
                                    "EMAIL_MASKED": "e*****@mail.hu",
                                    "NEV_MASKED": "Ér****er",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "N",
                                    "CIM_MASKED": "6785 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****a",
                                    "EMAIL_MASKED": "e*****@gmail.com",
                                    "NEV_MASKED": "En****va",
                                    "SZULEV_MASKED": "1979",
                                    "NEM": "N",
                                    "CIM_MASKED": "4231 ****"
                                },
                                {
                                    "LOGIN_MASKED": "e****2",
                                    "EMAIL_MASKED": "e*****@gmail.com",
                                    "NEV_MASKED": "Pe****va",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "N",
                                    "CIM_MASKED": "9653 ****"
                                },
                                {
                                    "LOGIN_MASKED": "E****V",
                                    "EMAIL_MASKED": "E*****@gmail.com",
                                    "NEV_MASKED": "Vi****va",
                                    "SZULEV_MASKED": "1983",
                                    "NEM": "N",
                                    "CIM_MASKED": "6913 ****"
                                },
                                {
                                    "LOGIN_MASKED": "f****1",
                                    "EMAIL_MASKED": "f*****@mail.hu",
                                    "NEV_MASKED": "Or****nc",
                                    "SZULEV_MASKED": "1987",
                                    "NEM": "F",
                                    "CIM_MASKED": "5061 ****"
                                },
                                {
                                    "LOGIN_MASKED": "f****4",
                                    "EMAIL_MASKED": "f*****@gmail.com",
                                    "NEV_MASKED": "Fr****na",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "N",
                                    "CIM_MASKED": "9700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****1",
                                    "EMAIL_MASKED": "g*****@gmail.com",
                                    "NEV_MASKED": "Kö****or",
                                    "SZULEV_MASKED": "1987",
                                    "NEM": "F",
                                    "CIM_MASKED": "6762 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****4",
                                    "EMAIL_MASKED": "g*****@mail.hu",
                                    "NEV_MASKED": "Te****or",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "F",
                                    "CIM_MASKED": "9071 ****"
                                },
                                {
                                    "LOGIN_MASKED": "G****S",
                                    "EMAIL_MASKED": "G*****@gmail.com",
                                    "NEV_MASKED": "Sz****or",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "3630 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****1",
                                    "EMAIL_MASKED": "g*****@gmail.com",
                                    "NEV_MASKED": "Na****la",
                                    "SZULEV_MASKED": "1967",
                                    "NEM": "N",
                                    "CIM_MASKED": "1077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****0",
                                    "EMAIL_MASKED": "g*****@gmail.com",
                                    "NEV_MASKED": "Vi****la",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "N",
                                    "CIM_MASKED": "2484 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****j",
                                    "EMAIL_MASKED": "g*****@mail.hu",
                                    "NEV_MASKED": "Ny****ij",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "F",
                                    "CIM_MASKED": "8391 ****"
                                },
                                {
                                    "LOGIN_MASKED": "g****v",
                                    "EMAIL_MASKED": "g*****@gmail.com",
                                    "NEV_MASKED": "Bá****áv",
                                    "SZULEV_MASKED": "1999",
                                    "NEM": "F",
                                    "CIM_MASKED": "3643 ****"
                                },
                                {
                                    "LOGIN_MASKED": "G****K",
                                    "EMAIL_MASKED": "g*****@mail.hu",
                                    "NEV_MASKED": "Ko****yi",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "N",
                                    "CIM_MASKED": "8800 ****"
                                },
                                {
                                    "LOGIN_MASKED": "G****O",
                                    "EMAIL_MASKED": "G*****@gmail.com",
                                    "NEV_MASKED": "Or****gy",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "F",
                                    "CIM_MASKED": "7220 ****"
                                },
                                {
                                    "LOGIN_MASKED": "h****3",
                                    "EMAIL_MASKED": "h*****@mail.hu",
                                    "NEV_MASKED": "Ná****ik",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "1077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "I****A",
                                    "EMAIL_MASKED": "i*****@mail.hu",
                                    "NEV_MASKED": "An****ya",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "N",
                                    "CIM_MASKED": "9023 ****"
                                },
                                {
                                    "LOGIN_MASKED": "i****3",
                                    "EMAIL_MASKED": "i*****@gmail.com",
                                    "NEV_MASKED": "Bo****na",
                                    "SZULEV_MASKED": "1990",
                                    "NEM": "N",
                                    "CIM_MASKED": "2483 ****"
                                },
                                {
                                    "LOGIN_MASKED": "i****e",
                                    "EMAIL_MASKED": "i*****@mail.hu",
                                    "NEV_MASKED": "Bú****re",
                                    "SZULEV_MASKED": "1962",
                                    "NEM": "F",
                                    "CIM_MASKED": "9181 ****"
                                },
                                {
                                    "LOGIN_MASKED": "i****1",
                                    "EMAIL_MASKED": "i*****@mail.hu",
                                    "NEV_MASKED": "Pa****re",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "1077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "i****n",
                                    "EMAIL_MASKED": "i*****@gmail.com",
                                    "NEV_MASKED": "So****án",
                                    "SZULEV_MASKED": "1990",
                                    "NEM": "F",
                                    "CIM_MASKED": "2370 ****"
                                },
                                {
                                    "LOGIN_MASKED": "i****1",
                                    "EMAIL_MASKED": "i*****@mail.hu",
                                    "NEV_MASKED": "Vi****án",
                                    "SZULEV_MASKED": "1967",
                                    "NEM": "F",
                                    "CIM_MASKED": "7086 ****"
                                },
                                {
                                    "LOGIN_MASKED": "I****V",
                                    "EMAIL_MASKED": "I*****@gmail.com",
                                    "NEV_MASKED": "Va****án",
                                    "SZULEV_MASKED": "1969",
                                    "NEM": "F",
                                    "CIM_MASKED": "6320 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****3",
                                    "EMAIL_MASKED": "j*****@gmail.com",
                                    "NEV_MASKED": "Ha****os",
                                    "SZULEV_MASKED": "1974",
                                    "NEM": "F",
                                    "CIM_MASKED": "8700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "J****G",
                                    "EMAIL_MASKED": "J*****@gmail.com",
                                    "NEV_MASKED": "Gi****os",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "3300 ****"
                                },
                                {
                                    "LOGIN_MASKED": "J****P",
                                    "EMAIL_MASKED": "J*****@gmail.com",
                                    "NEV_MASKED": "Pá****os",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "F",
                                    "CIM_MASKED": "5920 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****f",
                                    "EMAIL_MASKED": "j*****@gmail.com",
                                    "NEV_MASKED": "Ge****ef",
                                    "SZULEV_MASKED": "1971",
                                    "NEM": "F",
                                    "CIM_MASKED": "6050 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****2",
                                    "EMAIL_MASKED": "j*****@mail.hu",
                                    "NEV_MASKED": "Va****ef",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "F",
                                    "CIM_MASKED": "6700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "J****G",
                                    "EMAIL_MASKED": "j*****@mail.hu",
                                    "NEV_MASKED": "Gy****ef",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "F",
                                    "CIM_MASKED": "2660 ****"
                                },
                                {
                                    "LOGIN_MASKED": "J****H",
                                    "EMAIL_MASKED": "J*****@gmail.com",
                                    "NEV_MASKED": "Hí****it",
                                    "SZULEV_MASKED": "1987",
                                    "NEM": "N",
                                    "CIM_MASKED": "2100 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****a",
                                    "EMAIL_MASKED": "j*****@gmail.com",
                                    "NEV_MASKED": "Tó****ia",
                                    "SZULEV_MASKED": "1994",
                                    "NEM": "N",
                                    "CIM_MASKED": "5310 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****4",
                                    "EMAIL_MASKED": "j*****@gmail.com",
                                    "NEV_MASKED": "Na****ia",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "7000 ****"
                                },
                                {
                                    "LOGIN_MASKED": "j****4",
                                    "EMAIL_MASKED": "j*****@gmail.com",
                                    "NEV_MASKED": "Sz****na",
                                    "SZULEV_MASKED": "1998",
                                    "NEM": "N",
                                    "CIM_MASKED": "6700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****2",
                                    "EMAIL_MASKED": "a*****@gmail.com",
                                    "NEV_MASKED": "Ki****ta",
                                    "SZULEV_MASKED": "1998",
                                    "NEM": "N",
                                    "CIM_MASKED": "2230 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****a",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Go****in",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "N",
                                    "CIM_MASKED": "8237 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****n",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Ho****in",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "N",
                                    "CIM_MASKED": "2424 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****4",
                                    "EMAIL_MASKED": "k*****@gmail.com",
                                    "NEV_MASKED": "Ke****in",
                                    "SZULEV_MASKED": "1975",
                                    "NEM": "N",
                                    "CIM_MASKED": "2800 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****i",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Za****in",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "N",
                                    "CIM_MASKED": "7511 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****a",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Ko****in",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "N",
                                    "CIM_MASKED": "8254 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****2",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Ba****ia",
                                    "SZULEV_MASKED": "1967",
                                    "NEM": "N",
                                    "CIM_MASKED": "8254 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****4",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Lu****él",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "F",
                                    "CIM_MASKED": "2053 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****4",
                                    "EMAIL_MASKED": "k*****@gmail.com",
                                    "NEV_MASKED": "Po****óf",
                                    "SZULEV_MASKED": "1969",
                                    "NEM": "F",
                                    "CIM_MASKED": "8220 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****i",
                                    "EMAIL_MASKED": "k*****@gmail.com",
                                    "NEV_MASKED": "Ho****na",
                                    "SZULEV_MASKED": "1971",
                                    "NEM": "N",
                                    "CIM_MASKED": "6060 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****4",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Cz****án",
                                    "SZULEV_MASKED": "1973",
                                    "NEM": "F",
                                    "CIM_MASKED": "1107 ****"
                                },
                                {
                                    "LOGIN_MASKED": "K****M",
                                    "EMAIL_MASKED": "K*****@gmail.com",
                                    "NEV_MASKED": "Mo****án",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "F",
                                    "CIM_MASKED": "9155 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****a",
                                    "EMAIL_MASKED": "k*****@gmail.com",
                                    "NEV_MASKED": "Sz****na",
                                    "SZULEV_MASKED": "1978",
                                    "NEM": "N",
                                    "CIM_MASKED": "6646 ****"
                                },
                                {
                                    "LOGIN_MASKED": "k****1",
                                    "EMAIL_MASKED": "k*****@mail.hu",
                                    "NEV_MASKED": "Bo****na",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "2115 ****"
                                },
                                {
                                    "LOGIN_MASKED": "K****G",
                                    "EMAIL_MASKED": "K*****@gmail.com",
                                    "NEV_MASKED": "Gy****na",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "N",
                                    "CIM_MASKED": "6762 ****"
                                },
                                {
                                    "LOGIN_MASKED": "l****s",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "Ki****os",
                                    "SZULEV_MASKED": "1974",
                                    "NEM": "F",
                                    "CIM_MASKED": "1077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "l****a",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "Na****os",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "8638 ****"
                                },
                                {
                                    "LOGIN_MASKED": "l****1",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "Fa****ló",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "F",
                                    "CIM_MASKED": "5200 ****"
                                },
                                {
                                    "LOGIN_MASKED": "l****2",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "Mó****ló",
                                    "SZULEV_MASKED": "1981",
                                    "NEM": "F",
                                    "CIM_MASKED": "9970 ****"
                                },
                                {
                                    "LOGIN_MASKED": "L****A",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "An****ló",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "2484 ****"
                                },
                                {
                                    "LOGIN_MASKED": "L****N",
                                    "EMAIL_MASKED": "l*****@mail.hu",
                                    "NEV_MASKED": "Na****ló",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "F",
                                    "CIM_MASKED": "1173 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****1",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ba****ia",
                                    "SZULEV_MASKED": "1978",
                                    "NEM": "N",
                                    "CIM_MASKED": "1047 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****k",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ki****rk",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "1086 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****H",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ho****rk",
                                    "SZULEV_MASKED": "1990",
                                    "NEM": "F",
                                    "CIM_MASKED": "4400 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****n",
                                    "EMAIL_MASKED": "m*****@gmail.com",
                                    "NEV_MASKED": "Ka****on",
                                    "SZULEV_MASKED": "1984",
                                    "NEM": "F",
                                    "CIM_MASKED": "5137 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****K",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ko****té",
                                    "SZULEV_MASKED": "1969",
                                    "NEM": "F",
                                    "CIM_MASKED": "1011 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****2",
                                    "EMAIL_MASKED": "m*****@gmail.com",
                                    "NEV_MASKED": "Bo****ás",
                                    "SZULEV_MASKED": "1997",
                                    "NEM": "F",
                                    "CIM_MASKED": "2700 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****S",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Sz****ás",
                                    "SZULEV_MASKED": "1969",
                                    "NEM": "F",
                                    "CIM_MASKED": "9023 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****a",
                                    "EMAIL_MASKED": "n*****@indamail.hu",
                                    "NEV_MASKED": "Na****er",
                                    "SZULEV_MASKED": "1993",
                                    "NEM": "F",
                                    "CIM_MASKED": "6800 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****J",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ju****ly",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "6786 ****"
                                },
                                {
                                    "LOGIN_MASKED": "m****2",
                                    "EMAIL_MASKED": "m*****@gmail.com",
                                    "NEV_MASKED": "Go****ós",
                                    "SZULEV_MASKED": "1971",
                                    "NEM": "F",
                                    "CIM_MASKED": "2100 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****B",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Ba****ós",
                                    "SZULEV_MASKED": "1981",
                                    "NEM": "F",
                                    "CIM_MASKED": "4060 ****"
                                },
                                {
                                    "LOGIN_MASKED": "M****M",
                                    "EMAIL_MASKED": "m*****@mail.hu",
                                    "NEV_MASKED": "Mo****ka",
                                    "SZULEV_MASKED": "1998",
                                    "NEM": "N",
                                    "CIM_MASKED": "2241 ****"
                                },
                                {
                                    "LOGIN_MASKED": "N****F",
                                    "EMAIL_MASKED": "n*****@mail.hu",
                                    "NEV_MASKED": "Fő****or",
                                    "SZULEV_MASKED": "1993",
                                    "NEM": "F",
                                    "CIM_MASKED": "5920 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****3",
                                    "EMAIL_MASKED": "n*****@gmail.com",
                                    "NEV_MASKED": "Ho****tt",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "1072 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****4",
                                    "EMAIL_MASKED": "n*****@gmail.com",
                                    "NEV_MASKED": "Kő****ta",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "N",
                                    "CIM_MASKED": "5537 ****"
                                },
                                {
                                    "LOGIN_MASKED": "N****T",
                                    "EMAIL_MASKED": "n*****@mail.hu",
                                    "NEV_MASKED": "Ta****ta",
                                    "SZULEV_MASKED": "1966",
                                    "NEM": "N",
                                    "CIM_MASKED": "1067 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****t",
                                    "EMAIL_MASKED": "n*****@gmail.com",
                                    "NEV_MASKED": "Sz****rt",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "F",
                                    "CIM_MASKED": "5071 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****2",
                                    "EMAIL_MASKED": "n*****@mail.hu",
                                    "NEV_MASKED": "He****rt",
                                    "SZULEV_MASKED": "1972",
                                    "NEM": "F",
                                    "CIM_MASKED": "2081 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****4",
                                    "EMAIL_MASKED": "n*****@gmail.com",
                                    "NEV_MASKED": "Mi****rt",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "3973 ****"
                                },
                                {
                                    "LOGIN_MASKED": "n****5",
                                    "EMAIL_MASKED": "n*****@gmail.com",
                                    "NEV_MASKED": "Bé****rt",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "F",
                                    "CIM_MASKED": "8640 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****l",
                                    "EMAIL_MASKED": "p*****@mail.hu",
                                    "NEV_MASKED": "Ba****ál",
                                    "SZULEV_MASKED": "1977",
                                    "NEM": "F",
                                    "CIM_MASKED": "1183 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****1",
                                    "EMAIL_MASKED": "p*****@gmail.com",
                                    "NEV_MASKED": "Ko****er",
                                    "SZULEV_MASKED": "1972",
                                    "NEM": "F",
                                    "CIM_MASKED": "6913 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****2",
                                    "EMAIL_MASKED": "p*****@gmail.com",
                                    "NEV_MASKED": "Bo****er",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "F",
                                    "CIM_MASKED": "4800 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****3",
                                    "EMAIL_MASKED": "p*****@gmail.com",
                                    "NEV_MASKED": "Sz****er",
                                    "SZULEV_MASKED": "1973",
                                    "NEM": "F",
                                    "CIM_MASKED": "1155 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****4",
                                    "EMAIL_MASKED": "p*****@mail.hu",
                                    "NEV_MASKED": "Bí****er",
                                    "SZULEV_MASKED": "1976",
                                    "NEM": "F",
                                    "CIM_MASKED": "5137 ****"
                                },
                                {
                                    "LOGIN_MASKED": "P****B",
                                    "EMAIL_MASKED": "p*****@mail.hu",
                                    "NEV_MASKED": "Be****er",
                                    "SZULEV_MASKED": "1989",
                                    "NEM": "F",
                                    "CIM_MASKED": "3980 ****"
                                },
                                {
                                    "LOGIN_MASKED": "p****a",
                                    "EMAIL_MASKED": "p*****@gmail.com",
                                    "NEV_MASKED": "Pa****la",
                                    "SZULEV_MASKED": "1974",
                                    "NEM": "N",
                                    "CIM_MASKED": "2484 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****4",
                                    "EMAIL_MASKED": "r*****@mail.hu",
                                    "NEV_MASKED": "Rá****nd",
                                    "SZULEV_MASKED": "1999",
                                    "NEM": "F",
                                    "CIM_MASKED": "9155 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****4",
                                    "EMAIL_MASKED": "r*****@mail.hu",
                                    "NEV_MASKED": "Sz****ka",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "N",
                                    "CIM_MASKED": "8254 ****"
                                },
                                {
                                    "LOGIN_MASKED": "R****K",
                                    "EMAIL_MASKED": "r*****@mail.hu",
                                    "NEV_MASKED": "Ka****ta",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "N",
                                    "CIM_MASKED": "7086 ****"
                                },
                                {
                                    "LOGIN_MASKED": "R****S",
                                    "EMAIL_MASKED": "R*****@gmail.com",
                                    "NEV_MASKED": "Sz****ta",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "N",
                                    "CIM_MASKED": "2053 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****2",
                                    "EMAIL_MASKED": "r*****@gmail.com",
                                    "NEV_MASKED": "Pa****rt",
                                    "SZULEV_MASKED": "1990",
                                    "NEM": "F",
                                    "CIM_MASKED": "2370 ****"
                                },
                                {
                                    "LOGIN_MASKED": "R****I",
                                    "EMAIL_MASKED": "r*****@mail.hu",
                                    "NEV_MASKED": "Iv****rt",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "F",
                                    "CIM_MASKED": "2377 ****"
                                },
                                {
                                    "LOGIN_MASKED": "R****P",
                                    "EMAIL_MASKED": "R*****@gmail.com",
                                    "NEV_MASKED": "Pá****rt",
                                    "SZULEV_MASKED": "1964",
                                    "NEM": "F",
                                    "CIM_MASKED": "5137 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****d",
                                    "EMAIL_MASKED": "r*****@gmail.com",
                                    "NEV_MASKED": "Tó****nd",
                                    "SZULEV_MASKED": "1961",
                                    "NEM": "F",
                                    "CIM_MASKED": "2000 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****1",
                                    "EMAIL_MASKED": "r*****@mail.hu",
                                    "NEV_MASKED": "Fe****nd",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "F",
                                    "CIM_MASKED": "2424 ****"
                                },
                                {
                                    "LOGIN_MASKED": "r****2",
                                    "EMAIL_MASKED": "r*****@gmail.com",
                                    "NEV_MASKED": "Bu****za",
                                    "SZULEV_MASKED": "1972",
                                    "NEM": "N",
                                    "CIM_MASKED": "5661 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****r",
                                    "EMAIL_MASKED": "s*****@gmail.com",
                                    "NEV_MASKED": "Ka****or",
                                    "SZULEV_MASKED": "1984",
                                    "NEM": "F",
                                    "CIM_MASKED": "8283 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****3",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Fa****or",
                                    "SZULEV_MASKED": "2000",
                                    "NEM": "F",
                                    "CIM_MASKED": "8640 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****4",
                                    "EMAIL_MASKED": "s*****@gmail.com",
                                    "NEV_MASKED": "Na****or",
                                    "SZULEV_MASKED": "1984",
                                    "NEM": "F",
                                    "CIM_MASKED": "4600 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****a",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Fa****ra",
                                    "SZULEV_MASKED": "1965",
                                    "NEM": "N",
                                    "CIM_MASKED": "5940 ****"
                                },
                                {
                                    "LOGIN_MASKED": "S****F",
                                    "EMAIL_MASKED": "S*****@gmail.com",
                                    "NEV_MASKED": "Fo****án",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "7960 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****n",
                                    "EMAIL_MASKED": "s*****@gmail.com",
                                    "NEV_MASKED": "Ra****én",
                                    "SZULEV_MASKED": "1960",
                                    "NEM": "F",
                                    "CIM_MASKED": "7130 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****s",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Bo****cs",
                                    "SZULEV_MASKED": "1981",
                                    "NEM": "F",
                                    "CIM_MASKED": "6786 ****"
                                },
                                {
                                    "LOGIN_MASKED": "S****M",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Mi****cs",
                                    "SZULEV_MASKED": "1994",
                                    "NEM": "F",
                                    "CIM_MASKED": "1102 ****"
                                },
                                {
                                    "LOGIN_MASKED": "S****S",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Sz****rd",
                                    "SZULEV_MASKED": "1973",
                                    "NEM": "F",
                                    "CIM_MASKED": "1077 ****"
                                },
                                {
                                    "LOGIN_MASKED": "s****1",
                                    "EMAIL_MASKED": "s*****@mail.hu",
                                    "NEV_MASKED": "Ta****ia",
                                    "SZULEV_MASKED": "1978",
                                    "NEM": "N",
                                    "CIM_MASKED": "6080 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****2",
                                    "EMAIL_MASKED": "t*****@mail.hu",
                                    "NEV_MASKED": "Mi****ra",
                                    "SZULEV_MASKED": "1963",
                                    "NEM": "N",
                                    "CIM_MASKED": "3910 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****s",
                                    "EMAIL_MASKED": "t*****@mail.hu",
                                    "NEV_MASKED": "An****ás",
                                    "SZULEV_MASKED": "1968",
                                    "NEM": "F",
                                    "CIM_MASKED": "4440 ****"
                                },
                                {
                                    "LOGIN_MASKED": "T****F",
                                    "EMAIL_MASKED": "T*****@gmail.com",
                                    "NEV_MASKED": "Fé****ás",
                                    "SZULEV_MASKED": "1986",
                                    "NEM": "F",
                                    "CIM_MASKED": "9023 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****r",
                                    "EMAIL_MASKED": "t*****@mail.hu",
                                    "NEV_MASKED": "Go****or",
                                    "SZULEV_MASKED": "1962",
                                    "NEM": "F",
                                    "CIM_MASKED": "7100 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****2",
                                    "EMAIL_MASKED": "t*****@gmail.com",
                                    "NEV_MASKED": "Dá****or",
                                    "SZULEV_MASKED": "1993",
                                    "NEM": "F",
                                    "CIM_MASKED": "6646 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****r",
                                    "EMAIL_MASKED": "t*****@mail.hu",
                                    "NEV_MASKED": "Ka****ér",
                                    "SZULEV_MASKED": "1975",
                                    "NEM": "F",
                                    "CIM_MASKED": "2370 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****a",
                                    "EMAIL_MASKED": "t*****@gmail.com",
                                    "NEV_MASKED": "Pa****ea",
                                    "SZULEV_MASKED": "1995",
                                    "NEM": "N",
                                    "CIM_MASKED": "1035 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****2",
                                    "EMAIL_MASKED": "t*****@mail.hu",
                                    "NEV_MASKED": "Du****ea",
                                    "SZULEV_MASKED": "1992",
                                    "NEM": "N",
                                    "CIM_MASKED": "5920 ****"
                                },
                                {
                                    "LOGIN_MASKED": "t****e",
                                    "EMAIL_MASKED": "t*****@gmail.com",
                                    "NEV_MASKED": "Tu****de",
                                    "SZULEV_MASKED": "1970",
                                    "NEM": "N",
                                    "CIM_MASKED": "7130 ****"
                                },
                                {
                                    "LOGIN_MASKED": "v****n",
                                    "EMAIL_MASKED": "v*****@mail.hu",
                                    "NEV_MASKED": "Fe****in",
                                    "SZULEV_MASKED": "1988",
                                    "NEM": "F",
                                    "CIM_MASKED": "3895 ****"
                                },
                                {
                                    "LOGIN_MASKED": "v****4",
                                    "EMAIL_MASKED": "v*****@gmail.com",
                                    "NEV_MASKED": "Ta****ka",
                                    "SZULEV_MASKED": "1969",
                                    "NEM": "N",
                                    "CIM_MASKED": "6412 ****"
                                },
                                {
                                    "LOGIN_MASKED": "V****U",
                                    "EMAIL_MASKED": "v*****@mail.hu",
                                    "NEV_MASKED": "Ur****ia",
                                    "SZULEV_MASKED": "1980",
                                    "NEM": "N",
                                    "CIM_MASKED": "3860 ****"
                                },
                                {
                                    "LOGIN_MASKED": "V****K",
                                    "EMAIL_MASKED": "v*****@mail.hu",
                                    "NEV_MASKED": "Ke****or",
                                    "SZULEV_MASKED": "1982",
                                    "NEM": "F",
                                    "CIM_MASKED": "2532 ****"
                                },
                                {
                                    "LOGIN_MASKED": "v****3",
                                    "EMAIL_MASKED": "v*****@gmail.com",
                                    "NEV_MASKED": "Bo****en",
                                    "SZULEV_MASKED": "1993",
                                    "NEM": "N",
                                    "CIM_MASKED": "2117 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****n",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Fo****án",
                                    "SZULEV_MASKED": "1973",
                                    "NEM": "F",
                                    "CIM_MASKED": "3441 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****4",
                                    "EMAIL_MASKED": "z*****@gmail.com",
                                    "NEV_MASKED": "Ba****án",
                                    "SZULEV_MASKED": "1996",
                                    "NEM": "F",
                                    "CIM_MASKED": "8313 ****"
                                },
                                {
                                    "LOGIN_MASKED": "Z****P",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Pi****án",
                                    "SZULEV_MASKED": "1984",
                                    "NEM": "F",
                                    "CIM_MASKED": "6050 ****"
                                },
                                {
                                    "LOGIN_MASKED": "Z****T",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Tó****án",
                                    "SZULEV_MASKED": "1979",
                                    "NEM": "F",
                                    "CIM_MASKED": "4244 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****1",
                                    "EMAIL_MASKED": "z*****@gmail.com",
                                    "NEV_MASKED": "Mo****fi",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "N",
                                    "CIM_MASKED": "2730 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****1",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Pu****lt",
                                    "SZULEV_MASKED": "1974",
                                    "NEM": "F",
                                    "CIM_MASKED": "8391 ****"
                                },
                                {
                                    "LOGIN_MASKED": "Z****J",
                                    "EMAIL_MASKED": "Z*****@gmail.com",
                                    "NEV_MASKED": "Jó****lt",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "F",
                                    "CIM_MASKED": "8315 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****a",
                                    "EMAIL_MASKED": "z*****@gmail.com",
                                    "NEV_MASKED": "Pu****na",
                                    "SZULEV_MASKED": "1986",
                                    "NEM": "N",
                                    "CIM_MASKED": "6783 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****3",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Va****sa",
                                    "SZULEV_MASKED": "1985",
                                    "NEM": "N",
                                    "CIM_MASKED": "8600 ****"
                                },
                                {
                                    "LOGIN_MASKED": "z****a",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Ba****na",
                                    "SZULEV_MASKED": "1982",
                                    "NEM": "N",
                                    "CIM_MASKED": "4172 ****"
                                },
                                {
                                    "LOGIN_MASKED": "Z****V",
                                    "EMAIL_MASKED": "z*****@mail.hu",
                                    "NEV_MASKED": "Va****sa",
                                    "SZULEV_MASKED": "1972",
                                    "NEM": "N",
                                    "CIM_MASKED": "6786 ****"
                                }
                            ]
                        },
                        "text/html": [
                            "<table>",
                            "<tr><th>LOGIN_MASKED</th><th>EMAIL_MASKED</th><th>NEV_MASKED</th><th>SZULEV_MASKED</th><th>NEM</th><th>CIM_MASKED</th></tr>",
                            "<tr><td>a****1</td><td>á*****@mail.hu</td><td>Ki****ám</td><td>1968</td><td>F</td><td>5630 ****</td></tr>",
                            "<tr><td>a****3</td><td>a*****@gmail.com</td><td>Ba****ám</td><td>1977</td><td>F</td><td>3910 ****</td></tr>",
                            "<tr><td>a****4</td><td>á*****@mail.hu</td><td>Bi****ám</td><td>1977</td><td>F</td><td>8630 ****</td></tr>",
                            "<tr><td>a****s</td><td>a*****@gmail.com</td><td>Le****es</td><td>1999</td><td>N</td><td>5200 ****</td></tr>",
                            "<tr><td>a****3</td><td>a*****@gmail.com</td><td>Ha****es</td><td>1961</td><td>N</td><td>6430 ****</td></tr>",
                            "<tr><td>A****H</td><td>A*****@gmail.com</td><td>Ho****es</td><td>1983</td><td>N</td><td>8200 ****</td></tr>",
                            "<tr><td>A****K</td><td>A*****@gmail.com</td><td>Ko****es</td><td>1995</td><td>N</td><td>1084 ****</td></tr>",
                            "<tr><td>a****s</td><td>á*****@mail.hu</td><td>Bí****os</td><td>1986</td><td>F</td><td>9023 ****</td></tr>",
                            "<tr><td>a****r</td><td>a*****@mail.hu</td><td>Du****ár</td><td>1987</td><td>F</td><td>5931 ****</td></tr>",
                            "<tr><td>a****a</td><td>a*****@mail.hu</td><td>Ba****ra</td><td>1992</td><td>N</td><td>2381 ****</td></tr>",
                            "<tr><td>a****s</td><td>a*****@gmail.com</td><td>Bi****er</td><td>1963</td><td>F</td><td>6914 ****</td></tr>",
                            "<tr><td>a****i</td><td>a*****@mail.hu</td><td>Ma****ea</td><td>1966</td><td>N</td><td>5465 ****</td></tr>",
                            "<tr><td>a****2</td><td>a*****@mail.hu</td><td>Tó****ás</td><td>1980</td><td>F</td><td>4071 ****</td></tr>",
                            "<tr><td>a****1</td><td>a*****@mail.hu</td><td>Mo****ás</td><td>1960</td><td>F</td><td>7900 ****</td></tr>",
                            "<tr><td>a****3</td><td>a*****@mail.hu</td><td>Ví****ás</td><td>1960</td><td>F</td><td>1118 ****</td></tr>",
                            "<tr><td>a****4</td><td>a*****@gmail.com</td><td>Ba****ás</td><td>1977</td><td>F</td><td>3783 ****</td></tr>",
                            "<tr><td>a****1</td><td>a*****@gmail.com</td><td>Ko****ás</td><td>2000</td><td>F</td><td>5065 ****</td></tr>",
                            "<tr><td>A****E</td><td>A*****@gmail.com</td><td>Er****ás</td><td>1985</td><td>F</td><td>5071 ****</td></tr>",
                            "<tr><td>A****N</td><td>a*****@mail.hu</td><td>Na****ás</td><td>1976</td><td>F</td><td>6500 ****</td></tr>",
                            "<tr><td>a****a</td><td>a*****@mail.hu</td><td>Ki****ea</td><td>1966</td><td>N</td><td>1113 ****</td></tr>",
                            "<tr><td>a****3</td><td>a*****@gmail.com</td><td>Sz****ea</td><td>1973</td><td>N</td><td>7960 ****</td></tr>",
                            "<tr><td>a****4</td><td>a*****@gmail.com</td><td>Ne****ea</td><td>1979</td><td>N</td><td>1124 ****</td></tr>",
                            "<tr><td>A****T</td><td>A*****@gmail.com</td><td>To****ea</td><td>1989</td><td>N</td><td>6131 ****</td></tr>",
                            "<tr><td>a****3</td><td>a*****@mail.hu</td><td>Pi****tt</td><td>1983</td><td>N</td><td>1149 ****</td></tr>",
                            "<tr><td>a****o</td><td>a*****@gmail.com</td><td>Tó****kó</td><td>1965</td><td>N</td><td>2085 ****</td></tr>",
                            "<tr><td>a****4</td><td>a*****@gmail.com</td><td>Bö****kó</td><td>1975</td><td>N</td><td>2484 ****</td></tr>",
                            "<tr><td>A****S</td><td>A*****@gmail.com</td><td>Si****kó</td><td>1977</td><td>N</td><td>5137 ****</td></tr>",
                            "<tr><td>a****a</td><td>a*****@mail.hu</td><td>Ha****ta</td><td>1970</td><td>N</td><td>7220 ****</td></tr>",
                            "<tr><td>a****1</td><td>a*****@mail.hu</td><td>Sz****ia</td><td>1965</td><td>N</td><td>1191 ****</td></tr>",
                            "<tr><td>A****R</td><td>A*****@gmail.com</td><td>Re****ia</td><td>1989</td><td>N</td><td>8283 ****</td></tr>",
                            "<tr><td>a****2</td><td>a*****@gmail.com</td><td>Ja****on</td><td>1968</td><td>F</td><td>7133 ****</td></tr>",
                            "<tr><td>A****K</td><td>á*****@mail.hu</td><td>Ke****on</td><td>1961</td><td>F</td><td>8200 ****</td></tr>",
                            "<tr><td>a****2</td><td>á*****@mail.hu</td><td>Öt****ád</td><td>1976</td><td>F</td><td>2600 ****</td></tr>",
                            "<tr><td>A****H</td><td>á*****@mail.hu</td><td>Ho****ád</td><td>1986</td><td>F</td><td>7349 ****</td></tr>",
                            "<tr><td>A****M</td><td>á*****@mail.hu</td><td>Mó****ád</td><td>1960</td><td>F</td><td>3910 ****</td></tr>",
                            "<tr><td>a****a</td><td>a*****@gmail.com</td><td>Cs****la</td><td>1986</td><td>F</td><td>3000 ****</td></tr>",
                            "<tr><td>a****1</td><td>a*****@mail.hu</td><td>Gu****la</td><td>1993</td><td>F</td><td>3881 ****</td></tr>",
                            "<tr><td>a****4</td><td>a*****@mail.hu</td><td>Ba****la</td><td>1962</td><td>F</td><td>7149 ****</td></tr>",
                            "<tr><td>A****O</td><td>A*****@gmail.com</td><td>Op****la</td><td>1991</td><td>F</td><td>8283 ****</td></tr>",
                            "<tr><td>b****1</td><td>b*****@mail.hu</td><td>Bo****zs</td><td>1963</td><td>F</td><td>2300 ****</td></tr>",
                            "<tr><td>b****2</td><td>b*****@mail.hu</td><td>Sz****zs</td><td>1970</td><td>F</td><td>3170 ****</td></tr>",
                            "<tr><td>b****3</td><td>b*****@gmail.com</td><td>Ba****zs</td><td>1992</td><td>F</td><td>2131 ****</td></tr>",
                            "<tr><td>b****t</td><td>b*****@gmail.com</td><td>Ho****nt</td><td>1967</td><td>F</td><td>6646 ****</td></tr>",
                            "<tr><td>b****1</td><td>b*****@gmail.com</td><td>Mo****nt</td><td>1988</td><td>F</td><td>9181 ****</td></tr>",
                            "<tr><td>b****2</td><td>b*****@gmail.com</td><td>Vu****nt</td><td>1961</td><td>F</td><td>2330 ****</td></tr>",
                            "<tr><td>b****u</td><td>b*****@mail.hu</td><td>En****nt</td><td>1995</td><td>F</td><td>3973 ****</td></tr>",
                            "<tr><td>b****4</td><td>b*****@mail.hu</td><td>Ba****ta</td><td>1992</td><td>N</td><td>8477 ****</td></tr>",
                            "<tr><td>B****K</td><td>b*****@mail.hu</td><td>Ke****ix</td><td>1989</td><td>N</td><td>7396 ****</td></tr>",
                            "<tr><td>B****S</td><td>b*****@mail.hu</td><td>Sz****ix</td><td>1998</td><td>N</td><td>4060 ****</td></tr>",
                            "<tr><td>B****F</td><td>B*****@gmail.com</td><td>Fa****la</td><td>1967</td><td>F</td><td>5530 ****</td></tr>",
                            "<tr><td>b****e</td><td>b*****@gmail.com</td><td>Gy****ce</td><td>1968</td><td>F</td><td>6900 ****</td></tr>",
                            "<tr><td>B****B</td><td>b*****@mail.hu</td><td>Ba****ce</td><td>1961</td><td>F</td><td>8391 ****</td></tr>",
                            "<tr><td>b****1</td><td>b*****@gmail.com</td><td>Si****tt</td><td>1970</td><td>N</td><td>2300 ****</td></tr>",
                            "<tr><td>b****2</td><td>b*****@mail.hu</td><td>Ko****tt</td><td>1963</td><td>N</td><td>4200 ****</td></tr>",
                            "<tr><td>B****O</td><td>b*****@mail.hu</td><td>Or****tt</td><td>1974</td><td>N</td><td>5085 ****</td></tr>",
                            "<tr><td>b****n</td><td>b*****@gmail.com</td><td>Cs****an</td><td>1976</td><td>F</td><td>1192 ****</td></tr>",
                            "<tr><td>b****a</td><td>b*****@mail.hu</td><td>Sz****ta</td><td>1978</td><td>N</td><td>2462 ****</td></tr>",
                            "<tr><td>b****3</td><td>b*****@mail.hu</td><td>Pa****ta</td><td>1991</td><td>N</td><td>2730 ****</td></tr>",
                            "<tr><td>c****3</td><td>c*****@mail.hu</td><td>Na****or</td><td>1962</td><td>F</td><td>9181 ****</td></tr>",
                            "<tr><td>d****i</td><td>d*****@gmail.com</td><td>Vö****el</td><td>1960</td><td>F</td><td>7150 ****</td></tr>",
                            "<tr><td>d****l</td><td>d*****@mail.hu</td><td>Rá****el</td><td>1976</td><td>F</td><td>9181 ****</td></tr>",
                            "<tr><td>d****1</td><td>d*****@mail.hu</td><td>Ke****el</td><td>1998</td><td>F</td><td>3580 ****</td></tr>",
                            "<tr><td>d****d</td><td>d*****@gmail.com</td><td>Am****id</td><td>1982</td><td>F</td><td>1149 ****</td></tr>",
                            "<tr><td>d****1</td><td>d*****@gmail.com</td><td>So****id</td><td>1988</td><td>F</td><td>5083 ****</td></tr>",
                            "<tr><td>d****4</td><td>d*****@gmail.com</td><td>Be****id</td><td>1995</td><td>F</td><td>3500 ****</td></tr>",
                            "<tr><td>d****a</td><td>d*****@mail.hu</td><td>Ba****ra</td><td>1995</td><td>N</td><td>1155 ****</td></tr>",
                            "<tr><td>d****s</td><td>d*****@gmail.com</td><td>Tö****es</td><td>1985</td><td>F</td><td>2400 ****</td></tr>",
                            "<tr><td>d****a</td><td>m*****@mail.hu</td><td>Mó****tó</td><td>1985</td><td>F</td><td>9200 ****</td></tr>",
                            "<tr><td>d****3</td><td>d*****@mail.hu</td><td>Sa****ra</td><td>1980</td><td>N</td><td>2855 ****</td></tr>",
                            "<tr><td>e****t</td><td>e*****@mail.hu</td><td>Bi****it</td><td>1963</td><td>N</td><td>6077 ****</td></tr>",
                            "<tr><td>e****e</td><td>e*****@mail.hu</td><td>Ku****se</td><td>1975</td><td>N</td><td>6700 ****</td></tr>",
                            "<tr><td>e****r</td><td>e*****@mail.hu</td><td>Mo****er</td><td>1980</td><td>N</td><td>6800 ****</td></tr>",
                            "<tr><td>e****2</td><td>e*****@mail.hu</td><td>Ba****er</td><td>1985</td><td>N</td><td>6760 ****</td></tr>",
                            "<tr><td>e****4</td><td>e*****@mail.hu</td><td>Fü****er</td><td>1996</td><td>N</td><td>3643 ****</td></tr>",
                            "<tr><td>E****E</td><td>e*****@mail.hu</td><td>Ér****er</td><td>1995</td><td>N</td><td>6785 ****</td></tr>",
                            "<tr><td>e****a</td><td>e*****@gmail.com</td><td>En****va</td><td>1979</td><td>N</td><td>4231 ****</td></tr>",
                            "<tr><td>e****2</td><td>e*****@gmail.com</td><td>Pe****va</td><td>1960</td><td>N</td><td>9653 ****</td></tr>",
                            "<tr><td>E****V</td><td>E*****@gmail.com</td><td>Vi****va</td><td>1983</td><td>N</td><td>6913 ****</td></tr>",
                            "<tr><td>f****1</td><td>f*****@mail.hu</td><td>Or****nc</td><td>1987</td><td>F</td><td>5061 ****</td></tr>",
                            "<tr><td>f****4</td><td>f*****@gmail.com</td><td>Fr****na</td><td>1966</td><td>N</td><td>9700 ****</td></tr>",
                            "<tr><td>g****1</td><td>g*****@gmail.com</td><td>Kö****or</td><td>1987</td><td>F</td><td>6762 ****</td></tr>",
                            "<tr><td>g****4</td><td>g*****@mail.hu</td><td>Te****or</td><td>2000</td><td>F</td><td>9071 ****</td></tr>",
                            "<tr><td>G****S</td><td>G*****@gmail.com</td><td>Sz****or</td><td>1976</td><td>F</td><td>3630 ****</td></tr>",
                            "<tr><td>g****1</td><td>g*****@gmail.com</td><td>Na****la</td><td>1967</td><td>N</td><td>1077 ****</td></tr>",
                            "<tr><td>g****0</td><td>g*****@gmail.com</td><td>Vi****la</td><td>1977</td><td>N</td><td>2484 ****</td></tr>",
                            "<tr><td>g****j</td><td>g*****@mail.hu</td><td>Ny****ij</td><td>1992</td><td>F</td><td>8391 ****</td></tr>",
                            "<tr><td>g****v</td><td>g*****@gmail.com</td><td>Bá****áv</td><td>1999</td><td>F</td><td>3643 ****</td></tr>",
                            "<tr><td>G****K</td><td>g*****@mail.hu</td><td>Ko****yi</td><td>2000</td><td>N</td><td>8800 ****</td></tr>",
                            "<tr><td>G****O</td><td>G*****@gmail.com</td><td>Or****gy</td><td>1966</td><td>F</td><td>7220 ****</td></tr>",
                            "<tr><td>h****3</td><td>h*****@mail.hu</td><td>Ná****ik</td><td>1996</td><td>F</td><td>1077 ****</td></tr>",
                            "<tr><td>I****A</td><td>i*****@mail.hu</td><td>An****ya</td><td>1996</td><td>N</td><td>9023 ****</td></tr>",
                            "<tr><td>i****3</td><td>i*****@gmail.com</td><td>Bo****na</td><td>1990</td><td>N</td><td>2483 ****</td></tr>",
                            "<tr><td>i****e</td><td>i*****@mail.hu</td><td>Bú****re</td><td>1962</td><td>F</td><td>9181 ****</td></tr>",
                            "<tr><td>i****1</td><td>i*****@mail.hu</td><td>Pa****re</td><td>1988</td><td>F</td><td>1077 ****</td></tr>",
                            "<tr><td>i****n</td><td>i*****@gmail.com</td><td>So****án</td><td>1990</td><td>F</td><td>2370 ****</td></tr>",
                            "<tr><td>i****1</td><td>i*****@mail.hu</td><td>Vi****án</td><td>1967</td><td>F</td><td>7086 ****</td></tr>",
                            "<tr><td>I****V</td><td>I*****@gmail.com</td><td>Va****án</td><td>1969</td><td>F</td><td>6320 ****</td></tr>",
                            "<tr><td>j****3</td><td>j*****@gmail.com</td><td>Ha****os</td><td>1974</td><td>F</td><td>8700 ****</td></tr>",
                            "<tr><td>J****G</td><td>J*****@gmail.com</td><td>Gi****os</td><td>1988</td><td>F</td><td>3300 ****</td></tr>",
                            "<tr><td>J****P</td><td>J*****@gmail.com</td><td>Pá****os</td><td>1963</td><td>F</td><td>5920 ****</td></tr>",
                            "<tr><td>j****f</td><td>j*****@gmail.com</td><td>Ge****ef</td><td>1971</td><td>F</td><td>6050 ****</td></tr>",
                            "<tr><td>j****2</td><td>j*****@mail.hu</td><td>Va****ef</td><td>2000</td><td>F</td><td>6700 ****</td></tr>",
                            "<tr><td>J****G</td><td>j*****@mail.hu</td><td>Gy****ef</td><td>1985</td><td>F</td><td>2660 ****</td></tr>",
                            "<tr><td>J****H</td><td>J*****@gmail.com</td><td>Hí****it</td><td>1987</td><td>N</td><td>2100 ****</td></tr>",
                            "<tr><td>j****a</td><td>j*****@gmail.com</td><td>Tó****ia</td><td>1994</td><td>N</td><td>5310 ****</td></tr>",
                            "<tr><td>j****4</td><td>j*****@gmail.com</td><td>Na****ia</td><td>1965</td><td>N</td><td>7000 ****</td></tr>",
                            "<tr><td>j****4</td><td>j*****@gmail.com</td><td>Sz****na</td><td>1998</td><td>N</td><td>6700 ****</td></tr>",
                            "<tr><td>k****2</td><td>a*****@gmail.com</td><td>Ki****ta</td><td>1998</td><td>N</td><td>2230 ****</td></tr>",
                            "<tr><td>k****a</td><td>k*****@mail.hu</td><td>Go****in</td><td>1966</td><td>N</td><td>8237 ****</td></tr>",
                            "<tr><td>k****n</td><td>k*****@mail.hu</td><td>Ho****in</td><td>1970</td><td>N</td><td>2424 ****</td></tr>",
                            "<tr><td>k****4</td><td>k*****@gmail.com</td><td>Ke****in</td><td>1975</td><td>N</td><td>2800 ****</td></tr>",
                            "<tr><td>k****i</td><td>k*****@mail.hu</td><td>Za****in</td><td>1995</td><td>N</td><td>7511 ****</td></tr>",
                            "<tr><td>k****a</td><td>k*****@mail.hu</td><td>Ko****in</td><td>1988</td><td>N</td><td>8254 ****</td></tr>",
                            "<tr><td>k****2</td><td>k*****@mail.hu</td><td>Ba****ia</td><td>1967</td><td>N</td><td>8254 ****</td></tr>",
                            "<tr><td>k****4</td><td>k*****@mail.hu</td><td>Lu****él</td><td>1989</td><td>F</td><td>2053 ****</td></tr>",
                            "<tr><td>k****4</td><td>k*****@gmail.com</td><td>Po****óf</td><td>1969</td><td>F</td><td>8220 ****</td></tr>",
                            "<tr><td>k****i</td><td>k*****@gmail.com</td><td>Ho****na</td><td>1971</td><td>N</td><td>6060 ****</td></tr>",
                            "<tr><td>k****4</td><td>k*****@mail.hu</td><td>Cz****án</td><td>1973</td><td>F</td><td>1107 ****</td></tr>",
                            "<tr><td>K****M</td><td>K*****@gmail.com</td><td>Mo****án</td><td>1970</td><td>F</td><td>9155 ****</td></tr>",
                            "<tr><td>k****a</td><td>k*****@gmail.com</td><td>Sz****na</td><td>1978</td><td>N</td><td>6646 ****</td></tr>",
                            "<tr><td>k****1</td><td>k*****@mail.hu</td><td>Bo****na</td><td>1965</td><td>N</td><td>2115 ****</td></tr>",
                            "<tr><td>K****G</td><td>K*****@gmail.com</td><td>Gy****na</td><td>1968</td><td>N</td><td>6762 ****</td></tr>",
                            "<tr><td>l****s</td><td>l*****@mail.hu</td><td>Ki****os</td><td>1974</td><td>F</td><td>1077 ****</td></tr>",
                            "<tr><td>l****a</td><td>l*****@mail.hu</td><td>Na****os</td><td>1988</td><td>F</td><td>8638 ****</td></tr>",
                            "<tr><td>l****1</td><td>l*****@mail.hu</td><td>Fa****ló</td><td>1963</td><td>F</td><td>5200 ****</td></tr>",
                            "<tr><td>l****2</td><td>l*****@mail.hu</td><td>Mó****ló</td><td>1981</td><td>F</td><td>9970 ****</td></tr>",
                            "<tr><td>L****A</td><td>l*****@mail.hu</td><td>An****ló</td><td>1976</td><td>F</td><td>2484 ****</td></tr>",
                            "<tr><td>L****N</td><td>l*****@mail.hu</td><td>Na****ló</td><td>1965</td><td>F</td><td>1173 ****</td></tr>",
                            "<tr><td>m****1</td><td>m*****@mail.hu</td><td>Ba****ia</td><td>1978</td><td>N</td><td>1047 ****</td></tr>",
                            "<tr><td>m****k</td><td>m*****@mail.hu</td><td>Ki****rk</td><td>1996</td><td>F</td><td>1086 ****</td></tr>",
                            "<tr><td>M****H</td><td>m*****@mail.hu</td><td>Ho****rk</td><td>1990</td><td>F</td><td>4400 ****</td></tr>",
                            "<tr><td>m****n</td><td>m*****@gmail.com</td><td>Ka****on</td><td>1984</td><td>F</td><td>5137 ****</td></tr>",
                            "<tr><td>M****K</td><td>m*****@mail.hu</td><td>Ko****té</td><td>1969</td><td>F</td><td>1011 ****</td></tr>",
                            "<tr><td>m****2</td><td>m*****@gmail.com</td><td>Bo****ás</td><td>1997</td><td>F</td><td>2700 ****</td></tr>",
                            "<tr><td>M****S</td><td>m*****@mail.hu</td><td>Sz****ás</td><td>1969</td><td>F</td><td>9023 ****</td></tr>",
                            "<tr><td>m****a</td><td>n*****@indamail.hu</td><td>Na****er</td><td>1993</td><td>F</td><td>6800 ****</td></tr>",
                            "<tr><td>M****J</td><td>m*****@mail.hu</td><td>Ju****ly</td><td>1996</td><td>F</td><td>6786 ****</td></tr>",
                            "<tr><td>m****2</td><td>m*****@gmail.com</td><td>Go****ós</td><td>1971</td><td>F</td><td>2100 ****</td></tr>",
                            "<tr><td>M****B</td><td>m*****@mail.hu</td><td>Ba****ós</td><td>1981</td><td>F</td><td>4060 ****</td></tr>",
                            "<tr><td>M****M</td><td>m*****@mail.hu</td><td>Mo****ka</td><td>1998</td><td>N</td><td>2241 ****</td></tr>",
                            "<tr><td>N****F</td><td>n*****@mail.hu</td><td>Fő****or</td><td>1993</td><td>F</td><td>5920 ****</td></tr>",
                            "<tr><td>n****3</td><td>n*****@gmail.com</td><td>Ho****tt</td><td>1965</td><td>N</td><td>1072 ****</td></tr>",
                            "<tr><td>n****4</td><td>n*****@gmail.com</td><td>Kő****ta</td><td>1988</td><td>N</td><td>5537 ****</td></tr>",
                            "<tr><td>N****T</td><td>n*****@mail.hu</td><td>Ta****ta</td><td>1966</td><td>N</td><td>1067 ****</td></tr>",
                            "<tr><td>n****t</td><td>n*****@gmail.com</td><td>Sz****rt</td><td>1968</td><td>F</td><td>5071 ****</td></tr>",
                            "<tr><td>n****2</td><td>n*****@mail.hu</td><td>He****rt</td><td>1972</td><td>F</td><td>2081 ****</td></tr>",
                            "<tr><td>n****4</td><td>n*****@gmail.com</td><td>Mi****rt</td><td>1996</td><td>F</td><td>3973 ****</td></tr>",
                            "<tr><td>n****5</td><td>n*****@gmail.com</td><td>Bé****rt</td><td>1989</td><td>F</td><td>8640 ****</td></tr>",
                            "<tr><td>p****l</td><td>p*****@mail.hu</td><td>Ba****ál</td><td>1977</td><td>F</td><td>1183 ****</td></tr>",
                            "<tr><td>p****1</td><td>p*****@gmail.com</td><td>Ko****er</td><td>1972</td><td>F</td><td>6913 ****</td></tr>",
                            "<tr><td>p****2</td><td>p*****@gmail.com</td><td>Bo****er</td><td>1961</td><td>F</td><td>4800 ****</td></tr>",
                            "<tr><td>p****3</td><td>p*****@gmail.com</td><td>Sz****er</td><td>1973</td><td>F</td><td>1155 ****</td></tr>",
                            "<tr><td>p****4</td><td>p*****@mail.hu</td><td>Bí****er</td><td>1976</td><td>F</td><td>5137 ****</td></tr>",
                            "<tr><td>P****B</td><td>p*****@mail.hu</td><td>Be****er</td><td>1989</td><td>F</td><td>3980 ****</td></tr>",
                            "<tr><td>p****a</td><td>p*****@gmail.com</td><td>Pa****la</td><td>1974</td><td>N</td><td>2484 ****</td></tr>",
                            "<tr><td>r****4</td><td>r*****@mail.hu</td><td>Rá****nd</td><td>1999</td><td>F</td><td>9155 ****</td></tr>",
                            "<tr><td>r****4</td><td>r*****@mail.hu</td><td>Sz****ka</td><td>1988</td><td>N</td><td>8254 ****</td></tr>",
                            "<tr><td>R****K</td><td>r*****@mail.hu</td><td>Ka****ta</td><td>2000</td><td>N</td><td>7086 ****</td></tr>",
                            "<tr><td>R****S</td><td>R*****@gmail.com</td><td>Sz****ta</td><td>1992</td><td>N</td><td>2053 ****</td></tr>",
                            "<tr><td>r****2</td><td>r*****@gmail.com</td><td>Pa****rt</td><td>1990</td><td>F</td><td>2370 ****</td></tr>",
                            "<tr><td>R****I</td><td>r*****@mail.hu</td><td>Iv****rt</td><td>1963</td><td>F</td><td>2377 ****</td></tr>",
                            "<tr><td>R****P</td><td>R*****@gmail.com</td><td>Pá****rt</td><td>1964</td><td>F</td><td>5137 ****</td></tr>",
                            "<tr><td>r****d</td><td>r*****@gmail.com</td><td>Tó****nd</td><td>1961</td><td>F</td><td>2000 ****</td></tr>",
                            "<tr><td>r****1</td><td>r*****@mail.hu</td><td>Fe****nd</td><td>1992</td><td>F</td><td>2424 ****</td></tr>",
                            "<tr><td>r****2</td><td>r*****@gmail.com</td><td>Bu****za</td><td>1972</td><td>N</td><td>5661 ****</td></tr>",
                            "<tr><td>s****r</td><td>s*****@gmail.com</td><td>Ka****or</td><td>1984</td><td>F</td><td>8283 ****</td></tr>",
                            "<tr><td>s****3</td><td>s*****@mail.hu</td><td>Fa****or</td><td>2000</td><td>F</td><td>8640 ****</td></tr>",
                            "<tr><td>s****4</td><td>s*****@gmail.com</td><td>Na****or</td><td>1984</td><td>F</td><td>4600 ****</td></tr>",
                            "<tr><td>s****a</td><td>s*****@mail.hu</td><td>Fa****ra</td><td>1965</td><td>N</td><td>5940 ****</td></tr>",
                            "<tr><td>S****F</td><td>S*****@gmail.com</td><td>Fo****án</td><td>1996</td><td>F</td><td>7960 ****</td></tr>",
                            "<tr><td>s****n</td><td>s*****@gmail.com</td><td>Ra****én</td><td>1960</td><td>F</td><td>7130 ****</td></tr>",
                            "<tr><td>s****s</td><td>s*****@mail.hu</td><td>Bo****cs</td><td>1981</td><td>F</td><td>6786 ****</td></tr>",
                            "<tr><td>S****M</td><td>s*****@mail.hu</td><td>Mi****cs</td><td>1994</td><td>F</td><td>1102 ****</td></tr>",
                            "<tr><td>S****S</td><td>s*****@mail.hu</td><td>Sz****rd</td><td>1973</td><td>F</td><td>1077 ****</td></tr>",
                            "<tr><td>s****1</td><td>s*****@mail.hu</td><td>Ta****ia</td><td>1978</td><td>N</td><td>6080 ****</td></tr>",
                            "<tr><td>t****2</td><td>t*****@mail.hu</td><td>Mi****ra</td><td>1963</td><td>N</td><td>3910 ****</td></tr>",
                            "<tr><td>t****s</td><td>t*****@mail.hu</td><td>An****ás</td><td>1968</td><td>F</td><td>4440 ****</td></tr>",
                            "<tr><td>T****F</td><td>T*****@gmail.com</td><td>Fé****ás</td><td>1986</td><td>F</td><td>9023 ****</td></tr>",
                            "<tr><td>t****r</td><td>t*****@mail.hu</td><td>Go****or</td><td>1962</td><td>F</td><td>7100 ****</td></tr>",
                            "<tr><td>t****2</td><td>t*****@gmail.com</td><td>Dá****or</td><td>1993</td><td>F</td><td>6646 ****</td></tr>",
                            "<tr><td>t****r</td><td>t*****@mail.hu</td><td>Ka****ér</td><td>1975</td><td>F</td><td>2370 ****</td></tr>",
                            "<tr><td>t****a</td><td>t*****@gmail.com</td><td>Pa****ea</td><td>1995</td><td>N</td><td>1035 ****</td></tr>",
                            "<tr><td>t****2</td><td>t*****@mail.hu</td><td>Du****ea</td><td>1992</td><td>N</td><td>5920 ****</td></tr>",
                            "<tr><td>t****e</td><td>t*****@gmail.com</td><td>Tu****de</td><td>1970</td><td>N</td><td>7130 ****</td></tr>",
                            "<tr><td>v****n</td><td>v*****@mail.hu</td><td>Fe****in</td><td>1988</td><td>F</td><td>3895 ****</td></tr>",
                            "<tr><td>v****4</td><td>v*****@gmail.com</td><td>Ta****ka</td><td>1969</td><td>N</td><td>6412 ****</td></tr>",
                            "<tr><td>V****U</td><td>v*****@mail.hu</td><td>Ur****ia</td><td>1980</td><td>N</td><td>3860 ****</td></tr>",
                            "<tr><td>V****K</td><td>v*****@mail.hu</td><td>Ke****or</td><td>1982</td><td>F</td><td>2532 ****</td></tr>",
                            "<tr><td>v****3</td><td>v*****@gmail.com</td><td>Bo****en</td><td>1993</td><td>N</td><td>2117 ****</td></tr>",
                            "<tr><td>z****n</td><td>z*****@mail.hu</td><td>Fo****án</td><td>1973</td><td>F</td><td>3441 ****</td></tr>",
                            "<tr><td>z****4</td><td>z*****@gmail.com</td><td>Ba****án</td><td>1996</td><td>F</td><td>8313 ****</td></tr>",
                            "<tr><td>Z****P</td><td>z*****@mail.hu</td><td>Pi****án</td><td>1984</td><td>F</td><td>6050 ****</td></tr>",
                            "<tr><td>Z****T</td><td>z*****@mail.hu</td><td>Tó****án</td><td>1979</td><td>F</td><td>4244 ****</td></tr>",
                            "<tr><td>z****1</td><td>z*****@gmail.com</td><td>Mo****fi</td><td>1985</td><td>N</td><td>2730 ****</td></tr>",
                            "<tr><td>z****1</td><td>z*****@mail.hu</td><td>Pu****lt</td><td>1974</td><td>F</td><td>8391 ****</td></tr>",
                            "<tr><td>Z****J</td><td>Z*****@gmail.com</td><td>Jó****lt</td><td>1985</td><td>F</td><td>8315 ****</td></tr>",
                            "<tr><td>z****a</td><td>z*****@gmail.com</td><td>Pu****na</td><td>1986</td><td>N</td><td>6783 ****</td></tr>",
                            "<tr><td>z****3</td><td>z*****@mail.hu</td><td>Va****sa</td><td>1985</td><td>N</td><td>8600 ****</td></tr>",
                            "<tr><td>z****a</td><td>z*****@mail.hu</td><td>Ba****na</td><td>1982</td><td>N</td><td>4172 ****</td></tr>",
                            "<tr><td>Z****V</td><td>z*****@mail.hu</td><td>Va****sa</td><td>1972</td><td>N</td><td>6786 ****</td></tr>",
                            "</table>"
                        ]
                    }
                }
            ],
            "execution_count": 12
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE dbo.Ugyfel_maszkolva (\r\n",
                "    LOGIN NVARCHAR(50) MASKED WITH (FUNCTION = 'partial(1,\"XXXX\",1)') NULL,\r\n",
                "    EMAIL NVARCHAR(255) MASKED WITH (FUNCTION = 'email()') NULL,\r\n",
                "    NEV NVARCHAR(100) MASKED WITH (FUNCTION = 'partial(2,\"****\",2)') NULL,\r\n",
                "    CIM NVARCHAR(255) MASKED WITH (FUNCTION = 'partial(5,\"****\",0)') NULL,\r\n",
                "    SZULEV INT MASKED WITH (FUNCTION = 'random(1960, 2000)') NULL,\r\n",
                "    NEM NVARCHAR(1) NULL\r\n",
                ");\r\n",
                "--mindegy ehhez nincs jogom"
            ],
            "metadata": {
                "azdata_cell_guid": "c6bcadcf-7820-4905-bb06-927ad77d9d18",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 262, Level 14, State 1, Line 1\r\nCREATE TABLE permission denied in database 'webshop'.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.003"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 10
        }
    ]
}