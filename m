Return-Path: <devicetree+bounces-25324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DD1812E69
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 532C11F21BC7
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2B03FB02;
	Thu, 14 Dec 2023 11:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="quNcwEKO"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2049.outbound.protection.outlook.com [40.107.22.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9FBB7
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:18:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tk2dp2Dg2jMFpTMMXapkfwWSR8AsK4MlwG4wGHf99qgfdUPqda7zF9LbOEE90RbVk49626xM/bTb6GhxJ6DzqhIVDALZ0kgw3hSsZlCsDggX0PneerK3ck2kujHVHmJDNNVc3IX5GOdoZToWTYSp88664adl79zkx8+yrmXOUa6G16xccdfb7nIk5zb0TYl+qaSq0Vu8C6rnqEQioo+hMRBBwwKr839TDnOPWcpqFqYrsOUk+yeVt9ehUtel0tujPyev40aRs+fCHx36mbEpTzHov4Lc0tKFWxojLpTn3kIMBLsiIExIn5eregFFegBj3aRj+oY08kHZVZ1WuLzvBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rXD1vHW7Z814Wi4YuuaQYddb58pnjDB2uLqOz9i99AE=;
 b=OtXm1xahobVebwsO1PK/43QLpq95eMcSV/AOG/PiOBeagHyztbtaSE+InPX/KDib8u3xNgVxqCg4zX7lFci8Ps2u1+v3RQcdkFEYgFMvo/IctTz0DleO+vjRTJKTauZVGO1uIbttmhsFHQRyTiv6tlMNtxwInJzAxMZAkz3igES0OvCWjZi47LAevpnrJll7hYLgWEp7WLLXHV8wIFkgs5IbGTBWYac/GVrUP/XsiSVQORX/2l/2vdwkoW0oVzPQZ/Z88076iG4WzURXCpW49EQ17Amu0IEC6sQ7X1LilFwwJsXwCftYVZKRN1ZWguKBkk0EK+h5nDp87NVYP58mTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rXD1vHW7Z814Wi4YuuaQYddb58pnjDB2uLqOz9i99AE=;
 b=quNcwEKOtYcNBeERLm87FRc41aXCnNuDISpvm7H0i05zTzM3wa+TV5vzcE/PqkBOXwq07b79pHEIHGZpTrAv6bUVmGSG6Aw93Bq8Rr4Zx9YRYvOhcEq981fMPJOOcq51ptktDiF083oiB+bpSjpsYKnm1vbLjPlnSInaMcSFC50=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by AS8PR04MB7880.eurprd04.prod.outlook.com (2603:10a6:20b:2a5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Thu, 14 Dec
 2023 11:18:52 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 11:18:52 +0000
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
Subject: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Date: Thu, 14 Dec 2023 19:24:40 +0800
Message-Id: <20231214112442.2412079-2-xu.yang_2@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: fe3fec58-6bfb-4172-1470-08dbfc9673c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	wJ59GL67nZMKnUis33TqO27brSwNlO4Kpd7cYw5DwqQ0XMZ5miudIEfTszL4+qoojOVYWnvSpXvDYxarnYYZ7uUhcAPYJ6v1MpNSNrUyM97U2ghABfwLr2O/lVKHRP4LunT1LRNxNZlx1JurVxcLcLqqi0O0Vqz2eY9QFYECjgjXojaZoto8ZCiwgbm1tyHr1ujYFjEAR03ybwls8nEQxp93ifFIJVKuWcXMD3lMUhoXfxP2ZNFe3fNgKNKI2snE2Fewg0M6PunXMCAkGghKdf9Ts92MOsjv0hu2bpoB/ZTv6PCNakjrbNpiZ+UuCtTExweJgJW0I/v65WE66PIF5kg9DvZ3pXhDTy3oaq2+2/eLGjUz6sh2HepFfP/ugrObpOZI0ZAWMTR/vyVGeotzWZyrgbcYzLQOWCfWgQLCUKBYsLq9fcRtze3WhaiXRzeK9T7d4SpCsGFfW75YTwGehrv9WxTKk8yM88k/ARWxEG0A1kpN3bS3xdrjiGPrtG5W15BNG+YH7Qdos53lLlDPYB3YaGNknI7erKnTLBMCqakhgsz9MngM0T1InqyZYPMUUuDCbS1jXCwG+u4Acj475iGFD0FnX4K0bMCESDUBFQyseglsGqlXt1tehF1+PR2NjfpoKsTwpIVR3ZqOud+8noSFLu3msZ78eejSqTd8/lpcUjW5rOCa+8uMuaA1j4oUL6ayYXVL2MSAk52Jl7snrg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(66946007)(66476007)(66556008)(86362001)(38350700005)(36756003)(6666004)(6506007)(2616005)(6512007)(1076003)(52116002)(316002)(2906002)(478600001)(6486002)(5660300002)(8676002)(4326008)(38100700002)(41300700001)(8936002)(32563001)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?NIQD4fTq/d218lIcOyf9sJAIip+qKye0IJz4mZ1q0GwB+3l171ScnJCwYPTx?=
 =?us-ascii?Q?OBz+HWhgEP59aistd3lyPkR8T22xN9fGq9RwtJiY0FLXtDZ1bfVsHlalnaRO?=
 =?us-ascii?Q?4p3hXXa/vHv4sQAExHCsjZUiSteMWIVTB+lOMcGfIECRc7pf4bAA30QN5v9x?=
 =?us-ascii?Q?CFxjCGFxNSh3+1nJMTkLYK+aSVBDmKIztYtu5YwxMEbh0EtCjIyOWZgzNbe2?=
 =?us-ascii?Q?58vEz/VgnfgIOIodWPvz9X0lZ72kg31qXdu7c08b06vKSstf3w4QwqFlp2u1?=
 =?us-ascii?Q?vkrBTMlo3/uzku1z8sJOy716zear0rgch7qVXp49y3E5MQwJUs2v3IlWuJ8z?=
 =?us-ascii?Q?QVsMOGR0mfKUUrzcPxhOoOk8u6f/wFg7wF0Xr4mLw42VKYwiWDGHg34QI9Ou?=
 =?us-ascii?Q?PAMGtcOT+YZj6/rffjmUZZY75vQlfND1HkJovcteW+cFpRt9F7Dw0uWhPRJl?=
 =?us-ascii?Q?Ri3V689UNTo8svfT4WQ+mNG6GvLkX8QXdNEJtiyH3r5WOGEK6pRHAQii9D6g?=
 =?us-ascii?Q?XEMUoPBvqXnQvEQ2yRTs0K0lZQxtojQzWSnCASgvqh+kooTfRFCQGs3yoSlj?=
 =?us-ascii?Q?D+UeFqZvCRwjl+ULnap8MlRNIIflJEvso7wicVnL8TqbV8dOjDCfGbtVVaia?=
 =?us-ascii?Q?+tIX9qd97Idn2ojRVxHvoLnecitcy3SwkQXTKH0t6Scuu6TOpjMPQ+F/xbxZ?=
 =?us-ascii?Q?xg3AqsaT1Q19L6y7LwzMsSk59tG7U8wkZM2zST5lJz3eLbKndDscWS3DLvMK?=
 =?us-ascii?Q?uk6zbcFAhCjDLKoZ9klaX5UNzneNSSuQawPdjzrplAgkDkVE6pq/V5RW2l8n?=
 =?us-ascii?Q?3NcFooq9eNpVQQIE3X8vaE2fO/7cg7ev/AniRPul0wHxGXpEd8VYdkaQSfjp?=
 =?us-ascii?Q?1bsNogTYV/HT3fz2zIRKxBu/Wkas1G7aX59uhi4iS+O2U/f29fjSq9nwumzD?=
 =?us-ascii?Q?k/JFPoAtSwX82y8ZsUFET6BziGN0Bsn+IMDTGc/9ztdDWSgJ7C3XpGqgsKLe?=
 =?us-ascii?Q?t1vqVEvgxfUWC8clOccEpIa76fJqm1SCtT4sjcD3syb+DjeAufCtCD1n7xVB?=
 =?us-ascii?Q?fDc73fwJujcAl+ZKDNzKFElnkT4jMi1/QAAff5cIhX5l5xkNp7K9PaT6B+6x?=
 =?us-ascii?Q?tD3RVGgsdTUcOEXjxA0WDNub7ylJ2X5dvxNwEMEfK7mh3HyFHGJOaYBR1r/u?=
 =?us-ascii?Q?HuVMADsX92RVOy05F+JWPTnHU/X51pDgTvEA3TT8wYe+Me2MU3RdKEOb/IfJ?=
 =?us-ascii?Q?2y45XpPxfDoa//kLzyuQ9YPnELv6s2/b02ofo7oMrkFq47m/0ZzVQHcZxDgq?=
 =?us-ascii?Q?581vEAm8dWPCPZ6RhlG9RS57xdst0gkQdWYJpg6jyjdSODqRGq2TjpeRJs3t?=
 =?us-ascii?Q?YJo4VcdqYLCTc3SkzhUWxEJbE006jL56XsCyWx28yGwCvkUj9F5xkCFBhWuw?=
 =?us-ascii?Q?ieZhmMHi89EE7Q1KkZmTez9EPc/lH8arX1H/CV1BYpAnN9SwLaEJTqyIIFFS?=
 =?us-ascii?Q?WWBL+baJoxujMwDtkx9K2eg+uxYib6JLIPlITr5THMArLon8C6E37LWuQWrR?=
 =?us-ascii?Q?8WScwDtKmYp0yadGld4OvSYS7HfRDMg5LBaKvrV5?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe3fec58-6bfb-4172-1470-08dbfc9673c8
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5152.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:18:52.3768
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OV/DzV+q9bNGekF8OujH10r5V6uqF3tamIrrTBEMCu3l/aIg0FbmTCCAjyZaYYU8aLcLPjbstntAvMorXBqvwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7880

Enable 2 USB nodes on i.MX8ULP evk board.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
index 69dd8e31027c..08fadfe47785 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
@@ -135,6 +135,46 @@ pcal6408: gpio@21 {
 	};
 };
 
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_otgid1>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	over-current-active-low;
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+	fsl,tx-d-cal = <110>;
+};
+
+&usbmisc1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_otgid2>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	over-current-active-low;
+	status = "okay";
+};
+
+&usbphy2 {
+	status = "okay";
+	fsl,tx-d-cal = <110>;
+};
+
+&usbmisc2 {
+	status = "okay";
+};
+
 &usdhc0 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
 	pinctrl-0 = <&pinctrl_usdhc0>;
@@ -224,6 +264,20 @@ MX8ULP_PAD_PTE13__LPI2C7_SDA	0x20
 		>;
 	};
 
+	pinctrl_otgid1: usb1grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTF2__USB0_ID	0x10003
+			MX8ULP_PAD_PTF4__USB0_OC	0x10003
+		>;
+	};
+
+	pinctrl_otgid2: usb2grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTD23__USB1_ID	0x10003
+			MX8ULP_PAD_PTF6__USB1_OC	0x10003
+		>;
+	};
+
 	pinctrl_usdhc0: usdhc0grp {
 		fsl,pins = <
 			MX8ULP_PAD_PTD1__SDHC0_CMD	0x3
-- 
2.34.1


