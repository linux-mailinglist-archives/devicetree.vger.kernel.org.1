Return-Path: <devicetree+bounces-242270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F7FC88B59
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:45:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 813853A737F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F348731AF3B;
	Wed, 26 Nov 2025 08:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="dSrL8PBU"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11023139.outbound.protection.outlook.com [40.107.162.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07BF1E5B7B;
	Wed, 26 Nov 2025 08:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.139
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146684; cv=fail; b=XqpM2BlcZkMwrYuusZGvT5VGIrXIPQ5PN8IxryYvmWsteA8h5DLbmQfNXdg9R61baYUngE3E0XEFViNtQiSkci7wyaLu8pTMESVJKJEOP1o1fD637ULxTyrkGn63mzA15MXBUo/YVDKwv+xV3lBTcU2Lezq54NuiXgM7bCwQsdI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146684; c=relaxed/simple;
	bh=CvXd9XKxaCKE3y2JsmzZNYmlfC1srpsCdyzsip/RVvA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GWtsRVyE5m5NLDe2rFXYR6edGmwFUMWrD0weiSoyOhKa6hZgH+GnnGy1NJ0u3yk1EvN5JvzQHB8osm0yKcTkYFCGpJ3asaXEi6rmJ0iyX4oyNH3W6v4PbDy08jl+TElj3HSX7DWdfQFaqmFMsTY8L/SOs1A6P+c8sUGn4XdVSGA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=dSrL8PBU; arc=fail smtp.client-ip=40.107.162.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WvZ7RFZXphmsciGvo3p02bszY4hfhW21AwSk+15CXh9f80L3e+8kCb4Fc6Pko4WF01SzSEw3gEPTuQ3RH3fDI3mncQ8AuB06+cy43xU1nEgqeq7faQgyNO0JO9qNGMeH2kSaSRk4Vit/9tH9ONY1qBRFNU8H7vy5CzB7ZCxviGysc0NgRz87dauIYk+WnP9izendolHIDe0cXs07w4xCDhxDE0X3rd0xD0Qh3OmKo1PVK8vRIqgsGjhaFTK/lqoq1o0BvZxL6v2xHtC6T+FWzvK6YwI4vnWb3De/PDqcuwdjlcZoAwvAcrIt3vN4MZ05kNslI7DfPzU5YfqgRWXvCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LdSKxknrKFNJTzfKtYqid2Pa7BipQkO27cYmalqeDQ8=;
 b=pjjF+ghFgeu+rXjt4JU/g8UHFam9wSvXq8uym34tUnQr4vFXne+OqdCnyYhElB3rZ8SHVnNr9xmYs6I9yDu37K4CRG7196N90/QdUm4sBeiBY5nFRGNH+bk/1ueKK4YIJPRrNCuLSC6HJZeXG6Gou71I6FAvRvWhq+TpaKD71nD//1RJ0ZPxIBiCDWkObcep+46htLNotn3otL5R/9LNh+nqP+IB97g2npa6AD+F40j17yB3MEXhs7XJcFoamf0YS4l14YzS1khR6v7omM6ZQMooEAk8K6y2irhHgN4l3+xO0H66wVlaaPbawXBppO3+ZcqNY1HgXdvaPNmLBaJbiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdSKxknrKFNJTzfKtYqid2Pa7BipQkO27cYmalqeDQ8=;
 b=dSrL8PBUD/ZrBK9Jeclg0Bs2tZK4JUSmC1c73Vlvw6jiwiAlxhmHdpcsrQUZexilAqj8JZG/zDMhGYW9kfjZKm+iVV8lbIhe34nb7HcS7THF/CScbcJ0MQkGQQhamJ8+o4nNjhm6CO2BmiFcsRzvq3+z0Jt05OmRmT2TsYb8qJbr5cnwFuVwwu0GQHE5H6zOZES0tTGbPgpxT6N8HSyFXB57hykTUATkhd3+tQTz9EEMOru+mCkb3ZvokvR7R/zOPp8zN1WcUmOKyuHkOI7CGD6X+KtqLhaqikPH/mgiKCi3GIOy/5vdYUoGosW52hmLIu4g3RzfBCbAzjWt9xGOag==
Received: from CWLP123CA0209.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19d::6)
 by DU2P195MB2464.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:49a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 08:44:36 +0000
Received: from AMS0EPF000001A4.eurprd05.prod.outlook.com
 (2603:10a6:400:19d:cafe::cf) by CWLP123CA0209.outlook.office365.com
 (2603:10a6:400:19d::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.12 via Frontend Transport; Wed,
 26 Nov 2025 08:44:35 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS0EPF000001A4.mail.protection.outlook.com (10.167.16.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Wed, 26 Nov 2025 08:44:36 +0000
Received: from phytec.de (172.25.0.51) by Postix.phytec.de (172.25.0.11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 26 Nov
 2025 09:44:34 +0100
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH 2/3] arm64: dts: ti: k3-am642-phyboard-electra-x27-gpio1-spi1-uart3: Fix schema warnings
Date: Wed, 26 Nov 2025 09:44:02 +0100
Message-ID: <20251126084403.24146-2-w.egorov@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126084403.24146-1-w.egorov@phytec.de>
References: <20251126084403.24146-1-w.egorov@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS0EPF000001A4:EE_|DU2P195MB2464:EE_
X-MS-Office365-Filtering-Correlation-Id: c371d4f1-5f2c-462f-512f-08de2cc8076e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?liJa+iDBm5nS6TvkDLlGporcZrZVh/csU7GkvBv61hZLUV6dqSPzdlUBYcpI?=
 =?us-ascii?Q?t+eG0x5eH36cerF/4Y2YcCQtFBd6Le0e6+PGW9YOd+DaRvD5B6Thq15MJd/C?=
 =?us-ascii?Q?l4SM2X3g29hA7DMRWLMbMy+ybTZHiYnPUN8RYKEB+R74OHmDFR7wSV1kzmyS?=
 =?us-ascii?Q?V2if0/GXf1acJdLR9pbdIvJg5PQJD7n9LPSymL0a/ftzRiTnYazBuvJjfsOW?=
 =?us-ascii?Q?qwuEIW9v1Gj92u6zpZRnoZvfYoAOB9fBK1GIRYp7iUsh3OefGLsdWmYQuppv?=
 =?us-ascii?Q?Cpj4QVTL0SzT3HoI71V+gI0fvT2inn8h5bqhCJTCzYc/dLUJujxS8Inse/ZI?=
 =?us-ascii?Q?CuPaNeNczgdfyQ+ZrXiwobN7IsI0nd8BVVUDUFmcO/mIgwv/NgI62yK1wvMR?=
 =?us-ascii?Q?a9p6neWiE4AgcOEZn/3fr9O9Qta5+U18NvcprQe+sY9gtRAHCvYwFI+06EN0?=
 =?us-ascii?Q?Ly4wCVH6FJWWEpejJs6zULLU4Tm04jl7Y3jzrhdPaoQKO0IMAFfZOQDVVlfk?=
 =?us-ascii?Q?zwi0iLwHorzc/VJaw8xVHRP2W/vaqiKqb9+/KpbEyEGBtDums/yr8aZqNTA9?=
 =?us-ascii?Q?UpPbPDy5PmvWS4lfVk/N9dIJcneq8cmljT5mICN+oUMY/nXDINk5stAQvVrm?=
 =?us-ascii?Q?1Bcd9Rq4HnhdtvdkzokxJQJkplKHpIZkid7Kq3e5RZyRcNxBS0zdLliUpZPo?=
 =?us-ascii?Q?1mwYIgB9V9+TwK22UqsS3MSqLabSqSOVqXtKWh980StESLAZeve/ccVABTrr?=
 =?us-ascii?Q?EV9RXtm57Kz9ueMtAnGaOHtjDXIDFgBwmcOkzoTDvp2MFMX1VPXab9xtqmWL?=
 =?us-ascii?Q?WvAzzRWzPIReXUNByahy0W8SqgvwpeiRi6/PWKqkeunXZ8TPUhrFl/Du3dh8?=
 =?us-ascii?Q?LNTu6fOBxIYg6sLUyWWbfh2o2IBzfn7ZsAz+cB3b0N1/naHxLDgJQOA0ZjpM?=
 =?us-ascii?Q?VnuFKuSB1r3yvy0+Qffw72BhK8c3lDBkK6MXWyiTdSbK7NvHHDo4EYvYPbCh?=
 =?us-ascii?Q?7klMm8appJqp0xXoB43qyyZI4lERRtYZKRZZGvvT7P/gVgMcRcOh0gnsDa1a?=
 =?us-ascii?Q?aD3Ch1IKdiGgGWUABDJWw8i0p6A+Fvhir6xnjbifbH0g4GmLfOdEzTR3bJiF?=
 =?us-ascii?Q?OjCQnAq3Hb2zVBN18bFnHceROKfMKnd5JRloknoVB/ZGkhgfeoS+l7/IpH9l?=
 =?us-ascii?Q?Dcg4uxJVBhB7ZGvr3TBpNqv4FRCiKPwMWdm0ZHbVZ6Rsdd1yZ0ijs2s7gpa6?=
 =?us-ascii?Q?Bv4zkVrOYRNwZ4ir6XzQ32fYaSgWggou8Cykq+/ouoBsNIyeiRm1RX8Tb/8K?=
 =?us-ascii?Q?WzgroYlYlK+uOPh2N0Qu8QygGCLXN8M3Thtqx/zvURWhUXFHQVueRmzWsHzB?=
 =?us-ascii?Q?fSdGvceMGQOd/0XCLfyop7SneP+ue3EANWYOxiSn55/0z9OUzvIhffleeXiH?=
 =?us-ascii?Q?ZGc20yx7Oyz/va9N1TgX7AbnE68GGc+PqiA/gvP6xiUUujHMND0u9chsrYHd?=
 =?us-ascii?Q?/ZXcJgHBTxXKKN90KG+/4jM5fPsnypyT+O4YmPSww2/Pbxjdiejzn42Gjlxx?=
 =?us-ascii?Q?SVUUwTgiJ3gcNWOyEio=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 08:44:36.2553
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c371d4f1-5f2c-462f-512f-08de2cc8076e
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001A4.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2P195MB2464

Rename pinctrl nodes to comply with naming conventions required by
pinctrl-single schema. Also, replace invalid integer assignment in
SPI node with a boolean to align with omap-spi schema.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 .../k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso   | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
index 996c42ec4253..bea8efa3e909 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
@@ -20,13 +20,13 @@ aliases {
 };
 
 &main_pmx0 {
-	main_gpio1_exp_header_gpio_pins_default: main-gpio1-exp-header-gpio-pins-default {
+	main_gpio1_exp_header_gpio_pins_default: main-gpio1-exp-header-gpio-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0220, PIN_INPUT, 7)	/* (D14) SPI1_CS1.GPIO1_48 */
 		>;
 	};
 
-	main_spi1_pins_default: main-spi1-pins-default {
+	main_spi1_pins_default: main-spi1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0224, PIN_INPUT, 0)	/* (C14) SPI1_CLK */
 			AM64X_IOPAD(0x021C, PIN_OUTPUT, 0)	/* (B14) SPI1_CS0 */
@@ -35,7 +35,7 @@ AM64X_IOPAD(0x022C, PIN_INPUT, 0)	/* (A15) SPI1_D1 */
 		>;
 	};
 
-	main_uart3_pins_default: main-uart3-pins-default {
+	main_uart3_pins_default: main-uart3-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x0048, PIN_INPUT, 2)       /* (U20) GPMC0_AD3.UART3_RXD */
 			AM64X_IOPAD(0x004c, PIN_OUTPUT, 2)      /* (U18) GPMC0_AD4.UART3_TXD */
@@ -52,7 +52,7 @@ &main_gpio1 {
 &main_spi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_spi1_pins_default>;
-	ti,pindir-d0-out-d1-in = <1>;
+	ti,pindir-d0-out-d1-in;
 	status = "okay";
 };
 
-- 
2.48.1


