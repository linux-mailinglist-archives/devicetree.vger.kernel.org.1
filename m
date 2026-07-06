Return-Path: <devicetree+bounces-321160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hZ0LMkG3S2pkZAEAu9opvQ
	(envelope-from <devicetree+bounces-321160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:10:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A63D711C13
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:10:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=f9VlrHGd;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321160-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321160-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8436F3270002
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB9742CAE0;
	Mon,  6 Jul 2026 12:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013042.outbound.protection.outlook.com [52.101.72.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4633842B75A;
	Mon,  6 Jul 2026 12:35:01 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783341304; cv=fail; b=JmkOPCPbvdyuVv6QgqG9M0vsDPZ5kbyll7npi52vrNvQCwJk4Vc4v65ikHVpIYegH8f9p8JeOOUkJVDDn6MKoDXU0FmvDXAbZx8dBWbLI5Yw4UR+dG6I4uq3bSf/i7ahNV0FTqylrZi2abwvbRLcFii3s8YoU8NRN6oAoASBl9M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783341304; c=relaxed/simple;
	bh=IBAZlj7C7hcps8JLAgWiya/CF1H8oNeVn3aRR/lHjqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=cwU3tgXyJOpg9ZJ6OJu+YdXL58FcZnhpfjl5WrmdHTGOdYxEq8kJK9TQ/o/GqKDEFHzxjLqnIm1IjS4WckRw+4290cb3rhyju6/JWECElzwunuZDg0XprACoJmfu2Pmqnbx6N9FTYMz3ULOQXZ/DUnBjEz8U9Bwcb7xMlD0ak/4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=f9VlrHGd; arc=fail smtp.client-ip=52.101.72.42
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mhGhTHkil9x1OwsOTkciZCtZ3sf2zyPcveIBSUlXc008YU+BNc08covLXB0sRrB7QK+1VCYwwO4un2XhD4hnMlXWAHqjN4NpZ/g8iCi9pBgjf1g4UTOT9/pAXXmwtlTSIT/A+yFFuthRgXhG/CJhS8ZrtaWfLpBX1S2pswRp2x3xxh7Nqh5VWjY+jhq7qAj1MK50usixFujS/61X9QznUdJ7D6gkzrDFVAZWewNSf6ioYZQpaUXccY7hDxvNYx5GP/8KrNf+Z0OQsjCHsWR37juFrKCfcZ94Epkqd8P+l2OysO8Oqjnxguv/xzW6Igd9YSZCsQo/acaUHYhL0BwAGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IBAZlj7C7hcps8JLAgWiya/CF1H8oNeVn3aRR/lHjqQ=;
 b=AyQ4rVHGTX1R110MfmLybewHMC360D2H4k7bAvnijCUDVoiwuFzjj3E0CAmbaYZzvqWsuSby/zcbpgosyxLLG7SrGcZbIpf6zircl+iamx4o6Jits1lIcAYEs3o/r7+0Z4CdpUM1p0521AsblO2KnNwNT22GAR1OLtKXXStHN1XuHNoRbgLS33tsWe4KDIg7fD8acp8tOfScMYCoZWyev4dudtyVaXIMFVmKPLvggv3cN4dCOqNlXWcCp697yxxHc1VIr9nfnYidWipEYOCbGRjXk5/otdo+d+3cT35cyFt3nINzL8GN10x4r88+EMeqGPtJ4Q7ntYp4TWTCqyp/NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBAZlj7C7hcps8JLAgWiya/CF1H8oNeVn3aRR/lHjqQ=;
 b=f9VlrHGdpT0Z7l4EIOpLjiiLSU73B/rmsc7gvpE8h1lCiOz8EOwXVmyjHeCBGpXHgK/VFYyUkjCVyO7oprC+DkeylOVTMwmWVyG8j5mSyRI84/C0z7l2Cvycopum4bE+VyqjK/FryBc8+BMTHW+9LZuiNUPg4kXWVHYdk4Ms80oo2+Uepnd8vtoZvnpEJ7bdxZOLbHX9usE6WpgXq9FbUtASDiPB0hDjeXpMOsUsU9BdbrsRVt5FCsXIXLC5yYO76QXFo5c9hWR6rgUTX+md+FIvbZAEZ/+Tn6G474DBGlVH56lM0wqJQTkYZTBnmvGvEH6LRlsixqE40zcore8yQg==
Received: from AM8PR04MB7874.eurprd04.prod.outlook.com (2603:10a6:20b:24d::9)
 by PAXPR04MB8576.eurprd04.prod.outlook.com (2603:10a6:102:217::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Mon, 6 Jul
 2026 12:34:57 +0000
Received: from AM8PR04MB7874.eurprd04.prod.outlook.com
 ([fe80::ac38:1699:6f18:c5d9]) by AM8PR04MB7874.eurprd04.prod.outlook.com
 ([fe80::ac38:1699:6f18:c5d9%3]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 12:34:56 +0000
Date: Mon, 6 Jul 2026 20:38:24 +0800
From: Peng Fan <peng.fan@oss.nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 14/15] arm64: dts: imx8mn-var-som-symphony: enable PWM1
Message-ID: <akuhwJBsk+MljAEP@shlinux89>
References: <cover.1783330236.git.stefano.r@variscite.com>
 <e7b7b016bda85d2d3fe3e804ec868565049a3791.1783330236.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7b7b016bda85d2d3fe3e804ec868565049a3791.1783330236.git.stefano.r@variscite.com>
X-ClientProxiedBy: SI2P153CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096:4:140::6)
 To AM8PR04MB7874.eurprd04.prod.outlook.com (2603:10a6:20b:24d::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7874:EE_|PAXPR04MB8576:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c7dfed0-370c-4305-ebf4-08dedb5afcbb
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|366016|7416014|376014|1800799024|19092799006|23010399003|11063799006|4143699003|56012099006|22082099003|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info:
 bniCa98JlmhIfPPANiMvetjaIAH+Dbd1gvOEq2MHxtjTrlbj+64/D60q0M810cNsRmo4I3BSQmP0P3hOrgM00IJoizfoxD/n0uOzfswFUjRpbCgvUlgBOX5Aui1qhcDU5Jl5jdMWMK4GdGsto/hRdaf1XWrruBjCtLmW5dEFxgyAy5MtR0l3MquL2Bnnkpz8o8pw5OxYphqBMQWlPnRgm0x2R9DI3r02OJAts0E6NO/HPT7ES8VcNprwajB5J8lQkb3OEAz/8cwrWlvCLW0iBjye89FuCtbvgg8Eutt337u0gPWS2UByt1+M9tdJnY4xmCPMzTp3oLLCz1BIqJrcHQrhFkl4c/ywc2WBNnM5AePLuzw/G+7xQGxzO8ZUb03YMwgLqys2P0YLJ6rLkRSuPg36snmaX3PV+BVmzFj21xVLHqUw7xv28Z2Yt5E/rsK1R+eNqzzd9LyUsJ/IWpjESLhWQ/thSRYvf3/mOkV2ieXY8ObHapqtH4tECe1dOfO1GJRGkyEoPv+eZ/jkpOoqhhZQWgx7bK8l+gGEfIFSMMTgpfiiLXaFjUXfOGXyHETZTSocrn3RcpUTBuKdlTvEAxa2wT0dx2q5kVoKvFz5UvKO5clTUTgGmL5Sg3IGk4vIFLjnV0kQIym4nuNXY/lMKSFFV3lZVF/6a6oQVlS5JmY=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7874.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(19092799006)(23010399003)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?UN323iTsaB7ReANP5hL0imHxO1Ug6WHmhids/0MyyRkfJngrQiJQWecsWLKm?=
 =?us-ascii?Q?BDaY/dXTd2BbPUf5do51okZ/HB81fC6IgKGtprwmUiH+oC+3smI82AuWpdTM?=
 =?us-ascii?Q?nr7BscL+5vTKBbnNcUj+vb/h1jgPl54DRDnlvbVtLwRLC6SCwwNTm/b6jIgp?=
 =?us-ascii?Q?PxSz7MyNaFYmqdX4Kqiv+t8qW02UMNQTSv+VeqerqiYhhxxCthUfXIiRvPby?=
 =?us-ascii?Q?hr2v94i7rc6mHQaPYk0BDseEOYwzPzHVjJgi3HAE9paXesmAxMQTAUxPfqDH?=
 =?us-ascii?Q?7djUdONxC3V+d/9IF4k7WKqqG2m4uJB2++lbJcCv2WHQNWZyjSmxxfKso8QW?=
 =?us-ascii?Q?ogGMsGAIWG9ekLvQ96OeIixLDP7Slmhu/YjDdDXuXVC7Y8jvexNYWRu/4xqL?=
 =?us-ascii?Q?lPOWGJP+ARajFTqJQt02uak4hOFGG5KCcMUdSAq03d4KEFvs0FZNKo67btV+?=
 =?us-ascii?Q?5HCexsvrzAzSY9LbTVPAarslRAOTiODaXGnEZuTeGr6BNvs+NeNJBYQuKi/E?=
 =?us-ascii?Q?LanZ+FSyyfQiUY1CV0NmVv5T/LpM3eM/+kr8ec7PfiTU77CwfbZbeZBtYbMj?=
 =?us-ascii?Q?idIejO/InN+DZErxQoJRrXqr1JFgF35lXfdYWe9sFyJHd14oj6XF/l9x7kk6?=
 =?us-ascii?Q?Y34eRE3RgBRsEojzICD1CDhXhOF+DVslYYgzRkIbpWcjDTdhM4DQp79Vzf2n?=
 =?us-ascii?Q?D9PwWWfh+WoU20FQUmPHEv2jIfWjy7VaoZkFn5Nueei4JOsgyskyd3BYFcEq?=
 =?us-ascii?Q?MjyINkFdRMsGpQ8rTWXTltfBFryZDZfRlC5pC/5hCy8grp7cvBurwD40GRdx?=
 =?us-ascii?Q?uIEYqPwZmkZ3EEaHPriYFWM4F0Vy4o7Kwx7zAr20A5JS5+jNRgHEMWIuPUzz?=
 =?us-ascii?Q?AwbPVWv0i1CpBxws8r0fxaLCmfUPjD8mcbwMQd1bDwJ2BQsqw5cGkP09oOoV?=
 =?us-ascii?Q?2xjk2HGDs8TTXOuULJj4mciT6eR8jMFDdXnpBXM+SE2DVDSN91VCU6YCkejJ?=
 =?us-ascii?Q?IsE/uP1Mmwl/Giqaq8XRGswnl790fmQJoFkOcUxq0IqPmnkcyxxfc8GoBt6n?=
 =?us-ascii?Q?xzX5JvVdfnB5o0cUNkec1MP9+0ggwlFNdvBcI3Rfmd97HyZpE6vAu7gAu3Db?=
 =?us-ascii?Q?YFSeaJxc5yXhQ9OLBI/z3UYOtyfzZYGsZ8VrsXI1vVAEJjaWAXXE92eU83Z4?=
 =?us-ascii?Q?GC89IBxbStXHNnDnyIZFK4MfLBB5Rd5D4gBRKXRm5Qkt3HYhHTStLMKGOIj0?=
 =?us-ascii?Q?Dgf7OR7o/Zxv6GbNMf94GyugMqLy+0kWWW71GZHgW8XKyeG9cT4C1cD+yYDn?=
 =?us-ascii?Q?mu8xmDX8EcPdlQ4VQPeHOjUcsM7bCv8Q0wvntYVSPWPdMb0MK2Rbq34il5th?=
 =?us-ascii?Q?/3FBDn7iLQU62wqHzjZQ0UY2EXDmLFEpKYv/t/qnFjlPeUeI5RnAA4ayRCLA?=
 =?us-ascii?Q?r60mDjx6ed7rvsr2nEbv6KWDq14rSC+xbciQuwT/K4A3lBMpxNZyhpOhNKDd?=
 =?us-ascii?Q?HYW2tj9crqbE42leQcbbegezkl2AN5+OrKP6NZrPwvKwB2MkJZRyh61nOw5x?=
 =?us-ascii?Q?K5DWsPXAcb7HnUwrS5c0koCg1wA4YPTH85qjKLyoEJuv8xxSTucWs5GkYdIy?=
 =?us-ascii?Q?F4FOhXhlzYDpkLldutmQjvfO7lG89iTx6puW8gLQQr3U/p4baS9eZlvNw8lb?=
 =?us-ascii?Q?JEZBW2U+PfTdYYKw7l0dOxaIIR/8iTUk1jHKqAhIduQJSAf1qV5kfDhfe/ve?=
 =?us-ascii?Q?qahKEiNIlovIDusAxbrk2vWhUDcVT68zgjuOtHKeVf9JyaOlC5R7?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7dfed0-370c-4305-ebf4-08dedb5afcbb
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7874.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 12:34:56.8136
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3JxTAc1B3/h/yqTtMdk2DqGAbfKDuJw17bou6UHtF4nTkD2g763YwMGLh+GCrtC1WnvqKYJo+AxS0WcJ097I59znwlrKRUhCZBV0bsLpef4VE9ONClqfe9isim3Hxij
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8576
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321160-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.nxp.com:from_mime,shlinux89:mid,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A63D711C13

On Mon, Jul 06, 2026 at 11:34:44AM +0200, Stefano Radaelli wrote:
>From: Stefano Radaelli <stefano.r@variscite.com>
>
>Enable PWM1 on the Symphony carrier board and add the corresponding
>pinctrl configuration.
>
>Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

