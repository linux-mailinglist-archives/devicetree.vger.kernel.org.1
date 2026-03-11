Return-Path: <devicetree+bounces-274366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDfFK5v/sWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-274366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:49:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C4D26B714
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:49:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99126312B76F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B3937DE8A;
	Wed, 11 Mar 2026 23:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="Q11AQRPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023098.outbound.protection.outlook.com [52.101.72.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B5837703C;
	Wed, 11 Mar 2026 23:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272956; cv=fail; b=GDy6SPGIfSg36JtUQVnOhrbLqsLAe+TrC9oLmgIJJWuPVjOj22N/amTZRwdhDDlw2DFL0qo0mFV1JgfXfUBN8OGEz1RMPPgVGsx8ouVPD9RlBCdX5Oe62uwV9DLxrt2iMovtQkC02kXBxVqJJaM/SXWvb8XWJ5UhZnV9G0JS/IY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272956; c=relaxed/simple;
	bh=17qngEPCCNmUhKIuoI7yH+95Tgl4Mut+W2KeKvgFWLY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gj67qU7gCSU8L48mO7WjYY2a/eLzM+PtluHE65JwfNYs14ERJLhfhXFmYJ+mUk//qWaE3E726t96QK9pUlj0jXBp1n2C8WqjmtKO/IHlMYIYZxfdj/fYs6l/zPCwwjV79e+MihzcNg8wJGl77p05n+7lQ5D6MPpUBQ92gY/LsN8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=Q11AQRPJ; arc=fail smtp.client-ip=52.101.72.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ME9yLnkK/NYFhyIODrzV1y9gzOZfGkxPZ3fthuns6WkLkzffrMvK/KGaxxYDSwARnCUNo08ICRgkn/ck+wzfh0xRYXVOz9aoL29mdbMEABEFBpnniXOPU3m7AmMjzXm4aW+HkZRhEidbhKPFcnDPrrUONO2qdcOu/DtC0x7J2Uq2jAL05u4Bn6zCsfoJR1TUKgE6WzQpUN5zcMt6m3nsjwXeguuNplMzKntCerZBk5SG34kveGWQ7gcRo3xQrnWHYDfrOb3Zvg1L0a1TPefgWDaGDb/6e/0/Jpkw5z+gyGugPzDyZbTgcKCXpG2Yd4YwU0WcqapCEAXDMN8GiDGaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vyShTBAvT7/nddGD2A/ZSH0OoPuj0AQCqUrdY7p3qA=;
 b=wwYZIBpP/5+EGFuZFCoB7PLz689gxCDseqFB65q9nI5RrE7dofT8qI+BdiN5nxOsjGQq7nrsiN7e2hVPRJogmnrOWq2DPTcgOVTamxm5tTWf+JOvWZe1RbaVt+/1dWm4fiq/Wqj89t5euXKIgv+GZcFVzRPnZBiOMXBAJw2TFvMv2rrSWcPbTtXKSrwEV9JGzIS8I202SGUxqjiiBjtBBWnUI+ED3DKn6VTBk34yroVi6nsU+5udsQttmtBTzFod1dO5IoYePBox4SgKcA+/s+zSZBzkqfp7177ZtOeOSceUEcqyPYI5JvlIrNk8Bw7LMeYtciwUnHY6caSBrH2Usw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vyShTBAvT7/nddGD2A/ZSH0OoPuj0AQCqUrdY7p3qA=;
 b=Q11AQRPJ7eBxlLiTq7E7erUfDCUEs2SSFpA4uLgnNU1/1b2iwIbN3FKf/Awt4sBNikTmXN0orB86emxAGZxts5073FGm60Lc4r17mS3RI68p8YRSIeTTrRWAfinipbYt2TsDAJm+yWX0Gu74CS4epAHszsKZlP8hILW2kjCdrpTdfVkwDInLIW4sK8kYXNwFTqJ+FitNmsKH4AKNdmTuTIDhPI9ipihXJRFNrYtiY7sGJB221lwUxlfES9mFPPsnrW/12r+o2Jm173pbfxaSUYkWjiowQEXjTjiDt2T9HqCl4bQ0sqCOvMPrj9M//0V3R73DRIXl6c8uqsiW8yKWCQ==
Received: from CWLP265CA0487.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:18a::13)
 by GV2PPFA657ED422.EURP195.PROD.OUTLOOK.COM (2603:10a6:158:401::8dc) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Wed, 11 Mar
 2026 23:49:10 +0000
Received: from AM4PEPF00025F99.EURPRD83.prod.outlook.com
 (2603:10a6:400:18a:cafe::93) by CWLP265CA0487.outlook.office365.com
 (2603:10a6:400:18a::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Wed,
 11 Mar 2026 23:49:10 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AM4PEPF00025F99.mail.protection.outlook.com (10.167.16.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.1 via Frontend Transport; Wed, 11 Mar 2026 23:49:09 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 12 Mar
 2026 00:49:06 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v3 2/5] arm64: dts: ti: k3-am68-phycore-som: Add DSI->LVDS bridge
Date: Wed, 11 Mar 2026 16:48:38 -0700
Message-ID: <20260311234844.56443-3-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AM4PEPF00025F99:EE_|GV2PPFA657ED422:EE_
X-MS-Office365-Filtering-Correlation-Id: 99458e8e-9d6e-4545-4b5f-08de7fc8ca2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	C4HdEMYH+RSimnpQQKdd6/1Z8cEyOAvDyUz2O/8lpKjO5+U26VTCMuW1TjOVnugi2bxC9vHPgN/x5Oo1ieBA/sWfu4MqgsVh9tox2MIG1DtBX5TbobfADFeGWE5VvYhYW1niC7pAPHDYHxaqv8x0X1cmqvwd6ew590Ypbi7tCsTX+YKUJ2dfxJAQb0I956mGFjwZYoywbbaCQuIkLAZ+QBienrfyypmnFzKwA/ntLEHqGP2oibhzBgiblJLKbT+gKofG7qPzraGCgiZ/tRmLp+ag2XEDBAA3MXVYOxmLMQ24nTfGifhjRh1xv5EneipgKGNsyFwVLx3+TL4a1GC+m0Lls5m3NsebCxZNhWIU8K7A8Mgc+36dkpLwoFk+Kvkt9N4hsFCAr4En94i9yZb9/iXguAGoUytraDpUeKvwdHCO8jEmIWUtI5ZDV9yvoWwQ1Co6VdoMF2tsRR4J4kkn5QCTGV+ZwC2qMWHkVwSbTponVEssHKde7cs8jCI9q5uxKXGrStpI0nz1eJJz44fo4AkvSIyNduowrowp+UxQA3pFi4cTUE1Q3+0Qma0nhZI+8Oi6lVVHUzT/eSBewCzWrp95Gzdvm8Z/oozGq+P2CVLNM3oi0YABNJtru5qcjP5iflGB9lAFrw2sazb8+RMgmctD4N7wmXIEaDnrqwGCZi9f8gEBSw/jyWdA5RA0Oic+TtiR6d8aZLGWBbtCTR2OXbnLLOS2nQIiBBecLVIehiYl42DbJn725RPdx3uxAX5V5wliaK6TSbLm2p07rtuJrg==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700016)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	4mz7breYwRkZqlz8S9qKYf0Pqh4w+esbiB4htParUj6piITBM1o5V9n0D64TLVpWWLXm0S1x77ES6RXndRkkwlJj0Q/AZXqO2ef72xqfEmQYlk8h12CRt0oePo2tvkABxWOlJEMS43kIopMiCmxUgsga/MBnZ29SzIwrPu5vsLRzWxotJqIG8QhaxR9u5DBqzgNdcWYnjpHPMefs7qNqAKVd5+jm2vuTC0taRZYi9J0b+yMo5C9tQef5IzsY8ZIMnyglTdqM7kgJkwzsYGq6w/voJ/5z4DvNEOzyVghTgYa77Y/a3IEmGgRlTTPS6HTv5xa5I3ITdeQ26CdsK3pQTIp4ec/sGakvrY1TiWTljUTRaYFM00fC2/orRI6uy4OEnFQ24P/EpCHvSbtfK1DmdRJWj9Y8WyrheDSYUlsWAtAb5Da6dTjS9WnvYdhNJIGn
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 23:49:09.4752
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99458e8e-9d6e-4545-4b5f-08de7fc8ca2b
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00025F99.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PPFA657ED422
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,phytec.de:dkim,phytec.de:email,phytec.de:mid];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274366-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.48:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 14C4D26B714
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


