Return-Path: <devicetree+bounces-12804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B421C7DB70E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5DEB1C20928
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A6E101C5;
	Mon, 30 Oct 2023 10:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="YOiIKVTw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8F4FC05
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:00:29 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2058.outbound.protection.outlook.com [40.107.21.58])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B16DE1BFA;
	Mon, 30 Oct 2023 03:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxMoh2YJZMcydYvrOCvwAYS2C0xMl6SawD+Mdl0rfLB7ZNLlld20z/e7ldgffih0tLZ/tblVeHL7+s67EpiGmzikrHcXjvLf0k+9CtPN+819pQWLcA9Fm++9hSbwyPfPRJ42F33MNeACEA9Me/aeHVcDEiaEGju4WvhH10Qsaxy0DQ7Dgn7vt0tFHnN0gVjHJj3nSmCvyVe6z7Fx86Azl2iG+kAe+4eW8eqGInHDEiNlF4gOBj/ZM+qrRnNCIsPa1t6V4V117yAtANjLZo4EC93MtSwPaWI8tJ2A4219EJBwf+6tnqFzhAX+fmDUqvSdBCK/PR79Gtmy/QxJZv1Qrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ooInUKYhlujOhjindkRtW27/T2+Byib8g/PKDo99Fw=;
 b=IZrh7rky55+Ez/OrcwM38lZy4CnGpOxhnR8YgCe9uAyGmYKgGfF4bHQ3WBk7RX8PdqLv4lmnjQEnDiJCoY1jG5Fh1/SUhAIzwN4BYiou/J7yRpnSInvrtbv2ZNnEl3yliObI2IVuxV9og1Zld8us57yk775a9n8uWflAz+GChZ03QvLx5JiLfAeMryBCfKNLz+vrbUk7frYRqdqIQifISzYJAbzyklY8zrl0D6DOB3k8fYunAIvQQRtfxhIU38OpqXJguA7+AZbCXsAcYiutHey7E19QWBRdqLG01STEg1bHBZDj7Uv4Ab0I/BjgjDc3pvFD53V67DhLBPnlBc09iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ooInUKYhlujOhjindkRtW27/T2+Byib8g/PKDo99Fw=;
 b=YOiIKVTwj/udy40yuLbGLSUXw21jrMcimCR1r7Lmff7ikU4vic/jmaxailDdd5l4GiT2iJno7S4YMr61GWZy9EnFyTqJOdcNWUH17G7m3mRxNZj2oB7VbN4Vegxo2xTn9AHRDRiW4ZsdHfgKsrewob5YbrHRnYKR9N5C/tgcPso=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8630.eurprd04.prod.outlook.com (2603:10a6:10:2dd::15)
 by AS8PR04MB8513.eurprd04.prod.outlook.com (2603:10a6:20b:340::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.16; Mon, 30 Oct
 2023 09:59:50 +0000
Received: from DU2PR04MB8630.eurprd04.prod.outlook.com
 ([fe80::9ba:8e4f:1465:9351]) by DU2PR04MB8630.eurprd04.prod.outlook.com
 ([fe80::9ba:8e4f:1465:9351%4]) with mapi id 15.20.6954.016; Mon, 30 Oct 2023
 09:59:50 +0000
From: Pankaj Gupta <pankaj.gupta@nxp.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	clin@suse.com,
	conor+dt@kernel.org,
	pierre.gondois@arm.com,
	festevam@gmail.com,
	linux-imx@nxp.com,
	davem@davemloft.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gaurav.jain@nxp.com,
	alexander.stein@ew.tq-group.com,
	V.Sethi@nxp.com
Cc: Pankaj Gupta <pankaj.gupta@nxp.com>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v7 04/11] arm64: dts: imx8ulp-evk: reserved mem-ranges to constrain ele_fw dma-range
Date: Mon, 30 Oct 2023 15:28:42 +0530
Message-Id: <20231030095849.3456820-5-pankaj.gupta@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
References: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0100.apcprd03.prod.outlook.com
 (2603:1096:4:7c::28) To DU2PR04MB8630.eurprd04.prod.outlook.com
 (2603:10a6:10:2dd::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8630:EE_|AS8PR04MB8513:EE_
X-MS-Office365-Filtering-Correlation-Id: fdbf59ea-f00b-43db-3eaf-08dbd92ef506
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	QkjKCFfEuKEKfGzYjS591omXozceLFrAXy294Z0wI8iYQ2HkrwXSpMC89GBEg4zfdt8B+evMVZfboIRnq8oNceEV1Nu7mFPviphyFQyWyE/Ht7JGLgtZKNQvisWCDiUDRjgGuTyafqI9ZsujBCejtt9EVJhdyvBQraKgyu5fc+jmu4ZFVGmGnRharN7oBJwqCPLgcUchmx+SyIlqHxz9D1NPdyDsNEi/pOKFAvSqG5drr/cKhImWkrJgLvo+T5aOAngf7teVMu0jTIzOhdhfXkoZXip55EeKcCxP51myEYZMsyc6RzDxuKng5uKlZ+RdMDXMPQK3DsoQLFYcMLhyYDI0+k3q7YGaQQa21LQNNK24a1yri0M87vqEDEPaiHY6wvsntp4kXl+tJMjuEHOoTXkB7V2zk4WKQ3xYLy8EBONpeLEm3/Uh2RWYDV19QW8K/HO1DPIN6M66R/QiWGMYF4TkQgBFbrUryztBYgGHwECLMykiP18OZuASItHKkyUUakXVgVQLVyaNoKd94IjTNF/Jdqv5KLJ0AlLZwP7Dvg7tQKEOIEp6AZv0EMJ92pzzlef/r6EIkjhhK5vUNCO2Cz8zMxo1/H4dxc9fewbTtVsyRNavXDb9C13IRNiviLFFCCyFq39hGrfePI6ECs7IWRXIoVJEDU/yTBrumwxNBcI=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8630.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(478600001)(6666004)(66946007)(6486002)(6506007)(83380400001)(36756003)(38100700002)(66556008)(1076003)(2616005)(66476007)(2906002)(41300700001)(26005)(52116002)(6512007)(44832011)(86362001)(38350700005)(921008)(54906003)(6636002)(8676002)(4326008)(5660300002)(8936002)(316002)(7416002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?5gwHXxNAJykZhnTkv1p2zB0fVPCfeXV4HwKyf3HiF8pljMCz0aaNRBgv8jwR?=
 =?us-ascii?Q?xKIMPfgHkz91yfeBuQAEyeNK/dyWl0eriJRrSZh64oLfkqxlq0JXdpcibm60?=
 =?us-ascii?Q?beg9Xft0wsu8fn8jG1bPWRuMOwJl4CW0d8A+80dJp0dOp867z0XKIuEwNS4W?=
 =?us-ascii?Q?c7Y58GAW3bs5WFsT6rkWW/rDjYDmSLFhqiuCzAQmRFnDyK9xnV3OvYlmUOyZ?=
 =?us-ascii?Q?/oThkWE0t8acJ8Yt7tfzqWHhTVx/OLfdByFIw8/zOnxCi8F9mbbA7oMA5EWO?=
 =?us-ascii?Q?VulLPoQMgBIoO7PNgmjJdPq9IunVTRIXZf22ZUNtWwjqql0yX9UqM4H2wIat?=
 =?us-ascii?Q?V5dnURDwFBYhyO7a5sXhkI/tPVFdypEPucvByIBprGKiP3sgHXTp63UTqA3F?=
 =?us-ascii?Q?SSb1qMxWrlhniIOGiuj+BAr8Fhkk6hi4oktw/DMFHYNmadUoTbnvQGJ6W2Tx?=
 =?us-ascii?Q?YUrTSwtBjwzj6/RM80Q+Oc/Kx1/e+QljdHz4ChpH9C3Pd1oI38XZ5G2c/Htx?=
 =?us-ascii?Q?7oXCbWBBMoXRUf54k4aGeAmjo1WX4S0l9mgcpCcu1CwIfVDjFoTKtqfitz0m?=
 =?us-ascii?Q?GfHZMOvOQGsahbFOFjKKQRRHW70VypoC/XJ3e0mxIWnT0VCKZjXYhMtw+7eP?=
 =?us-ascii?Q?OgoGb7WbnwVxt9xobLRmttEML2o4rksL7qs8no7KMWnKuKdNEPByU58HHZuy?=
 =?us-ascii?Q?gvJ1R/c2PCk0MpgMGR1XZBQIDEFPPl5zld9iUaAYQRyLEjkY2vvo+5EJMs6v?=
 =?us-ascii?Q?u+5vBJMSsPlL4s61eGYlbDs1wXom0oqiOXHMh+dhNV24MBSfeK5Ly7LmmrCD?=
 =?us-ascii?Q?gUleI7YCJCV2XX+LVElBieIP/wIQM6JBM6VjenhrnHhl6FzVRVn+wbmffK75?=
 =?us-ascii?Q?Beb0Ec6N5lJAeJQb5JwSi3Yb3GMpwsQVRzAZoXCwLEX2ptzIxYGQ+v9yh1qe?=
 =?us-ascii?Q?fgOa6lwrFxg1NI5LulCvyWxIPDJYViZgaFnx87J91fHiTUVb4MRK2pxpOeTq?=
 =?us-ascii?Q?xyDFZ8zj0z4/7zic/Nc9UWUo8S22RUT5PNkhQsvSe2Cm6TabSiSywH1RZRFk?=
 =?us-ascii?Q?ThP8igt/DByJgrDsuF1D6Wgp/E7KBokGldOOZkJF+pVP6zkqFC6iTvcDzVI5?=
 =?us-ascii?Q?PSqAOimMNEwsDAHGwXpIIfnuj58UNkWykNp7eca5bYEgV/6AP+LBE0oeqork?=
 =?us-ascii?Q?lsNiI/J78bcoHCe9kEy9JHzkd/PqkCLxrmbblkb1v9Y8xDDqtGPuoSzXSxqn?=
 =?us-ascii?Q?Bcta1IWDN854sgbjSBl0WYw1MuzMw2qz9nbWzawWPFRvfxIq0eCh+SA37JQR?=
 =?us-ascii?Q?F9fN/ytPxcgi5bC/oZmK64VzrAdSK4q5GH1VmH13jEeRhphETeov7RHHOys1?=
 =?us-ascii?Q?rMYKIbqYrqjKNFLQWC5uDeyR3nNzsPgf6iBCiwkRDcqKa30MtgZG9tQTktV1?=
 =?us-ascii?Q?p0ELeyP+sbQDDW9wpPriS3jSrKqG/dgLVdtxc5sXYlYcl/5I0YXZMZIRJ1/r?=
 =?us-ascii?Q?rXovcKMnzsB+gWiuUTjaC+le42GPsDmTFDdggHmsOdm/FjM1aeXmrZKJbihI?=
 =?us-ascii?Q?6PPAWftzIE8EHpKG7Ov/sjbHQkNuYeTxHoAdGcYD?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbf59ea-f00b-43db-3eaf-08dbd92ef506
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8630.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2023 09:59:50.8638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5bIYz+C90jnIpDjapDsKMcH5FH/VTd+1XM7EXxL79Y38TL/5AGp4nqvf52qJqL9taL+FK/OYDZQO3cGe5WvKDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8513

EdgeLock Enclave are has a hardware limitation of restricted access
to the DDR memory range:
- 0x90000000 - 0xAFFFFFFF

ELE-FW driver requireis 1MB of memory. In this patch the we are reserving
1MB of ddr memory region from the lower 32-bit range.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
index 69dd8e31027c..d5cdce62a760 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
@@ -19,6 +19,17 @@ memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0 0x80000000>;
 	};
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ele_reserved: ele-reserved@90000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x90000000 0 0x100000>;
+			no-map;
+		};
+	};
 
 	reserved-memory {
 		#address-cells = <2>;
@@ -146,6 +157,10 @@ &usdhc0 {
 	status = "okay";
 };
 
+&ele_fw2 {
+	memory-region = <&ele_reserved>;
+};
+
 &fec {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&pinctrl_enet>;
-- 
2.34.1


