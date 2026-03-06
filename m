Return-Path: <devicetree+bounces-271915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBAWLqKZqmkxUQEAu9opvQ
	(envelope-from <devicetree+bounces-271915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1938221DA14
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 502C63047343
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B510533DED1;
	Fri,  6 Mar 2026 09:07:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022141.outbound.protection.outlook.com [40.107.75.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F5B33D508;
	Fri,  6 Mar 2026 09:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.141
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788031; cv=fail; b=SeVlITbT1tsqDc0AzinfKqCbkKCqv/5Y3rIyYWELufDqwUIK3kx62xWgJ8+5cxJT0tq1FS3skZKITc6w1Ic0RyBqL3NQ5+fOAbPHOxzmhLaflYOtdG5VlhZ05kQCRsROsKFuErowBeUByeIYFdBO92q4fUFAyo1LSaRg4sVcjj4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788031; c=relaxed/simple;
	bh=f4ESOBYDOM63cDDdepjx30SYOTaCXs27a468vuCpcU8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WXBSj9k+VFFfHUha/DN0k+Gycvl1rf0RO5jT/D6hG/o0+gW0R3cdkFovME7QZ7r1OBfC8HPBPFglinEYj+ihj9/FyHGadLKuuKCQZVtzO7fjwGJJbPZmL5pfkjG1OB9+ho4rN1UVAtod8J8XcJwhE0+UdnvhuBxxl5ETQ1nHexE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fazaYfxLBaedJjwsIsL3vOzGedOP+a6M4/sqvQO1+Q0oWcKYf2Erwx6xyOzTeJWmN8rIzF2ZcL2wnBUm0f6NOm7RXMnpwyTiSmiFFkyWe9FoeaKNSUoh9IEfFq4imsVqqZ+25keH62D2hvgeMwqPLi+VANsnZuC3usQPjwnwM/Ohr7q3np5pOFhiIi5zp4AJ9s7hnPlGcH16A43UxDBHRwXW1c7rawrciPyGmg/cbf/PahpRhZWIB1+ztsbZoGpYLVyeNDVoZRXLANDT/lU+P+mkV9WN7PmrKgsxzlmRbW7tj7sDryzT0/N3u4yl+UqFLSaHuJbGlQx/mpskB3qlPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=py/o6k0kY+IUYpIWRpIGTq1SpEeerbRk4nqi6/sW3IM=;
 b=O4oi53CZ7JKGIXwmruoXMk4y81Ez2tsGr3I8nlaaNNwVx5/pyY8I3FypJjz1waoEGo8JjCXbP2kFdVy5/0dDMl/b11L+5q13LLAu5A9CC6s93JrE980/iGvJoAcl0GC40kLoUoEgUUMrpfFntK+Wq7PjmFwMds7dn/yI4eXh8z1vmAY6A5rEmV39yLDppRz7pV4ggdin7vGMbvc0S2oRW6hxsp43RqDTqI+4Hmg5gisPyedXTg0CIcX3CCdE7tmkTh6bu6i/ngT7qUYufFg9yMw2A/tfAodcxxW/o/bVPJEln6REBck0DJrIbTCuXa25DHAFypEWw05XtH6Ou2vEXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SGXP274CA0001.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::13) by
 TYZPR06MB6769.apcprd06.prod.outlook.com (2603:1096:400:453::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 09:07:01 +0000
Received: from SG2PEPF000B66CC.apcprd03.prod.outlook.com
 (2603:1096:4:b8:cafe::a8) by SGXP274CA0001.outlook.office365.com
 (2603:1096:4:b8::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.19 via Frontend Transport; Fri,
 6 Mar 2026 09:07:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CC.mail.protection.outlook.com (10.167.240.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 09:07:00 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 87B7F40A5A01;
	Fri,  6 Mar 2026 17:06:59 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: peter.chen@cixtech.com,
	fugang.duan@cixtech.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH] arm64: dts: cix: Add scmi powerdomain nodes for sky1
Date: Fri,  6 Mar 2026 17:06:59 +0800
Message-ID: <20260306090659.990527-1-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CC:EE_|TYZPR06MB6769:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ef5f505d-aec5-448e-51c4-08de7b5fba3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700016;
X-Microsoft-Antispam-Message-Info:
	RgRtSMV8f5VyUdNcxaSwwz3fQOXWVmVcNsX7otJJjEINF8NVmV8eTLMv6J9cipvIYgJZbwcaLgW5y2ThPsmDh5x/6OWvExFnunI1tkYk4POgrWGZJaiyObrIzRcPOiTVwg+VjG70NeX8naaffVkkv54gWbAajafiMJtaFP4SXKEHdYBgpiFc0nHah8pkJvjShKJzlW+VhKP9RF5L66nyKFHE+bNZ8ahfas+7/d8csQIVWyIsgcfcTOSHwPUG9lqSOTgOMo3K7dFeWgPpOl1z/jxRWq3h/hd3t3jknmtUeV3I+RYari8wIYh78t3hdtHFObk5ZA4mtrgBoSTLaBIAjlLB6aVJaRV3r9+afVG4gDmsHBwpOlft1Iqh7aqa2BM/MEwdVCt+6Rx67hCbdP9T0o9aIdKRwUX9YXJiMB/z9eAv7x7zutkDucbT23KQGn0Ol+L1JX0eL0spiKf//MncMuFeQPMw0/5Gv3a68JDaNWf+53nu3cdf3RZ8YuYJ9mGFkaEGdRuwYlflFmAEZKpWTSFuU6m8EpqQH1g3GmnhyJiWommDg9SRUiBHbsRY/2j7K/+GsP9Y1/A/mwKAd54iTyL6/BUzSst82cCrj5InZ4od3dKiMrMW7pW3/6Td6eeci4Nc7EtyV+Evt7DcbVtRUXdJn1UgENUBi8S1t5XAUponc+V0KSYHJ2t+TdVi9Nd3CwomqiX6lgRSosZ+JbelDgvPQ+S92mRttC1DHxI2OeXD9FDsm1vMLnkxF54rlSj0Thb/P41Sn3bv3DNn+VePcg==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	T/vFtJRM0h2ZmgQPfGiKdz7GjBXChbrNLGQ/2140vGniTNk5fMyiNdyHu3O6JdaCn4osVcEhznaHqVBaKIIqVSYBLjhkFqqC9jtq5VZydr+xgGYWGEohT2YJXq5OJzu0ZgbVHJcx+sS4tHpxjSfjiaazBfzt8Eg9OzouoDyKxQUS0pg1q+FU1I+MohH5qId+00xRV4VlE1hxcIz9Jk1oNBVJqTx0PZS9a0sTBchFRr+ZksTEy3fnW5oFTy7tcenCjwbbAVdgHgHDZsdwnlYGWGsCUzrrYupI8XA+/zsWHuoiyovKqnJA+sKTzGNGud+MlbDSPPRBjXUDfCsZtf7elLZrDNF4lWKEBZ/yjYkKB4yw3XD/DoR6pi+EcnOTe2BuUjpeU8sTA/iAeSru2CFM2cMIIqff28HajtOcL51OYq8GxIydysk+X1sjNuz3E7l0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 09:07:00.8079
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef5f505d-aec5-448e-51c4-08de7b5fba3e
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CC.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6769
X-Rspamd-Queue-Id: 1938221DA14
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.04 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_FROM(0.00)[bounces-271915-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_PROHIBIT(0.00)[5.7.137.96:email,0.244.63.88:email,0.0.0.14:email];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.11:email]
X-Rspamd-Action: no action

Add a second SCMI channel using SMC transport to communicate with TF-A
for power domain management on the Sky1 SoC.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1-power.h | 34 ++++++++++++++++++++++++++++
 arch/arm64/boot/dts/cix/sky1.dtsi    | 19 ++++++++++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 arch/arm64/boot/dts/cix/sky1-power.h

diff --git a/arch/arm64/boot/dts/cix/sky1-power.h b/arch/arm64/boot/dts/cix/sky1-power.h
new file mode 100644
index 000000000000..743c0e5558ee
--- /dev/null
+++ b/arch/arm64/boot/dts/cix/sky1-power.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2026 Cix Technology Group Co., Ltd.
+ */
+
+#ifndef __SKY1_POWER_H__
+#define __SKY1_POWER_H__
+
+/* The Rich OS need flow the macro */
+#define SKY1_PD_AUDIO		0
+#define SKY1_PD_PCIE_CTRL0	1
+#define SKY1_PD_PCIE_DUMMY	2
+#define SKY1_PD_PCIEHUB		3
+#define SKY1_PD_MMHUB		4
+#define SKY1_PD_MMHUB_SMMU	5
+#define SKY1_PD_DPU0		6
+#define SKY1_PD_DPU1		7
+#define SKY1_PD_DPU2		8
+#define SKY1_PD_DPU3		9
+#define SKY1_PD_DPU4		10
+#define SKY1_PD_VPU_TOP		11
+#define SKY1_PD_VPU_CORE0	12
+#define SKY1_PD_VPU_CORE1	13
+#define SKY1_PD_VPU_CORE2	14
+#define SKY1_PD_VPU_CORE3	15
+#define SKY1_PD_NPU_CORE0	16
+#define SKY1_PD_NPU_CORE1	17
+#define SKY1_PD_NPU_CORE2	18
+#define SKY1_PD_NPU_TOP		19
+#define SKY1_PD_ISP0		20
+#define SKY1_PD_GPU		21
+#define SKY1_PD_MAX		22
+
+#endif
diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..d37ab16ad9b6 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -168,6 +168,19 @@ scmi_clk: protocol@14 {
 				#clock-cells = <1>;
 			};
 		};
+
+		ap_to_tfa_scmi: scmi-1 {
+			compatible = "arm,scmi-smc";
+			arm,smc-id = <0xc2000001>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			shmem = <&ap_tfa_scmi_mem>;
+
+			smc_devpd: protocol@11 {
+				reg = <0x11>;
+				#power-domain-cells = <1>;
+			};
+		};
 	};
 
 	pmu-a520 {
@@ -572,6 +585,12 @@ iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
 		};
+
+		ap_tfa_scmi_mem: shmem@84380000 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x84380000 0x0 0x80>;
+			reg-io-width = <4>;
+		};
 	};
 
 	timer {
-- 
2.49.0


