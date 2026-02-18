Return-Path: <devicetree+bounces-266465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOZACDHvlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:56:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F7157F21
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 081743036385
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 16:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47B734404E;
	Wed, 18 Feb 2026 16:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="GFk33Js4"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011029.outbound.protection.outlook.com [40.107.130.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCD23446BE;
	Wed, 18 Feb 2026 16:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771433755; cv=fail; b=GWdEPnbSHfKiKRh9pB+cQ7mB95pBhm6FIJhHLUkV0M0GQyzu1ec/Lz0AVTia1QY+J+jkRWd3wCRJkDp0H4qORnClkPRmB1lyyVPq1MrB8/DVsNWVeGVsJsJP5qImr92k4nugtXoE1VBvqj0Mq0GP9DQ5RIB8NsXWC9EGbwuy75c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771433755; c=relaxed/simple;
	bh=ZVFihFKf8AECSW+s2G7ILL7rzJSnx8fm7FcoqgxFToY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=cPpE6njHPfaagHaIQ9ZL5eh+gCmTOXDAYI02J6zwLSDYnMBPbTIq5DT9vh+G0bdPG9fktM0tSItBYDgGyQrdUPoKuQB9slMWxZlVQcUxk5/89ubgshVCjcun98Q1+EKbZJNVdVRW72OtvpWb/lIp892VduueV62urAJgiwNkTKo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=GFk33Js4; arc=fail smtp.client-ip=40.107.130.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RLmlOANNicam2Gehhb/FthF5n3r+fSMZrGe3Id3e0rKM5VPTntIr2nonogOk81XTiq86gXB9uS3l6OWhNizXmOUNDTcYgN6c1VzyXqfq/qYePZz/J7GLzn9Fhc9pzsKYjnsFpQce573TpQQnd47+eNeVFx+YruLBU930e6zbkfax0cdfyrpa1r6iQLgsOgIOxt1gDUAd5mm1RStRtharDMV4m8tVCgflbSAEH5UChkjdsj+PqgYSxbU0qr+dUAG7XkjtS2FMfKREN6wKvzCnFNH1i0Xl5fXpZm5Ju8moUdMjvIQsofUQGCmuTX6c9Y/KZCk0JHmuGYhHc91RpjRFcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MiA2r6Qm10mCyt8zNlDaKGiYs8saFNkhVDLpJqgROw=;
 b=tgTaSxKUOjSlzLMIEkj2sPgxvhOU4UoJfkDq1ueDzwYFhBwZdRNqIiGWhL/H1F7QgBCa84KyxbVw2GNg69vhR2mA/uLmZ+jED/XzVnA4VAtw42msr5NvCqONXdt2ccEC7GHzOLt5trupHRB9NQhxfdOVbOEWVg03MwCK/InfDN42yyVH28URXxkeM7Zp68oHlg9YPwx2V9u78FAxwucJ02y3Zae2wLKUZ0OuF0SteMfsB5PAZQu9Vt9nZ7zNZKnpFuXXvfcc30Ly+c8oXp8OzsQIvokr1uy1NEpiHwn3rkl7yoSy0W6oFOArwlf6CpOiF9gLvvcbpT84xuxviCh7Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1MiA2r6Qm10mCyt8zNlDaKGiYs8saFNkhVDLpJqgROw=;
 b=GFk33Js49Jwk6KL2me/0JfkqryFmsa0vsJtCZPMhG2t1dK5PALmLmUpdnUhbWO7wD86Y5gBp6Rh2efbI3Zuf5x1SfKnohRUH/hNBcfDf7WQf3I73wmwYOlkMfP2xwS739uR448eKJB1lwsuSE54ZCjrXS6IsJiJyfM6ggChHCSNYoe94pa29bdsRLbrYyJzDkV7CAWrAoAE7v13MbZ6crbjwgtx/XRoxWqgEiSjYExqfhconWX8wLClYT2rlXrFUim3VPeyJtWZxUDJL9XFylIOFuHXkMRpe+cVTQRM3E+YcnioHyShSVBvftXRy26fGzkgiAexQiB7MtTROH6DtBA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by VI1PR04MB7117.eurprd04.prod.outlook.com (2603:10a6:800:12f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 16:55:49 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 16:55:49 +0000
Date: Wed, 18 Feb 2026 11:55:41 -0500
From: Frank Li <Frank.li@nxp.com>
To: Frieder Schrempf <frieder@fris.de>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>, imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 1/4] arm64: dts: imx8mp-kontron: Fix touch reset
 configuration on DL devices
Message-ID: <aZXvDc1G_s_h2LVJ@lizhi-Precision-Tower-5810>
References: <20260218132519.74570-1-frieder@fris.de>
 <20260218132519.74570-2-frieder@fris.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218132519.74570-2-frieder@fris.de>
X-ClientProxiedBy: BY1P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::12) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|VI1PR04MB7117:EE_
X-MS-Office365-Filtering-Correlation-Id: ed87365c-08db-46da-0fcb-08de6f0e9176
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|7416014|52116014|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?DgbD+OKoTLZW4/9OY0hu/8EHl3//5LiIKjI3H/RZjIA1YN3V+ZhD+O4hLoJa?=
 =?us-ascii?Q?Mx7ZGTX0LkFDEPKCwrYe5Y+G+w5o71Q1ggZhtZhsQuEkDWkatpGC4Rwg63kl?=
 =?us-ascii?Q?qUNoylf2Yscs9maPb0SfPW21pKMZQ8nxXOZe6GjXF1jmRxdjoDWHPbQ+warC?=
 =?us-ascii?Q?AxeiNkq6wmoJKtnBR8iUcWCThO1Nm5Yb0ejLJki/iO5+zGDFwEy5RplI6tU7?=
 =?us-ascii?Q?Q3WTFbT9P5bAipaDystEHokl/9XJasvYWmxh3GRqMhXePZlJQz8VP3QPtZOW?=
 =?us-ascii?Q?OaVCvKlfw0/EA0Ihha07WPJte7kBzqYJ9vD48/WqSnrbej+XR/98gNpPpCX/?=
 =?us-ascii?Q?h8uUENiSB8xzcZbWKazzHX2X/XUFG187Vk3LXtE1/+H5UQy25fnJs2XK2SXP?=
 =?us-ascii?Q?x889RgaQnpGemL5HbewWtUcAl5s/qOzlb1w36UXvfekkb+7BxUcXi0EOe0fa?=
 =?us-ascii?Q?LQTn7j73pzv9NOGKW+15hij8qSeJ38E0rt2A0Nb+2JySsi8KYEV1KrMagTsp?=
 =?us-ascii?Q?9eSkvugbMEI6OPNHsueuIubkaZUJILQIXv61eqj0rPPN0TvY2PIKKEQueUm4?=
 =?us-ascii?Q?HLG/LFELGxgYHFet7bnEyQihcOGjchEOf0O7KhY3C75zYn8BhaXNkix6CPpi?=
 =?us-ascii?Q?Yd8H4E2edTkq7i2ixCr92qo6s/UfNtfBkGWTBRTdgGDVzWTJi7+kI07bekyZ?=
 =?us-ascii?Q?xxJ6vD8Gkou2sErEB+mvfiXyhVZvzqkdmU7pLF4VpEuPtZtJkUQsXnwfMSwk?=
 =?us-ascii?Q?5NtJPR8YN7FsL+COnbinwTAfIMgfA8WvkhjbHDsUmumu4a+xDL6yRf9bINQj?=
 =?us-ascii?Q?o4LMFno3yC+do/H+74kbLBWIe+R2HWSI7gF8Svpr1kKwrQbJ1KSSvWC3Hntl?=
 =?us-ascii?Q?eNPB4JM5tkkSsPVSHV2Jq9EAhAEQCcnOJk4sbgATXsyY9he8nNDXcgtnIqs4?=
 =?us-ascii?Q?sPAJ1tHP01ssI+JZAy3jtdbojpzxNbFfV21L6InIo2J/WtceAU/0cRO3cxtT?=
 =?us-ascii?Q?a1TcHb9zr7GEmYvoNCw2Hli7TM8nSRISmOw+ZOVZxoimB6mCQD3RbT4tiA+b?=
 =?us-ascii?Q?gJH6DQ29FzReoF0ipqryL8uCxl0k7meYR7rzCfMA/m9BWeYtHEXSkEvc2Z2D?=
 =?us-ascii?Q?CLLeWnrHfyeoR7wNIxBgf4PgTZAKMG7ycyKn0cjOOS6Y4K0fjxl5pjU9Z3Dv?=
 =?us-ascii?Q?sj/QyXTufkPB+hkDqw3LrjM79VyY7UjZk7+9FdqrJNeITabDNUuYiQRxdz1+?=
 =?us-ascii?Q?BgZKFW3xjXNldcEYwcX02ymS0G3Rel2JsmxgXInxAUbP57mFuiNgkUc3woGK?=
 =?us-ascii?Q?/vdQobYp+dLy6HIokhpETv5gSuPML2UcemiznJSlYTnDyuUZYobzpRWimnr1?=
 =?us-ascii?Q?GtuYFqP39JlKfXO/lnUVSEnL8dJZGu3Bk6vjIB8lJxju1eMXTaAYev3JUdKK?=
 =?us-ascii?Q?xoR8V8Gek2zNIjko36pQM20/wP99YQt1Vk7fGDkhrDWFLKP8uuH7uaABX+bY?=
 =?us-ascii?Q?3L42r1/wxKXb6hu8U+Zuya8Xp3RlBKjo8uDjv4NYK2Xw4NgjnwTghWjNCwYt?=
 =?us-ascii?Q?ogsPvGDoAVWfh+aZtz7W83HwB6owWyJYJVxJtAYw2dRagOIhR0pxpj7Z6ekF?=
 =?us-ascii?Q?fgmJ/XEoJaDl3TcIvnCDtEw=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014)(52116014)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?a4xryxKGuyhEPUGlTIhn1ZMfJNOrJicZ1alv5LpXy8E6PN5mqdteMu1Ckx5Y?=
 =?us-ascii?Q?y/R/UN7cBNb3T8oXXWuHJf1nNpCxwwCVhaBNZHRHEP+1BjNC+2wRdfTt8SY3?=
 =?us-ascii?Q?zK1684o0vdpcwseSjOPDx6akr5khT2/268ZF3157d/i75qJcceDCkROWFY0F?=
 =?us-ascii?Q?kBNx0oKspbEyAsFfhv+4ulZTuF1JdaQ3nMf0uiMxlHN+XDTjZroLYIFD5hjz?=
 =?us-ascii?Q?36ZQkmL8u26jan49EIn4YulD2HXTLU1hKU7uOIG/xK8R4ycZi7ykzbbxUrhF?=
 =?us-ascii?Q?c0YaQotNIBRtcIoTXFSJhTU8UdB5Sm5NYzem2TOGfJ9H+6J0tp6Zoqkwy1m+?=
 =?us-ascii?Q?CzrRLpGU2u/+fR/63GxSTNsoZSrKuJe4PYn3mo672aB5mElG2kjzWvaTDfcl?=
 =?us-ascii?Q?crBw0L1zDLrGRhbrKLIzzPIDnMi09sRt610jzwaIC2VA/PisacJZs7j0yAT8?=
 =?us-ascii?Q?wm3O5G4W3N3w5ylveuhoBVD9A0HLmJBqsg0H8+IfTTIN4QV5b8ViNmcQ4CsA?=
 =?us-ascii?Q?Zj1bXTiM5zxUussP4TS4MnJUELlVUaKEHEuQuOzx0x89eQ7gM1U/GLK5tjTQ?=
 =?us-ascii?Q?NC0kbcTE76KHNrp4pLqxv+40cVCrZ2MdeeS8EOfMkfueQnSPjgdu/BmgS5FO?=
 =?us-ascii?Q?Tpg+KTKa1906i2CTyllpqGxk2oMOqCY/KEs+fxv9/BD29/PWg6t0D54Ztnya?=
 =?us-ascii?Q?96ABEIKiUkoOtaGSsVTUe9OdzRu9HkeO5OO+S8Khg/DJGP4r4iL1VJAm3V36?=
 =?us-ascii?Q?pwYnXsIq++H7BbkowxnA6touFsvKrwb7Oc847y29MYA+Kl+ks7Fy1dP7VA7/?=
 =?us-ascii?Q?nIhqSuDGbgdMOAix9R/9PNpTLbRYpv+rJ3eq328u15P0r6jJ/JIduM/g2OE4?=
 =?us-ascii?Q?kyzXEPPKm7daTo5DrmexCkclPrFh5FRBY2QujetBsk06Bc+SutuRLgovRTqu?=
 =?us-ascii?Q?OxLeLFQdv/7ssPEaLXMLELCM2BJHAMmtRNzrM4+yY0qFYkMMKVPs6cPoyEMj?=
 =?us-ascii?Q?5LwmQMX/dJfslYnNEc0R8dszH9wJd4DzSNdsSe2euMvbciksK4tf6UklCf4G?=
 =?us-ascii?Q?C4ZpXlFQimUnDiOTIoAlRKkQaHTwzDkO7eed0lzZTJwisgsA6gDw1jW+WT7c?=
 =?us-ascii?Q?OiC1D8+vx0bqFerC0cvIHOnUOGcFzTMSHRYYSDc0UNbGpAuz+B98dqHQNsJU?=
 =?us-ascii?Q?ByMoD1zO0tNzrVYqPMNROMIUJJhFaRrCUdphclUzb6UbvmcJXxKlzAolIjFy?=
 =?us-ascii?Q?FyqWWAsSiJvivatphGW/RUxQhxowqcFq9jytZu0n5yuIiUAcpAMQ/lbwGOPJ?=
 =?us-ascii?Q?DUhdEwlsYXgHthuTvMLySVa9pRC4XlwrRt6nKYsA+6thNa8n7Pf/XKT9hnBH?=
 =?us-ascii?Q?RDSRmZAlXoCX7pT15nIaW7+iNhwBHzNKudphF1nwmk1LBCXAxFbdzaOpj/0Y?=
 =?us-ascii?Q?EjyWBjXgCEAj5UOzdmCW0ns6YfOI08x9x4+Od2It1t8MFEQSPmvKLGb9k7Yo?=
 =?us-ascii?Q?M3m8Q5yxjP2AnZXRHQqnI70bPOHswGnH0S+x6x4b+j1qi6mT/3FvnknFLS44?=
 =?us-ascii?Q?EdtCrGCoEsL5u/KCLZgMI2ZeV0BilTJbpNazc0yAzaveRugdwEkhz1Qow7Ry?=
 =?us-ascii?Q?uKE/sJ9pCNPqxIgrFfVw7r8lMcpxTRq0O8WQ6PINqEgwOTQow5LTO2NYES03?=
 =?us-ascii?Q?WqxBuPriBE0rmrDTNHEbHAj6Mjz+Lko83ilGWN3C7yEoakMz?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed87365c-08db-46da-0fcb-08de6f0e9176
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 16:55:49.6571
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZD2BOYElG1PLlqZ453fAStBaIuddtfQEWIJNaXYb5NaLHVObIzmAAwMHhgVLuWcq6xbQvhYWD3ostJzZ2c614w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266465-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,kontron.de,lists.linux.dev,lists.infradead.org,pengutronix.de,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,nxp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kontron.de:email,5d:email]
X-Rspamd-Queue-Id: 783F7157F21
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 02:25:05PM +0100, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> The reset signal needs a pullup, but there is no hardware pullup.
> As a workaround, enable the internal pullup to fix the touchscreen.
>
> As this deviates from the default generic GPIO settings in the OSM
> devicetree, add a new node for the touch pinctrl and redefine the
> generic gpio1 pinctrl.
>
> Fixes: 946ab10e3f40f ("arm64: dts: Add support for Kontron OSM-S i.MX8MP SoM and BL carrier board")
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---

Reviewed-by: Frank Li <Frank.Li@nxp.com>

>  .../boot/dts/freescale/imx8mp-kontron-dl.dtso | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
> index a3cba41d2b531..7131e9a499ae1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
> @@ -77,6 +77,8 @@ &i2c1 {
>  	touchscreen@5d {
>  		compatible = "goodix,gt928";
>  		reg = <0x5d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_touch>;
>  		interrupt-parent = <&gpio1>;
>  		interrupts = <6 8>;
>  		irq-gpios = <&gpio1 6 0>;
> @@ -98,6 +100,16 @@ &lvds_bridge {
>  	status = "okay";
>  };
>
> +/* redefine to remove touch controller GPIOs */
> +&pinctrl_gpio1 {
> +	fsl,pins = <
> +		MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00		0x19 /* GPIO_A_0 */
> +		MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01		0x19 /* GPIO_A_1 */
> +		MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05		0x19 /* GPIO_A_2 */
> +		MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08		0x19 /* GPIO_A_5 */
> +	>;
> +};
> +
>  &pwm1 {
>  	status = "okay";
>  };
> @@ -108,4 +120,11 @@ pinctrl_panel_stby: panelstbygrp {
>  			MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x19
>  		>;
>  	};
> +
> +	pinctrl_touch: touchgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x19
> +			MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x150
> +		>;
> +	};
>  };
> --
> 2.52.0
>

