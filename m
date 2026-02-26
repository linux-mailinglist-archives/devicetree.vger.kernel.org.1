Return-Path: <devicetree+bounces-268796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE/7NNA0oGkqgwQAu9opvQ
	(envelope-from <devicetree+bounces-268796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:56:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DE11A56A5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3611B3006D7B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CBB437B3F4;
	Thu, 26 Feb 2026 11:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="jLFAbSDd"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010005.outbound.protection.outlook.com [52.101.61.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774D37AA7B;
	Thu, 26 Feb 2026 11:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772106903; cv=fail; b=qVww7/yltrmQf4PI/1geYdHqWsk1I/yGnkzkwAYlMA6C/TBHvuFpbzSH3UkspVAkgF8zzeYn0ihYtTBJ4ofyfSJt6S3Q0MsPNnpVEzF2MC+Tdh6eUX9BChSsd19oMOxkvy+yRFce1lpcNzi/W5XYoV5GkUr8d0sEkLjCHjrwz5Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772106903; c=relaxed/simple;
	bh=tOb/pFgOryjjHIm1aGRKe+41GsuqX9TLpN2J1GZcwkw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TdaK7juZUJwoGajWsy77YIN31JJqyuWwWVaKBwkd9FAPFTDY2WXRRlM0neGDDz09zE1a/nhEPGeBQ+shcwIzH3qPuRZvSBH4Mv2PBJBz/jar/hkf4+tkfb3BRi+VL1TlpuFSfpUsXuODCLTfPrx8kMGCw01KDibm2sLXGKuDySo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=jLFAbSDd; arc=fail smtp.client-ip=52.101.61.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D2E3MM5/vsYIJnEA6lK4S0lcaweSiZYhnn7l7Xj8VJ4tJbU2amKNB4rPNDDOjZI8RMLmewk4aViBlbzuHS18j4RsNQuJ74DgELky6lHtb21uptQeu99gb+moV3kyuMdM+tpTQiMcCAI5G9CBce6wQbR5zyDc9gRgSuwIEQOLIpk3kf+1XuRHRi1Nkl1CMB5i8nHjRUVDMI4/hjs35wFxF1/3owOmSogSdQu3XoP2dtcAYZw85T0JdhLVHymc/DeBvmicPgv55TQLLAVELvQvs/iQ8s3U0lkEpKdYjEU/dDn4fJjxZPnFTw/qiEqWNbtpfYZiKdXQr+jMDeaMpv1XdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uZjb/4NLya4GNsZdy7/SGQi5DYL/MR3PMkkDYzjdXvI=;
 b=QImw8yCjy6I3UmNmduqQSEDLk8zko1lDcaZzoLHlPIp7RvC564T2vafrChN1zEY1ZBob81ejxDip/5k4n/UIqcnISlPFv3ZQlfKpWbxyWpz5jFo8d0KhZFdAP4OG2EznNgHLkY5rqUDff3iuqV196GKJ/YBmsHoKjtQLa85vw01GwFXI+wEq8sfuCUR0fFTEle43v2ZPhjsWcPMamQNkekgw3J5/b+7LiJ8wxmtW88YY9hoMMJ9lMcW2Z8bEB2BH6mVXx2CboeiRwJGIVXEWk59rojUjmr356QSEgjZXcjbF9eUOtWjEN+0IGf/tUs30B0RAFEG76jjvOkOIAyRAQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uZjb/4NLya4GNsZdy7/SGQi5DYL/MR3PMkkDYzjdXvI=;
 b=jLFAbSDdrbhsq9B/YvTNGE+fvNqrL3doWD6OyinqdVthJ/CyMNetkxjN8UpVSKN8IKrOI0+tv3dkIidi+5o+CI5IwvaVMH99GSPJn6T56uQOhmLM+r/uVKZpl9JMiP53xJzTjX9HUBmrdSHgEnOGFgf8VQdX++bNSV5zmBdpDbE=
Received: from SJ0PR05CA0159.namprd05.prod.outlook.com (2603:10b6:a03:339::14)
 by SJ1PR10MB5956.namprd10.prod.outlook.com (2603:10b6:a03:489::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 11:54:59 +0000
Received: from SJ5PEPF00000204.namprd05.prod.outlook.com
 (2603:10b6:a03:339:cafe::d8) by SJ0PR05CA0159.outlook.office365.com
 (2603:10b6:a03:339::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.22 via Frontend Transport; Thu,
 26 Feb 2026 11:54:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ5PEPF00000204.mail.protection.outlook.com (10.167.244.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Thu, 26 Feb 2026 11:54:58 +0000
Received: from DLEE213.ent.ti.com (157.170.170.116) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 05:54:58 -0600
Received: from DLEE201.ent.ti.com (157.170.170.76) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 05:54:58 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 26 Feb 2026 05:54:58 -0600
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61QBswQH1823339;
	Thu, 26 Feb 2026 05:54:58 -0600
Received: from localhost (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 61QBsuro003841;
	Thu, 26 Feb 2026 05:54:57 -0600
From: Meghana Malladi <m-malladi@ti.com>
To: <vigneshr@ti.com>, <nm@ti.com>
CC: <conor+dt@kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>,
	<kristo@kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<srk@ti.com>, Roger Quadros <rogerq@kernel.org>, <danishanwar@ti.com>,
	<m-malladi@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am642-evm: Add ICSSG0 overlay for dual EMAC support
Date: Thu, 26 Feb 2026 17:24:54 +0530
Message-ID: <20260226115454.1730618-1-m-malladi@ti.com>
X-Mailer: git-send-email 2.43.0
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF00000204:EE_|SJ1PR10MB5956:EE_
X-MS-Office365-Filtering-Correlation-Id: d7273c62-f7fe-4418-1fef-08de752dddec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|34020700016|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	AMjXTYWY8Drnhz/XuGESxEwxEzwpyAdWsFZqg2mIj9pmTEsH7btcs6ZngBJ5qiYyepUZbBGAFwwOlwVbinXkpMtZbZ8CZaM/CE7f71qJWFhxORT/Eok8L6HPkykrWaGVV6kGBVkAk7XOcFTcvGPSKeguzhh4iavaKmtBxJ0Rz/7a5Ze4LgYdf6G8FsR42c+d1GIAc7Ldoj75Tks6Io642Fe9e4zzqS2pTffU8/e+k3/5z7SiyvFkxcGYy1m1njaBDYoiME0oHiYWYT/cV02Js/JCA2l0JQ4MddDgo+vcoQK/jWdD9n/j5zsFlPiAdpOZ2GRt9Vcvu530HOzpXYHB0EMyE+q7DGeV5u/7BBHgjKq5X51E//yMAPaF5huVLq7iVpbmQrxEPZqHeYeV9WXMpxOb6vu4FKhaATOyknIXqGPsnYZYiBlHJibyF9BU1cMifTwJK39Pxz+UYl+JN/bLeFCCSVozoCVIHcS5COWFF2yeRGIVlJNN1FW55qMHgP1Przl3Nw3un6aFlTk/MWd2ZA/MdztGAo8vkIm5fUKQ+nBF40qIdzNiJiJsP3AIauPHNDt8bJNqpBuiaE0aSX+feU45gtfciWX71eK3Vwc330T2NeWR3fVj0WzJfwOEH1iA9nbJ5TPh4yl+n0luX5Fz21q9rfaL/Oi8Fcj7UvSlhVMKhZouKnIqdCCES+Mi6b5J74kI+/Bh5B24iUqJ0DStJVMBCWlEt/mOa/WrtX04JLq5UwoPm0Ztpzdj2o8Dh7tbwU2pe2hVpe0q5beWrKeE5kAunabJb5z78E/WOhBuTuw=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(34020700016)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	F18mZOgK0BVA40yrn6ChIUmKU8MsqX9wW/saUlvYb4/GlIX78gONDt12gUoKMAwXK7rBjVR1nm3niDX3mD4YbC0P09/c5JekBz2UA63ubBAtg87rFadEBBcMVzKMv57seaSFxYjgx3qNrbpu3d+OJefuToBdu4/WDlW7bd0KBMyZrXuVWMxn+/UhNxhRHdvyav773ApR7Z1pB3x2adKFNYlrlbrBFpGubRe3RvcyNI5838qKWHDZExh2N4BQtRFmzN2PFGMa+HWgyR1cRqltYZDsFJ+fhX0ssvWgG5AM6i2nwziEVRiHmr1FgYSxOj5duYdqDNBKJ2qjs3gUOnX9f+qbej5QgJgFTkcZYPIs0+5T7xAgcpGQDTnzaGBCuMammlTHa/bpwDqVNefNPYlLGulXJUeIJRFyL7XfraVXtalpGeC5+S0SU7QhU3uNqsZW
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 11:54:58.9135
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7273c62-f7fe-4418-1fef-08de752dddec
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF00000204.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR10MB5956
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-268796-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.3:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: E8DE11A56A5
X-Rspamd-Action: no action

Add device tree overlay to enable ICSSG0 dual EMAC support on AM642 EVM.
This overlay enables all four ICSSG Ethernet interfaces (ICSSG0 port0/1
and ICSSG1 port0/1) in dual EMAC mode.

Signed-off-by: Meghana Malladi <m-malladi@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 .../boot/dts/ti/k3-am642-evm-icssg0-exp.dtso  | 265 ++++++++++++++++++
 2 files changed, 269 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-icssg0-exp.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index ba01a929e06f..458b9d523069 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -62,6 +62,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-hdmi-audio.dtbo
 
 # Boards with AM64x SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-icssg0-exp.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-icssg1-dualemac.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-icssg1-dualemac-mii.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-pcie0-ep.dtbo
@@ -218,6 +219,8 @@ k3-am62p5-sk-csi2-ov5640-dtbs := k3-am62p5-sk.dtb \
 	k3-am62x-sk-csi2-ov5640.dtbo
 k3-am62p5-sk-csi2-tevi-ov5640-dtbs := k3-am62p5-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
+k3-am642-evm-icssg0-exp-dtbs := \
+	k3-am642-evm.dtb k3-am642-evm-icssg0-exp.dtbo
 k3-am642-evm-icssg1-dualemac-dtbs := \
 	k3-am642-evm.dtb k3-am642-evm-icssg1-dualemac.dtbo
 k3-am642-evm-icssg1-dualemac-mii-dtbs := \
@@ -306,6 +309,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am62p5-sk-csi2-imx219.dtb \
 	k3-am62p5-sk-csi2-ov5640.dtb \
 	k3-am62p5-sk-csi2-tevi-ov5640.dtb \
+	k3-am642-evm-icssg0-exp.dtb \
 	k3-am642-evm-icssg1-dualemac.dtb \
 	k3-am642-evm-icssg1-dualemac-mii.dtb \
 	k3-am642-evm-pcie0-ep.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm-icssg0-exp.dtso b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg0-exp.dtso
new file mode 100644
index 000000000000..5a8462245704
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm-icssg0-exp.dtso
@@ -0,0 +1,265 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/**
+ * DT overlay for enabling ICSSG0 dual EMAC on AM642 EVM with
+ * DP83TG720-IND-SPE-EVM daughter card
+ *
+ * AM642 EVM Product link: https://www.ti.com/tool/TMDS64EVM
+ * DP83TG720 daughter card link: https://www.ti.com/tool/DP83TG720-IND-SPE-EVM
+ *
+ * Copyright (C) 2020-2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include "k3-pinctrl.h"
+
+&{/aliases} {
+	ethernet0 = &icssg0_emac0;
+	ethernet1 = &icssg0_emac1;
+	ethernet2 = "/icssg1-eth/ethernet-ports/port@0";
+	ethernet3 = "/icssg1-eth/ethernet-ports/port@1";
+};
+
+&{/} {
+	mdio-mux-2 {
+		compatible = "mdio-mux-multiplexer";
+		mux-controls = <&mdio_mux>;
+		mdio-parent-bus = <&icssg1_mdio>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mdio@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			icssg1_phy2: ethernet-phy@3 {
+				reg = <3>;
+				tx-internal-delay-ps = <250>;
+				rx-internal-delay-ps = <2000>;
+			};
+		};
+	};
+
+	icssg0_eth: icssg0-eth {
+		compatible = "ti,am642-icssg-prueth";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pru_icssg0_rgmii1_pins_default>, <&pru_icssg0_rgmii2_pins_default>;
+
+		sram = <&oc_sram>;
+		ti,prus = <&pru0_0>, <&rtu0_0>, <&tx_pru0_0>, <&pru0_1>, <&rtu0_1>, <&tx_pru0_1>;
+		firmware-name = "ti-pruss/am64x-sr2-pru0-prueth-fw.elf",
+				"ti-pruss/am64x-sr2-rtu0-prueth-fw.elf",
+				"ti-pruss/am64x-sr2-txpru0-prueth-fw.elf",
+				"ti-pruss/am64x-sr2-pru1-prueth-fw.elf",
+				"ti-pruss/am64x-sr2-rtu1-prueth-fw.elf",
+				"ti-pruss/am64x-sr2-txpru1-prueth-fw.elf";
+
+		ti,pruss-gp-mux-sel = <2>,	/* MII mode */
+				      <2>,
+				      <2>,
+				      <2>,	/* MII mode */
+				      <2>,
+				      <2>;
+
+		ti,mii-g-rt = <&icssg0_mii_g_rt>;
+		ti,mii-rt = <&icssg0_mii_rt>;
+		ti,pa-stats = <&icssg0_pa_stats>;
+		ti,iep = <&icssg0_iep0>,  <&icssg0_iep1>;
+
+		interrupt-parent = <&icssg0_intc>;
+		interrupts = <24 0 2>, <25 1 3>;
+		interrupt-names = "tx_ts0", "tx_ts1";
+
+		dmas = <&main_pktdma 0xc100 0>, /* egress slice 0 */
+		       <&main_pktdma 0xc101 0>, /* egress slice 0 */
+		       <&main_pktdma 0xc102 0>, /* egress slice 0 */
+		       <&main_pktdma 0xc103 0>, /* egress slice 0 */
+		       <&main_pktdma 0xc104 0>, /* egress slice 1 */
+		       <&main_pktdma 0xc105 0>, /* egress slice 1 */
+		       <&main_pktdma 0xc106 0>, /* egress slice 1 */
+		       <&main_pktdma 0xc107 0>, /* egress slice 1 */
+		       <&main_pktdma 0x4100 0>, /* ingress slice 0 */
+		       <&main_pktdma 0x4101 0>, /* ingress slice 1 */
+		       <&main_pktdma 0x4102 0>, /* mgmnt rsp slice 0 */
+		       <&main_pktdma 0x4103 0>; /* mgmnt rsp slice 1 */
+		dma-names = "tx0-0", "tx0-1", "tx0-2", "tx0-3",
+			    "tx1-0", "tx1-1", "tx1-2", "tx1-3",
+			    "rx0", "rx1",
+			    "rxmgm0", "rxmgm1";
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			icssg0_emac0: port@0 {
+				reg = <0>;
+				phy-handle = <&icssg0_phy00>;
+				phy-mode = "rgmii-id";
+				syscon-rgmii-delay = <&main_conf 0x4100>;
+				/* Filled in by bootloader */
+				local-mac-address = [00 00 00 00 00 00];
+			};
+
+			icssg0_emac1: port@1 {
+				reg = <1>;
+				phy-handle = <&icssg0_phy01>;
+				phy-mode = "rgmii-id";
+				syscon-rgmii-delay = <&main_conf 0x4104>;
+				/* Filled in by bootloader */
+				local-mac-address = [00 00 00 00 00 00];
+			};
+		};
+	};
+};
+
+&main_pmx0 {
+	pru_icssg0_mdio_pins_default: pru-icssg0-mdio-pins-default {
+		pinctrl-single,pins = <
+			/* (P3) PRG0_MDIO0_MDC */
+			AM64X_IOPAD(0x0204, PIN_OUTPUT, 0)
+			/* (P2) PRG0_MDIO0_MDIO */
+			AM64X_IOPAD(0x0200, PIN_INPUT, 0)
+			/* (P16) GPIO0_32 - GPMC0_ADVn_ALE - GPIO_ETH0/1_RESETn# */
+			AM64X_IOPAD(0x0084, PIN_OUTPUT, 7)
+		>;
+	};
+
+	pru_icssg0_rgmii1_pins_default: pru-icssg0-rgmii1-pins-default {
+		pinctrl-single,pins = <
+			/* (module-sitara) */
+			/* (a14-y1) PRG0_PRU0_GPO0.PRG0_RGMII1_RD0 */
+			AM64X_IOPAD(0x0160, PIN_INPUT, 2)
+			/* (b14-r4) PRG0_PRU0_GPO1.PRG0_RGMII1_RD1 */
+			AM64X_IOPAD(0x0164, PIN_INPUT, 2)
+			/* (d14-u2) PRG0_PRU0_GPO2.PRG0_RGMII1_RD2 */
+			AM64X_IOPAD(0x0168, PIN_INPUT, 2)
+			/* (e14-v2) PRG0_PRU0_GPO3.PRG0_RGMII1_RD3 */
+			AM64X_IOPAD(0x016c, PIN_INPUT, 2)
+			/* (e13-t3) PRG0_PRU0_GPO6.PRG0_RGMII1_RXC */
+			AM64X_IOPAD(0x0178, PIN_INPUT, 2)
+			/* (b13-aa2) PRG0_PRU0_GPO4.PRG0_RGMII1_RX_CTL */
+			AM64X_IOPAD(0x0170, PIN_INPUT, 2)
+
+			/* (a11-y3) PRG0_PRU0_GPO11.PRG0_RGMII1_TD0 */
+			AM64X_IOPAD(0x018c, PIN_OUTPUT, 2)
+			/* (c11-aa3) PRG0_PRU0_GPO12.PRG0_RGMII1_TD1 */
+			AM64X_IOPAD(0x0190, PIN_OUTPUT, 2)
+			/* (d11-r6) PRG0_PRU0_GPO13.PRG0_RGMII1_TD2 */
+			AM64X_IOPAD(0x0194, PIN_OUTPUT, 2)
+			/* (b10-v4) PRG0_PRU0_GPO14.PRG0_RGMII1_TD3 */
+			AM64X_IOPAD(0x0198, PIN_OUTPUT, 2)
+			/* (e10-u4) PRG0_PRU0_GPO16.PRG0_RGMII1_TXC */
+			AM64X_IOPAD(0x01a0, PIN_OUTPUT, 2)
+			/* (c10-t5) PRG0_PRU0_GPO15.PRG0_RGMII1_TX_CTL */
+			AM64X_IOPAD(0x019c, PIN_OUTPUT, 2)
+		>;
+	};
+
+	pru_icssg0_rgmii2_pins_default: pru-icssg0-rgmii2-pins-default {
+		pinctrl-single,pins = <
+			/* (e9-y2) PRG0_PRU1_GPO0.PRG0_RGMII2_RD0 */
+			AM64X_IOPAD(0x01b0, PIN_INPUT, 2)
+			/* (a8-w2) PRG0_PRU1_GPO1.PRG0_RGMII2_RD1 */
+			AM64X_IOPAD(0x01b4, PIN_INPUT, 2)
+			/* (c8-v3) PRG0_PRU1_GPO2.PRG0_RGMII2_RD2 */
+			AM64X_IOPAD(0x01b8, PIN_INPUT, 2)
+			/* (d8-t4) PRG0_PRU1_GPO3.PRG0_RGMII2_RD3 */
+			AM64X_IOPAD(0x01bc, PIN_INPUT, 2)
+			/* (e7-r5) PRG0_PRU1_GPO6.PRG0_RGMII2_RXC */
+			AM64X_IOPAD(0x01c8, PIN_INPUT, 2)
+			/* (b7-w3) PRG0_PRU1_GPO4.PRG0_RGMII2_RX_CTL */
+			AM64X_IOPAD(0x01c0, PIN_INPUT, 2)
+
+			/* (a5-w4) PRG0_PRU1_GPO11.PRG0_RGMII2_TD0 */
+			AM64X_IOPAD(0x01dc, PIN_OUTPUT, 2)
+			/* (c5-y4) PRG0_PRU1_GPO12.PRG0_RGMII2_TD1 */
+			AM64X_IOPAD(0x01e0, PIN_OUTPUT, 2)
+			/* (d5-t6) PRG0_PRU1_GPO13.PRG0_RGMII2_TD2 */
+			AM64X_IOPAD(0x01e4, PIN_OUTPUT, 2)
+			/* (b4-u6) PRG0_PRU1_GPO14.PRG0_RGMII2_TD3 */
+			AM64X_IOPAD(0x01e8, PIN_OUTPUT, 2)
+			/* (a3-aa4) PRG0_PRU1_GPO16.PRG0_RGMII2_TXC */
+			AM64X_IOPAD(0x01f0, PIN_OUTPUT, 2)
+			/* (c4-u5) PRG0_PRU1_GPO15.PRG0_RGMII2_TX_CTL */
+			AM64X_IOPAD(0x01ec, PIN_OUTPUT, 2)
+		>;
+	};
+
+	icssg1_rgmii2_pins_default: icssg1-rgmii2-default-pins {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0108, PIN_INPUT, 2) /* (W11) PRG1_PRU1_GPO0.RGMII2_RD0 */
+			AM64X_IOPAD(0x010c, PIN_INPUT, 2) /* (V11) PRG1_PRU1_GPO1.RGMII2_RD1 */
+			AM64X_IOPAD(0x0110, PIN_INPUT, 2) /* (AA12) PRG1_PRU1_GPO2.RGMII2_RD2 */
+			AM64X_IOPAD(0x0114, PIN_INPUT, 2) /* (Y12) PRG1_PRU1_GPO3.RGMII2_RD3 */
+			AM64X_IOPAD(0x0120, PIN_INPUT, 2) /* (U11) PRG1_PRU1_GPO6.RGMII2_RXC */
+			AM64X_IOPAD(0x0118, PIN_INPUT, 2) /* (W12) PRG1_PRU1_GPO4.RGMII2_RX_CTL */
+			AM64X_IOPAD(0x0134, PIN_OUTPUT, 2) /* (AA10) PRG1_PRU1_GPO11.RGMII2_TD0 */
+			AM64X_IOPAD(0x0138, PIN_OUTPUT, 2) /* (V10) PRG1_PRU1_GPO12.RGMII2_TD1 */
+			AM64X_IOPAD(0x013c, PIN_OUTPUT, 2) /* (U10) PRG1_PRU1_GPO13.RGMII2_TD2 */
+			AM64X_IOPAD(0x0140, PIN_OUTPUT, 2) /* (AA11) PRG1_PRU1_GPO14.RGMII2_TD3 */
+			AM64X_IOPAD(0x0148, PIN_OUTPUT, 2) /* (Y10) PRG1_PRU1_GPO16.RGMII2_TXC */
+			AM64X_IOPAD(0x0144, PIN_OUTPUT, 2) /* (Y11) PRG1_PRU1_GPO15.RGMII2_TX_CTL */
+		>;
+	};
+
+	icssg0_iep0_pins_default: icssg0-iep0-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x01ac, PIN_OUTPUT, 2) /* (W1) PRG0_PRU0_GPO19.PRG0_IEP0_EDC_SYNC_OUT0 */
+		>;
+	};
+};
+
+&cpsw3g {
+	pinctrl-0 = <&rgmii1_pins_default>;
+};
+
+&cpsw_port2 {
+	status = "disabled";
+};
+
+&mdio_mux_1 {
+	status = "disabled";
+};
+
+&icssg0_mdio {
+	pinctrl-names = "default";
+	status = "okay";
+	pinctrl-0 = <&pru_icssg0_mdio_pins_default>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	icssg0_phy00: ethernet-phy@0 {
+		reg = <0x0>;
+	};
+
+	icssg0_phy01: ethernet-phy@1 {
+		reg = <0xA>;
+	};
+};
+
+&icssg0_iep0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&icssg0_iep0_pins_default>;
+};
+
+&icssg1_eth {
+	pinctrl-0 = <&icssg1_rgmii1_pins_default>, <&icssg1_rgmii2_pins_default>;
+};
+
+&icssg1_emac1 {
+	status = "okay";
+	phy-handle = <&icssg1_phy2>;
+	phy-mode = "rgmii-id";
+};
+
+&main_gpio0 {
+	phy-line-hog {
+		gpio-hog;
+		gpios = <32 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "phy-hog-line";
+	};
+};

base-commit: 4916f2e2f3fc9aef289fcd07949301e5c29094c2
-- 
2.43.0


