Return-Path: <devicetree+bounces-25323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A885812E68
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E5221C20AB4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFB83F8F6;
	Thu, 14 Dec 2023 11:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="nTJ3iUbo"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2077.outbound.protection.outlook.com [40.107.241.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71F3793
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:18:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fatOQzbCcqZZUNTQZ4qelEvJ/+gGicauE+kKSWNtzW6NtaJv09XTl/o9IKrMa5JXxNq4lMci/wYxLz0mZlsVRlN80kxGq8r7DL8/eYN5Nf/q5KOaoU6Mpa2AEVLCinbsZm5PHvPqpLZlIDpEgNXY+qJmlRCqM2Dc21p7aVvba9lIEL/rSq8uyCfjPlRXsT3XMFIr83AoUjycWlVKACMqoikid8bzAtNWsYwmx6wVKqSTGJ/sLrV3g+TyvuuvcUQKMXuzqumQCYrqtlO3QI4oucxRahW34MveIAWcll86w1pQMBKvAhAuY9Yr79WU8IY3g1o+d737L8eEFZ4bhBCtLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xF87Zy9FUix6bcz7IZiEqdWLm2hQT/zHdEN1ZNfYuh0=;
 b=VKVjcafAP4apXDXZ2D3w0mjOpdGr5pIc3hRTn56/vfmNRN94ddvBQ50xCvP2gNLsHAK4MLTgruVt0RZoSYaMpRc+m78Xy41w3y6FAURaC2hDN6tYFHpXfsrVfamZEDEsDxaZ+0+D/KqpKxjnK6udP3WTCEtBSMuZEMcpBI4qv6kMz+kUdOYsLNU8K/4b/SaY4oQcigE7V+6YSkdpCoUE8IifDo7hu4KCSpsgN4OJm0Qrz2TuOr+BqwJKwmG/5OWyuSfdmlzzrqvAkfZQaE/pebKRqJPDef6m7LsJk34A9fT2jrzukekR2b6HcTyHg3u5qzJ6c3UXRVQmwTwjIwZOCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xF87Zy9FUix6bcz7IZiEqdWLm2hQT/zHdEN1ZNfYuh0=;
 b=nTJ3iUboO8JYRe2zABBnW1AzThh4HwzvqWrQ8at9fGaS7hY+4pP5JNxRJbyNB7T55ziBamRXrPgaBvEpdSgaRdXcE8wiu5IW4UmvaxCpKmz37HzqLdjkzeJTvGk+p3n3gsy4iKJDqfGqeElPn8OV2J7FtDB77GV7HLrTl4+TwBA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by VE1PR04MB7438.eurprd04.prod.outlook.com (2603:10a6:800:1a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Thu, 14 Dec
 2023 11:18:49 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 11:18:49 +0000
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
Subject: [PATCH 1/4] arm64: dts: imx8ulp: add usb nodes
Date: Thu, 14 Dec 2023 19:24:39 +0800
Message-Id: <20231214112442.2412079-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: VI1PR04MB5152:EE_|VE1PR04MB7438:EE_
X-MS-Office365-Filtering-Correlation-Id: bd58ec64-473d-46f9-6916-08dbfc9671b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	1ffUdiHZkFPSDPc4k2dO+Qw9tlNAI1zC/sWcSFx1xf6/0Nm4U7KR+Ve1Yot9CSNe5lssWVMqsCscieeQmshlfCE7XAyt+4wwwgTb3FrN90daReXrf226FcO6clfVWmT6Q4zM3za34UM3vmCWVaDQ7Xyjz+AZ4lVDYHGBR0I2UZmvU2omRD/Sk1KD748mqC5KjKzu5VtT2dsAmryYs6e/NaKZSwNtLbj4cQte9C+HRQ0dZhebEtU+39yYH/iSQT3QxR42tsizrctySDU/7Ba3iggKQ38gr1Qg1FUPznvJFwf5YubeFlRJob4s2Bx77mmchTDvjx6WpHD7b+ZsREVBP0o2wpURHffYfqKlIGbe8drp3OzPiiaUuNoametGayAAAS2471lxSvNCOg+SMc2SLd7tSR0aQ40UT89PkJ6AKv2gc5+fk8sAFhCH4JnuhbqaDHi+K7wTsVNF9f5CtoQFrDPs/XmSRlIw/4c1CbSFJxTfXTZBlzPsdERoumll8Mc+IqFUol9e+2f5ZNE6S/CCT260JmPysGJahNPbttiBZTlHYwFDWvWGa97FspJv/rfFjmleacipjyoPgeEnlbZCHWk64ad5Ph8wDcoyZ/4rynnI/NRThoAv7oUeU4Qg5Lxjd7cG2T7gNAjnHY407bmoVQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(346002)(396003)(136003)(39860400002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(1076003)(2616005)(26005)(6666004)(6506007)(6512007)(52116002)(8676002)(5660300002)(83380400001)(41300700001)(4326008)(478600001)(66946007)(8936002)(66476007)(316002)(6486002)(2906002)(66556008)(86362001)(38100700002)(36756003)(38350700005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3a9G3bcjRVoST1aP5aj5cQTM2VPP77YeZqI081QydpbHJeAZJRqDCouXcGvf?=
 =?us-ascii?Q?8/EC0NsyrWjmptm/kQ9frm7p22hdt3MPst2vGl3VlDbXjsipoa0bnzECDTLo?=
 =?us-ascii?Q?mFuSvrCJ/d+2d4WIgjKMY7TZUtpUCP0HRwukk1EudXTjV8rWFwizX+cBQATI?=
 =?us-ascii?Q?budpYRxk9zdWR8nTdgMWPAxgmaoPZoZkalbhMeXN8A8gHedhkfJMeinzlMHS?=
 =?us-ascii?Q?pfkWtyK0FvCk1L1IeBlpiW4SIFAHB0EQRagmUEhknUmrcymrUu9+b5sEzq5x?=
 =?us-ascii?Q?56S1GEYx7sCVIDWsXncs1BxlKhfx060jhrpDf1X3d20iz6otRc9x30ZPyWlw?=
 =?us-ascii?Q?VQrPospl1tML6ZtDkt2j+TYMhwordUT5uIoH4RSIteDXdcI4DtNIfzwxPtZa?=
 =?us-ascii?Q?C7FqgFGGo/PKGaCFNITwPVV2Dx1tKU/FXybYKI6Tyn7CitZ+T01/s8kTsx/w?=
 =?us-ascii?Q?RZ8MFyC7Tc9RceqaJBv96Kd0elYVwEFXkx3RzcLU9GRYsglYT7cbKdVBNL4c?=
 =?us-ascii?Q?fbzrmUQZ4KMo9jhVNX+VneL+uVlA+unKhKOtJ0yCJCb/CQ0YtixsG/HNAL2H?=
 =?us-ascii?Q?PSGLNb6vla+UN2McUdD/nELqhyVEK+zZTZ1FtjIkzMQw3OWXt7gZbwPhq6v2?=
 =?us-ascii?Q?Y/r5IWgYk0AX3ogEcZl2rsNP5xzA8xRbgT47SevPYGssWg6z1TvwxtYCFv+j?=
 =?us-ascii?Q?pN4nQilTnLxXu0m3K2subuCImpQERMHbQSBOagCZ/z0rhIKeyzHKWJJReF37?=
 =?us-ascii?Q?XpbIJF3obsdPE7ng9vqJdtcLZuePYQxVL9i3d9p9NrdbYbodWiyo8FXD7Dhw?=
 =?us-ascii?Q?G+UpNPiMTwHlRg4aq/0mJJU6ReL9gnmarKbZ04IxtDHFzAvxifJw8qVZRvrW?=
 =?us-ascii?Q?x5OXv0U0C8COS+Ekf8IXG1SZyejNHLtwTuJgbUn4TP7UzNRSwlAz2I2RhwnX?=
 =?us-ascii?Q?sgMlgiREu7TWO9eVR7t+LbCxa9IkZygMHl7AP7tCi2L45YuZjuEaydOJNy0K?=
 =?us-ascii?Q?PoEiFm6/iz7hrDnhPMKFnpIIp/x5UScti+E3fRSC6HBNeAH0DJJzs7j3Tp22?=
 =?us-ascii?Q?ITlLXLc3IifMjUubDdudJjwFWrKxGZUqfLcYRCVkAqUFe0o5ctBoV9RhKO99?=
 =?us-ascii?Q?jxovZ9DUtCmrpLwKKS7qbnMf3JcMg0o1kX3G7o+tl5tCRwZODZbmJeoDB70T?=
 =?us-ascii?Q?zC1O8WiT0IAgI/6wFWwk75P3u25Xg5imCdRb9OTTpmDSJsMOQCPQOIOfocMc?=
 =?us-ascii?Q?3rW+lfiduP5q13rG0BXKcf/QWHvmj0KRhs3SnrAOURrN3MMbrEtX2hE7e7ih?=
 =?us-ascii?Q?kcI0RWTPFSxa0JpO3Iv08Ngqx1U2I8zJCaTsiVXXjwnzwlwBSIJyc0BZmBX1?=
 =?us-ascii?Q?YicreY05unsRfN6+MZ9wN5SFpajimPfzrE4nKiI2UXm22AWU4EmdyJnypGhe?=
 =?us-ascii?Q?U3Uh6AxG3O8zXULoH/QVpTbFn3K79KGv5uaD/0UVAFhPGhKSR8F3z2EguEdL?=
 =?us-ascii?Q?ywTz6MfVmdwN0LDwI46PWURKiWakkZ7JShSlKTtzSLFjeH0+hhSWaVQNi2Vt?=
 =?us-ascii?Q?Rwcr4u82koX+3LCNC0QQX7rHSxGbzL6kta745wd3?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd58ec64-473d-46f9-6916-08dbfc9671b4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5152.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:18:48.8185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2rnFxm1R0TrtJbks/gGnDmi9MDVUPaF/uSfzM0eSXUCkHW9zGjBVdZ2W4Po/DgbYpm/HwjACF1xeiqwkfiMQ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7438

Add USB nodes on i.MX8ULP platform which has 2 USB controllers.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 64 ++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index c4a0082f30d3..ead1f57e08ef 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
@@ -28,6 +28,8 @@ aliases {
 		serial1 = &lpuart5;
 		serial2 = &lpuart6;
 		serial3 = &lpuart7;
+		usbphy0 = &usbphy1;
+		usbphy1 = &usbphy2;
 	};
 
 	cpus {
@@ -472,6 +474,68 @@ usdhc2: mmc@298f0000 {
 				status = "disabled";
 			};
 
+			usbotg1: usb@29900000 {
+				compatible = "fsl,imx8ulp-usb", "fsl,imx7ulp-usb", "fsl,imx6ul-usb";
+				reg = <0x29900000 0x200>;
+				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&pcc4 IMX8ULP_CLK_USB0>;
+				power-domains = <&scmi_devpd IMX8ULP_PD_USB0>;
+				phys = <&usbphy1>;
+				fsl,usbmisc = <&usbmisc1 0>;
+				ahb-burst-config = <0x0>;
+				tx-burst-size-dword = <0x8>;
+				rx-burst-size-dword = <0x8>;
+				status = "disabled";
+			};
+
+			usbmisc1: usbmisc@29900200 {
+				compatible = "fsl,imx8ulp-usbmisc", "fsl,imx7d-usbmisc",
+						"fsl,imx6q-usbmisc";
+				#index-cells = <1>;
+				reg = <0x29900200 0x200>;
+				status = "disabled";
+			};
+
+			usbphy1: usb-phy@29910000 {
+				compatible = "fsl,imx8ulp-usbphy", "fsl,imx7ulp-usbphy";
+				reg = <0x29910000 0x10000>;
+				interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&pcc4 IMX8ULP_CLK_USB0_PHY>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
+			usbotg2: usb@29920000 {
+				compatible = "fsl,imx8ulp-usb", "fsl,imx7ulp-usb", "fsl,imx6ul-usb";
+				reg = <0x29920000 0x200>;
+				interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&pcc4 IMX8ULP_CLK_USB1>;
+				power-domains = <&scmi_devpd IMX8ULP_PD_USDHC2_USB1>;
+				phys = <&usbphy2>;
+				fsl,usbmisc = <&usbmisc2 0>;
+				ahb-burst-config = <0x0>;
+				tx-burst-size-dword = <0x8>;
+				rx-burst-size-dword = <0x8>;
+				status = "disabled";
+			};
+
+			usbmisc2: usbmisc@29920200 {
+				compatible = "fsl,imx8ulp-usbmisc", "fsl,imx7d-usbmisc",
+						"fsl,imx6q-usbmisc";
+				#index-cells = <1>;
+				reg = <0x29920200 0x200>;
+				status = "disabled";
+			};
+
+			usbphy2: usb-phy@29930000 {
+				compatible = "fsl,imx8ulp-usbphy", "fsl,imx7ulp-usbphy";
+				reg = <0x29930000 0x10000>;
+				interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&pcc4 IMX8ULP_CLK_USB1_PHY>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
 			fec: ethernet@29950000 {
 				compatible = "fsl,imx8ulp-fec", "fsl,imx6ul-fec", "fsl,imx6q-fec";
 				reg = <0x29950000 0x10000>;
-- 
2.34.1


