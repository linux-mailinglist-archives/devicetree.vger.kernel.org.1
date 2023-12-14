Return-Path: <devicetree+bounces-25325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12688812E6A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:19:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEE2F28271F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F8F23FB18;
	Thu, 14 Dec 2023 11:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="hOCe9tVU"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2074.outbound.protection.outlook.com [40.107.22.74])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F9D893
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:18:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N67ypd4UAd21S+b+/XdzKSr37X6CweXoZj/tfzdiz6zFaTwBci/fgupD28xpZWatED5ncj8TrW1O5t+JIFzErhJlxyYEwIsVEzUz+voBxQRdkajgMy6kxbjLGnZ+RpCJzUgQjnEKQksawuiS0miRgcJa691a34xRIYhCDbTE7C7RpE918iVAIp+fa6hMXDwqmGvhd5yrZyIkpYRpRhxULkiz0B5JA3VUrzLCHWHCOV9qj7yCa678WUXLZrjReTPBCO2WU/WJWRv7ntkARw12feLxjLGCRkEOk2rMZnzfHVqnJdv612GwtqsPuNxzik2q+dYyFk4RHDlLjTFH3ItHIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JCE6UG1vpxz5cxzSVyvYM3JzksLF3CN+wbeHStW7XgY=;
 b=P1/HYjRbeLkuzzNdXVzTbbE48aiwvmu5kXLBUIauMJbM6vUrq4WMyvbPK0P0cEgoZkdNUEIBSt4IYbsx1xYN4PlpfDB/LQJflpUiJfldH4euXoShEEhPGzEpU3s3XbVyJsmJgIu4b9ikcAyR7ZRIilhfXXp5nZt2i4JfJpd5YycO/Q+D5RGVNTmnizVNbaLWkMltdco95FGuFxxSQ+TGTEJuXwIpFVvow+p0Rd20HLY9Nj5lsGLQ9lgm/CORodw9BegdJwrool9RmJF6i63a9fohGdysLsZE2XojcqDhtg8OKeAhB1MH1gqGNNW66bubZ5mn5TN6+Zwx+IpoKGexUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JCE6UG1vpxz5cxzSVyvYM3JzksLF3CN+wbeHStW7XgY=;
 b=hOCe9tVUDWAK3xstq8UPsPxIpvyYI24/1bGq0khmtBHHEn78zpvJCb7C87epKpcMn4tyNsztgD/nxvF744YGVn4R0jz/XDGwqn6CGrG1B8zDe7uP5jN3pQSUuXTNHM2ggaURDRlkMGZ6FjHVAzxlMbebx52JRBvxM4rlfKInDvg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by AS8PR04MB7880.eurprd04.prod.outlook.com (2603:10a6:20b:2a5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Thu, 14 Dec
 2023 11:18:55 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 11:18:55 +0000
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
Subject: [PATCH 3/4] arm64: dts: imx93: add usb nodes
Date: Thu, 14 Dec 2023 19:24:41 +0800
Message-Id: <20231214112442.2412079-3-xu.yang_2@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: de551c79-548d-4049-d449-08dbfc9675cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	JKd+kXB/66+AQ0uXMZRVTmOG9fC9yEdOSfVRPpyXnmSI+Ti6EyQcrGK4wEWIRhKPHHi4mTEmkNaCpLzgqizAy+2onHFRv28xsaBQLBtNSPIv37H6CmLdoZ2wXkv8Hpk+0peJVp5fy1uOo2+YClGSWv1tCCBJ4ufrA2CKutov4y9oJzbG0DQu6SlB2NXVHmySIbB7EcRMILO+CUj4fh0CCQUuhisErWWF6U6znTfnyJ+WZ6rc7o8RgQw8KaFdKJeITplbqXzYTnabvwYQYY/SEbBcYkGYNlq/li/qnS7mAsSbhiRNTeufThOpfxdwEui78BqvKysaXazfD7OTvOxeMmmwjXUsc9lCyRgG+IlNEA4fgkqe7je+4CrzG9oNa9uJ45FVX1kGqpJ3h90VwNAtc9QZtTOR/UQolLrkuN3wrkbCymkMi1BO1dAf5EL/ykeYJBbwzzK6hr1D1xG62BojqlB9Cgd/4c5ysvKOaVvUD6SCtY60Gfgiw0d+e3HlemyRxyOhj7G/T66rE7KCqyLalYyNPzXGd6U6g3SeGVJatbaOdK79N40osYNC4Z3dOOlMSJ2uzuRMUwAK7npB6bn7WJB8Xv65VaVdLYgy88z1t+GtzU5gH90OI8XdWJBTBGXZ
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(66946007)(66476007)(66556008)(86362001)(38350700005)(36756003)(6666004)(83380400001)(6506007)(2616005)(6512007)(1076003)(52116002)(316002)(2906002)(478600001)(6486002)(5660300002)(8676002)(4326008)(38100700002)(41300700001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?SlnvxMBLroK1WIwYmoyKfgiREdWqY+yi/7ncu1tZvkyn/a8jaQDdmz5EwRhQ?=
 =?us-ascii?Q?3gxiaBh5Exe7sAOjWXZfGZENAVr58wrzQ7UtaaErINme2H+GJRaEz7AUmgPN?=
 =?us-ascii?Q?DTb0yIoMmHAsjdcXudzhbVaoqfbBUDt1UP2mhXlgarUs0SHcyeJ/hKMCiCch?=
 =?us-ascii?Q?TAGuslcLWYWtHV41Pq8rZ346fkwdbVrHOAwUsmvuh6i4Bhi3gtZFTNVidakx?=
 =?us-ascii?Q?vJc7yMaljnZOjGfSDXfs67l5MtjuVmHPNHV8+pFjizYrzZ8GNBcwqm4pkXkx?=
 =?us-ascii?Q?zhMR05ufb/N7fpR/lI2oBw//nLqaHZcaPqN2sJ4u8RDEMnGNW7hIHJe8Utey?=
 =?us-ascii?Q?eBprurW/ilkhhuDyHImAlC16JOG5COG87tlM5Ne4/K6jvUEyehdZoqiL9Cqg?=
 =?us-ascii?Q?uBHE235D+4/2HVnejtOHj4sBZpRPrZ1DvZVuhb5QjqFrTfZGBUinFhXW2n4J?=
 =?us-ascii?Q?b+JDbLPj1qRwiRFOj1+iI/q93XiMCo7e/Bmh7uujpdZ3I5aIbLxMfpcLFyOi?=
 =?us-ascii?Q?cGZHfkA1R3l0KoH8iZF2frHBAaZBn7lYbpkAxTmDPhyCBTng5hoRitVqZVOd?=
 =?us-ascii?Q?eWRQrs70F3/68IKKixXGSD/T/ajCOWCV95EBhfAzrd7jkJJ3A7urzgq/JXD5?=
 =?us-ascii?Q?C0CKwhc65uSsS28Q2zChtxpEyQnNwhClzvx4iJuIza/v/8rve9M7iC6C0BL6?=
 =?us-ascii?Q?r4fus/frORPpPLNa1gElkCtjKLKkGttOyqNWeHdzNFcJaOqqzuCy4SqO8rNF?=
 =?us-ascii?Q?/f/q3tVzAeZzCOOqMaMpfWcYKx8OlzMSHm3bU4T8mgRGpiaprFHirjsKnH0D?=
 =?us-ascii?Q?Lysba+zDTMM6cDmKohlmcxDukVZwNfj0MHIVGbK9X/IcFwtYlMsEKkvxkz44?=
 =?us-ascii?Q?Feu8r7rQiGaYrCGxZPXmaDQrZr27NoRLGYAWYeBVKB8mBBLT7VpApKixyAg5?=
 =?us-ascii?Q?RoWZ+VAYIhL5/IwPRcSnkmpccsJqwgHRsGAeFJtdoO5xGLeWthkxAOFbFM3r?=
 =?us-ascii?Q?FBIMokC3DzobMI+oug+xg4IezNu72u61+taRb6ngdkRyw8bKaXe3EdggUdx4?=
 =?us-ascii?Q?8OvFK1dqBJW58kT8UsvKQ8WFAj/v+jwP8YeqN072v8TG3QpfKHIm4aG6hFzY?=
 =?us-ascii?Q?gHM2eFyjGzkluvqAdNIDPAAvgh6cQwysBsLX2N7IE2ln2KFUNFWwqILRQTqM?=
 =?us-ascii?Q?D0h6aP3f5gForZxVe10bA82L6ZzXK1FxeFdZabjJ22N10Zo1T5q7cpy54m3E?=
 =?us-ascii?Q?cj1kUE767bDdMGyyPYu+WoIFVXBj3dbzJ60wYJreNsfRyYIJoz/cyLR4bDOh?=
 =?us-ascii?Q?OLbqBdFWlBBQCUf33/6yDIIQjj5TWJckOdbKPSSuuuXJlJSqrYBq0fEXVjre?=
 =?us-ascii?Q?ULg6ekloPc0XqTJQXLnBnK4rm3sxBk39B5Jm69rWzQ/95G8Vb7a7wSnQsevY?=
 =?us-ascii?Q?uIfhNrVR8ze7E7HAsNxAq6Zpw+CalSqoumDthlhc0pFucZeEnnjHqRqXGqYs?=
 =?us-ascii?Q?jJjfAwgayneQtdIsiKqdnSsU1PZRzoGaB9Nw86B5gcGG/BR/MxbPCQ0+7Gr0?=
 =?us-ascii?Q?ob97fjPzFXTCkdtGU55f5WcBbJkwhIgLR0hAcUZF?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de551c79-548d-4049-d449-08dbfc9675cf
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5152.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:18:55.7076
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mk0tRlSzBNbC6ZACQx6GqdG0gzE6fhvhxZDq+slFvT6CX69Jrr0C0kTYhFsaImYVB9qWbwhZXxisj9gjHVTj9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7880

There are 2 USB controllers on i.MX93. Add them.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 58 ++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 34c0540276d1..bcf4861cfede 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -171,6 +171,20 @@ cm33: remoteproc-cm33 {
 		status = "disabled";
 	};
 
+	usbphynop1: usbphynop1 {
+		#phy-cells = <0>;
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX93_CLK_USB_PHY_BURUNIN>;
+		clock-names = "main_clk";
+	};
+
+	usbphynop2: usbphynop2 {
+		#phy-cells = <0>;
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX93_CLK_USB_PHY_BURUNIN>;
+		clock-names = "main_clk";
+	};
+
 	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -1059,5 +1073,49 @@ ddr-pmu@4e300dc0 {
 			reg = <0x4e300dc0 0x200>;
 			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		usbotg1: usb@4c100000 {
+			compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb", "fsl,imx27-usb";
+			reg = <0x4c100000 0x200>;
+			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
+				 <&clk IMX93_CLK_HSIO_32K_GATE>;
+			clock-names = "usb_ctrl_root_clk", "usb_wakeup_clk";
+			assigned-clocks = <&clk IMX93_CLK_HSIO>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
+			assigned-clock-rates = <133000000>;
+			fsl,usbphy = <&usbphynop1>;
+			fsl,usbmisc = <&usbmisc1 0>;
+			status = "disabled";
+		};
+
+		usbmisc1: usbmisc@4c100200 {
+			compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc",
+					"fsl,imx6q-usbmisc";
+			#index-cells = <1>;
+			reg = <0x4c100200 0x200>;
+		};
+
+		usbotg2: usb@4c200000 {
+			compatible = "fsl,imx8mm-usb", "fsl,imx7d-usb", "fsl,imx27-usb";
+			reg = <0x4c200000 0x200>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
+				 <&clk IMX93_CLK_HSIO_32K_GATE>;
+			clock-names = "usb_ctrl_root_clk", "usb_wakeup_clk";
+			assigned-clocks = <&clk IMX93_CLK_HSIO>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
+			assigned-clock-rates = <133000000>;
+			fsl,usbphy = <&usbphynop2>;
+			fsl,usbmisc = <&usbmisc2 0>;
+			status = "disabled";
+		};
+
+		usbmisc2: usbmisc@4c200200 {
+			compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc",
+					"fsl,imx6q-usbmisc";
+			#index-cells = <1>;
+			reg = <0x4c200200 0x200>;
+		};
 	};
 };
-- 
2.34.1


