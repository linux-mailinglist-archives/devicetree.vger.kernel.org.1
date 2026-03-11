Return-Path: <devicetree+bounces-274368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDJhGNT/sWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-274368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:50:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B979526B73A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0E6C31759B6
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E983845D6;
	Wed, 11 Mar 2026 23:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="R0yDOGKj"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023130.outbound.protection.outlook.com [40.107.159.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF16237A489;
	Wed, 11 Mar 2026 23:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272961; cv=fail; b=u0PXe3kRJHkWQJ04xx1CRebv3O37EbDyOODhcSn0bt9JJHGlYrCXwc0RGmFr2lIdL5Oq6dOEmdAajhgTAZ8FZ8fgMgFZiP3bWteqo7HYz1svNZcggW4R+1euYWEFWLLRJ5jpvZH+ogCAvc5POQVY+zZ9ONpTCe8n3YZQHoMkOM4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272961; c=relaxed/simple;
	bh=1J96vP2FXpOJYrhuXb+XRoR3Yf8qGYKJe7NBpVbP5gc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iRc5cKI+bIeCkaN86R93Lp1IbssBDmY4iIz324Kn3JzQRlcWde+gWkur1BjwPx/BzBMYoMNO7CAf+TM6a0/M35K/Hjs7h78Jt6f7Dwa6z4QI4uQYyBeZMLXP6vidwE8iKj2B3Bw6DmRKDEDx+45yZaC7a3G4BIhhQzPMQndlrPQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=R0yDOGKj; arc=fail smtp.client-ip=40.107.159.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J7470D/zfZjybPLUOL29qEF3xvvAioMNTkCXIXHg3wFkKj5hOLtR2wSybMW9PAiBcBJ/UBgrU1VuRZUBXZTNqhyUBDuf12qRBxY8JHtxlqHFOg+X5yWmvY7JH6yHnYXd/FBvn3GqxnM2G+YyEUqhPVTEv8pwerOdn6SoojyRGZBhcEboF9o05I06Aa7arZgPe1Fx5D79LhxT5arWETKuvPN5c/KftHTIb7X9rtLks/ipkVxr0uN9HzZb3RuGOZv+aVcWFtJOU4xRt3cHPl98h2Ykg8fW+IjCIvaeOG7SYV6EURS9IIYLUJEVK4miRKFtUX3POqwkaa/4XUJMkR2sKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfHSUF4wl+C6LBp3abm/D5GtZrb/+lTNNlXqgPh4ZIg=;
 b=RPYx+pFXGC2J5Muv7y9QRV3weTdi+GV32UY7KvKXEzq8pv5nsQx0f83Gqbl3aqVRREjPyo9I9duKBw2/5FGsuNg+azLnFDU2vLv/uk30/zUQ+nCYPqAr2TCY3CG0OuexZRcofAOkZlayzZOd1S5pn438ag8zO5gKMCEpwOpY7tjjeeIAqtCyLweYL33j61HAy46nbvT4x4LxFqKaWxvX/SRuYngEA2wrQ9P1lqPHV8xmq46uSRzQZttgQ1Qb0dvZts5Wc22Rocic7jSgUbHedULJrwXyhuSCRNyGcliMrSsz2a9e0Qjdx2GXtj7CT2G0GCwEf4IJ9XDJ1Adyf/E/jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfHSUF4wl+C6LBp3abm/D5GtZrb/+lTNNlXqgPh4ZIg=;
 b=R0yDOGKjo8FTlFg4sbmnSmjIDXCkCV1EG4cy4ONn13AWVTVeIyPc74zyHqJY2IBJQ8xZRbWI8/Mo4njjvg7oDYH6VzSnVm4fZHwttbug1Qyw+0XeiPT+RIYUjtZW9hnCxi3KoaBP477JHx4/XcM657BNd/fXreXXsUBRkg8zMYTxHSPr7GOtUOCofzx5yVjAKpO0qpyKzL4vwcmkOAsCggnsCy7f6RwfWcJTlv7N2RS/7Y5t/NEW1wf0UiwwVBGbb0m1xr/VpZ0ZycwPgOgf9yo4b3tCnquSKsMy/jeeswl6uSANihXOw8K7y5yz559sipQMuRpkNpHbumwNNZQkzg==
Received: from CWLP265CA0484.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:18a::20)
 by DU0P195MB2324.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:418::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 23:49:15 +0000
Received: from AM4PEPF00025F99.EURPRD83.prod.outlook.com
 (2603:10a6:400:18a:cafe::13) by CWLP265CA0484.outlook.office365.com
 (2603:10a6:400:18a::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Wed,
 11 Mar 2026 23:49:17 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AM4PEPF00025F99.mail.protection.outlook.com (10.167.16.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.1 via Frontend Transport; Wed, 11 Mar 2026 23:49:15 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 12 Mar
 2026 00:49:12 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>, Beleswar Padhi <b-padhi@ti.com>
Subject: [PATCH v3 4/5] arm64: dts: ti: k3-j721s2-main: Add DSI1
Date: Wed, 11 Mar 2026 16:48:40 -0700
Message-ID: <20260311234844.56443-5-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311234844.56443-1-d.haller@phytec.de>
References: <20260311234844.56443-1-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AM4PEPF00025F99:EE_|DU0P195MB2324:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cf9595a-f31a-4468-e882-08de7fc8cdb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|36860700016|82310400026|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	hRnkx5W4RU1hSLbFCIa0/HMqYeNgBlxT2E4Nm0cvSuk6netB2TnuGyPSrY48T0fL6TIhfH7NJo0NqlmgSnDe68L3DLpKRbHT6Aw+MI1ALG7TilEIprnwm5+THNsuDHInWJZLICkbCcnHQJpjC5Cd7YZWsX2YgYeRZUNDjb2+3p6JdfYPDYdofgut61rMUqc0AsG6U6NUTpwDDTiMwNCPZfJpNeti+2vMHZ+tfoOCJ4AQIIf5/H1KLJKRBbhcpQWPU+QXCf9Td5+JgbLX+CoZnIZZLhFJe93a+3X9sjt9o5WqovHqqri3b7c9yB2+0kJDZaWVpi847yPE+hADuN7mWO0IKqIvq5hg0a0cKvi6wJZdRaUbkkVSNrdUposKh7vGCPoaUgEYUx1I4iirCJ6zm29xeghwMCwUIDtGwjyKFXdwmmaSArzIL5Yh+ia1VObUyb5TBm1oEYD5HPWb/huaEVj0WCdvEi5EMlM4Sn/BuwrL+iIS9jArv/zd8p0iqipgJ30TOUf10dZcebW+NdTXd8a7chTuZMaUjEAjZHJCmP8W9t1GXw53bqudt7RmRetQHwZWRKWkKxOpozc//AfKoFlOAl7aeJ6GsK8YaBAaNxq8cxmfInnaGUFDYHxYhBSnZm6R4ngz3Ms7nSW2QxE69R60CPqyO9DgqpzqoM9RmtgbNnJgNjczyfkjEqiV4YIqgdvTBXCOA8o95E1x7qAgzRmmVydsDKKsNxa+acucsbHdvBpnn/Td2dcLE2UTwoMF/q7J4sQgzoEjvssyAWkbDA==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(36860700016)(82310400026)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	gThBLzZqufeQsgphq56Tm/kleDKdxd8p9jtIipTR6wpvAGshufplowNw/S9Jk9yfoLi1S9Kh58qXmswZXfMHImF662WW6rGMSv5X+OEou3mRgjvzepiqyAspaa4RW+3dSCIx2jM4qJA3iOpCVXCJE5MdscVjZ32U47Qy7rwpc70wmREE+Q+voaOJlNCprXRMSOUx8GFJlLq7Z5jJS2dM/Tlh+Etqjsqka6DlSxcASXsMpH3JRo7d5gmHi1dzDwBwK3oV/nsGrMss+F+RMW0hqQtUtN9liJoquQMWZmSF1n2cw6yNwzJUgFItmPeiKMzV+5sO8h7oDxcfTQGhTOxktNlW7vieUjxZrLwyB9FMiMPQGmctTxfjFyvPxU/vigJNW6xq13GTVJyC3GVB9T+LLArPUbsMgTimHZNYhdbBPsnwmZ/sZOZtrAmEvbMIDwlr
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 23:49:15.4108
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf9595a-f31a-4468-e882-08de7fc8cdb4
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00025F99.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB2324
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274368-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,phytec.de:dkim,phytec.de:email,phytec.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,0.68.95.232:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.73.62.0:email,0.74.196.160:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B979526B73A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the second DSI instance and its corresponding phy to the main domain
include file.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
Reviewed-by: Beleswar Padhi <b-padhi@ti.com>
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


