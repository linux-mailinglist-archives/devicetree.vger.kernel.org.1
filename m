Return-Path: <devicetree+bounces-271820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDPHAfxKqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:33:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E6321B20F
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A000A30752D2
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433D834B662;
	Fri,  6 Mar 2026 03:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="EgCbz0VB"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11020130.outbound.protection.outlook.com [52.101.69.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DA9366541;
	Fri,  6 Mar 2026 03:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767959; cv=fail; b=OPEx+CbTFgwbB13OjL63bwossGhZ6XmpVqfnTiIOQiUwrjo+qNJJLQvnnwLfjxsCJLK0btGnlebeWzy54h1IUBNVAu75LgNi4wpPY0MoEZps0pD3IGiyiD9yFomZRrq7UQ+Ev+HTupsz3BlwY/wGZA3+PmKjl123CnDyE/qJlsQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767959; c=relaxed/simple;
	bh=17qngEPCCNmUhKIuoI7yH+95Tgl4Mut+W2KeKvgFWLY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U6DOF+Mazvxriij5zn8+l32Mj0dp4TSpX3vclZQtYXLgQwt0nTGH5tzSb4jqkb6yZe7JZ+ncoVaBW+TQLmRlgSV02M6bspcDGTqEhjBR1yXi87EXy6OeZL67QVcl/nh6wfi0AMNXtvwrQ6jFs3TzmOC/AX9EsPCwEROve4P+5p8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=EgCbz0VB; arc=fail smtp.client-ip=52.101.69.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nORe9o/M6JcycYJx+H+C6BUIklOc5Jp+y3RWjj7Y0xpAxneWns66AvXNm45ttnIc5Ngm+NSE/0v1NYH1OvmfNSrQ+QdnjCedi6mBvEgcjVVm/FJOE/QqUfcRw0ybhDcn+hWDQ2qv1GCynd+XFA8L30cbu3+8vaPhHaDh5xSorTguncCMTr4aQCKID2lCk1SjK0JH5JpNX2S/VHfsoA3h+7IDa6Q8azuxGdZDC1ZASODeq5FLpJrkFS5w7z6a/t2CpCGaluXsGRDQabSdGVLdnnr1RJTnscxyAM0Bu6JatKkKnOKy6SXFNkNtd91mAzPT82WJVTxBkFMIbgi29ZhZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vyShTBAvT7/nddGD2A/ZSH0OoPuj0AQCqUrdY7p3qA=;
 b=IJdJiFx1sn9zCFLI4ydVPDMTdjbxt2GN5GSUJk7tFI4cdjTfwl53b/IM9RqkmyamrVqWtcKsnudUI4g3EcONZeIn8daZdrsTZh8QkitYIeHS/1A0MllGFt+RJwGtfx9O2lyZyLggAa1iq94CT+QOtWWTPBEXMK2RWgZWrZZrXr9AZf5N7L4sy3KyptgaaAdsIeiNLYhq1iJzrXvYnkhRTaQwtI7wlFat2BXm2zlfLcjcSU3R80iGVnFL1CPbhWePAnOnXisDmf30z23Cou2N8R5sM+oZBBQzfBrjPm+iDkxAYqPmwt+4JYN508qMcXyVi+irryNsCftsJCcQtiKTlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vyShTBAvT7/nddGD2A/ZSH0OoPuj0AQCqUrdY7p3qA=;
 b=EgCbz0VBX5nbkq3ZJEnECGPqVvujzHEZLUOHAaXQLWbr5S/ifwiTUMo04ey58VMTw+G81cSCKz+Lve5FCfC6cMCu6xL6Qx/9hnmm4YqQRjZevogTOzghJr1Dt4R0074eg0d3+yaRzcdqukzit8VnZrMRzTpXRIEroYH2esZeqD+eZN3rqRxD1gD9Zp1k+cgBjCe+81oWX6A6kK11vfsni2AK9zKAx17ZSOZbrYE9ejd2ivjTReiQTon9iyJEjIzz6nPC4eo69Laz4S6P9K0ku3BKtGLDNDwOzZ6eB8BkVMPYdvWFLxUsTdG4ffStyG1YOgiXO9W2IXlGsrhOfgbexA==
Received: from CWLP123CA0261.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:1d5::6)
 by DB9P195MB1611.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:37e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Fri, 6 Mar
 2026 03:32:34 +0000
Received: from AMS1EPF00000048.eurprd04.prod.outlook.com
 (2603:10a6:400:1d5:cafe::7b) by CWLP123CA0261.outlook.office365.com
 (2603:10a6:400:1d5::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.18 via Frontend Transport; Fri,
 6 Mar 2026 03:32:34 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF00000048.mail.protection.outlook.com (10.167.16.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:33 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:30 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 2/5] arm64: dts: ti: k3-am68-phycore-som: Add DSI->LVDS bridge
Date: Thu, 5 Mar 2026 19:31:45 -0800
Message-ID: <20260306033151.276202-3-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS1EPF00000048:EE_|DB9P195MB1611:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b98ed25-f608-4921-0410-08de7b310119
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024;
X-Microsoft-Antispam-Message-Info:
	dLwRh0RFQMeLei0wxcieR0UOPUgWdJBRMIB+a2twAkCIWaEYq3HB2L3XDxtj4bV6voogjY17ADSpWi9/uUBZq2tSn2jbsy4/LNsB1vKuxAarMkhQpTWOLEuBkEWE4pWqJt3nMUSvAK4sKgr0Va2IB9tWZG9uI37QCTFWCAOjT5wjTfzZ6l268/XxkQVGDvCcTF0zssatg6ndrWOlMTDJESBaZFwVTC5wTFZFPUrNCR2OIj1YWaqNKod/VSfp46DO/59KueVnmxpk+YJx4Q5ZJO3h+eLv7jFKKwR7r7UIrCy7N0VkP8bF1+sERiadS22Or0w/O7/NAMPvWVaF4iOe/UKHCXcx2OmBdpsuViziampF6fIZuGKMg5N39dXvmfRkm37O5Ar0sQuO8/qGEMOd95yOhQRcWRHwutgaWcxwb7yI7D+srke1U17Hl88WMvtopAbUepykhjjsNBeJO5dMFgSZcXvGIITVI4ZHbkE4DOyk0VkwX13l3EoNnvOFS73ttLj3RorPbjIpow88qvQV0mXzaPILwy5M0sjUXTQKfvi/tjkEGaCrWrbtegLYMVlrbeF4+Q8UXNgIFNAxlXbCiilu43fXBYuqQtI4aXjz3KgWjzJoZwMilPPUjqtVLZZpbPOb8jNW5vEQf1+FwlopXOAF8oziAIfawPvf1ou/YF3Xkx/4xUe9sIp9scGesaHnb4F6Wu+kiv+R3ulKlcfi0A267i4IcMlE9KMlV5KVNQIGK/+oP1m/sjqx2D+D64AWrekzrvo1G8JEyf3F25WJRg==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	cqEQvXCKqoIc/fH3M3unQPjst2qgA7uBE4UZmrDOTCC97SnpGkXny8O5d7ywj3hE1n+eZHIKp3tLAYX5gElGzwle3o0X5js5D6Be1K927mtiIZjtsAKixfnzrM0llzmdYR9DbmgLr5CdiHsxD0TVOP5I60vu4WLAQ8xniSbdMk7sxw4Vkdqv+EEhgTZ7ndvZUjH0Y1ODC4seGZUBmlGW7EhCQJy9AIblq4pL+DCO/5Ryr+R6yomNPzjL/ML6Q5sPYLhn4bKDXlA3leP9UB9Q/+5POEgMyH3+zst0fgwX8Xyu/garkl+8wcTI9XvqcN0+6mtJ3A7wI/XtK5BrAdjmfIFoo0Ktu5Fv4UlyvN3WrFepWLiFKYSxzy3hRrFjCPS0VAzLpTJtLgynfGS49WLuEWkk6n8GEQWtHOPHw3y4av3eM/DpCY/+nKoYGOhP4KCs
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:33.4764
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b98ed25-f608-4921-0410-08de7b310119
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P195MB1611
X-Rspamd-Queue-Id: 67E6321B20F
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-271820-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add the TI SN65DSI83 MIPI-DSI->LVDS bridge that can be populated on the
phyCORE-AM68x/TDA4x.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
index 0ff511028f81..ab87767419fe 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
@@ -151,6 +151,12 @@ J721S2_WKUP_IOPAD(0x09c, PIN_INPUT_PULLUP, 0) /* (H27) WKUP_I2C0_SDA */
 		>;
 		bootph-all;
 	};
+
+	wkup_sn65dsi83_pins_default: wkup-sn65dsi83-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x084, PIN_OUTPUT, 7) /* (F25) WKUP_GPIO0_11 */
+		>;
+	};
 };
 
 &main_cpsw {
@@ -183,6 +189,17 @@ &main_i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c0_pins_default>;
 
+	sn65dsi83: bridge@2d {
+		compatible = "ti,sn65dsi83";
+		reg = <0x2d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wkup_sn65dsi83_pins_default>;
+		enable-gpios = <&wkup_gpio0 11 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&bucka4>;
+		/* enabled in panel overlay */
+		status = "disabled";
+	};
+
 	temperature-sensor@48 {
 		compatible = "ti,tmp102";
 		reg = <0x48>;
-- 
2.43.0


