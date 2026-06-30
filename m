Return-Path: <devicetree+bounces-317640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j6P1FWKcQ2pMdQoAu9opvQ
	(envelope-from <devicetree+bounces-317640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:37:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E32236E2F97
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:37:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=IndR46ig;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317640-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317640-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6319A307346C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34A33F4DFD;
	Tue, 30 Jun 2026 10:33:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011008.outbound.protection.outlook.com [52.101.65.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93453F39EF;
	Tue, 30 Jun 2026 10:33:20 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815601; cv=fail; b=B9B7qmCBf77SvRRMi4d6dZDQnZRny2EMxC3fqm63qd6J+qgBwtTfeKHySKvuJ6b4Wt+KTHQFl0e0Wxq6TWEsK0RZWw1ANhOPw6BVDd8EBz4iQBvHqMie/1rGKb4vVhBDZVKruKa21b/dc4dfW31naRgysd0QTofJJIzpsFrJAzA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815601; c=relaxed/simple;
	bh=jDU9wYgzkBpvekpfvDDH02Dcd2fmfSEBpClgfl3pEm0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oRrCya+DcxGEUcUtB5m4QGaYrKEDYouD3u/BHsJMDgSHrHWWn7gWNYpx686SfifxBCz6yVJjJZtqlslisJH9to8eCX1rmAryLFWitzNaexAiSrq3v+4WHrhfP5tsS6LglDHJmvpxjDmb83fveB6dqAldBYQuGPgyHxjzH75DO4I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=IndR46ig; arc=fail smtp.client-ip=52.101.65.8
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YGCTY0OiPdbhN6v/HwSzFKQu3cmV6gSZZ4PIWuLjbR+vqhNn+zY3jZYsnV9Md1+4atMWhwIEtcP56c4GbBMq2aiTrga0lxgPSYIxr//GdA+g/1xsP0+DYyGQzzNgC5+isQgCxhWZwqTyjTCKdISy1j6sGBX3jmki1Ac8cGbaHlcpWUKNzlABhkVGENqKatULbu6V0PLQEotSP7Lq1GlfUVWpVYXCxHSvS+ONNy15HF7j2WYtYPLuMTdIsSJRfNuorqtIL0B1A7OWOnCIe7bRB1evNBoKQV8gBnb+E/1x1l/CJno1wmFWPKU9R5GSJ20ovAINQ1daYRqb+Dl7FAwA8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nRQhr7XE+LfuRm7NmaLPURqGRM+hh092xA6kFQQIHUw=;
 b=EPwzmc7bQtl4Pmr8JO1VI3KejIr1fHrTyg/Vqln9HUQaQvsilfoawKBI5ltCjnApXwQc9rE2w2LfBspb3uGwHit/xI2TgH8GyyAli39ghg0zBIEHvVL9WEer55//YDoX8WlYYJyyUxn5hjvfNezcardEXrXRS/pSIxQwu2yS3J4+P5m6UfqcT3cx09kFaOdcLMu46mX4pBDARaABKxMTeX/qd+VbQd1DAvnbe8C86z1CtCSBhWwH+AihLKXE5HDmx0BVD+GQDvSYPI+Khws6C9JTHDpQqarwsq/MNUD2i2J5AnRN5RH6cfzhty4JQIDePLLncrr9RzgOZ41jABQ3yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRQhr7XE+LfuRm7NmaLPURqGRM+hh092xA6kFQQIHUw=;
 b=IndR46igkTdlahqHyIaoKe51DcM/3pVVbln2tfa3+eWXTDjekQMCczBIH0V3jy8yyXd3alTfM+dT3Fyz9vH5KuecNA7fkvzHz2k4gRWTWBma2CXY0bfWd0fK9LN1qYx4wdQOYDacsN8Powrw9M5CB4WbMBas4jMp9xE6ZgJl4tQhrwzVBmoHrqLUHPJh1ujqYqTy4sML+tDwV8Rga9c6eM0Ug2lRbjeldNJ8kOFaprXYkgnsmRwv+z7PFakwxYC5gWdGvFh1FkvBVpFQklqUWMx5r4WxW270FUuX2H5IOy/0dZnzHRUzCt6Ml8BEteFJ/MRTng87+b/X8E2L2tvMCA==
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com (2603:10a6:102:2b4::21)
 by PAXPR04MB9089.eurprd04.prod.outlook.com (2603:10a6:102:225::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 30 Jun
 2026 10:33:17 +0000
Received: from PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d]) by PAXPR04MB9422.eurprd04.prod.outlook.com
 ([fe80::54e:28bf:aa85:d25d%4]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 10:33:16 +0000
From: Xu Yang <xu.yang_2@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jun.li@nxp.com
Subject: [PATCH v3 2/4] arm64: dts: imx8mp-evk: add usb3_phy1 tuning properties
Date: Tue, 30 Jun 2026 18:36:27 +0800
Message-Id: <20260630103629.76604-2-xu.yang_2@oss.nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260630103629.76604-1-xu.yang_2@oss.nxp.com>
References: <20260630103629.76604-1-xu.yang_2@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::8) To PAXPR04MB9422.eurprd04.prod.outlook.com
 (2603:10a6:102:2b4::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9422:EE_|PAXPR04MB9089:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e10f936-006f-44bd-302b-08ded692fee6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|19092799006|23010399003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	TTzdkNJ/+hKvSTUq1sNPgD9yn213mrWL7ZmIC9CdgUMSLwZnj6u98gPuTpMl1XWUz1XIyrDhRD/n0Vi3gX3OqJAQBfWcsR8vDvAF1naC5bVIgHmr867N/bLG0T0rPtX9nXTMWA7kj2DoV4ZHJWZyyjgmxCptK4igLo7t5Udc9ZK8plcIuVyqfMydVUiXSJV8h4s+15Z9ZsczFRIPBrbPv3tamrRqj9i1fwXtErlvC0s/DJXjo0bqDsofbqQF4VtLrXajEwaQHNwwYMA30zcrunoHDvLyDoM3rHgYJxGAqmED85u0Lip2k23DOL6a/yOBdlPBwXU/xhK0DdUNyntGs4Bm1ISzoERv1/U8Y0j7CG6IeEtVcsWevqApVfO3ecozQGKKrJin4o8B/vzVcjasJqcDiKvg1s+NYuiEStG8NGUASltgfEo91Hf+30iuYTO4za/qWd0Y2SO4PdckXdmAL2HqRYtV51QrgvqLOBeDLQjPHqQP6jXYBnSWDKsM+/45ho5Imgmt2ATa4nKZ6lpNUsEJWG/tNEIcc2Na3PKOwWYqtlFgBGMEjso9a1GtqbwM23vB8EMjKXL9iiGRK0cicWnz0RNbG61l/rZWTV+nkj1caIMyBO5wCFdkRlDSHSMsPzpqBG7Q/s2A98bmMv+KhTsujJiGgUNNSyFaFCuk9JY=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9422.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(19092799006)(23010399003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?1o3/dIHtsRTFOVoPY8bBX3wO+WMQRC6CcYwjJR2/3N+ESsG5xqV8BSpupe4I?=
 =?us-ascii?Q?07eCTiNCCqghed1OVhXzj06tVeFDwfUfdYakXErKLnKQVHKgECddn0wqjRaj?=
 =?us-ascii?Q?iKOtI1XlN5/2Zq0U9WecpDxoj2q6BglqtQs3uW41/YhKUQCUcd6Z7fye9NAw?=
 =?us-ascii?Q?s26CjuyA1KDfvAOwLmXU1SHJ+6pMfpDVBc2xgpErCNJu+xolJHsZfe4yHWlr?=
 =?us-ascii?Q?DwEgAIkZQ5esCDFpJ9PHo75oMLWjLxHWgHTrdir03zonKGDsKE5iroYm00de?=
 =?us-ascii?Q?UbFa3UPtpUL6ScWBklonUO7vyyDLXTudJfi4NkZdaLRRAzn+lo/1cxPOf0Br?=
 =?us-ascii?Q?uuQWwkZoTBRXAk+/DYNa1YwMF6khq0Mk3HRspBMILDv9YRiCeE0DY3jR/pGP?=
 =?us-ascii?Q?vTFrPeaWeMW4xYsD/fZWrkcWtFeaBtgY5LjF8fgPIsI77vbNHv28dm/QSDOw?=
 =?us-ascii?Q?/AYFDJJUOHgHhSyO7iZzNPhrsTECEi3M6Rdo7fVkFUMgaM7sj9aXm+PfqM+D?=
 =?us-ascii?Q?h9aSth/HdrGabCfPxcWM+UoteggIYo7r1EmNus/SaeKXtbDFUp6VhitHiEZw?=
 =?us-ascii?Q?d0b8smrwXTwmIJ4FUxO+FyxgbyhQmC+VKe3bBeh4qyBDaBTC6JgAr/GoBJi4?=
 =?us-ascii?Q?7Ik24yQZwKd+PmsFAKW8Hn6Cpofs/lut5jYur3uW5y6sDU7D3EtshoQeVyqR?=
 =?us-ascii?Q?B83hbjOXz5ahdZRbQrdFj/2eI6igDXHFINFPv6Uj2cYmkWQ8xZFIC/mHTbPR?=
 =?us-ascii?Q?EFMKufBZifERadXxczlY1wwFpnjSzp9/coUM9sV5MEdfvhBPwRS7krMyCe+p?=
 =?us-ascii?Q?j4Vh24JTrYJr+IBRoXB4RKfOCTOB1aAqop7UwFcXpVse58CAagZKHe/MLafY?=
 =?us-ascii?Q?JDkNZJB+7zNb2vmcGFgr9kvnuXsnmK+q7cgNsvk8/FmlKl2fbPrD9/ipBU97?=
 =?us-ascii?Q?1WGkFrMVI5nHKvZVwYo3jiSopDJC5ur3WFPIciUF8HdhlkfvkFVFG8s2Xq3M?=
 =?us-ascii?Q?eb2s0QonYAvu5B+dO7S131Yl5Dm/qPvfL5FAARc4HdtbVwbuUh/wadc2JCoW?=
 =?us-ascii?Q?TRoBM+j+/BTzGu5b/XVVp8sIpS46yJDc39layqycUJFoOUJeSjOZH1ojRNBP?=
 =?us-ascii?Q?4aE64PVcUiyod64II4PPtpVqPsTDB4XESkc1LcPndQbP08yjdxmjw+XvkB3U?=
 =?us-ascii?Q?p1IGubyxyr3tdgrwgWlOWF0w/ZKTOTzabWt1Cl7+orXi4lApvAZ/k5OxdePz?=
 =?us-ascii?Q?MMmsxiHSADWB/yyw9TWjxdcytEPIOEIuEft5m2EZvnPN+eboKgeRYKgE3xeh?=
 =?us-ascii?Q?DpEyvGodjU8WNVYqmlzSu+PNIrQVWF1g+4xt1E+bC2N88R4x9jWmM2GkSP9Z?=
 =?us-ascii?Q?nh8STn+SuURr7EZ491vkIhU+iApBj1+Epljn8B6IQ3vU7SYxB5ioLI5kjwzP?=
 =?us-ascii?Q?FW3jkJ76UnDIBtRK327j2EBW3U5G9rmWUkZuuMnCp7kkKqi1UeSN07qAslq7?=
 =?us-ascii?Q?bxjFkiCH2JJVJSX1lbjn/cflh/U8YzmekhwK/7rgmZLDQs41wSTP0HhR8EIU?=
 =?us-ascii?Q?e9PEdcybT5fdniG4WZSPV8pKnHLeYd8/2+08y/d2UBqh882N8j+D70XD4G1i?=
 =?us-ascii?Q?mM2sTOyEUunrx3VGShqb8MruVxerrMNxNKITrupCs2i1JjurvWAOi/gVUc+h?=
 =?us-ascii?Q?wpsDP7LsXguJpQ7pfEc7j1FSH1uTiB99aexrPWVf/C3mL9jZH1NLPnRjbFCm?=
 =?us-ascii?Q?/p3FWXVz5UE+OntgaRAC0iqTVhlyrbTU+FU1Myj2d/z4EaYUzWoa?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e10f936-006f-44bd-302b-08ded692fee6
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9422.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 10:33:16.6622
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tDSFZiCk/vl5EcWAuZ+GrvQjGwEnHQr/6l/8N9No9NnhksAxTd4Fhxb9nV6rSppK5fB0/vuq62zKgf0Cc+8RXOziGAQMF4Cr2t35aJMJuLAv4D1eUy8WyY81SMI2nYvN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9089
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317640-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jun.li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[xu.yang_2@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xu.yang_2@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.nxp.com:mid,oss.nxp.com:from_mime,vger.kernel.org:from_smtp,NXP1.onmicrosoft.com:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E32236E2F97

From: Xu Yang <xu.yang_2@nxp.com>

Add some tuning properties for usb3_phy1 to improve signal.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v3:
 - no changes
Changes in v2:
 - new patch
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index c8f2ba5426ea..8f9b9a1b1686 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -914,6 +914,8 @@ usb3_data_hs: endpoint {
 };
 
 &usb3_phy1 {
+	fsl,phy-tx-preemp-amp-tune-microamp = <1800>;
+	fsl,phy-tx-vref-tune-percent = <116>;
 	status = "okay";
 };
 
-- 
2.34.1


