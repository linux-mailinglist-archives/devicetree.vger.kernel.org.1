Return-Path: <devicetree+bounces-317496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fg5lJXp+Q2pCZQoAu9opvQ
	(envelope-from <devicetree+bounces-317496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AE6E1AA2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=WfuAuIFq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317496-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317496-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 195DC30138A7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50C039B96A;
	Tue, 30 Jun 2026 08:29:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011039.outbound.protection.outlook.com [52.101.70.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501531A682A;
	Tue, 30 Jun 2026 08:29:41 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782808182; cv=fail; b=Sl9Iuj51a7xkhlO5VSL6z5PlkGgrKuzc+CSUrFEBA7GOeKVZXTzbitu4p/Aivj3MPeFCgw0+oveUACGhNECDDUnqmHLqXEDA37rKYvtO6xxcv0ZipCfzRpZIJf/trZb0J7g3C13wHKMsZZIZGu1fWsVUmqhhgRQjYsG0Qng/1z8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782808182; c=relaxed/simple;
	bh=A4f8jdXdGkmaBjT5ij6qX+f2NMZaOkETfc4d6Gs6xyA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=fGyNH/kklKMyZa+/+hO0ry9V9i4ulasOTR0/8HbviBYsaWcAjYIwafFn+f8+SbtmmiH2nS+apGUcTh/WHBHEa2YuUuU89IXRCClSR+Bl0+MbIVCywCq8iJUljMwAn6ptTor86S3yNk2NpBhK6Jw/sHvgA8+zKbzLVzaCMPdFJ2g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=WfuAuIFq; arc=fail smtp.client-ip=52.101.70.39
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NPDOXYeu2hpYczta/PICfokT/JgVvo/2rX9FSt3IblTRuyBEEDiUN6S2mjtWYduXSH8c8dR8jKOaNX2frHzSdOI9iKx51AsZ/tCW2nMyasILTiUl9loe/O74X49H6Jh/qCGOykYRdFnLM/pQVW1zG7IRLz08xK3NPYcb64YSuXkigvWfjP3/bImJV3SrowVCox54k8muxIQ8kOF+gYq2KOFf3xvCxg+FMngP8vajjCEepLBV/XUvN0VQfzn1k6rV4q/mejU7zN0N+Zzu6JAYD9ziMxdG/kgvbdGOfHjMdNxccF6l242Szr1E+eAtXhPssapBRzwZyrFz22W8a2GECg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4FaOxpaKU61FKjWHMq/McqQnb5YYkQ90NDSvR5VJZE=;
 b=Q6OMFYUt8F0qoNosWyiStExy6bTy8dt5CPITqJknrqbqgF7utoxyYYliesQD4QKx+ovTvFhz2dFOjeUzRsbDudjqoVM/WDaMIXRcHd3wAyjYoJTjYWKk7R2M2ckGAFxxbw6ZdX1fXy1U7u6W4m1jMAYELljAVqJxQkkSQwsOupxJCaS5WtAXWu/Fvi4+NC1gvHrMMcV/SSgXCn53Pc+j6f7KPRmz0Ot3URVAlqc+/0ig7pJNGnjJGtYbx9dwkF1E/dqyYAXxLxyDj4xuRU4RFLILX/7lBiOrAbWiO/pgMRPTAPiBZD3ybg4JVp0SG3VImcmLjnwCKTUS4bL5o5xhFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4FaOxpaKU61FKjWHMq/McqQnb5YYkQ90NDSvR5VJZE=;
 b=WfuAuIFqiLCeHtnJpk9/sK0ZY2XcEFZTcBbK9iEEwdr27BH+ZyG1dKBO9BGYkWjiEEzPGfNUiYQ129tUNN5EGje8mGWa4Q06EhJI82m1G3OW2iXdUgjQ/8Kw8c7A+2Pwn6B9O0068IIEZ0f+8blB2j0Sg9UGeL8zxJq6/LJvUSOxEK8wWNZgmRS/JshFKiys6Wv97yuALYwF/eJRtE93ThVh2xyGM9qmZvV60Jf8DpwP1fGd4JDJNtrY8SdB+G76OcNe1L/lsNeFQYnIxuMOqidlaPEjotE8HF9nV+uxs3NXFiPOKl5RHAxcy9b9lkRnI1oDlsiowO8w8VZxordNcQ==
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13) by PA4PR04MB7901.eurprd04.prod.outlook.com
 (2603:10a6:102:ca::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 08:29:35 +0000
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994]) by VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994%6]) with mapi id 15.21.0159.015; Tue, 30 Jun 2026
 08:29:35 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: "sashiko-reviews@lists.linux.dev" <sashiko-reviews@lists.linux.dev>
CC: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"Frank.Li@kernel.org" <Frank.Li@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "imx@lists.linux.dev"
	<imx@lists.linux.dev>
Subject: RE: [PATCH V4 2/7] arm: dts: imx6sx-sdb: Move power supply property
 to Root Port node
Thread-Topic: [PATCH V4 2/7] arm: dts: imx6sx-sdb: Move power supply property
 to Root Port node
Thread-Index: AQHdCFZly83n0PwSrkaZC+2z93FXm7ZWobmAgAAhnHA=
Date: Tue, 30 Jun 2026 08:29:35 +0000
Message-ID:
 <VI0PR04MB12114B9BA5D30DB79EDE3FD5592F72@VI0PR04MB12114.eurprd04.prod.outlook.com>
References: <20260630060710.3294811-1-sherry.sun@oss.nxp.com>
 <20260630060710.3294811-3-sherry.sun@oss.nxp.com>
 <20260630062509.B01751F000E9@smtp.kernel.org>
In-Reply-To: <20260630062509.B01751F000E9@smtp.kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0PR04MB12114:EE_|PA4PR04MB7901:EE_
x-ms-office365-filtering-correlation-id: 0be8a915-8dde-4027-eac7-08ded681b774
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|23010399003|376014|1800799024|19092799006|38070700021|11063799006|18002099003|4143699003|3023799007|6133799003|22082099003|56012099006;
x-microsoft-antispam-message-info:
 x7Sh4zDOaV1BRDjkIqJEEpRQNdBTmCmFEhMpEqA/0NRHS5h07yaWY5dCdtOKvb9E2u6+Dk7jTSzS8XQzgv5jwqWxWxfg77cx7C+Kl/D1hFau2Q8d2MbZM+txuX2/ThJJNrOVShVjc7JrK+j2/wdtiEVVz2LcMYXQeir5kzCbMwkcqGziJadhwqDZ4rwbjMtz2/GLth68yJ1iyHrN8SGDVLGhdlARTueOWga8nlz+BZzdtuOuORKjh+mIZ+DQ4iVkRcrGTt6QuQPpPxGeOhVv1zU2y0kOK5xvNBcT3gHxW2U6sB3fYu6BRbv8gUfzWFkoQZkfeq1rG7pMi0PvrdQ6L6tbvbKnkBefWEwBb11AFqXVJ+Hsj4eAnFoS5ms9fepyW1HVgPiz9i9JBXKHRDu6HUCURhjjv51Ex4On4OO9xJks62pKq0D1SDbqw3d12z4JXWJeqgeqEiD8rGqBS7XLnMQ8AF0Ce+uvolI1tR9Q5kyMBHVXJay5SvWQjIaYvpZNVPneBKLUQSkXZawutxSHijcvdR18wRQUYwHRQqNmQv88vsIO9hE2k8+DW0aThuHTcCfCgErhCs2HVuEL9k5HCrMP62TfxWyNA3/GkFrsFTfQnkaH3hHX5QrmfpMQsIb8nWAomrK6G9VDXez9B9aqA7uic4vpcQTuv1e/jGp0GvTnK8BDtjneP6897jyVlM6m/wKwJMv9Tc36dAttvytgkj4C4d6Tq3JFoKMdqGeQJPQ=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12114.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(19092799006)(38070700021)(11063799006)(18002099003)(4143699003)(3023799007)(6133799003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?lWukm+byNkqoJWZ6cMzgYMOgM25qY2VKYJE80jS4LykUl2QvtZo3oTr9Fgvi?=
 =?us-ascii?Q?/XfoxuvMHnLqtoATDDOf+UAFRBZzjPsrKyw1v/DuglYHpFnsVfI1EwOP7/4h?=
 =?us-ascii?Q?7zHEj9qTGHHfBQBA0YoFKmygJ8RI/5mCpDBVgNX06IpMfi2vGhCrckiQFa7S?=
 =?us-ascii?Q?84l3RrbTlbLYk0F3/dNOGZXY5+SnDJ7og3NQoQnaCcg9YICJkSJXD8gosnW2?=
 =?us-ascii?Q?uw2VC6277gRBY/wvVpAUPQO/D4JZAY6EepbtlBk+t6wvJeMi99gZDhEtonX/?=
 =?us-ascii?Q?Oyah7jM3pquMMiqTYepX7g2+fSc73vdUduCE2A3dUJgb2ilMGoR+GXv9lZYD?=
 =?us-ascii?Q?+3E01dp/Sbg8T59NzYXg1SIZB+frFnppVFBlIQg6rgCVGe5kJQcom1G8vA67?=
 =?us-ascii?Q?A1tkFLEO+UpIbfTh1LMBYIaCBwgiM11fnd0ZngiVE/vpP6hCLmqg/o4IzyLD?=
 =?us-ascii?Q?xjMT4mLbG9cpL9VahBYU6mJVOC9TZCR/IMUYpy0g/b2bnwxYD9ugZBAhFwvR?=
 =?us-ascii?Q?Y18Lpsd1zESb1kl3vfRvR/OkUoOYXZAgpxlLvYlE/JfTAKFN1iSEbG+0LcCK?=
 =?us-ascii?Q?CVSLympyGzZ0F62686Xep/0ALx59ax9bXhlWiGLY5MNaxoVe4/rzYV1N8ksX?=
 =?us-ascii?Q?2YTu6L8fWKgAQvEZN+WcbwKkHKxzFbVZ6EMZXFsmikrip/HHVYc39EGuA+x9?=
 =?us-ascii?Q?5d5RffkNtGJEti3pE8Iot8hzKSJxmidZFpzXWQiV6Kp5X2By+yEbsZ+Mb1Vv?=
 =?us-ascii?Q?f56ye2PAeiUNAr/pysyyHELf7RJ8Hs827cW/dhIlyysaoCelsbgjziFOflu0?=
 =?us-ascii?Q?X8/+TXIP1ZDyXzZp07Poqx4FjZf5HiD8vL95e6864MlV6Gdjt1HkvLEVdSrN?=
 =?us-ascii?Q?TPPZHxnpQ8AvhUwAwq/z+hblBqs4Wkrg1PKBBDQbRaShCHokLMoqj+zy6frJ?=
 =?us-ascii?Q?h/o0FALKA8aKtrXt73uKdNV5pdb1mGj9fsKcYGIPI9NWDWFh61AfdSCFCnvR?=
 =?us-ascii?Q?XVcbV3a5FYyhtdBQTCDtM4QmOrwp1U5/M/05Fs5dNcWWKTCZrBCmUAyIMMgt?=
 =?us-ascii?Q?Zb+L2HfV+Wymh8DhSc3vW9Xor/knT7E3rMp6MzqhXae46MOZDSn4w4sDciy2?=
 =?us-ascii?Q?TWPECJRrq7u+Onee5EEbot1xjzHlauJhswPH+hsKgj7j0nauiPWhO2W2pExS?=
 =?us-ascii?Q?MDWDycpo8agoQ17sg2fJt9m8Ou+Ouq8jUoK7yMptXBbWD555jEb6nag+Y2zw?=
 =?us-ascii?Q?ob9KNEzHYi/cp9xSEKDz5I7cTJQ6izSXAJXoJAS8qskAVRhG0fOeHR+9yjCU?=
 =?us-ascii?Q?cm6ny+HDbf1t8Mc3/++AfrxlMYFwiQXHjeo86vh/cmHToF3CTTif2/wyJA5I?=
 =?us-ascii?Q?ujyMYoltnPi+WC2LjDFRIYMvbNCyUfNyqjSSMpPqVqtGY7lVkN7tdGXxJ4bu?=
 =?us-ascii?Q?9X9CTDrKFk7qfOltMSOQXAHaeV8z3JrdYqvm7vpASXU6yRSZRzaqtndO5o6A?=
 =?us-ascii?Q?oYobpYZkSHrfuh/DHQhRYkZ4TA80tmid2dEuHcDi5v8nm4eDu5CeAawq7TZA?=
 =?us-ascii?Q?d67twHfcLv175qM7CV+ECD3OlMSHpWgvUNj726HmxbdzOMlUrN6xGKhn2K3X?=
 =?us-ascii?Q?aN1JzOJqZe+fYycFGc5/XhEJBFC6tcJ/OfxdFsyWZF0qfU2SmPHvfK+/jjg8?=
 =?us-ascii?Q?JrOIpU9igYRSEDubaQ8DUeY7CdT+INzSvB/MODG83K1It0Qd?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 0be8a915-8dde-4027-eac7-08ded681b774
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 08:29:35.0140
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nxS17qk2H6AUCcT8kq3R0VQwWNroJrTCfYWZGtt1f2iTGVR/7d8JlXwb4laklfUSsXREr3NebEi4oA6QvTOaSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7901
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317496-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:linux-pci@vger.kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[nxp.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,VI0PR04MB12114.eurprd04.prod.outlook.com:mid,nxp.com:dkim,nxp.com:email,nxp.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E5AE6E1AA2

> Subject: Re: [PATCH V4 2/7] arm: dts: imx6sx-sdb: Move power supply
> property to Root Port node
>=20
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s)
> to consider:
> - [High] Removing `vpcie-supply` from the host controller node breaks DT
> backward compatibility, as older kernels will fail to enable the regulato=
r and
> initialize PCIe.
> - [Low] Adding `vpcie3v3-supply` to the Root Port node without updating t=
he
> corresponding binding schema causes `dtbs_check` validation failures.
> --
>=20
> commit 9019771c92c02473e9f2657166c7dc76a65b606d
> Author: Sherry Sun <sherry.sun@nxp.com>
>=20
> arm: dts: imx6sx-sdb: Move power supply property to Root Port node
>=20
> Move the power supply property from the PCIe controller node to the Root
> Port child node to support the new PCI pwrctrl framework.
>=20
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> > b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> > index 338de4d144b2a..41a69fe83be85 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> > @@ -284,12 +284,12 @@ &pcie {
> >  	pinctrl-0 =3D <&pinctrl_pcie>;
> >  	/* This property is deprecated, use reset-gpios from the Root Port
> node. */
> >  	reset-gpio =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> > -	vpcie-supply =3D <&reg_pcie_gpio>;
>=20
> [Severity: High]
> Does removing this property break device tree backward compatibility for
> older kernels?
>=20
> Older kernels using the pci-imx6.c driver expect the vpcie-supply propert=
y in
> the host controller node to find and enable the regulator. If this is rem=
oved
> instead of being left as a deprecated fallback (similar to the reset-gpio
> property above), will PCIe initialization fail on older kernels booted wi=
th this
> new device tree?

As documented in Documentation/devicetree/bindings/ABI.rst, "a stable
binding means that a newer kernel will not break on an older device
tree, but that doesn't mean the binding is frozen for all time." The
compatibility guarantee is one-directional: new kernels must support
old DTS files, but old kernels are not required to work with new DTS
files.

The driver already preserves the legacy fallback path for this:

    /* Legacy regulator handling for DT backward compatibility. */
    if (imx_pcie->vpcie) {
        ret =3D regulator_enable(imx_pcie->vpcie);
        ...
    }

So a new kernel running with an old DTS that still has vpcie-supply on
the controller node will continue to work correctly.

Users are not expected to pair a new DTS with an old kernel. Doing so
would break in many other ways beyond this single property.

>=20
> >  	status =3D "okay";
> >  };
> >
> >  &pcie_port0 {
> >  	reset-gpios =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> > +	vpcie3v3-supply =3D <&reg_pcie_gpio>;
>=20
> [Severity: Low]
> Does adding this property to the Root Port node without a corresponding
> schema update cause dtbs_check validation failures?
>=20
> The fsl,imx6q-pcie.yaml binding schema defines the root port node with
> unevaluatedProperties: false, but it does not appear to document the newl=
y
> added vpcie3v3-supply property.
>=20

vpcie3v3-supply is documented in dt-schema:
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/pci/=
pci-bus-common.yaml

Best Regards
Sherry

