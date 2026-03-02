Return-Path: <devicetree+bounces-269806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIdZH8IxpWli5gUAu9opvQ
	(envelope-from <devicetree+bounces-269806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0251D3876
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0725300B75B
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 06:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9DF375AD5;
	Mon,  2 Mar 2026 06:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023090.outbound.protection.outlook.com [52.101.127.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E13016FA;
	Mon,  2 Mar 2026 06:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772433856; cv=fail; b=XqzhYx0VLlO2RPd8cbgS0uKMGsPSr4EpG1Vuz9bTDx6F+vI5xJHd9KcpI57eBFD0xOdOO1sX4tTyBZyRnx15WgrZ3sccFBnIAsz9rjeuEWsLZU2Ql5W1OP5M7WTGT6Y++DIaqTYcbJScbI9+d40teDa+EtbS8AYK6mQFS9rUdH8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772433856; c=relaxed/simple;
	bh=n23VAfZ0fYWvbsFN1PIExBwKmy1ecvLQU7UNVZqHzoo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ayXWsPNB90Ft/jxXkWDqFPlor3ztiMHGwxEm9VjeP+1Ik3a8D6XSq+2+O9oLORh2vPaBAunQweZoRHwlNCzN9s7QpxrWG4tmTDDjCfTFvJmrLbAiyUaK9JNEv1r+1SseL+RsI+Ojp8Bk0d4Gd7U3ZS1yTYvDGq+3LehipgM6u+g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EdfSGXirroAsL7+dynVo9CODt0u1wJLoCHyO8sOKte5ivg+PPGHhK2KDTLhE1vZgT4V5RwT6dOmKWRO7ee/Jfmb2yX4O3leAwB1Y4l7OZZrjj5sIXKx0lAUgpbYp548voqywwlwPfpNckCuyul+CUD+IWV/S+a5/65RqMAq5kagjzWksm9h60Hkek98s+YRQG7eWlvD+nY0GB46NQd8IFI0Onloi7MTo7Bg0sW402owdtWw/ok5/AXNOzIrwNhX3SJsKyVYVgbCtSJZN4B5DNhopPL0s0REHhSrUP//kWNZD3/ae4RFQ7nnefGqgqhrY6FKHQphQI7FC7+Czf/4E6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpDbCuK/g1lKjtT/9XeCqkJmcDgjO7aNH4btcOXV42s=;
 b=H0RDjuxb/MpUGBKlBQJNj6Gf56n+31K5dsC+4oDPFlwcdhCcpZOZY8TFI4eH/WzRXKptwEkX5ieCo7XS6GrQZBnr0fqgvLJU2YMVp6YKDhsnNhdvzvFOdM52mLSL0sNI52kTafMUYtIBuJQES/g2MlsHvC6mHeZLXigJ/up9AEQ/RuMrhaOX5S7MZLf3N+ecEHIMHtXVcl3MfgXqVphnTEpobVYVZM/xVkHARGohiBaGSU+yxdn4KjFE7HMMyLqFMS66EHn9R9mGYTqtK/flsA9+uLN0kGuKWFS/gtYG8xYjQyHn4GbOu1/Dp9EpYgVFi6Sv9QeyohQp1lpJurPw1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SE2P216CA0086.KORP216.PROD.OUTLOOK.COM (2603:1096:101:2c6::6)
 by TYZPR06MB7172.apcprd06.prod.outlook.com (2603:1096:405:b3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 06:44:10 +0000
Received: from TY2PEPF0000AB86.apcprd03.prod.outlook.com
 (2603:1096:101:2c6:cafe::6c) by SE2P216CA0086.outlook.office365.com
 (2603:1096:101:2c6::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.21 via Frontend Transport; Mon,
 2 Mar 2026 06:44:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB86.mail.protection.outlook.com (10.167.253.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 06:44:09 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 57BFA41604E9;
	Mon,  2 Mar 2026 14:44:08 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v10 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Mon,  2 Mar 2026 14:44:07 +0800
Message-ID: <20260302064407.1914014-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260302064407.1914014-1-gary.yang@cixtech.com>
References: <20260302064407.1914014-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB86:EE_|TYZPR06MB7172:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2e2effe5-57a6-479d-d1b4-08de78271bb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	RmESRmRgJxv/YBS4f2KwMAzj3piwNja+e338MfmiAHfATets7cEZNY0aDooG9yIbhkYcmsk/w1zyoHD+4ZkwqAjSDnNkdg1bValI5p3LQqDUYtt9/u/HXlON9DHqHUZQwt3vsppJvpwnOdSYmSA52lUG4D1kQ5NGIpvq4PYJBKUh/B4isM5fhUoQ/PObJToIqHLsmpfZi86/rQatz8KkIrx80ITganfXG8U6VgGzJG9QqTjckrkawDyufotAjpTHYe47oq1dtdoiwoOH/PDTbY8wsSYhl//r4sUFfr/qZpHYLGB15CkFggzUSXp3Tb+hXMaoAJ1Y/0AsXwnjMd7VXcFOzoRN6wXNXwJkpQeTzoqG20wZ3z+4OHNNEIBId7i9gqTIDZ5L/TYHgMKfcFAFXSiWmr+j9AZVJ1jTX+rYYqAyU2VutZW+Yw6g+pxPve1VkN3tsqambXqDjpqSllheTizheuMmFay7InZ2DmmUbqHc/xP24dfuZFLcwBgks91veRe09dX9L00Zq1bb01+aBro0kysDO9ZSgPWaK7xjZidW+bU2R9NRXbtEre1q2rp3d9BzgOPECSuGt8EQOHaEc+axbb9/s5nhZHnWAiw5DWF3P+/DYdO/A3E/7aGU94E4zlMrg6XeRAgbM2rrlNRS5UgaFRnQXK4m5yfK/BxMIjbg5N9FoBdpdyGj2ZF8WzIhcPjhpMZoUb1gLdVupFM4LgumHP80zNGRxxFz61ShfoasPX2HfoTZ5CVpygeEtTX/BJtR4Vyq/5yfRKvD0jgyaNEnyeVY3Zj3H0+RKSrahWj8F3cUi4rGBz8L1z8W6mao
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	POgeq6+u+oWYBi7cT9kY80orGLLgF9aVk8k9RZTejedp7N1M1IQza6uHm7d+G664pjrGBFJBERw7vN95Kj2xHhLvDu6DoAtpndqVjC9//cNhVrbdU1TrF7XC3f7XGP3COEZEjIZ0KVHl9U5kzUl16HRbwXgRC64p0zI3uQyOnQca7rW4VbvCgVXFQvfKhRIgtuf9YMNK7bOOuyeAGn6Oc2laFwJECe0UkoZw39uECgskgfMIarOehRKdIzOU2LgQSKYpxb5uTF63bdqd970Ta1pVfcWutaQyJzCdWnc9A23sZW6J7XR+WlOuyWutAPcWojwzwXf/i1GtPhG9zCnUcQjFUVOOrUd5Oq/Fp0IUXsRFQqfgCko984PVKOwQDAgG8ar6+iFr7DPntLmz3rP3vaL0OwR29dYO/p/Y6Ysb43VJ/3mVJtIRfj2IOzwauwsz
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 06:44:09.3288
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2effe5-57a6-479d-d1b4-08de78271bb9
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB86.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB7172
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269806-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	DBL_PROHIBIT(0.00)[0.244.36.0:email];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.62.143.160:email,0.63.122.0:email,0.63.161.16:email,0.244.63.88:email]
X-Rspamd-Queue-Id: CE0251D3876
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..a28b877cced2 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,12 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +574,12 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


