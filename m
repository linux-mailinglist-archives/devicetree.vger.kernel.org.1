Return-Path: <devicetree+bounces-115249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B09AE9EE
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:10:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D043AB24334
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 15:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95A41EB9F1;
	Thu, 24 Oct 2024 15:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bp.renesas.com header.i=@bp.renesas.com header.b="WKfIgU38"
X-Original-To: devicetree@vger.kernel.org
Received: from TY3P286CU002.outbound.protection.outlook.com (mail-japaneastazon11010016.outbound.protection.outlook.com [52.101.229.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B401EABB9;
	Thu, 24 Oct 2024 15:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.229.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729782625; cv=fail; b=rAotv0+ziivxZoIK+tYLR9sNiJihp9JjNwPA8YW3akqJfespYwzCCKqZJJ0f9beAYIg4VIlfGfUKV5CA+KMRDVLXotVvNc5/HVuw5IExBqWyrMDS/RB8L7Y08w1DmWXkWmuaUSN63TCz2KhdADIrleY54n7KmAy3ziBG8E+hSsc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729782625; c=relaxed/simple;
	bh=Z1tJKWskuJ/M8EURYIV05waiCinThAzHUffq0e52S5A=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=goAR0/TB9bIYZl0XfrOOtbHrhddea1tMwsc1dg2w8d1JtgN9N5JuM1bXNwCrdqz6shK2URWIW8MnZgLmNwCYESX5fYWrvoLdhInimkJn/Z3aRV+hwiL1GEGeOMveur5h1DhGI7QLKJwLrptkB7scpbNy8zWqIvsOQFLM3+WgcZ8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; dkim=pass (1024-bit key) header.d=bp.renesas.com header.i=@bp.renesas.com header.b=WKfIgU38; arc=fail smtp.client-ip=52.101.229.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QdHjzo+2ck7nvSWdBqKiCEXeIUI/bAijSLZQLsFhXLpB6XmuKk50TgoUcWI8+oHMiii/PbDE1P+aBfdttghQhpx7TxT3tBxNZo7Wt7LetSeeJ3cz9aN3Gk+1yE6b3xDlttiPEiHZKtTrlzh5H4WQr0/uiBULnZ7pz2iWgkBHhM1DSpH+DKU23C0GUjI7ruNDqx09Ru5S0ObHRZ6FHQpW8vwQ5H3EHvy8hkvUg1VN9vE9ECZ2k6HNTk/Qe3FZwnnwjhA44u8d3mOWqurKpTEgiThHSBnJWe740/GvHgkj7El4rkwdzi+Ua0diOJ8JHHxUQnEe4dxi3gXXpvWIbeAbgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fToK1i8bqiek3RYUxCmJm7foi5DtUTUQl49p7irk1cQ=;
 b=gxGfDyH1E6+9prFWntdFb8IKOHVxgdDVf43tVIuj2OR21ZGChCBYwMw/op4BPJLqH6bJjsv6501qET2wwYfGvNfeGU4Zl6+MYKPwh5DPKBC65Y4jtG5C91zuvGwy85O3sY6cD3MhX1KO7NdBGlcWqjgHivTiIcYS58PHkn4ryKzxf045VHC09tcj84A302xQgpChAZ/0OtuEPm6HeMowAQfmpRaqybiTMtoHsRpS+dRpNua9cCevGPIbQMP1WxDfj8K6NIAD/1X1j7XfBtHmogPCKryVGXjvYS13OVYqkZXKF8cb2P2LT3ecXBxlrVsYlAqdUHwuZFVQjVfMkinkMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fToK1i8bqiek3RYUxCmJm7foi5DtUTUQl49p7irk1cQ=;
 b=WKfIgU38bEAc6o+rHxWVr8QOsOtdXwzQCypwSyUu2O7pBqm97ENFWvXt6o/bzucVk6OYnJ9w+gGQ8H0QaiSj5C5z8Z3jbrL55vy4W5j5pr2+j4pIeFEEXPPsiyXCVrbii6HgrMDU9VZm6/enhgt7t/vIMX4/iORqkRlUDyCK0BU=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYWPR01MB8904.jpnprd01.prod.outlook.com (2603:1096:400:16c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Thu, 24 Oct
 2024 15:10:13 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%3]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 15:10:13 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Liu Ying <victor.liu@nxp.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
CC: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org"
	<rfoss@kernel.org>, laurent.pinchart <laurent.pinchart@ideasonboard.com>,
	"jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@gmail.com"
	<jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>,
	"simona@ffwll.ch" <simona@ffwll.ch>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "mripard@kernel.org"
	<mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"quic_jesszhan@quicinc.com" <quic_jesszhan@quicinc.com>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
	<will@kernel.org>, "sakari.ailus@linux.intel.com"
	<sakari.ailus@linux.intel.com>, "hverkuil@xs4all.nl" <hverkuil@xs4all.nl>,
	"tomi.valkeinen@ideasonboard.com" <tomi.valkeinen@ideasonboard.com>,
	"quic_bjorande@quicinc.com" <quic_bjorande@quicinc.com>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>,
	"dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>, "arnd@arndb.de"
	<arnd@arndb.de>, "nfraprado@collabora.com" <nfraprado@collabora.com>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, "sam@ravnborg.org"
	<sam@ravnborg.org>, "marex@denx.de" <marex@denx.de>
Subject: RE: [PATCH v3 12/15] drm/bridge: Add ITE IT6263 LVDS to HDMI
 converter
Thread-Topic: [PATCH v3 12/15] drm/bridge: Add ITE IT6263 LVDS to HDMI
 converter
Thread-Index: AQHbI4Ue6dBHAatu9E2qi1QByFRdurKWBGhw
Date: Thu, 24 Oct 2024 15:10:13 +0000
Message-ID:
 <TY3PR01MB113465BBC5FD4EAAE89D9EA57864E2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20241021064446.263619-1-victor.liu@nxp.com>
 <20241021064446.263619-13-victor.liu@nxp.com>
In-Reply-To: <20241021064446.263619-13-victor.liu@nxp.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYWPR01MB8904:EE_
x-ms-office365-filtering-correlation-id: 71b6b975-1878-4845-2d22-08dcf43df5f6
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?T1Ul6ZKjcGNX3sWVSsKy76VYhrguF9dlbfwK8pE/ghbCGL4V5b8aZHJnK14W?=
 =?us-ascii?Q?Hi65Y/yVHmU7IIas1sM0c1gdQqZAdBAKQIM6oXj1pRdd0ReiR50eMlQkMUM1?=
 =?us-ascii?Q?iOrPl1slC3VLv8MI98LAs/E5ILOV+tAKYQwv5lljjIFOiHCc8gxBNTRPjNOo?=
 =?us-ascii?Q?q528uSnNoMx/46pyKhb+/UTVr56Nn2ikZ+9Hx365XsFFnTaxAvdIDW9435xA?=
 =?us-ascii?Q?a+FjxMQZzZPh1VR0+ms8nW4KjMHoM/5RpNCKuoyHiVvPsqwwfyvGqTybh5IX?=
 =?us-ascii?Q?D/EQEUXAQyVqV+qVPa80eBSsvEo8NNGWJRE5T+uMoWf5CSMCmHPb2DA23tRi?=
 =?us-ascii?Q?SwxAzpv/0RngFxUetsdyWXc5UHyMg/4AaPyMtl7OyQatkq9MU4jF07h+1s3m?=
 =?us-ascii?Q?hIURyQHrsDzkUnAuP2ZS8i6dWKE4tLcJVdb/tJNnieXk7n7lJOvQ4ZqqLXJk?=
 =?us-ascii?Q?WR4EoteCqepfUYV45KI2DCPbBnWrH/aaNjTwUC07rNNg2KF/bCcKc4M3rPxM?=
 =?us-ascii?Q?mLPVR503m1EPB4FzK8jgCuPCi2uhNAFRzjtU4VcQqEjdQA2MMyn0vbbivGll?=
 =?us-ascii?Q?sFDBtMWsmdcqb9cR8ZCP+1Tl2CkKf8Vp6z88wKvrBlGoSS4ULU+NvJN439XV?=
 =?us-ascii?Q?Z8ZTbJeeQDa1VKYJLkaMV+BEH0CxETgzQ9vG7DKKR0qwoedkFQy5wobEYuKi?=
 =?us-ascii?Q?PSLb2HBPH1eRTZ1DjlHEpDTjRJuFcOLeCskBmetUHqdMniXOQ2EZd/RNLdid?=
 =?us-ascii?Q?WWfUIejJVZF9VaNMHwyUIFnlagKDlfvDefzvaHGpUuw61BzQP6KyfcNLOjEa?=
 =?us-ascii?Q?9lY/l9Mw/mPOpomcTHWdqHe+UppJEFBEgg2/SgwFlgyZZsbZo7sriBXyPEDv?=
 =?us-ascii?Q?ZpVdbW00dshdPh/gE19A6eMDXY1YVY7B0q0/ZR6hX2h5p6dNhMFkuxzlOR+E?=
 =?us-ascii?Q?4ZBe5CjpSxRBiQ7LY8I+edxDKl/t4PVVTyKlxtE+xWQ3Vi/1OPAtMhRrM0OZ?=
 =?us-ascii?Q?E/qbFV4cet8uVa/c1WtXS119sUpbmUQENl2dJwdUaVtXA81RlsFIjpmkO654?=
 =?us-ascii?Q?4/kBtEWV6ae0cBOex/d5H3tUOXllUqpJUBDPozyQ2arup91GyLYL3CaF6+EH?=
 =?us-ascii?Q?yRdBEG4st/+vbcQMsHPRNeFLAhG7bZ5qkLJjp0boj75ZdgG7OYb2i7UVayRb?=
 =?us-ascii?Q?MQGjfFItRZO2W1agRLJvZhRg+WHU4W/EQCHEsc5zwN+h7slOPaRUhEcqSDM+?=
 =?us-ascii?Q?C4sEPSNgUPPUUzJZoBXW8ivXVlnq9gKcwibhs6nBjkeTdAdprLGVE3x2r658?=
 =?us-ascii?Q?FbAzgdaEUiaJ2KszgYvarl9iCOJGgTbuOXu+Q1iiDX8ZJNB8vZUFDw9Kue1i?=
 =?us-ascii?Q?t70OXt76qwJivtuj/lhecfFNNZ0d?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?NGZC3k8q9eBFmPMJBkr2E4LMZOQrsD4RqrTsnKs+LLlZYz/MO5vrNOoIHpTR?=
 =?us-ascii?Q?xC1c2bvsV42FI9UtSf1r2a/ARRa6MUrlNduQbtNflYaccP3e7LlJxZUO0l2J?=
 =?us-ascii?Q?6ZthbnK8uIE9EPglelf2g2unL6s50lGi1ZCf3+0oiziQOBbGZf+tLDUOABMk?=
 =?us-ascii?Q?Y8zouFfFMV09T/zOVxefkzL7mDTIcfjvB2lBNlU48DNbYveAarriG4AfDe7Y?=
 =?us-ascii?Q?vK/EDTtbRpecyiTJqS2n/TnyP7TNQpct1OQpsAdSwLc311d9/KcBdZE1Tb1k?=
 =?us-ascii?Q?sZSJbVqUq0b/hhh5zzHFUhxmpTifU6czOvn/B3R17gS4hRiDJZEEbxcSo4OD?=
 =?us-ascii?Q?Eoe+dxwOXtX9nPQAzGho7sJE8QIqo9wLzfTRMN8ESUeCnyCLybY5r9zVAknv?=
 =?us-ascii?Q?V+yZIDZ4BaiExutjQwKFfhehqj8caa8sD15UNS3dYD+wi5KfvdHVf37g6iei?=
 =?us-ascii?Q?C487fVVWiHxrnK9v1TwRiqfwasAhRNzBa1Hcs3NKeZ7UufbMD6tT8rhjyrMF?=
 =?us-ascii?Q?GLT0XAVWtGOUweg1XoJErVBgr/Za0E8mrkbhYafWnpX4KYIsyDeQ5jlAc5kY?=
 =?us-ascii?Q?BsJvwRHxjlsBtrGTQFuu9kD6Vqk6f+qT2gM9N/zxwOLH8foQshMcdTyeY1oh?=
 =?us-ascii?Q?dMhBOLZyLHYiXsa+FeP1iSDYlwS0j6FHPxw19IFPkxNpdK3rtheL5oo/bKrp?=
 =?us-ascii?Q?0r56zWYVuY3RnOgHZFljum8PVukxTC2+Defp2vgavAoEPLMkY+9I0M/uGZI1?=
 =?us-ascii?Q?wgNvmsSzWagiZft2ai5lxHh+wWrn7Qn582oT3gmEYbxrnLPKyaKWKkDE7hNt?=
 =?us-ascii?Q?/RT+/f1GVTa0mOFnKCerXKKcrzJvIMBipQnGrx8yYiakm9lwa5MDwLDbbhyh?=
 =?us-ascii?Q?XxFoKTrtdLFt1F012oiv6vFcBka2rhtoR2r4POAnxGZJgfOQc5Qlno9OZnYL?=
 =?us-ascii?Q?pArfuVBQr1X2r90HtrSk7ZjUaZA8Kq0JMbhJ0SXXZW9/w7RKVDTt+KopuEc9?=
 =?us-ascii?Q?KprAbvItz0eSv+AWg82fKeqx2ub9PEDy205OGRk5J0wTiqTE7o+a6UrTbF7q?=
 =?us-ascii?Q?YLicv9q85ZbLoZ5j2lzczoTO7I1yF9bLVeSclg2TapRvzGEa6YASNYjOvoFk?=
 =?us-ascii?Q?qmCG0rgHtEwzC84jtF8Qasyl6+JCXspBFazSUq6A7MGsk2r66eItmg2cpvEd?=
 =?us-ascii?Q?MTYOdciJ2jkyelDLdWe+f267lC90vWGozKaY+V0XPj23burM/qmFZj++s3li?=
 =?us-ascii?Q?DWLwVFk5vkeJlErXJ/nYgeaqZmST6I5coSdSrJgcGXq/WXL5f9px6xnmL1HF?=
 =?us-ascii?Q?Wrv4JgVKl4B+W3Zz8VQK8jZ06Q6+4vGDjk3n3WWC6v20AHj59nI12bMWWWH0?=
 =?us-ascii?Q?iV/GOYBZI+2SE1Ag3kK2JblL30m/vlmVwa2ettF1Hc1PGhFu1IFIEq2hervT?=
 =?us-ascii?Q?9zZyhh2f11rxzGIxF/1p/B3h+o4r1HyyGiHmtBrrYEUgWl2lcp0VP6PaqBGY?=
 =?us-ascii?Q?5+23ZY7Mye17/u4vwt8CcLWy4jpGTm8W/Mkf8fwjBDWHFmFIjJR6DfluGQo2?=
 =?us-ascii?Q?t4y2uJ7sGUt0YlMeQF4XzaCRzAAAFmwalVS8m75TK+D3lj8+MOCo9P/Wicf7?=
 =?us-ascii?Q?5A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b6b975-1878-4845-2d22-08dcf43df5f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 15:10:13.6487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t2093VwuhKwjqBluWClVlp6koeI6uTSE8cOBOeAygvmx3J5mr0zoseX3JwnROKA4Vg/7IaBkrtPBliw0D8+AWT55PfNAW+V0iFhlW2dpv0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8904

Hi Liu Ying,

> -----Original Message-----
> From: Liu Ying <victor.liu@nxp.com>
> Sent: Monday, October 21, 2024 7:45 AM
> Subject: [PATCH v3 12/15] drm/bridge: Add ITE IT6263 LVDS to HDMI convert=
er
>=20
> Add basic HDMI video output support. Currently, only RGB888 output pixel =
format is supported.  At the
> LVDS input side, the driver supports single LVDS link and dual LVDS links=
 with "jeida-24" LVDS
> mapping.
>=20
> Product link:
> https://www.ite.com.tw/en/product/cate1/IT6263

Just a question,

What is the maximum single link and dual link modes you have tested?

On Renesas SMARC RZ/G3E platform I have tested with this patch set,

Dual link :1080p@60

and

Single link:720p@60

For single link > 720p@60, sometimes I get message
"it6263 7-004c: failed to wait for video stable"

From SoC side, it can support max dot clock of 87MHz for single link.

So just wondering other than reject modes greater than 87MHz from SOC
side, do we need to limit any thing on bridge device for single link Case?

Cheers,
Biju




>=20
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * Use HDMI connector framework.  (Maxime)
> * Control the missing HDMI_REG_AVI_INFOFRM_CTRL register.
> * Validate the maximal HDMI TMDS character rate.  (Dmitry)
> * Get LVDS data mapping from data-mapping DT property.  (Dmitry, Biju)
> * Validate 30bit LVDS data bit order by checking data-mirror DT property.
> * Use drm_of_lvds_get_dual_link_pixel_order_sink().  (Dmitry)
> * Initialize a bridge connector instead of open coding.  (Dmitry)
> * Add a comment that IT6263 chip has no HPD IRQ support.  (Dmitry)
> * Use devm_drm_bridge_add() instead of drm_bridge_add().  (Dmitry)
> * Fix a minor build warning reported by kernel test robot.
>=20
> v2:
> * Add AVI inforframe support.  (Maxime)
> * Add DRM_MODE_CONNECTOR_HDMIA.  (Biju)
> * Rename it6263_reset() to it6263_hw_reset().  (Biju)
> * Check number of LVDS link data lanes.  (Biju)
>=20
>  drivers/gpu/drm/bridge/Kconfig      |  11 +
>  drivers/gpu/drm/bridge/Makefile     |   1 +
>  drivers/gpu/drm/bridge/ite-it6263.c | 906 ++++++++++++++++++++++++++++
>  3 files changed, 918 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/ite-it6263.c
>=20
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kcon=
fig index
> 609f4d0ac93d..6b4664d91faa 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -90,6 +90,17 @@ config DRM_FSL_LDB
>  	help
>  	  Support for i.MX8MP DPI-to-LVDS on-SoC encoder.
>=20
> +config DRM_ITE_IT6263
> +	tristate "ITE IT6263 LVDS/HDMI bridge"
> +	depends on OF
> +	select DRM_DISPLAY_HDMI_STATE_HELPER
> +	select DRM_DISPLAY_HELPER
> +	select DRM_BRIDGE_CONNECTOR
> +	select DRM_KMS_HELPER
> +	select REGMAP_I2C
> +	help
> +	  ITE IT6263 LVDS to HDMI bridge chip driver.
> +
>  config DRM_ITE_IT6505
>  	tristate "ITE IT6505 DisplayPort bridge"
>  	depends on OF
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Mak=
efile index
> 3daf803ce80b..97304b429a53 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_DRM_CHRONTEL_CH7033) +=3D chrontel-ch7033.o
>  obj-$(CONFIG_DRM_CROS_EC_ANX7688) +=3D cros-ec-anx7688.o
>  obj-$(CONFIG_DRM_DISPLAY_CONNECTOR) +=3D display-connector.o
>  obj-$(CONFIG_DRM_FSL_LDB) +=3D fsl-ldb.o
> +obj-$(CONFIG_DRM_ITE_IT6263) +=3D ite-it6263.o
>  obj-$(CONFIG_DRM_ITE_IT6505) +=3D ite-it6505.o
>  obj-$(CONFIG_DRM_LONTIUM_LT8912B) +=3D lontium-lt8912b.o
>  obj-$(CONFIG_DRM_LONTIUM_LT9211) +=3D lontium-lt9211.o diff --git a/driv=
ers/gpu/drm/bridge/ite-it6263.c
> b/drivers/gpu/drm/bridge/ite-it6263.c
> new file mode 100644
> index 000000000000..1ad7727742bf
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/ite-it6263.c
> @@ -0,0 +1,906 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/hdmi.h>
> +#include <linux/i2c.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/display/drm_hdmi_helper.h> #include
> +<drm/display/drm_hdmi_state_helper.h>
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_atomic_state_helper.h> #include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h> #include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h> #include <drm/drm_edid.h> #include
> +<drm/drm_of.h> #include <drm/drm_probe_helper.h>
> +
> +/*
> +-----------------------------------------------------------------------
> +------
> + * LVDS registers
> + */
> +
> +/* LVDS software reset registers */
> +#define LVDS_REG_05			0x05
> +#define  REG_SOFT_P_RST			BIT(1)
> +
> +/* LVDS system configuration registers */
> +/* 0x0b */
> +#define LVDS_REG_0B			0x0b
> +#define  REG_SSC_PCLK_RF		BIT(0)
> +#define  REG_LVDS_IN_SWAP		BIT(1)
> +
> +/* LVDS test pattern gen control registers */
> +/* 0x2c */
> +#define LVDS_REG_2C			0x2c
> +#define  REG_COL_DEP			GENMASK(1, 0)
> +#define  BIT8				FIELD_PREP(REG_COL_DEP, 2)
> +#define  OUT_MAP			BIT(4)
> +#define  JEIDA				0
> +#define  REG_DESSC_ENB			BIT(6)
> +#define  DMODE				BIT(7)
> +#define  DISO				BIT(7)
> +#define  SISO				0
> +
> +#define LVDS_REG_3C			0x3c
> +#define LVDS_REG_3F			0x3f
> +#define LVDS_REG_47			0x47
> +#define LVDS_REG_48			0x48
> +#define LVDS_REG_4F			0x4f
> +#define LVDS_REG_52			0x52
> +
> +/*
> +-----------------------------------------------------------------------
> +------
> + * HDMI registers are separated into three banks:
> + * 1) HDMI register common bank: 0x00 ~ 0x2f  */
> +
> +/* HDMI genernal registers */
> +#define HDMI_REG_SW_RST			0x04
> +#define  SOFTREF_RST			BIT(5)
> +#define  SOFTA_RST			BIT(4)
> +#define  SOFTV_RST			BIT(3)
> +#define  AUD_RST			BIT(2)
> +#define  HDCP_RST			BIT(0)
> +#define  HDMI_RST_ALL			(SOFTREF_RST | SOFTA_RST | SOFTV_RST | \
> +					 AUD_RST | HDCP_RST)
> +
> +#define HDMI_REG_SYS_STATUS		0x0e
> +#define  HPDETECT			BIT(6)
> +#define  TXVIDSTABLE			BIT(4)
> +
> +#define HDMI_REG_BANK_CTRL		0x0f
> +#define  REG_BANK_SEL			BIT(0)
> +
> +/* HDMI System DDC control registers */
> +#define HDMI_REG_DDC_MASTER_CTRL	0x10
> +#define  MASTER_SEL_HOST		BIT(0)
> +
> +#define HDMI_REG_DDC_HEADER		0x11
> +
> +#define HDMI_REG_DDC_REQOFF		0x12
> +#define HDMI_REG_DDC_REQCOUNT		0x13
> +#define HDMI_REG_DDC_EDIDSEG		0x14
> +
> +#define HDMI_REG_DDC_CMD		0x15
> +#define  DDC_CMD_EDID_READ		0x3
> +#define  DDC_CMD_FIFO_CLR		0x9
> +
> +#define HDMI_REG_DDC_STATUS		0x16
> +#define  DDC_DONE			BIT(7)
> +#define  DDC_NOACK			BIT(5)
> +#define  DDC_WAITBUS			BIT(4)
> +#define  DDC_ARBILOSE			BIT(3)
> +#define  DDC_ERROR			(DDC_NOACK | DDC_WAITBUS | DDC_ARBILOSE)
> +
> +#define HDMI_DDC_FIFO_BYTES		32
> +#define HDMI_REG_DDC_READFIFO		0x17
> +#define HDMI_REG_LVDS_PORT		0x1d /* LVDS input control I2C addr */
> +#define HDMI_REG_LVDS_PORT_EN		0x1e
> +#define LVDS_INPUT_CTRL_I2C_ADDR	0x33
> +
> +/*
> +-----------------------------------------------------------------------
> +------
> + * 2) HDMI register bank0: 0x30 ~ 0xff
> + */
> +
> +/* HDMI AFE registers */
> +#define HDMI_REG_AFE_DRV_CTRL		0x61
> +#define  AFE_DRV_PWD			BIT(5)
> +#define  AFE_DRV_RST			BIT(4)
> +
> +#define HDMI_REG_AFE_XP_CTRL		0x62
> +#define  AFE_XP_GAINBIT			BIT(7)
> +#define  AFE_XP_ER0			BIT(4)
> +#define  AFE_XP_RESETB			BIT(3)
> +
> +#define HDMI_REG_AFE_ISW_CTRL		0x63
> +
> +#define HDMI_REG_AFE_IP_CTRL		0x64
> +#define  AFE_IP_GAINBIT			BIT(7)
> +#define  AFE_IP_ER0			BIT(3)
> +#define  AFE_IP_RESETB			BIT(2)
> +
> +/* HDMI input data format registers */
> +#define HDMI_REG_INPUT_MODE		0x70
> +#define  IN_RGB				0x00
> +
> +/* HDMI general control registers */
> +#define HDMI_REG_HDMI_MODE		0xc0
> +#define  TX_HDMI_MODE			BIT(0)
> +
> +#define HDMI_REG_GCP			0xc1
> +#define  AVMUTE				BIT(0)
> +#define  HDMI_COLOR_DEPTH		GENMASK(6, 4)
> +#define  HDMI_COLOR_DEPTH_24		FIELD_PREP(HDMI_COLOR_DEPTH, 4)
> +
> +#define HDMI_REG_PKT_GENERAL_CTRL	0xc6
> +#define HDMI_REG_AVI_INFOFRM_CTRL	0xcd
> +#define  ENABLE_PKT			BIT(0)
> +#define  REPEAT_PKT			BIT(1)
> +
> +/*
> +-----------------------------------------------------------------------
> +------
> + * 3) HDMI register bank1: 0x130 ~ 0x1ff (HDMI packet registers)  */
> +
> +/* AVI packet registers */
> +#define HDMI_REG_AVI_DB1		0x158
> +#define HDMI_REG_AVI_DB2		0x159
> +#define HDMI_REG_AVI_DB3		0x15a
> +#define HDMI_REG_AVI_DB4		0x15b
> +#define HDMI_REG_AVI_DB5		0x15c
> +#define HDMI_REG_AVI_CSUM		0x15d
> +#define HDMI_REG_AVI_DB6		0x15e
> +#define HDMI_REG_AVI_DB7		0x15f
> +#define HDMI_REG_AVI_DB8		0x160
> +#define HDMI_REG_AVI_DB9		0x161
> +#define HDMI_REG_AVI_DB10		0x162
> +#define HDMI_REG_AVI_DB11		0x163
> +#define HDMI_REG_AVI_DB12		0x164
> +#define HDMI_REG_AVI_DB13		0x165
> +
> +#define HDMI_AVI_DB_CHUNK1_SIZE		(HDMI_REG_AVI_DB5 - HDMI_REG_AVI_DB1 + =
1)
> +#define HDMI_AVI_DB_CHUNK2_SIZE		(HDMI_REG_AVI_DB13 - HDMI_REG_AVI_DB6 +=
 1)
> +
> +#define MAX_PIXEL_CLOCK_KHZ		150000
> +#define HIGH_PIXEL_CLOCK_KHZ		80000
> +#define MAX_HDMI_TMDS_CHAR_RATE_HZ	225000000
> +
> +struct it6263 {
> +	struct device *dev;
> +	struct i2c_client *hdmi_i2c;
> +	struct i2c_client *lvds_i2c;
> +	struct regmap *hdmi_regmap;
> +	struct regmap *lvds_regmap;
> +	struct drm_bridge bridge;
> +	struct drm_bridge *next_bridge;
> +	struct gpio_desc *reset_gpio;
> +	int lvds_data_mapping;
> +	bool lvds_dual_link;
> +	bool lvds_link12_swap;
> +};
> +
> +static inline struct it6263 *bridge_to_it6263(struct drm_bridge
> +*bridge) {
> +	return container_of(bridge, struct it6263, bridge); }
> +
> +static bool it6263_hdmi_writeable_reg(struct device *dev, unsigned int
> +reg) {
> +	switch (reg) {
> +	case HDMI_REG_SW_RST:
> +	case HDMI_REG_BANK_CTRL:
> +	case HDMI_REG_DDC_MASTER_CTRL:
> +	case HDMI_REG_DDC_HEADER:
> +	case HDMI_REG_DDC_REQOFF:
> +	case HDMI_REG_DDC_REQCOUNT:
> +	case HDMI_REG_DDC_EDIDSEG:
> +	case HDMI_REG_DDC_CMD:
> +	case HDMI_REG_LVDS_PORT:
> +	case HDMI_REG_LVDS_PORT_EN:
> +	case HDMI_REG_AFE_DRV_CTRL:
> +	case HDMI_REG_AFE_XP_CTRL:
> +	case HDMI_REG_AFE_ISW_CTRL:
> +	case HDMI_REG_AFE_IP_CTRL:
> +	case HDMI_REG_INPUT_MODE:
> +	case HDMI_REG_HDMI_MODE:
> +	case HDMI_REG_GCP:
> +	case HDMI_REG_PKT_GENERAL_CTRL:
> +	case HDMI_REG_AVI_INFOFRM_CTRL:
> +	case HDMI_REG_AVI_DB1:
> +	case HDMI_REG_AVI_DB2:
> +	case HDMI_REG_AVI_DB3:
> +	case HDMI_REG_AVI_DB4:
> +	case HDMI_REG_AVI_DB5:
> +	case HDMI_REG_AVI_CSUM:
> +	case HDMI_REG_AVI_DB6:
> +	case HDMI_REG_AVI_DB7:
> +	case HDMI_REG_AVI_DB8:
> +	case HDMI_REG_AVI_DB9:
> +	case HDMI_REG_AVI_DB10:
> +	case HDMI_REG_AVI_DB11:
> +	case HDMI_REG_AVI_DB12:
> +	case HDMI_REG_AVI_DB13:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool it6263_hdmi_readable_reg(struct device *dev, unsigned int
> +reg) {
> +	if (it6263_hdmi_writeable_reg(dev, reg))
> +		return true;
> +
> +	switch (reg) {
> +	case HDMI_REG_SYS_STATUS:
> +	case HDMI_REG_DDC_STATUS:
> +	case HDMI_REG_DDC_READFIFO:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool it6263_hdmi_volatile_reg(struct device *dev, unsigned int
> +reg) {
> +	switch (reg) {
> +	case HDMI_REG_SW_RST:
> +	case HDMI_REG_SYS_STATUS:
> +	case HDMI_REG_DDC_STATUS:
> +	case HDMI_REG_DDC_READFIFO:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static const struct regmap_range_cfg it6263_hdmi_range_cfg =3D {
> +	.range_min =3D 0x00,
> +	.range_max =3D HDMI_REG_AVI_DB13,
> +	.selector_reg =3D HDMI_REG_BANK_CTRL,
> +	.selector_mask =3D REG_BANK_SEL,
> +	.selector_shift =3D 0,
> +	.window_start =3D 0x00,
> +	.window_len =3D 0x100,
> +};
> +
> +static const struct regmap_config it6263_hdmi_regmap_config =3D {
> +	.name =3D "it6263-hdmi",
> +	.reg_bits =3D 8,
> +	.val_bits =3D 8,
> +	.writeable_reg =3D it6263_hdmi_writeable_reg,
> +	.readable_reg =3D it6263_hdmi_readable_reg,
> +	.volatile_reg =3D it6263_hdmi_volatile_reg,
> +	.max_register =3D HDMI_REG_AVI_DB13,
> +	.ranges =3D &it6263_hdmi_range_cfg,
> +	.num_ranges =3D 1,
> +	.cache_type =3D REGCACHE_MAPLE,
> +};
> +
> +static bool it6263_lvds_writeable_reg(struct device *dev, unsigned int
> +reg) {
> +	switch (reg) {
> +	case LVDS_REG_05:
> +	case LVDS_REG_0B:
> +	case LVDS_REG_2C:
> +	case LVDS_REG_3C:
> +	case LVDS_REG_3F:
> +	case LVDS_REG_47:
> +	case LVDS_REG_48:
> +	case LVDS_REG_4F:
> +	case LVDS_REG_52:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool it6263_lvds_readable_reg(struct device *dev, unsigned int
> +reg) {
> +	return it6263_lvds_writeable_reg(dev, reg); }
> +
> +static bool it6263_lvds_volatile_reg(struct device *dev, unsigned int
> +reg) {
> +	return reg =3D=3D LVDS_REG_05;
> +}
> +
> +static const struct regmap_config it6263_lvds_regmap_config =3D {
> +	.name =3D "it6263-lvds",
> +	.reg_bits =3D 8,
> +	.val_bits =3D 8,
> +	.writeable_reg =3D it6263_lvds_writeable_reg,
> +	.readable_reg =3D it6263_lvds_readable_reg,
> +	.volatile_reg =3D it6263_lvds_volatile_reg,
> +	.max_register =3D LVDS_REG_52,
> +	.cache_type =3D REGCACHE_MAPLE,
> +};
> +
> +static const char * const it6263_supplies[] =3D {
> +	"ivdd", "ovdd", "txavcc18", "txavcc33", "pvcc1", "pvcc2",
> +	"avcc", "anvdd", "apvdd"
> +};
> +
> +static int it6263_parse_dt(struct it6263 *it) {
> +	struct device *dev =3D it->dev;
> +	struct device_node *port0, *port1;
> +	int ret =3D 0;
> +
> +	it->lvds_data_mapping =3D drm_of_lvds_get_data_mapping(dev->of_node);
> +	if (it->lvds_data_mapping < 0) {
> +		dev_err(dev, "%pOF: invalid or missing %s DT property: %d\n",
> +			dev->of_node, "data-mapping", it->lvds_data_mapping);
> +		return it->lvds_data_mapping;
> +	}
> +
> +	/* LVDS bit order is reversed only for 30-bit data mappings. */
> +	if (of_property_read_bool(dev->of_node, "data-mirror") &&
> +	    it->lvds_data_mapping !=3D MEDIA_BUS_FMT_RGB101010_1X7X5_SPWG &&
> +	    it->lvds_data_mapping !=3D MEDIA_BUS_FMT_RGB101010_1X7X5_JEIDA) {
> +		dev_err(dev, "%pOF: invalid data-mirror DT property\n",
> +			dev->of_node);
> +		return -EINVAL;
> +	}
> +
> +	it->next_bridge =3D devm_drm_of_get_bridge(dev, dev->of_node, 2, 0);
> +	if (IS_ERR(it->next_bridge))
> +		return dev_err_probe(dev, PTR_ERR(it->next_bridge),
> +				     "failed to get next bridge\n");
> +
> +	port0 =3D of_graph_get_port_by_id(dev->of_node, 0);
> +	port1 =3D of_graph_get_port_by_id(dev->of_node, 1);
> +	if (port0 && port1) {
> +		int order;
> +
> +		it->lvds_dual_link =3D true;
> +		order =3D drm_of_lvds_get_dual_link_pixel_order_sink(port0, port1);
> +		if (order < 0) {
> +			dev_err(dev,
> +				"failed to get dual link pixel order: %d\n",
> +				order);
> +			ret =3D order;
> +		} else if (order =3D=3D DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS) {
> +			it->lvds_link12_swap =3D true;
> +		}
> +	} else if (port1) {
> +		ret =3D -EINVAL;
> +		dev_err(dev, "single input LVDS port1 is not supported\n");
> +	} else if (!port0) {
> +		ret =3D -EINVAL;
> +		dev_err(dev, "no input LVDS port\n");
> +	}
> +
> +	of_node_put(port0);
> +	of_node_put(port1);
> +
> +	return ret;
> +}
> +
> +static inline void it6263_hw_reset(struct it6263 *it) {
> +	if (!it->reset_gpio)
> +		return;
> +
> +	gpiod_set_value_cansleep(it->reset_gpio, 0);
> +	fsleep(1000);
> +	gpiod_set_value_cansleep(it->reset_gpio, 1);
> +	/* The chip maker says the low pulse should be at least 40ms. */
> +	fsleep(40000);
> +	gpiod_set_value_cansleep(it->reset_gpio, 0);
> +	/* addtional time to wait the high voltage to be stable */
> +	fsleep(5000);
> +}
> +
> +static inline int it6263_lvds_set_i2c_addr(struct it6263 *it) {
> +	int ret;
> +
> +	ret =3D regmap_write(it->hdmi_regmap, HDMI_REG_LVDS_PORT,
> +			   LVDS_INPUT_CTRL_I2C_ADDR << 1);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_write(it->hdmi_regmap, HDMI_REG_LVDS_PORT_EN, BIT(0)); }
> +
> +static inline void it6263_lvds_reset(struct it6263 *it) {
> +	/* AFE PLL reset */
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_3C, BIT(0), 0x0);
> +	fsleep(1000);
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_3C, BIT(0), BIT(0));
> +
> +	/* software pixel clock domain reset */
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_05, REG_SOFT_P_RST,
> +			  REG_SOFT_P_RST);
> +	fsleep(1000);
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_05, REG_SOFT_P_RST, 0x0);
> +	fsleep(10000);
> +}
> +
> +static inline void it6263_lvds_set_interface(struct it6263 *it) {
> +	/* color depth */
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_2C, REG_COL_DEP, BIT8);
> +	/* output mapping */
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_2C, OUT_MAP, JEIDA);
> +
> +	if (it->lvds_dual_link) {
> +		regmap_write_bits(it->lvds_regmap, LVDS_REG_2C, DMODE, DISO);
> +		regmap_write_bits(it->lvds_regmap, LVDS_REG_52, BIT(1), BIT(1));
> +	} else {
> +		regmap_write_bits(it->lvds_regmap, LVDS_REG_2C, DMODE, SISO);
> +		regmap_write_bits(it->lvds_regmap, LVDS_REG_52, BIT(1), 0);
> +	}
> +}
> +
> +static inline void it6263_lvds_set_afe(struct it6263 *it) {
> +	regmap_write(it->lvds_regmap, LVDS_REG_3C, 0xaa);
> +	regmap_write(it->lvds_regmap, LVDS_REG_3F, 0x02);
> +	regmap_write(it->lvds_regmap, LVDS_REG_47, 0xaa);
> +	regmap_write(it->lvds_regmap, LVDS_REG_48, 0x02);
> +	regmap_write(it->lvds_regmap, LVDS_REG_4F, 0x11);
> +
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_0B, REG_SSC_PCLK_RF,
> +			  REG_SSC_PCLK_RF);
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_3C, 0x07, 0);
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_2C, REG_DESSC_ENB,
> +			  REG_DESSC_ENB);
> +}
> +
> +static inline void it6263_lvds_sys_cfg(struct it6263 *it) {
> +	regmap_write_bits(it->lvds_regmap, LVDS_REG_0B, REG_LVDS_IN_SWAP,
> +			  it->lvds_link12_swap ? REG_LVDS_IN_SWAP : 0); }
> +
> +static inline void it6263_lvds_config(struct it6263 *it) {
> +	it6263_lvds_reset(it);
> +	it6263_lvds_set_interface(it);
> +	it6263_lvds_set_afe(it);
> +	it6263_lvds_sys_cfg(it);
> +}
> +
> +static inline void it6263_hdmi_config(struct it6263 *it) {
> +	regmap_write(it->hdmi_regmap, HDMI_REG_SW_RST, HDMI_RST_ALL);
> +	regmap_write(it->hdmi_regmap, HDMI_REG_INPUT_MODE, IN_RGB);
> +	regmap_write_bits(it->hdmi_regmap, HDMI_REG_GCP, HDMI_COLOR_DEPTH,
> +			  HDMI_COLOR_DEPTH_24);
> +}
> +
> +static enum drm_connector_status it6263_detect(struct it6263 *it) {
> +	unsigned int val;
> +
> +	regmap_read(it->hdmi_regmap, HDMI_REG_SYS_STATUS, &val);
> +	if (val & HPDETECT)
> +		return connector_status_connected;
> +	else
> +		return connector_status_disconnected; }
> +
> +static int it6263_read_edid(void *data, u8 *buf, unsigned int block,
> +size_t len) {
> +	struct it6263 *it =3D data;
> +	struct regmap *regmap =3D it->hdmi_regmap;
> +	unsigned int start =3D (block % 2) * EDID_LENGTH;
> +	unsigned int segment =3D block >> 1;
> +	unsigned int count, val;
> +	int ret;
> +
> +	regmap_write(regmap, HDMI_REG_DDC_MASTER_CTRL, MASTER_SEL_HOST);
> +	regmap_write(regmap, HDMI_REG_DDC_HEADER, DDC_ADDR << 1);
> +	regmap_write(regmap, HDMI_REG_DDC_EDIDSEG, segment);
> +
> +	while (len) {
> +		/* clear DDC FIFO */
> +		regmap_write(regmap, HDMI_REG_DDC_CMD, DDC_CMD_FIFO_CLR);
> +
> +		ret =3D regmap_read_poll_timeout(regmap, HDMI_REG_DDC_STATUS,
> +					       val, val & DDC_DONE,
> +					       2000, 10000);
> +		if (ret) {
> +			dev_err(it->dev, "failed to clear DDC FIFO:%d\n", ret);
> +			return ret;
> +		}
> +
> +		count =3D len > HDMI_DDC_FIFO_BYTES ? HDMI_DDC_FIFO_BYTES : len;
> +
> +		/* fire the read command */
> +		regmap_write(regmap, HDMI_REG_DDC_REQOFF, start);
> +		regmap_write(regmap, HDMI_REG_DDC_REQCOUNT, count);
> +		regmap_write(regmap, HDMI_REG_DDC_CMD, DDC_CMD_EDID_READ);
> +
> +		start +=3D count;
> +		len -=3D count;
> +
> +		ret =3D regmap_read_poll_timeout(regmap, HDMI_REG_DDC_STATUS, val,
> +					       val & (DDC_DONE | DDC_ERROR),
> +					       20000, 250000);
> +		if (ret && !(val & DDC_ERROR)) {
> +			dev_err(it->dev, "failed to read EDID:%d\n", ret);
> +			return ret;
> +		}
> +
> +		if (val & DDC_ERROR) {
> +			dev_err(it->dev, "DDC error\n");
> +			return -EIO;
> +		}
> +
> +		/* cache to buffer */
> +		for (; count > 0; count--) {
> +			regmap_read(regmap, HDMI_REG_DDC_READFIFO, &val);
> +			*(buf++) =3D val;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int it6263_bridge_atomic_check(struct drm_bridge *bridge,
> +				      struct drm_bridge_state *bridge_state,
> +				      struct drm_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state) {
> +	struct drm_display_mode *mode =3D &crtc_state->adjusted_mode;
> +	int ret;
> +
> +	ret =3D drm_atomic_helper_connector_hdmi_check(conn_state->connector,
> +						     conn_state->state);
> +	if (ret)
> +		return ret;
> +
> +	return mode->clock > MAX_PIXEL_CLOCK_KHZ ? -EINVAL : 0; }
> +
> +static void
> +it6263_bridge_atomic_disable(struct drm_bridge *bridge,
> +			     struct drm_bridge_state *old_bridge_state) {
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +
> +	regmap_write_bits(it->hdmi_regmap, HDMI_REG_GCP, AVMUTE, AVMUTE);
> +	regmap_write(it->hdmi_regmap, HDMI_REG_PKT_GENERAL_CTRL, 0);
> +	regmap_write(it->hdmi_regmap, HDMI_REG_AFE_DRV_CTRL,
> +		     AFE_DRV_RST | AFE_DRV_PWD);
> +}
> +
> +static void
> +it6263_bridge_atomic_enable(struct drm_bridge *bridge,
> +			    struct drm_bridge_state *old_bridge_state) {
> +	struct drm_atomic_state *state =3D old_bridge_state->base.state;
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +	const struct drm_crtc_state *crtc_state;
> +	struct regmap *regmap =3D it->hdmi_regmap;
> +	const struct drm_display_mode *mode;
> +	struct drm_connector *connector;
> +	bool is_stable =3D false;
> +	struct drm_crtc *crtc;
> +	unsigned int val;
> +	bool pclk_high;
> +	int i, ret;
> +
> +	connector =3D drm_atomic_get_new_connector_for_encoder(state,
> +							     bridge->encoder);
> +	crtc =3D drm_atomic_get_new_connector_state(state, connector)->crtc;
> +	crtc_state =3D drm_atomic_get_new_crtc_state(state, crtc);
> +	mode =3D &crtc_state->adjusted_mode;
> +
> +	regmap_write(regmap, HDMI_REG_HDMI_MODE, TX_HDMI_MODE);
> +
> +	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
> +
> +	/* HDMI AFE setup */
> +	pclk_high =3D mode->clock > HIGH_PIXEL_CLOCK_KHZ;
> +	regmap_write(regmap, HDMI_REG_AFE_DRV_CTRL, AFE_DRV_RST);
> +	if (pclk_high)
> +		regmap_write(regmap, HDMI_REG_AFE_XP_CTRL,
> +			     AFE_XP_GAINBIT | AFE_XP_RESETB);
> +	else
> +		regmap_write(regmap, HDMI_REG_AFE_XP_CTRL,
> +			     AFE_XP_ER0 | AFE_XP_RESETB);
> +	regmap_write(regmap, HDMI_REG_AFE_ISW_CTRL, 0x10);
> +	if (pclk_high)
> +		regmap_write(regmap, HDMI_REG_AFE_IP_CTRL,
> +			     AFE_IP_GAINBIT | AFE_IP_RESETB);
> +	else
> +		regmap_write(regmap, HDMI_REG_AFE_IP_CTRL,
> +			     AFE_IP_ER0 | AFE_IP_RESETB);
> +
> +	/* HDMI software video reset */
> +	regmap_write_bits(regmap, HDMI_REG_SW_RST, SOFTV_RST, SOFTV_RST);
> +	fsleep(1000);
> +	regmap_write_bits(regmap, HDMI_REG_SW_RST, SOFTV_RST, 0);
> +
> +	/* reconfigure LVDS and retry several times in case video is instable *=
/
> +	for (i =3D 0; i < 3; i++) {
> +		ret =3D regmap_read_poll_timeout(regmap, HDMI_REG_SYS_STATUS, val,
> +					       val & TXVIDSTABLE,
> +					       20000, 500000);
> +		if (!ret) {
> +			is_stable =3D true;
> +			break;
> +		}
> +
> +		it6263_lvds_config(it);
> +	}
> +
> +	if (!is_stable)
> +		dev_warn(it->dev, "failed to wait for video stable\n");
> +
> +	/* HDMI AFE reset release and power up */
> +	regmap_write(regmap, HDMI_REG_AFE_DRV_CTRL, 0);
> +
> +	regmap_write_bits(regmap, HDMI_REG_GCP, AVMUTE, 0);
> +
> +	regmap_write(regmap, HDMI_REG_PKT_GENERAL_CTRL, ENABLE_PKT |
> +REPEAT_PKT); }
> +
> +static enum drm_mode_status
> +it6263_bridge_mode_valid(struct drm_bridge *bridge,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode) {
> +	unsigned long long rate;
> +
> +	if (mode->clock > MAX_PIXEL_CLOCK_KHZ)
> +		return MODE_CLOCK_HIGH;
> +
> +	rate =3D drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
> +	if (rate =3D=3D 0)
> +		return MODE_NOCLOCK;
> +
> +	return bridge->funcs->hdmi_tmds_char_rate_valid(bridge, mode, rate); }
> +
> +static int it6263_bridge_attach(struct drm_bridge *bridge,
> +				enum drm_bridge_attach_flags flags) {
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +	struct drm_connector *connector;
> +	int ret;
> +
> +	ret =3D drm_bridge_attach(bridge->encoder, it->next_bridge, bridge,
> +				flags | DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
> +		return 0;
> +
> +	connector =3D drm_bridge_connector_init(bridge->dev, bridge->encoder);
> +	if (IS_ERR(connector)) {
> +		ret =3D PTR_ERR(connector);
> +		dev_err(it->dev, "failed to initialize bridge connector: %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	drm_connector_attach_encoder(connector, bridge->encoder);
> +
> +	return 0;
> +}
> +
> +static enum drm_connector_status it6263_bridge_detect(struct drm_bridge
> +*bridge) {
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +
> +	return it6263_detect(it);
> +}
> +
> +static const struct drm_edid *
> +it6263_bridge_edid_read(struct drm_bridge *bridge,
> +			struct drm_connector *connector)
> +{
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +
> +	return drm_edid_read_custom(connector, it6263_read_edid, it); }
> +
> +static u32 *
> +it6263_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> +					struct drm_bridge_state *bridge_state,
> +					struct drm_crtc_state *crtc_state,
> +					struct drm_connector_state *conn_state,
> +					u32 output_fmt,
> +					unsigned int *num_input_fmts)
> +{
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +	u32 *input_fmts;
> +
> +	*num_input_fmts =3D 0;
> +
> +	if (it->lvds_data_mapping !=3D MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA)
> +		return NULL;
> +
> +	input_fmts =3D kmalloc(sizeof(*input_fmts), GFP_KERNEL);
> +	if (!input_fmts)
> +		return NULL;
> +
> +	input_fmts[0] =3D MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA;
> +	*num_input_fmts =3D 1;
> +
> +	return input_fmts;
> +}
> +
> +static enum drm_mode_status
> +it6263_hdmi_tmds_char_rate_valid(const struct drm_bridge *bridge,
> +				 const struct drm_display_mode *mode,
> +				 unsigned long long tmds_rate)
> +{
> +	if (tmds_rate > MAX_HDMI_TMDS_CHAR_RATE_HZ)
> +		return MODE_CLOCK_HIGH;
> +
> +	return MODE_OK;
> +}
> +
> +static int it6263_hdmi_clear_infoframe(struct drm_bridge *bridge,
> +				       enum hdmi_infoframe_type type) {
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +
> +	if (type =3D=3D HDMI_INFOFRAME_TYPE_AVI)
> +		regmap_write(it->hdmi_regmap, HDMI_REG_AVI_INFOFRM_CTRL, 0);
> +	else
> +		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
> +
> +	return 0;
> +}
> +
> +static int it6263_hdmi_write_infoframe(struct drm_bridge *bridge,
> +				       enum hdmi_infoframe_type type,
> +				       const u8 *buffer, size_t len) {
> +	struct it6263 *it =3D bridge_to_it6263(bridge);
> +	struct regmap *regmap =3D it->hdmi_regmap;
> +
> +	if (type !=3D HDMI_INFOFRAME_TYPE_AVI) {
> +		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
> +		return 0;
> +	}
> +
> +	/* write the first AVI infoframe data byte chunk(DB1-DB5) */
> +	regmap_bulk_write(regmap, HDMI_REG_AVI_DB1,
> +			  &buffer[HDMI_INFOFRAME_HEADER_SIZE],
> +			  HDMI_AVI_DB_CHUNK1_SIZE);
> +
> +	/* write the second AVI infoframe data byte chunk(DB6-DB13) */
> +	regmap_bulk_write(regmap, HDMI_REG_AVI_DB6,
> +			  &buffer[HDMI_INFOFRAME_HEADER_SIZE +
> +				  HDMI_AVI_DB_CHUNK1_SIZE],
> +			  HDMI_AVI_DB_CHUNK2_SIZE);
> +
> +	/* write checksum */
> +	regmap_write(regmap, HDMI_REG_AVI_CSUM, buffer[3]);
> +
> +	regmap_write(regmap, HDMI_REG_AVI_INFOFRM_CTRL, ENABLE_PKT |
> +REPEAT_PKT);
> +
> +	return 0;
> +}
> +
> +static const struct drm_bridge_funcs it6263_bridge_funcs =3D {
> +	.atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state =3D drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset =3D drm_atomic_helper_bridge_reset,
> +	.attach =3D it6263_bridge_attach,
> +	.mode_valid =3D it6263_bridge_mode_valid,
> +	.atomic_disable =3D it6263_bridge_atomic_disable,
> +	.atomic_enable =3D it6263_bridge_atomic_enable,
> +	.atomic_check =3D it6263_bridge_atomic_check,
> +	.detect =3D it6263_bridge_detect,
> +	.edid_read =3D it6263_bridge_edid_read,
> +	.atomic_get_input_bus_fmts =3D it6263_bridge_atomic_get_input_bus_fmts,
> +	.hdmi_tmds_char_rate_valid =3D it6263_hdmi_tmds_char_rate_valid,
> +	.hdmi_clear_infoframe =3D it6263_hdmi_clear_infoframe,
> +	.hdmi_write_infoframe =3D it6263_hdmi_write_infoframe, };
> +
> +static int it6263_probe(struct i2c_client *client) {
> +	struct device *dev =3D &client->dev;
> +	struct it6263 *it;
> +	int ret;
> +
> +	it =3D devm_kzalloc(dev, sizeof(*it), GFP_KERNEL);
> +	if (!it)
> +		return -ENOMEM;
> +
> +	it->dev =3D dev;
> +	it->hdmi_i2c =3D client;
> +
> +	it->hdmi_regmap =3D devm_regmap_init_i2c(client,
> +					       &it6263_hdmi_regmap_config);
> +	if (IS_ERR(it->hdmi_regmap))
> +		return dev_err_probe(dev, PTR_ERR(it->hdmi_regmap),
> +				     "failed to init I2C regmap for HDMI\n");
> +
> +	it->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW)=
;
> +	if (IS_ERR(it->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(it->reset_gpio),
> +				     "failed to get reset gpio\n");
> +
> +	ret =3D devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(it6263_supplies)=
,
> +					     it6263_supplies);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to get power supplies\n");
> +
> +	ret =3D it6263_parse_dt(it);
> +	if (ret)
> +		return ret;
> +
> +	it6263_hw_reset(it);
> +
> +	ret =3D it6263_lvds_set_i2c_addr(it);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to set I2C addr\n");
> +
> +	it->lvds_i2c =3D devm_i2c_new_dummy_device(dev, client->adapter,
> +						 LVDS_INPUT_CTRL_I2C_ADDR);
> +	if (IS_ERR(it->lvds_i2c))
> +		dev_err_probe(it->dev, PTR_ERR(it->lvds_i2c),
> +			      "failed to allocate I2C device for LVDS\n");
> +
> +	it->lvds_regmap =3D devm_regmap_init_i2c(it->lvds_i2c,
> +					       &it6263_lvds_regmap_config);
> +	if (IS_ERR(it->lvds_regmap))
> +		return dev_err_probe(dev, PTR_ERR(it->lvds_regmap),
> +				     "failed to init I2C regmap for LVDS\n");
> +
> +	it6263_lvds_config(it);
> +	it6263_hdmi_config(it);
> +
> +	i2c_set_clientdata(client, it);
> +
> +	it->bridge.funcs =3D &it6263_bridge_funcs;
> +	it->bridge.of_node =3D dev->of_node;
> +	/* IT6263 chip doesn't support HPD interrupt. */
> +	it->bridge.ops =3D DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID |
> +			 DRM_BRIDGE_OP_HDMI;
> +	it->bridge.type =3D DRM_MODE_CONNECTOR_HDMIA;
> +	it->bridge.vendor =3D "ITE";
> +	it->bridge.product =3D "IT6263";
> +
> +	return devm_drm_bridge_add(dev, &it->bridge); }
> +
> +static const struct of_device_id it6263_of_match[] =3D {
> +	{ .compatible =3D "ite,it6263", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, it6263_of_match);
> +
> +static const struct i2c_device_id it6263_i2c_ids[] =3D {
> +	{ "it6263", 0 },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, it6263_i2c_ids);
> +
> +static struct i2c_driver it6263_driver =3D {
> +	.probe =3D it6263_probe,
> +	.driver =3D {
> +		.name =3D "it6263",
> +		.of_match_table =3D it6263_of_match,
> +	},
> +	.id_table =3D it6263_i2c_ids,
> +};
> +module_i2c_driver(it6263_driver);
> +
> +MODULE_DESCRIPTION("ITE Tech. Inc. IT6263 LVDS/HDMI bridge");
> +MODULE_AUTHOR("Liu Ying <victor.liu@nxp.com>"); MODULE_LICENSE("GPL");
> --
> 2.34.1


