Return-Path: <devicetree+bounces-325163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IJX9FAhMVGpLkQMAu9opvQ
	(envelope-from <devicetree+bounces-325163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:23:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F38746926
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:23:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=PTr45gxE;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325163-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325163-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A6C143009F17
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 02:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41F52DEA64;
	Mon, 13 Jul 2026 02:23:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012054.outbound.protection.outlook.com [52.101.66.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EAD21FF2A;
	Mon, 13 Jul 2026 02:22:59 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783909380; cv=fail; b=HCgI9CsRJ5/UtO6Ze/8jaWDogJSZK5Nhk/+ygPP8KeMJOcwrK0oM3fWL3z+IvK8tDdqjFACqXprQrVmI33ta4Wz+XrtEc0Lt6kh1k9JYPTvB07H14AsPO5lZ9aGBQ1cIvNxibDUrZh8XPGUN9aNxan+oZeJQTE8RsvYoIiZ++gM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783909380; c=relaxed/simple;
	bh=7RMK/clXP3UYYOLegcyQpa2c3SeN651V1FfsmIfvofI=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=E5uUKxE7b9rlcxCTssHooNkkJvb/oW3DWtra1PIuxbR8QAVlDE4Ad6u8l40SRqofaKpm8bX2vDQmosy9/3jxMg8tBUKlqNJigrhO5NXXlIIXPUL2kVA7adA+1UdZexxxfpfM5VbDroBMssXFKsv3iDSzCB4E4Avh5PO2NC9lvyw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=PTr45gxE; arc=fail smtp.client-ip=52.101.66.54
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VC0IJn1PMhYaTYJI8N2KivYsRFDSJJVcAfHonerUSKSKVYOouS0BjIIP2ALElurEhBQjrRJHWUMxaHAf+49qtZdjJ9uSepd4yYdWck1I4ydhYI+w08pzEm82pN6PRv6qrka7Zj/QuiEYRG1XcgBlxL2Ba/FszU130yWO0pSPzqz92GBcRXy/Opcmu+06QEpEZ06+vAldGZ9EFAvM9uuAi2Xw7C1JLR3BBedFRiyhhh3ZnAMAXCKRmMdBfoBxZ2gWT6W19U2piVKYemIrGAC2Qtt+GkSQjNrg2FqyzdsRL4qIM3lnYFJ+h96HgadN5taxBBhkbQG0ED2rqs97t2qEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d4oyeDWMt6CBanCw6VXXqlsGUyPT/+N1aOa2QLsUGZY=;
 b=fiGT8ie9lXegIkHzr5+voQGvmMkq0sMGbpuQP0xfbKpJXTq+nuO0Nj5A1YaULa05i5j2r6c1UfOPe2FMzCCqwc5ymtG29NtI6F1C71DtvCtxEbnNe9BPSpGxd3J8K2BIxBVqzT+8AbhsEpWAk+/rF3EqAcMMW4poOUeG6bgWNE3m49Mutx8jQquVljsUzTw3mcpoOsvnD4kb2O8IbFuvE+jViPzByUxCbusf0DQkRsYNEwqfQ3hAw6mkx2YPvHHHe5r5RIvh9721L7wcvczUROz2YpEEdl9KhvfMcw+HTJ5PZ+ysViVo0kUHHY2S8SFywLVaTBW+JkGs3/JvJqqFCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d4oyeDWMt6CBanCw6VXXqlsGUyPT/+N1aOa2QLsUGZY=;
 b=PTr45gxEc0fuJ+yWijcQz0ote+I/ewxHcG06hg8YAcxUiwS8wxWKFnrli4Wod4yUR1S+zk20Ipj4DDvo9QVug5jYrKibeFSlZJOFGuBuC4W91sMAPtHAni095CYAocJcRoYsXayV/XOfvYdRo94uETbn5xH9vcovrGbOibMpTkqleOYy9aMl0fsgvOtB0vx7w+G9ok8/EK+u/Rx8kO5cOvXnsYp3j5wI5bNtdrpeUxh/b/cNK6jOb9fl0mZ44sNT+Ny1mahjWlQP6hk6pClIizh0Q9wnCsHLpc2fIwHsQpP5LDd+GT0d+oxmPa/XF+3sMh4yr6Zou0MmVNGw/8vF6g==
Received: from GVXPR04MB10021.eurprd04.prod.outlook.com
 (2603:10a6:150:112::20) by DBBPR04MB7659.eurprd04.prod.outlook.com
 (2603:10a6:10:209::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 02:22:56 +0000
Received: from GVXPR04MB10021.eurprd04.prod.outlook.com
 ([fe80::d247:853:3e16:1994]) by GVXPR04MB10021.eurprd04.prod.outlook.com
 ([fe80::d247:853:3e16:1994%5]) with mapi id 15.21.0181.014; Mon, 13 Jul 2026
 02:22:56 +0000
From: Chancel Liu <chancel.liu@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] Add audio support on i.MX91 9x9 QSB
Date: Mon, 13 Jul 2026 11:22:45 +0900
Message-ID: <20260713022248.1262123-1-chancel.liu@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0207.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:19::8) To GVXPR04MB10021.eurprd04.prod.outlook.com
 (2603:10a6:150:112::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB10021:EE_|DBBPR04MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: 20612298-fa31-448f-d5f5-08dee085a61b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|19092799006|23010399003|7416014|376014|3023799007|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	7VMAAegn5jN0YU10JgdHtgCwo0CIXrcWZILFd0wYaE0/u0voDKyQeFkdYi1MIGWzVswWwY3ydibmmmsN76nZXIh+LcaSRd6wmwXntJg9o9ff9oQtTN/nxXObUUBBSGLZWx2ZL5o2pHyXgHqLLUtofxMKIHFn0tGQGYRiltRGP0kVc4vk+pfs9ZF8a5n/SyKhvkTc4ltNHPp8Cl9F3/Bg23Yi4kwoIelPeThNSH+tPWZzBqKnJAiqPTHobONWgtD6pi+MVGfLv/hAMYKbLagHmdGmcwBSCM1iKZegJtEBCZxIENBL1SitWLb54yiwkTWe/+qk6fKSv47A0Kay83YK50eKtxQOsy7WVXtGc6YOfaiczDoNZDvJPDfoCRARs8imdcqAmIpxuFQZ0t5E9C24nOd2NVwfoLnuZ8UtrpNS8QUk3yd9xXFaaYW2FgqqWCHib85sr5VH+GNb15ZX/MCsDMT2mUnSFTpWtHi2RS0y3avR2We6klmvCAcLy2jm8eEV9Y2tpRsnvZNg9ZMuO9A26/yfYn74FrtFa/50rshAEFI5uczMbR/zN+UBJcrdKkTcG2T7J1xnsRAdBidedJYwaBNmBS7iWe6M/a4pnW20acWM8SSuwGUGpXRiuPZ7qqw8sRN2HC0kNAnxbFo5QC8aGVGcAZ3JgyGTxNvv7vlCAUc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB10021.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(19092799006)(23010399003)(7416014)(376014)(3023799007)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?YNAbCflmbpexlxXlW2XNoZDQqjkXdZro5RaEzlB55nqD6vCmVBecNAAoEz1V?=
 =?us-ascii?Q?rYcMwN5amzCoVptR/d8zQnkVH7VIqu3Cq8sLIGtNRBjgDlIOKqJ6KWHsH3Jw?=
 =?us-ascii?Q?KC32bSJnFtvq9OBpGyPdb3yuRGKBuAwItG16kqQAEL8xPCK9vMkl9wWDqnPq?=
 =?us-ascii?Q?Mc66OdliH7sgbSAR8ZoqsTmknC3raV6AEkd4fb3PIA10j6t+fVrjYk4HDtiZ?=
 =?us-ascii?Q?zord8hB5KVBrByFXeYYYMHvL54EoTJlkgalUGGZ8JFT7FsyRcRzSWjCYSK0k?=
 =?us-ascii?Q?RVqkHtrEU8RmN7d9fcCqSioMclaP4j33gC9HYQmG69e3+Xj32UAl8ZEk+rF4?=
 =?us-ascii?Q?4t9R2Xo6QZbQiWvllMmj7etmQjhFEuNGw2Dah0W5EPoAnRJQvkChk6ktKFDm?=
 =?us-ascii?Q?NVxAVP8a96zREskSCFjfssc9l85QVwA+qf0MAJbIEDd4qFp0p0JlfLkRhutQ?=
 =?us-ascii?Q?YaDKaMC0fcnfOI8EZvlF6SDdx0CcXfyPSvGyIiAEXjNDKYVGokm7Gr/LRWG+?=
 =?us-ascii?Q?bLExIza1feRIu2/+Ntu3EFuO52m3+uv8q2yLovzuNd5fZ2tsnETGGWFcKHZy?=
 =?us-ascii?Q?6YVSxxFcRQrWSjwmFxq9ExdWfLUEoTfechYbsKHqxY8+z1xCNMzLrXv1vkdg?=
 =?us-ascii?Q?1SXfQGVbxOFh+J0YvxcXxCjF9c53ZhoItbXt5uF82dA7LpGq/tdpqZG3udlz?=
 =?us-ascii?Q?lyYrvw0r0vTifQi1A8y7dmj14Iyww3ulYMqF+DzTdG18Tnb+NyjlOuL8W9yR?=
 =?us-ascii?Q?Gp73Mep3lWInGvoPNqyGetfQ5pi/dY2t7kg+5wfLAM6TuVoAuUcXCj7vQ7bj?=
 =?us-ascii?Q?DKKy4Qx98D4fcpB9Ip+uf5iie8zsaH11VX0ZX/grAEUDt+cQhpq6Qb0WhD9V?=
 =?us-ascii?Q?w7undsmeMXXRxySvw/mfE3R/9h3FkSk4g/HuBMRk/g6Z77O4iYXZqPefdig+?=
 =?us-ascii?Q?yI8F2XBytTn4clnxpyXK+nI631J8jJqkF+Ssm+4RQBpKvMPHkvhwHy+qAusF?=
 =?us-ascii?Q?/dyDLwTA3PYrQAmw/WW1vKfH22z1NBLIHxGHLGJluQc1RLSZKsBSWHyuya70?=
 =?us-ascii?Q?R9E1Q2YUwp54YH26YiHMhVBwenEW7Yf8vwi4DV4zzLNpfTlKr++oscwr9QIz?=
 =?us-ascii?Q?wvddJemQ3fKxN8XKY9TnASdiklGe+Z7YRvCQI5ffMBvI90wQ3rxYCDVvGaKn?=
 =?us-ascii?Q?EeTtC+3egeD4bPLIpqnTfomFRYm96us1uRLGInqdyybSsWT3UPIb1A2aJEk7?=
 =?us-ascii?Q?h2Oz8M3j1EgN7h3yhKplfDxpaY1qsteiwFAwlk9QC7ZtMCql5inUV0TOeugd?=
 =?us-ascii?Q?K3AZ7bPiEuxiSBBCISCHxgI4AfUfisIqLiUEp5Gk4L4Z+87HP9sgY6b9hPYB?=
 =?us-ascii?Q?pXp5Tym/aJzgDEeKhQKFbx8LolRJhR4dYDZJX1j5FtfHAbyqCc+PD2mcDN+G?=
 =?us-ascii?Q?LZGUJkJ+NnOF6eSHykzBXy6yCqgY+W423QplWogMGfCTstxlrURbkIyFhf/E?=
 =?us-ascii?Q?R7N8y/gA486+wBDv9OBkUXEIXeBWFFKx+0OOW11SiuwWBhXTem3n+udVImTS?=
 =?us-ascii?Q?anhVA6h5ogzDJboQ0xZ63efMPyrjrbK5FTmqE0IVSnu5No24OUdT0rSW+eQG?=
 =?us-ascii?Q?7s7YRx1wIfZYgdg1xWWZfF/arm6ppyPUI9mEOTSUxvk4GHdmND83OWIl184X?=
 =?us-ascii?Q?co25oimt7PNdgGyEbilgt5rcZzZXq1+pMyqlB7DUF0jVwmjKCmKKiG17N1f+?=
 =?us-ascii?Q?1EzFjI6wmgeoSaMK4T6Bs80cqDOe1ezGG57yi3hRkhPhqX9lLKxN?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20612298-fa31-448f-d5f5-08dee085a61b
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB10021.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 02:22:55.9176
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N9FcUHW8rechxlXaZB+hOa9HAqN3J7iINe1SAIH48cP1hjweeNDeWfZWJoGZDcN2FwhZ+PIfAr+WSx+xWBT2NqPPJXWTwSK+FnHa2chp+Lrou19yQhAi/8SroymuhoO6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7659
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[chancel.liu@oss.nxp.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325163-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chancel.liu@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,NXP1.onmicrosoft.com:dkim,oss.nxp.com:mid,oss.nxp.com:from_mime,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3F38746926

From: Chancel Liu <chancel.liu@nxp.com>

The board routes audio related signals through on-board muxes controlled
by a GPIO expander. Add the mux states required by SAI1 playback and PDM
capture. Add support for WM8524 and PDM microphone sound cards in DT.

Changes in v3:
- Fix node ordering: sort root nodes alphabetically by node name, including
  Move wm8524: audio-codec before mux-controller nodes in patch 2
  Move dmic: dmic before mux-controller nodes in patch 3
Link to v2: https://lore.kernel.org/imx/20260710024204.3462444-1-chancel.liu@oss.nxp.com/

Changes in v2:
- Bindings have been applied, remove from this series
- Reorder pinctrl-gpiomux children alphabetically
- Move compatible to be the first property in the wm8524 codec node
- Move vendor property fsl,sai-mclk-direction-output after clock-names
  and before status in the sai1 node
Link to v1: https://lore.kernel.org/imx/20260707065725.312450-1-chancel.liu@oss.nxp.com/

Chancel Liu (3):
  arm64: dts: imx91-9x9-qsb: Add audio-related board muxes
  arm64: dts: imx91-9x9-qsb: Add WM8524 sound card support
  arm64: dts: imx91-9x9-qsb: Add PDM microphone sound card support

 .../boot/dts/freescale/imx91-9x9-qsb.dts      | 160 ++++++++++++++++++
 1 file changed, 160 insertions(+)

--
2.50.1


