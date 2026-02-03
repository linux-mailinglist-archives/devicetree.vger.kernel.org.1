Return-Path: <devicetree+bounces-262012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHYZIq1bgWlnFwMAu9opvQ
	(envelope-from <devicetree+bounces-262012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:21:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D906CD3B76
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A54630136AC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 02:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71D92F25F8;
	Tue,  3 Feb 2026 02:20:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023138.outbound.protection.outlook.com [52.101.127.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634062773D3;
	Tue,  3 Feb 2026 02:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770085237; cv=fail; b=J8GF7ow2DmBIIXw3ZboZFj1rVA3b59K7QpP9YbtxQqzTl8lR9kcpC+nV3DQieBceAjXvYC7ZD1OyWE7Dc1+tG/oy8Bq21v3X3w1au+VdsaO1sGb+RLiGBNYAkpE+z4fkSmfnVzd/YlHwdG/aIajvYX/vHdLDGko+xLDUyIc/aT8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770085237; c=relaxed/simple;
	bh=2UPgctiP2BnVt+PwjeHKHknYYXwTEo4Z5Sfe/yc26QQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=usP/tF7AxDo34azDUVYWqtX7qQHeaQREfOpO4HSC1hMerCcPnCQ+lnFZNVSrgM1vRCJtQOs1z43ZW0v8LihlC30G+lh0nBtxp215M2BwPgM4A40ukFNGRSul1cq9RpnerMxC4qDLotypxOTGEuJb6lkBr+egZhnAMnY8MlzTsRw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gMQWEXZFOnpNZCG+CGECYUKCDOJNkwy1Auzlojdnnv026LxE0yS4NFfLKFIkGj5R/CUUjzf9ZaQXhuNXE4bF37z2uVVR8lbXqdRugCLo53kX7MMf8XJzkClfGgqdfWNxV7NCmdv4mpSNzMg6ZMBkO8RCza08HtB1YyecrNKEp4lncYaPQxCqArGQtxOpT7g8BvMTAwIGgR67PdTqs3wnXDnKJMMpNznq3UjoF7BnvtyzjSzpygxqGBsOr+kUuGMd//jXiRu4xxdwRvY3ox+kV/WKhlVgH5114Hkpi/Wqu7Bvn2OFdInXZIj2ZA4rq3tP97P6Cq+pTMHIOjftGGC3xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=641mfZC9UhARD4jrIgtik2gClfPhuW2WKmijqdYnG9Y=;
 b=eaTG5fWOZCT25hlMcuLcQJPcRgBliHP0gk8YNOwm7l7NbDUfC2UgiXiCHSz3W7r+Ghb5REXlaslyHaDvfDLzIvrZDETlQswwtmVU2SI7pus575fSl+NaU/+5kpeMDhkseVf4szhpWbPNGA/gH5tLgDei98BMnp1TQEDfURkuIrJ/FeUVjE1QqVjMsn9U0IWhrDblTGE9ka5e1fW+jZju87NJn5VC6b0vZGnjuvw5qyNWTGVWXIR/o6eh3zuvAdMUTYhb8WQC7pJJ7gs7FEQQoOofJrJAJXZpeacMrhtJ5b8dgN1X2Y3CNUYFGQIokT0NS99pxaB6aarDTv+ZUktYDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:300:5c::21)
 by SI2PR06MB5290.apcprd06.prod.outlook.com (2603:1096:4:1e6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 02:20:33 +0000
Received: from TY2PEPF0000AB85.apcprd03.prod.outlook.com
 (2603:1096:300:5c:cafe::4a) by PS2PR02CA0081.outlook.office365.com
 (2603:1096:300:5c::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.16 via Frontend Transport; Tue,
 3 Feb 2026 02:20:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB85.mail.protection.outlook.com (10.167.253.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 02:20:32 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id AD5F9435071D;
	Tue,  3 Feb 2026 10:20:31 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v6 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Tue,  3 Feb 2026 10:20:31 +0800
Message-ID: <20260203022031.4075627-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260203022031.4075627-1-gary.yang@cixtech.com>
References: <20260203022031.4075627-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB85:EE_|SI2PR06MB5290:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ea640566-aebf-4044-b469-08de62cacf26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?H0Kzw7Y/nyxqkR4086G5lbxlFHh6iJs/VVovaS4kXvGMhcEcvTeofeEsGhUY?=
 =?us-ascii?Q?vb0FdQzW7yK1WS6YngHTryR562oMICGmGiDnjcDNxMPP0zJBZQLKce22PQ+H?=
 =?us-ascii?Q?MekeXKNAZS0tcKACIhCsrIt3IXCBvWPf4NqkfEUITCsUad+BIg9ghRtAFXee?=
 =?us-ascii?Q?SeDF8BiDisrCVIfL+zerqeg8vTziO1PUHjNDcG5jpptGdC0oH5ssHslI1oYp?=
 =?us-ascii?Q?FsYXtWzjtyYA6lUvE6uafj0YXKagFCJldx+wHAJhOGblVosYWzVrAZnUtGKl?=
 =?us-ascii?Q?XpSDrwVvD7MH3/dcaNCu0NvF0i7dqNtxmzpB1hqbIkVi164CVnLTqt9knkSB?=
 =?us-ascii?Q?62WBPalkWUSov3Y5zFFlNQp+IRa6ULb2OXzKe9zbdXSHhkFz3tqHmWd6L/Fv?=
 =?us-ascii?Q?Wjb/z9G27E3mAq2PB93t3kq8a7fclT46fQkrgYLXjAQeHkApuJZVmbTd480S?=
 =?us-ascii?Q?HlTSyDoBHk29AzL8iELBfEpU/B19Qf8tkXYirX2bvQBVLSHK4Hkb0prmvEtV?=
 =?us-ascii?Q?cDfoHpAdKitXR+FNS3VPeIioasxcp+G+8ggIf5ptXoo10fMUecA00Q/UkEop?=
 =?us-ascii?Q?OLdjPfCXXEYGE7DMQUuhJ2Mg28IgNRiuupKD6s4LFt7oSdfRT3EqAP4W05EM?=
 =?us-ascii?Q?iABcU3rB/zZjKpZT1yG18fu5KYz1dBAPIqsllM3ZTKWJvWyaPjwKIcJwP6A8?=
 =?us-ascii?Q?aGpb3AGlSPpEQaKP9tQggnqa6g/sEMTjuwFraq06nziUbxSkhhnuC1rAsbMP?=
 =?us-ascii?Q?03FW8bqSb6MM2q0SFXXEL0o0PgToJOT275/OSUYtrmj48s3tv4ePVlJERnfs?=
 =?us-ascii?Q?H/4WgkNegZ4Ejj2MSXyZwoOKwRMoJsqv3189kACdic4wiSuM6Sj4C0RrL+rw?=
 =?us-ascii?Q?J89Pi0KPbxVbHm0f8aGqeDs01DNlEMVqHTxXp+yzw9PNgUlRTYJoHxzrHNPd?=
 =?us-ascii?Q?w7Mn/P3PcK+ECnRuC9+48gqQhOwIAYIn8yt4Oi/oMPmXKAUKiYV5Wgy6bqSk?=
 =?us-ascii?Q?5++L8unbleTMpCLQSWSA+YC7S8SFVIoo7PYHwXfCUVqIYLd7JL2UpKaQ2AuU?=
 =?us-ascii?Q?XY0I+GRQWbuoSKkXYfqFhgmjdrCwosSM6/8AirWpw4CUHVXrG00tFHWw+479?=
 =?us-ascii?Q?YHuZUbI5IJ3yz1aT7iLY9P0Q5bhooxA6JZ84jLo+JRTp6Auz6rjvvfg9lo/o?=
 =?us-ascii?Q?o4r2Dcfs71lbxyhDNUmz65An+URkMPaVUzUyMHKoogMA9Xg4TWywW2k+5AgB?=
 =?us-ascii?Q?jiKGHeSCOsDsqdOiD9jqZEsEze+ZHQlVpaB9qucN5xqaQtzXvbSDOVDOyVb6?=
 =?us-ascii?Q?xbWad+BB7L8Lj3KCGbXxePwyOWnVvSgjn8qeNKk2UaERbOG4ufl4EiheAOPI?=
 =?us-ascii?Q?VBfSTyu6iQBn6LS4Zixbv+w72TupSBk3oHzTh2N7pd5jIJoATxLqHk+YLGZ0?=
 =?us-ascii?Q?17LE2bnKxWZwX7REO9oBJwMnjERST2QEaFyr4z189Yv98gwJWHlrvfQw55r/?=
 =?us-ascii?Q?AJlmcpWV8SqSITMsW3CYqfE8K8WYXdq++gRLIZ4DgdsTeJZfTHRiHLz/ds9z?=
 =?us-ascii?Q?3kCXzKkooduSdrNPBefx2Sf19RP2kttzrhAytOcXIBR8Q2ga8/UY7qNolKrQ?=
 =?us-ascii?Q?A3vAKjjw5H3zPKQQ43XWLDKuLm8rLlYe8h9pG+/JKX35jPctv+HGYLAI4ihJ?=
 =?us-ascii?Q?rSdAKQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	cLPOTCGOXRCKr+QqF3nQHBbGxHDo2Ieg5r9GRFrH5wZysK2iD8JQY3HFqQ1/5yCmW6/qcOYCAKSZ2BoTTF0xaAoW+kXufUh+9Gz/eeOighqrwDvkTA1612/pGka3CuGiCTBD8SnUinete1G7XPzUsA3OFo1OfVWKFZk/enV5OM7G20IDKpR23blcTBmfoBBa5U1rlP7+lo0Agmz1nN34l1JsKPGuYX1S/fvq68UJkPrQ2WjXWhxmYxEj6GnQ/EtBMNJRikTL2evYnMndH0HRWcEoDydm6Wq18siJ6diSSF/ZbpyholcYpESz4RPBmVW5yjOO5FoEoRezU7xlKjmnKGq7o9ehUq0O6+K5iZ7JnrJGmAeR6k28OMQ8LGkYikDMp9fcjEl0pU82zv5PZdyUERmJ7jFFBisDwrcuIAI6mMmxtkUV8J2AG41A7NmvJeuP
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 02:20:32.9092
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea640566-aebf-4044-b469-08de62cacf26
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB85.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR06MB5290
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262012-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.62.143.160:email,0.244.63.88:email];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.244.36.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:mid,cixtech.com:email,0.63.122.0:email,0.63.161.16:email];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D906CD3B76
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..37dca97b6b67 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,13 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +575,13 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: s5-syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


