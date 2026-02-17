Return-Path: <devicetree+bounces-266130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHxRNndmlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5F214C3F3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BA3B130117D4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A38D359714;
	Tue, 17 Feb 2026 13:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="HHeudQeX"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012056.outbound.protection.outlook.com [52.101.53.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BA35773A;
	Tue, 17 Feb 2026 13:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333206; cv=fail; b=W4irfPR3O0AxC1IYFJ4f1p7WrG/czNEjpMDxQxrfryOLcid+FtqyTpDaOJ9mRr5fdAQowVtwoTSQT+xedehh704V1V3yCkbrDF8wt4nFeKIe9EZEuxIfODQiB9AX44f5TJ7Ta4/sE70fDuehzRcunVhpza4ypEBGNkRj5wKsob0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333206; c=relaxed/simple;
	bh=HRVfnrgyfjnEF8JNTgU5QYJSJ5QDwAEQK9xpfRmTAvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jF7zxkC494W03PVR5a3BXchhsgVg8LFPTGlE1OZzubyTg6ZnkYr0MPL83ahiK+TllVCx6Z7XCea0/lw0FS9ZgqubI0LenezGeQfs9Ov3zstk5h/Dg6RaAuYdqwVfokzZ20JtuPAMcqjHxMIAJQIpJvnQ/v9WIWIX20iMjtbvrSU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=HHeudQeX; arc=fail smtp.client-ip=52.101.53.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d54Pq4gDAvpCV4i+bo6MjceGzYcU6xRAGtxjrtPi087Scvwn4IsZj68TnVZ0Bk0QO0VDeOp8Uu+I6aCMb8TmmCeqCq3Kg9LFAcJIvTYaGtBYC1CREkTYVfAhf7QsIqAJve6BRVy7HID6phzIAXE21RNUqxU1L4J7RiL8vqI7p6zgazXeXEmV/Ig3nuCZKGEfcqijA30vHjpU5tsga6IeAdDjYFUve5I8aMGSx7z+E66aiEDkeTrq0fYvXdU3GuNjHS9bePtbL7e5QaaOMknROLUJQhJbV6ADzWeXaAUoDrxm/QouedUbfy9b+EWYti36zxSzAiFFky6UT2/3c4vhHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6EZdjdOBRPE6p/IMq+rwytd79S4yFPyGgvWh6elfD0=;
 b=VLWWjK4LiuB8eyDTucKZJS61Et5mgEAzA/8xxMPQtooJvvZp6wS//K3+vDGgOfY9OOZKtuiTLHlhl410z/547A5/85QcEDGxZDsZ87vIV2ixIwYrpmmzaoxvokg6TtP3MG4o+NJZ98I+Md3CMY+9lFYOT84vYdwEJR3FpG5ICAbz7agt97l88b4EYY8fIbyr9v1IzqazTom7woLj2dXKPOqSpThXvTuq5dhTn9eNoZVQj4H8s2PwUJuafConPT9CBmx5MkRGT/O/6bf+Dcyh55pnF839zUEts5ul9OOnMs8l/MdHavwz9MTpl/zlU+RHxaMOh1oIEmtfPdGvQVZLAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K6EZdjdOBRPE6p/IMq+rwytd79S4yFPyGgvWh6elfD0=;
 b=HHeudQeXAMhKOUyIVsVmd4MVQb/fKwB+ORSn7CShstd9VBC7cyWCvutkUdOB5Qn8f7HDdCf7W3emtwms93MD7xOluYa9mHE8ktlkiPpIr7v9c/TKxg8+75WWReAXH+cfv0LOOGZ5JOAkZHNtazEUd0lgN8qLvwXM1E0JpzjemFsxNHU/k7pZQekbD5bxWnSD74iwY2f6jkdpw3xNhr+WaXxSUDmfJGi6z9ZY2CB9CKanqKnRyjfrfcczeDNZldBk9H1beEmHey2Y2stnLdGotxh+v7zyYiZoYM9wP8BTCwK9gPQVBtaa6dFoufAh/KSgH4YiQiqfuJOyWtP4aYQXyQ==
Received: from SJ0PR13CA0060.namprd13.prod.outlook.com (2603:10b6:a03:2c2::35)
 by PH3PPFBF7E92FB6.namprd22.prod.outlook.com (2603:10b6:518:1::6c5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 13:00:00 +0000
Received: from CO1PEPF000075F4.namprd03.prod.outlook.com
 (2603:10b6:a03:2c2:cafe::ed) by SJ0PR13CA0060.outlook.office365.com
 (2603:10b6:a03:2c2::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 12:59:58 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 CO1PEPF000075F4.mail.protection.outlook.com (10.167.249.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 12:59:59 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 29827F884B;
	Tue, 17 Feb 2026 14:59:55 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ARM: dts: imx: bx50v3: Configure switch PHY max-speed
Date: Tue, 17 Feb 2026 14:59:48 +0200
Message-ID: <20260217125952.53997-2-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217125952.53997-1-ian.ray@gehealthcare.com>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F4:EE_|PH3PPFBF7E92FB6:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a412c932-ead7-4f26-499b-08de6e247560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?c0uFUm/ytHV0UzEVNVfazntBcJ6vCt52Kxv110vFt/vqEULLwu9c/td5KG8i?=
 =?us-ascii?Q?z8Wo69DVTHXm1kWwKLwJ/5frGVv9N5VR1RwdXDijZS21jcoo6fGh49s4qxjW?=
 =?us-ascii?Q?ybG22dPVkqcN40KZfxxLvXTikps1hVz0luX/DxTBf/8Xg79+QO5P7/3HKXmY?=
 =?us-ascii?Q?Sqh0p1Wd7ZkLI6IGonau6RiCETOKwMBKRSsOgxbnHrfaLDnyOSlMa+KWbXHr?=
 =?us-ascii?Q?dZP46oY95+MS6KATCuC0PwqYHpxELuYvkVyXpTZo032VISixICn01bnow3RC?=
 =?us-ascii?Q?9hsqDXyVNB6Pl0IQC1M2nMBXSK/tyi0eXBerC7mmKJIyIHWfh/rvt7/EiX/l?=
 =?us-ascii?Q?bwtBiOeWQ8s076wILAmBK0Vd62Yt/YmsoCbc3XBLycLKe7wzUugCT7wqn6yQ?=
 =?us-ascii?Q?uxHF2LI4Mx7n6dS9UgEl8CzGpkJnebAVOq1cIW4CTMTeDdgh4pha4rYcvBRT?=
 =?us-ascii?Q?RYA3o7Qj3HoL064iYyQTks4cSaeVdhezjsIqstQQwnJdDpljv/do2Z429cd7?=
 =?us-ascii?Q?d+PrnwDdSj/vzd4blBsuUQk0uWYqMnesuoXpYhgpUr2+HlIMWakqNyBIkEYn?=
 =?us-ascii?Q?zRYtDMNIiCDIyX5yLeRYLr1YziLm2W4lDBt8KOXDVyRHE1rZRrH3XKRmJhhA?=
 =?us-ascii?Q?TGcPuuejzlty/Wb9dn9AA0FMI+RIHrFKdbWGHSVt7axnf2wBBp7e4OjVmerx?=
 =?us-ascii?Q?puMb2zgIfC6OFtlmcRkIxcv1v/7fPgXsXOOI+4qlwzzr8A4mFmQVoOxyvHz/?=
 =?us-ascii?Q?z3Fid3qUU/Kfbgwx4B80LttHRcEiKuGFO1omlODJNj2Ml3Keb6tiwD2Nrial?=
 =?us-ascii?Q?eOpTNrUIJif+0Kt5hF4gmANCBElpyQS95I1MBsPy7oRjFO5xLj+Ya8CuCeIl?=
 =?us-ascii?Q?8kgFPXV17dpXlONAGgjJVJJaiu3r4+juHjnYJ+D+Z9YBTR3ykedWZ2bFvlSx?=
 =?us-ascii?Q?nfZBnw8zojXKABoTjgU6BPRCtn9IZKIiKN2DVWMJllWxlnNWsYXpMaYKomi/?=
 =?us-ascii?Q?tXuyO8Gf+38ERGeHN6+sjABwJC6dyn9lQgmN03p6IjqiFc1lI7IToJdSUc4V?=
 =?us-ascii?Q?BswFY8yOaV3npFusGGv92mPFPNODnVhjRcd4HwXUYDmwgQJ5khvpiYoIenHv?=
 =?us-ascii?Q?RFhJKSFoacxRVm8eGRlMOrmf0f+If5zgtcPJO7IuTHU9Nr0MDz6N3MoqdSEi?=
 =?us-ascii?Q?aFV7lL0N0QX7oxpVgUWgUriyvrgrvaqps9fLVi8RnVuJGkU/p88Je75TEa3/?=
 =?us-ascii?Q?UhdqI11HsLDouzH/TbImCGlOPkxXOGHBM6+bypBf1cDiFhEr8avZYF5VzhgG?=
 =?us-ascii?Q?L9Gbcg0jOwGHlRg2Uk/T+J0uawZNUJ8097uMjV13OtEEhBKCwe6sh1IWxyDT?=
 =?us-ascii?Q?HROUevA+KeHDab2SX5seJGtIWW7HAjaTbodlYSZjnoy/YwsJ5+oncJ4AtlJp?=
 =?us-ascii?Q?owWQEO1o20SEbN25jhJw4Nq0BqjL20qMm6wtim6+r0Pg85iTX26t9oaHjUMv?=
 =?us-ascii?Q?K8aLcDRCRK1tyQPvq5pqFcw0zQtXjuidIXURQH11/5DypZddo6m/MxutLKHI?=
 =?us-ascii?Q?SfoxnoMBmO0N5YlQONbRLjBU1ZnTK1s24yRNw9V8pN7bwkkB/Q2jLgATeFkW?=
 =?us-ascii?Q?fW0iNAYvr5A2htHsARQxz6HsqM5/AqWEdjzs5wuVANNyBgT67qbu3qeSdRN/?=
 =?us-ascii?Q?BIUPfA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	NJGS0DU8wkJ3oiUjojGZIiwQPgx4VjxEVD8sWwz59e9cU37uvgXwEpLtIJeH3atwV+oHZr9oQ1EKjxps9Ey9VEKr3Q/SF6dW1WKZg6ql6Z7M6faKWxFVkfXGMN8zTUboY9Mf53XHbqpsrBpxfZXG0A7TjsNgeLegFoUMlRLsq0wyhJSMcfQZC7S37FsHcyNljCl9anHG0dqEkvbECcgxHqckFiHM3Y+f33sphdRYpqeLcv4MPOjwDMpzrKoxVSPnWAM21QCdzk4kZqegATOFIwjN1uMz04Z3lBOTK6j4fqfobRv2JbF+r0LiwZwa+X4AS3wIYcgZqjV7Q+YyvPV/bik+i0SYNagGcBuO1BcZpShLx3Jm6u6qhcbDO8LSgE6SIVXYBqOQ6otfHDhx0NBitA57HQ9xi53WDy4Ukv/o0zQ/XB63vhMz1wibcmJ4Qiha
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:59:59.7148
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a412c932-ead7-4f26-499b-08de6e247560
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CO1PEPF000075F4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFBF7E92FB6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266130-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.3:email,0.0.0.2:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.1:email];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE5F214C3F3
X-Rspamd-Action: no action

Configure maximum speed for the switch PHYs according to the electrical
connections from PHY to RJ45 connector.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
index 1e2266a2368b..2c8d2ab8cda1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
@@ -124,24 +124,28 @@ switchphy0: switchphy@0 {
 					reg = <0>;
 					interrupt-parent = <&switch>;
 					interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy1: switchphy@1 {
 					reg = <1>;
 					interrupt-parent = <&switch>;
 					interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy2: switchphy@2 {
 					reg = <2>;
 					interrupt-parent = <&switch>;
 					interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy3: switchphy@3 {
 					reg = <3>;
 					interrupt-parent = <&switch>;
 					interrupts = <3 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy4: switchphy@4 {
-- 
2.49.0


