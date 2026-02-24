Return-Path: <devicetree+bounces-267780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNSWL5NtnWkkQAQAu9opvQ
	(envelope-from <devicetree+bounces-267780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F66184771
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FCDA300C36F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF185366044;
	Tue, 24 Feb 2026 09:21:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022100.outbound.protection.outlook.com [40.107.75.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87B2277C86;
	Tue, 24 Feb 2026 09:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.100
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771924878; cv=fail; b=I4n+5uUmzq8kv7z1+CpzKO3W88Vm3NIKZFYcHX8lhllxkfF+GQhsVlc6MfvzTgFeE82XbZr0v20oDHNki21waaERjDl5rRXQ/OevJWkMd/CsWyMwIX+L8HEZ6sQ3PxYWNjTNZAnUVHN9A37Hr8Q5IJOB8+83UcfLXcRE63BU/vc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771924878; c=relaxed/simple;
	bh=6exn1yJO8tHOpnd5gASk46kYDnBCJgnKvkyJx3IGklQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GTvkGEMDmkrchZdBSA7SrcmRjl8cDJbjLAHJIbfdnCyjj6Aq3KrkexZy+OIYJiu2kj0ggQ5DFbeFSbH5GJRxa8MzUpr/4SpftNBEUedZZhdZf1dnzQgoEpEyPGnj5LhFAW+mdi2Kks+2rnqxKgTwwZhcxyYoGyYxRjnLaVtF+XI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PwKjY7mq1+JYV1NuILHyVavUqWLs9gxrbJ7K1k0YNuabI0xzMLymkZPLocMhtoWwmNbAoXimN+F22CCsdQrILNkkU5WhqRJfMCdgd6rv8OT7Zh48iqviTHB1rGO8jWQvAn/TgO03/rOixrVjZBovL3m3AbyLjT2SlB2H7uAo5/6MYmyxWv3uX1UhbsE/Ra+UWeshpklOAZkYYixToHJsZK4NRb+TSI5gXE7gfvDY7Jys6aaCGjNb/DYGH9VCgilUJVjTwqZh5JqhjV10TiV+y/RHWiCE1RJHaNYeRFJg78+6hdek6ZmSJjOGe4axh0/6thQa0vee4tyx/5PpFAzz4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uEAx5ilsGG61RAWkeNLmgLvQ+KuyDaOHCovPLYQnK0c=;
 b=tsVNYEiUl3R4xw3hYmfS07Fhi8ZEhtIgU8MXZ9Qk6VYkXOJ6VzXT9yX2vk7aN8ePx7Xx5PZ/SpWLI6f3viuOlW6RO20ns6QV0RPrTBOrSCVsSIgdKxcf2wTrrMJVHHr6rp25SGIQMgr4icCCdwi2WihprZ/3MtMoaBuU6A4YTfEsTpMnBm3ZnVVT8aJq4ha0IA2Ow0bHQrJy07ZTZugVHhi5PPQ4THRmqRn2uQa5ps5hvQ+2LdjCrJ1ILhpgRpRlmta6F1ZaRw1iQQ4f2MPcAEjDJG3nZi70/T9m3vsATLBS13Ti8QFcCe+W0m50FlN7zf72NYQfQipP8nzVnrZCLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SG2PR02CA0124.apcprd02.prod.outlook.com (2603:1096:4:188::9) by
 KL1PR06MB6555.apcprd06.prod.outlook.com (2603:1096:820:f1::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.22; Tue, 24 Feb 2026 09:21:14 +0000
Received: from SG2PEPF000B66CD.apcprd03.prod.outlook.com
 (2603:1096:4:188:cafe::c3) by SG2PR02CA0124.outlook.office365.com
 (2603:1096:4:188::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.22 via Frontend Transport; Tue,
 24 Feb 2026 09:20:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CD.mail.protection.outlook.com (10.167.240.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 24 Feb 2026 09:21:13 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id C32AB40A5BD8;
	Tue, 24 Feb 2026 17:21:11 +0800 (CST)
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
Subject: [PATCH v9 1/3] dt-bindings: soc: cix: document the syscon on Sky1 SoC
Date: Tue, 24 Feb 2026 17:21:09 +0800
Message-ID: <20260224092111.2198005-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260224092111.2198005-1-gary.yang@cixtech.com>
References: <20260224092111.2198005-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CD:EE_|KL1PR06MB6555:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d480bd9b-04ed-479b-f586-08de73860e4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Jq88r9e/nX3j4rU/wzsul055tcCTEUnzR/brDVZNI6FZaoI4uSqFLo6AWyVZ?=
 =?us-ascii?Q?TjdARk2tYLXVf2WM0yO4YUFmFrgTSGYm0RDwrd3CLlGBL/FNfPUIBBb5BovZ?=
 =?us-ascii?Q?gaocy5l017n3nxv353F88loUJIbGQEub1nHU20HBZi0LjWcDcwVvRbg70lvR?=
 =?us-ascii?Q?qS7W2yX71LI9zbPmVVt+1AfpG31ihehaiOP1IuVDvLibWic4I1coOQ1Jk/3+?=
 =?us-ascii?Q?JazFGiPYVRsOk3owiyhl2L3Ep9CSuTOoljt0vvANW3/nefBVc3sAEPDtyXG/?=
 =?us-ascii?Q?DlKqLer3QC2yD4Yjd8IGlaa4unIzRHljvYW+7Twm92ssVQWDaM+DnhXJByKt?=
 =?us-ascii?Q?TlIk8HaZH5bRmEJjtD+SFnu8Sxx85AbOo6IZu29v54+tOFA8w1wm/uStIzum?=
 =?us-ascii?Q?SLDEzbD0O6R0mZ9NcesH2VMsZCSD52mhYL/4wdEakkjdxY4qPodD2deOihn9?=
 =?us-ascii?Q?faNWlpUY3bAdY1wzediUwo40UH0iN2Vtf5tSGrn0D4OkjLC/CwfQRuviuX+Q?=
 =?us-ascii?Q?VQbEnHQZZ5ydrMRvYe8rY7piGSWcDR2i4MIrukXjuEQxNvLFiLDsR3XcFmc7?=
 =?us-ascii?Q?62FclXkRLkAb6wfgM9StS5TbyKXdt08FYoicC/CPm10ZOKL9gmgfOBlWAf7u?=
 =?us-ascii?Q?5BPfNMdMU1Ey4yyK6QB6g6Vtg5aSBwPGGeegZRE/FzvdKs7kurSgSxqJ+p1b?=
 =?us-ascii?Q?LITZjo2PW4zTS2eg3girQmMy+txrBCUPkzUN2yEujbKpMSGaLIRZjFPqHxmE?=
 =?us-ascii?Q?2Kv2zwabU8LqDcC7fDa8bsQ1gINOpaeX5SoCvt2SopMOfq/Wzu+FP+GjxHZu?=
 =?us-ascii?Q?2WzztR0zv+ZljXFMsGAW1rQt7l9FvTv2oPd5tfST4EtYqHXRGq2ewBNlBDOt?=
 =?us-ascii?Q?Thr7pWm64L3yobAA8tvfs9kgy56EuRUAv+DwBfrC8VgbOXnDPNnEO1UAXG0t?=
 =?us-ascii?Q?y7T7vfjTv4Qw+lfzC1hUHswrVat6ULeZDyNtaP490PFPjxU5bytjlAmlL//k?=
 =?us-ascii?Q?3UesNLlc4DX7f5JAW3Cn2r8rwwoY/VSFBz9RD/EGpJRYzivJo8mVEQwR/4yD?=
 =?us-ascii?Q?8XQML718Dvh54u2amwZPtZ1GXrhkXxgQAMmQOyibhdldfw/J5k3vSDb5ZyOh?=
 =?us-ascii?Q?8moA9HEAsc1rleuyc75uh2D/FfCytuHEZlPTlH7lSE7NCa+eiUa2yG4OAR3i?=
 =?us-ascii?Q?aFLH00vTBBEWGficWi1Qc1QPo0IyXMnJC0S+gCotW6MEbKM6NEmVbI7x1lz0?=
 =?us-ascii?Q?6KbXk8RZA7a6GnLKWD47JdjLiv/rwfpteYm8WSwdL1/hhmuIW1UtauPvFuVY?=
 =?us-ascii?Q?6pM6fJ9GonfNyqVvY3zZNELlArYpcm313h9il8erGyMdh0/nWA5uoInFf9cx?=
 =?us-ascii?Q?UMC+9pglWsRKlNUVCtntllKw83Ar9J7/jhRroEQ85XXm+l3437G8bXvTZtf4?=
 =?us-ascii?Q?ngjdVSTYswJCMqnHe2icBSP6IKsliQ50hb0LJlMEaiLZbZCh0usw4/XKS5dD?=
 =?us-ascii?Q?1a8KvIQjni8c6gXzm9SRKoaxqUasMdzYhODSbc2NflR5x0UdXtootzJ7Hknm?=
 =?us-ascii?Q?NIzzDcKPa7GDDJLbIGDaqstu/qNqw8RKo82Fhmll9XusOBghT5qm2J/6raVy?=
 =?us-ascii?Q?vgWRrBoKzUku3MQzSpC/d2iXCOq5EdQJfMsCBro8lo3NV3dJQmLLcDsQtnG1?=
 =?us-ascii?Q?5Lh6AQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	aN2I7zvrjqYsg91+iu5wVaT9yoodRAYsOWLWpovtEVf6XFwTrYNF7TYBPWFQTCHf3+jSv9If0d4iLfl94RGS6GG5ZV5hdem9PxGiVNl+U1tIbt1T2c4+4kQ3hRcLD/+CBimufdcJV2BY3ooEODzf3ZnBtXnH/vmsi+Jbxm0G1BuKefWLDpQnYaC593wjDcJ3pxy99QfEiqsrhhA7+L+Z1jOtkv+mJb5+uoAVOVUuNoTEX5HrEf2h9z9WkjZiAUz/q37zo8Z0WZAtNi/bpp6HnLWsFi2xe6pgapLPk7sz3TMG2F49IBwpxLKOIg5gD9r7yZAhAuAMHCFvfN+np0sjbpk1/3pd35K7GeNM4Pogt+A15JCQWhIbrgu8BiEGpMPjGTWqv1IqmO6RsoeeKNfSOCmLqbxEQgCaQZg5gLEAzNJmFhvBw3OKuOXuB1FIFedV
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 09:21:13.3436
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d480bd9b-04ed-479b-f586-08de73860e4a
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CD.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6555
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267780-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	DBL_PROHIBIT(0.00)[0.244.36.0:email];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cixtech.com:mid,cixtech.com:email]
X-Rspamd-Queue-Id: B3F66184771
X-Rspamd-Action: no action

There are two system control on Cix sky1 Soc. One is located in S0 domain,
and the other is located in S5 domain. The system control contains resets,
usb typeC and more. At this point, only the reset controller is embedded
as usb typeC uses it by phandle.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 .../soc/cix/cix,sky1-system-control.yaml      |  42 +++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
 3 files changed, 248 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
new file mode 100644
index 000000000000..5507deb54ebd
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cix Sky1 SoC system control register region
+
+maintainers:
+  - Gary Yang <gary.yang@cixtech.com>
+
+description:
+  An wide assortment of registers of the system controller on Sky1 SoC,
+  including resets, usb, wakeup sources and so on.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - cix,sky1-system-control
+          - cix,sky1-s5-system-control
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@16000000 {
+      compatible = "cix,sky1-s5-system-control", "syscon";
+      reg = <0x16000000 0x1000>;
+      #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/reset/cix,sky1-rst-fch.h b/include/dt-bindings/reset/cix,sky1-rst-fch.h
new file mode 100644
index 000000000000..8e67d7eb92aa
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst-fch.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_FCH_SKY1_H
+#define DT_BINDING_RESET_FCH_SKY1_H
+
+/* func reset for sky1 fch */
+
+#define SW_I3C0_RST_FUNC_G_N	0
+#define SW_I3C0_RST_FUNC_I_N	1
+#define SW_I3C1_RST_FUNC_G_N	2
+#define SW_I3C1_RST_FUNC_I_N	3
+#define SW_UART0_RST_FUNC_N	4
+#define SW_UART1_RST_FUNC_N	5
+#define SW_UART2_RST_FUNC_N	6
+#define SW_UART3_RST_FUNC_N	7
+#define SW_TIMER_RST_FUNC_N	8
+
+/* apb reset for sky1 fch */
+#define SW_I3C0_RST_APB_N	9
+#define SW_I3C1_RST_APB_N	10
+#define SW_DMA_RST_AXI_N	11
+#define SW_UART0_RST_APB_N	12
+#define SW_UART1_RST_APB_N	13
+#define SW_UART2_RST_APB_N	14
+#define SW_UART3_RST_APB_N	15
+#define SW_SPI0_RST_APB_N	16
+#define SW_SPI1_RST_APB_N	17
+#define SW_I2C0_RST_APB_N	18
+#define SW_I2C1_RST_APB_N	19
+#define SW_I2C2_RST_APB_N	20
+#define SW_I2C3_RST_APB_N	21
+#define SW_I2C4_RST_APB_N	22
+#define SW_I2C5_RST_APB_N	23
+#define SW_I2C6_RST_APB_N	24
+#define SW_I2C7_RST_APB_N	25
+#define SW_GPIO_RST_APB_N	26
+
+/* fch rst for xspi */
+#define SW_XSPI_REG_RST_N	27
+#define SW_XSPI_SYS_RST_N	28
+
+#endif
diff --git a/include/dt-bindings/reset/cix,sky1-rst.h b/include/dt-bindings/reset/cix,sky1-rst.h
new file mode 100644
index 000000000000..2f0990922aad
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_SKY1_H
+#define DT_BINDING_RESET_SKY1_H
+
+/* reset for csu_pm */
+
+#define SKY1_CSU_PM_RESET_N		0
+#define SKY1_SENSORFUSION_RESET_N	1
+#define SKY1_SENSORFUSION_NOC_RESET_N	2
+
+/* reset group0 for s0 domain modules */
+#define SKY1_DDRC_RESET_N		3
+#define SKY1_GIC_RESET_N		4
+#define SKY1_CI700_RESET_N		5
+#define SKY1_SYS_NI700_RESET_N		6
+#define SKY1_MM_NI700_RESET_N		7
+#define SKY1_PCIE_NI700_RESET_N		8
+#define SKY1_GPU_RESET_N		9
+#define SKY1_NPUTOP_RESET_N		10
+#define SKY1_NPUCORE0_RESET_N		11
+#define SKY1_NPUCORE1_RESET_N		12
+#define SKY1_NPUCORE2_RESET_N		13
+#define SKY1_VPU_RESET_N		14
+#define SKY1_ISP_SRESET_N		15
+#define SKY1_ISP_ARESET_N		16
+#define SKY1_ISP_HRESET_N		17
+#define SKY1_ISP_GDCRESET_N		18
+#define SKY1_DPU_RESET0_N		19
+#define SKY1_DPU_RESET1_N		20
+#define SKY1_DPU_RESET2_N		21
+#define SKY1_DPU_RESET3_N		22
+#define SKY1_DPU_RESET4_N		23
+#define SKY1_DP_RESET0_N		24
+#define SKY1_DP_RESET1_N		25
+#define SKY1_DP_RESET2_N		26
+#define SKY1_DP_RESET3_N		27
+#define SKY1_DP_RESET4_N		28
+#define SKY1_DP_PHY_RST_N		29
+
+/* reset group1 for s0 domain modules */
+#define SKY1_AUDIO_HIFI5_RESET_N	30
+#define SKY1_AUDIO_HIFI5_NOC_RESET_N	31
+#define SKY1_CSIDPHY_PRST0_N		32
+#define SKY1_CSIDPHY_CMNRST0_N		33
+#define SKY1_CSI0_RST_N			34
+#define SKY1_CSIDPHY_PRST1_N		35
+#define SKY1_CSIDPHY_CMNRST1_N		36
+#define SKY1_CSI1_RST_N			37
+#define SKY1_CSI2_RST_N			38
+#define SKY1_CSI3_RST_N			39
+#define SKY1_CSIBRDGE0_RST_N		40
+#define SKY1_CSIBRDGE1_RST_N		41
+#define SKY1_CSIBRDGE2_RST_N		42
+#define SKY1_CSIBRDGE3_RST_N		43
+#define SKY1_GMAC0_RST_N		44
+#define SKY1_GMAC1_RST_N		45
+#define SKY1_PCIE0_RESET_N		46
+#define SKY1_PCIE1_RESET_N		47
+#define SKY1_PCIE2_RESET_N		48
+#define SKY1_PCIE3_RESET_N		49
+#define SKY1_PCIE4_RESET_N		50
+
+/* reset group1 for usb phys */
+#define SKY1_USB_DP_PHY0_PRST_N		51
+#define SKY1_USB_DP_PHY1_PRST_N		52
+#define SKY1_USB_DP_PHY2_PRST_N		53
+#define SKY1_USB_DP_PHY3_PRST_N		54
+#define SKY1_USB_DP_PHY0_RST_N		55
+#define SKY1_USB_DP_PHY1_RST_N		56
+#define SKY1_USB_DP_PHY2_RST_N		57
+#define SKY1_USB_DP_PHY3_RST_N		58
+#define SKY1_USBPHY_SS_PST_N		59
+#define SKY1_USBPHY_SS_RST_N		60
+#define SKY1_USBPHY_HS0_PRST_N		61
+#define SKY1_USBPHY_HS1_PRST_N		62
+#define SKY1_USBPHY_HS2_PRST_N		63
+#define SKY1_USBPHY_HS3_PRST_N		64
+#define SKY1_USBPHY_HS4_PRST_N		65
+#define SKY1_USBPHY_HS5_PRST_N		66
+#define SKY1_USBPHY_HS6_PRST_N		67
+#define SKY1_USBPHY_HS7_PRST_N		68
+#define SKY1_USBPHY_HS8_PRST_N		69
+#define SKY1_USBPHY_HS9_PRST_N		70
+
+/* reset group1 for usb controllers */
+#define SKY1_USBC_SS0_PRST_N		71
+#define SKY1_USBC_SS1_PRST_N		72
+#define SKY1_USBC_SS2_PRST_N		73
+#define SKY1_USBC_SS3_PRST_N		74
+#define SKY1_USBC_SS4_PRST_N		75
+#define SKY1_USBC_SS5_PRST_N		76
+#define SKY1_USBC_SS0_RST_N		77
+#define SKY1_USBC_SS1_RST_N		78
+#define SKY1_USBC_SS2_RST_N		79
+#define SKY1_USBC_SS3_RST_N		80
+#define SKY1_USBC_SS4_RST_N		81
+#define SKY1_USBC_SS5_RST_N		82
+#define SKY1_USBC_HS0_PRST_N		83
+#define SKY1_USBC_HS1_PRST_N		84
+#define SKY1_USBC_HS2_PRST_N		85
+#define SKY1_USBC_HS3_PRST_N		86
+#define SKY1_USBC_HS0_RST_N		87
+#define SKY1_USBC_HS1_RST_N		88
+#define SKY1_USBC_HS2_RST_N		89
+#define SKY1_USBC_HS3_RST_N		90
+
+/* reset group0 for rcsu */
+#define SKY1_AUDIO_RCSU_RESET_N			91
+#define SKY1_CI700_RCSU_RESET_N			92
+#define SKY1_CSI_RCSU0_RESET_N			93
+#define SKY1_CSI_RCSU1_RESET_N			94
+#define SKY1_CSU_PM_RCSU_RESET_N		95
+#define SKY1_DDR_BROADCAST_RCSU_RESET_N		96
+#define SKY1_DDR_CTRL_RCSU_0_RESET_N		97
+#define SKY1_DDR_CTRL_RCSU_1_RESET_N		98
+#define SKY1_DDR_CTRL_RCSU_2_RESET_N		99
+#define SKY1_DDR_CTRL_RCSU_3_RESET_N		100
+#define SKY1_DDR_TZC400_RCSU_0_RESET_N		101
+#define SKY1_DDR_TZC400_RCSU_1_RESET_N		102
+#define SKY1_DDR_TZC400_RCSU_2_RESET_N		103
+#define SKY1_DDR_TZC400_RCSU_3_RESET_N		104
+#define SKY1_DP0_RCSU_RESET_N			105
+#define SKY1_DP1_RCSU_RESET_N			106
+#define SKY1_DP2_RCSU_RESET_N			107
+#define SKY1_DP3_RCSU_RESET_N			108
+#define SKY1_DP4_RCSU_RESET_N			109
+#define SKY1_DPU0_RCSU_RESET_N			110
+#define SKY1_DPU1_RCSU_RESET_N			111
+#define SKY1_DPU2_RCSU_RESET_N			112
+#define SKY1_DPU3_RCSU_RESET_N			113
+#define SKY1_DPU4_RCSU_RESET_N			114
+#define SKY1_DSU_RCSU_RESET_N			115
+#define SKY1_FCH_RCSU_RESET_N			116
+#define SKY1_GICD_RCSU_RESET_N			117
+#define SKY1_GMAC_RCSU_RESET_N			118
+#define SKY1_GPU_RCSU_RESET_N			119
+#define SKY1_ISP_RCSU0_RESET_N			120
+#define SKY1_ISP_RCSU1_RESET_N			121
+#define SKY1_NI700_MMHUB_RCSU_RESET_N		122
+
+/* reset group1 for rcsu */
+#define SKY1_NPU_RCSU_RESET_N			123
+#define SKY1_NI700_PCIE_RCSU_RESET_N		124
+#define SKY1_PCIE_X421_RCSU_RESET_N		125
+#define SKY1_PCIE_X8_RCSU_RESET_N		126
+#define SKY1_SF_RCSU_RESET_N			127
+#define SKY1_RCSU_SMMU_MMHUB_RESET_N		128
+#define SKY1_RCSU_SMMU_PCIEHUB_RESET_N		129
+#define SKY1_RCSU_SYSHUB_RESET_N		130
+#define SKY1_NI700_SMN_RCSU_RESET_N		131
+#define SKY1_NI700_SYSHUB_RCSU_RESET_N		132
+#define SKY1_RCSU_USB2_HOST0_RESET_N		133
+#define SKY1_RCSU_USB2_HOST1_RESET_N		134
+#define SKY1_RCSU_USB2_HOST2_RESET_N		135
+#define SKY1_RCSU_USB2_HOST3_RESET_N		136
+#define SKY1_RCSU_USB3_TYPEA_DRD_RESET_N	137
+#define SKY1_RCSU_USB3_TYPEC_DRD_RESET_N	138
+#define SKY1_RCSU_USB3_TYPEC_HOST0_RESET_N	139
+#define SKY1_RCSU_USB3_TYPEC_HOST1_RESET_N	140
+#define SKY1_RCSU_USB3_TYPEC_HOST2_RESET_N	141
+#define SKY1_VPU_RCSU_RESET_N			142
+
+#endif
-- 
2.49.0


