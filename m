Return-Path: <devicetree+bounces-253846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62776D11FFF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C902830D59D7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6D833290B;
	Mon, 12 Jan 2026 10:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rSxCXtow"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012033.outbound.protection.outlook.com [40.107.200.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEE628000B;
	Mon, 12 Jan 2026 10:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.33
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214764; cv=fail; b=YhQT+BosWOzXDPM64P6pUuTJ47LLaH5vGMbAtmUHngiTxgZgUZpRmE/3smhoqbus07wfMK49JYvSiRMCNz8aSSpluNt1EsaO1FK6RGL1d4yqxeJrrCifLKFK7agWmjhCyQmKpeoy2/YqAtNqF9Fn7CD9b9XY30j2iak4qbTbfNY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214764; c=relaxed/simple;
	bh=j4/gUFjl/BnrLP2pfw66cajgV5fbF8YRebHcSBT0P6c=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bag9nB6VD90F8WMW6IZ4ztEva6A/ZYFA731FCsVERe76gZxux986WeGTNzvMZa2alSNVuClV02rINnpNenSZjSPLuSxSTPx8/vGiLoIIWPhAJ2JLywjZy9MrVynNUYayAAfsUIBK6f1rp7Y4b6bZ/QfoGuXJU/IfW4dEgjuFfhg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rSxCXtow; arc=fail smtp.client-ip=40.107.200.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Syo29BWxKqzD0rAqg2lvq197bqk9hQua2Uh1P1Td1eAMhO0uy2fyAqSNFVL0/0Wd37TUYoetTn8ByU+R9Oy/t3w44CsrofLl/2/403wdPO3U+qY43SbQwx5HZVgDT0FZFcGBt1Yh1UcOHmV+7WpMDAcowajfDy2WdVyxWQwtfSJE1DyMqJ1sSXRmZC6C825+tbBC/jPEBF4+u1PtC2H1jk7GFB6FpzADYujgmB3igniJ4wLrHzu7pFknsgO0GODrHUvBOkl0O5sixBxW2THB5VnxrMdT3AnIaXlpbuyrBLSGN+dse7stLCA1e3HShddr0sBSjfEtC43rXW4slZDytA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5d3qlcknVAG151BFB+RNl5I508z8NbOZfUOlkbYMZo=;
 b=MDR5X5telBWVZfJ+Chg/X9PxAdAouY0pW4kHff+X6xXWWy+s2GNw+0iC48Rl+6IlXLTuWHSLnXmAJT7/vpNvL8z3ywccsIhqSCMOJFR0REjNlbT9T9bg+TKPMtYFpMpJgIeJ8MLlHXT31veljxzReLn+04GVhitcyR7ABOA9/2ZP3jLsdvCjUGTy6spDr6po321ydajTiHAhWuqL+tfBGnKZvtWwKzFSvS38sieXpBXGTmxKJ4+4hS9UHYuFymUx4b7ZxzQEEo1TzHZL0yynJmynRnYMWoFI29KNVsKiIVZNGNzQcfYFevbn29kQDhbPhV1g6oWRmTNh7cMT/bGZLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f5d3qlcknVAG151BFB+RNl5I508z8NbOZfUOlkbYMZo=;
 b=rSxCXtowCpfdb4btf5pTYCWpB+SccBaaXpfK8ohkt9a3fzQ4aQ5lPL5zISeixGi+B7TrxSAcNTg6uIq+tx7u7O/8LsVKpH8Iaaxfs8KWVUEK1DETZzaQIki+7eRdKWuTcOgr7uXDISbc39T8RVHbaaj1PMM0SICOPjGrsYGhBUw=
Received: from DS7P220CA0006.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:1ca::10) by
 CO1PR10MB4577.namprd10.prod.outlook.com (2603:10b6:303:97::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.7; Mon, 12 Jan 2026 10:45:58 +0000
Received: from CH3PEPF00000013.namprd21.prod.outlook.com
 (2603:10b6:8:1ca:cafe::4a) by DS7P220CA0006.outlook.office365.com
 (2603:10b6:8:1ca::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Mon,
 12 Jan 2026 10:46:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CH3PEPF00000013.mail.protection.outlook.com (10.167.244.118) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.0 via Frontend Transport; Mon, 12 Jan 2026 10:45:56 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:55 -0600
Received: from DFLE215.ent.ti.com (10.64.6.73) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:54 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 12 Jan 2026 04:45:54 -0600
Received: from moteen-ubuntu-desk.dhcp.ti.com (moteen-ubuntu-desk.dhcp.ti.com [172.24.235.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60CAjbfG242687;
	Mon, 12 Jan 2026 04:45:51 -0600
From: Moteen Shah <m-shah@ti.com>
To: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<y-abhilashchandra@ti.com>, <m-shah@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-j721s2-common-proc-board: Enable analog audio support
Date: Mon, 12 Jan 2026 16:15:36 +0530
Message-ID: <20260112104536.83309-4-m-shah@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104536.83309-1-m-shah@ti.com>
References: <20260112104536.83309-1-m-shah@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PEPF00000013:EE_|CO1PR10MB4577:EE_
X-MS-Office365-Filtering-Correlation-Id: c5ae5d07-e98c-4dc4-2149-08de51c7c45e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026|34020700016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?69krhWX7fPO1LgrWZoSslIrOMyFDYEFBk0U5oPzbyaDHs7T0YRi9HJ8Nfada?=
 =?us-ascii?Q?060BPyoHTHL/xWnyUldNQ0JZDJ/d7ZbncXspfpjWCmsZGtmxOGZs03mQrTFl?=
 =?us-ascii?Q?PndA4kcgNYJoZFIDPFFKv6URrOTyt9JG8REWQq60npDl6dlXmqFP8NJrNP64?=
 =?us-ascii?Q?vBBKovDPENwE3P2o13fwh8x8nF2juQvNAkiHtDBPoFj3x4c7/YcfwlhQ5OsN?=
 =?us-ascii?Q?SNqDVNUl2eeKyjg9ooMiszSMaEOMzndwuc7D8gDGH6Ztst8aK7coySsptNSJ?=
 =?us-ascii?Q?XD9W//EBtXOJMcUJHwHR9IIlgWOx8QXIMPXOhsUbMqsRj4u9NxEu4vMNaFzP?=
 =?us-ascii?Q?Qrpqh9wjBCdzFcC0xCKZ0ifa8sMTc3wGEU6h1qCK5kmuu+kY+V5VcuzknzQM?=
 =?us-ascii?Q?MOKTG+B/kU3wHnJrARrNKDSTGV3iqcMXEW4HzjKfqZYBZYq8k+rnXDv+CFp9?=
 =?us-ascii?Q?Zh+Tdd6uc2OwFAm19xkW5mudbEShogbhf0/Jv6YW/vf2XAPM3gw/J23SMDOR?=
 =?us-ascii?Q?o45Ymkkwc9hFzMJzXLTmU84yjtr+WZG71nzfqp9TbQJTxDSPNZTcB9g3zqYQ?=
 =?us-ascii?Q?mPc6gPcpX1xNvthsAFsJ9aVSMK5c1jPOpbbpg9Je++mnHPcSGJK1/+V20a92?=
 =?us-ascii?Q?zTgPAEt18ufW/5F95Y/5wsnE5blp3XzpXBazeTEExCr89gg7eCTL+jIZ5pRg?=
 =?us-ascii?Q?TXW/mjBLR0Ch+U+nGsgJHv56DYYFohoiiZaB93rqlEYHgyQyA6idJ2OFkbul?=
 =?us-ascii?Q?FucZFi7qjhkgua167Wf9P8beh5i+cPdZzY7K5adQQgHUx3rnArX40QnWEPc7?=
 =?us-ascii?Q?g/k/9q6izJtM6zjfee+gJB8FfbCwcxkaNbWKcytltQephOpAG3i6ZIE6TMxM?=
 =?us-ascii?Q?x4SMSb3DPG2ZcHpfEFu0YYPHrsrrQB73ZL0aCuC9uZZAlD6if9+znimnCMNy?=
 =?us-ascii?Q?lyQeGRtQUAw46XjhN8GOAWP2sWHLSVML/ByBJu/c19H/ve4BhFagS5qno6YN?=
 =?us-ascii?Q?8oTiCEBMhTcNXSrL4b1cBXp87k/RNaaWjkOdsdMwvwSUCRQLyltY9dHGEkUZ?=
 =?us-ascii?Q?4GSWhNnOZQDaVUTPYcn0AGUwzAd425ugbcTCQy3OBhkr7iaHsQNYAxSWJAEQ?=
 =?us-ascii?Q?mwYMVNKLXYHaw5fzLOuoYItSD0ASL+5ISNc75sKT3y97QIi5l8b5NNpDTIpm?=
 =?us-ascii?Q?fHw6rTHR7bAA3LmEitEUqtuME/I+/gbwAr210gdm5CHv/lIF+8tT2kqaR40s?=
 =?us-ascii?Q?6uu6TQa9MSsHeVN7tJEu4rAygoW+tAMVOhmbxnGz7JqRo02ekea+HXC5Pt7M?=
 =?us-ascii?Q?F0izQemnX7VCJ6Z71QgKg88m0tyCXmzVBReMz12cjvm0RwcRelflp47W4jwl?=
 =?us-ascii?Q?/MD8p+b1oAZPUZc50zOrk/oKMMla4opdtzWQQ+O1UaOFDYxeMxg7uK+4ZI88?=
 =?us-ascii?Q?xx27kuIY4vkixVi1lwXV0dBEtj3qOWx/G/c34+aY+eWYXLXnjwOS9Cvjegiq?=
 =?us-ascii?Q?BKAScMw1qDkNYGmAfo1iH6QrMqhs6BjR/2QfUPIs32pZrZoL7w8VHSil6Zh6?=
 =?us-ascii?Q?+QcC7dh+vouQ09LHIb0=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026)(34020700016);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:45:56.7019
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ae5d07-e98c-4dc4-2149-08de51c7c45e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH3PEPF00000013.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4577

From: Jayesh Choudhary <j-choudhary@ti.com>

The audio support on J721S2-EVM is using PCM3168A codec
connected to McASP4 serializers.

- Add the nodes for sound-card, audio codec, MAIN_I2C3 and
  McASP4.
- Add pinmux for I2C3, McASP4, AUDIO_EXT_REFCLK1 and
  WKUP_GPIO_0.
- Add necessary GPIO hogs to route the MAIN_I2C3 lines and
  McASP serializer.
- Add idle-state as 1 in mux0 and mux1 to route McASP signals

Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
Signed-off-by: Moteen Shah <m-shah@ti.com>
---
 .../dts/ti/k3-j721s2-common-proc-board.dts    | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
index 4fea99519113..d9269a16956c 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
@@ -150,6 +150,28 @@ transceiver4: can-phy4 {
 		standby-gpios = <&exp_som 7 GPIO_ACTIVE_HIGH>;
 		mux-states = <&mux1 1>;
 	};
+
+	codec_audio: sound {
+		compatible = "ti,j7200-cpb-audio";
+		model = "j721e-cpb";
+
+		ti,cpb-mcasp = <&mcasp4>;
+		ti,cpb-codec = <&pcm3168a_1>;
+
+		clocks = <&k3_clks 213 0>, <&k3_clks 213 1>,
+			 <&k3_clks 157 299>, <&k3_clks 157 328>;
+		clock-names = "cpb-mcasp-auxclk", "cpb-mcasp-auxclk-48000",
+			      "cpb-codec-scki", "cpb-codec-scki-48000";
+	};
+
+	i2c_mux: mux-controller-2 {
+		compatible = "gpio-mux";
+		#mux-state-cells = <1>;
+		mux-gpios = <&wkup_gpio0 54 GPIO_ACTIVE_HIGH>;
+		idle-state = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_i2c3_mux_pins_default>;
+	};
 };
 
 &main_pmx0 {
@@ -224,6 +246,22 @@ J721S2_IOPAD(0x03c, PIN_INPUT, 0) /* (U27) MCASP0_AFSX.MCAN5_RX */
 			J721S2_IOPAD(0x038, PIN_OUTPUT, 0) /* (AB28) MCASP0_ACLKX.MCAN5_TX */
 		>;
 	};
+
+	mcasp4_pins_default: mcasp4-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x0c8, PIN_OUTPUT_PULLDOWN, 1) /* (AD28) MCASP4_ACLKX */
+			J721S2_IOPAD(0x06c, PIN_OUTPUT_PULLDOWN, 1) /* (V26) MCASP4_AFSX */
+			J721S2_IOPAD(0x068, PIN_INPUT_PULLDOWN, 1) /* (U28) MCASP4_AXR1 */
+			J721S2_IOPAD(0x0c4, PIN_OUTPUT_PULLDOWN, 1) /* (AB26) MCASP4_AXR2 */
+			J721S2_IOPAD(0x070, PIN_OUTPUT_PULLDOWN, 1) /* (R27) MCASP4_AXR3 */
+		>;
+	};
+
+	audio_ext_refclk1_pins_default: audio-ext-refclk1-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x078, PIN_OUTPUT, 1) /* (Y25) MCAN2_RX.AUDIO_EXT_REFCLK1 */
+		>;
+	};
 };
 
 &wkup_pmx2 {
@@ -321,6 +359,12 @@ J721S2_WKUP_IOPAD(0x104, PIN_INPUT, 0) /* (N26) MCU_ADC1_AIN6 */
 			J721S2_WKUP_IOPAD(0x108, PIN_INPUT, 0) /* (N27) MCU_ADC1_AIN7 */
 		>;
 	};
+
+	main_i2c3_mux_pins_default: main-i2c3-mux-default-pins {
+		pinctrl-single,pins = <
+			J721S2_WKUP_IOPAD(0x038, PIN_OUTPUT, 7) /* (B27) WKUP_GPIO0_54 */
+		>;
+	};
 };
 
 &wkup_pmx1 {
@@ -396,6 +440,22 @@ exp2: gpio@22 {
 				  "MLB_MUX_SEL", "MCAN_MUX_SEL", "MCASP2/SPI3_MUX_SEL", "PCIe_CLKREQn_MUX_SEL",
 				  "CDCI2_RSTZ", "ENET_EXP_PWRDN", "ENET_EXP_RESETZ", "ENET_I2CMUX_SEL",
 				  "ENET_EXP_SPARE2", "M2PCIE_RTSZ", "USER_INPUT1", "USER_LED1", "USER_LED2";
+
+		p09-hog {
+			/* P09 - MCASP/TRACE_MUX_S0 */
+			gpio-hog;
+			gpios = <9 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "MCASP/TRACE_MUX_S0";
+		};
+
+		p10-hog {
+			/* P10 - MCASP/TRACE_MUX_S1 */
+			gpio-hog;
+			gpios = <10 GPIO_ACTIVE_HIGH>;
+			output-high;
+			line-name = "MCASP/TRACE_MUX_S1";
+		};
 	};
 };
 
@@ -657,3 +717,74 @@ &dphy_tx0 {
 &dsi0 {
 	status = "okay";
 };
+
+&mux0 {
+	idle-state = <0>;
+};
+
+&mux1 {
+	idle-state = <0>;
+};
+
+&exp_som {
+	p03-hog {
+		/* P03 - CANUART_MUX_SEL1 */
+		gpio-hog;
+		gpios = <3 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "CANUART_MUX_SEL1";
+	};
+};
+
+&k3_clks {
+	/* Confiure AUDIO_EXT_REFCLK1 pin as output */
+	pinctrl-names = "default";
+	pinctrl-0 = <&audio_ext_refclk1_pins_default>;
+};
+
+&main_i2c3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c3_pins_default>;
+	clock-frequency = <400000>;
+	mux-states = <&i2c_mux 1>;
+
+	exp3: gpio@20 {
+		compatible = "ti,tca6408";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	pcm3168a_1: audio-codec@44 {
+		compatible = "ti,pcm3168a";
+		reg = <0x44>;
+		#sound-dai-cells = <1>;
+		reset-gpios = <&exp3 0 GPIO_ACTIVE_LOW>;
+		/* C_AUDIO_REFCLK1 -> MCAN2_RX (Y25) */
+		clocks = <&audio_refclk1>;
+		clock-names = "scki";
+		VDD1-supply = <&vsys_3v3>;
+		VDD2-supply = <&vsys_3v3>;
+		VCCAD1-supply = <&vsys_5v0>;
+		VCCAD2-supply = <&vsys_5v0>;
+		VCCDA1-supply = <&vsys_5v0>;
+		VCCDA2-supply = <&vsys_5v0>;
+	};
+};
+
+&mcasp4 {
+	status = "okay";
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcasp4_pins_default>;
+	op-mode = <0>;          /* MCASP_IIS_MODE */
+	tdm-slots = <2>;
+	auxclk-fs-ratio = <256>;
+	serial-dir = <	/* 0: INACTIVE, 1: TX, 2: RX */
+		0 2 1 1
+		0 0 0 0
+		0 0 0 0
+		0 0 0 0
+	>;
+};
-- 
2.34.1


