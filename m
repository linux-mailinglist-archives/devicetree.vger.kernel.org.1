Return-Path: <devicetree+bounces-25326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EA1812E6B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:19:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF86D1F21B53
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6303F8FB;
	Thu, 14 Dec 2023 11:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="h5hXGS6M"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2052.outbound.protection.outlook.com [40.107.22.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E904F93
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:19:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnJNaAF2IOPfLu/aEEl9ChBjFoaKHPCP6Eg2ijRcwsi6YtThu9NobiDssYN7s5TSmi8E7FQzEi3B+4Hd89T+t8o5Xrbo9tRNQ2EGGsfkJpG1SW5pHjQYeNMwrhRu6ncSSP7QedePwNoRgmS4KoNV8SnlmQ/C6hHB1BYGDwivWZefSOQog2s4OS473OHM7u9GAUxqy8qvgqcoL9abII8J8QTP04AAnwD2Ay1B28n95aotDiEcCEq8c3UImTYolr1V0ByNGLIsnDT2LqO6vytUNLV5f5dJfv+Pxoe7SzdB9/XjDCcF1+e/iBUcynuMar8yil3ECfK3P0AcuiNTV1iomw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kyXa0gNHC1OzIGbwEgbl2sbSkcJ/Dy/RmYYafvbtHxk=;
 b=n0iX2KvpZho3RFl33jcvKkUsQnD8aVZnWF++9vmZMhjM9j/hY3KaOf92ts2xH59aa2KeeRkmgz71dnGKJJrcIw19h2hAabahWGBpMWeyBmnjk85eISFt+sh/Vero1q3ETl26JAe10By+yrU0j8HHnNuDaohl/vNlFwKEQTWh5fkHHSuwjVl+oh1HoCj8g+WYMF0fWGJ0n3T3aYmxDFkwk397XkbckBICtN/Fw9e2aCeQg6UVbuUJJYLHtNkKZTzj+LVvSmmjn5FLbZ10MmVWTq5IBs7wTfPqerZKGx3g/NIpEKD9GAC1g4+rM1jqy7NGqUja+OXFM6yUR/LSQM0uvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kyXa0gNHC1OzIGbwEgbl2sbSkcJ/Dy/RmYYafvbtHxk=;
 b=h5hXGS6MtcGXdJ1wP9+/UonXHKaGlkDoFqJZ0vYtTF+8fhaqiVWTOe+wmz+xC027CI6oj/6G8UuGLLsq+MLeeC7sPwMoW+xKI7l2tHJFJM/Jrz+xveY/it0YPCfz1FilelHkH2y4NK0hEQih+BgsxbXAlSyig8/dbtPSLfrvyYI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by AS8PR04MB7880.eurprd04.prod.outlook.com (2603:10a6:20b:2a5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Thu, 14 Dec
 2023 11:18:59 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 11:18:59 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com
Cc: linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb and typec nodes
Date: Thu, 14 Dec 2023 19:24:42 +0800
Message-Id: <20231214112442.2412079-4-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214112442.2412079-1-xu.yang_2@nxp.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGXP274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::19)
 To VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5152:EE_|AS8PR04MB7880:EE_
X-MS-Office365-Filtering-Correlation-Id: c59de6d5-f730-4a10-a7f9-08dbfc9677cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	XiPEnUmIr7AQFL1XSoxdlfRUW1pYtbAn3jnhK92nf+wvJR6vyZNiN8IbnjvolKewEL9QOjj8vzFV/6dBY0QiEsz7oZF5UJCFml2JLiCvoeBYJmDUJXFRWsIB4+Qq4lXBWAP2Ny1HsXA0eK31GzD17lQby+2aHKrf7TOgDu+sx+LDLf4xp/ttnAeBIzZntoDFZ3Q6AK3AUiF56Bzy00/8T3mc0I4mD5puwM8JFNW3345DQCgHXRBmxUABTEjpqNBKc+s6Qyl16yYSWhnT8x1W0we3asNd023tf6caqMTjNm1s6uGjPKTgJaNg8dUkn9rUbfVo2tZB00xAE2dvccLby6lvj9QGoiYZNxfsV4TCQCsJp1yuaPRBzG9cIRzeGgdgtXmQGZwHNzkPDWanUiguTwrvHn98Rj1Pq+YE8y2Feadtr7vE6cVvENdoyESP3Ds5RfDL0CPJCjhyIfioRA0oIlvksiyDRjrFPRJoV80ABmt00ZRNkPJyPC17/l3dNgf+xOVpVnpu3BFXTpjS5b3UFblwqmTsz10jExp2NOLayJ8no0Ny5a5q19mFyFKUxEmUDbwC53v2a/Wd4vL9Bz2341oDdKZzaXpA3cxnq2UUPSir8iAXOr4mEXyXup+spBGRHlaQPNBXHa+DEVvntINOdg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(66946007)(66476007)(66556008)(86362001)(38350700005)(36756003)(6666004)(83380400001)(6506007)(2616005)(6512007)(1076003)(52116002)(316002)(2906002)(478600001)(6486002)(5660300002)(8676002)(4326008)(38100700002)(41300700001)(8936002)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?PAqQWtT6gtfvNV4rmirD5xMZ0glQa1mJ0x8wMrO3x7QV0eq9V3AIl3QjwFuX?=
 =?us-ascii?Q?/Vq8VIktM8rohbLkf94lcwQCHo1SM8RdSYQJG1zpvNwcbudhezdT+lxQHaUf?=
 =?us-ascii?Q?2O/h+xqe0Mwos7pf1RbS8oB7R8lH1Er3qIEP1gJvXPXTWnCaa1fbGXhoDq4q?=
 =?us-ascii?Q?ftJFNbTy9tWBFYoITug2TvzK6YU7RuyQgAkRbNdgFqRuiJ2P+Pa9TCkD89L3?=
 =?us-ascii?Q?dUWGfOe2YXq7JwJ5Zs9s7niVfpd7P8ldSZrxjupQ2JOCNkiVS8T81k65wCx+?=
 =?us-ascii?Q?7QKJMZtzWODuVVVWlQ61nMjBOIFeYZsAqlTJQ6WpHsB3qjm2LIR08g4GNl4K?=
 =?us-ascii?Q?0cWldLPq2kPeX9MMv9NubJjwhvIt4VzsjrnU2Q4eHeZN5uMK3uh0v1GY60g5?=
 =?us-ascii?Q?9X+s48us2TuUxl5xKG+325FcDckzvW9lnLhZDZVRghAMrONN7MeXa0GLqqRH?=
 =?us-ascii?Q?ITVdtCKuOvACfofnIfi6TDY2U+NfL5B3+pCofhX/djSdtP1rT3PeI2to7C7V?=
 =?us-ascii?Q?T/10xQtiPCfW15Czk+MCTo983KpJzsJTbDWw6kJxX+WaM9rR7YzUh7z86C5/?=
 =?us-ascii?Q?11gfaQ86ul4EFML9iG6i0PPihpN0A2yiOZV5MnpFq/vKH8ICGYTIo0Zc0iDW?=
 =?us-ascii?Q?uNLvPN1ZdGFjq6K/G0qmMqgPQXS5qnE5FdzCigkKDvlHMd/MkZ+ya611ERfQ?=
 =?us-ascii?Q?cud3x7sIfLm/mTJKlyCIMmKvyHh8v1+qNyGmn5B51sbZtSHfC9m2mpaboidv?=
 =?us-ascii?Q?xMUrKDeh/mKKDzeU/NWn3Sykp1H3GLcE/u2aq6kCYuK2iJC/gV2dVP5x4oUW?=
 =?us-ascii?Q?+WVmdLJ52ctdONJoPQv+qEiptlFEHJTvcbJe1NyqrpAg7F6Vk5OwpINsPdaO?=
 =?us-ascii?Q?Wl7HugVpnwq//w+ZllwSuBVjuxbM/G7Vw0uDA5j9YlCzWJFZGAsRdkQ5UXhJ?=
 =?us-ascii?Q?dQ9a8GcmIFKwgpqx8ui7MiJ/8pN6QNdLVwy7NRHkwgKp0L8T0w+AcQGf2L8K?=
 =?us-ascii?Q?HvCGt+Kf+p0IX1BXFjeTBfT2JU6fe6LgN5tJD6R3/S3VU93HAOEVnzZQi+jN?=
 =?us-ascii?Q?dxHzQK2+OeqMhkQ+13BQl6a5Y0dJ/wcgFaDxe9ZXMTj4OQhj4x5d9yLxX50g?=
 =?us-ascii?Q?kQTKDSgHDnm6BYZ0S/iQwRioqyCsO9DB4/djx3TPqw7St4VjUDMdaBNetLW8?=
 =?us-ascii?Q?lJongxkDdyrbplJmT/zr7OhGJ0YX9MuNpstnjQI85hrzkIsLzjUiyQm/gdMc?=
 =?us-ascii?Q?nHJt0M+u3t7u6C6h6umioUcirEROn/fsO1DaaEDw9gTlwWSlbh+xatbWXMIj?=
 =?us-ascii?Q?RU9ust3HmVvvRNlLMEN/OHUJhkmNT7Gja40mQ8zcKWWmTQ023LYyE/yichKv?=
 =?us-ascii?Q?poyqg5ZUX8y66JPZ2iB5cRKaKExFTFYw6Py2weqEQ8gbykSbQJoKHKCQKWr9?=
 =?us-ascii?Q?Po3dwtNce9RR9azMgpKMuOEkrd0BDoLSLIQAw08XwSN9kYCbGMVpSNaf0pH1?=
 =?us-ascii?Q?vp8ucuFmyCIomxexhrJuGiuRwH2Quh+8RfsglF4kIG7tfZPEZ7pWsAEIZuFl?=
 =?us-ascii?Q?4tPyYgIs3UL3tlgulkd/gVdbSvS4pafQSIxnMeBr?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c59de6d5-f730-4a10-a7f9-08dbfc9677cb
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5152.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:18:59.0377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nI9v/0kZURpBpj5fB4tr8ej+dkaxQhN4tc5PrVXwjpQe1ruQiYMwDNI4UEPrs8InLiEX/xtEGFYf8mu2mtCMmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7880

There are 2 Type-C ports and 2 USB controllers on i.MX93. Enable them.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 .../boot/dts/freescale/imx93-11x11-evk.dts    | 108 ++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 2b9d47716f75..42b1ea7d5220 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/usb/pd.h>
 #include "imx93.dtsi"
 
 / {
@@ -103,6 +104,70 @@ &mu2 {
 	status = "okay";
 };
 
+&lpi2c3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpi2c3>;
+	pinctrl-1 = <&pinctrl_lpi2c3>;
+	status = "okay";
+
+	ptn5110: tcpc@50 {
+		compatible = "nxp,ptn5110";
+		reg = <0x50>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+
+		port {
+			typec1_dr_sw: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
+
+		typec1_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			power-role = "dual";
+			data-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 3000)>;
+			op-sink-microwatt = <15000000>;
+			self-powered;
+		};
+	};
+
+	ptn5110_2: tcpc@51 {
+		compatible = "nxp,ptn5110";
+		reg = <0x51>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+
+		port {
+			typec2_dr_sw: endpoint {
+				remote-endpoint = <&usb2_drd_sw>;
+			};
+		};
+
+		typec2_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			power-role = "dual";
+			data-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 3000)>;
+			op-sink-microwatt = <15000000>;
+			self-powered;
+		};
+	};
+};
+
 &eqos {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_eqos>;
@@ -155,6 +220,42 @@ &lpuart5 {
 	status = "okay";
 };
 
+&usbotg1 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&typec1_dr_sw>;
+		};
+	};
+};
+
+&usbotg2 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	disable-over-current;
+	samsung,picophy-pre-emp-curr-control = <3>;
+	samsung,picophy-dc-vol-level-adjust = <7>;
+	status = "okay";
+
+	port {
+		usb2_drd_sw: endpoint {
+			remote-endpoint = <&typec2_dr_sw>;
+		};
+	};
+};
+
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -221,6 +322,13 @@ MX93_PAD_ENET2_TX_CTL__ENET1_RGMII_TX_CTL	0x57e
 		>;
 	};
 
+	pinctrl_lpi2c3: lpi2c3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO28__LPI2C3_SDA			0x40000b9e
+			MX93_PAD_GPIO_IO29__LPI2C3_SCL			0x40000b9e
+		>;
+	};
+
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <
 			MX93_PAD_UART1_RXD__LPUART1_RX			0x31e
-- 
2.34.1


