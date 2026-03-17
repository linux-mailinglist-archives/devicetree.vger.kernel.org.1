Return-Path: <devicetree+bounces-276443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIMHDITSuGkpjwEAu9opvQ
	(envelope-from <devicetree+bounces-276443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:03:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C99942A370B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 134D63003D01
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D45371D14;
	Tue, 17 Mar 2026 04:03:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023090.outbound.protection.outlook.com [52.101.127.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82EE37756C;
	Tue, 17 Mar 2026 04:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773720193; cv=fail; b=nRK5L37+sSuEZNbgAwoKJoNQTMP/0CsIgcEGrnzTEojmtURl32vghRJZGLD4u5WLCw7ZR8dgO8vwL4YFimi43rG7kUBd2qMXPUJFNMXNr+ieASTa6VPHnA6LkfIVe6Ks1hbpPNO5R+pn6UBC3vWphT/ElaluCSGaVVPTeMI8dOo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773720193; c=relaxed/simple;
	bh=caT3VPyqd1qEXChi6QHIp9KXwOeuEULHq0tkeTAKpSM=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=N7yOzuVpKPSIhYnGlMOD2Diac0caPtG6AIjZ2t03OnSI34eYkSFMl3CzkTp8XseLdOgTdTHAumsf5EndPWDLhXeqf3JJvgwXc+olSAqKDN6tvg3FeWafknRsUVzgjWEB1qsWrBZCHkEmsR29jc2yYoz8iUdxUFpVCB/Zw6Lqig4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com; spf=pass smtp.mailfrom=wesion.com; arc=fail smtp.client-ip=52.101.127.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wesion.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cApTWVK/8TxtZBD5viEcYpvLZ4/RMLXRUhZmpoNncA0s2FfVbb/eYAihnKFQQnsMYP76abEsGjIkVEmiP7IMHg/IHoqd53yN3Nvo10mjNBOOv1+h2G61ASYYclT9Z38XWYHL75aQL+ky3SxvWr4EoabKK9jhFjMaaYpUavuPgEmd6GuE5h8Pch2n18TWs62Ut56/9NeyLOwe9F/GF+TvMEFvL4LLk7vf5ClGazK0T8tGjFZKIz7fn2+n5nPr4yi8/uwtnXOp+/hLoAI1zOGUXsUmg3UmyAeujNFv69nzAMedHqpCEZdypwHLJk4/9WhitvAAXUuzHDrc8pBtywpESA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CR1dTvzZlpSp2cklpSVg64MUtSFerzgKi4xA4axBoIo=;
 b=KrR7UldElb9cq1L94/Mo9AeBBFVwMP/BAHXxRptg33TNKld151bw461Xp1Ns9FxzwPp9vhWEtU7J2nM1DO54U6n9SQQzzfDMINHLTUzTSbGCyZ7qNCoeKCHHv/kLSODfh5Li+0SM0Od4XY5d/CO18XBlvfv2o3v+YzYfwgtpgnhQoSid20UtiAkAcNSjAF1ZMOnNonh8XqdojcWv87Nb4D6Vg7HQKEcD0vv5S76+aBsfjrezsOzqZtORw/qGPP0G+DS+b0p2qvU7fXx39M0apamfhwonBTPlAkW34CrdjBGbp0irydxQ1A9oCAYRrmt9pDMiCdm4fQpTbH8vzFX1Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by SEYPR03MB7965.apcprd03.prod.outlook.com (2603:1096:101:177::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Tue, 17 Mar
 2026 04:03:02 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%4]) with mapi id 15.20.9700.022; Tue, 17 Mar 2026
 04:03:02 +0000
From: Gray Huang <gray.huang@wesion.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	naoki@radxa.com,
	jonas@kwiboo.se,
	chaoyi.chen@rock-chips.com,
	i@chainsx.cn,
	michael.opdenacker@rootcommit.com,
	inindev@gmail.com,
	quentin.schulz@cherry.de,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	nick@khadas.com,
	Gray Huang <gray.huang@wesion.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add initial support for Khadas Edge 2L
Date: Tue, 17 Mar 2026 12:02:46 +0800
Message-Id: <20260317040248.267154-1-gray.huang@wesion.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TP0P295CA0024.TWNP295.PROD.OUTLOOK.COM (2603:1096:910:5::6)
 To JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JH0PR03MB8617:EE_|SEYPR03MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d94f519-e537-47cf-97d9-08de83da155b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|7416014|1800799024|56012099003|18002099003|38350700014;
X-Microsoft-Antispam-Message-Info:
	HD5+MDqM9P9tRJgfIobtlkDZ5mW/O4lqoZYtxiSo/KRM6knBQXtmTJnDGHYiPl0Wm3ltEDHLwN96OIpEj3TQ3rOGfc54gX8yivIEjjRogJVttlJ4JaGjsZmLf0xd5JllzMln7RXg3kPkoKGtrmycmE2ylW7+CbtEfjO0eK1Y1t23DmnWWdIouBzuk/Q7yEUSRKr9qqF92PXLyOW+lcmw+BiUBLgSYNb/AH22KCoYIDWod5RhZ0tnmAVMzvv7dSO5yCsChoGX31Xx/puCoH9BY4ADOixCgrLmD3Z9Pz5wrNF96oeKrwC0arGnbtVI+UpRNL/6I+XMkx+nbzjuutnUaV9BmmraWenmnYD+g/MF+GyQW/qonHnjOkiuopqkRV1HGWRrktMc5tLGTUS+aD3339IgzpejFgh6fCs36y+sbww9cJ/e5VXuCgGfhw/SDOFOYoEQXufnI4p22z1bHWmtv69f1/Tm7FAj79bcbJKIErGWJud2cYHhwYgRt7jdMU98VL72RiIFu8G34YV2qUjzF+/RikEROivPSMc8n/iRC3ry9drTn9EcklhwFk8bMKnAvi69L5FqvWlqVoEDZ6x2Mf4hTgJ0EEazxftU+y6P3qY9/3yTARkEGt9XPav81h9iuNcE6ac7w+Of1fIApZX8VSoei2VpprWTYePOVTFiXzOznl1Ko2rm5RiQ/I6y3su97EdxUZf706LnJmqlopMat2n233dwCoAZ0HlC++xqTJomj7D6t0boTkexZkYk2/Bbimrb+cm91HBmdrBWwTdhapok6ROa4PLJUH/vFde/Omg=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(7416014)(1800799024)(56012099003)(18002099003)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fd+LCcigaaKJqLZiMYR3U6habEhkI6iBV8D8mEYRKeXSeNnoPnAXrdZI8Q1L?=
 =?us-ascii?Q?pz9MEMXR7xVt6JVruWXv7k/K2Sy3vdXGKiEwnCb0g63hQQnjHUxs60c/jFcQ?=
 =?us-ascii?Q?Sbx+Y4uMLzxhO8hwciMKUoNDIIUYlaBV6cvEn5J1uysDNRVmxjDa/Xob/OyC?=
 =?us-ascii?Q?w67qjX7eM1+3++1AkhGWXPFLv5fW/W91u+fXxwbsyklTo2yJnGU77VJ41Ks6?=
 =?us-ascii?Q?cCf94LtezzeEGUvFM1UlI5Yr8uOi6xZt7lj5ZvXP05ExuOaUefDvnYEJilgg?=
 =?us-ascii?Q?SSZOM6Ve4rQci54dGTouA4yMdNaowfMrLI8Od2oHzzOct0udGItXk2u2/oS9?=
 =?us-ascii?Q?SLZRJhhTiU09Hu1WBK55GE/WwDEqrHvi5Om5lCKLC3T/ZXxeQLORhCSinJXv?=
 =?us-ascii?Q?KfdBZC1tgayYUQsFIDnjjemufwvvFekgatQJ3CNXlsbozZcOekJg7RNglYIr?=
 =?us-ascii?Q?LFgp0rcoOsglu79IjML0sB98vCjbfKDoeY06jyyfCgGM9y85uPdFVbNZcw/q?=
 =?us-ascii?Q?l2ar5E2Ab8yft50IoiyV//pQ806Fx9vPehxaquX/EeKtRf6qgM2FpTZSuks4?=
 =?us-ascii?Q?hRN0rRTPyONu5JP9gLaG7ZFAepcBMqUBUNWB02ZFrIFsXM9PeMlma6GH51o+?=
 =?us-ascii?Q?GpoMYkW0qigquJFrWf72DxPMMEcjMUbgO3bL4M8iuw0igd1C/RnNPbfPzHlp?=
 =?us-ascii?Q?KplMnXp6R9A8+pIFtVyehqH8NJ6AbjUaDOHVV74cFut//eSUd6UTUSgF+nQa?=
 =?us-ascii?Q?GknkvWjuCxG9O66+3Jb2jXiWp04kDM7e/28+SQMqr8l0Dgwu2KnCehaiiFLF?=
 =?us-ascii?Q?4HSltpH4pYU0WtGLhWKjfx/lZhrsS0Xxyty3z4ShvsLTdFqeUUE542U4mGfG?=
 =?us-ascii?Q?/7hgxGn2e1ckBNMdm7jhb8SQjfh5g+XFcGG1AiDHr+H8mKPkrJZpPvaPVhkd?=
 =?us-ascii?Q?Za74ReS58EDgZwl0Mff5JX37dLFqgMwWXxNnOrb4vlktfIAncRAifGdMHqi7?=
 =?us-ascii?Q?SoUtOYNzz8vbpb8qIl5g/OCT9nt7n4OB6bpJZ4hRu8HeHVZcgA4lUWj9q2XU?=
 =?us-ascii?Q?/hyNcRvTDRvOruH0twwDzv+USSssisK5yxsUm9CrbdH/basqIA3sJG1V6Frj?=
 =?us-ascii?Q?pVsQyWWFfUK6rTCUUGrMcIKymqs6WIty6Znu5XuJkEXMfxUxfPOTVnaMSu0D?=
 =?us-ascii?Q?4V2EM+pWCb+UIhZScS2KibMQVSgsISaz9rBkSR1B+u1RzTHoTTQI7NvE3v3f?=
 =?us-ascii?Q?fowBWMq9AelhejYDbvKtX/1hTEQYee/sdRRxTVM3OFmcep2IdqukZomBNqHV?=
 =?us-ascii?Q?K/+AQJvnqHnXyaUhzM+EeZBs9gOq9pkMjyPHEBNEN7grNDRfN1wfEClaiva9?=
 =?us-ascii?Q?qSjWEZrFVOj9ggEgTIxxexYQL5rsY//BCuhgxvF1NTu1xUMv0VulkQTyurcW?=
 =?us-ascii?Q?dnVa+X1VUelysb2hr8rE5aYrDKYmxcfcqdDcMkOlrUrISNiZtPXOCF8E7/5f?=
 =?us-ascii?Q?bWF2KNDshqVs+wcsOjqX7gQT1ou7w26buScx/+Z/j8Z9omixNJxbM/teY5+Z?=
 =?us-ascii?Q?UNMa/xkPbAab4qBcqArJRy7ePnKuBNRactgM/D+rBBFWSh7u+z8NhGiml09H?=
 =?us-ascii?Q?vTN8zGb5Bgk75tW0G5WjW8WCjpD9wPUFGa0IDIEj84X8P+LwU++DW7c4Mxod?=
 =?us-ascii?Q?keErkggTalW7odXLgnHhsMVg4Xqi7MX4Tmwd739YIpoWLNRGfsmcoIPq6723?=
 =?us-ascii?Q?vjvSB7e8bg=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d94f519-e537-47cf-97d9-08de83da155b
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 04:03:02.0344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mLeDEOov7GuUJCGXgasiZSDz8tqcWr7RNdePR+jVL7/LGKskMk5xPMpqw8Gc9wn2GkPjvFKzQ/BLAzfsL36rTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7965
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276443-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com,wesion.com];
	DMARC_NA(0.00)[wesion.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gray.huang@wesion.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.815];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wesion.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C99942A370B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds initial basic support for the Khadas Edge 2L board,
which is based on the Rockchip RK3576 SoC.

To keep the initial review process simple and easy, this series only 
enables the bare minimum peripherals required to boot the board to a shell:
- UART (for serial console)
- eMMC (for root filesystem)

Support for other rich peripherals (such as PCIe Wi-Fi, USB, HDMI, 
microSD, etc.) will be submitted in subsequent patch series once this 
base is merged.

Gray Huang (2):
  dt-bindings: arm: rockchip: Add Khadas Edge 2L board
  arm64: dts: rockchip: Add Khadas Edge 2L board

 .../devicetree/bindings/arm/rockchip.yaml     |  5 +++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3576-khadas-edge-2l.dts    | 34 +++++++++++++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts

-- 
2.34.1


