Return-Path: <devicetree+bounces-81817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 841EC91D94D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 09:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 960B11C21A93
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 07:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D2A77115;
	Mon,  1 Jul 2024 07:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="JP7tCSr5"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2074.outbound.protection.outlook.com [40.107.241.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441D241C72;
	Mon,  1 Jul 2024 07:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.241.74
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719819929; cv=fail; b=jej1w98MOIqqWmSyi2LgAdHUXNT2cqfC2bNQCzqcRRPGZeMn/hOUc2YSxa7DYGb5G7SLDxS/X1r+KfMBhw61EOFZPt9F1gS4NQn1rS4z4Iw88hjAPPmAGS9fu/ysqNxh91myOD6oka4H7pw61+5x0n8G3uZ8vrk7rdI0I7kWJLk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719819929; c=relaxed/simple;
	bh=r1IfeWdaUPsxab7i1TLWd5zCPAMKvrBfmLAkhM3XvBE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=KekJRnxgZeCsAt7Ep7tznu7PyAvKdWK5LcYTJWtymkeGOeBIZc/pjcM7TrdsQp3Vi7RgBHnIiCkQMKPa6x84jWUI+RvOwQjWuu2NWsrpG/QXHYiDOrkQ+eCPr2eLy0J2gWtPhqu5wg+BmgrcmQqiE1Bvkt3M15QJOwYkEk99RW0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=JP7tCSr5; arc=fail smtp.client-ip=40.107.241.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiGIy6lgHDlhsn9NR+CZ5/yJAdqjTQaR9gsc+VE2C4YSPxjFk6P9bLANot6N0IrsN+NNkemirrBWEsOmXQeoFB5K6LF+EXeyFaK5rVhrTTgcHz2gO0K5t2xROPLS6UkmHrsKNFzthcXfZnpOU4eWMmyaF+cks7kJ1R7rOGJ/o82rLTprSMO3rGhKjY31G27C0YoLu1rFaJVKUG8fZhks3/mG5ywnvsyvFt+sBzbnwSKBOsNmPduO4ycPxMfDt7kywSEW2Bw6ivkTxU78Jg3p2IqttAY9lNCR/evo4jIdZM68Kcrz8Vuj+g40zgRMfmKi85IpFOy0OYxxtLEXMcobkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEFY2OQUIT2GRJv99k5pXye853mLVwNFSaj+XX5hb6I=;
 b=lIwwTdrCe/y/EMNAlHjSZ2mXjwaS7WAUqKl3S/iqhDs94RlfDkrlDnooaFpaW2dR103mA01h3k7UWOn4QUDX/0q939c1lCJi7JuaGSYONxPvEMd+iobXD/3NMeLZrvDBkyLeckG+5mZ+ZOliDGblV0gR3ao1oKuYM2zbke9R6vJEmVvs22/1JucaLZnA6xHsMvXFn6chRreQIJngEKaAvqnnqUfyKVnvQBXd9DaH+B3O30/ETiwjlWzyKf05UoVlZrBzVzRQyv8WSTQLGr9wri6Y5s3yMFHeCgD3IpzDvlhGjryq+J84AhnmVpire3PO/DU6uefr2ZM0Gma4/tJizw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TEFY2OQUIT2GRJv99k5pXye853mLVwNFSaj+XX5hb6I=;
 b=JP7tCSr5v99jxQxaMncQ26oenhP4vBe5qrJntqXvFAPKy0J0GXETa0YOX6+6999YiSUgeB5aEG5TGzxeUCxduIhok5exyT6csZWogAgPvZ/aaPpqa16HzWM2+jlhLdocaYepohZ6PkaVw0gkfoljJfgQQH25w9LNkp3I9IjZhKw=
Received: from AM9PR04MB8604.eurprd04.prod.outlook.com (2603:10a6:20b:43b::21)
 by AS8PR04MB8516.eurprd04.prod.outlook.com (2603:10a6:20b:343::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Mon, 1 Jul
 2024 07:45:21 +0000
Received: from AM9PR04MB8604.eurprd04.prod.outlook.com
 ([fe80::e751:223e:aa3d:5827]) by AM9PR04MB8604.eurprd04.prod.outlook.com
 ([fe80::e751:223e:aa3d:5827%3]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 07:45:21 +0000
From: Pankaj Gupta <pankaj.gupta@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo
	<shawnguo@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-doc@vger.kernel.org"
	<linux-doc@vger.kernel.org>
Subject: RE: [EXT] Re: [PATCH v3 4/5] firmware: imx: add driver for NXP
 EdgeLock Enclave
Thread-Topic: [EXT] Re: [PATCH v3 4/5] firmware: imx: add driver for NXP
 EdgeLock Enclave
Thread-Index: AQHawIiZBQsZ0s8620ykCNsfnd2JyLHNMuWAgAm9QpA=
Date: Mon, 1 Jul 2024 07:45:20 +0000
Message-ID:
 <AM9PR04MB860446165A0826362E7AF58195D32@AM9PR04MB8604.eurprd04.prod.outlook.com>
References: <20240617-imx-se-if-v3-0-a7d28dea5c4a@nxp.com>
 <20240617-imx-se-if-v3-4-a7d28dea5c4a@nxp.com>
 <ZnFF_Z48qzpNvPtj@pengutronix.de>
In-Reply-To: <ZnFF_Z48qzpNvPtj@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB8604:EE_|AS8PR04MB8516:EE_
x-ms-office365-filtering-correlation-id: 460b2ade-abad-4152-9805-08dc99a1c265
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|7416014|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?kWFr9K6DUwoFl3qaBuBdhvacMUahEn3La3yhJGPN8tOISLRWC+uQuRI8FS2o?=
 =?us-ascii?Q?N1gStY9qojYiWJQYrXfIimaG5ylq3kLKLwxFi2fslmngKe2OW4yK6ol1xZIQ?=
 =?us-ascii?Q?IRxCYWgPqDu/pDxRLFLLbKKg8O6D/MhgUC1qpC2WKZe0GjSyXY/EKR/oRlKR?=
 =?us-ascii?Q?/QLTHKKzwn41zXJl2KLeA3cKtxg419HbRU6wLuyZwxbjAf3dc5SYJuS4M8Dj?=
 =?us-ascii?Q?wYivS/PhNF0VB7R/nenYWD8zVJ3sYprhwMHU73slhL/ywgXnMgN4A18bs8ps?=
 =?us-ascii?Q?WeOKkOn7ycCi10a7UGO6NB7yx1d67S3v2JrvGR7LmI7RHUxxRJfOW09lhy9t?=
 =?us-ascii?Q?pgR8+EydQW167hWagL2F4hw/i2cuwmHbNsqci+AmmBOrtqVSj+TPFG/fOmYD?=
 =?us-ascii?Q?ToN//A5ADFQRAI4sWa8GTAymL4SgA0ha15BxpJeS8AHylvoU3ZureG08arEX?=
 =?us-ascii?Q?Qp0X5sX413Za10Ct3QZiuJwewCHsWgspDpdPp8GAQg6y5XYvez9Ma8QluI0v?=
 =?us-ascii?Q?zQK6n3mmJKstWuGbjc1FuLXjDBOmJPBcw3u9z/NEZWs3XuKAUSq7AteBqXuY?=
 =?us-ascii?Q?Q1NRmLfbZYtoMvAMP729SmM1F2unC/eo3PSJTrE2tj3XAvKj1sG+DoE/V70o?=
 =?us-ascii?Q?WVGTiep76BRK1Cqw6ysOWi2HKys9dWtZcBshE1fKKAijtStvZwPZqxgaUwuB?=
 =?us-ascii?Q?pi6AvO3PBWO/XYckg9gOTTZokrqF2zTMeoyLbF2GgtssoDThRTfc87fpqs7f?=
 =?us-ascii?Q?8HkVfJhWzfYBDXQAIRu0Rm1PqTlPNI4QtKUE/W8AbVwpaaVxG/Y1h5aqEup9?=
 =?us-ascii?Q?bcRpUP8TpaUcoSzOTsky2onUYehpvh79qOjZvlIig9RnTF74vQuenVlAXQrT?=
 =?us-ascii?Q?v1WlL3/IQOpgkO8MVTf9GaiQeQiFymvIvF3FKm/XtNY7+3e780aAl4VtrU5Y?=
 =?us-ascii?Q?nNjdjFNSCErlXlZs9rmINJUmIdBnfQkaCRbliZVYk4//vIY4XqOsXoC8yAWO?=
 =?us-ascii?Q?Q7IE7HLwztK+/rnZUXEtkac6rR/IPru/4SF0rexIkyCOx0RCUo2VkCeIHco3?=
 =?us-ascii?Q?als9Wfk6t6wBJSr2PBNls+K5Gf8DhoZBm4TqQwucyLTEYxNBWOLGnfUQnGGF?=
 =?us-ascii?Q?o9shzxdjzIVJ1aR+5jwoidM6pMnPbFJDW5dufBz1/6xUgavF83o4OAKzSyOE?=
 =?us-ascii?Q?G0WASWvjLJxNkbshLcIFMU3paTis8T1wwPH2IVsmj1vBLjNzsZhLML+x5xDA?=
 =?us-ascii?Q?T7icmEx+Qu8I0glCvdfboICeIYzbzET5DApqyD7Fs6cDzJn0Ow7AlORoVJXl?=
 =?us-ascii?Q?6hY3wxh5Ih8fPGvjA5eiSDeyjQv4TOOS1PzChKT4PBAYdiAt+d36ST7knjZC?=
 =?us-ascii?Q?nCYjFn8=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8604.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?/PXhz2XnPT2+hq5+T8OBpeHZpeiHidbboV6IijjeEJf69swqVPQ2KRXbcomr?=
 =?us-ascii?Q?b3fA5ukUbjRMUPPbAlePU4e9b0l8Kd4hiZO9qaGgym+ld1tKih5uH0dd8VLr?=
 =?us-ascii?Q?SrHALCFryVRAn1vHGgzARdlXkdpAAGtoNnyiTnMvqomHCn5PukxA4eUWkce0?=
 =?us-ascii?Q?gJnrSt/Te8oJv36ihT1OtHupbtCC6cBMIttTvOGASEVXY/4JDajFwoA1osic?=
 =?us-ascii?Q?7FCxPXcHXCQNanbDxbWf2B+ggcHMaPNq+DFVL42Uk4EwUpesly/9YTRvrDzA?=
 =?us-ascii?Q?myJBwoJhGZolV+GD8yrULdhmvkvmOKq6AlSvvBELvQDr+WGOgZLfe74KNm58?=
 =?us-ascii?Q?OOrUe6Nh5hrO0SllAOKMZcfD5YY/FvF+4HUGnQdcexAzcYdiq4QhoLOm/sZf?=
 =?us-ascii?Q?Ms85QaYGtGNiWlfiMexE9BDRfkIrBoByjhYi4Y4jy0+pSzrs+xXByQ1a6099?=
 =?us-ascii?Q?vf74y/85Mr7NaWzResLVOz7bynkuhY6WrLunrv2I5Ljj0NgU1MBx4pf8gbVq?=
 =?us-ascii?Q?vnFRcjijihueB+Jj0d9UuebA32NxqxwvjLVe+qIF9eZEPUMwagnECvXtG8Dl?=
 =?us-ascii?Q?2uahlkpEzvMSvZKyyQ/w925w9SGptMc70pXCTnWcqwwqNduzwqxL7MNv/l3V?=
 =?us-ascii?Q?74Oml6gtfSZtMnGKJRNc2iLcpgqVOtVDbQuhfB5uvZezefohOrXXRYypVDup?=
 =?us-ascii?Q?isctpsLbUqu/VSf+W4yFRZCWgm52VlM9vK5OSOVRFly/86Aa/U2jfBweLu55?=
 =?us-ascii?Q?cKlZi+uDpcbIVMEcSkruiaw6Qt9shUrdwQSSemsE/nOf893BrN8G+p1KpZEX?=
 =?us-ascii?Q?tIfRFNfEY0kKTMklfqYestQK/5eoGYxBhGKB1vgDH0GUHQty7JvdrEHL6RJo?=
 =?us-ascii?Q?Unw04exIQLZ5BUzxXuzD6vmFtdZRqWn23ogRaV5qxlaEITy0cFY54HOjh0Qd?=
 =?us-ascii?Q?5Gqb3NlR1sfT5Sq5Oy4iH4OGFVVv6XqRcwACnQWO7nXI9ZTdRrbGZ3QSurDo?=
 =?us-ascii?Q?myXI9koTDIpt/9U4m1bD3+Sz9WxFUnvn2/BwB6MbSp6WQGYa1f0rnj1MHnQC?=
 =?us-ascii?Q?vlH4qJ7E5PtY8jLhCNkMfprDW7iCb5qm+BNpT1fHDFi4QFdWZZmVPGUOBFHI?=
 =?us-ascii?Q?D531CUUPaXsopIRJQuXQJdZd9fVT392bQM8sqBlVPy027LpZ7/W1ekWVb2u7?=
 =?us-ascii?Q?1pHJXnt5gdRhA8fCJd1EaC9IZDhIdNApxBi4Yitcz+7Xh2bTUaaBDWPS68w6?=
 =?us-ascii?Q?Ur1M3PAkXC3purSV8GlupClvEwKQiluT8COwlSZHAnG0n/TwpaPEDF6aiZeC?=
 =?us-ascii?Q?gdX766o3h9IFx0d55uMyiBwI1PZ9fRU+faCAMTEV5aUAANwaCGScz+qbyrGQ?=
 =?us-ascii?Q?IWQJUaWlAEmITrZkfEO0PFbjrW/NtyyiU6TB6zujL3CR+EkMiJ9PotMFXVMO?=
 =?us-ascii?Q?beT4NhPodC+Ey0T3siRZJVBzvfPfHqe3Yf0C0Pi9Oit8GUQuzQVOfPGZSuUw?=
 =?us-ascii?Q?rxEj3s3zBHnJyYNQYtmMnbVHfjF8NlD+zHWII7HoK8taCh+jpF4aX+mHZxRF?=
 =?us-ascii?Q?0M46Gj+cBAd/l5NEk0UzZYc8ZAKXfcPCNM8kIr8w?=
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
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8604.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 460b2ade-abad-4152-9805-08dc99a1c265
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 07:45:20.9375
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1FB/IdahyFaHpZBqkozIwXO+QYedfd7ODSjoopwHwnpiv2TXqGadNpKY87puBjgialC8Z+Ps95l8qNmpC+Huxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8516



> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Tuesday, June 18, 2024 2:02 PM
> To: Pankaj Gupta <pankaj.gupta@nxp.com>
> Cc: Jonathan Corbet <corbet@lwn.net>; Rob Herring <robh@kernel.org>;
> Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> <conor+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Pengutronix
> Kernel Team <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; devicetree@vger.kernel.org;
> imx@lists.linux.dev; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-doc@vger.kernel.org
> Subject: [EXT] Re: [PATCH v3 4/5] firmware: imx: add driver for NXP EdgeL=
ock
> Enclave
>
> Caution: This is an external email. Please take care when clicking links =
or
> opening attachments. When in doubt, report the message using the 'Report
> this email' button
>
>
> Hi Pankaj,
>
> Here's some review feedback. I think it'll take some more rounds to get t=
his
> into shape.
>
> On Mon, Jun 17, 2024 at 12:59:42PM +0530, Pankaj Gupta wrote:
> > NXP hardware IP(s) for secure-enclaves like Edgelock Enclave(ELE), are
> > embedded in the SoC to support the features like HSM, SHE & V2X, using
> > message based communication interface.
> >
> > The secure enclave FW communicates on a dedicated messaging unit(MU)
> > based interface(s) with application core, where kernel is running.
> > It exists on specific i.MX processors. e.g. i.MX8ULP, i.MX93.
> >
> > This patch adds the driver for communication interface to
> > secure-enclave, for exchanging messages with NXP secure enclave HW
> > IP(s) like EdgeLock Enclave (ELE) from Kernel-space, used by kernel
> > management layers like
> > - DM-Crypt.
> >
> > Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> > ---
> >  drivers/firmware/imx/Kconfig        |  12 +
> >  drivers/firmware/imx/Makefile       |   2 +
> >  drivers/firmware/imx/ele_base_msg.c | 284 +++++++++++++++++++
> > drivers/firmware/imx/ele_base_msg.h |  90 ++++++
> >  drivers/firmware/imx/ele_common.c   | 233 ++++++++++++++++
> >  drivers/firmware/imx/ele_common.h   |  45 +++
> >  drivers/firmware/imx/se_ctrl.c      | 536
> ++++++++++++++++++++++++++++++++++++
> >  drivers/firmware/imx/se_ctrl.h      |  99 +++++++
> >  include/linux/firmware/imx/se_api.h |  14 +
> >  9 files changed, 1315 insertions(+)
> >
> > diff --git a/drivers/firmware/imx/Kconfig
> > b/drivers/firmware/imx/Kconfig index 183613f82a11..56bdca9bd917 100644
> > --- a/drivers/firmware/imx/Kconfig
> > +++ b/drivers/firmware/imx/Kconfig
> > @@ -22,3 +22,15 @@ config IMX_SCU
> >
> >         This driver manages the IPC interface between host CPU and the
> >         SCU firmware running on M4.
> > +
> > +config IMX_SEC_ENCLAVE
> > +     tristate "i.MX Embedded Secure Enclave - EdgeLock Enclave Firmwar=
e
> driver."
> > +     depends on IMX_MBOX && ARCH_MXC && ARM64
> > +     default m if ARCH_MXC
> > +
> > +     help
> > +       It is possible to use APIs exposed by the iMX Secure Enclave HW=
 IP
> called:
> > +          - EdgeLock Enclave Firmware (for i.MX8ULP, i.MX93),
> > +          like base, HSM, V2X & SHE using the SAB protocol via the sha=
red
> Messaging
> > +          Unit. This driver exposes these interfaces via a set of file=
 descriptors
> > +          allowing to configure shared memory, send and receive messag=
es.
> > diff --git a/drivers/firmware/imx/Makefile
> > b/drivers/firmware/imx/Makefile index 8f9f04a513a8..aa9033e0e9e3
> > 100644
> > --- a/drivers/firmware/imx/Makefile
> > +++ b/drivers/firmware/imx/Makefile
> > @@ -1,3 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  obj-$(CONFIG_IMX_DSP)                +=3D imx-dsp.o
> >  obj-$(CONFIG_IMX_SCU)                +=3D imx-scu.o misc.o imx-scu-irq=
.o rm.o
> imx-scu-soc.o
> > +sec_enclave-objs             =3D se_ctrl.o ele_common.o ele_base_msg.o
> > +obj-${CONFIG_IMX_SEC_ENCLAVE}        +=3D sec_enclave.o
> > diff --git a/drivers/firmware/imx/ele_base_msg.c
> > b/drivers/firmware/imx/ele_base_msg.c
> > new file mode 100644
> > index 000000000000..5bfd9c7e3f7e
> > --- /dev/null
> > +++ b/drivers/firmware/imx/ele_base_msg.c
> > @@ -0,0 +1,284 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2024 NXP
> > + */
> > +
> > +#include <linux/types.h>
> > +#include <linux/completion.h>
> > +#include <linux/dma-mapping.h>
> > +
> > +#include "ele_base_msg.h"
> > +#include "ele_common.h"
> > +
> > +int ele_get_info(struct device *dev, struct ele_dev_info *s_info) {
>
> I think all currently exported functions should take a struct se_if_priv
> * as context pointer.
> I can't find any place in which any of these functions is called differen=
tly than
> with priv->dev.

All the API(s) that construct a message to be exchanged over the device-int=
erface to FW,
- will be the exported symbols in the next patch-set, to be used by other L=
inux kernel modules like: NVMEM driver, linux crypto framework, security/ke=
ys etc.
- These other Linux layers have to choose from multiple similar devices per=
 secure-enclave.

Kindly Consider these API(s), to be the EXPORT SYMBOLS, in later patches, w=
hen used outside of this driver.
>
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     struct se_api_msg *tx_msg __free(kfree) =3D NULL;
> > +     struct se_api_msg *rx_msg __free(kfree) =3D NULL;
> > +     phys_addr_t get_info_addr =3D 0;
> > +     u32 *get_info_data =3D NULL;
> > +     u32 status;
> > +     int ret =3D 0;
> > +
> > +     memset(s_info, 0x0, sizeof(*s_info));
> > +
> > +     if (priv->mem_pool_name)
> > +             get_info_data =3D get_phy_buf_mem_pool(dev,
> > +                                                  priv->mem_pool_name,
> > +                                                  &get_info_addr,
> > +                                                  ELE_GET_INFO_BUFF_SZ=
);
> > +     else
> > +             get_info_data =3D dma_alloc_coherent(dev,
> > +                                                ELE_GET_INFO_BUFF_SZ,
> > +                                                &get_info_addr,
> > +                                                GFP_KERNEL);
> > +     if (!get_info_data) {
> > +             ret =3D -ENOMEM;
> > +             dev_dbg(dev,
> > +                     "%s: Failed to allocate get_info_addr.\n",
> > +                     __func__);
> > +             goto exit;
>
> Just return here and you can drop the if(get_info_data) in the exit path.
I think it is good to have single exit path.
Accepted.

>
> > +     }
> > +
> > +     tx_msg =3D kzalloc(ELE_GET_INFO_REQ_MSG_SZ, GFP_KERNEL);
> > +     if (!tx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     rx_msg =3D kzalloc(ELE_GET_INFO_RSP_MSG_SZ, GFP_KERNEL);
> > +     if (!rx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     ret =3D imx_se_fill_cmd_msg_hdr(priv,
> > +                                   (struct se_msg_hdr *)&tx_msg->heade=
r,
> > +                                   ELE_GET_INFO_REQ,
> > +                                   ELE_GET_INFO_REQ_MSG_SZ,
> > +                                   true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     tx_msg->data[0] =3D upper_32_bits(get_info_addr);
> > +     tx_msg->data[1] =3D lower_32_bits(get_info_addr);
> > +     tx_msg->data[2] =3D sizeof(struct ele_dev_info);
>
> Use sizeof(*s_info). It will increase the chance of doing the right thing=
 here on
> struct renames and such.
Accepted.

>
> > +     ret =3D imx_ele_msg_send_rcv(priv, tx_msg, rx_msg);
> > +     if (ret < 0)
> > +             goto exit;
> > +
> > +     ret =3D validate_rsp_hdr(priv,
> > +                            &priv->rx_msg->header,
> > +                            ELE_GET_INFO_REQ,
> > +                            ELE_GET_INFO_RSP_MSG_SZ,
> > +                            true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     status =3D RES_STATUS(priv->rx_msg->data[0]);
> > +     if (status !=3D priv->success_tag) {
> > +             dev_err(dev, "Command Id[%d], Response Failure =3D 0x%x",
> > +                     ELE_GET_INFO_REQ, status);
> > +             ret =3D -EPERM;
> > +     }
> > +
> > +     memcpy(s_info, get_info_data, sizeof(struct ele_dev_info));
> > +
> > +exit:
> > +     if (get_info_addr) {
> > +             if (priv->mem_pool_name)
> > +                     free_phybuf_mem_pool(dev, priv->mem_pool_name,
> > +                                          get_info_data, ELE_GET_INFO_=
BUFF_SZ);
> > +             else
> > +                     dma_free_coherent(dev,
> > +                                       ELE_GET_INFO_BUFF_SZ,
> > +                                       get_info_data,
> > +                                       get_info_addr);
> > +     }
> > +
> > +     return ret;
> > +}
> > +
> > +int ele_fetch_soc_info(struct device *dev, u16 *soc_rev, u64
> > +*serial_num) {
> > +     struct ele_dev_info s_info =3D {0};
> > +     int err =3D 0;
> > +
> > +     err =3D ele_get_info(dev, &s_info);
> > +     if (err < 0) {
> > +             dev_err(dev, "Error");
> > +             return err;
> > +     }
> > +
> > +     *soc_rev =3D s_info.d_info.soc_rev;
> > +     *serial_num =3D GET_SERIAL_NUM_FROM_UID(s_info.d_info.uid,
> > + MAX_UID_SIZE >> 2);
> > +
> > +     return err;
> > +}
> > +
> > +int ele_ping(struct device *dev)
> > +{
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     struct se_api_msg *tx_msg __free(kfree) =3D NULL;
> > +     struct se_api_msg *rx_msg __free(kfree) =3D NULL;
> > +     u32 status;
> > +     int ret =3D 0;
> > +
> > +     tx_msg =3D kzalloc(ELE_PING_REQ_SZ, GFP_KERNEL);
> > +     if (!tx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     rx_msg =3D kzalloc(ELE_PING_RSP_SZ, GFP_KERNEL);
> > +     if (!rx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     ret =3D imx_se_fill_cmd_msg_hdr(priv,
> > +                                   (struct se_msg_hdr *)&tx_msg->heade=
r,
> > +                                   ELE_PING_REQ, ELE_PING_REQ_SZ, true=
);
> > +     if (ret) {
> > +             dev_err(dev, "Error: imx_se_fill_cmd_msg_hdr failed.\n");
> > +             goto exit;
> > +     }
> > +
> > +     ret =3D imx_ele_msg_send_rcv(priv, tx_msg, rx_msg);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     ret =3D validate_rsp_hdr(priv,
> > +                            &priv->rx_msg->header,
> > +                            ELE_PING_REQ,
> > +                            ELE_PING_RSP_SZ,
> > +                            true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     status =3D RES_STATUS(priv->rx_msg->data[0]);
> > +     if (status !=3D priv->success_tag) {
> > +             dev_err(dev, "Command Id[%d], Response Failure =3D 0x%x",
> > +                     ELE_PING_REQ, status);
> > +             ret =3D -EPERM;
> > +     }
> > +exit:
> > +     return ret;
> > +}
> > +
> > +int ele_service_swap(struct device *dev,
> > +                  phys_addr_t addr,
> > +                  u32 addr_size, u16 flag) {
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     struct se_api_msg *tx_msg __free(kfree) =3D NULL;
> > +     struct se_api_msg *rx_msg __free(kfree) =3D NULL;
> > +     u32 status;
> > +     int ret =3D 0;
> > +
> > +     tx_msg =3D kzalloc(ELE_SERVICE_SWAP_REQ_MSG_SZ, GFP_KERNEL);
> > +     if (!tx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     rx_msg =3D kzalloc(ELE_SERVICE_SWAP_RSP_MSG_SZ, GFP_KERNEL);
> > +     if (!rx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     ret =3D imx_se_fill_cmd_msg_hdr(priv,
> > +                                   (struct se_msg_hdr *)&tx_msg->heade=
r,
> > +                                   ELE_SERVICE_SWAP_REQ,
> > +                                   ELE_SERVICE_SWAP_REQ_MSG_SZ, true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     tx_msg->data[0] =3D flag;
> > +     tx_msg->data[1] =3D addr_size;
> > +     tx_msg->data[2] =3D ELE_NONE_VAL;
> > +     tx_msg->data[3] =3D lower_32_bits(addr);
> > +     tx_msg->data[4] =3D imx_se_add_msg_crc((uint32_t *)&tx_msg[0],
> > +                                              ELE_SERVICE_SWAP_REQ_MSG=
_SZ);
> > +     ret =3D imx_ele_msg_send_rcv(priv, tx_msg, rx_msg);
> > +     if (ret < 0)
> > +             goto exit;
> > +
> > +     ret =3D validate_rsp_hdr(priv,
> > +                            &priv->rx_msg->header,
> > +                            ELE_SERVICE_SWAP_REQ,
> > +                            ELE_SERVICE_SWAP_RSP_MSG_SZ,
> > +                            true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     status =3D RES_STATUS(priv->rx_msg->data[0]);
> > +     if (status !=3D priv->success_tag) {
> > +             dev_err(dev, "Command Id[%d], Response Failure =3D 0x%x",
> > +                     ELE_SERVICE_SWAP_REQ, status);
> > +             ret =3D -EPERM;
> > +     } else {
> > +             if (flag =3D=3D ELE_IMEM_EXPORT)
> > +                     ret =3D priv->rx_msg->data[1];
> > +             else
> > +                     ret =3D 0;
> > +     }
> > +exit:
> > +
> > +     return ret;
> > +}
> > +
> > +int ele_fw_authenticate(struct device *dev, phys_addr_t addr) {
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     struct se_api_msg *tx_msg __free(kfree) =3D NULL;
> > +     struct se_api_msg *rx_msg __free(kfree) =3D NULL;
> > +     u32 status;
> > +     int ret =3D 0;
> > +
> > +     tx_msg =3D kzalloc(ELE_FW_AUTH_REQ_SZ, GFP_KERNEL);
> > +     if (!tx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     rx_msg =3D kzalloc(ELE_FW_AUTH_RSP_MSG_SZ, GFP_KERNEL);
> > +     if (!rx_msg) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +     ret =3D imx_se_fill_cmd_msg_hdr(priv,
> > +                                   (struct se_msg_hdr *)&tx_msg->heade=
r,
> > +                                   ELE_FW_AUTH_REQ,
> > +                                   ELE_FW_AUTH_REQ_SZ,
> > +                                   true);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     tx_msg->data[0] =3D addr;
> > +     tx_msg->data[1] =3D addr >> 32;
> > +     tx_msg->data[2] =3D addr;
>
> Use upper_32_bits() and lower_32_bits() as done elsewhere.

Accepted.


>
> > +
> > +     ret =3D imx_ele_msg_send_rcv(priv, tx_msg, rx_msg);
> > +     if (ret < 0)
> > +             goto exit;
> > +
> > +     ret =3D validate_rsp_hdr(priv,
> > +                            &priv->rx_msg->header,
> > +                            ELE_FW_AUTH_REQ,
> > +                            ELE_FW_AUTH_RSP_MSG_SZ,
> > +                            true);
>
> You should use rx_msg here instead of priv->rx_msg. First of all it makes=
 the
> code clearer and also you take the mutex protecting
> priv->rx_msg only inside of imx_ele_msg_send_rcv() which means rx_msg
> priv->could have been set differently by a concurrent call
> already.
>
> Same applies to other places in this file.
Accepted.

>
> > +     if (ret)
> > +             goto exit;
> > +
> > +     status =3D RES_STATUS(priv->rx_msg->data[0]);
> > +     if (status !=3D priv->success_tag) {
>
> Apart from priv->rx_msg (which you shouldn't use here) priv->success_tag =
is
> the only member of struct se_if_priv that you actually use in this file.
>
> You could add a imx_ele_message_status() function to ele_common.c and
> make struct se_if_priv opaque to this file.
Accepted.

Moved the status check to validate_rsp_hdr. Rename the function to "se_val_=
rsp_hdr_n_status"

>
>
> > +             dev_err(dev, "Command Id[%d], Response Failure =3D 0x%x",
> > +                     ELE_FW_AUTH_REQ, status);
> > +             ret =3D -EPERM;
> > +     }
> > +exit:
> > +
> > +     return ret;
> > +}
> > diff --git a/drivers/firmware/imx/ele_base_msg.h
> > b/drivers/firmware/imx/ele_base_msg.h
> > new file mode 100644
> > index 000000000000..7838fe883810
> > --- /dev/null
> > +++ b/drivers/firmware/imx/ele_base_msg.h
> > @@ -0,0 +1,90 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright 2024 NXP
> > + *
> > + * Header file for the EdgeLock Enclave Base API(s).
> > + */
> > +
> > +#ifndef ELE_BASE_MSG_H
> > +#define ELE_BASE_MSG_H
> > +
> > +#include <linux/device.h>
> > +#include <linux/types.h>
> > +
> > +#define WORD_SZ                              4
> > +#define ELE_NONE_VAL                 0x0
> > +
> > +#define ELE_GET_INFO_REQ             0xDA
> > +#define ELE_GET_INFO_REQ_MSG_SZ              0x10
> > +#define ELE_GET_INFO_RSP_MSG_SZ              0x08
> > +
> > +#define ELE_GET_INFO_BUFF_SZ         0x100
> > +
> > +#define DEFAULT_IMX_SOC_VER          0xA000
> > +#define SOC_VER_MASK                 0xFFFF0000
> > +#define SOC_ID_MASK                  0x0000FFFF
> > +
> > +#define MAX_UID_SIZE                     (16)
> > +#define DEV_GETINFO_ROM_PATCH_SHA_SZ     (32)
> > +#define DEV_GETINFO_FW_SHA_SZ            (32)
> > +#define DEV_GETINFO_OEM_SRKH_SZ          (64)
> > +#define DEV_GETINFO_MIN_VER_MASK     0xFF
> > +#define DEV_GETINFO_MAJ_VER_MASK     0xFF00
> > +
> > +struct dev_info {
> > +     uint8_t  cmd;
> > +     uint8_t  ver;
> > +     uint16_t length;
> > +     uint16_t soc_id;
> > +     uint16_t soc_rev;
> > +     uint16_t lmda_val;
> > +     uint8_t  ssm_state;
> > +     uint8_t  dev_atts_api_ver;
> > +     uint8_t  uid[MAX_UID_SIZE];
> > +     uint8_t  sha_rom_patch[DEV_GETINFO_ROM_PATCH_SHA_SZ];
> > +     uint8_t  sha_fw[DEV_GETINFO_FW_SHA_SZ]; };
> > +
> > +struct dev_addn_info {
> > +     uint8_t  oem_srkh[DEV_GETINFO_OEM_SRKH_SZ];
> > +     uint8_t  trng_state;
> > +     uint8_t  csal_state;
> > +     uint8_t  imem_state;
> > +     uint8_t  reserved2;
> > +};
> > +
> > +struct ele_dev_info {
> > +     struct dev_info d_info;
> > +     struct dev_addn_info d_addn_info; };
> > +
> > +#define GET_SERIAL_NUM_FROM_UID(x, uid_word_sz) \
> > +     (((u64)(((u32 *)(x))[(uid_word_sz) - 1]) << 32) | ((u32
> > +*)(x))[0])
> > +
> > +#define ELE_PING_REQ                 0x01
> > +#define ELE_PING_REQ_SZ                      0x04
> > +#define ELE_PING_RSP_SZ                      0x08
> > +
> > +#define ELE_SERVICE_SWAP_REQ         0xDF
> > +#define ELE_SERVICE_SWAP_REQ_MSG_SZ  0x18 #define
> > +ELE_SERVICE_SWAP_RSP_MSG_SZ  0x0C
> > +#define ELE_IMEM_SIZE                        0x10000
> > +#define ELE_IMEM_STATE_OK            0xCA
> > +#define ELE_IMEM_STATE_BAD           0xFE
> > +#define ELE_IMEM_STATE_WORD          0x27
> > +#define ELE_IMEM_STATE_MASK          0x00ff0000
> > +#define ELE_IMEM_EXPORT                      0x1
> > +#define ELE_IMEM_IMPORT                      0x2
> > +
> > +#define ELE_FW_AUTH_REQ                      0x02
> > +#define ELE_FW_AUTH_REQ_SZ           0x10
> > +#define ELE_FW_AUTH_RSP_MSG_SZ               0x08
> > +
> > +int ele_get_info(struct device *dev, struct ele_dev_info *s_info);
> > +int ele_fetch_soc_info(struct device *dev, u16 *soc_rev, u64
> > +*serial_num); int ele_ping(struct device *dev); int
> > +ele_service_swap(struct device *dev,
> > +                  phys_addr_t addr,
> > +                  u32 addr_size, u16 flag); int
> > +ele_fw_authenticate(struct device *dev, phys_addr_t addr); #endif
> > diff --git a/drivers/firmware/imx/ele_common.c
> > b/drivers/firmware/imx/ele_common.c
> > new file mode 100644
> > index 000000000000..0139748f7150
> > --- /dev/null
> > +++ b/drivers/firmware/imx/ele_common.c
> > @@ -0,0 +1,233 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2024 NXP
> > + */
> > +
> > +#include "ele_base_msg.h"
> > +#include "ele_common.h"
> > +
> > +u32 imx_se_add_msg_crc(u32 *msg, u32 msg_len) {
> > +     u32 nb_words =3D msg_len / (u32)sizeof(u32);
> > +     u32 crc =3D 0;
> > +     u32 i;
> > +
> > +     for (i =3D 0; i < nb_words - 1; i++)
> > +             crc ^=3D *(msg + i);
> > +
> > +     return crc;
> > +}
> > +
> > +int imx_ele_msg_rcv(struct se_if_priv *priv) {
> > +     u32 wait;
> > +     int err =3D 0;
> > +
> > +     lockdep_assert_held(&priv->se_if_cmd_lock);
> > +
> > +     wait =3D msecs_to_jiffies(1000);
> > +     if (!wait_for_completion_timeout(&priv->done, wait)) {
> > +             dev_err(priv->dev,
> > +                             "Error: wait_for_completion timed out.\n"=
);
> > +             err =3D -ETIMEDOUT;
> > +     }
> > +
> > +     return err;
> > +}
> > +
> > +int imx_ele_msg_send(struct se_if_priv *priv, void *tx_msg) {
> > +     struct se_msg_hdr *header;
> > +     int err;
> > +
> > +     header =3D (struct se_msg_hdr *) tx_msg;
>
> Unnecessary cast.

Accepted.

>
> > +
> > +     if (header->tag =3D=3D priv->cmd_tag)
> > +             lockdep_assert_held(&priv->se_if_cmd_lock);
> > +
> > +     scoped_guard(mutex, &priv->se_if_lock);
> > +
> > +     err =3D mbox_send_message(priv->tx_chan, tx_msg);
> > +     if (err < 0) {
> > +             dev_err(priv->dev, "Error: mbox_send_message failure.\n")=
;
> > +             return err;
> > +     }
> > +
> > +     return err;
> > +}
> > +
> > +/* API used for send/receive blocking call. */ int
> > +imx_ele_msg_send_rcv(struct se_if_priv *priv, void *tx_msg, void
> > +*rx_msg) {
> > +     int err;
> > +
> > +     scoped_guard(mutex, &priv->se_if_cmd_lock);
> > +     if (priv->waiting_rsp_dev) {
> > +             dev_warn(priv->dev,
> > +                     "There should be no misc dev-ctx, waiting for res=
p.\n");
> > +             priv->waiting_rsp_dev =3D NULL;
> > +     }
> > +     priv->rx_msg =3D rx_msg;
> > +     err =3D imx_ele_msg_send(priv, tx_msg);
> > +     if (err < 0)
> > +             goto exit;
> > +
> > +     err =3D imx_ele_msg_rcv(priv);
> > +
> > +exit:
> > +     return err;
> > +}
> > +
> > +/*
> > + * Callback called by mailbox FW, when data is received.
> > + */
> > +void se_if_rx_callback(struct mbox_client *mbox_cl, void *msg) {
> > +     struct device *dev =3D mbox_cl->dev;
> > +     struct se_if_priv *priv;
> > +     struct se_msg_hdr *header;
> > +
> > +     priv =3D dev_get_drvdata(dev);
> > +
> > +     /* The function can be called with NULL msg */
> > +     if (!msg) {
> > +             dev_err(dev, "Message is invalid\n");
>
> Is it really worth spamming the log with this? It doesn't seem to contain=
 useful
> information.
Accepted. Will add meaningful message "Empty(NULL) message received from FW=
."

>
> > +             return;
> > +     }
> > +
> > +     header =3D (struct se_msg_hdr *) msg;
>
> No need to cast explicitly.

Accepted.

>
> > +
> > +     if (header->tag =3D=3D priv->rsp_tag) {
> > +             if (!priv->waiting_rsp_dev) {
> > +                     /*
> > +                      * Reading the EdgeLock Enclave response
> > +                      * to the command, sent by other
> > +                      * linux kernel services.
> > +                      */
> > +                     spin_lock(&priv->lock);
> > +                     memcpy(priv->rx_msg, msg, header->size << 2);
>
> You should check that header->size << 2 fits into the rx_msg before doing=
 this.
Accepted. Need to add the size of the buffer to priv structure.

>
> > +
> > +                     complete(&priv->done);
> > +                     spin_unlock(&priv->lock);
> > +                     return;
> > +             }
> > +     } else {
> > +             dev_err(dev, "Failed to select a device for message: %.8x=
\n",
> > +                             *((u32 *) header));
> > +             return;
> > +     }
> > +}
> > +
> > +int validate_rsp_hdr(struct se_if_priv *priv,
> > +                  struct se_msg_hdr *header,
> > +                  uint8_t msg_id,
> > +                  uint8_t sz,
> > +                  bool is_base_api)
> > +{
> > +     if (header->tag !=3D priv->rsp_tag) {
> > +             dev_err(priv->dev,
> > +                     "MSG[0x%x] Hdr: Resp tag mismatch. (0x%x !=3D 0x%=
x)",
> > +                     msg_id, header->tag, priv->rsp_tag);
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (header->command !=3D msg_id) {
> > +             dev_err(priv->dev,
> > +                     "MSG Header: Cmd id mismatch. (0x%x !=3D 0x%x)",
> > +                     header->command, msg_id);
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (header->size !=3D (sz >> 2)) {
> > +             dev_err(priv->dev,
> > +                     "MSG[0x%x] Hdr: Cmd size mismatch. (0x%x !=3D 0x%=
x)",
> > +                     msg_id, header->size, (sz >> 2));
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (is_base_api && (header->ver !=3D priv->base_api_ver)) {
> > +             dev_err(priv->dev,
> > +                     "MSG[0x%x] Hdr: Base API Vers mismatch. (0x%x !=
=3D 0x%x)",
> > +                     msg_id, header->ver, priv->base_api_ver);
> > +             return -EINVAL;
> > +     } else if (!is_base_api && header->ver !=3D priv->fw_api_ver) {
> > +             dev_err(priv->dev,
> > +                     "MSG[0x%x] Hdr: FW API Vers mismatch. (0x%x !=3D =
0x%x)",
> > +                     msg_id, header->ver, priv->fw_api_ver);
> > +             return -EINVAL;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +int se_save_imem_state(struct se_if_priv *priv) {
> > +     int ret;
> > +
> > +     /* EXPORT command will save encrypted IMEM to given address,
> > +      * so later in resume, IMEM can be restored from the given
> > +      * address.
> > +      *
> > +      * Size must be at least 64 kB.
> > +      */
> > +     ret =3D ele_service_swap(priv->dev,
> > +                            priv->imem.phyaddr,
> > +                            ELE_IMEM_SIZE,
> > +                            ELE_IMEM_EXPORT);
> > +     if (ret < 0)
> > +             dev_err(priv->dev, "Failed to export IMEM\n");
> > +     else
> > +             dev_info(priv->dev,
> > +                     "Exported %d bytes of encrypted IMEM\n",
> > +                     ret);
> > +
> > +     return ret;
> > +}
> > +
> > +int se_restore_imem_state(struct se_if_priv *priv) {
> > +     struct ele_dev_info s_info;
> > +     int ret;
> > +
> > +     /* get info from ELE */
> > +     ret =3D ele_get_info(priv->dev, &s_info);
> > +     if (ret) {
> > +             dev_err(priv->dev, "Failed to get info from ELE.\n");
> > +             return ret;
> > +     }
> > +
> > +     /* Get IMEM state, if 0xFE then import IMEM */
> > +     if (s_info.d_addn_info.imem_state =3D=3D ELE_IMEM_STATE_BAD) {
> > +             /* IMPORT command will restore IMEM from the given
> > +              * address, here size is the actual size returned by ELE
> > +              * during the export operation
> > +              */
> > +             ret =3D ele_service_swap(priv->dev,
> > +                                    priv->imem.phyaddr,
> > +                                    priv->imem.size,
> > +                                    ELE_IMEM_IMPORT);
> > +             if (ret) {
> > +                     dev_err(priv->dev, "Failed to import IMEM\n");
> > +                     goto exit;
> > +             }
> > +     } else
> > +             goto exit;
> > +
> > +     /* After importing IMEM, check if IMEM state is equal to 0xCA
> > +      * to ensure IMEM is fully loaded and
> > +      * ELE functionality can be used.
> > +      */
> > +     ret =3D ele_get_info(priv->dev, &s_info);
> > +     if (ret) {
> > +             dev_err(priv->dev, "Failed to get info from ELE.\n");
> > +             goto exit;
> > +     }
> > +
> > +     if (s_info.d_addn_info.imem_state =3D=3D ELE_IMEM_STATE_OK)
> > +             dev_info(priv->dev, "Successfully restored IMEM\n");
> > +     else
> > +             dev_err(priv->dev, "Failed to restore IMEM\n");
> > +
> > +exit:
> > +     return ret;
> > +}
> > diff --git a/drivers/firmware/imx/ele_common.h
> > b/drivers/firmware/imx/ele_common.h
> > new file mode 100644
> > index 000000000000..24569ad29a1f
> > --- /dev/null
> > +++ b/drivers/firmware/imx/ele_common.h
> > @@ -0,0 +1,45 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright 2024 NXP
> > + */
> > +
> > +
> > +#ifndef __ELE_COMMON_H__
> > +#define __ELE_COMMON_H__
> > +
> > +#include "se_ctrl.h"
> > +
> > +#define ELE_SUCCESS_IND                      0xD6
> > +
> > +#define IMX_ELE_FW_DIR                 "imx/ele/"
> > +
> > +uint32_t imx_se_add_msg_crc(uint32_t *msg, uint32_t msg_len); int
> > +imx_ele_msg_rcv(struct se_if_priv *priv); int imx_ele_msg_send(struct
> > +se_if_priv *priv, void *tx_msg); int imx_ele_msg_send_rcv(struct
> > +se_if_priv *priv, void *tx_msg, void *rx_msg); void
> > +se_if_rx_callback(struct mbox_client *mbox_cl, void *msg); int
> > +validate_rsp_hdr(struct se_if_priv *priv,
> > +                  struct se_msg_hdr *header,
> > +                  uint8_t msg_id,
> > +                  uint8_t sz,
> > +                  bool is_base_api);
> > +
> > +/* Fill a command message header with a given command ID and length
> > +in bytes. */ static inline int imx_se_fill_cmd_msg_hdr(struct se_if_pr=
iv *priv,
> > +                                       struct se_msg_hdr *hdr,
> > +                                       u8 cmd,
> > +                                       u32 len,
> > +                                       bool is_base_api) {
> > +     hdr->tag =3D priv->cmd_tag;
> > +     hdr->ver =3D (is_base_api) ? priv->base_api_ver : priv->fw_api_ve=
r;
> > +     hdr->command =3D cmd;
> > +     hdr->size =3D len >> 2;
> > +
> > +     return 0;
> > +}
> > +
> > +int se_save_imem_state(struct se_if_priv *priv); int
> > +se_restore_imem_state(struct se_if_priv *priv);
>
> The function prefixes are still not consistent. We have imx_se_*, imx_ele=
_*,
> ele_* and se_*. Unless these are really different things please decide fo=
r one
> prefix.

API(s) Nomenclature guide:
- API specific to secure-enclave interface ( prefix used is se-if).
- agnostic to se-if. For such API(s):
        -- se_* are API(s) common for all SE(s) like: V2X, SHE, ELE.
              -- ele_* are API(s) common to ELE SE only.

Will convert the API name with prefix imx_ele_* or imx_se_*, to ele_* and s=
e_*, respectively.

>
> > +
> > +#endif /*__ELE_COMMON_H__ */
> > diff --git a/drivers/firmware/imx/se_ctrl.c
> > b/drivers/firmware/imx/se_ctrl.c new file mode 100644 index
> > 000000000000..a7a7cacb4416
> > --- /dev/null
> > +++ b/drivers/firmware/imx/se_ctrl.c
> > @@ -0,0 +1,536 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2024 NXP
> > + */
> > +
> > +#include <linux/completion.h>
> > +#include <linux/delay.h>
> > +#include <linux/dev_printk.h>
> > +#include <linux/dma-mapping.h>
> > +#include <linux/errno.h>
> > +#include <linux/export.h>
> > +#include <linux/firmware.h>
> > +#include <linux/firmware/imx/se_api.h> #include <linux/genalloc.h>
> > +#include <linux/init.h> #include <linux/io.h> #include
> > +<linux/miscdevice.h> #include <linux/mod_devicetable.h> #include
> > +<linux/module.h> #include <linux/of_platform.h> #include
> > +<linux/of_reserved_mem.h> #include <linux/platform_device.h> #include
> > +<linux/slab.h> #include <linux/string.h> #include <linux/sys_soc.h>
> > +
> > +#include "ele_base_msg.h"
> > +#include "ele_common.h"
> > +#include "se_ctrl.h"
> > +
> > +#define RESERVED_DMA_POOL            BIT(0)
> > +
> > +struct imx_se_node_info {
> > +     u8 se_if_id;
> > +     u8 se_if_did;
> > +     u8 max_dev_ctx;
> > +     u8 cmd_tag;
> > +     u8 rsp_tag;
> > +     u8 success_tag;
> > +     u8 base_api_ver;
> > +     u8 fw_api_ver;
> > +     u8 *se_name;
> > +     u8 *mbox_tx_name;
> > +     u8 *mbox_rx_name;
> > +     u8 *pool_name;
> > +     u8 *fw_name_in_rfs;
> > +     bool soc_register;
> > +     bool reserved_dma_ranges;
> > +     bool imem_mgmt;
> > +     int (*se_fetch_soc_info)(struct device *dev, u16 *soc_rev, u64
> > +*serial_num); };
> > +
> > +struct imx_se_node_info_list {
> > +     u8 num_mu;
> > +     u16 soc_id;
> > +     struct imx_se_node_info info[];
> > +};
> > +
> > +static const struct imx_se_node_info_list imx8ulp_info =3D {
> > +     .num_mu =3D 1,
> > +     .soc_id =3D SOC_ID_OF_IMX8ULP,
> > +     .info =3D {
> > +                     {
> > +                     .se_if_id =3D 2,
> > +                     .se_if_did =3D 7,
> > +                     .max_dev_ctx =3D 4,
> > +                     .cmd_tag =3D 0x17,
> > +                     .rsp_tag =3D 0xe1,
> > +                     .success_tag =3D ELE_SUCCESS_IND,
> > +                     .base_api_ver =3D MESSAGING_VERSION_6,
> > +                     .fw_api_ver =3D MESSAGING_VERSION_7,
> > +                     .se_name =3D "hsm1",
> > +                     .mbox_tx_name =3D "tx",
> > +                     .mbox_rx_name =3D "rx",
> > +                     .pool_name =3D "sram",
> > +                     .fw_name_in_rfs =3D IMX_ELE_FW_DIR
> > +                                       "mx8ulpa2ext-ahab-container.img=
",
> > +                     .soc_register =3D true,
> > +                     .reserved_dma_ranges =3D true,
> > +                     .imem_mgmt =3D true,
> > +                     .se_fetch_soc_info =3D ele_fetch_soc_info,
> > +                     },
> > +     },
> > +};
> > +
> > +static const struct imx_se_node_info_list imx93_info =3D {
> > +     .num_mu =3D 1,
> > +     .soc_id =3D SOC_ID_OF_IMX93,
> > +     .info =3D {
> > +                     {
> > +                     .se_if_id =3D 2,
> > +                     .se_if_did =3D 3,
> > +                     .max_dev_ctx =3D 4,
> > +                     .cmd_tag =3D 0x17,
> > +                     .rsp_tag =3D 0xe1,
> > +                     .success_tag =3D ELE_SUCCESS_IND,
> > +                     .base_api_ver =3D MESSAGING_VERSION_6,
> > +                     .fw_api_ver =3D MESSAGING_VERSION_7,
> > +                     .se_name =3D "hsm1",
> > +                     .mbox_tx_name =3D "tx",
> > +                     .mbox_rx_name =3D "rx",
> > +                     .reserved_dma_ranges =3D true,
> > +                     .soc_register =3D true,
> > +                     },
> > +     },
> > +};
> > +
> > +static const struct of_device_id se_match[] =3D {
> > +     { .compatible =3D "fsl,imx8ulp-se", .data =3D (void *)&imx8ulp_in=
fo},
> > +     { .compatible =3D "fsl,imx93-se", .data =3D (void *)&imx93_info},
> > +     {},
> > +};
> > +
> > +static const struct imx_se_node_info
> > +     *get_imx_se_node_info(const struct imx_se_node_info_list *info_li=
st,
> > +                           const u32 idx) {
> > +     if (idx > info_list->num_mu)
> > +             return NULL;
> > +
> > +     return &info_list->info[idx];
> > +}
> > +
> > +void *get_phy_buf_mem_pool(struct device *dev,
> > +                        u8 *mem_pool_name,
> > +                        dma_addr_t *buf,
> > +                        u32 size)
> > +{
> > +     struct device_node *of_node =3D dev->of_node;
> > +     struct gen_pool *mem_pool;
> > +
> > +     mem_pool =3D of_gen_pool_get(of_node, mem_pool_name, 0);
> > +     if (!mem_pool) {
> > +             dev_err(dev,
> > +                     "Unable to get sram pool =3D %s\n",
> > +                     mem_pool_name);
> > +             return 0;
> > +     }
> > +
> > +     return gen_pool_dma_alloc(mem_pool, size, buf); }
> > +
> > +void free_phybuf_mem_pool(struct device *dev,
> > +                       u8 *mem_pool_name,
> > +                       u32 *buf,
> > +                       u32 size)
>
> The function name is not consistent with the get_ function above (phybuf =
vs.
> phy_buf). Also a function prefix would be nice.
>
Accepted. Removed this function.

> > +{
> > +     struct device_node *of_node =3D dev->of_node;
> > +     struct gen_pool *mem_pool;
> > +
> > +     mem_pool =3D of_gen_pool_get(of_node, mem_pool_name, 0);
> > +     if (!mem_pool)
> > +             dev_err(dev,
> > +                     "%s: Failed: Unable to get sram pool.\n",
> > +                     __func__);
> > +
> > +     gen_pool_free(mem_pool, (u64)buf, size); }
> > +
> > +static int imx_fetch_se_soc_info(struct se_if_priv *priv,
> > +                              const struct imx_se_node_info_list
> > +*info_list) {
> > +     const struct imx_se_node_info *info;
> > +     struct soc_device_attribute *attr;
> > +     struct soc_device *sdev;
> > +     u64 serial_num;
> > +     u16 soc_rev;
> > +     int err =3D 0;
> > +
> > +     info =3D priv->info;
> > +
> > +     /* This function should be called once.
> > +      * Check if the soc_rev is zero to continue.
> > +      */
> > +     if (priv->soc_rev)
> > +             return err;
>
> Just return 0 here. It takes one step less to understand what this is abo=
ut.
Replacing "err" with "ret", in better understanding.

>

> > +
> > +     if (info->se_fetch_soc_info) {
> > +             err =3D info->se_fetch_soc_info(priv->dev, &soc_rev, &ser=
ial_num);
> > +             if (err < 0) {
> > +                     dev_err(priv->dev, "Failed to fetch SoC Info.");
> > +                     return err;
> > +             }
> > +     } else {
> > +             dev_err(priv->dev, "Failed to fetch SoC revision.");
> > +             if (info->soc_register)
> > +                     dev_err(priv->dev, "Failed to do SoC registration=
.");
> > +             err =3D -EINVAL;
> > +             return err;
> > +     }
>
> i.MX93 doesn't have a info->se_fetch_soc_info. Does this mean it doesn't =
work
> on this SoC?
>
Yes.

> > +
> > +     priv->soc_rev =3D soc_rev;
> > +     if (!info->soc_register)
> > +             return 0;
> > +
> > +     attr =3D devm_kzalloc(priv->dev, sizeof(*attr), GFP_KERNEL);
> > +     if (!attr)
> > +             return -ENOMEM;
> > +
> > +     if (FIELD_GET(DEV_GETINFO_MIN_VER_MASK, soc_rev))
> > +             attr->revision =3D devm_kasprintf(priv->dev, GFP_KERNEL, =
"%x.%x",
> > +                                             FIELD_GET(DEV_GETINFO_MIN=
_VER_MASK,
> > +                                                       soc_rev),
> > +                                             FIELD_GET(DEV_GETINFO_MAJ=
_VER_MASK,
> > +                                                       soc_rev));
> > +     else
> > +             attr->revision =3D devm_kasprintf(priv->dev, GFP_KERNEL, =
"%x",
> > +                                             FIELD_GET(DEV_GETINFO_MAJ=
_VER_MASK,
> > +                                                       soc_rev));
> > +
> > +     switch (info_list->soc_id) {
> > +     case SOC_ID_OF_IMX8ULP:
> > +             attr->soc_id =3D devm_kasprintf(priv->dev, GFP_KERNEL,
> > +                                           "i.MX8ULP");
> > +             break;
> > +     case SOC_ID_OF_IMX93:
> > +             attr->soc_id =3D devm_kasprintf(priv->dev, GFP_KERNEL,
> > +                                           "i.MX93");
> > +             break;
> > +     }
> > +
> > +     err =3D of_property_read_string(of_root, "model",
> > +                                   &attr->machine);
> > +     if (err)
> > +             return -EINVAL;
> > +
> > +     attr->family =3D devm_kasprintf(priv->dev, GFP_KERNEL, "Freescale
> > + i.MX");
> > +
> > +     attr->serial_number
> > +             =3D devm_kasprintf(priv->dev, GFP_KERNEL, "%016llX",
> > + serial_num);
> > +
> > +     sdev =3D soc_device_register(attr);
> > +     if (IS_ERR(sdev))
> > +             return PTR_ERR(sdev);
> > +
> > +     return 0;
> > +}
> > +
> > +/* interface for managed res to free a mailbox channel */ static void
> > +if_mbox_free_channel(void *mbox_chan) {
> > +     mbox_free_channel(mbox_chan);
> > +}
> > +
> > +static int se_if_request_channel(struct device *dev,
> > +                              struct mbox_chan **chan,
> > +                              struct mbox_client *cl,
> > +                              const char *name) {
> > +     struct mbox_chan *t_chan;
> > +     int ret =3D 0;
> > +
> > +     t_chan =3D mbox_request_channel_byname(cl, name);
> > +     if (IS_ERR(t_chan)) {
> > +             ret =3D PTR_ERR(t_chan);
> > +             return dev_err_probe(dev, ret,
> > +                                  "Failed to request %s channel.", nam=
e);
> > +     }
> > +
> > +     ret =3D devm_add_action(dev, if_mbox_free_channel, t_chan);
> > +     if (ret) {
> > +             dev_err(dev, "failed to add devm removal of mbox %s\n", n=
ame);
> > +             goto exit;
> > +     }
> > +
> > +     *chan =3D t_chan;
> > +
> > +exit:
> > +     return ret;
> > +}
> > +
> > +static int se_probe_if_cleanup(struct platform_device *pdev) {
> > +     struct device *dev =3D &pdev->dev;
> > +     struct se_if_priv *priv;
> > +     int ret =3D 0;
> > +
> > +     priv =3D dev_get_drvdata(dev);
> > +
> > +     if (priv->tx_chan)
> > +             mbox_free_channel(priv->tx_chan);
> > +     if (priv->rx_chan)
> > +             mbox_free_channel(priv->rx_chan);
>
> In se_if_request_channel() you use devm_add_action() to free the mbox
> channels. With this you release them twice.
Accepted.
Though the checks will prevent from releasing the channel twice
Will remove this.

>
> > +
> > +     /* free the buffer in se remove, previously allocated
> > +      * in se probe to store encrypted IMEM
> > +      */
> > +     if (priv->imem.buf) {
> > +             dmam_free_coherent(dev,
> > +                                ELE_IMEM_SIZE,
> > +                                priv->imem.buf,
> > +                                priv->imem.phyaddr);
> > +             priv->imem.buf =3D NULL;
> > +     }
> > +
> > +     /* No need to check, if reserved memory is allocated
> > +      * before calling for its release. Or clearing the
> > +      * un-set bit.
> > +      */
> > +     of_reserved_mem_device_release(dev);
> > +     priv->flags &=3D (~RESERVED_DMA_POOL);
>
> priv->flags is only set but never checked. Remove.
Accepted. Will remove this flag.


>
> > +
> > +     return ret;
> > +}
>
> This function can't fail and I think it shouldn't be able to. Let it retu=
rn void.
Accepted.

>
> > +
> > +static void se_load_firmware(const struct firmware *fw, void
> > +*context) {
> > +     struct se_if_priv *priv =3D (struct se_if_priv *) context;
> > +     const struct imx_se_node_info *info =3D priv->info;
> > +     const u8 *se_fw_name =3D info->fw_name_in_rfs;
> > +     phys_addr_t se_fw_phyaddr;
> > +     u8 *se_fw_buf;
> > +
> > +     if (!fw) {
> > +             if (priv->fw_fail > MAX_FW_LOAD_RETRIES)
> > +                     dev_dbg(priv->dev,
> > +                              "External FW not found, using ROM FW.\n"=
);
> > +             else {
> > +                     /*add a bit delay to wait for firmware priv relea=
sed */
> > +                     msleep(20);
> > +
> > +                     /* Load firmware one more time if timeout */
> > +                     request_firmware_nowait(THIS_MODULE,
> > +                                     FW_ACTION_UEVENT, info->fw_name_i=
n_rfs,
> > +                                     priv->dev, GFP_KERNEL, priv,
> > +                                     se_load_firmware);
> > +                     priv->fw_fail++;
> > +                     dev_dbg(priv->dev, "Value of retries =3D 0x%x.\n"=
,
> > +                             priv->fw_fail);
> > +             }
> > +
> > +             return;
> > +     }
> > +
> > +     /* allocate buffer to store the SE FW */
> > +     se_fw_buf =3D dma_alloc_coherent(priv->dev, fw->size,
> > +                                    &se_fw_phyaddr, GFP_KERNEL);
> > +     if (!se_fw_buf) {
> > +             dev_err(priv->dev, "Failed to alloc SE fw buffer memory\n=
");
> > +             goto exit;
> > +     }
> > +
> > +     memcpy(se_fw_buf, fw->data, fw->size);
> > +
> > +     if (ele_fw_authenticate(priv->dev, se_fw_phyaddr))
> > +             dev_err(priv->dev,
> > +                     "Failed to authenticate & load SE firmware %s.\n"=
,
> > +                     se_fw_name);
> > +
> > +     dma_free_coherent(priv->dev,
> > +                        fw->size,
> > +                        se_fw_buf,
> > +                        se_fw_phyaddr);
> > +
> > +exit:
> > +     release_firmware(fw);
> > +}
> > +
> > +static int se_if_probe(struct platform_device *pdev) {
> > +     const struct imx_se_node_info_list *info_list;
> > +     const struct imx_se_node_info *info;
> > +     struct device *dev =3D &pdev->dev;
> > +     struct se_if_priv *priv;
> > +     u32 idx;
> > +     int ret;
> > +
> > +     if (of_property_read_u32(dev->of_node, "reg", &idx)) {
> > +             ret =3D -EINVAL;
> > +             goto exit;
> > +     }
> > +
> > +     info_list =3D device_get_match_data(dev);
> > +     info =3D get_imx_se_node_info(info_list, idx);
> > +     if (!info) {
> > +             ret =3D -EINVAL;
> > +             goto exit;
> > +     }
> > +
> > +     priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv) {
> > +             ret =3D -ENOMEM;
> > +             goto exit;
> > +     }
> > +
> > +     dev_set_drvdata(dev, priv);
> > +
> > +     /* Mailbox client configuration */
> > +     priv->se_mb_cl.dev              =3D dev;
> > +     priv->se_mb_cl.tx_block         =3D false;
> > +     priv->se_mb_cl.knows_txdone     =3D true;
> > +     priv->se_mb_cl.rx_callback      =3D se_if_rx_callback;
> > +
> > +     ret =3D se_if_request_channel(dev, &priv->tx_chan,
> > +                     &priv->se_mb_cl, info->mbox_tx_name);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     ret =3D se_if_request_channel(dev, &priv->rx_chan,
> > +                     &priv->se_mb_cl, info->mbox_rx_name);
> > +     if (ret)
> > +             goto exit;
> > +
> > +     priv->dev =3D dev;
> > +     priv->info =3D info;
> > +
> > +     mutex_init(&priv->se_if_lock);
> > +     mutex_init(&priv->se_if_cmd_lock);
> > +
> > +     priv->cmd_receiver_dev =3D NULL;
> > +     priv->waiting_rsp_dev =3D NULL;
>
> These are NULL already.
For code readability, it is good to know when and with what value it is ini=
tialized.
It will help review the 'if' condition based on these structure member vari=
able.
Will covert this information into comments.


>
> > +     priv->max_dev_ctx =3D info->max_dev_ctx;
> > +     priv->cmd_tag =3D info->cmd_tag;
> > +     priv->rsp_tag =3D info->rsp_tag;
> > +     priv->mem_pool_name =3D info->pool_name;
>
> Instead of storing the mem_pool_name in priv you should call
> of_gen_pool_get() directly here and store the returned mem_pool in priv.
> It safes you from device tree parsing during runtime and makes the runtim=
e
> code simpler.

Accepted.
Will make the changes as part v3.
Will remove the functions definition & declaration for: free_phybuf_mem_poo=
l() & get_phybuf_mem_pool()

>
> > +     priv->success_tag =3D info->success_tag;
> > +     priv->base_api_ver =3D info->base_api_ver;
> > +     priv->fw_api_ver =3D info->fw_api_ver;
> > +
> > +     init_completion(&priv->done);
> > +     spin_lock_init(&priv->lock);
> > +
> > +     if (info->reserved_dma_ranges) {
> > +             ret =3D of_reserved_mem_device_init(dev);
> > +             if (ret) {
> > +                     dev_err(dev,
> > +                             "failed to init reserved memory region %d=
\n",
> > +                             ret);
> > +                     goto exit;
> > +             }
> > +             priv->flags |=3D RESERVED_DMA_POOL;
> > +     }
> > +
> > +     ret =3D imx_fetch_se_soc_info(priv, info_list);
> > +     if (ret) {
> > +             dev_err(dev,
> > +                     "failed[%pe] to fetch SoC Info\n", ERR_PTR(ret));
> > +             goto exit;
> > +     }
> > +
> > +     if (info->imem_mgmt) {
> > +             /* allocate buffer where SE store encrypted IMEM */
> > +             priv->imem.buf =3D dmam_alloc_coherent(dev, ELE_IMEM_SIZE=
,
> > +                                                  &priv->imem.phyaddr,
> > +                                                  GFP_KERNEL);
> > +             if (!priv->imem.buf) {
> > +                     dev_err(dev,
> > +                             "dmam-alloc-failed: To store encr-IMEM.\n=
");
> > +                     ret =3D -ENOMEM;
> > +                     goto exit;
> > +             }
> > +     }
> > +
> > +     if (info->fw_name_in_rfs) {
> > +             ret =3D request_firmware_nowait(THIS_MODULE,
> > +                                           FW_ACTION_UEVENT,
> > +                                           info->fw_name_in_rfs,
> > +                                           dev, GFP_KERNEL, priv,
> > +                                           se_load_firmware);
> > +             if (ret)
> > +                     dev_warn(dev, "Failed to get firmware [%s].\n",
> > +                              info->fw_name_in_rfs);
> > +             ret =3D 0;
> > +     }
> > +
> > +     dev_info(dev, "i.MX secure-enclave: %s interface to firmware,
> configured.\n",
> > +              info->se_name);
> > +     return ret;
> > +
> > +exit:
> > +     /* if execution control reaches here, if probe fails.
> > +      * hence doing the cleanup
> > +      */
> > +     if (se_probe_if_cleanup(pdev))
> > +             dev_err(dev,
> > +                     "Failed to clean-up the child node probe.\n");
> > +
> > +     return ret;
> > +}
> > +
> > +static int se_remove(struct platform_device *pdev) {
> > +     if (se_probe_if_cleanup(pdev))
> > +             dev_err(&pdev->dev,
> > +                     "i.MX Secure Enclave is not cleanly
> > +un-probed.");
> > +
> > +     return 0;
> > +}
> > +
> > +static int se_suspend(struct device *dev) {
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     const struct imx_se_node_info *info =3D priv->info;
> > +     int ret =3D 0;
> > +
> > +     if (info && info->imem_mgmt) {
> > +             ret =3D se_save_imem_state(priv);
> > +             if (ret < 0)
> > +                     goto exit;
> > +             priv->imem.size =3D ret;
> > +     }
> > +exit:
> > +     return ret;
> > +}
> > +
> > +static int se_resume(struct device *dev) {
> > +     struct se_if_priv *priv =3D dev_get_drvdata(dev);
> > +     const struct imx_se_node_info *info =3D priv->info;
> > +
> > +     if (info && info->imem_mgmt)
> > +             se_restore_imem_state(priv);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct dev_pm_ops se_pm =3D {
> > +     RUNTIME_PM_OPS(se_suspend, se_resume, NULL) };
> > +
> > +static struct platform_driver se_driver =3D {
> > +     .driver =3D {
> > +             .name =3D "fsl-se-fw",
> > +             .of_match_table =3D se_match,
> > +             .pm =3D &se_pm,
> > +     },
> > +     .probe =3D se_if_probe,
> > +     .remove =3D se_remove,
> > +};
> > +MODULE_DEVICE_TABLE(of, se_match);
> > +
> > +module_platform_driver(se_driver);
> > +
> > +MODULE_AUTHOR("Pankaj Gupta <pankaj.gupta@nxp.com>");
> > +MODULE_DESCRIPTION("iMX Secure Enclave Driver.");
> > +MODULE_LICENSE("GPL");
> > diff --git a/drivers/firmware/imx/se_ctrl.h
> > b/drivers/firmware/imx/se_ctrl.h new file mode 100644 index
> > 000000000000..7d4f439a6158
> > --- /dev/null
> > +++ b/drivers/firmware/imx/se_ctrl.h
> > @@ -0,0 +1,99 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright 2024 NXP
> > + */
> > +
> > +#ifndef SE_MU_H
> > +#define SE_MU_H
> > +
> > +#include <linux/miscdevice.h>
> > +#include <linux/semaphore.h>
> > +#include <linux/mailbox_client.h>
> > +
> > +#define MAX_FW_LOAD_RETRIES          50
> > +
> > +#define RES_STATUS(x)                        FIELD_GET(0x000000ff, x)
> > +#define MESSAGING_VERSION_6          0x6
> > +#define MESSAGING_VERSION_7          0x7
> > +
> > +struct se_imem_buf {
> > +     u8 *buf;
> > +     phys_addr_t phyaddr;
> > +     u32 size;
> > +};
> > +
> > +/* Header of the messages exchange with the EdgeLock Enclave */
> > +struct se_msg_hdr {
> > +     u8 ver;
> > +     u8 size;
> > +     u8 command;
> > +     u8 tag;
> > +}  __packed;
> > +
> > +#define SE_MU_HDR_SZ 4
> > +
> > +struct se_api_msg {
> > +     struct se_msg_hdr header;
> > +     u32 data[];
> > +};
> > +
> > +struct se_if_priv {
> > +     struct se_if_device_ctx *cmd_receiver_dev;
> > +     /* Update to the waiting_rsp_dev, to be protected
> > +      * under se_if_lock.
> > +      */
> > +     struct se_if_device_ctx *waiting_rsp_dev;
> > +     /*
> > +      * prevent parallel access to the se interface registers
> > +      * e.g. a user trying to send a command while the other one is
> > +      * sending a response.
> > +      */
> > +     struct mutex se_if_lock;
> > +     /*
> > +      * prevent a command to be sent on the se interface while another=
 one is
> > +      * still processing. (response to a command is allowed)
> > +      */
> > +     struct mutex se_if_cmd_lock;
> > +     struct device *dev;
> > +     u8 *mem_pool_name;
> > +     u8 cmd_tag;
> > +     u8 rsp_tag;
> > +     u8 success_tag;
> > +     u8 base_api_ver;
> > +     u8 fw_api_ver;
> > +     u32 fw_fail;
> > +     u16 soc_rev;
> > +     const void *info;
> > +
> > +     struct mbox_client se_mb_cl;
> > +     struct mbox_chan *tx_chan, *rx_chan;
> > +
> > +     /* Assignment of the rx_msg buffer to held till the
> > +      * received content as part callback function, is copied.
> > +      */
> > +     struct se_api_msg *rx_msg;
> > +     struct completion done;
> > +     spinlock_t lock;
> > +     /*
> > +      * Flag to retain the state of initialization done at
> > +      * the time of se-if probe.
> > +      */
> > +     uint32_t flags;
> > +     u8 max_dev_ctx;
> > +     struct se_if_device_ctx **ctxs;
> > +     struct se_imem_buf imem;
> > +};
> > +
> > +void *get_phy_buf_mem_pool(struct device *dev,
> > +                        u8 *mem_pool_name,
> > +                        dma_addr_t *buf,
> > +                        u32 size);
> > +phys_addr_t get_phy_buf_mem_pool1(struct device *dev,
> > +                              u8 *mem_pool_name,
> > +                              u32 **buf,
> > +                              u32 size);
>
> This function prototype is unused.

Will remove it in v4.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> http://www.pen/
> gutronix.de%2F&data=3D05%7C02%7Cpankaj.gupta%40nxp.com%7C0ec8f4daf39
> 5405b46d108dc8f712278%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0
> %7C638542963272427290%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjA
> wMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C
> &sdata=3DvQEKcpFNhM%2FNONu14xCJSwx821zT44zqYYGOCskg%2B7w%3D&res
> erved=3D0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|

