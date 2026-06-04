Return-Path: <devicetree+bounces-306622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id utwGLUsgIWpj/QAAu9opvQ
	(envelope-from <devicetree+bounces-306622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:50:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D168A63D56F
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:50:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=AUiBPbsw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306622-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306622-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 71AC630362EF
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 06:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E96D3C2B9D;
	Thu,  4 Jun 2026 06:49:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013019.outbound.protection.outlook.com [52.101.83.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7901C3C9896;
	Thu,  4 Jun 2026 06:49:21 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780555763; cv=fail; b=K4eE0hv8jEYwNpkZniU5ECaaFBq2L/tV29wmZW7wdD9kMlRo9XtAt220qFreE1IbQ2FKbFz/CTsFKFVpIzcjduEkyGEjwjL9EYe9GJz6V7PBKDxfLN/kcZaPQRieSjsiQ0SLmQTs0kLXNI9O09q7lV0L5Yihvx/laB/ta8ZwiCI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780555763; c=relaxed/simple;
	bh=TBlMOp0JopO0Hhj3DkbLiL62hzBNW9mxc2XB1JGtWoA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=DQEZi80iapqvnilkra9mHd+jvSYsA5i7V502syJiP0BOlScv4bphBpfSsY2LBrlJdyOyT4had1U5zyeXEZAV5tOBdFQJ9P3Wd3H2ExHMIFgq9HGPZc1TnfgTvNy1zFHtMTjpWZxRBnafb80qVf/iHFGFDGwt/C9Ut05ZMGvLBQY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=AUiBPbsw; arc=fail smtp.client-ip=52.101.83.19
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CF7DBEhlPx0jcHFrJetGZviWB66cXEqmoWXHRAnXbwKBFRwzSGzFNXcwvjApMUlwTk1cg1dXJgsyh1hN4vtFKsyNweTead4qGBia4gs8D+6QTtQRirLG1oPs8qpv7YnVHEQOEPP8TSXXiyI6GGRKNyJgg8gwrD9h/yEcHD+eKG4D1FSkDvlNpPeTfNBbLacVWeJ8orLr2OCHB4nvFPctuxLj7fSJgWeRA7qXv9sInnZyl3eA3soCshI+zhPeAgQEOJjXVDZYivjXSmFS4M2471VKk4gPVyKZJjUAOoyKYpWBCX6Z1d7VpCUPAcGWU2hO28Q/GsN1ybGmolJGOhpc8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJ6SryaLEZrQ9nkLnRUo9u9eEcejp5mmpfAJQ2I4uuw=;
 b=bhdzYmzhMVCn3Obr7sx8gb+0a4ut0/fidZyb3wIWHiNqnhV20UmHL6FpiQHgAIeMTyqtJM62CIIM/Kg2yCcRV/imi8+WeDBtz+oamRyCN/shYitVO6Nb4D8DhW9kgRfDgGuuL6DHVJ6e7HZE5dd1+xlZvghRm/deEUNR6Z0zrWR3sGVDt9uo58eaoq0NGAz7YdqePEpdxRMOn+K0AVikZNkYKoQVoo7w4cL1d0K5WHXyOAtrto1HGC1wypKJWhJ8HBP9aA2qwgVHyXKevDwIchqdmaHdVTNfiUdteRSep1+k5R3rzJsxhPJ0mphoQkDupKilRKWiFXkUXSv/DV6vlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJ6SryaLEZrQ9nkLnRUo9u9eEcejp5mmpfAJQ2I4uuw=;
 b=AUiBPbswHVsFOYY0c83DIXAXRLZlC9+rLv9gdpoy7kEONqrN6IO3sG3rgLEuCp21NYzZoE8RTlQMVRdf+wfGynFPrEKREbytV2oF6dR038UBbo7ZMevkhvLKL8ME/EARhFwnahBwoQf+0I3+QgjkJotE5cw5OAClTtBW7/vYcDON/lcYaafGuGuNEujS/Yhps97/s7oqcS2Yxgl2O9vV/cESLcvNqjFSsIK6JCKkLXHOy7CHgk8qfkO/WJLwMysi/d78rSwIjlRZgojlmFeFcXVOvAq9GOfupvc3oWA0N+pKWol0NlFAM4zfrCJuVLEEXHxnrPxTP7Yqdqi5JTC7Wg==
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13) by PR3PR04MB7482.eurprd04.prod.outlook.com
 (2603:10a6:102:8f::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:49:18 +0000
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994]) by VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994%6]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 06:49:18 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: "Hongxing Zhu (OSS)" <hongxing.zhu@oss.nxp.com>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, Frank Li <frank.li@nxp.com>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
	<festevam@gmail.com>
CC: "kernel@pengutronix.de" <kernel@pengutronix.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Hongxing Zhu <hongxing.zhu@nxp.com>
Subject: RE: [PATCH v2] arm64: dts: imx94: Add Root Port node and PERST
 property
Thread-Topic: [PATCH v2] arm64: dts: imx94: Add Root Port node and PERST
 property
Thread-Index: AQHc8+sH0ZDCmxCVi0CXELE6fHO8RLYt9HVg
Date: Thu, 4 Jun 2026 06:49:18 +0000
Message-ID:
 <VI0PR04MB12114C03C7D3EE162B99AFD6C92102@VI0PR04MB12114.eurprd04.prod.outlook.com>
References: <20260604062846.310810-1-hongxing.zhu@oss.nxp.com>
In-Reply-To: <20260604062846.310810-1-hongxing.zhu@oss.nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0PR04MB12114:EE_|PR3PR04MB7482:EE_
x-ms-office365-filtering-correlation-id: febfe190-ff0b-4a5b-abe8-08dec2056698
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|7416014|19092799006|366016|376014|38070700021|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info:
 QZlnD+S45KQsdsa2Q35GTizvdoE9PK+56XjdTLq2A2hlA6WiqJ8Iay9GiTsQYPLbwhiJTzjDRVxZHQKzsoA94BF1ClkX9Q+rb600la/jvhL3au7BB8bIdtZpFhfOCeiUNpxiMHk2lKC1uiu+CVUN0jtZksgM5enUv9dNfMpAbXDGIkfB3CvUqyQCyIAdxKICxIwAl0e3izV7ZDYeqb6KlSN6bxJYUE+HYeF90SurxsEI1hn222H8jojRf9NaQZYZzGEMpcvGdYWK8YoZyT5ZFm+aUPQMzLlpcfaWlMpfPSIoEenzODlZnM0/ic3D0VaWYQb0OGmPRq92+LxsfGtoQhQAIDbxPgOwt4mEvKcl20N+yQEd/k3EVFjfIpS2rgphTl4lROveeR0LjQZK7wwstFtqTsK1/WKPbub+niJC3bCjetpm/q3PgroU+CQP68CuQIzH5LusBXutS1D5pCj6JVpJCPvEA9VDZm0p3oLYLtujgeF/uPeVaShEHHJg8TlZfWzzdbLZ2mQroFUl8n+oF+dbE8Uq3Xcex5s7eClvR6ltzl4CdhoYYCRfQPY7gNJL3B8CV6RmrOD+pOOABjC2qXwbU1N1mSs5DTzIvp/1b4y9vfqLay+ltseufXzxybe7KW6TuZwul7KcQE3rJYhJNSE12Uwf/ljCHC5fikK8qo0cMUdAdfg2+3utIqizvsTtm+EkmbFpTrSF+fl03W87TPw/21vU36vJyP1v9hfnWxKEK3pFzbGCY1GCqwmzflx3
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12114.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(19092799006)(366016)(376014)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?e2b5bWvMsLgs6jt0ejCppSzKpT/HzA+tKSR8QsFpbUWDAYviDTumMyqiVJpr?=
 =?us-ascii?Q?tfaIoA/+2zrGuDvJbEQdp6gcJ05pAe9JKq8z1eCUEZc8C07rYdxk0/vDSsEV?=
 =?us-ascii?Q?5e0UZrluL1mkpLvNdoBZu/LLJrNwhlGaZk2FFKDSeUB79/UaFo0Db1KdFWRz?=
 =?us-ascii?Q?pKHsXuEJuoqm9D+q0DntQOS/j+iLIS3g/xWewvjyJHn7Ozz6kZyEDMSY+UrA?=
 =?us-ascii?Q?nf468y+Fx4Eiq4Knauxo156dQ3Tov8XMCd7/4JqpCTokuvtdKqLCj+vTRlo3?=
 =?us-ascii?Q?o+dhabZoSlO5h159jTyB18Tl0GieqFyN1SPFaRBFamtk1wZmuSuptG//A5Dq?=
 =?us-ascii?Q?a3jpzV5WJPT4MIkPLdaAm4YEGxLUMRVNTD3ySB+wzRwFTdgAcQxBtK4brn7D?=
 =?us-ascii?Q?+zYLc3V2GdGjVAItZMyFeRbpp5QiuKgtf3imxh9D6QbN+URTmhx56amdd/0b?=
 =?us-ascii?Q?94nTATuj/3muDEr5EuLOQpuPK7Yrt1Tj5X0VbUgrTFazVEEd7RIHtSMFH9os?=
 =?us-ascii?Q?FSNgu50y6AGw0YTh5jv+mzQb7OKAUWzl4zMWBGdMOEYKj47vCGo5ClKsC/nF?=
 =?us-ascii?Q?mYYdWLPVQ+fpqLINmmgPa2aQawZ/EPcUij4Iht9YVe0J0bpY3r7NDqRucd8e?=
 =?us-ascii?Q?nN4IwLScbEn6htXtc02CbAKga5TtSZ1dBce3IjVDwEMhjGh+mUaTCOcR9Gci?=
 =?us-ascii?Q?iiTbS934QJzZnL9ufO6V8rUe7G9N27Fmp0qHcWXqjn410iU8pfWMbESGbWfJ?=
 =?us-ascii?Q?YoUUp9o8zU8k8Yd5/FrCMLPXAF3T6ayOk7TcyZmLiZ4acfP54RmVCejZ40vc?=
 =?us-ascii?Q?EAaWe3UQ6JO5uXbyvEmYOhlHz3m88H+T1GKD24WtHZTftlXFgybgm4vdkknY?=
 =?us-ascii?Q?DP8iBsiWRa2EaBAMNx8LgInikkFPUOA22go4UqH1ZPVvWLumQZ/3NGtTgxVK?=
 =?us-ascii?Q?C+UB6rclEM8l1Ns3rLbf7MhQAq5Sp5jkfqLrQTK1jcnoUvQbX3+xcBeeNjUT?=
 =?us-ascii?Q?mQKfCmreTi104oJ+4jEEGnKuN3cwxyJY1TN0PavR1EzWCZKaQE0myC4ZGxaQ?=
 =?us-ascii?Q?kKxALJpy5C6BDItkiEg0Hv6VYtQJUiDz5PAbtPEo6GUl+1iE47wPf+Bn+04S?=
 =?us-ascii?Q?Xc9SEKdYrCBTbXL+nt26Acxrt0DYdh4I/+4xPZXbp0sp3O2b+X6Wuaj5hlcg?=
 =?us-ascii?Q?wEJvwBK1nrTzglPcRGhJtMHY0BUk7MXcOy4Uei+1z34W4eQop1issA9l1cpz?=
 =?us-ascii?Q?S5wcc3gteciWTWIC8gKNvON0UmHycIdLpJcR6GS5lG0q7GLQFGasOBoEi9Jm?=
 =?us-ascii?Q?pJBz0a569ATusyELX5Z8uWTd0zA0KbGLE9nq4T8za4ZJMqtZJpeB2hUNk5PI?=
 =?us-ascii?Q?38P8Jdpc9djySFlO/HSdKxs6FzLN2iEGL0x+jOZjnkKiRD2iXYd2z4UmtJO6?=
 =?us-ascii?Q?kOtZN5MqTrxS8quYVmcTu0hSwKpztsU9PA1VpJax9pH3ls/iaM9Q2KiKglbd?=
 =?us-ascii?Q?xJAE1aqRsk0Syj+qR+yWZ6fuwIHW9ZcgvgfgwnjhycSAYnwQDx0N16XjVswn?=
 =?us-ascii?Q?WyiWQ09ISn78OX6I2Nkt+fUmMVtkPVd4oUtskqhwRS9jLjhge42ETGcU824B?=
 =?us-ascii?Q?sG1CstUiMF3iY1XztgkzSA+B6FL1epMpCxPJzJqQ8a52zRVF1r3EyEBgRAjp?=
 =?us-ascii?Q?RGH8V76vNFjfVB7lDdyhhUqrBrUMtfauB5yaLEeJmPmO5rDO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI0PR04MB12114.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: febfe190-ff0b-4a5b-abe8-08dec2056698
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 06:49:18.4663
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GaI25YZOcrQnR71En8ImhdMhuWddL7OKUgYT3l63O5UpAYRiW3bLppN+vuzu+bWGi2jCDRlXjET5ZImVO8hYGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7482
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306622-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hongxing.zhu@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:frank.li@nxp.com,m:s.hauer@pengutronix.de,m:festevam@gmail.com,m:kernel@pengutronix.de,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hongxing.zhu@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.nxp.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lkml.org:url,nxp.com:dkim,nxp.com:from_mime,nxp.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D168A63D56F

> From: Richard Zhu <hongxing.zhu@nxp.com>
>=20
> Since describing the PCIe PERST# property under Host Bridge node is now
> deprecated, it is recommended to add it to the Root Port node, so creatin=
g the
> Root Port node and add the reset-gpios property in Root Port.
>=20
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Sherry Sun <sherry.sun@nxp.com>

Best Regards
Sherry
> ---
>  arch/arm64/boot/dts/freescale/imx94.dtsi     | 11 +++++++++++
>  arch/arm64/boot/dts/freescale/imx943-evk.dts | 10 ++++++++--
>  arch/arm64/boot/dts/freescale/imx943.dtsi    | 11 +++++++++++
>  3 files changed, 30 insertions(+), 2 deletions(-)
> ---
> Changes in v2:
> - Delete reset-gpio properties in PCIe bridge node.
> - Correct the "reset-gpio" property to "reset-gpios".
>=20
> Since the patch-set [1] issued by Sherry had been landed. Add according
> changes on i.MX943 board too.
> [1] https://lkml.org/lkml/2026/6/1/1461
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx94.dtsi
> b/arch/arm64/boot/dts/freescale/imx94.dtsi
> index 1f9035e6cf159..dfbb73603cb24 100644
> --- a/arch/arm64/boot/dts/freescale/imx94.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx94.dtsi
> @@ -1411,6 +1411,17 @@ pcie0: pcie@4c300000 {
>  			power-domains =3D <&scmi_devpd
> IMX94_PD_HSIO_TOP>;
>  			fsl,max-link-speed =3D <3>;
>  			status =3D "disabled";
> +
> +			pcie0_port0: pcie@0 {
> +				compatible =3D "pciclass,0604";
> +				device_type =3D "pci";
> +				reg =3D <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range =3D <0x01 0xff>;
> +
> +				#address-cells =3D <3>;
> +				#size-cells =3D <2>;
> +				ranges;
> +			};
>  		};
>=20
>  		pcie0_ep: pcie-ep@4c300000 {
> diff --git a/arch/arm64/boot/dts/freescale/imx943-evk.dts
> b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> index 7cfd424689507..99d66484ded04 100644
> --- a/arch/arm64/boot/dts/freescale/imx943-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> @@ -1034,12 +1034,15 @@ &pcie0 {
>  		 <&pcie_ref_clk>;
>  	clock-names =3D "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
>  		      "ref", "extref";
> -	reset-gpio =3D <&pcal6416_i2c3_u46 3 GPIO_ACTIVE_LOW>;
>  	vpcie3v3aux-supply =3D <&reg_m2_wlan>;
>  	supports-clkreq;
>  	status =3D "okay";
>  };
>=20
> +&pcie0_port0 {
> +	reset-gpios =3D <&pcal6416_i2c3_u46 3 GPIO_ACTIVE_LOW>; };
> +
>  &pcie0_ep {
>  	pinctrl-0 =3D <&pinctrl_pcie0>;
>  	pinctrl-names =3D "default";
> @@ -1058,12 +1061,15 @@ &pcie1 {
>  		 <&pcie_ref_clk>;
>  	clock-names =3D "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
>  		      "ref", "extref";
> -	reset-gpio =3D <&pcal6416_i2c3_u46 1 GPIO_ACTIVE_LOW>;
>  	vpcie3v3aux-supply =3D <&reg_slot_pwr>;
>  	supports-clkreq;
>  	status =3D "okay";
>  };
>=20
> +&pcie1_port0 {
> +	reset-gpios =3D <&pcal6416_i2c3_u46 1 GPIO_ACTIVE_LOW>; };
> +
>  &pcie1_ep {
>  	pinctrl-0 =3D <&pinctrl_pcie1>;
>  	pinctrl-names =3D "default";
> diff --git a/arch/arm64/boot/dts/freescale/imx943.dtsi
> b/arch/arm64/boot/dts/freescale/imx943.dtsi
> index cf5b3dbb47ff7..01152fd0efa5e 100644
> --- a/arch/arm64/boot/dts/freescale/imx943.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx943.dtsi
> @@ -255,6 +255,17 @@ pcie1: pcie@4c380000 {
>  			power-domains =3D <&scmi_devpd
> IMX94_PD_HSIO_TOP>;
>  			fsl,max-link-speed =3D <3>;
>  			status =3D "disabled";
> +
> +			pcie1_port0: pcie@0 {
> +				compatible =3D "pciclass,0604";
> +				device_type =3D "pci";
> +				reg =3D <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range =3D <0x01 0xff>;
> +
> +				#address-cells =3D <3>;
> +				#size-cells =3D <2>;
> +				ranges;
> +			};
>  		};
>=20
>  		pcie1_ep: pcie-ep@4c380000 {
> --
> 2.34.1


