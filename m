Return-Path: <devicetree+bounces-158689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF8A67B53
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 18:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5210E3BFCD8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 17:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917AD212B13;
	Tue, 18 Mar 2025 17:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="YNeUwrWy"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2083.outbound.protection.outlook.com [40.107.92.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBE6211711;
	Tue, 18 Mar 2025 17:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.92.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742320090; cv=fail; b=ZXeCxett6UQS/V2cms9Y8ixb+QO7MMAkTeyRT7K7pahGOfeLqOamZhxN2J2/aBliHHqOEVev4FjlgOLdRiBvp89f6h3n4MLqrZxBEFgvbXP4G2/GROCfvuLwOs9Lw/jLlMwznf7aDPChCuaCnhNbH21kr7Sl4fTTAiftqDuHguQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742320090; c=relaxed/simple;
	bh=x/cOzQGOpTDCADkpxpKz4jzOV6jjMZY8+dw4BAS64CE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JAkaj5ILwye4xRv8ReRlbeB4/mugHuLS34HS7JIEcdIC7AgxHwpCuUpugvFnQeJ+UolpYApD+wGqHhaU+2cL+h6OKzCYTUFHra2h/hMSezIoajQcNpheAFciu6jgRVRkp4Qrae1P1aSXoxXzdZeR4IdSjnQQlpECl77HLDeH5zY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=YNeUwrWy; arc=fail smtp.client-ip=40.107.92.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r1Lsf0yG1eThYsoWkABp1qmG+6CQYu9vhbyvzsqu/36pXIpnBzNPq7m3HTdWCgUTzBXnAH0Xfg5wVLqgywi8lNHflNy7wF9rs0vo701S3kj7TPn7O7mLF3gERXcvFG3wSuL7CLeey9NBDYLkNl9/xdf8+bCK3zLKu2OzPyI7NIEndLKA1NJo0kvJXkLQlEeuxwDs3dk3LRQfUVym9I6AuWv7+v6g3eyO+AqLUltsJiSA2SkCxoryQ5Py8FFW+YWVy5my/dRMB7awlkNII9liIM+jqZfDWlXWMpAvvBEp6/hZEjOsqB4lMPP0uih+3CI38jGJdQs2T5s5DcRqJurt9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=37NlzDz3msuGFzCoxTI1eHa+YPNIQHQySlk29gX1M1s=;
 b=axmu5fVmPBxBzkxow/XKg9oxvmPBJy97P8yc7LVZs7DAv3ta9VefIlFkjQJDRXQpedtskOi44I9D/7DJUrIaGQY6RbjF5khVWkWXyAJ8Di1eKlYCKvLAisrzlMMN+G1y6m/Pwb6adDB26VwoSl79VizJjhFKGfLmfDnACWecVssWuHUV6kYta2aS22P+DdZsO0FkGf4Wf1BjAvEjqIR399su1Om85UBAkOi+hwm5d8rifSzmj34toSqCDfMcD9XBNPVwgymvk9mJSNPqtuipy9pjVtqChBnr4R2N3jckJDFiwbbeigZRjEAzlwmrDsFyf5nEcbYRoNALh+Bs3mYqSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37NlzDz3msuGFzCoxTI1eHa+YPNIQHQySlk29gX1M1s=;
 b=YNeUwrWy/mC/VntPmkVsGRPDywAeaKsfxofj0tubSgZ52hf5LJz8AoFcvxlXh98HoVusZL+Ty6LzAbNdiLb2kRhI3mtZpkN1DU01wGfQn8dvu7Mx4UDBQ2xS8gmo14laWGxaZEx9aYC4NkCL+9Vnqd89nw9aFD/ue7OAbJtuoL8=
Received: from MN2PR20CA0059.namprd20.prod.outlook.com (2603:10b6:208:235::28)
 by MN6PR12MB8490.namprd12.prod.outlook.com (2603:10b6:208:470::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 18 Mar
 2025 17:48:02 +0000
Received: from BL02EPF00021F6C.namprd02.prod.outlook.com
 (2603:10b6:208:235:cafe::4b) by MN2PR20CA0059.outlook.office365.com
 (2603:10b6:208:235::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.34 via Frontend Transport; Tue,
 18 Mar 2025 17:48:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BL02EPF00021F6C.mail.protection.outlook.com (10.167.249.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8534.20 via Frontend Transport; Tue, 18 Mar 2025 17:48:02 +0000
Received: from BMCDEV-TH5.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 18 Mar
 2025 12:48:01 -0500
From: Rajaganesh Rathinasabapathi <Rajaganesh.Rathinasabapathi@amd.com>
To: <devicetree@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
	<joel@jms.id.au>, <andrew@codeconstruct.com.au>
CC: <robh+dt@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <jothayot@amd.com>, "Rajaganesh
 Rathinasabapathi" <Rajaganesh.Rathinasabapathi@amd.com>, Supreeth Venkatesh
	<supreeth.venkatesh@amd.com>
Subject: [PATCH v4 2/2] ARM: dts: aspeed: Add Initial device tree for AMD Onyx Platform
Date: Tue, 18 Mar 2025 12:47:30 -0500
Message-ID: <20250318174730.1921983-2-Rajaganesh.Rathinasabapathi@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250318174730.1921983-1-Rajaganesh.Rathinasabapathi@amd.com>
References: <20250318174730.1921983-1-Rajaganesh.Rathinasabapathi@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6C:EE_|MN6PR12MB8490:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a8feb06-4269-495f-8a74-08dd664507f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|7416014|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?spO7f9Dmsxiy5NDjISZIJfNfTfYY4SJ1BSZNkHvbZGbtsQK7W1uyNZYARYSp?=
 =?us-ascii?Q?7Q3D4FdWkA/E79lqkdMW+6PJ9ZKLJLZrPTstGeGbx/75/4fbs3vBnIJ96+xe?=
 =?us-ascii?Q?k2HyIlDlgR7tKLMCcJ4B14YKDHqcDAsPgi0MUgj+qEd54N+P1XKMSanzVkQS?=
 =?us-ascii?Q?TPCUQx1SsSJd+yswA7429FHbhAVVwG+TLwInE2akzPn7yptv6IuRW+QdtLOo?=
 =?us-ascii?Q?XrSZOAnaJG5F+aJd+GfcEJbAXjx/j8DXNU6ILvSIXqFAzNktzypkKF3ICid0?=
 =?us-ascii?Q?CzIC9UISZ+ohRyk/FS2lEP4PwNgA+bc5BYMkOvuFsUaQhmmwsfb4kvj4Hnu1?=
 =?us-ascii?Q?8AenrhCYBDnw52Yf/xLRT5j+EswFv2nHRopb7VSmprnqQ3BYp3K+0v2uDF8D?=
 =?us-ascii?Q?JsFFNIpXX93HRA3F48Lpw1/OXlCeamuHgkUrUlnPRJRi455i4AkUfcThqNJ9?=
 =?us-ascii?Q?QrYnyPb4qMkSzFBr7z0eV7JrIqjksNs1m1wl1+KGYcWyP5MJQk9PsfVA91Ej?=
 =?us-ascii?Q?xqCxGyd3R/9pNSBLu8RjCUzA907FcyIGXSEOcNioZI1+1ML3vttkVA3I1YnC?=
 =?us-ascii?Q?jRXIlJ1E/W1gZmjpbSYW2e3kxsD1nMrKSThGHvkm15kytDUbYA2rq14zDFCA?=
 =?us-ascii?Q?7lpsdG+B1nrLdUncVnwJkOYCkXqB7vgWEk+lCvBPuIpoZgcSkbl7coQco2kW?=
 =?us-ascii?Q?ecbwlhLHii8IRAqiKTHHNodb1x9dnR50zHGfnH0O0pT+wYcl7oy0nA62HKE9?=
 =?us-ascii?Q?mVaHESiogXcsWtwWOD3ENzJGZw7ELWdbn3Rv97BzkMPQLPvMCbCGmLILEkM3?=
 =?us-ascii?Q?3tlDhRKIzJYL1qerwf696ZitD0J5ToEz28Y1s9u9lA2+R3ETgq0cVu96J95q?=
 =?us-ascii?Q?xloH+0irpc6XpxBiQQaDp7BAJeDPECm/OXW2AeUs2dc2cmhQzShkZ8EtUaLS?=
 =?us-ascii?Q?prRKNY1k3OIPz1heVRcXFB264wUY4zdc4lh/R3DdzXZxkQsZMRtI2PC5VUdf?=
 =?us-ascii?Q?C7iQe4Nn9zpWpFi8iD8FJuYJphaW0MJ3diKkZYPonUmBgrCaheE3IW+um8ey?=
 =?us-ascii?Q?zWfk/vOzGb2TRtaFcUPjf4rzr61+XkRG7ZAm4nAk26uYGUH4zsAnflW0Ls1C?=
 =?us-ascii?Q?8go+YIfF8WwKJNlCkJiJySns79B224T2KVTLMDXZi1wAEl8TWySHJK1yIWde?=
 =?us-ascii?Q?Ew8/CNTb6rGgMpuHwk/NYjsixO+SQfCkPs8ZmmwrPsjz+MDbh8Fu4POUJmVH?=
 =?us-ascii?Q?3I/pQ2VqEl/+nLlk1m+BQJVpS3RFVec1uk4SayVS8Gd9c5vlDlLgKh8NRHv+?=
 =?us-ascii?Q?r2myR5JQBTKTzSNDPFP/NA/CHCeed/YGJKDVC5Bu/BV6ZdliJVPUfx9O7iAD?=
 =?us-ascii?Q?P9/JsASk+GXd1t4YWQPF88o3TifXy84nAAWoSXh6MJquz351uZG1wAYim+kq?=
 =?us-ascii?Q?InD6pGbErjjxei/VuzlAZRjwl72UoJej6m7vtk25ri5Y7UX3w35EB8VqDCfl?=
 =?us-ascii?Q?xvTJyn/d5RVPM1s=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(7416014)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 17:48:02.8121
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a8feb06-4269-495f-8a74-08dd664507f2
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF00021F6C.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8490

Add initial device tree and makefile updates for
AMD Onyx platform.

AMD Onyx platform is an AMD customer reference board with an Aspeed
ast2600 BMC manufactured by AMD.
It describes I2C devices, UARTs, MAC, FMC, etc.
present on AMD Onyx platform.

Signed-off-by: Supreeth Venkatesh <supreeth.venkatesh@amd.com>
Signed-off-by: Rajaganesh Rathinasabapathi <Rajaganesh.Rathinasabapathi@amd.com>
---
Changes since v1:
* Incorporate review comments
* Update commit message
* Remove vmalloc and earlyprintk

Changes since v2:
* Address review comments
* Fix checkpatch warnings
* Remove bootargs

Changes since v3:
* Fix stdout-path
* Change commit summary
---
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../boot/dts/aspeed/aspeed-bmc-amd-onyx.dts   | 102 ++++++++++++++++++
 2 files changed, 103 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-amd-onyx.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 2e5f4833a073..1e6a130377b8 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2600-evb.dtb \
 	aspeed-bmc-amd-daytonax.dtb \
 	aspeed-bmc-amd-ethanolx.dtb \
+	aspeed-bmc-amd-onyx.dtb \
 	aspeed-bmc-ampere-mtjade.dtb \
 	aspeed-bmc-ampere-mtjefferson.dtb \
 	aspeed-bmc-ampere-mtmitchell.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-amd-onyx.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-amd-onyx.dts
new file mode 100644
index 000000000000..32509a651183
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-amd-onyx.dts
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright (c) 2021 - 2024 AMD Inc.
+// Author: Supreeth Venkatesh <supreeth.venkatesh@amd.com>
+
+/dts-v1/;
+
+#include "aspeed-g6.dtsi"
+#include <dt-bindings/gpio/aspeed-gpio.h>
+
+/ {
+	model = "AMD Onyx BMC";
+	compatible = "amd,onyx-bmc", "aspeed,ast2600";
+
+	aliases {
+		serial0 = &uart1;
+		serial4 = &uart5;
+	};
+
+	chosen {
+		stdout-path = "serial4:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x80000000>;
+	};
+
+};
+
+&mdio0 {
+	status = "okay";
+	ethphy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mac3 {
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii4_default>;
+};
+
+&fmc {
+	status = "okay";
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		status = "okay";
+		#include "openbmc-flash-layout-128.dtsi"
+	};
+};
+
+//Host Console
+&uart1 {
+	status = "okay";
+};
+
+//BMC Console
+&uart5 {
+	status = "okay";
+};
+
+&gpio0 {
+gpio-line-names =
+	/*A0-A7*/	"","","","","","","","",
+	/*B0-B7*/	"","","","","MON_POST_COMPLETE","P0_PRESENT_L","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"","","","","","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","ASSERT_WARM_RST_BTN_L","ASSERT_SOC_RST_BTN_L","","","","","",
+	/*I0-I7*/	"","","","","","","","P0_I3C_APML_ALERT_L",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"","","","","","","PSP_SOFT_FUSE_NOTIFY","ASSERT_BMC_READY",
+	/*O0-O7*/	"","","HDT_SEL","HDT_XTRIG5","HDT_XTRIG6","JTAG_TRST_N","","",
+	/*P0-P7*/	"MON_RST_BTN_L","ASSERT_RST_BTN_L","MON_PWR_BTN_L","ASSERT_PWR_BTN_L",
+					"HPM_FPGA_LOCKOUT","ASSERT_NMI_BTN_L","MON_PWR_GOOD","",
+	/*Q0-Q7*/	"","","HDT_DBREQ_L","","BIOS_SPD_MUX_CTRL_RELEASED_L","","","",
+	/*R0-R7*/	"","","","","","","","",
+	/*S0-S7*/	"","","","","","","P0_DIMM_AF_ERROR","P0_DIMM_GL_ERROR",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","";
+};
+
+&i2c7 {
+	status = "okay";
+	mbeeprom@50 {
+		compatible = "atmel,24c256";
+		reg = <0x50>;
+	};
+};
-- 
2.34.1


