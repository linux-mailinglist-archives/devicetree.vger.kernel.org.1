Return-Path: <devicetree+bounces-271821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLldNjJLqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:34:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EFA21B243
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A40B30A3B39
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62B6342C9E;
	Fri,  6 Mar 2026 03:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="TUMgBXUx"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11021084.outbound.protection.outlook.com [40.107.130.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0176733F581;
	Fri,  6 Mar 2026 03:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.84
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767964; cv=fail; b=QwJA6LjcU41wm0pJVAh67UKZBC84J1aqy2wdS5sX6eWmrxNLq4j4zokokM+if5qGJopYmK24iQBy/kftklXO+LtyUJ3rRKy0rtEH4lgkfn30w1IH8uQDRrhzsvWvZMAJMh60hiDQCUJW/TPl5Uth6WEYhrRfycF3R+Em1nDlY6Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767964; c=relaxed/simple;
	bh=OBpOlmH/w3WlBSx6XWOsWmVETeVGNEj45iZS+gLB+BA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f+kq5H9a3YiENe/SNPFLF03QTlRnWN2Z99Ppn+PnRUNCp+GYqRQVGeHP/xo8GAovLf/OqAaFY1H0q5rMlBU+FwviIXLkWHzSoMSeS58/zeTwy8xpL8hjbhvKmshHOwcupcUczs5+3PoKP+HiTwZIkJg3OGSq5Q7UCLpOfQUAfKo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=TUMgBXUx; arc=fail smtp.client-ip=40.107.130.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mr0tRqqijTSLYc6VXlrMUbLrzbbQooZp1Hoi4k1sB5E32Qq7L1Qz+lXjCZ5yc37FtbFKKEedolUFXkkg9iXOnqwRTwDRFAixMDoifeRkiSXLYetVHmQM1eeDSEjTrBQdf78ag2HVCQSGo8mdjEju/kLdQ/dulUCA8Q7cefYcGgnYdhqWbqNDZ4L5Ru99uBpw7iWKWQT0wYB61LOsrJkLNo7eRf4y9/EK5X8MAETjK6SJvHasGAtz0erVg1XJFQm1vVIt/XLEaO2MV81P0+f6CyoaN1PhfoZa4Py5Ge6+cvTbWNQw325f/NgDwIYI7j61iixkKmoVWwrl3VrJQGHDUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kOF7aRMmZPFa3rHBhG7+1RzS/skO/vCFghHSZH/Ahg=;
 b=M8tqlfBMYullh9mebif2FB4u5gh22y2m2vNKeszRv02h9QmW1WHWZ4s/vlfkCpaGPMvqc4oDeZH/rzaj+A4C5PfslpWBPAAemE+iSJJB3FJ9bPtFHCTbuBVmryBGNTXOYxoISYrS0wiTjcybcUyeqvQ8MFn0RsWkpYn9sNqLXFnK8LA1UWPM72wVQIg2qydR+Rq/yBtoFqAFNdsykqbqZjR/yWE1jg2hTSUYT/vxE65A4Tzk3gPfNMQWi9LpRA8Floz9VqwhJ4anJgB0vvB5L4QSp12rcQrq+jOtD85wk7xrjOS9Qa5x2BU2Ww2qUA562HOCUTG1M8/leIyPTqF38w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kOF7aRMmZPFa3rHBhG7+1RzS/skO/vCFghHSZH/Ahg=;
 b=TUMgBXUxJhitDrFWy8ij/+3xN1DeP6CglkmROzMRaXI7n98xjd/cf4t592u332Juln9BLlQ1yetGJ1jpAgOMjjucR1BLUJGZHX3oqt9GPt/uRn+g0LnNnFbF+HlxYD1jADJ6fUqvC5DXrMwfQuyhp4kh/yIbeHQAglP7XPWuL4GGaBJw2C/gviHbtSRveLOuUH2rHrKNJC9mzwS+WtKZSXebZs2pN8qwx2PvcrayREbex4d+Snl/mId9Ck7vlmAJdwM9OjItIaU+UBMZ1/2QdeBNQKSptKqns3dBO2qnpc3jM6CkNRBP+pN9KCKU7B3DJ2riVT0DM2fD6EvVSlLfmA==
Received: from AS4P192CA0012.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5da::20)
 by AM0P195MB3237.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:6fa::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 03:32:39 +0000
Received: from AMS1EPF0000004A.eurprd04.prod.outlook.com
 (2603:10a6:20b:5da:cafe::d7) by AS4P192CA0012.outlook.office365.com
 (2603:10a6:20b:5da::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.23 via Frontend Transport; Fri,
 6 Mar 2026 03:32:39 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000004A.mail.protection.outlook.com (10.167.16.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:39 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:36 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 4/5] arm64: dts: ti: k3-j721s2-main: Add DSI1
Date: Thu, 5 Mar 2026 19:31:47 -0800
Message-ID: <20260306033151.276202-5-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306033151.276202-1-d.haller@phytec.de>
References: <20260306033151.276202-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Postix.phytec.de (172.25.0.11) To Postix.phytec.de
 (172.25.0.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF0000004A:EE_|AM0P195MB3237:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ea06abb-4028-479b-6721-08de7b3104d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	VLd5De+X//0iV8can551BH5bQDK2SG0yoKIQ+xtkEEmw0C6LT5MK4Yo+5ftA4KqvKFw72wZ6UyUH5TRPWrDk1PGbwgGR6IfPj+MZgjjYAuG2jTNIVyheAGLlN8JCp8zZWivGs0lXCq/tuy9Q3xDHIRul8hmasxOkUSTPxTf8KQWaD+N9Hj2A7Ly49VedDRGc4g4b/9+X6pB7+fd7nEoOjKX6kJy+4C6YeBzdkq/OX/EY94bxBElo2eCzwyYi8oVVOo4Vzw5pYbGFmj59tBBDMdftzTUcr6ZY5x9nvtiVzC5M2oBybxs8oJhFqIKgztA5ikOzYQEBhuWop3i7OEMwjOHCGGTU+pgcsCHVOOYZedBzxBGqJYh6lP1U/DxI38NW4j62I/+31lUAVBVrk4wrNM1cDvHCoIgWtP45M0/cgv4VhRTHFWpx99i79IQKAV6KcUlBiBHsUIpZIUMJrOAobuyP6HD6DsMyfFUcsTzgiEswEjG4tK2pcArR+GlFznEM0uJKYo3a+IWKfmiZ+P9aaj78mC0uT6i1wpXangqS2Z9Jw0nN2pM8EC6wNZJTB1qWwG17yc19s+AhNKbhNoXr5uhiEXla7yXjjt8WeV/TADH0nWJJjFHA14ScKwmgn08UMK1HiAWQ1clvqWktJ6/IoM9fwHg8qxIBo5C2qEGVIYIazwlVKQxgVpzdF4W+5aTMBv0uG5PUvmCu6oj5bq9cexzUn9yDNy6qwZyG2THqCq3EZr+B7VeDZbkr8WYwYxtpjqs1ApFxKl7vkehvtDZjSA==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	hlUhsYK8pp+Jxs9jbnRjpI/nQYp9YWZU4vtGiXuqggqvdlREiqM+xe9EzPKSRcCehDBeEBt0ynKQT3ntHtHWHRNtxiIDFbhenIfK/Xi15y1IdB+L4dAvWRdnzzhzFpg7rbo7jAgJ5QO0Ulnfyy4NX5xeFXMhpPapxnRt0TFytDtYLwrWgMI/icHy7YzEr0Q/q1yNBDZSSiIkk7znkxRK5F6RIJax6T5NvHix3aRgi9sQIR2E5fRgaCAtl8O3vVeG2JD5Sot4Eke/2XZVFC5PBbWr5uMckV7kzXYs2OmyGm9BXVVbkMuS6RMAtD/fHvBIEDfHaxt/9cJiHqEpxr/x6r8JLoZpTLSuD3AgF/31LiHVz9wu473cAq5/RN5hTnv416QzydGJyRKVMpq+aCzw3W6ZWlmPh10dl/zbe2PgSP6R2s7h0ytifrfLaLT44pIW
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:39.7379
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea06abb-4028-479b-6721-08de7b3104d4
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000004A.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P195MB3237
X-Rspamd-Queue-Id: 35EFA21B243
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271821-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add the second DSI instance and its corresponding phy to the main domain
include file.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 80c51b11ac9f..80a32c451d1b 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -1815,6 +1815,19 @@ dphy_tx0: phy@4480000 {
 		status = "disabled";
 	};
 
+	dphy_tx1: phy@4481000 {
+		compatible = "ti,j721e-dphy";
+		reg = <0x00 0x04481000 0x00 0x00001000>;
+		clocks = <&k3_clks 364 8>, <&k3_clks 364 14>;
+		clock-names = "psm", "pll_ref";
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 364 14>;
+		assigned-clock-parents = <&k3_clks 364 15>;
+		assigned-clock-rates = <19200000>;
+		status = "disabled";
+	};
+
 	dsi0: dsi@4800000 {
 		compatible = "ti,j721e-dsi";
 		reg = <0x00 0x04800000 0x00 0x00100000>,
@@ -1841,6 +1854,32 @@ port@1 {
 		};
 	};
 
+	dsi1: dsi@4900000 {
+		compatible = "ti,j721e-dsi";
+		reg = <0x00 0x04900000 0x00 0x00100000>,
+		      <0x00 0x04720000 0x00 0x00000100>;
+		clocks = <&k3_clks 155 4>, <&k3_clks 155 1>;
+		clock-names = "dsi_p_clk", "dsi_sys_clk";
+		power-domains = <&k3_pds 155 TI_SCI_PD_EXCLUSIVE>;
+		interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&dphy_tx1>;
+		phy-names = "dphy";
+		status = "disabled";
+
+		dsi1_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+
+			port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	dss: dss@4a00000 {
 		compatible = "ti,j721e-dss";
 		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
-- 
2.43.0


