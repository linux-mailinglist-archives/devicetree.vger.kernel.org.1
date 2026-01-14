Return-Path: <devicetree+bounces-255182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C80D20955
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87651309846F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65DCF2FD1B5;
	Wed, 14 Jan 2026 17:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kfHtQhvk"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012025.outbound.protection.outlook.com [52.101.53.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23F82E7F1D;
	Wed, 14 Jan 2026 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768412185; cv=fail; b=YLmpL6ySnEKcMJ2Gp0Qj1k+gBqOJS6dQAywpFNpaVdNvo+uw9FKX8Oo4jyOtdT8YfPHoKGTDNKwI/TWPRuXHIXFUBzfYjL7ArDLk1RkW8IlXfC4eFVUZ5RRc7X8HO1WjNzI5p24PK49lfsjPf86jkoaEckV/6wpl0WDOs6GtTMI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768412185; c=relaxed/simple;
	bh=u+R+cBlp20BkokAS+ZCh1WtdigEMyTebApn8FMLR+30=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i3wU9LFXxlcT18Ru2PQeDajxlMffcJyWmHC4JO3q6VLRPYQjs2girUm7p4vnRa8e7n6CojyZJqTaWMGjQuQi3IOsAIPPR5HZ/zORQgbBqp0pKhkrG2Fo3F6RoPsl8RgYxKU3DUqFnoik2SsjNPbKmNEk0gT+xuC5kj4ldLa/91Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=kfHtQhvk; arc=fail smtp.client-ip=52.101.53.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HrAerts/KZAITCY7izQmEiIOd33+70cqTA1ff7s/+O7E2Sc6yYfbRyptlw7UdBOTt8N61CYWxSRj2GYKkkK2QXGgh030TxUc7gcqkXtbzjYRsMbZZoec/qp/G5aJ5aOY08Ojvu0Lw3ks1QULTmhdJSHm5XXOSkk+kg9csPV6alRgzTOpCuZckQ8f6c7t/0HFX7AEok8kmABRKhtWxFmJWX8qTS/OzkMgwZBPX4I31bHmke5c0QxAw8ywHNwG+ntQiD2ywV2tWfrEy+iFgdTUWliK2k94FOTet4y9ZY8mD9ygby9uq+p0sBVt8n/j4Jd3gDMEQZdY7IU5O0fqDzGyAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=esm9WrD4BKpKvvKYouyabdzOJD1xFs4WzI7btg4LvbY=;
 b=EP9YFL+yXQBnf19OhQlUqoMR1WTOkeUNkIHIMmiTFu7ooF00Nt9v28Na9KezynnEKusQlZJNakUXVDCCCU2tk/ESyZ8y2YSSsWizyTyiYsbl+3gu5uSApgXyETILcvv4zAE2SfkFmJmN5lo1Vc90DRbmd3WmO0GX4aRMxSRqxooSKtm/SiEHkJQyqAPsvmvp/8Q+KxYzQEdTCx5uP8Y417KMa1duZxIQhh0abV51NetCdb5g/RVvHs0eZXi6Ci9mIhURl5hC9NE2pHqIYiV+/uc6bRiTSMmM981PqrLjxXL/tmrLCEvap91C/sOlyi9RsJ00d3wotoUTLvR86CaDjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=esm9WrD4BKpKvvKYouyabdzOJD1xFs4WzI7btg4LvbY=;
 b=kfHtQhvksLk+/197JPo1GxLf8rWio1TRdp8dg+sNxzf3FzxChSYOEyTkdUjvxRvuvsRkQSJumw2EJ4zjeziWizp4Ef3d6tL3B7bydj897+FM9FP3GobQthJQE/g6oEMPpXV/3lu6ZwfOQHi+supqHS9SQOihisw22RXS1PDSUPo=
Received: from MN0PR05CA0006.namprd05.prod.outlook.com (2603:10b6:208:52c::31)
 by CH3PR10MB6738.namprd10.prod.outlook.com (2603:10b6:610:149::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 17:36:20 +0000
Received: from MN1PEPF0000F0E3.namprd04.prod.outlook.com
 (2603:10b6:208:52c:cafe::d8) by MN0PR05CA0006.outlook.office365.com
 (2603:10b6:208:52c::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.2 via Frontend Transport; Wed,
 14 Jan 2026 17:36:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 MN1PEPF0000F0E3.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Wed, 14 Jan 2026 17:36:18 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:36:00 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:36:00 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 11:36:00 -0600
Received: from uda0510294.dhcp.ti.com (uda0510294.dhcp.ti.com [172.24.234.212])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60EHZpkN040370;
	Wed, 14 Jan 2026 11:35:56 -0600
From: Beleswar Padhi <b-padhi@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <afd@ti.com>, <u-kumar1@ti.com>, <hnagalla@ti.com>, <b-padhi@ti.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 1/2] arm64: dts: ti: k3-{j784s4-j742s2/j721s2}-mcu-wakeup: Add HSM M4F node
Date: Wed, 14 Jan 2026 23:05:50 +0530
Message-ID: <20260114173551.2545088-2-b-padhi@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114173551.2545088-1-b-padhi@ti.com>
References: <20260114173551.2545088-1-b-padhi@ti.com>
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
X-MS-TrafficTypeDiagnostic: MN1PEPF0000F0E3:EE_|CH3PR10MB6738:EE_
X-MS-Office365-Filtering-Correlation-Id: a099397b-739b-431c-c733-08de53936d0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|34020700016|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?uX5QEKoQPCN+57+iicSzd0X5YgSFht90Z7laOi2lylLwvL0ug7YJd8K5ld9f?=
 =?us-ascii?Q?YB5Kz/YIg++MM2gRmDcFVIfrYNOW/1TH2bg2F1SRyb3GrI9A4fKdtzakaAL9?=
 =?us-ascii?Q?PnfCFa5przGhvLmid0M1epaq/Z3lw+OH6dOcQ4VAY2M/KWAl1bTPEfJa7NEm?=
 =?us-ascii?Q?iPMirFhSAcHjb2nhbxMyD1Y+Lb1cVcQLSdIWg7GGN+zUyW+EXh6MZx/66m5/?=
 =?us-ascii?Q?zzOcKHHp4NOD/NHe71OEHDa9f2IY+VWxqoKZ2HnzyU47P4gLMZ4tZwvirQxS?=
 =?us-ascii?Q?5CAa9NNBN3nztq6GRR4uZ+vbVBFw72MJqh7xEXgA7dT3Lr4jfcAf/C3vst91?=
 =?us-ascii?Q?JhQd3RqFoda5nSpTMsWtiTIxg/fc+5FSy12YiJuzhpBwkRJRaR8a9bE3KF8a?=
 =?us-ascii?Q?SrBOTXHcDGwlzYUfp1xTOyO6TjbPQCH3SjUaR/qho8hablanis0w0OjKvliF?=
 =?us-ascii?Q?HZK3HjPmzQkgUdMqWV3AUmcjXHVX3iTGWUdW1osSvdjeJRRlQ+V251Oxrip3?=
 =?us-ascii?Q?b4LQTot+rdkFAbelVw/dtqdAG1bZYznE67OxrYXBaIidkIw8PlmVP9XsQdSj?=
 =?us-ascii?Q?7HX4PR2NPEUg3yptEvVSSH4LgL2HxdFu6/JdNIJO5IVtZwwVGa56MPyKVc+L?=
 =?us-ascii?Q?a7gUhbK555L3PaP49EimxJa744tTFY4RbtuuwTKxIdRt5u73xSUOJwMY/Q/T?=
 =?us-ascii?Q?SOJdoh/bKh7AUn8VQJrJH233tqjHEaJFnOaoW+LZjmU6YoJMA+SF+lQTRI1t?=
 =?us-ascii?Q?2oe8Af4/W6e1334b3b/TQVbd1opfnFiHPhajhUFujj3FBuFvEWmikPMvwLHx?=
 =?us-ascii?Q?mMH1ikV3m4sTDgaaJxTxGtA5Ry4PvrSvJIlue2QjSDIeqNUWVId0YfZyse2R?=
 =?us-ascii?Q?RIGV4L4ZmR6HIlnpXa6B2VGFhI/v66pDE6yRZb9MdoxoUWhDBvNaza7Uz5XP?=
 =?us-ascii?Q?6wOdUxKgs5J0M/oPR7w9VTph13zpL2NrZpLLucnTpW8FCUJBnnymy7Tpqe5w?=
 =?us-ascii?Q?dsVxJ4wVJ6yZeTZY6lCQ3WALqeOeI1XPTaqjAwXjJtiX+3WbfciIWKgNV0sh?=
 =?us-ascii?Q?SeVYJD0vJ4MSs/BzwfeSjSDUvciQ6pgmTUWoQhd90QSh9iDtTU9gVnhOli0q?=
 =?us-ascii?Q?bYScRl0KjCUC/Bobst+KVj8byPuxNbHwEvPNrc0q1wlYOVONz3+DgVJ9fSji?=
 =?us-ascii?Q?d2uaes+Ch6VAa7n59OzFWWGwXRZic4kjheRM71ZrHAu90SH6kc/bu+4OSeD1?=
 =?us-ascii?Q?0ZCYMR901exwK8d1b65SYciQCvaFjbV0HICnjjbKFnSBLl514udG/FCuSJi9?=
 =?us-ascii?Q?05CGu3SUGJhI7nnXKD46IYkS4QWTqg/ndTQBm1zrv/cifnLJifGAjUhwIMQv?=
 =?us-ascii?Q?POucPvP3PR767XRHmTdwNR67OW0nLJPo4X6kpTiiUc5N+OquOJrRv/R5JW80?=
 =?us-ascii?Q?YbouVn5oIuvUuc1FRhDK13IqlHHkuS+7p7phTHdFYKNbe5BRfU+/N1qfpZOT?=
 =?us-ascii?Q?/70VHxbczDDcUYetVSHx/5SL0L2nJz3DxjD8v9GB2uzgCWolYWfLj9fzJQU2?=
 =?us-ascii?Q?/dRy0pZH/vl4sKpTNpIUSYljZzq622C7/0QrgvVfgu9Hi2LVqDo7cMCru6Zc?=
 =?us-ascii?Q?xiGXPUMhkCGc7NvF0YwHnCvl89iBNCCnP9UyhmL1hV98+8sXJ/QJZg36lsyS?=
 =?us-ascii?Q?lhIlQuXkTma0pdXSC3ttCVUbNyo=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(34020700016)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 17:36:18.5944
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a099397b-739b-431c-c733-08de53936d0b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MN1PEPF0000F0E3.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6738

The TI K3 J721S2, J784S4 and J742S2 SoCs have a HSM (High Security
Module) M4F core in the Wakeup Voltage Domain which could be used to run
secure services like Authentication. Add Device Tree Node definitions
for the HSM core in the respective SoC wakeup dtsi files.

The HSM node is reserved to be loaded and booted by the early-stage
bootloader. The firmware-name property is defined at the SoC level
since the HSM is not a general-purpose remote core and boards are
unlikely to use separate firmware. If needed in exceptional cases,
board-specific device trees can override this property.

Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
---
v3: Changelog:
[Nishanth]:
 1. Use generic node name 'remoteproc'
 2. Use label 'hsm' instead of 'hsm_m4fss'
 3. Add a comment for separate SRAMs
 4. Update firmware-name property to match existing naming conventions
 5. Change status to 'reserved' and add a commment
 6. Re-order bootph-pre-ram property before vendor properties
 7. Update commit msg adding rationale for firmware-name in SoC.dtsi

Link to v2:
https://lore.kernel.org/all/20260106104755.948086-3-b-padhi@ti.com/

v2: Changelog:
1. None

Link to v1:
https://lore.kernel.org/all/20251231165102.950644-3-b-padhi@ti.com/

 .../arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 17 +++++++++++++++++
 .../arm64/boot/dts/ti/k3-j742s2-mcu-wakeup.dtsi |  4 ++++
 .../ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi  | 17 +++++++++++++++++
 3 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index fd01437726ab4..32ee8031cfcb6 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -766,4 +766,21 @@ mcu_watchdog1: watchdog@40610000 {
 		/* reserved for MCU_R5F0_1 */
 		status = "reserved";
 	};
+
+	hsm: remoteproc@43c00000 {
+		compatible = "ti,hsm-m4fss";
+		/* contiguous regions but instantiated separately in HW */
+		reg = <0x00 0x43c00000 0x00 0x20000>,
+		      <0x00 0x43c20000 0x00 0x10000>,
+		      <0x00 0x43c30000 0x00 0x10000>;
+		reg-names = "sram0_0", "sram0_1", "sram1";
+		resets = <&k3_reset 304 1>;
+		firmware-name = "j721s2-hsm-m4f-fw";
+		bootph-pre-ram;
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <304>;
+		ti,sci-proc-ids = <0x80 0xff>;
+		/* reserved for early-stage bootloader */
+		status = "reserved";
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j742s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j742s2-mcu-wakeup.dtsi
index 61db2348d6a47..2f40afcfa67c4 100644
--- a/arch/arm64/boot/dts/ti/k3-j742s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j742s2-mcu-wakeup.dtsi
@@ -15,3 +15,7 @@ &mcu_r5fss0_core0 {
 &mcu_r5fss0_core1 {
 	firmware-name = "j742s2-mcu-r5f0_1-fw";
 };
+
+&hsm {
+	firmware-name = "j742s2-hsm-m4f-fw";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
index cc22bfb5f5996..df37902c963ff 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
@@ -762,4 +762,21 @@ mcu_watchdog1: watchdog@40610000 {
 		/* reserved for MCU_R5F0_1 */
 		status = "reserved";
 	};
+
+	hsm: remoteproc@43c00000 {
+		compatible = "ti,hsm-m4fss";
+		/* contiguous regions but instantiated separately in HW */
+		reg = <0x00 0x43c00000 0x00 0x20000>,
+		      <0x00 0x43c20000 0x00 0x10000>,
+		      <0x00 0x43c30000 0x00 0x10000>;
+		reg-names = "sram0_0", "sram0_1", "sram1";
+		resets = <&k3_reset 371 1>;
+		firmware-name = "j784s4-hsm-m4f-fw";
+		bootph-pre-ram;
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <371>;
+		ti,sci-proc-ids = <0x80 0xff>;
+		/* reserved for early-stage bootloader */
+		status = "reserved";
+	};
 };
-- 
2.34.1


