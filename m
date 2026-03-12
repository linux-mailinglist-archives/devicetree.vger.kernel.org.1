Return-Path: <devicetree+bounces-274542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K7kAF6msmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:41:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FBF271241
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:41:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11F903125A2F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C802391851;
	Thu, 12 Mar 2026 11:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Q1sOxCM9"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010071.outbound.protection.outlook.com [52.101.85.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F313A1683;
	Thu, 12 Mar 2026 11:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315299; cv=fail; b=WVq1djkLUTVGvBnjeuWRzov4I1khgnpVf1McynrjxRTLh1STwcKH4p0PY9DDqUuOqBs3bhvmUt4WMYqnxqhMHOODb+Tfw5HuHTtIAmXBH6PyUteI3597/Q85Nsrvkf64dAEI5yrZtRW2SyjOQkzfUBeRtv+OnwiR8/GQ7X444zQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315299; c=relaxed/simple;
	bh=ctHMKcE5ODdUwJsiIOCVRhr5xKqkejRU3ckHkctEUDY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ae3RbdG9lxzGEbdtTcZtms67qrtMFWTaSYU7gHgYYT5HwbXWhpiH/XQlXWqo1fAzP5Msh1p2KIXC/fVBp4xW4Igl7cys9tO6ATsZbsb1CDOmfu1muEslbK7Qrou4ZxLqPmYCM/4DDk6yhiA556njB1jLnQRvuKd17g+n6prZ4fU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Q1sOxCM9; arc=fail smtp.client-ip=52.101.85.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q69tTpHMa3mzwAxxChGhcwSoNVJfUR1n5omTthVyMh+blUgDm/KkeMkiKGwkRcZ5N/wMzbTpn/g736SjVrjJxgyb5Opq/yIqC0rbk4ldW/oSzIyQkxB4zjsta0kjF8qysaOYaooMaP9AOwM5Z718v4USSD9OqAAFnfs/ccbLHUYoo5nYvkkQfXJejUdQidrKm66EXfyrwttwLi6C3uIfzMA9rho6K2Z0dwz5ZULdOnF7kz7rq2ldN/N1ZvyDxN+R5nzUFnojUmboqqhnfSVH+luMG+YIPzky+KLqxF9Gm2F46c85F4IOjqZu1VOUzaPDT+sKjRMYexVAH6PD+ua8+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZnzMaRvVNqaBIklhagp6qjC0YM8PR/cvI2xXdNqbOvw=;
 b=JHJTezAbU8+WnSntlaEdu2yQTkZMlP2SRcKXW0gU0jARa0AyU6RxS1vh+HpwPLGiKd5Gv0Xa+SbeU133Y1DU76ZB/I75MW8AS5h3AlDhJbBK13UyDh1AX2dJreCDnITUxTyAP50PRLcVywgZzohNxEVdGsi7iNKUuHv8sZqMipTRRW7r85p4MkSPwtgAI5rdnUXBfe2t0G3hAA6hF/HBaSC3MrKVRJYqsUxYCN+3LIKin3NKOyBM/+bRvjdR4LbZtP8nkupGuNi7hRea5Tv7CI9wIe3+hGqLrr4iifdmYBn3p3f3WZiK8ghYtwMnCSO5V+Zc+XT/vbPf9ZpsahmaZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZnzMaRvVNqaBIklhagp6qjC0YM8PR/cvI2xXdNqbOvw=;
 b=Q1sOxCM9cupEOHO4in2drwXeR6mOv3CATCH3LoKehHuyAmIfjyvAaEU6YzmGWk8jTq2KBG/OG93ZKfpi0lPuXfB51cHLlMzlv7iUda9TuvW68VbyDByqtZx2vJgrGy3hsLjVwCvYZgvpnmlaPXgBdWgk2pLvZLAMI/Bz/UGE2HI=
Received: from BL1P223CA0001.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::6)
 by PH7PR10MB5879.namprd10.prod.outlook.com (2603:10b6:510:130::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Thu, 12 Mar
 2026 11:34:52 +0000
Received: from BL02EPF0001A104.namprd05.prod.outlook.com
 (2603:10b6:208:2c4:cafe::b7) by BL1P223CA0001.outlook.office365.com
 (2603:10b6:208:2c4::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Thu,
 12 Mar 2026 11:34:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF0001A104.mail.protection.outlook.com (10.167.241.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Thu, 12 Mar 2026 11:34:52 +0000
Received: from DLEE206.ent.ti.com (157.170.170.90) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Mar
 2026 06:34:51 -0500
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Mar
 2026 06:34:51 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Mar 2026 06:34:51 -0500
Received: from prasanth-server.dhcp.ti.com (prasanth-server.dhcp.ti.com [10.24.53.104])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62CBYmV62227538;
	Thu, 12 Mar 2026 06:34:48 -0500
From: Prasanth Babu Mantena <p-mantena@ti.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j7: Reserve memory for LPM meta data
Date: Thu, 12 Mar 2026 17:04:46 +0530
Message-ID: <20260312113446.1857592-1-p-mantena@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A104:EE_|PH7PR10MB5879:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d2b4741-c0ac-427d-f7a3-08de802b608f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|1800799024|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	LTUxQ7zBKvLRv7OzOXigdox3fvjUNCiDA7uqiktdm8+IapwV5+VnNSm8MWVaDRE65up2+ZTMcC3To0G56eGlTopSBwpYBUPqpB2TKd0fmx1XZ4fpDH8odFp4qQKOhgN/C2KWYaazZddp+KDqXM+5VjJ2ktmTRVpMIls1y0eC7+n4aud42wRkMvtk4noGsmj9OVGndw0z1I4lTro6DjNkcCf6qY7i6fXPdQ9eRxbIj0rULUQO+e+EeaShU+mZYRMenBoQDweHnxvU/hsjsGzWTZ2UGQwqvPr/mYj8nt0sNCjm3BiFPQsesD1jgBlbh0ofFb/QJUcNHMd2ZRagQwNf5dga1MmhC0aKX1SMqmXL4CcyDO/SITcx0yeyFEQmoCORhaUD5ueoYlS2wElVqQgMl3qRHBtEUxcG2A0OZ/JjaLKUWSwRszJG+j3hlin4ib4xGqtpjDCBLzE+8C7qSpqghEncEU/LRRA658HxAc3lEdY+NoKJDlQg8NSaPHBrXkdG0prarCMTBBHeZIXSDLyioHHNxlWHg1t6ZzRkOXOLmi+dvr99M84wzzw++YoSTyfW0F0JxQbsB5rUZC4XdysRN+grPncMt5DBRW7c+36SjDWpNSJ2cplf4+qpxKW6y1/iXFCqZTozS+lAohYbVqrZTWb2q2xzTWhqrYD2FLA6JmfSSAaJva7fc0Bj6/ZKkXNJDv26PPmL98wDgMj/RolUK0cY1ME/jET/2IphB98s/WZ7K5qaw//88RhRTLNKixzio4t4Xxh4LukLScbqxY3/9A==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(1800799024)(376014)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	nX1PnN35Aray2Wn4GXcb7o/NBaLb/gNeSNkb+2DY3dIC6zeJUzYYPdP8TGJkqKrWfjn2aS2Tt9Vqt933JJgtuI7ueJY8Tmd4591LfItvqy9Cs2vlvdlXGaFffW7MwJ7KmvkTrAL76Vy11L/Pk3MCotNEDLocxsZt6T8Lox4+AGTfLgM58CfOlMdUMYkYZifUpCadYn0WWG2kzQvwUJVDHUvSWBQ1frM0kOHwNYR9ZXmLVmjjqhIMGgJ/CbaAldlvY9MbGKu704AsQiX4YSC8AaJH7xZSVN5dtJiDQJpj4by3DIxLVR2uC0PsSjvvvy+XSPnPeqbLAZE7tfms5xStbq/3IjT3lpT7bD+fCd9B7kEr9fhWNFvNTVL0bDrE3RDrFrhauHAxeOy8zeQBPgODQGa5eYVLsBOUNIqpc5EMP1RMThoRJiG6ywKTgXUPKwTi
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 11:34:52.4011
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2b4741-c0ac-427d-f7a3-08de802b608f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A104.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5879
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-274542-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ab000000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:email,ti.com:mid,a0100000:email,a4800000:email,a7000000:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p-mantena@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 74FBF271241
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For TI SOCs J7200, J784S4, J722S, which support low power modes,
A chunk of memory is reserved for LPM meta data, which is needed
for saving ATF context and the certificate information of ATF and
OPTEE and DM image. This LPM metadata area is firewalled to be
accessed only by TIFS.

Signed-off-by: Prasanth Babu Mantena <p-mantena@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi             | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j722s-evm.dts                 | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi | 6 ++++++
 3 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 5a8c2e707fde..26c2489c3b91 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -40,6 +40,12 @@ mcu_r5fss0_core0_memory_region: memory@a0100000 {
 			reg = <0x00 0xa0100000 0x00 0xf00000>;
 			no-map;
 		};
+
+		lpm_memory_region: lpm-memories@a4800000 {
+			reg = <0x00 0xa4800000 0x00 0x00300000>;
+			no-map;
+			bootph-all;
+		};
 	};
 
 	mux0: mux-controller-0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
index e66330c71593..f2ca0354a917 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
@@ -63,6 +63,12 @@ wkup_r5fss0_core0_memory_region: memory@a0100000 {
 			reg = <0x00 0xa0100000 0x00 0xf00000>;
 			no-map;
 		};
+
+		lpm_memory_region: lpm-memory@a7000000 {
+			reg = <0x00 0xa7000000 0x00 0x00300000>;
+			no-map;
+			bootph-all;
+		};
 	};
 
 	vmain_pd: regulator-0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
index ff3a85cbc524..3e79677792a5 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
@@ -46,6 +46,12 @@ mcu_r5fss0_core0_memory_region: memory@a0100000 {
 			reg = <0x00 0xa0100000 0x00 0xf00000>;
 			no-map;
 		};
+
+		lpm_memory_region: lpm-memory@ab000000 {
+			reg = <0x00 0xab000000 0x00 0x00300000>;
+			no-map;
+			bootph-all;
+		};
 	};
 
 	evm_12v0: regulator-evm12v0 {
-- 
2.34.1


