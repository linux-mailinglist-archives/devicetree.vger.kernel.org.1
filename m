Return-Path: <devicetree+bounces-315891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EQurMqDkPWrv7ggAu9opvQ
	(envelope-from <devicetree+bounces-315891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:32:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A96C9CAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:32:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=wnCzZe3s;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315891-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315891-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61BC43043D1A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2AD430B51E;
	Fri, 26 Jun 2026 02:30:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010067.outbound.protection.outlook.com [52.101.69.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621471A5B9E;
	Fri, 26 Jun 2026 02:30:43 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441044; cv=fail; b=nOHjzn6qbPREm4MaeKTJ8CST5xq9Jo09jfj+86iYYj4ayWHzgNaZaKg64YTtcHTJP6nve3WH4cb6Cj22IcoVfbDEeV2fMbw90YGmfUkfOXavmC9lEUBXxUsXNqBysOXtkz2hbJnYyez3AoYAuUXlsEPqVxa2GRQOzdiEb8Udf/4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441044; c=relaxed/simple;
	bh=/S2hpu1VO6wk3knxXokHzmxeMobWxtKHBh+9c9XVMSc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qGX5tOGJifwSvaBWX+vUoMOPKI20zNeCS9YBsAlPpNozr66CA7Kk8tRgRC/AgmONbba7cyL0TXxUeRReL1MYKw6x0RtKwOhcya9DgPNcuF9xwc7jKkuXjj0AF5q79QvDcOonEoha+RKebmFHYUV+YHP4yfFre+W2KIzKZmAFoSY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=wnCzZe3s; arc=fail smtp.client-ip=52.101.69.67
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z7zYdNsXly79G0LFFsC27VZqpjt8aK2e+0D+s5U8+kExQJEzcrcqZ1hoXP62ZoAi5MttZvDGZh6aR47hVoqZiombnBr74mPaFr8syUARXW8lqSTie308tHFlwlWZIC8Jul5t1/85/sL8al4Z5igw7gVCiE3RXKaVLtc7zPW7wH3ToDjLFlb/KwF4LnDfgNVJs3l72zEMwJdW12Cwq6/DL5xzYQjONaAKUgyE4F8dUdVvKQ57LJfgo4ePhLwX7GXBxEzqei2zkllDCncctJ5O1l5SqeaUqT9lqvSkwwdFi3lisGRBpjIeEK06wlNSpt+IWepj7EFk3YdPof8+0cnBgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BOAIc9GpzKHLQ2A530C7XuoClQvQp1mbAZawDFeOtSQ=;
 b=q8Bw1Rvq0gZHy4dT529jY6zfJdSAnoW8gd0/r6+18ilFOfJhtiHl9EqzYF6IHyRhRd0dZ8eQjJGvK6/crUMnBNpnEUnYHgy8030DCMa69D3HH/x3n+jcHBF1DaVOU+iESBq71d+KYHz2Zj3+5rr4BhTnw/dabhk5YAyuP02wzmPBlovIk/Gi3yyMRoO7y5jLB8zEd35qB43d0wFwDUk7dQLQDWxkQ7SBbmaBaebAWc6s3cNDAiEtDfo5wgzqmvc6uPo6nZRKcNKxiQYcvUOzWR5Zg+YWmozwkFvnXH6sLSN75fgYS/RngnG8KChCvMkbMMvMZmuKOEcKX5Bs5GVUvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BOAIc9GpzKHLQ2A530C7XuoClQvQp1mbAZawDFeOtSQ=;
 b=wnCzZe3s4Tu16L4fpb2UFqCt6yBWxy+Cl9PCvhE4/c7qaZ8FGSMw5ttLabbbDRF/9ukKfydvIJDLCRUCKkVeoranyKuD0zC47wNcAr+REEw0qGKyBX48OS6Vm6eUDdMzUTzL4cULTQSGDnRsA9yudt0keiCRSXpuxeSd6GxbX6qqHqaMy0QDQECXJhB4AMxO+gifiKefvAfzZxx+cM5/C4TRMfdiqL+rY54Dj9wiH6ZCgHZyTwJ06dKnfiFllhUvKEwktTpk6dRR7DhjbX+e+mQ/ngCn9G3Sn9HiszSIY24hYCS5+3Qp67nZl/g4TnQtUgAZtgk7QPEWz09cUXwXYA==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by PAXPR04MB9445.eurprd04.prod.outlook.com (2603:10a6:102:2b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 02:30:40 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 02:30:40 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	amitkumar.karwar@nxp.com,
	neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	luiz.dentz@gmail.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	brgl@kernel.org
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pm@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH V3 2/8] power: sequencing: pcie-m2: Add PCI ID for NXP 88W9098 and AW693 Bluetooth
Date: Fri, 26 Jun 2026 10:31:20 +0800
Message-ID: <20260626023126.2189931-3-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
References: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5P287CA0103.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::8) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|PAXPR04MB9445:EE_
X-MS-Office365-Filtering-Correlation-Id: a56da905-4497-448e-21b4-08ded32ae9f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|19092799006|366016|18002099003|22082099003|11063799006|56012099006|921020;
X-Microsoft-Antispam-Message-Info:
	IzkMVVWYQcNby+d6KpjAWfAVeAD0v+YXrpQb47piqQDjFgq4E3MTXEWTsDi6eyoMU/afHA/co1ojHzDu7tbq1gB3G0jVz/OgCOehmu+Cq+DHG5+jrQcGC2RXKrsgP0P/sjppFn4uIaatv8DK5sc4wycHWawTKr9IHcGkKj75DzgMzipwpzJZU4xLHpag9UkjZcrspAeoUBFdGzFk3MS8VTIMZJO/xT4I9z44eKQF3sxikFF6zOHczCWSWsTJPGZNbaVNswlt/SmxZY2tMgzvpwP6MMKHKRon+QPGZb/rDMLguug0kOTu3+EaBCaQ60qVwtNPizPtrSvVjTIbBoIX2HPdipqwq7JNrsoiUH4qTDAKkWrY+FXnOlaQEFGUpNPX3sJwSQn4D0mq25tK90YQURHEDwXhjQ06iaqV8Lk4hyh8/xuI9PXt/JkxSE18nmDHML6Yqz86KLMdnUZ81NTOQ9sETfkWKJabkysI5jIAgObRRfLRQ1qyvM9VbzuPm8icJfOJ+k0ykK11cjSg74HTNZ7rN3PWmOZoLRt6M4b3yitr/MuD4pQaUhKuCzbYMjj/s7bUI2Ze76xAqdOvFZrrRcn1XAwdQ+btXpbS7QPuiCq5c3cNvYCLIYeJ1DXYApZjuzrXfak7PUdTuWtf89x3m8SKhDeIt455cM/Digp8fofvBlZRI7VYifGldTHLyUvpoj3qCaYKnYbidXK6X/8SBg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(19092799006)(366016)(18002099003)(22082099003)(11063799006)(56012099006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?kXFO9Hl6DgcxvjEUZIHkCEDjy24Jd5jjuzzggOcrRKEi+Fb9SHOZvz6u5snG?=
 =?us-ascii?Q?sRKm8PatIEA8oovLU91eJMD4MIrcht01NPEV8Huoyke8DYjo9kXlBHb7wFaw?=
 =?us-ascii?Q?5M2ZXDWBHSPG9Nf/IXVMz3jFJA1d1zQw+UD2uHdOJaBiYcxsFOBHcZDkhwBH?=
 =?us-ascii?Q?J4EJVd+F+tz+TQzAXJQKgsGbbdt/8m+KDaqRgUuiL0f/QDEqWSdNkD07gH+N?=
 =?us-ascii?Q?RoqNQVccW0hEUIczlMqR8qqXaq0kzftIZV1Dqjt2/aYa6lYultRTuzbzqag5?=
 =?us-ascii?Q?uCxpnhp0U2Ld1zE4i8zvAXdKqIKiiCx/RQWa1HKbn0VTAiddZhRck2SRtzps?=
 =?us-ascii?Q?kRZX5sgcWMctjztn55h5aj501ctyC0xiIMOGjkQo2cOQnnyZGxHRzINbCCqZ?=
 =?us-ascii?Q?XGhzGQxeGLZYxeI/t4oBqoYwOhipKmiPPi2Ucc4Kg3NksylSr4p+5R9TFuDY?=
 =?us-ascii?Q?b0HIolp3sTNiH0vTNWcOW8xGadGFTfVOgwt5rN9hfKSF9+f1vTO9twhoWen2?=
 =?us-ascii?Q?uhTe/6o4zNlvM3Q/zXKU8ZzSmly9dkd9kWkMDSV6zxEuHuiGGqvn1BZOuSQi?=
 =?us-ascii?Q?7O+sUb7UIXKO/yfWd0SLUkY2wXe3E2EZkLWv7JLNWKPAufRa3YSVNst0vkG8?=
 =?us-ascii?Q?iB1Et82mx/JALWecmu7L1GcGFa/kNptYltyyHiSdPP85bYYj+1bKr3X7JegS?=
 =?us-ascii?Q?2E9pe+IpnUlv/JReghjojRwrh3M7TboG9zCBzrO0VFmD4Vc4/3SUhFmIwNZf?=
 =?us-ascii?Q?/A6w2JoCSkX2tfwi9bNYw7Vajrcv6WEZgoa/tpR9Dwnn0MpvoRqm1za42TLq?=
 =?us-ascii?Q?nXEenrbn5tc6SgYzp//GJ5AXxeHtmSVZc2a3JvVhYSbgL+x+s0pZO98m13ES?=
 =?us-ascii?Q?QIZ+gt/P+G48gHh0PacVOL7Dt/6IgqbrWueBpqaW5w2gu80UHeSLUYU3eVg+?=
 =?us-ascii?Q?Gkm/nUJys7lkIoZs4ML1rUu/MW9StuGuypp6ihQEh57sScyRUwYTEmVhi8W9?=
 =?us-ascii?Q?UWg7a2GR/bfn8J+Iqim7gV1LLlRCgKylwryBFAidlVPy49l3QQMiOTJvmZri?=
 =?us-ascii?Q?AXRQC3hOoLjkzxIS4qJhCRXxp5dRQIfrUXAzJlxmnQU74gUb88vs2olNcR3i?=
 =?us-ascii?Q?UxvQzptFWltQGP5nsorgH7FcZIy/8DgQFqoxWqr9ukawttaXhJ8TueQWyafu?=
 =?us-ascii?Q?U8Fi4f6v+FdTn6+G0fYlAb5Fj9V20gJDUcEDyowvFNupxpa59uvP0y/M9Yc/?=
 =?us-ascii?Q?s1tW/asS2LLlNgtG+73beubLDXtKuk6KOoSEFsNRZOlSKcmgoKCrtz8jvg9r?=
 =?us-ascii?Q?HjKZZgdwVk7S8sLmFrDtNdylSNeqcuBVNp3/i+mS0iq2VQasdtH4RusbpQSB?=
 =?us-ascii?Q?wBIQoAkCc/2PcoqnA8fvFM6gln3zt3b//SmYB4rZZUZQ3uWSw/B1Ute7Ecp0?=
 =?us-ascii?Q?LfVRKvqgGcT6ZlbNncvSXd1MGgKfJ+8mWQo9dB/FywUgYW1w8i9ODpktZ1TS?=
 =?us-ascii?Q?sQeYbng8un0iFtfbfci501gAwhlb1oK+FoGnh+W/ru9pVFMQrHhM9ZGJiFLf?=
 =?us-ascii?Q?Vl49vMOijibHSKJsfojJDzw8nODJKd091sUvC39iEQcyhmzIgPC4yh3ezq4D?=
 =?us-ascii?Q?uOsk7HVqBnAM6iiDPulT59N5MABJ/Wsx+wIJseGprljmt/zOKkocBUoq55P3?=
 =?us-ascii?Q?QpPzz6Bh6QWGdJXyHfM9rUwVjRPzHTzVhfXuCokuDD/wbkPKpGK5nYi/Xh7N?=
 =?us-ascii?Q?rN1tl5kD0z2v69Eb6FIMqJkNob7ItOIb0WyAyn2qQFrQM+VmhRnQ?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a56da905-4497-448e-21b4-08ded32ae9f8
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 02:30:40.2228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bhr16NbENuyLiWJ9b8WLa8lsbseyHNtm9u6TiNLfG5DGWrg04qZZqrrue4ojw4cc1p8QUq3ifccGy3OT7waXDOjHMIhU9wiLFectJ+6JGhtWAUNqGk+gzLIFPvz9StNz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9445
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315891-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,oss.nxp.com:mid,oss.nxp.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 729A96C9CAA

From: Sherry Sun <sherry.sun@nxp.com>

88W9098 is a NXP Wi-Fi/BT combo chip with PCI device ID 0x2b43 under
Marvell Extended vendor ID. AW693 is a NXP Wi-Fi/BT combo chip with
PCI device ID 0x3003 under NXP/Philips vendor ID.

Add both chips to pwrseq_m2_pci_ids[] so that the pwrseq-pcie-m2 driver
can create the Bluetooth serdev device when these cards are inserted into
a PCIe M.2 Key E connector.

Both chips use "nxp,88w8987-bt" as the serdev compatible string, which
is the entry point for the btnxpuart driver. The driver identifies the
actual chip variant at runtime via chip ID auto-detection and loads the
appropriate firmware accordingly.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
---
 drivers/power/sequencing/pwrseq-pcie-m2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/power/sequencing/pwrseq-pcie-m2.c b/drivers/power/sequencing/pwrseq-pcie-m2.c
index b5ed80d03953..e3ba9169144d 100644
--- a/drivers/power/sequencing/pwrseq-pcie-m2.c
+++ b/drivers/power/sequencing/pwrseq-pcie-m2.c
@@ -186,6 +186,10 @@ static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
 }
 
 static const struct pci_device_id pwrseq_m2_pci_ids[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_MARVELL_EXT, 0x2b43),
+	  .driver_data = (kernel_ulong_t)"nxp,88w8987-bt" },
+	{ PCI_DEVICE(PCI_VENDOR_ID_PHILIPS, 0x3003),
+	  .driver_data = (kernel_ulong_t)"nxp,88w8987-bt" },
 	{ PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x1103),
 	  .driver_data = (kernel_ulong_t)"qcom,wcn6855-bt" },
 	{ PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x1107),
-- 
2.50.1


