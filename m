Return-Path: <devicetree+bounces-308430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aNWhG7gCJ2rlpgIAu9opvQ
	(envelope-from <devicetree+bounces-308430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:58:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B399E659786
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:58:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=tfgTyVak;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308430-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308430-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6CBC321B47F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F3E3C76A0;
	Mon,  8 Jun 2026 17:04:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011009.outbound.protection.outlook.com [40.107.130.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24D123D283;
	Mon,  8 Jun 2026 17:04:33 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938275; cv=fail; b=KQspwFrnK4LytH3LVwJows/5TyuYAINlS6pxilXQOnupfI25+xFZOd3qOzOlC4tmRdtbMdSJmIWlBI7klbx0cvHaKah1fH8+tHWIFs+gvGmS3DPEo35W6fRl+mDXrni9djD0G2MgUAC+zQ9vjpHCqueI9CoWkcNrGLNnwP+3qsk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938275; c=relaxed/simple;
	bh=8rM3AU62MqDURB/9+G5lc8Q6e1BT34E1j5LR6InapEM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=oLMwtZ8eHRfhQoqjGBntDr5leoxPIOmA5GGcDj1LbH+/td0Erar0IQ2BAxt+Spu/wjvA9nbvKAfrL81NpfXxwTHyD09S2aUGv0nqnuUv5KwCN2v6OBJUxVs2k/pKVmyTfjbiUkzBNEwrrI49mjH12hEgoBf8VBtzllNNOp8M/jY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=tfgTyVak; arc=fail smtp.client-ip=40.107.130.9
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onSVN2sLWwzMXrCNmFAjxw/Z7BbdZ/3e85vvwjih7hXLkmZKsMeCBMgOxR94Tfv4NnX3KfyA3WRBA7N0vKQcPWBy9HD+C8k7YlbYW9z2S9kILshGHcSiZ8hLljAclhuCvmw0MnKwJ05ycKgb/KoiKjCRC/vA7P9acVQbF0VmGtno6h5DK9N+cw1I8SYkvCB0WIALd7Ux++UDj9rPrN94tMZcFn1UequeGMJsoX/oQII1lSml+QOX73xApUpQYxlXouyJ+g0x0pRYX9kCmVr5okKcfcEWSTimB3zV7JoYIB/dwy4GTMgyL8JxKcIvk8fn9+0zU/OrhMOSqXNT8R2gvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJ7g346T00k5SsD8uz0Bky0Nscr4VDykqy4aNPzwsRQ=;
 b=qiVNma4TjMRqZzTw86YJ2VikL7gSXrio+HHd+gjiEoR/sfq6WQ9yy+aMov86qa+gxG68M7ZV6L41+EqU3k19djzJZs303AxwCVBpZJqvVkzmHHtJqh8wjwU9JYSw5gNwjrGxSP37I3P43GC81+iLwpq/y2TYLW+0RumKVOB8orySmxX62yJ/8X3Ni7/kb5rMlXux+FYUu6ujXSP9rR1HrgscsEXXuuK1Ehn6o9/cn6Q0Q0TytfSsm8FDFkii2mEnjN8Q2XGop87+Dffl3pylo1L+pyz7j1VmAqtR7C2CUvoCtoF/sUUl+UWTKiXSy9/rntWinRHLhTK9e4v79g/B6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJ7g346T00k5SsD8uz0Bky0Nscr4VDykqy4aNPzwsRQ=;
 b=tfgTyVakukWEt1YxtyTk/bMC+5YGiCKX0xbKTD/tV6w0nOj42R+NzSZo4Onk/NUqCVGTQ20/4War9PnIGB5MIjPmnKMm8eH7NBLoyaYfqMF0MTaeXmLFBTI8jHBQyue6WzAqOWrTiA6vNjAVizLXspDS9enYVu+EWXh/ubY9RekvxOdbzZFwIRv/j2o/nvhvA/qRqKDqQFeWOu4vZ3cLEBIQEkYwbahnonIMenM4HYiFEWRaVdvAfhOVusQK9x0k2U1gOLyuPWxVxlEb1blGEpG7Hgr9vMTRKGFBrJQ8lNFH/3km5q25t/0wM4EezhXzdErNILUkuWjCJ5TiHijX+Q==
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com (2603:10a6:150:2cf::9)
 by DB9PR04MB9579.eurprd04.prod.outlook.com (2603:10a6:10:306::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 17:04:30 +0000
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c]) by GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 17:04:29 +0000
Date: Mon, 8 Jun 2026 13:04:24 -0400
From: Frank Li <Frank.Li@oss.nxp.com>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: alexandre.belloni@bootlin.com, Frank.Li@nxp.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev,
	linux@armlinux.org.uk, mturquette@baylibre.com, sboyd@kernel.org,
	bmasney@redhat.com, aubin.constans@microchip.com,
	Ryan.Wanner@microchip.com, romain.sioen@microchip.com,
	tytso@mit.edu, cristian.birsan@microchip.com,
	adrian.hunter@intel.com, npitre@baylibre.com,
	linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v7 3/5] i3c: mipi-i3c-hci: add microchip sama7d65 SoC
 compatible with the required quirk
Message-ID: <aib2GC4dtOBVFxpU@lizhi-Precision-Tower-5810>
References: <20260525092405.1514213-1-manikandan.m@microchip.com>
 <20260525092405.1514213-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525092405.1514213-4-manikandan.m@microchip.com>
X-ClientProxiedBy: SA1P222CA0053.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:2d0::27) To GV2PR04MB11799.eurprd04.prod.outlook.com
 (2603:10a6:150:2cf::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR04MB11799:EE_|DB9PR04MB9579:EE_
X-MS-Office365-Filtering-Correlation-Id: 33dc09a8-57c5-413d-3e45-08dec58000d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|7416014|1800799024|19092799006|56012099006|11063799006|4143699003|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	b6EtvQ+Uf4P8yJLCcXKDOCaXv6g1zI439oSOcZiYzUG7DHlrxXOp6hARRelFfngA/SwHo7ZgQ7fJhjX3joWpRiqizLKcFDEeN34pYc+MqwRC+oEFAgiHkGq0b9pqIj06GKfANPip80Ufs8Od7pIxXzdghRdNvxDw3icOh3DlsmTBiFlREn+2dUyHph4EVGpNkuDVRHEEqUIbPWhI/Nr/13ij5MBCFWLegkK6ljI+veih1dOkTSvs48CmSLiNcXRe/PTuXgGrjZJLXwhwEn0EYAr03+h89RPS6w1KcO1O+pqUbdo0uJAwyFUys+UhKcIpykBV9EBzIG5qMbrXegIPRYl93w7YdLXtK3NA+k857QWXoPoNL2e5BaJ0RS3A60yuVg1ZMfi1Bv0wLhUrFlkNynTmt3+3RhklUoTcc+IQNAA8RsjdqAxJ1441JhFa1FZKgxJly/cPhy9CtsQEObo3JvMvpEcgKHVQtruiTR2if6+HPsllfoOH+ptlU3OkOQfGXjS/5/4Lc6f69ji+n6LfHpSQ9YxxFrm4tOkFqHwNylSM1lIu0TeqYOzXeAgEzcNP47QevtrWjh8MBkiDtqEvGS5/XtBPQYXi58f9ZihXaWJ8l9fdSgfywnkZ21JIuf5Oyclq9I99NA11WW1+m3OczaZ4EWiMau2EZU8mve5STVJRwHRE/SB6s5wtH+2KkeLd
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR04MB11799.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(1800799024)(19092799006)(56012099006)(11063799006)(4143699003)(6133799003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?zS61zTMQLwmo5PQ+edKEbCPChhDrbJTgsi57BJqwqSc5MVyLwx3ykKHXfPVl?=
 =?us-ascii?Q?vmufwzu/dX2FTrBtLT8P3vgxF5Hm/oN9FZmZ+Nj0MwbNXD+wPWY+1JCj238M?=
 =?us-ascii?Q?dDfkXmd1pM2hXwQA1H50Z9iF+T/dYlcYNPIRv3/bQZCqHlKV34WLGwS8fzjs?=
 =?us-ascii?Q?u5WFkW3cV0pKLC9AURWccqqgY5+LQ8FHSUzabL/4SGhR1f3IlSU7gt0dnuhW?=
 =?us-ascii?Q?e8o8W4aAX58Bixu6msqZtE2Yv2Ft3rcA+/M9JZxvD/hmwpgb/8ddK90q31dp?=
 =?us-ascii?Q?8uFx7XwckA74OOOanbkblWgnoKpqENBFhEnmnd5a06u9rsi/ApTLxoFGyXY1?=
 =?us-ascii?Q?tJBYy1ReTWB0CQDfnX2JuPKU4w4m4FGLeTv6h0m1ZGjNS0L2x0rQoxPlTSvM?=
 =?us-ascii?Q?n68wX01a2OoGTV3lJfN39TKQVfj2isuVE8LD1ygpV9ihEQbmBs/j0IlUs4Pu?=
 =?us-ascii?Q?/uiJdI/Jkuk24BDauCHEUxEQcYtNKHCMhXi0El+9r0qHbJPBAnIruaTMfui/?=
 =?us-ascii?Q?kmLI6PHHAeeHVabt7CwdGqBSy39aSxmz/u9s/WJtGZz6K7XPM8Jb/u5r2gPt?=
 =?us-ascii?Q?bg4FzVFfn/IXE4C7siKyL7HKwNWfJf1lSiccLCMfcOfZQVKnl9ilnVCbUQ2y?=
 =?us-ascii?Q?EW2ThJBvuujo5OWWnP4qLrP/caZEPgORjVrIr6GzF4baXkMeSUTY8ynCjKXy?=
 =?us-ascii?Q?L9PuXQwtLeD3HTBdvfQcIPHINEpJyjd6XDJu0BDViIEGXuNh9NAx+nxb6H/e?=
 =?us-ascii?Q?/nT/oIupn+uiXMgd03DmpSyetBfDdqYhnOV/fKF5L/oyjH09bfW8WAaqOXCW?=
 =?us-ascii?Q?/GQksjbkXQ0Cc4ubKDoglVaqe95bpNEchlA3mbsxQm5pr8AkXay9uvqqEpq8?=
 =?us-ascii?Q?lpTOsB4QCzrbEOoOJ0ryGcZ8i6fKHi1OOWJIZmqmwmK16YVmueaV8XaxPFM0?=
 =?us-ascii?Q?P68JM1V6/aAh5YhL9bK9SFxY3vJ5wfXO/ES5KbHR81rupwlnUX9swxcgOZsc?=
 =?us-ascii?Q?NuZneSKXOieP7LEJqhEBS1x5kf2LIHgSSBN/aJYyOPLfugyQAvw42qhgSMCc?=
 =?us-ascii?Q?0AefzZTnnUlNsIA3aD/3cBynir9ZYx29cdC2nYnqQqbxPgFUob8HkZ7RbHIV?=
 =?us-ascii?Q?erTe4hl1ZdgLEGHS7LeD2QDV7SELUcoPB6/Nd7l1OjbSUu2CoIidu33LATui?=
 =?us-ascii?Q?d3tU1DuJZdMKZ0MkaOBRtG00lAY+M6gnXo5ObznHfeu7104K78hpPTCZugqx?=
 =?us-ascii?Q?a7uxom5lXTrgeMAtGm8fQ10SegBYcApWkz8XhCRkANhk0wlafg9tyzaOLUI8?=
 =?us-ascii?Q?2fFO1eKgP5UiAV43zy+Owx3ZEI4lDFYvcgI2mPijZ76OF/d1fXuZvE7/AORO?=
 =?us-ascii?Q?PGzJGN0iHoex5QU6SMjf/l4zSihbLadSKbDCM9iVAvbO5cYkMf1IVBS9DeKq?=
 =?us-ascii?Q?bs4UGbMtH/u1Eg2xyBL1hJvLyweIa138HFqgU2IvMkc1Gsg4VZKq6IKo5zoS?=
 =?us-ascii?Q?RQIOBCSNTPfWXeVNJEbW5tHz/v/sTfPJ90+2VzLIElo/DiC4uIf43R5AkW9A?=
 =?us-ascii?Q?KUmw6d8GnurxbWe+HuoOMAZRiR2v2w0TDa2BDEVlVrh4rmqZNgQufu4Edxtd?=
 =?us-ascii?Q?j8VG+CKMosUL3JQMjMMm8vQkJ+9oMz+/fdQkVfLazl8IeB/zCwGhJ2hu1ixc?=
 =?us-ascii?Q?mdAZWni7sAlTwXzM7HQ8exS1ddEbPe+twHfVbr2aHc/d4zQK5ZnwrbFIgDCC?=
 =?us-ascii?Q?7w0hYYXo6gv/aSKoIGo3vURby9g/4Gg=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33dc09a8-57c5-413d-3e45-08dec58000d7
X-MS-Exchange-CrossTenant-AuthSource: GV2PR04MB11799.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 17:04:29.8592
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JAQNkQy3eJYhaxKfmt/nFMaq0ctP9vNykrHf9IRKf+DANRtodgGm8N++bhL0GRVBBWFsXpJjDzr/AeuxOtjmPraH64LZUgN55ialkdMv/mC4Ar8bICcP8B84TNFz7hK5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9579
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308430-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:manikandan.m@microchip.com,m:alexandre.belloni@bootlin.com,m:Frank.Li@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:linux@armlinux.org.uk,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:aubin.constans@microchip.com,m:Ryan.Wanner@microchip.com,m:romain.sioen@microchip.com,m:tytso@mit.edu,m:cristian.birsan@microchip.com,m:adrian.hunter@intel.com,m:npitre@baylibre.com,m:linux-i3c@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,lizhi-Precision-Tower-5810:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,NXP1.onmicrosoft.com:dkim,microchip.com:email,vger.kernel.org:from_smtp,intel.com:email,oss.nxp.com:from_mime,of_device_id.data:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B399E659786

On Mon, May 25, 2026 at 02:54:03PM +0530, Manikandan Muralidharan wrote:
> Add support for microchip sama7d65 SoC I3C HCI master only IP
> with additional clock support to enable bulk clock acquisition
> and apply the required quirks.
>
> Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> ---
> Changes in v7:
> - Use (void *)(ulong) cast instead of direct (void *) cast in
>   of_device_id.data for pointer-size safety across architectures
> - Update commit message body to explicitly mention quirk application
>
> Changes in v6:
> - Reorder local variable definitions in i3c_hci_probe in descending
>   order of line length
>
> Changes in v5:
> - Remove HCI_QUIRK_CLK_SUPPORT quirk and call
>   devm_clk_bulk_get_all_enabled unconditionally, eliminating the
>   need for a clock-specific quirk flag
>
> Changes in v4:
> - Remove the clock index variable MCHP_I3C_CLK_IDX as it is no
>   longer needed after switching to bulk clock handling
>
> Changes in v3:
> - Make use of existing HCI_QUIRK_* code base instead of introducing
>   separate MCHP_HCI_QUIRK_* flags
> - Introduce HCI_QUIRK_CLK_SUPPORT to handle peripheral and system
>   generic clk in bulk
>
> Changes in v2:
> - Platform specific changes integrated in the existing mipi-i3c-hci
>   driver by introducing separate MCHP_HCI_QUIRK_* quirks and vendor
>   specific quirk files rather than a standalone driver
>
>  drivers/i3c/master/mipi-i3c-hci/core.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
> index b781dbed2165..4cdf2abd4219 100644
> --- a/drivers/i3c/master/mipi-i3c-hci/core.c
> +++ b/drivers/i3c/master/mipi-i3c-hci/core.c
> @@ -8,6 +8,7 @@
>   */
>
>  #include <linux/bitfield.h>
> +#include <linux/clk.h>
>  #include <linux/device.h>
>  #include <linux/errno.h>
>  #include <linux/i3c/master.h>
> @@ -969,6 +970,7 @@ static int i3c_hci_init(struct i3c_hci *hci)
>  static int i3c_hci_probe(struct platform_device *pdev)
>  {
>  	const struct mipi_i3c_hci_platform_data *pdata = pdev->dev.platform_data;
> +	struct clk_bulk_data *clks;
>  	struct i3c_hci *hci;
>  	int irq, ret;
>
> @@ -1001,6 +1003,11 @@ static int i3c_hci_probe(struct platform_device *pdev)
>  	if (!hci->quirks && platform_get_device_id(pdev))
>  		hci->quirks = platform_get_device_id(pdev)->driver_data;
>
> +	ret = devm_clk_bulk_get_all_enabled(&pdev->dev, &clks);
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "Failed to get clocks\n");
> +
>  	ret = i3c_hci_init(hci);
>  	if (ret)
>  		return ret;
> @@ -1031,6 +1038,9 @@ static void i3c_hci_remove(struct platform_device *pdev)
>
>  static const __maybe_unused struct of_device_id i3c_hci_of_match[] = {
>  	{ .compatible = "mipi-i3c-hci", },
> +	{ .compatible = "microchip,sama7d65-i3c-hci",
> +	  .data = (void *)(ulong)(HCI_QUIRK_PIO_MODE | HCI_QUIRK_OD_PP_TIMING |
> +				  HCI_QUIRK_RESP_BUF_THLD) },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, i3c_hci_of_match);
> --
> 2.25.1
>

