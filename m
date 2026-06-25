Return-Path: <devicetree+bounces-315508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6XdyEgzYPGrUtAgAu9opvQ
	(envelope-from <devicetree+bounces-315508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:26:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFA96C357E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:26:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=NjvHkNKC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315508-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315508-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F6C030074D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E373C37B4;
	Thu, 25 Jun 2026 07:25:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011044.outbound.protection.outlook.com [40.107.130.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DF83BE659;
	Thu, 25 Jun 2026 07:25:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782372357; cv=fail; b=H9FXCt2lZw4AsTC/mP27Ch2pXVj3vDRhAD0JwiuolT/+ul/orINUYnjFdPd65stJKNmGyAKGV3vpevzEZW7hG5+wXvOWZotdjfoPpdLJqxvV3rtKlY6BuYk+Ey50u5J7xQ3Hn8fuvVvdWneTGR5csmT8urDRPxEzqyO8TPtGBg4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782372357; c=relaxed/simple;
	bh=FejVIXwbvloMobkntI+cIlwaOjgw8R0D5EcQ5bVRNI8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=TXyQ8bbMRK3JB66i0i0d1x4RiI74Y6Ja8pOcvRJ4OJr3BkU88bBYW1V8p8LUfhDVuRToIqD6EYtEj6jhLFKxDVD/3U4HEoVs77dizj3tfM/17Ra7UzuExp6rAnMURXv9rrIERGFsAGBBSjo/ujEfVJZw1/Gi/Yp66C7yzIL06wg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=NjvHkNKC; arc=fail smtp.client-ip=40.107.130.44
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nmZiVtSzIbuGK9kbVJVVpnoLb43Wcl/nPm6dRYJwS4t7rHqqfHmpf7b+nuGAjeeJ9DGcA5c6jB4AoMKo87V9BDllRfguQKOPZjEHDCPEoPuV5GNxD2UQ5qKoIa3kI6QzprJqBfc7TMg4x/ySfC1qw6Hd6nW6XI+T3c8Tjmr4CI7PY19J11ouSePFFItbgRPQ+laEjuJimQc8vXotYTIa2MnHwLZ8i1ewBbMVzgw2Wd+1LslMxqLFT0sbAMYegdIy2zeTZ91a14w044Hh6xz6SSOdC6zn2ChpLVMVn6vQp18LyMbxiYWstsg2W9Miwf/r1bzwornltKQEJFinqcOayw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i0Qp1bEdtAOorTeYWACiQslPOlPDx2pu/DIpg0yeUzo=;
 b=IZaEm1NrRyKY036HKEBRuuGQB8IkuUFF2rgAJJL3NqOwAmCIGAHCQT6oeHI4PEno1UmoSW8B18W5nRm7JpxhfDLKv9aUKR1ONIq4JRgYN7kubkeUeGsfcdRYRlwAip5Jgp8QiwGNtoFG0gE85DvhU/xbtDCw7RtDu/ZkHQxW+BbnEBc8qxeEk7K4++rDUBS/y1zhrGhpqv6neOsaldJ+KDpfsrsP/u+3PbPwipM6EL0AVLdrjn/s+mHnpZyqYAwX0SEhg1vSaq+52HG3rzaq4JOr8GiYd9FsI+o5dK5a4UYtcSHl6uiU1+hH843afwO3TfPtUDg6Ha0hcNoBs7c53w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i0Qp1bEdtAOorTeYWACiQslPOlPDx2pu/DIpg0yeUzo=;
 b=NjvHkNKCEyYaJRayr3MmdEqt1nrYWEXZq/4It6k+4p4APw+tSL8WEMJcDJ/cl4bA5kqSMNPpjtOi5QciUV3ntMnkL0palloXHk9hXQ1tM/7TuWjNB2tOk8X+qhQFaEklOmY+Bxc2IP5EtpnSyrvccPdljkao7hANEMvao+YueFE5D+q3uszqvMikkixlhfig/kEtGF7MtWQwZcS5EKykkVbJVlUGCTMWsB7wqGkxm6wFfvcbs2qkH1zJ8LFQJLa/upmSHnhfGKnWjozaGmTc5QKs+yt1PnqBfwwsw/+xfAz7UZvuakQVZpHNqaRczMTlSkhOuvCPGTXFde1+00lx9w==
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13) by DU2PR04MB8760.eurprd04.prod.outlook.com
 (2603:10a6:10:2e3::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Thu, 25 Jun
 2026 07:25:46 +0000
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994]) by VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994%6]) with mapi id 15.21.0139.018; Thu, 25 Jun 2026
 07:25:46 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: "Frank Li (OSS)" <frank.li@oss.nxp.com>
CC: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, Frank Li <frank.li@nxp.com>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Amitkumar
 Karwar <amitkumar.karwar@nxp.com>, Neeraj Sanjay Kale
	<neeraj.sanjaykale@nxp.com>, "marcel@holtmann.org" <marcel@holtmann.org>,
	"luiz.dentz@gmail.com" <luiz.dentz@gmail.com>, Hongxing Zhu
	<hongxing.zhu@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org"
	<kwilczynski@kernel.org>, "mani@kernel.org" <mani@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "brgl@kernel.org"
	<brgl@kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-bluetooth@vger.kernel.org"
	<linux-bluetooth@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>
Subject: RE: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
Thread-Topic: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
Thread-Index: AQHdAr0iuX6nZVWy60m8TZTUEemMGrZMNMoAgAEUz+CAAKi0gIAApisQ
Date: Thu, 25 Jun 2026 07:25:46 +0000
Message-ID:
 <VI0PR04MB12114BCBD405505888063284492EC2@VI0PR04MB12114.eurprd04.prod.outlook.com>
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
 <20260623030736.1421537-2-sherry.sun@oss.nxp.com>
 <ajqZBM6IkbDLiVu2@SMW015318>
 <VI0PR04MB121147C305022511469FB603A92ED2@VI0PR04MB12114.eurprd04.prod.outlook.com>
 <ajwOvZUlOEQzmjsu@SMW015318>
In-Reply-To: <ajwOvZUlOEQzmjsu@SMW015318>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0PR04MB12114:EE_|DU2PR04MB8760:EE_
x-ms-office365-filtering-correlation-id: 1f49fc68-87db-4384-a1dd-08ded28af9a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|23010399003|1800799024|376014|7416014|366016|19092799006|22082099003|56012099006|11063799006|4143699003|38070700021|18002099003;
x-microsoft-antispam-message-info:
 DZNDboajsc73uwIOPZLp7NvM1GdvXeltVgNXVDyF/c9SzvACjU21T2xRgX8whPvmnyF2Fi+KdWF4KbRyP0YRYjOHJlKWNeKTGuxO0C0XAcKHMyjXgc/H6oH6zjU4pRpxS3Q7wBNy/hb1qJMGQZgr2cBk5yGLx2CBX03HeNmUMCX1ubL4dFA9wRDCKhI6XOAttTnfV5e3V3XAy5qKZMsoulYVdK1XXjfvaEKZB4X1QDlf9yFixm8K30UlfPA8FfkUVXa1YB2xhW3g5yRpD1qyrZO+TCITN8ZWIJl7FRinRn2UjAqZJyI6kZ5F78Hf01X/+zCEq7XOapybF7dzTItSJnNtRTjjRQOkAUKHrao5SQ622RSOMpvjl7A4GKihFXLqM1WbtS6QxvJZphrqCjHDrd5x8OCSCC87XwUrdV6ZxwxX5k6+eKVkm7mwzg3BCz/Tm/nU20bB/n5sCY3vsH/rZzr6ikpN/AngUdIrwZAiNn378mb4DjqFH3cFifpVjn/eaQuP4h37z73eZqPpAH4TElh5Zx1s8Ed/o7SrgTME779G6GRTdF17ZoQJ06QQDdkW4GDsbCcfLV/VuVyLmb6vdEQO1jQfGg1EuvmkrKKvqOicIDKZXWyc4sKGdpSe6UCHXLwZm1YXz7OVhyzm86rVLdPqyYUQWbsehjp67wDnH2uFfQ/PDsesvTNUBLn/5JQRW1KQV0baNWtE1N2zDv2PTF6eMXGwoba4e4uhxFyR92o=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12114.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(7416014)(366016)(19092799006)(22082099003)(56012099006)(11063799006)(4143699003)(38070700021)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?YhfXa6oG50U0UGw+BgnnoqGIGB7VQYd2qE+S9Ci488AYiT6OGTHi3NOdd12v?=
 =?us-ascii?Q?zrILmGVuMLF2dZOxyf434wz31QcecbWHDH/IqoS1nzMqQndp4fDhCCBxe090?=
 =?us-ascii?Q?H1W1DOMvhVAg6ifGOgqrfnM4fv0Zpci+FLi6gen8wzDn0oZQ5GWzdRH5VteF?=
 =?us-ascii?Q?KSh5j0H1hh+mflIK2qqGu/0BOEmcflatU9P8noaNcgYjpVdUOnuDmwVpZQMh?=
 =?us-ascii?Q?KCcZwRT1nKVhlnzcFTYxmRM6BbPcOKl2fMvTpPVAuKKSOY057fOE1kWH5OTW?=
 =?us-ascii?Q?oQc0smcxAJWluzfYbMS6LzXeBZI6OHEYbWo/n5jFee27eInGHc2zULNgDjl6?=
 =?us-ascii?Q?S2QphN+ktUSG/MfnwcamEf6g1d8JfEHLQ9bg6VsrmVtwyux+XQ5axVUNfwG6?=
 =?us-ascii?Q?db2fqcL14rBWTjHy8I6/j7ysZdF5EjIaT56xqD+ay14uEW8AjDaatuSNfKnS?=
 =?us-ascii?Q?qrX+3ECFjgTEsRqpxm4eR57lEpJ8TWGttWLKdnKnEcVuOEQeiKeEM9XeB80z?=
 =?us-ascii?Q?E7bxaLXFN+8iYfvmH6CxmGZ59osi4LHhZo5clcJjvhOsr1LzGm6cOH7bOKux?=
 =?us-ascii?Q?xxdK28qbwb6a9w4A4jax8dA35ZCDHw3miqYLHb5QWh8cZ8cdNlmiLCP97GqZ?=
 =?us-ascii?Q?7RHUVr+5NRPjBT4Jd5WzUAvq5SBQiWWH/Av6SrC/5lO8DTU4vVc1IFOVooiK?=
 =?us-ascii?Q?Qc0SrPsxXk9B0tlj6471xwvq4lMrYnDvC7o3FZTN1udDaLp+jRqw+yQNL1oE?=
 =?us-ascii?Q?Khj1lyxTV9IzZ0M0gOnpEsvQG0KiDsPigZc9Iqq/X5nK0SOi8v4lFaWp49N6?=
 =?us-ascii?Q?W8h4fFNadPUSgSm/eI/bEjeRSTzR0QIUIw7FtqVmLuGrmuo1SaYzA060Ibqo?=
 =?us-ascii?Q?UwIohKdL4uy1/9inoWDedEB/FAFrubMA3PYuQbzWIAn7PLW29HqWqvDrWA0S?=
 =?us-ascii?Q?Cs6pLejQrucaM/kQ4xixwE67g8rGLOiBdRLoHyhmSTbcgVeFhN26HSmnk2Pb?=
 =?us-ascii?Q?zFN5NXS9yQwJ9Q1eHxPi02HG4YHvqu2jUwz+9dnNHSq6rX8luvezuh+geozP?=
 =?us-ascii?Q?QhSHbN4oRiZme9Ia9oJzHfc3sYj6Qo1vNWNxrOdsnojFz2QcliZ8gcFGTC1L?=
 =?us-ascii?Q?VLNxw6lCplCJBrxvEIc5dxMZyBVuOGYUpM6E5TqnHgEJQSlPWvlSmytWtUhe?=
 =?us-ascii?Q?ZljnzB0G1G11j2Cvju2FmBfKmqijeBgCsSqxWtld+4Kb8/1Yh3YUSt8hD7cp?=
 =?us-ascii?Q?HiVMVqZQixaXuudbJ2fGRhTRIOzo2Ot8YQ990HCe98l/Cty0D8ZXeVtTZmtt?=
 =?us-ascii?Q?fQzuCclvMF9aLDCmp9EbJl3r9RiLNJZvkgMPB35EHDWMnLkT6xq5yYk1NORq?=
 =?us-ascii?Q?V5W/NBYGoW/H6EgF+ABdYIbm0VUkttEdBGhGeHy/3dIiObigU5XeNHeFfCr0?=
 =?us-ascii?Q?Dx1UM7E4oBavENg9gZ2wHXQOgjiVVKBnyP5weBNJC3fraGhVpierLJxxu6k3?=
 =?us-ascii?Q?UXlYf8a+3mwAuUZ/nYkuOAmRvP7c/3VQ49EW/yYoi/NbhIfjvojFdwsdn5li?=
 =?us-ascii?Q?3Fy+gZDpsLhMF9ipUIdwSCIDBi4OnEJOx/e4WviM2ZXlyhDc9djx2AknsxLs?=
 =?us-ascii?Q?ZaypdBxYWDoE6JR/WyriljCGhGocackXjj4sNyV+eCNeqahefOR7qmXz8oKC?=
 =?us-ascii?Q?91QWV2EIMG5SyzLbVNBMXP9xjjcQ+h3K0m9tX0+FNVmAnHKY?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f49fc68-87db-4384-a1dd-08ded28af9a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2026 07:25:46.8407
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s9Ua8WcLGb+3nLitrRFDRThEs4RA1CYxEK6sC00xgNZuc1UYBakyX2Nmg25KuTl4yjTf4wqHNkKtNGo6wEHyaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8760
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:frank.li@oss.nxp.com,m:sherry.sun@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:frank.li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-315508-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CFA96C357E

> Subject: Re: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
>=20
> On Wed, Jun 24, 2026 at 07:09:26AM +0000, Sherry Sun wrote:
> > > Subject: Re: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag
> > > support
> > >
> > > On Tue, Jun 23, 2026 at 11:07:28AM +0800, Sherry Sun (OSS) wrote:
> > > > From: Sherry Sun <sherry.sun@nxp.com>
> > > >
> > > > Use dw_pcie_rp::skip_pwrctrl_off to avoid powering off devices
> > > > during suspend to preserve wakeup capability of the devices and
> > > > also not to power on the devices in the init path.
> > > > This allows controller power-off to be skipped when some devices(e.=
g.
> > > > M.2 cards key E without auxiliary power) required to support PCIe
> > > > L2 link state and wake-up mechanisms.
> > > >
> > > > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > > > ---
> > > >  drivers/pci/controller/dwc/pci-imx6.c | 36
> > > > +++++++++++++++++----------
> > > >  1 file changed, 23 insertions(+), 13 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > > > b/drivers/pci/controller/dwc/pci-imx6.c
> > > > index 0fa716d1ed75..ff5a9565dbbf 100644
> > > > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > > > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > > > @@ -1382,16 +1382,20 @@ static int imx_pcie_host_init(struct
> > > > dw_pcie_rp
> > > *pp)
> > > >  		}
> > > >  	}
> > > >
> > > > -	ret =3D pci_pwrctrl_create_devices(dev);
> > > > -	if (ret) {
> > > > -		dev_err(dev, "failed to create pwrctrl devices\n");
> > > > -		goto err_reg_disable;
> > > > +	if (!pci->suspended) {
> > > > +		ret =3D pci_pwrctrl_create_devices(dev);
> > >
> > > Is possible move pci_pwrctrl_create_devices() of
> > > pci_pwrctrl_create_devices
> > >
> > > and call it direct at probe() function, like other regulator_get func=
tion.
> > >
> >
> > Hi Frank,
> > That makes sense. However, if we move pci_pwrctrl_create_devices () to
> > probe(), we may need to add the following goto err_pwrctrl_destroy
> > path in imx_pcie_probe() to properly handle errors from
> > pci_pwrctrl_power_on_devices(), is that acceptable?
>=20
> Can you add a API devm_pci_pwrctrl_create_devices() ?
>=20

Hi Frank, we cannot unconditionally destroy the pwrctrl devices
when probing fails by using devm API.
Since we need to check the return value of
pci_pwrctrl_power_on_devices() for example EPROBE_DEFER to decide
whether to destroy the pwrctrl devices to avoid the deferred probe loop.

You can find more related discussion here.
https://lore.kernel.org/all/tutxwjciedqoje5wxvtin4h637auni5zzpvb7rtfg4uticx=
oux@yfl6xg7oht7t/

Best Regards
Sherry
>=20
> >
> > @@ -1960,11 +1949,15 @@ static int imx_pcie_probe(struct
> platform_device *pdev)
> >         if (ret)
> >                 return ret;
> >
> > +       ret =3D pci_pwrctrl_create_devices(dev);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret, "failed to create
> > + pwrctrl devices\n");
> > +
> >         pci->use_parent_dt_ranges =3D true;
> >         if (imx_pcie->drvdata->mode =3D=3D DW_PCIE_EP_TYPE) {
> >                 ret =3D imx_add_pcie_ep(imx_pcie, pdev);
> >                 if (ret < 0)
> > -                       return ret;
> > +                       goto err_pwrctrl_destroy;
> >
> >                 /*
> >                  * FIXME: Only single Device (EPF) is supported due to
> > the @@ -1979,7 +1972,7 @@ static int imx_pcie_probe(struct
> platform_device *pdev)
> >                 pci->pp.use_atu_msg =3D true;
> >                 ret =3D dw_pcie_host_init(&pci->pp);
> >                 if (ret < 0)
> > -                       return ret;
> > +                       goto err_pwrctrl_destroy;
> >
> >                 if (pci_msi_enabled()) {
> >                         u8 offset =3D dw_pcie_find_capability(pci,
> > PCI_CAP_ID_MSI); @@ -1991,6 +1984,11 @@ static int
> imx_pcie_probe(struct platform_device *pdev)
> >         }
> >
> >         return 0;
> > +
> > +err_pwrctrl_destroy:
> > +       if (ret !=3D -EPROBE_DEFER)
> > +               pci_pwrctrl_destroy_devices(dev);
> > +       return ret;
> >  }
> >
> > Best Regards
> > Sherry
> >
> > >
> > > > +		if (ret) {
> > > > +			dev_err(dev, "failed to create pwrctrl devices\n");
> > > > +			goto err_reg_disable;
> > > > +		}
> > > >  	}
> > > >
> > > > -	ret =3D pci_pwrctrl_power_on_devices(dev);
> > > > -	if (ret) {
> > > > -		dev_err(dev, "failed to power on pwrctrl devices\n");
> > > > -		goto err_pwrctrl_destroy;
> > > > +	if (!pp->skip_pwrctrl_off) {
> > > > +		ret =3D pci_pwrctrl_power_on_devices(dev);
> > > > +		if (ret) {
> > > > +			dev_err(dev, "failed to power on pwrctrl devices\n");
> > > > +			goto err_pwrctrl_destroy;
> > > > +		}
> > > >  	}
> > > >
> > > >  	ret =3D imx_pcie_clk_enable(imx_pcie); @@ -1460,9 +1464,10 @@
> > > static
> > > > int imx_pcie_host_init(struct dw_pcie_rp *pp)
> > > >  err_clk_disable:
> > > >  	imx_pcie_clk_disable(imx_pcie);
> > > >  err_pwrctrl_power_off:
> > > > -	pci_pwrctrl_power_off_devices(dev);
> > > > +	if (!pp->skip_pwrctrl_off)
> > > > +		pci_pwrctrl_power_off_devices(dev);
> > > >  err_pwrctrl_destroy:
> > > > -	if (ret !=3D -EPROBE_DEFER)
> > > > +	if (ret !=3D -EPROBE_DEFER && !pci->suspended)
> > > >  		pci_pwrctrl_destroy_devices(dev);
> > > >  err_reg_disable:
> > > >  	if (imx_pcie->vpcie)
> > > > @@ -1482,7 +1487,8 @@ static void imx_pcie_host_exit(struct
> > > > dw_pcie_rp
> > > *pp)
> > > >  	}
> > > >  	imx_pcie_clk_disable(imx_pcie);
> > > >
> > > > -	pci_pwrctrl_power_off_devices(pci->dev);
> > > > +	if (!pci->pp.skip_pwrctrl_off)
> > > > +		pci_pwrctrl_power_off_devices(pci->dev);
> > > >  	if (imx_pcie->vpcie)
> > > >  		regulator_disable(imx_pcie->vpcie);
> > > >  }
> > > > @@ -1990,12 +1996,16 @@ static int imx_pcie_probe(struct
> > > > platform_device *pdev)  static void imx_pcie_shutdown(struct
> > > > platform_device *pdev)  {
> > > >  	struct imx_pcie *imx_pcie =3D platform_get_drvdata(pdev);
> > > > +	struct dw_pcie *pci =3D imx_pcie->pci;
> > > > +	struct dw_pcie_rp *pp =3D &pci->pp;
> > > >
> > > >  	/* bring down link, so bootloader gets clean state in case of reb=
oot */
> > > >  	imx_pcie_assert_core_reset(imx_pcie);
> > > >  	imx_pcie_assert_perst(imx_pcie, true);
> > > > -	pci_pwrctrl_power_off_devices(&pdev->dev);
> > > > -	pci_pwrctrl_destroy_devices(&pdev->dev);
> > > > +	if (!pp->skip_pwrctrl_off)
> > > > +		pci_pwrctrl_power_off_devices(&pdev->dev);
> > > > +	if (!pci->suspended)
> > > > +		pci_pwrctrl_destroy_devices(&pdev->dev);
> > > >  }
> > > >
> > > >  static const struct imx_pcie_drvdata drvdata[] =3D {
> > > > --
> > > > 2.50.1
> > > >
> > > >

