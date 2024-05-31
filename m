Return-Path: <devicetree+bounces-71214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A7C8D6119
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 845AA1F2374E
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F19157E88;
	Fri, 31 May 2024 12:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=marvell.com header.i=@marvell.com header.b="H6Fv90tl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8079115748F;
	Fri, 31 May 2024 11:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=67.231.148.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717156800; cv=fail; b=YlI70ilB3BoZNWDBWBAtZbJEMLC1zAAGb7iVFMvjE7IMnN6qgiNnaxTuvjhxHNyUtNOwKccdlNWgQ6v2xNGtHYzjmN0JMgaQUBppWO8D/VRMqN6q3jZLL2RN/seDSrE55QpECROu9kx9xbGAdakM5kjUT0uFyEaYePWt2SySXIk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717156800; c=relaxed/simple;
	bh=FICLTC6eaH6Ufm3XZ3Sz63AqyAeO7i2tjMzq8xxqx3E=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=sKwW2xJkIOQLf7mlhFsGusZZkgU7Wubm7tkEmLSuzmsqboF85s5yBPccpZaeLZczU1PscnS3hR7uCSN8iXwwZ12w3V2xu28SbxtZ807dvFMF9IOSNW2RX+lg6FuZ91rj7fawXfOvaczRNjozTvmlObz0+FO+86rkc0Q75B0hgC0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (1024-bit key) header.d=marvell.com header.i=@marvell.com header.b=H6Fv90tl; arc=fail smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44V56FmG026867;
	Fri, 31 May 2024 04:59:22 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3yewt3b526-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 04:59:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWENcRA/rRu7kIstup5ZxLzIK+elSNvv2mK8zqsF7uHiPibfSOGiGlarXw0ly2Ha4gGVkd3wncWagyTlBfugNisW6GZhs1qH2F0qvib6FSHSVnQCzn0Fx4Dg655OWzdNTWLw2L/uwU/jd7RtsDuHGcMYwHqEqnXsVu4Q9vLLU+SKCMX9bChETMeMfShZwuM4wtW/yFxjMfj0CWJFfsRdc6LPQ/nb82OHOHD3JOHYdc5Uk6NaYUaRuYgww/YZCs9tgtuqO+ZSPpLvnE2C4PRsP1XcuaIs5TfOWKr+ySF5+XVtvwyoymP92KQf3nFRhx81/JsobEAX+NJaqjUSflW5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykwbOEOlVJakTng4qy4FHiY5eSS131E4v6loxMkQ4uQ=;
 b=i6LImWkgG7suqkABDBQ0h6sn1TEE6tnyix/L1l/irWF5bAR3UH7QE/h0Ah7GG/wRT7ROfBmEJz5REDmulxHLX3iuyhYoriqY2XvSwTFyJxj7xmGck5TSRdDS7Jg/twswh/uni/DnyJUy7N6JeddUoUoEpVM1vhlqLDMY1ag1+B0L2DAKHwQDa+OR0F8XhZjTFdsU1kJ/6cvtONVmkQQwLjQbU5c/++/fHv7Fi2Hyh5WUmIdUi7wu0Bgki/V/Uxqn6pHyoHIZEzZ3PjLlmLGBa/Z2lyJ0G0gSYkUD+COgprBu0FVoZjrHTgBYIVEjDnZV2E+9i5tW6IvsApeWZNvRkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykwbOEOlVJakTng4qy4FHiY5eSS131E4v6loxMkQ4uQ=;
 b=H6Fv90tlEN/BjKFyeEbAkGnNWZOmDXVQQtdCOo4OYVJ8an17D7QPIQyu3xebaz9IsqPBqkkrXLhDw1L8AI/AruQwzjSpf0mwGlLwTYNRFsJY7Uzbp/fBnQUrkgFRFv+d5iU3EGBC70mEAFO5+QPVbbeuJbemg0cd8tjNOG69mdg=
Received: from CO1PR18MB4666.namprd18.prod.outlook.com (2603:10b6:303:e5::24)
 by SJ2PR18MB5586.namprd18.prod.outlook.com (2603:10b6:a03:565::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.19; Fri, 31 May
 2024 11:59:14 +0000
Received: from CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::b3e1:2252:a09b:a64e]) by CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::b3e1:2252:a09b:a64e%7]) with mapi id 15.20.7633.021; Fri, 31 May 2024
 11:59:14 +0000
From: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
        "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>
CC: "nbd@nbd.name" <nbd@nbd.name>,
        "lorenzo.bianconi83@gmail.com"
	<lorenzo.bianconi83@gmail.com>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "edumazet@google.com" <edumazet@google.com>,
        "kuba@kernel.org"
	<kuba@kernel.org>,
        "pabeni@redhat.com" <pabeni@redhat.com>,
        "conor@kernel.org" <conor@kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "robh+dt@kernel.org"
	<robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org"
	<conor+dt@kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "catalin.marinas@arm.com"
	<catalin.marinas@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "upstream@airoha.com" <upstream@airoha.com>,
        "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>,
        "benjamin.larsson@genexis.eu"
	<benjamin.larsson@genexis.eu>
Subject: RE: [EXTERNAL] [PATCH net-next 3/3] net: airoha: Introduce ethernet
 support for EN7581 SoC
Thread-Topic: [EXTERNAL] [PATCH net-next 3/3] net: airoha: Introduce ethernet
 support for EN7581 SoC
Thread-Index: AQHas0SDTknmNI2VwUGmGUdNNDFUpbGxOXGA
Date: Fri, 31 May 2024 11:59:14 +0000
Message-ID: 
 <CO1PR18MB4666E38DC1596C5B86B64155A1FC2@CO1PR18MB4666.namprd18.prod.outlook.com>
References: <cover.1717150593.git.lorenzo@kernel.org>
 <4d63e7706ef7ae12aade49e41bb6d0bb6b429706.1717150593.git.lorenzo@kernel.org>
In-Reply-To: 
 <4d63e7706ef7ae12aade49e41bb6d0bb6b429706.1717150593.git.lorenzo@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR18MB4666:EE_|SJ2PR18MB5586:EE_
x-ms-office365-filtering-correlation-id: f0e9edf4-e98b-4bb6-a62f-08dc81691756
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230031|376005|366007|7416005|1800799015|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?4CJZdKvVeQ2HAh0BqSxdJOZOPa7MUpMANLUptgS/BRLWHpKA7Wbd9Uq6LCi4?=
 =?us-ascii?Q?yQqnZeSYd+Bq3PSOXMN1AOS9UjdcbT7trfGJXX2OhP8sPkrZNHvGMcOuKd4t?=
 =?us-ascii?Q?TumK5xvbBaydYGSWAhc2R8nv0Hwf8PWXLovJl2YNAUnX7f7TjZ7kS9g4ryoI?=
 =?us-ascii?Q?qIHWQAygKqH/uYHKsBFWCZotvXaeHEF1r4/mb7dWunF4TE7hYr7CU3G8g/9M?=
 =?us-ascii?Q?hEApC5hAwZwQlwlscAHUQtyVxXNR69zlSFsQhhVV6F6DfZNTRj69Cyg71TRL?=
 =?us-ascii?Q?A+alzX3cn3xxo8n5YGzkNfXhRCHO6L9Ye2DL/qIxydxybgOwx8kWZ9UEkOrm?=
 =?us-ascii?Q?N/J617yad7L/WdcKUXBkbN9YAcPHsz0foltsR6peyxXSKSH960v/G+M8zlMK?=
 =?us-ascii?Q?LdHVT3xR6YQ5NMhWELy7ttxMGjlbC98nkAoGihmlF9KvYoWF3kpH44wcp7RW?=
 =?us-ascii?Q?Yjvl1WoSXMyLetoZEcXwQUT8j9VHGqMP5zBwte5hfImkO7W1AewVyIazQp/V?=
 =?us-ascii?Q?LDGC1BuKkJh/aUUBWnujRiU1yc9IBgQMQMkjCz+2K8ze7CZRSM7DNxAqWPDt?=
 =?us-ascii?Q?ibZTsUenVSj2oTJ2PovYL3R5BVTyLmHLD+3Pwqwa/2Vd1vPtNI2zb5L0LVpI?=
 =?us-ascii?Q?UOyEtjP7qfLnRJKVZYF5UFinKj8Jc05O6QaPvEjDglU61xPEQTNLaKUJD2Ad?=
 =?us-ascii?Q?sZle9C8tEM3w1tmyazvte0C9udOW0yK/pK+XCVLbm2pGX6lhawYQEBdHrQX3?=
 =?us-ascii?Q?bpbsKyoiK/Pm5jyR7IuwON19bmH48FoUD3KcVe0UKHUg9dDffrfovaehL8RB?=
 =?us-ascii?Q?QCskp0bE+YCOZVthkXXzLAKmqR7TFs9h1OVrbvYTnk4IF96gr4wqAEay5ZAm?=
 =?us-ascii?Q?6h4y3DQ8/NLR5PwQTvrRrjv3gK7NmfE0ugKxY2JUMJMv2vpC/hJHv4CXaxcO?=
 =?us-ascii?Q?QRdm4T8Hs4W7ROnPRTDxwwUbNwWIfyEnvxnTOS2iWXcBnITfHLqK78GWDJ68?=
 =?us-ascii?Q?O+pzuLB5BBSoBGhLMpz5n9II+f2C4wDi6924qkSmm2DJ7ILeHu7KM3yq+Y3T?=
 =?us-ascii?Q?QO70f1ej9z0TD0i3QY8sK0Zh0zHOsmOjvIcOIiKwQpj5eUj5TDl3FEqxkY9y?=
 =?us-ascii?Q?be+gV1LSA7Y5uGxpOWMQcU78Qt8/rWyF/VdiivQC0rgvaZAp2YUcDs+9JmWM?=
 =?us-ascii?Q?mVwddVSzx0QrwvDBQwWeCaxZSbzhU3Jlae337jU4MwnFsKHyr6TwxbQUOBKe?=
 =?us-ascii?Q?oZLBRHzFOlUXNehXcpvS/ktpQV4RlM6OJbOgpPtvwxRyWyklb0ter1im8hcV?=
 =?us-ascii?Q?KXUhVaOxEwvktWv9QMmLc0xFkRsVLg4DFdStMlEXPPCXbg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR18MB4666.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(7416005)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HBt1RzzF3JjUe9TncZRr+hnQBosKeTOs3bTCfhajOd/oQ7WfWl/hz/ZH2UzF?=
 =?us-ascii?Q?PxLY6tL4ByT5qZchBSzJh6E110xK6IwkJGYg1DF4LTtPBVIHI3PfUzzjFkgX?=
 =?us-ascii?Q?F48WISbCof0yhcH+fV4pHZpzhmZOblJgyHhnAdkNHDRl3fnoQoJsu9uPeKdA?=
 =?us-ascii?Q?OCElPdTCjFOV0qHTJDMg7gUpBKBX70o/5UbB0XXyVTeoaWqQVqOs7AGPzM2Y?=
 =?us-ascii?Q?+NIooSiVa2LaFcJI/n5IEvsDMHU91ZIWMan6JubIxpXONQtA3ce8b/bX5iQR?=
 =?us-ascii?Q?kBx1xdfIg7zinLy6lgzN42WhVFba29GJ3XBu10caFLMvo5dk0eLSpbUIRkip?=
 =?us-ascii?Q?gtmEU9k3Y173spcaTdnqfnu4H5OAuRyMoJD1LJ/PuakzxeH6SskxA6Uhz2An?=
 =?us-ascii?Q?o2mNEdgvDFd5LNpkKke4HASJkxsRnjjI3zIB+Wbwb3zLWEHb/sxZdboLD3Ar?=
 =?us-ascii?Q?ktoi+bUcQbp94GdbLNTaTgrQSi3sX/cclhuC4eGhahxcAeFiiYhiEFNKOPZp?=
 =?us-ascii?Q?B13qFrWjc4200SWSqm4o904jMOTOTj+wW6Caeo30JpskzsiJjbQibHCdJARY?=
 =?us-ascii?Q?79rnhU0Slp5jAEGjnaz5+StpJO+W3EUPvEFC2gNfj0JUz9vx9SPIkOEXWXoh?=
 =?us-ascii?Q?5zjACel63FtlCsMsykMo2MbEgZVFqCsUTVVrTBJilaEvPNKoVqwXSjrCGbeP?=
 =?us-ascii?Q?lhGvx4G0U/ipKhFyFAfiBDxBfHOrm6z6TGRw9VBCfaRus5ZOdCBtxA2ewar0?=
 =?us-ascii?Q?nlsMZAByxk0lhXZk13lZC06tgU3L5ytGT5ckcCLdfsam9rJQMOGNE+SKP2iW?=
 =?us-ascii?Q?snA0LHxUGgzjDoenaXxwH92xI5ZViylgp4g3yRdybG0o5ND/TBDb1/2fxTV3?=
 =?us-ascii?Q?dqQk3Qh/5ELRxhtc9g1d6LsCaKh/NO2eMbEjGK3FOTPTlZFkxIZswZ+1BAMh?=
 =?us-ascii?Q?rdO8yU1MACM6zDLjRruL02isoRBZlDChudyjePFEZmVFSipjFmLSukfe45uj?=
 =?us-ascii?Q?7tIKzD1K5h3b5eE9EuIZMZgu6a6JczLlG5UBXd5TiOwyOO8ALTw1578cZVyZ?=
 =?us-ascii?Q?6wJxwVbKfXjQYnX/rOTfE870Q500G8ZyWDQxzZPiWjaY+u0DnC9wb8xbxhd2?=
 =?us-ascii?Q?juksYmaCUjix7Ai3EFRyJO5f2SMolC62U4nJnKsBEldN4/PEnJAV+VdVl9pC?=
 =?us-ascii?Q?2B587nPJONSw1QiLY5d7m9+t5UoS6vlhnNZ3+9qF4tM9v+4mqy5PAi+Vg+qU?=
 =?us-ascii?Q?5/u9GFMx2/QyvGZGBgu8ZkDDt6tYvVhLgc+/T0SqdjoxRbZ/y5obNYIeYkt/?=
 =?us-ascii?Q?6ankz2lP6yFlTVXIrBbAO+Atli3sM5QVyRi3eUXExGFuMpCY9BWfnospUQd0?=
 =?us-ascii?Q?TzYdSttt1iUHU0Sf2T2+0wGtPcQMGQltoQBR5MaoJWyKzkgVD/sIRqFjpAU+?=
 =?us-ascii?Q?raJtjoH8oVFvYUbzbfV+BalOB4H/ORCPmTOa7qa+YmFDzk6I+uO2FVy1HL1i?=
 =?us-ascii?Q?k2DeQMmMszSWhrw04HK10D/3x6M2HYiCDfNrZMYse/5KhpNwHWhrKE9sIOiX?=
 =?us-ascii?Q?RdEz6c+sFhRJM6hQD04=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR18MB4666.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e9edf4-e98b-4bb6-a62f-08dc81691756
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2024 11:59:14.2700
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z7K9ucDQOTJDigWanmzbFvGwLGKpmlDlhT7quhzE56zj18mJ5NGX35BgCkM1JGS33NFqnaLBNFXyAfUvptDe3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR18MB5586
X-Proofpoint-ORIG-GUID: SEbBfNg4A4oI1AnObShiE9e_Y4QPsaND
X-Proofpoint-GUID: SEbBfNg4A4oI1AnObShiE9e_Y4QPsaND
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_08,2024-05-30_01,2024-05-17_01



>-----Original Message-----
>From: Lorenzo Bianconi <lorenzo@kernel.org>
>Sent: Friday, May 31, 2024 3:52 PM
>To: netdev@vger.kernel.org
>Cc: nbd@nbd.name; lorenzo.bianconi83@gmail.com; davem@davemloft.net;
>edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>conor@kernel.org; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org=
;
>krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>devicetree@vger.kernel.org; catalin.marinas@arm.com; will@kernel.org;
>upstream@airoha.com; angelogioacchino.delregno@collabora.com;
>benjamin.larsson@genexis.eu
>Subject: [EXTERNAL] [PATCH net-next 3/3] net: airoha: Introduce ethernet s=
upport
>for EN7581 SoC
>
>Prioritize security for external emails: Confirm sender and content safety=
 before
>clicking links or opening attachments
>
>----------------------------------------------------------------------
>Add airoha_eth driver in order to introduce ethernet support for
>Airoha EN7581 SoC available on EN7581 development board (en7581-evb).
>en7581-evb networking architecture is composed by airoha_eth as mac
>controller (cpu port) and a mt7530 dsa based switch.
>EN7581 mac controller is mainly composed by Frame Engine (FE) and
>QoS-DMA (QDMA) modules. FE is used for traffic offloading (just basic
>functionalities are supported now) while QDMA is used for DMA operation
>and QOS functionalities between mac layer and the dsa switch (hw QoS is
>not available yet and it will be added in the future).
>Currently only hw lan features are available, hw wan will be added with
>subsequent patches.
>
>Tested-by: Benjamin Larsson <benjamin.larsson@genexis.eu>
>Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>---
> MAINTAINERS                                |   10 +
> drivers/net/ethernet/mediatek/Kconfig      |   11 +-
> drivers/net/ethernet/mediatek/Makefile     |    1 +
> drivers/net/ethernet/mediatek/airoha_eth.c | 1552 ++++++++++++++++++++
> drivers/net/ethernet/mediatek/airoha_eth.h |  719 +++++++++
> 5 files changed, 2292 insertions(+), 1 deletion(-)
> create mode 100644 drivers/net/ethernet/mediatek/airoha_eth.c
> create mode 100644 drivers/net/ethernet/mediatek/airoha_eth.h
>
>diff --git a/MAINTAINERS b/MAINTAINERS
>index 804dcbc448b6..a280fbce00e5 100644
>--- a/MAINTAINERS
>+++ b/MAINTAINERS
>@@ -682,6 +682,16 @@ S:	Supported
> F:	fs/aio.c
> F:	include/linux/*aio*.h
>
>+AIROHA ETHERNET DRIVER
>+M:	Lorenzo Bianconi <lorenzo@kernel.org>
>+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>+L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
>+L:	netdev@vger.kernel.org
>+S:	Maintained
>+F:	Documentation/devicetree/bindings/net/airoha,en7581.yaml
>+F:	drivers/net/ethernet/mediatek/airoha_eth.c
>+F:	drivers/net/ethernet/mediatek/airoha_eth.h
>+
> AIROHA PCIE PHY DRIVER
> M:	Lorenzo Bianconi <lorenzo@kernel.org>
> L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>diff --git a/drivers/net/ethernet/mediatek/Kconfig
>b/drivers/net/ethernet/mediatek/Kconfig
>index da0db417ab69..e16d0ea5d418 100644
>--- a/drivers/net/ethernet/mediatek/Kconfig
>+++ b/drivers/net/ethernet/mediatek/Kconfig
>@@ -1,12 +1,21 @@
> # SPDX-License-Identifier: GPL-2.0-only
> config NET_VENDOR_MEDIATEK
> 	bool "MediaTek devices"
>-	depends on ARCH_MEDIATEK || SOC_MT7621 || SOC_MT7620 ||
>COMPILE_TEST
>+	depends on ARCH_MEDIATEK || ARCH_AIROHA || SOC_MT7621 ||
>SOC_MT7620 || COMPILE_TEST
> 	help
> 	  If you have a Mediatek SoC with ethernet, say Y.
>
> if NET_VENDOR_MEDIATEK
>
>+config NET_AIROHA
>+	tristate "Airoha SoC Gigabit Ethernet support"
>+	depends on NET_DSA || !NET_DSA
>+	select PAGE_POOL
>+	select PAGE_POOL_STATS
>+	help
>+	  This driver supports the gigabit ethernet MACs in the
>+	  Airoha SoC family.
>+
> config NET_MEDIATEK_SOC_WED
> 	depends on ARCH_MEDIATEK || COMPILE_TEST
> 	def_bool NET_MEDIATEK_SOC !=3D n
>diff --git a/drivers/net/ethernet/mediatek/Makefile
>b/drivers/net/ethernet/mediatek/Makefile
>index 03e008fbc859..ddbb7f4a516c 100644
>--- a/drivers/net/ethernet/mediatek/Makefile
>+++ b/drivers/net/ethernet/mediatek/Makefile
>@@ -11,3 +11,4 @@ mtk_eth-$(CONFIG_NET_MEDIATEK_SOC_WED) +=3D
>mtk_wed_debugfs.o
> endif
> obj-$(CONFIG_NET_MEDIATEK_SOC_WED) +=3D mtk_wed_ops.o
> obj-$(CONFIG_NET_MEDIATEK_STAR_EMAC) +=3D mtk_star_emac.o
>+obj-$(CONFIG_NET_AIROHA) +=3D airoha_eth.o
>diff --git a/drivers/net/ethernet/mediatek/airoha_eth.c
>b/drivers/net/ethernet/mediatek/airoha_eth.c
>new file mode 100644
>index 000000000000..ad0f1bf515ab
>--- /dev/null
>+++ b/drivers/net/ethernet/mediatek/airoha_eth.c
>@@ -0,0 +1,1552 @@
>+// SPDX-License-Identifier: GPL-2.0-only
>+/*
>+ * Copyright (c) 2024 AIROHA Inc
>+ * Author: Lorenzo Bianconi <lorenzo@kernel.org>
>+ */
>+#include <linux/debugfs.h>
>+#include <linux/etherdevice.h>
>+#include <linux/iopoll.h>
>+#include <linux/kernel.h>
>+#include <linux/netdevice.h>
>+#include <linux/of.h>
>+#include <linux/of_net.h>
>+#include <linux/phylink.h>
>+#include <linux/platform_device.h>
>+#include <linux/reset.h>
>+#include <linux/tcp.h>
>+#include <net/dsa.h>
>+#include <net/page_pool/helpers.h>
>+#include "airoha_eth.h"
>+
>+static u32 airoha_rr(void __iomem *base, u32 offset)
>+{
>+	return readl(base + offset);
>+}
>+
>+static void airoha_wr(void __iomem *base, u32 offset, u32 val)
>+{
>+	writel(val, base + offset);
>+}
>+
>+static u32 airoha_rmw(void __iomem *base, u32 offset, u32 mask, u32 val)
>+{
>+	val |=3D (airoha_rr(base, offset) & ~mask);
>+	airoha_wr(base, offset, val);
>+
>+	return val;
>+}
>+
>+#define airoha_fe_rr(eth, offset)		airoha_rr((eth)->fe_regs,
>(offset))
>+#define airoha_fe_wr(eth, offset, val)		airoha_wr((eth)->fe_regs,
>(offset), (val))
>+#define airoha_fe_rmw(eth, offset, mask, val)	airoha_rmw((eth)->fe_regs,
>(offset), (mask), (val))
>+#define airoha_fe_set(eth, offset, val)		airoha_rmw((eth)->fe_regs,
>(offset), 0, (val))
>+#define airoha_fe_clear(eth, offset, val)	airoha_rmw((eth)->fe_regs, (off=
set),
>(val), 0)
>+
>+#define airoha_qdma_rr(eth, offset)		airoha_rr((eth)->qdma_regs,
>(offset))
>+#define airoha_qdma_wr(eth, offset, val)	airoha_wr((eth)->qdma_regs,
>(offset), (val))
>+#define airoha_qdma_rmw(eth, offset, mask, val)	airoha_rmw((eth)-
>>qdma_regs, (offset), (mask), (val))
>+#define airoha_qdma_set(eth, offset, val)	airoha_rmw((eth)->qdma_regs,
>(offset), 0, (val))
>+#define airoha_qdma_clear(eth, offset, val)	airoha_rmw((eth)->qdma_regs,
>(offset), (val), 0)
>+
>+static void airoha_qdma_set_irqmask(struct airoha_eth *eth, int index,
>+				    u32 clear, u32 set)
>+{
>+	unsigned long flags;
>+
>+	if (WARN_ON_ONCE(index >=3D ARRAY_SIZE(eth->irqmask)))
>+		return;
>+
>+	spin_lock_irqsave(&eth->irq_lock, flags);
>+
>+	eth->irqmask[index] &=3D ~clear;
>+	eth->irqmask[index] |=3D set;
>+	airoha_qdma_wr(eth, REG_INT_ENABLE(index), eth->irqmask[index]);
>+
>+	spin_unlock_irqrestore(&eth->irq_lock, flags);
>+}
>+
>+static void airoha_qdma_irq_enable(struct airoha_eth *eth, int index,
>+				   u32 mask)
>+{
>+	airoha_qdma_set_irqmask(eth, index, 0, mask);
>+}
>+
>+static void airoha_qdma_irq_disable(struct airoha_eth *eth, int index,
>+				    u32 mask)
>+{
>+	airoha_qdma_set_irqmask(eth, index, mask, 0);
>+}
>+
>+static void airoha_set_macaddr(struct airoha_eth *eth, const u8 *addr)
>+{
>+	u32 val;
>+
>+	val =3D (addr[0] << 16) | (addr[1] << 8) | addr[2];
>+	airoha_fe_wr(eth, REG_FE_LAN_MAC_H, val);
>+
>+	val =3D (addr[3] << 16) | (addr[4] << 8) | addr[5];
>+	airoha_fe_wr(eth, REG_FE_LAN_MAC_LMIN, val);
>+	airoha_fe_wr(eth, REG_FE_LAN_MAC_LMAX, val);
>+}
>+
>+static void airoha_set_port_fwd_cfg(struct airoha_eth *eth, u32 addr, u32=
 val)
>+{
>+	airoha_fe_rmw(eth, addr, GDM1_OCFQ_MASK,
>+		      FIELD_PREP(GDM1_OCFQ_MASK, val));

Not sure this is problem of my email client, but none of the functions args=
 are aligning with above parenthesis
              airoha_fe_rmw(eth, addr, GDM1_OCFQ_MASK,
                                           FIELD_PREP(GDM1_OCFQ_MASK, val))=
;

>+	airoha_fe_rmw(eth, addr, GDM1_MCFQ_MASK,
>+		      FIELD_PREP(GDM1_MCFQ_MASK, val));
>+	airoha_fe_rmw(eth, addr, GDM1_BCFQ_MASK,
>+		      FIELD_PREP(GDM1_BCFQ_MASK, val));
>+	airoha_fe_rmw(eth, addr, GDM1_UCFQ_MASK,
>+		      FIELD_PREP(GDM1_UCFQ_MASK, val));
>+}
>+
>+static int airoha_set_gdma_port(struct airoha_eth *eth, int port, bool en=
able)
>+{
>+	u32 vip_port, cfg_addr, val =3D enable ? FE_DP_PPE : FE_DP_DROP;
>+
>+	switch (port) {
>+	case 0:
>+		vip_port =3D BIT(22);
>+		cfg_addr =3D REG_GDM3_FWD_CFG;
>+		break;
>+	case 1:
>+		vip_port =3D BIT(23);
>+		cfg_addr =3D REG_GDM3_FWD_CFG;
>+		break;
>+	case 2:
>+		vip_port =3D BIT(25);
>+		cfg_addr =3D REG_GDM4_FWD_CFG;
>+		break;
>+	case 4:
>+		vip_port =3D BIT(24);
>+		cfg_addr =3D REG_GDM4_FWD_CFG;
>+		break;
>+	default:
>+		return -EINVAL;
>+	}
>+
>+	if (enable) {
>+		airoha_fe_set(eth, REG_FE_VIP_PORT_EN, vip_port);
>+		airoha_fe_set(eth, REG_FE_IFC_PORT_EN, vip_port);
>+	} else {
>+		airoha_fe_clear(eth, REG_FE_VIP_PORT_EN, vip_port);
>+		airoha_fe_clear(eth, REG_FE_IFC_PORT_EN, vip_port);
>+	}
>+
>+	airoha_set_port_fwd_cfg(eth, cfg_addr, val);
>+
>+	return 0;
>+}
>+
>+static int airoha_set_gdma_ports(struct airoha_eth *eth, bool enable)
>+{
>+	const int port_list[] =3D { 0, 1, 2, 4 };
>+	int i;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(port_list); i++) {
>+		int err;
>+
>+		err =3D airoha_set_gdma_port(eth, port_list[i], enable);
>+		if (err)
>+			return err;

Say setting port 3 failed and returned from this function then is it okay t=
o leave some ports(0, 1 and 2) as set?
                            if (err)
                                          goto exit;
>+	}
>+
>+	return 0;

exit:
            while (i--)
                    airoha_set_gdma_port(eth, port_list[i], false);

            return err;

>+}
>+
>+static void airoha_fe_maccr_init(struct airoha_eth *eth)
>+{
>+	airoha_fe_set(eth, REG_GDM1_FWD_CFG,
>+		      GDM1_TCP_CKSUM | GDM1_UDP_CKSUM |
>GDM1_IP4_CKSUM |
>+		      GDM1_DROP_CRC_ERR);
>+	airoha_set_port_fwd_cfg(eth, REG_GDM1_FWD_CFG, FE_DP_CPU);
>+
>+	airoha_fe_set(eth, REG_FE_CPORT_CFG, FE_CPORT_PAD);
>+	airoha_fe_rmw(eth, REG_CDM1_VLAN_CTRL, CDM1_VLAN_MASK,
>+		      FIELD_PREP(CDM1_VLAN_MASK, 0x8100));
>+	airoha_fe_rmw(eth, REG_GDM1_LEN_CFG,
>+		      GDM1_SHORT_LEN_MASK | GDM1_LONG_LEN_MASK,
>+		      FIELD_PREP(GDM1_SHORT_LEN_MASK, 60) |
>+		      FIELD_PREP(GDM1_LONG_LEN_MASK, 4004));
>+}
>+
>+static void airoha_fe_vip_setup(struct airoha_eth *eth)
>+{
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(3), 0x8863); /* ETH->PPP (0x8863)
>*/
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(3), PATN_FCPU_EN_MASK |
>PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(4), 0xc021); /* PPP->LCP (0xc021) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(4),
>+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
>+		     PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(6), 0x8021); /* PPP->IPCP (0x8021)
>*/
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(6),
>+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
>+		     PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(7), 0xc223); /* PPP->CHAP (0xc223)
>*/
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(7),
>+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
>+		     PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(8), 0x43); /* BOOTP (0x43) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(8),
>+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(9), 0x44); /* BOOTP (0x44) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(9),
>+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(10), 0x1f401f4); /* ISAKMP */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(10),
>+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK |
>PATN_SP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(11), 0xc057); /* PPP->IPv6CP
>(0xc057) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(11),
>+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
>+		     PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(12), 0x2220223); /* DHCPv6 */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(12),
>+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK |
>PATN_SP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(17), 0x1ae0);
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(17),
>+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 3) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(18), 0x1ae00000);
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(18),
>+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK |
>+		     FIELD_PREP(PATN_TYPE_MASK, 3) | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(19), 0xc023); /* PPP->PAP (0xc023)
>*/
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(19),
>+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
>+		     PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(20), 0x893a); /* ETH->ETH_P_1905
>(0x893a) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(20),
>+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(21), 0x88cc); /* ETH->ETH_P_LLDP
>(0x88cc) */
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(21),
>+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
>+
>+	airoha_fe_wr(eth, REG_FE_VIP_PATN(22), 0xaaaa);
>+	airoha_fe_wr(eth, REG_FE_VIP_EN(22),
>+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
>+}
>+
>+static u32 airoha_fe_get_oq_rsv(struct airoha_eth *eth,
>+				u32 port, u32 queue)
>+{
>+	u32 val;
>+
>+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_WR,
>+		      PSE_CFG_PORT_ID_MASK | PSE_CFG_QUEUE_ID_MASK,
>+		      FIELD_PREP(PSE_CFG_PORT_ID_MASK, port) |
>+		      FIELD_PREP(PSE_CFG_QUEUE_ID_MASK, queue));
>+	val =3D airoha_fe_rr(eth, REG_FE_PSE_QUEUE_CFG_VAL);
>+
>+	return FIELD_GET(PSE_CFG_OQ_RSV_MASK, val);
>+}
>+
>+static void airoha_fe_set_oq_rsv(struct airoha_eth *eth,
>+				 u32 port, u32 queue, u32 val)
>+{
>+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_VAL,
>PSE_CFG_OQ_RSV_MASK,
>+		      FIELD_PREP(PSE_CFG_OQ_RSV_MASK, val));
>+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_WR,
>+		      PSE_CFG_PORT_ID_MASK | PSE_CFG_QUEUE_ID_MASK |
>+		      PSE_CFG_WR_EN_MASK | PSE_CFG_OQRSV_SEL_MASK,
>+		      FIELD_PREP(PSE_CFG_PORT_ID_MASK, port) |
>+		      FIELD_PREP(PSE_CFG_QUEUE_ID_MASK, queue) |
>+		      PSE_CFG_WR_EN_MASK | PSE_CFG_OQRSV_SEL_MASK);
>+}
>+
>+static int airoha_fe_set_pse_oq_rsv(struct airoha_eth *eth,
>+				    u32 port, u32 queue, u32 val)
>+{
>+	u32 orig_val, tmp, all_rsv, fq_limit;
>+	const u32 pse_port_oq_id[] =3D {
>+		PSE_PORT0_QUEUE, PSE_PORT1_QUEUE,
>+		PSE_PORT2_QUEUE, PSE_PORT3_QUEUE,
>+		PSE_PORT4_QUEUE, PSE_PORT5_QUEUE,
>+		PSE_PORT6_QUEUE, PSE_PORT7_QUEUE,
>+		PSE_PORT8_QUEUE, PSE_PORT9_QUEUE,
>+		PSE_PORT10_QUEUE
>+	};
>+
>+	if (port >=3D ARRAY_SIZE(pse_port_oq_id))
>+		return -EINVAL;
>+
>+	if (queue >=3D pse_port_oq_id[port])
>+		return -EINVAL;
>+
>+	airoha_fe_set_oq_rsv(eth, port, queue, val);
>+
>+	/* modify all rsv */
>+	orig_val =3D airoha_fe_get_oq_rsv(eth, port, queue);
>+	tmp =3D airoha_fe_rr(eth, REG_FE_PSE_BUF_SET);
>+	all_rsv =3D FIELD_GET(PSE_ALLRSV_MASK, tmp);
>+	all_rsv +=3D (val - orig_val);
>+	airoha_fe_rmw(eth, REG_FE_PSE_BUF_SET, PSE_ALLRSV_MASK,
>+		      FIELD_PREP(PSE_ALLRSV_MASK, all_rsv));
>+
>+	/* modify hthd */
>+	tmp =3D airoha_fe_rr(eth, PSE_FQ_CFG);
>+	fq_limit =3D FIELD_GET(PSE_FQ_LIMIT_MASK, tmp);
>+	tmp =3D fq_limit - all_rsv - 0x20;
>+	airoha_fe_rmw(eth, REG_PSE_SHARE_USED_THD,
>+		      PSE_SHARE_USED_HTHD_MASK,
>+		      FIELD_PREP(PSE_SHARE_USED_HTHD_MASK, tmp));
>+
>+	tmp =3D fq_limit - all_rsv - 0x100;
>+	airoha_fe_rmw(eth, REG_PSE_SHARE_USED_THD,
>+		      PSE_SHARE_USED_MTHD_MASK,
>+		      FIELD_PREP(PSE_SHARE_USED_MTHD_MASK, tmp));
>+	tmp =3D (3 * tmp) >> 2;
>+	airoha_fe_rmw(eth, REG_FE_PSE_BUF_SET,
>+		      PSE_SHARE_USED_LTHD_MASK,
>+		      FIELD_PREP(PSE_SHARE_USED_LTHD_MASK, tmp));
>+
>+	return 0;
>+}
>+
>+static void airoha_fe_oq_rsv_init(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	/* hw misses PPE2 oq rsv */
>+	airoha_fe_set(eth, REG_FE_PSE_BUF_SET, BIT(9));
>+
>+	for (i =3D 0; i < PSE_PORT0_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 0, i, 0x40);
>+	for (i =3D 0; i < PSE_PORT1_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 1, i, 0x40);
>+
>+	for (i =3D 6; i < PSE_PORT2_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 2, i, 0);
>+
>+	for (i =3D 0; i < PSE_PORT3_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 3, i, 0x40);
>+
>+	airoha_fe_set_pse_oq_rsv(eth, 4, 0, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 4, 1, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 4, 2, 0);
>+	airoha_fe_set_pse_oq_rsv(eth, 4, 3, 0);
>+	airoha_fe_set_pse_oq_rsv(eth, 8, 0, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 8, 1, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 8, 2, 0);
>+	airoha_fe_set_pse_oq_rsv(eth, 8, 3, 0);
>+
>+	for (i =3D 0; i < PSE_PORT5_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 5, i, 0x40);
>+
>+	for (i =3D 0; i < PSE_PORT6_QUEUE - 1; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 6, i, 0);
>+
>+	for (i =3D 4; i < PSE_PORT7_QUEUE; i++)
>+		airoha_fe_set_pse_oq_rsv(eth, 7, i, 0x40);
>+
>+	airoha_fe_set_pse_oq_rsv(eth, 9, 0, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 9, 1, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 10, 0, 0x40);
>+	airoha_fe_set_pse_oq_rsv(eth, 10, 1, 0x40);
>+}
>+
>+static int airoha_fe_mc_vlan_clear(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	for (i =3D 0; i < AIROHA_FE_MC_MAX_VLAN_TABLE; i++) {
>+		int err, j;
>+		u32 val;
>+
>+		airoha_fe_wr(eth, REG_MC_VLAN_DATA, 0x0);
>+
>+		val =3D FIELD_PREP(MC_VLAN_CFG_TABLE_ID_MASK, i) |
>+		      MC_VLAN_CFG_TABLE_SEL_MASK |
>MC_VLAN_CFG_RW_MASK;
>+		airoha_fe_wr(eth, REG_MC_VLAN_CFG, val);
>+		err =3D read_poll_timeout(airoha_fe_rr, val,
>+					val &
>MC_VLAN_CFG_CMD_DONE_MASK,
>+					USEC_PER_MSEC, 5 * USEC_PER_MSEC,
>+					false, eth, REG_MC_VLAN_CFG);
>+		if (err)
>+			return err;
>+
>+		for (j =3D 0; j < AIROHA_FE_MC_MAX_VLAN_PORT; j++) {
>+			airoha_fe_wr(eth, REG_MC_VLAN_DATA, 0x0);
>+
>+			val =3D FIELD_PREP(MC_VLAN_CFG_TABLE_ID_MASK, i) |
>+			      FIELD_PREP(MC_VLAN_CFG_PORT_ID_MASK, j) |
>+			      MC_VLAN_CFG_RW_MASK;
>+			airoha_fe_wr(eth, REG_MC_VLAN_CFG, val);
>+			err =3D read_poll_timeout(airoha_fe_rr, val,
>+						val &
>MC_VLAN_CFG_CMD_DONE_MASK,
>+						USEC_PER_MSEC, 5 *
>USEC_PER_MSEC,
>+						false, eth, REG_MC_VLAN_CFG);
>+			if (err)
>+				return err;
>+		}
>+	}
>+
>+	return 0;
>+}
>+
>+static void airoha_fe_crsn_qsel_init(struct airoha_eth *eth)
>+{
>+	/* CDM1_CRSN_QSEL */
>+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_22 >> 2),
>+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_22),
>+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_22),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_08 >> 2),
>+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_08),
>+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_08),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_21 >> 2),
>+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_21),
>+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_21),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_24 >> 2),
>+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_24),
>+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_24),
>+				 CDM_CRSN_QSEL_Q6));
>+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_25 >> 2),
>+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_25),
>+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_25),
>+				 CDM_CRSN_QSEL_Q1));
>+	/* CDM2_CRSN_QSEL */
>+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_08 >> 2),
>+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_08),
>+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_08),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_21 >> 2),
>+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_21),
>+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_21),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_22 >> 2),
>+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_22),
>+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_22),
>+				 CDM_CRSN_QSEL_Q1));
>+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_24 >> 2),
>+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_24),
>+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_24),
>+				 CDM_CRSN_QSEL_Q6));
>+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_25 >> 2),
>+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_25),
>+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_25),
>+				 CDM_CRSN_QSEL_Q1));
>+}
>+
>+static int airoha_fe_init(struct airoha_eth *eth)
>+{
>+	airoha_fe_maccr_init(eth);
>+
>+	/* PSE IQ reserve */
>+	airoha_fe_rmw(eth, REG_PSE_IQ_REV1, PSE_IQ_RES1_P2_MASK,
>+		      FIELD_PREP(PSE_IQ_RES1_P2_MASK, 0x10));
>+	airoha_fe_rmw(eth, REG_PSE_IQ_REV2,
>+		      PSE_IQ_RES2_P5_MASK | PSE_IQ_RES2_P4_MASK,
>+		      FIELD_PREP(PSE_IQ_RES2_P5_MASK, 0x40) |
>+		      FIELD_PREP(PSE_IQ_RES2_P4_MASK, 0x34));
>+
>+	/* enable FE copy engine for MC/KA/DPI */
>+	airoha_fe_wr(eth, REG_FE_PCE_CFG, PCE_DPI_EN | PCE_KA_EN |
>PCE_MC_EN);
>+	/* set vip queue selection to ring 1 */
>+	airoha_fe_rmw(eth, REG_CDM1_FWD_CFG, CDM1_VIP_QSEL_MASK,
>+		      FIELD_PREP(CDM1_VIP_QSEL_MASK, 0x4));
>+	airoha_fe_rmw(eth, REG_CDM2_FWD_CFG, CDM2_VIP_QSEL_MASK,
>+		      FIELD_PREP(CDM2_VIP_QSEL_MASK, 0x4));
>+	/* set GDM4 source interface offset to 8 */
>+	airoha_fe_rmw(eth, REG_GDM4_SRC_PORT_SET,
>+		      GDM4_SPORT_OFF2_MASK |
>+		      GDM4_SPORT_OFF1_MASK |
>+		      GDM4_SPORT_OFF0_MASK,
>+		      FIELD_PREP(GDM4_SPORT_OFF2_MASK, 8) |
>+		      FIELD_PREP(GDM4_SPORT_OFF1_MASK, 8) |
>+		      FIELD_PREP(GDM4_SPORT_OFF0_MASK, 8));
>+
>+	/* set PSE Page as 128B */
>+	airoha_fe_rmw(eth, REG_FE_DMA_GLO_CFG,
>+		      FE_DMA_GLO_L2_SPACE_MASK |
>FE_DMA_GLO_PG_SZ_MASK,
>+		      FIELD_PREP(FE_DMA_GLO_L2_SPACE_MASK, 2) |
>+		      FE_DMA_GLO_PG_SZ_MASK);
>+	airoha_fe_wr(eth, REG_FE_RST_GLO_CFG,
>+		     FE_RST_CORE_MASK | FE_RST_GDM3_MBI_ARB_MASK |
>+		     FE_RST_GDM4_MBI_ARB_MASK);
>+	usleep_range(1000, 2000);
>+
>+	/* connect RxRing1 and RxRing15 to PSE Port0 OQ-1
>+	 * connect other rings to PSE Port0 OQ-0
>+	 */
>+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP0, BIT(4));
>+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP1, BIT(28));
>+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP2, BIT(4));
>+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP3, BIT(28));
>+
>+	airoha_fe_vip_setup(eth);
>+	airoha_fe_oq_rsv_init(eth);
>+
>+	airoha_fe_set(eth, REG_GDM_MISC_CFG,
>+		      GDM2_RDM_ACK_WAIT_PREF_MASK |
>+		      GDM2_CHN_VLD_MODE_MASK);
>+	airoha_fe_rmw(eth, REG_CDM2_FWD_CFG, CDM2_OAM_QSEL_MASK,
>15);
>+
>+	/* init fragment and assemble Force Port */
>+	/* NPU Core-3, NPU Bridge Channel-3 */
>+	airoha_fe_rmw(eth, REG_IP_FRAG_FP,
>+		      IP_FRAGMENT_PORT_MASK | IP_FRAGMENT_NBQ_MASK,
>+		      FIELD_PREP(IP_FRAGMENT_PORT_MASK, 6) |
>+		      FIELD_PREP(IP_FRAGMENT_NBQ_MASK, 3));
>+	/* QDMA LAN, RX Ring-22 */
>+	airoha_fe_rmw(eth, REG_IP_FRAG_FP,
>+		      IP_ASSEMBLE_PORT_MASK | IP_ASSEMBLE_NBQ_MASK,
>+		      FIELD_PREP(IP_ASSEMBLE_PORT_MASK, 0) |
>+		      FIELD_PREP(IP_ASSEMBLE_NBQ_MASK, 22));
>+
>+	airoha_fe_set(eth, REG_GDM3_FWD_CFG, GDM3_PAD_EN_MASK);
>+	airoha_fe_set(eth, REG_GDM4_FWD_CFG, GDM4_PAD_EN_MASK);
>+
>+	airoha_fe_crsn_qsel_init(eth);
>+
>+	airoha_fe_clear(eth, REG_FE_CPORT_CFG,
>FE_CPORT_QUEUE_XFC_MASK);
>+	airoha_fe_set(eth, REG_FE_CPORT_CFG, FE_CPORT_PORT_XFC_MASK);
>+
>+	/* default aging mode for mbi unlock issue */
>+	airoha_fe_rmw(eth, REG_GDM2_CHN_RLS,
>+		      MBI_RX_AGE_SEL_MASK | MBI_TX_AGE_SEL_MASK,
>+		      FIELD_PREP(MBI_RX_AGE_SEL_MASK, 3) |
>+		      FIELD_PREP(MBI_TX_AGE_SEL_MASK, 3));
>+
>+	/* disable IFC by default */
>+	airoha_fe_clear(eth, REG_FE_CSR_IFC_CFG, FE_IFC_EN_MASK);
>+
>+	/* enable 1:N vlan action, init vlan table */
>+	airoha_fe_set(eth, REG_MC_VLAN_EN, MC_VLAN_EN_MASK);
>+
>+	return airoha_fe_mc_vlan_clear(eth);
>+}
>+
>+static int airoha_qdma_fill_rx_queue(struct airoha_queue *q)
>+{
>+	struct airoha_eth *eth =3D q->eth;
>+	struct device *dev =3D eth->net_dev->dev.parent;
Follow reverse xmas tree order please in entire driver.
Apart from minor nits driver looks good to me.

Thanks,
Sundeep
>+	int qid =3D q - &eth->q_rx[0], nframes =3D 0;
>+
>+	spin_lock_bh(&q->lock);
>+	while (q->queued < q->ndesc - 1) {
>+		struct airoha_queue_entry *e =3D &q->entry[q->head];
>+		struct airoha_qdma_desc *desc =3D &q->desc[q->head];
>+		enum dma_data_direction dir;
>+		struct page *page;
>+		int offset;
>+		u32 val;
>+
>+		page =3D page_pool_dev_alloc_frag(q->page_pool, &offset,
>+						q->buf_size);
>+		if (!page)
>+			break;
>+
>+		q->head =3D (q->head + 1) % q->ndesc;
>+		q->queued++;
>+		nframes++;
>+
>+		e->buf =3D page_address(page) + offset;
>+		e->dma_addr =3D page_pool_get_dma_addr(page) + offset;
>+		e->dma_len =3D SKB_WITH_OVERHEAD(q->buf_size);
>+
>+		dir =3D page_pool_get_dma_dir(q->page_pool);
>+		dma_sync_single_for_device(dev, e->dma_addr, e->dma_len, dir);
>+
>+		val =3D FIELD_PREP(QDMA_DESC_LEN_MASK, e->dma_len);
>+		WRITE_ONCE(desc->ctrl, cpu_to_le32(val));
>+		WRITE_ONCE(desc->addr, cpu_to_le32(e->dma_addr));
>+		val =3D FIELD_PREP(QDMA_DESC_NEXT_ID_MASK, q->head);
>+		WRITE_ONCE(desc->data, cpu_to_le32(val));
>+		WRITE_ONCE(desc->msg0, 0);
>+		WRITE_ONCE(desc->msg1, 0);
>+		WRITE_ONCE(desc->msg2, 0);
>+		WRITE_ONCE(desc->msg3, 0);
>+
>+		wmb();
>+		airoha_qdma_rmw(eth, REG_RX_CPU_IDX(qid),
>RX_RING_CPU_IDX_MASK,
>+				FIELD_PREP(RX_RING_CPU_IDX_MASK, q-
>>head));
>+	}
>+	spin_unlock_bh(&q->lock);
>+
>+	return nframes;
>+}
>+
>+static int airoha_qdma_rx_process(struct airoha_queue *q, int budget)
>+{
>+	struct airoha_eth *eth =3D q->eth;
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	int done =3D 0, qid =3D q - &eth->q_rx[0];
>+
>+	spin_lock_bh(&q->lock);
>+	while (done < budget) {
>+		struct airoha_queue_entry *e =3D &q->entry[q->tail];
>+		struct airoha_qdma_desc *desc =3D &q->desc[q->tail];
>+		dma_addr_t dma_addr =3D le32_to_cpu(desc->addr);
>+		u32 desc_ctrl =3D le32_to_cpu(desc->ctrl);
>+		struct sk_buff *skb;
>+		int len;
>+
>+		if (!(desc_ctrl & QDMA_DESC_DONE_MASK))
>+			break;
>+
>+		len =3D FIELD_GET(QDMA_DESC_LEN_MASK, desc_ctrl);
>+		if (!dma_addr || !len)
>+			break;
>+
>+		q->tail =3D (q->tail + 1) % q->ndesc;
>+		q->queued--;
>+
>+		dma_sync_single_for_cpu(dev, dma_addr,
>+					SKB_WITH_OVERHEAD(q->buf_size),
>+					page_pool_get_dma_dir(q->page_pool));
>+
>+		skb =3D napi_build_skb(e->buf, q->buf_size);
>+		if (!skb) {
>+			page_pool_put_full_page(q->page_pool,
>+						virt_to_head_page(e->buf),
>+						true);
>+			continue;
>+		}
>+
>+		skb_reserve(skb, 2);
>+		__skb_put(skb, len);
>+
>+		skb_mark_for_recycle(skb);
>+		skb->dev =3D eth->net_dev;
>+		skb->protocol =3D eth_type_trans(skb, eth->net_dev);
>+		skb->ip_summed =3D CHECKSUM_UNNECESSARY;
>+		skb_record_rx_queue(skb, qid);
>+		napi_gro_receive(&q->napi, skb);
>+
>+		done++;
>+	}
>+	spin_unlock_bh(&q->lock);
>+
>+	airoha_qdma_fill_rx_queue(q);
>+
>+	return done;
>+}
>+
>+static int airoha_qdma_rx_napi_poll(struct napi_struct *napi, int budget)
>+{
>+	struct airoha_queue *q =3D container_of(napi, struct airoha_queue, napi)=
;
>+	struct airoha_eth *eth =3D q->eth;
>+	int cur, done =3D 0;
>+
>+	do {
>+		cur =3D airoha_qdma_rx_process(q, budget - done);
>+		done +=3D cur;
>+	} while (cur && done < budget);
>+
>+	if (done < budget && napi_complete(napi))
>+		airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX1,
>+				       RX_DONE_INT_MASK);
>+
>+	return done;
>+}
>+
>+static int airoha_qdma_init_rx_queue(struct airoha_eth *eth,
>+				     struct airoha_queue *q, int ndesc)
>+{
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	struct page_pool_params pp_params =3D {
>+		.order =3D 0,
>+		.pool_size =3D 256,
>+		.flags =3D PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
>+		.dma_dir =3D DMA_FROM_DEVICE,
>+		.max_len =3D PAGE_SIZE,
>+		.nid =3D NUMA_NO_NODE,
>+		.dev =3D dev,
>+		.napi =3D &q->napi,
>+	};
>+	int qid =3D q - &eth->q_rx[0], thr;
>+	dma_addr_t dma_addr;
>+
>+	spin_lock_init(&q->lock);
>+	q->buf_size =3D PAGE_SIZE / 2;
>+	q->ndesc =3D ndesc;
>+	q->eth =3D eth;
>+
>+	q->entry =3D devm_kzalloc(dev, q->ndesc * sizeof(*q->entry),
>+				GFP_KERNEL);
>+	if (!q->entry)
>+		return -ENOMEM;
>+
>+	q->page_pool =3D page_pool_create(&pp_params);
>+	if (IS_ERR(q->page_pool)) {
>+		int err =3D PTR_ERR(q->page_pool);
>+
>+		q->page_pool =3D NULL;
>+		return err;
>+	}
>+
>+	q->desc =3D dmam_alloc_coherent(dev, q->ndesc * sizeof(*q->desc),
>+				      &dma_addr, GFP_KERNEL);
>+	if (!q->desc)
>+		return -ENOMEM;
>+
>+	netif_napi_add(eth->net_dev, &q->napi, airoha_qdma_rx_napi_poll);
>+
>+	airoha_qdma_wr(eth, REG_RX_RING_BASE(qid), dma_addr);
>+	airoha_qdma_rmw(eth, REG_RX_RING_SIZE(qid), RX_RING_SIZE_MASK,
>+			FIELD_PREP(RX_RING_SIZE_MASK, ndesc));
>+
>+	thr =3D clamp(ndesc >> 3, 1, 32);
>+	airoha_qdma_rmw(eth, REG_RX_RING_SIZE(qid), RX_RING_THR_MASK,
>+			FIELD_PREP(RX_RING_THR_MASK, thr));
>+	airoha_qdma_rmw(eth, REG_RX_DMA_IDX(qid),
>RX_RING_DMA_IDX_MASK,
>+			FIELD_PREP(RX_RING_DMA_IDX_MASK, q->head));
>+
>+	airoha_qdma_fill_rx_queue(q);
>+
>+	return 0;
>+}
>+
>+static void airoha_qdma_clenaup_rx_queue(struct airoha_queue *q)
>+{
>+	struct airoha_eth *eth =3D q->eth;
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+
>+	spin_lock_bh(&q->lock);
>+
>+	while (q->queued) {
>+		struct airoha_queue_entry *e =3D &q->entry[q->tail];
>+		struct page *page =3D virt_to_head_page(e->buf);
>+		enum dma_data_direction dir;
>+
>+		dir =3D page_pool_get_dma_dir(q->page_pool);
>+		dma_sync_single_for_cpu(dev, e->dma_addr, e->dma_len, dir);
>+		page_pool_put_full_page(q->page_pool, page, false);
>+		q->tail =3D (q->tail + 1) % q->ndesc;
>+		q->queued--;
>+	}
>+
>+	spin_unlock_bh(&q->lock);
>+}
>+
>+static int airoha_qdma_init_rx(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_rx); i++) {
>+		int err;
>+
>+		if (!(RX_DONE_INT_MASK & BIT(i))) {
>+			/* rx-queue not binded to irq */
>+			continue;
>+		}
>+
>+		err =3D airoha_qdma_init_rx_queue(eth, &eth->q_rx[i],
>+						RX_DSCP_NUM(i));
>+		if (err)
>+			return err;
>+	}
>+
>+	return 0;
>+}
>+
>+static int airoha_qdma_tx_napi_poll(struct napi_struct *napi, int budget)
>+{
>+	struct airoha_tx_irq_queue *irq_q;
>+	struct airoha_eth *eth;
>+	struct device *dev;
>+	int id, done =3D 0;
>+
>+	irq_q =3D container_of(napi, struct airoha_tx_irq_queue, napi);
>+	eth =3D irq_q->eth;
>+	id =3D irq_q - &eth->q_tx_irq[0];
>+	dev =3D eth->net_dev->dev.parent;
>+
>+	while (irq_q->queued > 0 && done < budget) {
>+		u32 qid, last, val =3D irq_q->q[irq_q->head];
>+		struct airoha_queue *q;
>+
>+		if (val =3D=3D 0xff)
>+			break;
>+
>+		irq_q->q[irq_q->head] =3D 0xff; /* mark as done */
>+		irq_q->head =3D (irq_q->head + 1) % irq_q->size;
>+		irq_q->queued--;
>+		done++;
>+
>+		last =3D FIELD_GET(IRQ_DESC_IDX_MASK, val);
>+		qid =3D FIELD_GET(IRQ_RING_IDX_MASK, val);
>+
>+		if (qid >=3D ARRAY_SIZE(eth->q_tx))
>+			continue;
>+
>+		q =3D &eth->q_tx[qid];
>+		spin_lock_bh(&q->lock);
>+
>+		while (q->queued > 0) {
>+			struct airoha_qdma_desc *desc =3D &q->desc[q->tail];
>+			struct airoha_queue_entry *e =3D &q->entry[q->tail];
>+			u32 desc_ctrl =3D le32_to_cpu(desc->ctrl);
>+			u16 index =3D q->tail;
>+
>+			if (!(desc_ctrl & QDMA_DESC_DONE_MASK) &&
>+			    !(desc_ctrl & QDMA_DESC_DROP_MASK))
>+				break;
>+
>+			q->tail =3D (q->tail + 1) % q->ndesc;
>+			q->queued--;
>+
>+			dma_unmap_single(dev, e->dma_addr, e->dma_len,
>+					 DMA_TO_DEVICE);
>+			dev_kfree_skb_any(e->skb);
>+			e->skb =3D NULL;
>+
>+			WRITE_ONCE(desc->msg0, 0);
>+			WRITE_ONCE(desc->msg1, 0);
>+
>+			if (index =3D=3D last)
>+				break;
>+		}
>+
>+		if (__netif_subqueue_stopped(eth->net_dev, qid) &&
>+		    q->queued + q->free_thr < q->ndesc)
>+			netif_wake_subqueue(eth->net_dev, qid);
>+
>+		spin_unlock_bh(&q->lock);
>+	}
>+
>+	if (done) {
>+		int i, len =3D done >> 7;
>+
>+		for (i =3D 0; i < len; i++)
>+			airoha_qdma_rmw(eth, REG_IRQ_CLEAR_LEN(id),
>+					IRQ_CLEAR_LEN_MASK, 0x80);
>+		airoha_qdma_rmw(eth, REG_IRQ_CLEAR_LEN(id),
>+				IRQ_CLEAR_LEN_MASK, (done & 0x7f));
>+	}
>+
>+	if (done < budget && napi_complete(napi))
>+		airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX0,
>+				       TX_DONE_INT_MASK(id));
>+
>+	return done;
>+}
>+
>+static int airoha_qdma_init_tx_queue(struct airoha_eth *eth,
>+				     struct airoha_queue *q, int size)
>+{
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	int i, qid =3D q - &eth->q_tx[0];
>+	dma_addr_t dma_addr;
>+
>+	spin_lock_init(&q->lock);
>+	q->ndesc =3D size;
>+	q->eth =3D eth;
>+	q->free_thr =3D MAX_SKB_FRAGS;
>+
>+	q->entry =3D devm_kzalloc(dev, q->ndesc * sizeof(*q->entry),
>+				GFP_KERNEL);
>+	if (!q->entry)
>+		return -ENOMEM;
>+
>+	q->desc =3D dmam_alloc_coherent(dev, q->ndesc * sizeof(*q->desc),
>+				      &dma_addr, GFP_KERNEL);
>+	if (!q->desc)
>+		return -ENOMEM;
>+
>+	for (i =3D 0; i < q->ndesc; i++) {
>+		u32 val;
>+
>+		val =3D FIELD_PREP(QDMA_DESC_DONE_MASK, 1);
>+		WRITE_ONCE(q->desc[i].ctrl, cpu_to_le32(val));
>+	}
>+
>+	airoha_qdma_wr(eth, REG_TX_RING_BASE(qid), dma_addr);
>+	airoha_qdma_rmw(eth, REG_TX_CPU_IDX(qid),
>TX_RING_CPU_IDX_MASK,
>+			FIELD_PREP(TX_RING_CPU_IDX_MASK, q->head));
>+	airoha_qdma_rmw(eth, REG_TX_DMA_IDX(qid),
>TX_RING_DMA_IDX_MASK,
>+			FIELD_PREP(TX_RING_DMA_IDX_MASK, q->head));
>+
>+	return 0;
>+}
>+
>+static int airoha_qdma_tx_irq_init(struct airoha_eth *eth,
>+				   struct airoha_tx_irq_queue *irq_q,
>+				   int size)
>+{
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	int id =3D irq_q - &eth->q_tx_irq[0];
>+	dma_addr_t dma_addr;
>+
>+	netif_napi_add(eth->net_dev, &irq_q->napi, airoha_qdma_tx_napi_poll);
>+	irq_q->q =3D dmam_alloc_coherent(dev, size * sizeof(u32), &dma_addr,
>+				       GFP_KERNEL);
>+	if (!irq_q->q)
>+		return -ENOMEM;
>+
>+	memset(irq_q->q, 0xff, size * sizeof(u32));
>+	irq_q->size =3D size;
>+	irq_q->eth =3D eth;
>+
>+	airoha_qdma_wr(eth, REG_TX_IRQ_BASE(id), dma_addr);
>+	airoha_qdma_rmw(eth, REG_TX_IRQ_CFG(id), TX_IRQ_DEPTH_MASK,
>+			FIELD_PREP(TX_IRQ_DEPTH_MASK, size));
>+	airoha_qdma_rmw(eth, REG_TX_IRQ_CFG(id), TX_IRQ_THR_MASK,
>+			FIELD_PREP(TX_IRQ_THR_MASK, 32));
>+
>+	return 0;
>+}
>+
>+static int airoha_qdma_init_tx(struct airoha_eth *eth)
>+{
>+	int i, err;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx_irq); i++) {
>+		err =3D airoha_qdma_tx_irq_init(eth, &eth->q_tx_irq[i],
>+					      IRQ_QUEUE_LEN(i));
>+		if (err)
>+			return err;
>+	}
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx); i++) {
>+		err =3D airoha_qdma_init_tx_queue(eth, &eth->q_tx[i],
>+						TX_DSCP_NUM);
>+		if (err)
>+			return err;
>+	}
>+
>+	return 0;
>+}
>+
>+static void airoha_qdma_clenaup_tx_queue(struct airoha_queue *q)
>+{
>+	struct airoha_eth *eth =3D q->eth;
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+
>+	spin_lock_bh(&q->lock);
>+
>+	while (q->queued) {
>+		struct airoha_queue_entry *e =3D &q->entry[q->tail];
>+
>+		dma_unmap_single(dev, e->dma_addr, e->dma_len,
>DMA_TO_DEVICE);
>+		dev_kfree_skb_any(e->skb);
>+		e->skb =3D NULL;
>+
>+		q->tail =3D (q->tail + 1) % q->ndesc;
>+		q->queued--;
>+	}
>+
>+	spin_unlock_bh(&q->lock);
>+}
>+
>+static int airoha_qdma_init_hfwd_queues(struct airoha_eth *eth)
>+{
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	dma_addr_t dma_addr;
>+	u32 status;
>+	int size;
>+
>+	size =3D HW_DSCP_NUM * sizeof(struct airoha_qdma_fwd_desc);
>+	eth->hfwd.desc =3D dmam_alloc_coherent(dev, size, &dma_addr,
>+					     GFP_KERNEL);
>+	if (!eth->hfwd.desc)
>+		return -ENOMEM;
>+
>+	airoha_qdma_wr(eth, REG_FWD_DSCP_BASE, dma_addr);
>+
>+	size =3D AIROHA_MAX_PACKET_SIZE * HW_DSCP_NUM;
>+	eth->hfwd.q =3D dmam_alloc_coherent(dev, size, &dma_addr,
>GFP_KERNEL);
>+	if (!eth->hfwd.q)
>+		return -ENOMEM;
>+
>+	airoha_qdma_wr(eth, REG_FWD_BUF_BASE, dma_addr);
>+
>+	airoha_qdma_rmw(eth, REG_HW_FWD_DSCP_CFG,
>+			HW_FWD_DSCP_PAYLOAD_SIZE_MASK,
>+			FIELD_PREP(HW_FWD_DSCP_PAYLOAD_SIZE_MASK, 0));
>+	airoha_qdma_rmw(eth, REG_FWD_DSCP_LOW_THR,
>FWD_DSCP_LOW_THR_MASK,
>+			FIELD_PREP(FWD_DSCP_LOW_THR_MASK, 128));
>+	airoha_qdma_rmw(eth, REG_LMGR_INIT_CFG,
>+			LMGR_INIT_START | LMGR_SRAM_MODE_MASK |
>+			HW_FWD_DESC_NUM_MASK,
>+			FIELD_PREP(HW_FWD_DESC_NUM_MASK,
>HW_DSCP_NUM) |
>+			LMGR_INIT_START);
>+
>+	return read_poll_timeout(airoha_qdma_rr, status,
>+				 !(status & LMGR_INIT_START),
>USEC_PER_MSEC,
>+				 30 * USEC_PER_MSEC, true, eth,
>+				 REG_LMGR_INIT_CFG);
>+}
>+
>+static void airoha_qdma_init_qos(struct airoha_eth *eth)
>+{
>+	airoha_qdma_clear(eth, REG_TXWRR_MODE_CFG,
>TWRR_WEIGHT_SCALE_MASK);
>+	airoha_qdma_set(eth, REG_TXWRR_MODE_CFG,
>TWRR_WEIGHT_BASE_MASK);
>+
>+	airoha_qdma_clear(eth, REG_PSE_BUF_USAGE_CFG,
>+			  PSE_BUF_ESTIMATE_EN_MASK);
>+
>+	airoha_qdma_set(eth, REG_EGRESS_RATE_METER_CFG,
>+			EGRESS_RATE_METER_EN_MASK |
>+			EGRESS_RATE_METER_EQ_RATE_EN_MASK);
>+	/* 2047us x 31 =3D 63.457ms */
>+	airoha_qdma_rmw(eth, REG_EGRESS_RATE_METER_CFG,
>+			EGRESS_RATE_METER_WINDOW_SZ_MASK,
>+			FIELD_PREP(EGRESS_RATE_METER_WINDOW_SZ_MASK,
>0x1f));
>+	airoha_qdma_rmw(eth, REG_EGRESS_RATE_METER_CFG,
>+			EGRESS_RATE_METER_TIMESLICE_MASK,
>+			FIELD_PREP(EGRESS_RATE_METER_TIMESLICE_MASK,
>0x7ff));
>+
>+	/* ratelimit init */
>+	airoha_qdma_set(eth, REG_GLB_TRTCM_CFG, GLB_TRTCM_EN_MASK);
>+	airoha_qdma_rmw(eth, REG_GLB_TRTCM_CFG, GLB_FAST_TICK_MASK,
>+			FIELD_PREP(GLB_FAST_TICK_MASK, 25)); /* fast-tick
>25us */
>+	airoha_qdma_rmw(eth, REG_GLB_TRTCM_CFG,
>GLB_SLOW_TICK_RATIO_MASK,
>+			FIELD_PREP(GLB_SLOW_TICK_RATIO_MASK, 40));
>+
>+	airoha_qdma_set(eth, REG_EGRESS_TRTCM_CFG,
>EGRESS_TRTCM_EN_MASK);
>+	airoha_qdma_rmw(eth, REG_EGRESS_TRTCM_CFG,
>EGRESS_FAST_TICK_MASK,
>+			FIELD_PREP(EGRESS_FAST_TICK_MASK, 25));
>+	airoha_qdma_rmw(eth, REG_EGRESS_TRTCM_CFG,
>+			EGRESS_SLOW_TICK_RATIO_MASK,
>+			FIELD_PREP(EGRESS_SLOW_TICK_RATIO_MASK, 40));
>+
>+	airoha_qdma_set(eth, REG_INGRESS_TRTCM_CFG,
>INGRESS_TRTCM_EN_MASK);
>+	airoha_qdma_clear(eth, REG_INGRESS_TRTCM_CFG,
>+			  INGRESS_TRTCM_MODE_MASK);
>+	airoha_qdma_rmw(eth, REG_INGRESS_TRTCM_CFG,
>INGRESS_FAST_TICK_MASK,
>+			FIELD_PREP(INGRESS_FAST_TICK_MASK, 125));
>+	airoha_qdma_rmw(eth, REG_INGRESS_TRTCM_CFG,
>+			INGRESS_SLOW_TICK_RATIO_MASK,
>+			FIELD_PREP(INGRESS_SLOW_TICK_RATIO_MASK, 8));
>+
>+	airoha_qdma_set(eth, REG_SLA_TRTCM_CFG, SLA_TRTCM_EN_MASK);
>+	airoha_qdma_rmw(eth, REG_SLA_TRTCM_CFG, SLA_FAST_TICK_MASK,
>+			FIELD_PREP(SLA_FAST_TICK_MASK, 25));
>+	airoha_qdma_rmw(eth, REG_SLA_TRTCM_CFG,
>SLA_SLOW_TICK_RATIO_MASK,
>+			FIELD_PREP(SLA_SLOW_TICK_RATIO_MASK, 40));
>+}
>+
>+static int airoha_qdma_hw_init(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	/* clear pending irqs */
>+	for (i =3D 0; i < ARRAY_SIZE(eth->irqmask); i++)
>+		airoha_qdma_wr(eth, REG_INT_STATUS(i), 0xffffffff);
>+
>+	/* setup irqs */
>+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX0, INT_IDX0_MASK);
>+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX1, INT_IDX1_MASK);
>+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX4, INT_IDX4_MASK);
>+
>+	/* setup irq binding */
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx); i++) {
>+		if (TX_RING_IRQ_BLOCKING_MAP_MASK & BIT(i))
>+			airoha_qdma_set(eth, REG_TX_RING_BLOCKING(i),
>+					TX_RING_IRQ_BLOCKING_CFG_MASK);
>+		else
>+			airoha_qdma_clear(eth, REG_TX_RING_BLOCKING(i),
>+					  TX_RING_IRQ_BLOCKING_CFG_MASK);
>+	}
>+
>+	airoha_qdma_wr(eth, REG_QDMA_GLOBAL_CFG,
>+		       GLOBAL_CFG_RX_2B_OFFSET |
>+		       FIELD_PREP(GLOBAL_CFG_DMA_PREFERENCE_MASK, 3) |
>+		       GLOBAL_CFG_CPU_TXR_ROUND_ROBIN |
>+		       GLOBAL_CFG_PAYLOAD_BYTE_SWAP |
>+		       GLOBAL_CFG_MULTICAST_MODIFY_FP |
>+		       GLOBAL_CFG_MULTICAST_EN_MASK |
>+		       GLOBAL_CFG_IRQ0_EN | GLOBAL_CFG_IRQ1_EN |
>+		       GLOBAL_CFG_TX_WB_DONE |
>+		       FIELD_PREP(GLOBAL_CFG_MAX_ISSUE_NUM_MASK, 2));
>+
>+	airoha_qdma_init_qos(eth);
>+
>+	/* disable qdma rx delay interrupt */
>+	airoha_qdma_for_each_q_rx(eth, i)
>+		airoha_qdma_clear(eth, REG_RX_DELAY_INT_IDX(i),
>+				  RX_DELAY_INT_MASK);
>+
>+	airoha_qdma_set(eth, REG_TXQ_CNGST_CFG,
>+			TXQ_CNGST_DROP_EN | TXQ_CNGST_DEI_DROP_EN);
>+
>+	return 0;
>+}
>+
>+static irqreturn_t airoha_irq_handler(int irq, void *dev_instance)
>+{
>+	struct airoha_eth *eth =3D dev_instance;
>+	u32 intr[ARRAY_SIZE(eth->irqmask)];
>+	int i;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->irqmask); i++) {
>+		intr[i] =3D airoha_qdma_rr(eth, REG_INT_STATUS(i));
>+		intr[i] &=3D eth->irqmask[i];
>+		airoha_qdma_wr(eth, REG_INT_STATUS(i), intr[i]);
>+	}
>+
>+	if (!test_bit(DEV_STATE_INITIALIZED, &eth->state))
>+		return IRQ_NONE;
>+
>+	if (intr[1] & RX_DONE_INT_MASK) {
>+		airoha_qdma_irq_disable(eth, QDMA_INT_REG_IDX1,
>+					RX_DONE_INT_MASK);
>+		airoha_qdma_for_each_q_rx(eth, i) {
>+			if (intr[1] & BIT(i))
>+				napi_schedule(&eth->q_rx[i].napi);
>+		}
>+	}
>+
>+	if (intr[0] & INT_TX_MASK) {
>+		for (i =3D 0; i < ARRAY_SIZE(eth->q_tx_irq); i++) {
>+			struct airoha_tx_irq_queue *irq_q =3D &eth->q_tx_irq[i];
>+			u32 status, head;
>+
>+			if (!(intr[0] & TX_DONE_INT_MASK(i)))
>+				continue;
>+
>+			airoha_qdma_irq_disable(eth, QDMA_INT_REG_IDX0,
>+						TX_DONE_INT_MASK(i));
>+
>+			status =3D airoha_qdma_rr(eth, REG_IRQ_STATUS(i));
>+			head =3D FIELD_GET(IRQ_HEAD_IDX_MASK, status);
>+			irq_q->head =3D head % irq_q->size;
>+			irq_q->queued =3D FIELD_GET(IRQ_ENTRY_LEN_MASK,
>status);
>+
>+			napi_schedule(&eth->q_tx_irq[i].napi);
>+		}
>+	}
>+
>+	return IRQ_HANDLED;
>+}
>+
>+static int airoha_qdma_init(struct airoha_eth *eth)
>+{
>+	struct device *dev =3D eth->net_dev->dev.parent;
>+	int err;
>+
>+	err =3D devm_request_irq(dev, eth->irq, airoha_irq_handler,
>+			       IRQF_SHARED, KBUILD_MODNAME, eth);
>+	if (err)
>+		return err;
>+
>+	err =3D airoha_qdma_init_rx(eth);
>+	if (err)
>+		return err;
>+
>+	err =3D airoha_qdma_init_tx(eth);
>+	if (err)
>+		return err;
>+
>+	err =3D airoha_qdma_init_hfwd_queues(eth);
>+	if (err)
>+		return err;
>+
>+	err =3D airoha_qdma_hw_init(eth);
>+	if (err)
>+		return err;
>+
>+	set_bit(DEV_STATE_INITIALIZED, &eth->state);
>+
>+	return 0;
>+}
>+
>+static int airoha_hw_init(struct airoha_eth *eth)
>+{
>+	int err;
>+
>+	/* disable xsi */
>+	reset_control_bulk_assert(ARRAY_SIZE(eth->xsi_rsts), eth->xsi_rsts);
>+
>+	reset_control_bulk_assert(ARRAY_SIZE(eth->rsts), eth->rsts);
>+	msleep(20);
>+	reset_control_bulk_deassert(ARRAY_SIZE(eth->rsts), eth->rsts);
>+	msleep(20);
>+
>+	err =3D airoha_fe_init(eth);
>+	if (err)
>+		return err;
>+
>+	return airoha_qdma_init(eth);
>+}
>+
>+static int airoha_dev_open(struct net_device *dev)
>+{
>+	struct airoha_eth *eth =3D netdev_priv(dev);
>+	int err;
>+
>+	if (netdev_uses_dsa(dev))
>+		airoha_fe_set(eth, REG_GDM1_INGRESS_CFG,
>GDM1_STAG_EN_MASK);
>+	else
>+		airoha_fe_clear(eth, REG_GDM1_INGRESS_CFG,
>GDM1_STAG_EN_MASK);
>+
>+	netif_tx_start_all_queues(dev);
>+	err =3D airoha_set_gdma_ports(eth, true);
>+	if (err)
>+		return err;
>+
>+	airoha_qdma_set(eth, REG_QDMA_GLOBAL_CFG,
>GLOBAL_CFG_TX_DMA_EN);
>+	airoha_qdma_set(eth, REG_QDMA_GLOBAL_CFG,
>GLOBAL_CFG_RX_DMA_EN);
>+
>+	return 0;
>+}
>+
>+static int airoha_dev_stop(struct net_device *dev)
>+{
>+	struct airoha_eth *eth =3D netdev_priv(dev);
>+	int err;
>+
>+	netif_tx_disable(dev);
>+	err =3D airoha_set_gdma_ports(eth, false);
>+	if (err)
>+		return err;
>+
>+	airoha_qdma_clear(eth, REG_QDMA_GLOBAL_CFG,
>GLOBAL_CFG_TX_DMA_EN);
>+	airoha_qdma_clear(eth, REG_QDMA_GLOBAL_CFG,
>GLOBAL_CFG_RX_DMA_EN);
>+
>+	return 0;
>+}
>+
>+static int airoha_dev_set_macaddr(struct net_device *dev, void *p)
>+{
>+	struct airoha_eth *eth =3D netdev_priv(dev);
>+	int err;
>+
>+	err =3D eth_mac_addr(dev, p);
>+	if (err)
>+		return err;
>+
>+	airoha_set_macaddr(eth, dev->dev_addr);
>+
>+	return 0;
>+}
>+
>+static int airoha_dev_init(struct net_device *dev)
>+{
>+	struct airoha_eth *eth =3D netdev_priv(dev);
>+
>+	airoha_set_macaddr(eth, dev->dev_addr);
>+
>+	return 0;
>+}
>+
>+static netdev_tx_t airoha_dev_xmit(struct sk_buff *skb,
>+				   struct net_device *dev)
>+{
>+	struct skb_shared_info *sinfo =3D skb_shinfo(skb);
>+	u32 nr_frags =3D 1 + sinfo->nr_frags, msg0 =3D 0, msg1;
>+	struct airoha_eth *eth =3D netdev_priv(dev);
>+	int i, qid =3D skb_get_queue_mapping(skb);
>+	u32 len =3D skb_headlen(skb);
>+	struct airoha_queue *q;
>+	void *data =3D skb->data;
>+	u16 index;
>+
>+	if (skb->ip_summed =3D=3D CHECKSUM_PARTIAL)
>+		msg0 |=3D FIELD_PREP(QDMA_ETH_TXMSG_TCO_MASK, 1) |
>+			FIELD_PREP(QDMA_ETH_TXMSG_UCO_MASK, 1) |
>+			FIELD_PREP(QDMA_ETH_TXMSG_ICO_MASK, 1);
>+
>+	/* TSO: fill MSS info in tcp checksum field */
>+	if (skb_is_gso(skb)) {
>+		if (skb_cow_head(skb, 0))
>+			goto error;
>+
>+		if (sinfo->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {
>+			tcp_hdr(skb)->check =3D cpu_to_be16(sinfo->gso_size);
>+			msg0 |=3D FIELD_PREP(QDMA_ETH_TXMSG_TSO_MASK,
>1);
>+		}
>+	}
>+
>+	msg1 =3D FIELD_PREP(QDMA_ETH_TXMSG_FPORT_MASK, DPORT_GDM1) |
>+	       FIELD_PREP(QDMA_ETH_TXMSG_METER_MASK, 0x7f);
>+
>+	if (WARN_ON_ONCE(qid >=3D ARRAY_SIZE(eth->q_tx)))
>+		qid =3D 0;
>+
>+	q =3D &eth->q_tx[qid];
>+	spin_lock_bh(&q->lock);
>+
>+	if (q->queued + nr_frags > q->ndesc) {
>+		/* not enough space in the queue */
>+		spin_unlock_bh(&q->lock);
>+		return NETDEV_TX_BUSY;
>+	}
>+
>+	index =3D q->head;
>+	for (i =3D 0; i < nr_frags; i++) {
>+		struct airoha_qdma_desc *desc =3D &q->desc[index];
>+		struct airoha_queue_entry *e =3D &q->entry[index];
>+		skb_frag_t *frag =3D &sinfo->frags[i];
>+		dma_addr_t addr;
>+		u32 val;
>+
>+		addr =3D dma_map_single(dev->dev.parent, data, len,
>+				      DMA_TO_DEVICE);
>+		if (unlikely(dma_mapping_error(dev->dev.parent, addr)))
>+			goto error_unmap;
>+
>+		index =3D (index + 1) % q->ndesc;
>+
>+		val =3D FIELD_PREP(QDMA_DESC_LEN_MASK, len);
>+		if (i < nr_frags - 1)
>+			val |=3D FIELD_PREP(QDMA_DESC_MORE_MASK, 1);
>+		WRITE_ONCE(desc->ctrl, cpu_to_le32(val));
>+		WRITE_ONCE(desc->addr, cpu_to_le32(addr));
>+		val =3D FIELD_PREP(QDMA_DESC_NEXT_ID_MASK, index);
>+		WRITE_ONCE(desc->data, cpu_to_le32(val));
>+		WRITE_ONCE(desc->msg0, cpu_to_le32(msg0));
>+		WRITE_ONCE(desc->msg1, cpu_to_le32(msg1));
>+		WRITE_ONCE(desc->msg2, cpu_to_le32(0xffff));
>+
>+		e->skb =3D i ? NULL : skb;
>+		e->dma_addr =3D addr;
>+		e->dma_len =3D len;
>+
>+		wmb();
>+		airoha_qdma_rmw(eth, REG_TX_CPU_IDX(qid),
>TX_RING_CPU_IDX_MASK,
>+				FIELD_PREP(TX_RING_CPU_IDX_MASK, index));
>+
>+		data =3D skb_frag_address(frag);
>+		len =3D skb_frag_size(frag);
>+	}
>+
>+	q->head =3D index;
>+	q->queued +=3D i;
>+
>+	if (q->queued + q->free_thr >=3D q->ndesc)
>+		netif_stop_subqueue(dev, qid);
>+
>+	spin_unlock_bh(&q->lock);
>+
>+	return NETDEV_TX_OK;
>+
>+error_unmap:
>+	for (; i >=3D 0; i++)
>+		dma_unmap_single(dev->dev.parent, q->entry[i].dma_addr,
>+				 q->entry[i].dma_len, DMA_TO_DEVICE);
>+
>+	spin_unlock_bh(&q->lock);
>+error:
>+	dev_kfree_skb_any(skb);
>+	dev->stats.tx_dropped++;
>+
>+	return NETDEV_TX_OK;
>+}
>+
>+static int airoha_dev_change_mtu(struct net_device *dev, int new_mtu)
>+{
>+	dev->mtu =3D new_mtu;
>+
>+	return 0;
>+}
>+
>+static const struct net_device_ops airoha_netdev_ops =3D {
>+	.ndo_init		=3D airoha_dev_init,
>+	.ndo_open		=3D airoha_dev_open,
>+	.ndo_stop		=3D airoha_dev_stop,
>+	.ndo_start_xmit		=3D airoha_dev_xmit,
>+	.ndo_change_mtu		=3D airoha_dev_change_mtu,
>+	.ndo_set_mac_address	=3D airoha_dev_set_macaddr,
>+};
>+
>+static int airoha_rx_queues_show(struct seq_file *s, void *data)
>+{
>+	struct airoha_eth *eth =3D s->private;
>+	int i;
>+
>+	seq_puts(s, "     queue | hw-queued |      head |      tail |\n");
>+	airoha_qdma_for_each_q_rx(eth, i) {
>+		struct airoha_queue *q =3D &eth->q_rx[i];
>+
>+		seq_printf(s, " %9d | %9d | %9d | %9d |\n",
>+			   i, q->queued, q->head, q->tail);
>+	}
>+
>+	return 0;
>+}
>+DEFINE_SHOW_ATTRIBUTE(airoha_rx_queues);
>+
>+static int airoha_xmit_queues_show(struct seq_file *s, void *data)
>+{
>+	struct airoha_eth *eth =3D s->private;
>+	int i;
>+
>+	seq_puts(s, "     queue | hw-queued |      head |      tail |\n");
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx); i++) {
>+		struct airoha_queue *q =3D &eth->q_tx[i];
>+
>+		seq_printf(s, " %9d | %9d | %9d | %9d |\n",
>+			   i, q->queued, q->head, q->tail);
>+	}
>+
>+	return 0;
>+}
>+DEFINE_SHOW_ATTRIBUTE(airoha_xmit_queues);
>+
>+static int airoha_register_debugfs(struct airoha_eth *eth)
>+{
>+	eth->debugfs_dir =3D debugfs_create_dir(KBUILD_MODNAME, NULL);
>+	if (IS_ERR(eth->debugfs_dir))
>+		return PTR_ERR(eth->debugfs_dir);
>+
>+	debugfs_create_file("rx-queues", 0400, eth->debugfs_dir, eth,
>+			    &airoha_rx_queues_fops);
>+	debugfs_create_file("xmit-queues", 0400, eth->debugfs_dir, eth,
>+			    &airoha_xmit_queues_fops);
>+
>+	return 0;
>+}
>+
>+static int airoha_probe(struct platform_device *pdev)
>+{
>+	struct device_node *np =3D pdev->dev.of_node;
>+	struct net_device *dev;
>+	struct airoha_eth *eth;
>+	int err;
>+
>+	dev =3D devm_alloc_etherdev_mqs(&pdev->dev, sizeof(*eth),
>+				      AIROHA_NUM_TX_RING,
>AIROHA_NUM_RX_RING);
>+	if (!dev) {
>+		dev_err(&pdev->dev, "alloc_etherdev failed\n");
>+		return -ENOMEM;
>+	}
>+
>+	eth =3D netdev_priv(dev);
>+	eth->net_dev =3D dev;
>+
>+	err =3D dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
>+	if (err) {
>+		dev_err(&pdev->dev, "failed configuring DMA mask\n");
>+		return err;
>+	}
>+
>+	eth->fe_regs =3D devm_platform_ioremap_resource_byname(pdev, "fe");
>+	if (IS_ERR(eth->fe_regs))
>+		return dev_err_probe(&pdev->dev, PTR_ERR(eth->fe_regs),
>+				     "failed to iomap fe regs\n");
>+
>+	eth->qdma_regs =3D devm_platform_ioremap_resource_byname(pdev,
>"qdma0");
>+	if (IS_ERR(eth->qdma_regs))
>+		return dev_err_probe(&pdev->dev, PTR_ERR(eth->qdma_regs),
>+				     "failed to iomap qdma regs\n");
>+
>+	eth->rsts[0].id =3D "fe";
>+	eth->rsts[1].id =3D "pdma";
>+	eth->rsts[2].id =3D "qdma";
>+	err =3D devm_reset_control_bulk_get_exclusive(&pdev->dev,
>+						    ARRAY_SIZE(eth->rsts),
>+						    eth->rsts);
>+	if (err) {
>+		dev_err(&pdev->dev, "failed to get bulk reset lines\n");
>+		return err;
>+	}
>+
>+	eth->xsi_rsts[0].id =3D "xsi-mac";
>+	eth->xsi_rsts[1].id =3D "hsi0-mac";
>+	eth->xsi_rsts[2].id =3D "hsi1-mac";
>+	eth->xsi_rsts[3].id =3D "hsi-mac";
>+	err =3D devm_reset_control_bulk_get_exclusive(&pdev->dev,
>+						    ARRAY_SIZE(eth->xsi_rsts),
>+						    eth->xsi_rsts);
>+	if (err) {
>+		dev_err(&pdev->dev, "failed to get bulk xsi reset lines\n");
>+		return err;
>+	}
>+
>+	spin_lock_init(&eth->irq_lock);
>+	eth->irq =3D platform_get_irq(pdev, 0);
>+	if (eth->irq < 0) {
>+		dev_err(&pdev->dev, "failed reading irq line\n");
>+		return eth->irq;
>+	}
>+
>+	dev->netdev_ops =3D &airoha_netdev_ops;
>+	dev->max_mtu =3D AIROHA_MAX_MTU;
>+	dev->watchdog_timeo =3D 5 * HZ;
>+	dev->hw_features =3D NETIF_F_IP_CSUM | NETIF_F_RXCSUM |
>+			   NETIF_F_TSO6 | NETIF_F_IPV6_CSUM |
>+			   NETIF_F_SG | NETIF_F_TSO;
>+	dev->features |=3D dev->hw_features;
>+	dev->dev.of_node =3D np;
>+	dev->irq =3D eth->irq;
>+	SET_NETDEV_DEV(dev, &pdev->dev);
>+
>+	err =3D of_get_ethdev_address(np, dev);
>+	if (err) {
>+		if (err =3D=3D -EPROBE_DEFER)
>+			return err;
>+
>+		eth_hw_addr_random(dev);
>+		dev_err(&pdev->dev, "generated random MAC address %pM\n",
>+			dev->dev_addr);
>+	}
>+
>+	err =3D airoha_hw_init(eth);
>+	if (err)
>+		return err;
>+
>+	airoha_qdma_start_napi(eth);
>+	err =3D register_netdev(dev);
>+	if (err)
>+		return err;
>+
>+	err =3D airoha_register_debugfs(eth);
>+	if (err)
>+		return err;
>+
>+	platform_set_drvdata(pdev, eth);
>+
>+	return 0;
>+}
>+
>+static void airoha_remove(struct platform_device *pdev)
>+{
>+	struct airoha_eth *eth =3D platform_get_drvdata(pdev);
>+	int i;
>+
>+	debugfs_remove(eth->debugfs_dir);
>+
>+	airoha_qdma_for_each_q_rx(eth, i) {
>+		struct airoha_queue *q =3D &eth->q_rx[i];
>+
>+		netif_napi_del(&q->napi);
>+		airoha_qdma_clenaup_rx_queue(q);
>+		page_pool_destroy(q->page_pool);
>+	}
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx_irq); i++)
>+		netif_napi_del(&eth->q_tx_irq[i].napi);
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx); i++)
>+		airoha_qdma_clenaup_tx_queue(&eth->q_tx[i]);
>+}
>+
>+const struct of_device_id of_airoha_match[] =3D {
>+	{ .compatible =3D "airoha,en7581-eth" },
>+	{ /* sentinel */ }
>+};
>+
>+static struct platform_driver airoha_driver =3D {
>+	.probe =3D airoha_probe,
>+	.remove_new =3D airoha_remove,
>+	.driver =3D {
>+		.name =3D KBUILD_MODNAME,
>+		.of_match_table =3D of_airoha_match,
>+	},
>+};
>+module_platform_driver(airoha_driver);
>+
>+MODULE_LICENSE("GPL");
>+MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
>+MODULE_DESCRIPTION("Ethernet driver for Airoha SoC");
>diff --git a/drivers/net/ethernet/mediatek/airoha_eth.h
>b/drivers/net/ethernet/mediatek/airoha_eth.h
>new file mode 100644
>index 000000000000..e88fecfac44f
>--- /dev/null
>+++ b/drivers/net/ethernet/mediatek/airoha_eth.h
>@@ -0,0 +1,719 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/*
>+ * Copyright (C) 2024 Lorenzo Bianconi <lorenzo@kernel.org>
>+ */
>+
>+#define AIROHA_MAX_NUM_RSTS		3
>+#define AIROHA_MAX_NUM_XSI_RSTS		4
>+#define AIROHA_MAX_MTU			2000
>+#define AIROHA_MAX_PACKET_SIZE		2048
>+#define AIROHA_NUM_TX_RING		32
>+#define AIROHA_NUM_RX_RING		32
>+#define AIROHA_FE_MC_MAX_VLAN_TABLE	64
>+#define AIROHA_FE_MC_MAX_VLAN_PORT	16
>+#define AIROHA_NUM_TX_IRQ		2
>+#define HW_DSCP_NUM			2048
>+#define IRQ_QUEUE_LEN(_n)		((_n) ? 1024 : 2048)
>+#define TX_DSCP_NUM			1024
>+#define RX_DSCP_NUM(_n)			\
>+	((_n) =3D=3D  2 ? 128 :		\
>+	 (_n) =3D=3D 11 ? 128 :		\
>+	 (_n) =3D=3D 15 ? 128 :		\
>+	 (_n) =3D=3D  0 ? 1024 : 16)
>+
>+/* FE */
>+#define PSE_BASE			0x0100
>+#define CSR_IFC_BASE			0x0200
>+#define CDM1_BASE			0x0400
>+#define GDM1_BASE			0x0500
>+#define PPE1_BASE			0x0c00
>+
>+#define CDM2_BASE			0x1400
>+#define GDM2_BASE			0x1500
>+
>+#define GDM3_BASE			0x1100
>+#define GDM4_BASE			0x2400
>+
>+#define REG_FE_DMA_GLO_CFG		0x0000
>+#define FE_DMA_GLO_L2_SPACE_MASK	GENMASK(7, 4)
>+#define FE_DMA_GLO_PG_SZ_MASK		BIT(3)
>+
>+#define REG_FE_RST_GLO_CFG		0x0004
>+#define FE_RST_GDM4_MBI_ARB_MASK	BIT(3)
>+#define FE_RST_GDM3_MBI_ARB_MASK	BIT(2)
>+#define FE_RST_CORE_MASK		BIT(0)
>+
>+#define REG_FE_LAN_MAC_H		0x0040
>+#define REG_FE_LAN_MAC_LMIN		0x0044
>+#define REG_FE_LAN_MAC_LMAX		0x0048
>+
>+#define REG_FE_CDM1_OQ_MAP0		0x0050
>+#define REG_FE_CDM1_OQ_MAP1		0x0054
>+#define REG_FE_CDM1_OQ_MAP2		0x0058
>+#define REG_FE_CDM1_OQ_MAP3		0x005c
>+
>+#define REG_FE_PCE_CFG			0x0070
>+#define PCE_DPI_EN			BIT(2)
>+#define PCE_KA_EN			BIT(1)
>+#define PCE_MC_EN			BIT(0)
>+
>+#define PSE_PORT0_QUEUE			6
>+#define PSE_PORT1_QUEUE			6
>+#define PSE_PORT2_QUEUE			32
>+#define PSE_PORT3_QUEUE			6
>+#define PSE_PORT4_QUEUE			4
>+#define PSE_PORT5_QUEUE			6
>+#define PSE_PORT6_QUEUE			8
>+#define PSE_PORT7_QUEUE			10
>+#define PSE_PORT8_QUEUE			4
>+#define PSE_PORT9_QUEUE			2
>+#define PSE_PORT10_QUEUE		2
>+#define PSE_PORT11_QUEUE		0
>+#define PSE_PORT12_QUEUE		0
>+#define PSE_PORT13_QUEUE		0
>+#define PSE_PORT14_QUEUE		0
>+#define PSE_PORT15_QUEUE		0
>+
>+#define REG_FE_PSE_QUEUE_CFG_WR		0x0080
>+#define PSE_CFG_PORT_ID_MASK		GENMASK(27, 24)
>+#define PSE_CFG_QUEUE_ID_MASK		GENMASK(20, 16)
>+#define PSE_CFG_WR_EN_MASK		BIT(8)
>+#define PSE_CFG_OQRSV_SEL_MASK		BIT(0)
>+
>+#define REG_FE_PSE_QUEUE_CFG_VAL	0x0084
>+#define PSE_CFG_OQ_RSV_MASK		GENMASK(13, 0)
>+
>+#define PSE_FQ_CFG			0x008c
>+#define PSE_FQ_LIMIT_MASK		GENMASK(14, 0)
>+
>+#define REG_FE_PSE_BUF_SET		0x0090
>+#define PSE_SHARE_USED_LTHD_MASK	GENMASK(31, 16)
>+#define PSE_ALLRSV_MASK			GENMASK(14, 0)
>+
>+#define REG_PSE_SHARE_USED_THD		0x0094
>+#define PSE_SHARE_USED_MTHD_MASK	GENMASK(31, 16)
>+#define PSE_SHARE_USED_HTHD_MASK	GENMASK(15, 0)
>+
>+#define REG_GDM_MISC_CFG		0x0148
>+#define GDM2_RDM_ACK_WAIT_PREF_MASK	BIT(9)
>+#define GDM2_CHN_VLD_MODE_MASK		BIT(5)
>+
>+#define REG_FE_CSR_IFC_CFG		CSR_IFC_BASE
>+#define FE_IFC_EN_MASK			BIT(0)
>+
>+#define REG_FE_VIP_PORT_EN		0x01f0
>+#define REG_FE_IFC_PORT_EN		0x01f4
>+
>+#define REG_PSE_IQ_REV1			(PSE_BASE + 0x08)
>+#define PSE_IQ_RES1_P2_MASK		GENMASK(23, 16)
>+
>+#define REG_PSE_IQ_REV2			(PSE_BASE + 0x0c)
>+#define PSE_IQ_RES2_P5_MASK		GENMASK(15, 8)
>+#define PSE_IQ_RES2_P4_MASK		GENMASK(7, 0)
>+
>+#define REG_FE_VIP_EN(_n)		(0x0300 + ((_n) << 3))
>+#define PATN_FCPU_EN_MASK		BIT(7)
>+#define PATN_SWP_EN_MASK		BIT(6)
>+#define PATN_DP_EN_MASK			BIT(5)
>+#define PATN_SP_EN_MASK			BIT(4)
>+#define PATN_TYPE_MASK			GENMASK(3, 1)
>+#define PATN_EN_MASK			BIT(0)
>+
>+#define REG_FE_VIP_PATN(_n)		(0x0304 + ((_n) << 3))
>+#define PATN_DP_MASK			GENMASK(31, 16)
>+#define PATN_SP_MASK			GENMASK(15, 0)
>+
>+#define REG_CDM1_VLAN_CTRL		CDM1_BASE
>+#define CDM1_VLAN_MASK			GENMASK(31, 16)
>+
>+#define REG_CDM1_FWD_CFG		(CDM1_BASE + 0x08)
>+#define CDM1_VIP_QSEL_MASK		GENMASK(24, 20)
>+
>+#define REG_CDM1_CRSN_QSEL(_n)		(CDM1_BASE + 0x10 + ((_n) <<
>2))
>+#define CDM1_CRSN_QSEL_REASON_MASK(_n)	\
>+	GENMASK(4 + (((_n) % 4) << 3), (((_n) % 4 ) << 3))
>+
>+#define REG_CDM2_FWD_CFG		(CDM2_BASE + 0x08)
>+#define CDM2_OAM_QSEL_MASK		GENMASK(31, 27)
>+#define CDM2_VIP_QSEL_MASK		GENMASK(24, 20)
>+
>+#define REG_CDM2_CRSN_QSEL(_n)		(CDM2_BASE + 0x10 + ((_n) <<
>2))
>+#define CDM2_CRSN_QSEL_REASON_MASK(_n)	\
>+	GENMASK(4 + (((_n) % 4) << 3), (((_n) % 4 ) << 3))
>+
>+#define REG_GDM1_FWD_CFG		GDM1_BASE
>+#define GDM1_DROP_CRC_ERR		BIT(23)
>+#define GDM1_IP4_CKSUM			BIT(22)
>+#define GDM1_TCP_CKSUM			BIT(21)
>+#define GDM1_UDP_CKSUM			BIT(20)
>+#define GDM1_UCFQ_MASK			GENMASK(15, 12)
>+#define GDM1_BCFQ_MASK			GENMASK(11, 8)
>+#define GDM1_MCFQ_MASK			GENMASK(7, 4)
>+#define GDM1_OCFQ_MASK			GENMASK(3, 0)
>+
>+#define REG_GDM1_INGRESS_CFG		(GDM1_BASE + 0x10)
>+#define GDM1_INGRESS_FC_EN_MASK		BIT(1)
>+#define GDM1_STAG_EN_MASK		BIT(0)
>+
>+#define REG_GDM1_LEN_CFG		(GDM1_BASE + 0x14)
>+#define GDM1_SHORT_LEN_MASK		GENMASK(13, 0)
>+#define GDM1_LONG_LEN_MASK		GENMASK(29, 16)
>+
>+#define REG_FE_CPORT_CFG		(GDM1_BASE + 0x40)
>+#define FE_CPORT_PAD			BIT(26)
>+#define FE_CPORT_PORT_XFC_MASK		BIT(25)
>+#define FE_CPORT_QUEUE_XFC_MASK		BIT(24)
>+
>+#define REG_PPE1_TB_HASH_CFG		(PPE1_BASE + 0x250)
>+#define PPE1_SRAM_TABLE_EN_MASK		BIT(0)
>+#define PPE1_SRAM_HASH1_EN_MASK		BIT(8)
>+#define PPE1_DRAM_TABLE_EN_MASK		BIT(16)
>+#define PPE1_DRAM_HASH1_EN_MASK		BIT(24)
>+
>+#define REG_GDM2_CHN_RLS		(GDM2_BASE + 0x20)
>+#define MBI_RX_AGE_SEL_MASK		GENMASK(18, 17)
>+#define MBI_TX_AGE_SEL_MASK		GENMASK(18, 17)
>+
>+#define REG_GDM3_FWD_CFG		GDM3_BASE
>+#define GDM3_PAD_EN_MASK		BIT(28)
>+
>+#define REG_GDM4_FWD_CFG		(GDM4_BASE + 0x100)
>+#define GDM4_PAD_EN_MASK		BIT(28)
>+#define GDM4_SPORT_OFFSET0_MASK		GENMASK(11, 8)
>+
>+#define REG_GDM4_SRC_PORT_SET		(GDM4_BASE + 0x33c)
>+#define GDM4_SPORT_OFF2_MASK		GENMASK(19, 16)
>+#define GDM4_SPORT_OFF1_MASK		GENMASK(15, 12)
>+#define GDM4_SPORT_OFF0_MASK		GENMASK(11, 8)
>+
>+#define REG_IP_FRAG_FP			0x2010
>+#define IP_ASSEMBLE_PORT_MASK		GENMASK(24, 21)
>+#define IP_ASSEMBLE_NBQ_MASK		GENMASK(20, 16)
>+#define IP_FRAGMENT_PORT_MASK		GENMASK(8, 5)
>+#define IP_FRAGMENT_NBQ_MASK		GENMASK(4, 0)
>+
>+#define REG_MC_VLAN_EN			0x2100
>+#define MC_VLAN_EN_MASK			BIT(0)
>+
>+#define REG_MC_VLAN_CFG			0x2104
>+#define MC_VLAN_CFG_CMD_DONE_MASK	BIT(31)
>+#define MC_VLAN_CFG_TABLE_ID_MASK	GENMASK(21, 16)
>+#define MC_VLAN_CFG_PORT_ID_MASK	GENMASK(11, 8)
>+#define MC_VLAN_CFG_TABLE_SEL_MASK	BIT(4)
>+#define MC_VLAN_CFG_RW_MASK		BIT(0)
>+
>+#define REG_MC_VLAN_DATA		0x2108
>+
>+#define REG_CDM5_RX_OQ1_DROP_CNT	0x29d4
>+
>+/* QDMA */
>+#define REG_QDMA_GLOBAL_CFG		0x0004
>+#define GLOBAL_CFG_RX_2B_OFFSET		BIT(31)
>+#define GLOBAL_CFG_DMA_PREFERENCE_MASK	GENMASK(30, 29)
>+#define GLOBAL_CFG_CPU_TXR_ROUND_ROBIN	BIT(28)
>+#define GLOBAL_CFG_DSCP_BYTE_SWAP	BIT(27)
>+#define GLOBAL_CFG_PAYLOAD_BYTE_SWAP	BIT(26)
>+#define GLOBAL_CFG_MULTICAST_MODIFY_FP	BIT(25)
>+#define GLOBAL_CFG_OAM_MODIFY_MASK	BIT(24)
>+#define GLOBAL_CFG_RESET_MASK		BIT(23)
>+#define GLOBAL_CFG_RESET_DONE_MASK	BIT(22)
>+#define GLOBAL_CFG_MULTICAST_EN_MASK	BIT(21)
>+#define GLOBAL_CFG_IRQ1_EN		BIT(20)
>+#define GLOBAL_CFG_IRQ0_EN		BIT(19)
>+#define GLOBAL_CFG_LOOPCNT_EN		BIT(18)
>+#define GLOBAL_CFG_RD_BYPASS_WR		BIT(17)
>+#define GLOBAL_CFG_QDMA_LOOPBACK	BIT(16)
>+#define GLOBAL_CFG_LPBK_RXQ_SEL_MASK	GENMASK(13, 8)
>+#define GLOBAL_CFG_CHECK_DONE		BIT(7)
>+#define GLOBAL_CFG_TX_WB_DONE		BIT(6)
>+#define GLOBAL_CFG_MAX_ISSUE_NUM_MASK	GENMASK(5, 4)
>+#define GLOBAL_CFG_RX_DMA_BUSY		BIT(3)
>+#define GLOBAL_CFG_RX_DMA_EN		BIT(2)
>+#define GLOBAL_CFG_TX_DMA_BUSY		BIT(1)
>+#define GLOBAL_CFG_TX_DMA_EN		BIT(0)
>+
>+#define REG_FWD_DSCP_BASE		0x0010
>+#define REG_FWD_BUF_BASE		0x0014
>+
>+#define REG_HW_FWD_DSCP_CFG			0x0018
>+#define HW_FWD_DSCP_PAYLOAD_SIZE_MASK		GENMASK(29, 28)
>+#define HW_FWD_DSCP_SCATTER_LEN_MASK		GENMASK(17, 16)
>+#define HW_FWD_DSCP_MIN_SCATTER_LEN_MASK	GENMASK(15, 0)
>+
>+#define REG_INT_STATUS(_n)		\
>+	(((_n) =3D=3D 4) ? 0x0730 :		\
>+	 ((_n) =3D=3D 3) ? 0x0724 :		\
>+	 ((_n) =3D=3D 2) ? 0x0720 :		\
>+	 ((_n) =3D=3D 1) ? 0x0024 : 0x0020)
>+
>+#define REG_INT_ENABLE(_n)		\
>+	(((_n) =3D=3D 4) ? 0x0750 :		\
>+	 ((_n) =3D=3D 3) ? 0x0744 :		\
>+	 ((_n) =3D=3D 2) ? 0x0740 :		\
>+	 ((_n) =3D=3D 1) ? 0x002c : 0x0028)
>+
>+/* QDMA_CSR_INT_ENABLE1 */
>+#define RX15_COHERENT_INT_MASK		BIT(31)
>+#define RX14_COHERENT_INT_MASK		BIT(30)
>+#define RX13_COHERENT_INT_MASK		BIT(29)
>+#define RX12_COHERENT_INT_MASK		BIT(28)
>+#define RX11_COHERENT_INT_MASK		BIT(27)
>+#define RX10_COHERENT_INT_MASK		BIT(26)
>+#define RX9_COHERENT_INT_MASK		BIT(25)
>+#define RX8_COHERENT_INT_MASK		BIT(24)
>+#define RX7_COHERENT_INT_MASK		BIT(23)
>+#define RX6_COHERENT_INT_MASK		BIT(22)
>+#define RX5_COHERENT_INT_MASK		BIT(21)
>+#define RX4_COHERENT_INT_MASK		BIT(20)
>+#define RX3_COHERENT_INT_MASK		BIT(19)
>+#define RX2_COHERENT_INT_MASK		BIT(18)
>+#define RX1_COHERENT_INT_MASK		BIT(17)
>+#define RX0_COHERENT_INT_MASK		BIT(16)
>+#define TX7_COHERENT_INT_MASK		BIT(15)
>+#define TX6_COHERENT_INT_MASK		BIT(14)
>+#define TX5_COHERENT_INT_MASK		BIT(13)
>+#define TX4_COHERENT_INT_MASK		BIT(12)
>+#define TX3_COHERENT_INT_MASK		BIT(11)
>+#define TX2_COHERENT_INT_MASK		BIT(10)
>+#define TX1_COHERENT_INT_MASK		BIT(9)
>+#define TX0_COHERENT_INT_MASK		BIT(8)
>+#define CNT_OVER_FLOW_INT_MASK		BIT(7)
>+#define IRQ1_FULL_INT_MASK		BIT(5)
>+#define IRQ1_INT_MASK			BIT(4)
>+#define HWFWD_DSCP_LOW_INT_MASK		BIT(3)
>+#define HWFWD_DSCP_EMPTY_INT_MASK	BIT(2)
>+#define IRQ0_FULL_INT_MASK		BIT(1)
>+#define IRQ0_INT_MASK			BIT(0)
>+
>+#define TX_DONE_INT_MASK(_n)					\
>+	((_n) ? IRQ1_INT_MASK | IRQ1_FULL_INT_MASK		\
>+	      : IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
>+
>+#define INT_TX_MASK						\
>+	(IRQ1_INT_MASK | IRQ1_FULL_INT_MASK |			\
>+	 IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
>+
>+#define INT_IDX0_MASK						\
>+	(TX0_COHERENT_INT_MASK | TX1_COHERENT_INT_MASK |	\
>+	 TX2_COHERENT_INT_MASK | TX3_COHERENT_INT_MASK |	\
>+	 TX4_COHERENT_INT_MASK | TX5_COHERENT_INT_MASK |	\
>+	 TX6_COHERENT_INT_MASK | TX7_COHERENT_INT_MASK |	\
>+	 RX0_COHERENT_INT_MASK | RX1_COHERENT_INT_MASK |	\
>+	 RX2_COHERENT_INT_MASK | RX3_COHERENT_INT_MASK |	\
>+	 RX4_COHERENT_INT_MASK | RX7_COHERENT_INT_MASK |	\
>+	 RX8_COHERENT_INT_MASK | RX9_COHERENT_INT_MASK |	\
>+	 RX15_COHERENT_INT_MASK | INT_TX_MASK)
>+
>+/* QDMA_CSR_INT_ENABLE2 */
>+#define RX15_NO_CPU_DSCP_INT_MASK	BIT(31)
>+#define RX14_NO_CPU_DSCP_INT_MASK	BIT(30)
>+#define RX13_NO_CPU_DSCP_INT_MASK	BIT(29)
>+#define RX12_NO_CPU_DSCP_INT_MASK	BIT(28)
>+#define RX11_NO_CPU_DSCP_INT_MASK	BIT(27)
>+#define RX10_NO_CPU_DSCP_INT_MASK	BIT(26)
>+#define RX9_NO_CPU_DSCP_INT_MASK	BIT(25)
>+#define RX8_NO_CPU_DSCP_INT_MASK	BIT(24)
>+#define RX7_NO_CPU_DSCP_INT_MASK	BIT(23)
>+#define RX6_NO_CPU_DSCP_INT_MASK	BIT(22)
>+#define RX5_NO_CPU_DSCP_INT_MASK	BIT(21)
>+#define RX4_NO_CPU_DSCP_INT_MASK	BIT(20)
>+#define RX3_NO_CPU_DSCP_INT_MASK	BIT(19)
>+#define RX2_NO_CPU_DSCP_INT_MASK	BIT(18)
>+#define RX1_NO_CPU_DSCP_INT_MASK	BIT(17)
>+#define RX0_NO_CPU_DSCP_INT_MASK	BIT(16)
>+#define RX15_DONE_INT_MASK		BIT(15)
>+#define RX14_DONE_INT_MASK		BIT(14)
>+#define RX13_DONE_INT_MASK		BIT(13)
>+#define RX12_DONE_INT_MASK		BIT(12)
>+#define RX11_DONE_INT_MASK		BIT(11)
>+#define RX10_DONE_INT_MASK		BIT(10)
>+#define RX9_DONE_INT_MASK		BIT(9)
>+#define RX8_DONE_INT_MASK		BIT(8)
>+#define RX7_DONE_INT_MASK		BIT(7)
>+#define RX6_DONE_INT_MASK		BIT(6)
>+#define RX5_DONE_INT_MASK		BIT(5)
>+#define RX4_DONE_INT_MASK		BIT(4)
>+#define RX3_DONE_INT_MASK		BIT(3)
>+#define RX2_DONE_INT_MASK		BIT(2)
>+#define RX1_DONE_INT_MASK		BIT(1)
>+#define RX0_DONE_INT_MASK		BIT(0)
>+
>+#define RX_DONE_INT_MASK					\
>+	(RX0_DONE_INT_MASK | RX1_DONE_INT_MASK |		\
>+	 RX2_DONE_INT_MASK | RX3_DONE_INT_MASK |		\
>+	 RX4_DONE_INT_MASK | RX7_DONE_INT_MASK |		\
>+	 RX8_DONE_INT_MASK | RX9_DONE_INT_MASK |		\
>+	 RX15_DONE_INT_MASK)
>+#define INT_IDX1_MASK						\
>+	(RX_DONE_INT_MASK |					\
>+	 RX0_NO_CPU_DSCP_INT_MASK | RX1_NO_CPU_DSCP_INT_MASK |
>	\
>+	 RX2_NO_CPU_DSCP_INT_MASK | RX3_NO_CPU_DSCP_INT_MASK |
>	\
>+	 RX4_NO_CPU_DSCP_INT_MASK | RX7_NO_CPU_DSCP_INT_MASK |
>	\
>+	 RX8_NO_CPU_DSCP_INT_MASK | RX9_NO_CPU_DSCP_INT_MASK |
>	\
>+	 RX15_NO_CPU_DSCP_INT_MASK)
>+
>+/* QDMA_CSR_INT_ENABLE5 */
>+#define TX31_COHERENT_INT_MASK		BIT(31)
>+#define TX30_COHERENT_INT_MASK		BIT(30)
>+#define TX29_COHERENT_INT_MASK		BIT(29)
>+#define TX28_COHERENT_INT_MASK		BIT(28)
>+#define TX27_COHERENT_INT_MASK		BIT(27)
>+#define TX26_COHERENT_INT_MASK		BIT(26)
>+#define TX25_COHERENT_INT_MASK		BIT(25)
>+#define TX24_COHERENT_INT_MASK		BIT(24)
>+#define TX23_COHERENT_INT_MASK		BIT(23)
>+#define TX22_COHERENT_INT_MASK		BIT(22)
>+#define TX21_COHERENT_INT_MASK		BIT(21)
>+#define TX20_COHERENT_INT_MASK		BIT(20)
>+#define TX19_COHERENT_INT_MASK		BIT(19)
>+#define TX18_COHERENT_INT_MASK		BIT(18)
>+#define TX17_COHERENT_INT_MASK		BIT(17)
>+#define TX16_COHERENT_INT_MASK		BIT(16)
>+#define TX15_COHERENT_INT_MASK		BIT(15)
>+#define TX14_COHERENT_INT_MASK		BIT(14)
>+#define TX13_COHERENT_INT_MASK		BIT(13)
>+#define TX12_COHERENT_INT_MASK		BIT(12)
>+#define TX11_COHERENT_INT_MASK		BIT(11)
>+#define TX10_COHERENT_INT_MASK		BIT(10)
>+#define TX9_COHERENT_INT_MASK		BIT(9)
>+#define TX8_COHERENT_INT_MASK		BIT(8)
>+
>+#define INT_IDX4_MASK						\
>+	(TX8_COHERENT_INT_MASK | TX9_COHERENT_INT_MASK |	\
>+	 TX10_COHERENT_INT_MASK | TX11_COHERENT_INT_MASK |	\
>+	 TX12_COHERENT_INT_MASK | TX13_COHERENT_INT_MASK |	\
>+	 TX14_COHERENT_INT_MASK | TX15_COHERENT_INT_MASK |	\
>+	 TX16_COHERENT_INT_MASK | TX17_COHERENT_INT_MASK |	\
>+	 TX18_COHERENT_INT_MASK | TX19_COHERENT_INT_MASK |	\
>+	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
>+	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
>+	 TX22_COHERENT_INT_MASK | TX23_COHERENT_INT_MASK |	\
>+	 TX24_COHERENT_INT_MASK | TX25_COHERENT_INT_MASK |	\
>+	 TX26_COHERENT_INT_MASK | TX27_COHERENT_INT_MASK |	\
>+	 TX28_COHERENT_INT_MASK | TX29_COHERENT_INT_MASK |	\
>+	 TX30_COHERENT_INT_MASK | TX31_COHERENT_INT_MASK)
>+
>+#define REG_TX_IRQ_BASE(_n)		((_n) ? 0x0048 : 0x0050)
>+
>+#define REG_TX_IRQ_CFG(_n)		((_n) ? 0x004c : 0x0054)
>+#define TX_IRQ_THR_MASK			GENMASK(27, 16)
>+#define TX_IRQ_DEPTH_MASK		GENMASK(11, 0)
>+
>+#define REG_IRQ_CLEAR_LEN(_n)		((_n) ? 0x0064 : 0x0058)
>+#define IRQ_CLEAR_LEN_MASK		GENMASK(7, 0)
>+
>+#define REG_IRQ_STATUS(_n)		((_n) ? 0x0068 : 0x005c)
>+#define IRQ_ENTRY_LEN_MASK		GENMASK(27, 16)
>+#define IRQ_HEAD_IDX_MASK		GENMASK(11, 0)
>+
>+#define REG_TX_RING_BASE(_n)	\
>+	(((_n) < 8) ? 0x0100 + ((_n) << 5) : 0x0b00 + (((_n) - 8) << 5))
>+
>+#define REG_TX_RING_BLOCKING(_n)	\
>+	(((_n) < 8) ? 0x0104 + ((_n) << 5) : 0x0b04 + (((_n) - 8) << 5))
>+
>+#define TX_RING_IRQ_BLOCKING_MAP_MASK			BIT(6)
>+#define TX_RING_IRQ_BLOCKING_CFG_MASK			BIT(4)
>+#define TX_RING_IRQ_BLOCKING_TX_DROP_EN_MASK		BIT(2)
>+#define TX_RING_IRQ_BLOCKING_MAX_TH_TXRING_EN_MASK	BIT(1)
>+#define TX_RING_IRQ_BLOCKING_MIN_TH_TXRING_EN_MASK	BIT(0)
>+
>+#define REG_TX_CPU_IDX(_n)	\
>+	(((_n) < 8) ? 0x0108 + ((_n) << 5) : 0x0b08 + (((_n) - 8) << 5))
>+
>+#define TX_RING_CPU_IDX_MASK		GENMASK(15, 0)
>+
>+#define REG_TX_DMA_IDX(_n)	\
>+	(((_n) < 8) ? 0x010c + ((_n) << 5) : 0x0b0c + (((_n) - 8) << 5))
>+
>+#define TX_RING_DMA_IDX_MASK		GENMASK(15, 0)
>+
>+#define IRQ_RING_IDX_MASK		GENMASK(20, 16)
>+#define IRQ_DESC_IDX_MASK		GENMASK(15, 0)
>+
>+#define REG_RX_RING_BASE(_n)	\
>+	(((_n) < 16) ? 0x0200 + ((_n) << 5) : 0x0e00 + (((_n) - 16) << 5))
>+
>+#define REG_RX_RING_SIZE(_n)	\
>+	(((_n) < 16) ? 0x0204 + ((_n) << 5) : 0x0e04 + (((_n) - 16) << 5))
>+
>+#define RX_RING_THR_MASK		GENMASK(31, 16)
>+#define RX_RING_SIZE_MASK		GENMASK(15, 0)
>+
>+#define REG_RX_CPU_IDX(_n)	\
>+	(((_n) < 16) ? 0x0208 + ((_n) << 5) : 0x0e08 + (((_n) - 16) << 5))
>+
>+#define RX_RING_CPU_IDX_MASK		GENMASK(15, 0)
>+
>+#define REG_RX_DMA_IDX(_n)	\
>+	(((_n) < 16) ? 0x020c + ((_n) << 5) : 0x0e0c + (((_n) - 16) << 5))
>+
>+#define REG_RX_DELAY_INT_IDX(_n)	\
>+	(((_n) < 16) ? 0x0210 + ((_n) << 5) : 0x0e10 + (((_n) - 16) << 5))
>+
>+#define RX_DELAY_INT_MASK		GENMASK(15, 0)
>+
>+#define RX_RING_DMA_IDX_MASK		GENMASK(15, 0)
>+
>+#define REG_INGRESS_TRTCM_CFG		0x0070
>+#define INGRESS_TRTCM_EN_MASK		BIT(31)
>+#define INGRESS_TRTCM_MODE_MASK		BIT(30)
>+#define INGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
>+#define INGRESS_FAST_TICK_MASK		GENMASK(15, 0)
>+
>+#define REG_TXQ_DIS_CFG_BASE(_n)	((_n) ? 0x20a0 : 0x00a0)
>+#define REG_TXQ_DIS_CFG(_n, _m)		(REG_TXQ_DIS_CFG_BASE((_n))
>+ (_m) << 2)
>+
>+#define REG_LMGR_INIT_CFG		0x1000
>+#define LMGR_INIT_START			BIT(31)
>+#define LMGR_SRAM_MODE_MASK		BIT(30)
>+#define HW_FWD_PKTSIZE_OVERHEAD_MASK	GENMASK(27, 20)
>+#define HW_FWD_DESC_NUM_MASK		GENMASK(16, 0)
>+
>+#define REG_FWD_DSCP_LOW_THR		0x1004
>+#define FWD_DSCP_LOW_THR_MASK		GENMASK(17, 0)
>+
>+#define REG_EGRESS_RATE_METER_CFG		0x100c
>+#define EGRESS_RATE_METER_EN_MASK		BIT(29)
>+#define EGRESS_RATE_METER_EQ_RATE_EN_MASK	BIT(17)
>+#define EGRESS_RATE_METER_WINDOW_SZ_MASK	GENMASK(16, 12)
>+#define EGRESS_RATE_METER_TIMESLICE_MASK	GENMASK(10, 0)
>+
>+#define REG_EGRESS_TRTCM_CFG		0x1010
>+#define EGRESS_TRTCM_EN_MASK		BIT(31)
>+#define EGRESS_TRTCM_MODE_MASK		BIT(30)
>+#define EGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
>+#define EGRESS_FAST_TICK_MASK		GENMASK(15, 0)
>+
>+#define REG_TXWRR_MODE_CFG		0x1020
>+#define TWRR_WEIGHT_SCALE_MASK		BIT(31)
>+#define TWRR_WEIGHT_BASE_MASK		BIT(3)
>+
>+#define REG_PSE_BUF_USAGE_CFG		0x1028
>+#define PSE_BUF_ESTIMATE_EN_MASK	BIT(29)
>+
>+#define REG_GLB_TRTCM_CFG		0x1080
>+#define GLB_TRTCM_EN_MASK		BIT(31)
>+#define GLB_TRTCM_MODE_MASK		BIT(30)
>+#define GLB_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
>+#define GLB_FAST_TICK_MASK		GENMASK(15, 0)
>+
>+#define REG_TXQ_CNGST_CFG		0x10a0
>+#define TXQ_CNGST_DROP_EN		BIT(31)
>+#define TXQ_CNGST_DEI_DROP_EN		BIT(30)
>+
>+#define REG_SLA_TRTCM_CFG		0x1150
>+#define SLA_TRTCM_EN_MASK		BIT(31)
>+#define SLA_TRTCM_MODE_MASK		BIT(30)
>+#define SLA_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
>+#define SLA_FAST_TICK_MASK		GENMASK(15, 0)
>+
>+/* CTRL */
>+#define QDMA_DESC_DONE_MASK		BIT(31)
>+#define QDMA_DESC_DROP_MASK		BIT(30) /* tx: drop pkt - rx:
>overflow */
>+#define QDMA_DESC_MORE_MASK		BIT(29) /* more SG elements */
>+#define QDMA_DESC_DEI_MASK		BIT(25)
>+#define QDMA_DESC_NO_DROP_MASK		BIT(24)
>+#define QDMA_DESC_LEN_MASK		GENMASK(15, 0)
>+/* DATA */
>+#define QDMA_DESC_NEXT_ID_MASK		GENMASK(15, 0)
>+/* MSG0 */
>+#define QDMA_ETH_TXMSG_MIC_IDX_MASK	BIT(30)
>+#define QDMA_ETH_TXMSG_SP_TAG_MASK	GENMASK(29, 14)
>+#define QDMA_ETH_TXMSG_ICO_MASK		BIT(13)
>+#define QDMA_ETH_TXMSG_UCO_MASK		BIT(12)
>+#define QDMA_ETH_TXMSG_TCO_MASK		BIT(11)
>+#define QDMA_ETH_TXMSG_TSO_MASK		BIT(10)
>+#define QDMA_ETH_TXMSG_FAST_MASK	BIT(9)
>+#define QDMA_ETH_TXMSG_OAM_MASK		BIT(8)
>+#define QDMA_ETH_TXMSG_CHAN_MASK	GENMASK(7, 3)
>+#define QDMA_ETH_TXMSG_QUEUE_MASK	GENMASK(2, 0)
>+/* MSG1 */
>+#define QDMA_ETH_TXMSG_NO_DROP		BIT(31)
>+#define QDMA_ETH_TXMSG_METER_MASK	GENMASK(30, 24)	/* 0x7f
>means do not apply meters */
>+#define QDMA_ETH_TXMSG_FPORT_MASK	GENMASK(23, 20)
>+#define QDMA_ETH_TXMSG_NBOQ_MASK	GENMASK(19, 15)
>+#define QDMA_ETH_TXMSG_HWF_MASK		BIT(14)
>+#define QDMA_ETH_TXMSG_HOP_MASK		BIT(13)
>+#define QDMA_ETH_TXMSG_PTP_MASK		BIT(12)
>+#define QDMA_ETH_TXMSG_ACNT_G1_MASK	GENMASK(10, 6)	/* 0x1f
>means do not count */
>+#define QDMA_ETH_TXMSG_ACNT_G0_MASK	GENMASK(5, 0)	/* 0x3f means
>do not count */
>+
>+struct airoha_qdma_desc {
>+	__le32 rsv;
>+	__le32 ctrl;
>+	__le32 addr;
>+	__le32 data;
>+	__le32 msg0;
>+	__le32 msg1;
>+	__le32 msg2;
>+	__le32 msg3;
>+};
>+
>+/* CTRL0 */
>+#define QDMA_FWD_DESC_CTX_MASK		BIT(31)
>+#define QDMA_FWD_DESC_RING_MASK		GENMASK(30, 28)
>+#define QDMA_FWD_DESC_IDX_MASK		GENMASK(27, 16)
>+#define QDMA_FWD_DESC_LEN_MASK		GENMASK(15, 0)
>+/* CTRL1 */
>+#define QDMA_FWD_DESC_FIRST_IDX_MASK	GENMASK(15, 0)
>+/* CTRL2 */
>+#define QDMA_FWD_DESC_MORE_PKT_NUM_MASK	GENMASK(2, 0)
>+
>+struct airoha_qdma_fwd_desc {
>+	__le32 addr;
>+	__le32 ctrl0;
>+	__le32 ctrl1;
>+	__le32 ctrl2;
>+	__le32 msg0;
>+	__le32 msg1;
>+	__le32 rsv0;
>+	__le32 rsv1;
>+};
>+
>+enum {
>+	QDMA_INT_REG_IDX0,
>+	QDMA_INT_REG_IDX1,
>+	QDMA_INT_REG_IDX2,
>+	QDMA_INT_REG_IDX3,
>+	QDMA_INT_REG_IDX4,
>+	QDMA_INT_REG_MAX
>+};
>+
>+enum airoha_dport {
>+	DPORT_PDMA,
>+	DPORT_GDM1,
>+	DPORT_GDM2,
>+	DPORT_GDM3,
>+	DPORT_PPE,
>+	DPORT_QDMA,
>+	DPORT_QDMA_HW,
>+	DPORT_DISCARD,
>+	DPORT_GDM4 =3D 9,
>+};
>+
>+enum {
>+	FE_DP_CPU,
>+	FE_DP_GDM1,
>+	FE_DP_GDM2,
>+	FE_DP_QDMA1_HWF,
>+	FE_DP_GDMA3_HWF =3D 3,
>+	FE_DP_PPE,
>+	FE_DP_QDMA2_CPU,
>+	FE_DP_QDMA2_HWF,
>+	FE_DP_DISCARD,
>+	FE_DP_PPE2 =3D 8,
>+	FE_DP_DROP =3D 15,
>+};
>+
>+enum {
>+	CDM_CRSN_QSEL_Q1 =3D 1,
>+	CDM_CRSN_QSEL_Q5 =3D 5,
>+	CDM_CRSN_QSEL_Q6 =3D 6,
>+	CDM_CRSN_QSEL_Q15 =3D 15,
>+};
>+
>+enum {
>+	CRSN_08 =3D 0x8,
>+	CRSN_21 =3D 0x15, /* KA */
>+	CRSN_22 =3D 0x16, /* hit bind and force route to CPU */
>+	CRSN_24 =3D 0x18,
>+	CRSN_25 =3D 0x19,
>+};
>+
>+enum {
>+	DEV_STATE_INITIALIZED,
>+};
>+
>+struct airoha_queue_entry {
>+	union {
>+		void *buf;
>+		struct sk_buff *skb;
>+	};
>+	dma_addr_t dma_addr;
>+	u16 dma_len;
>+};
>+
>+struct airoha_queue {
>+	struct airoha_eth *eth;
>+
>+	spinlock_t lock;
>+	struct airoha_queue_entry *entry;
>+	struct airoha_qdma_desc *desc;
>+	u16 head;
>+	u16 tail;
>+
>+	int queued;
>+	int ndesc;
>+	int free_thr;
>+	int buf_size;
>+
>+	struct napi_struct napi;
>+	struct page_pool *page_pool;
>+};
>+
>+struct airoha_tx_irq_queue {
>+	struct airoha_eth *eth;
>+
>+	struct napi_struct napi;
>+	u32 *q;
>+
>+	int size;
>+	int queued;
>+	u16 head;
>+};
>+
>+struct airoha_eth {
>+	struct net_device *net_dev;
>+
>+	unsigned long state;
>+
>+	void __iomem *qdma_regs;
>+	void __iomem *fe_regs;
>+
>+	spinlock_t irq_lock;
>+	u32 irqmask[QDMA_INT_REG_MAX];
>+	int irq;
>+
>+	struct reset_control_bulk_data rsts[AIROHA_MAX_NUM_RSTS];
>+	struct reset_control_bulk_data xsi_rsts[AIROHA_MAX_NUM_XSI_RSTS];
>+
>+	struct airoha_queue q_tx[AIROHA_NUM_TX_RING];
>+	struct airoha_queue q_rx[AIROHA_NUM_RX_RING];
>+
>+	struct airoha_tx_irq_queue q_tx_irq[AIROHA_NUM_TX_IRQ];
>+
>+	/* descriptor and packet buffers for qdma hw forward */
>+	struct {
>+		void *desc;
>+		void *q;
>+	} hfwd;
>+
>+	struct dentry *debugfs_dir;
>+};
>+
>+#define airoha_qdma_for_each_q_rx(eth, i)		\
>+	for (i =3D 0; i < ARRAY_SIZE((eth)->q_rx); i++)	\
>+		if ((eth)->q_rx[i].ndesc)
>+
>+static inline void airoha_qdma_start_napi(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx_irq); i++)
>+		napi_enable(&eth->q_tx_irq[i].napi);
>+
>+	airoha_qdma_for_each_q_rx(eth, i)
>+		napi_enable(&eth->q_rx[i].napi);
>+}
>+
>+static inline void airoha_qdma_stop_napi(struct airoha_eth *eth)
>+{
>+	int i;
>+
>+	for (i =3D 0; i < ARRAY_SIZE(eth->q_tx_irq); i++)
>+		napi_disable(&eth->q_tx_irq[i].napi);
>+
>+	airoha_qdma_for_each_q_rx(eth, i)
>+		napi_disable(&eth->q_rx[i].napi);
>+}
>--
>2.45.1
>


