Return-Path: <devicetree+bounces-22601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D762380833C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F217283C75
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6552331A62;
	Thu,  7 Dec 2023 08:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="KAtoaOMD"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2010.outbound.protection.outlook.com [40.92.20.10])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9B010C3;
	Thu,  7 Dec 2023 00:37:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwJ7zycOPE06Uz+6f5MNyBO/Ym6lXZ+H1JPRXpJQJvgpk+MSChbazy2Fwjl/oT8eEyJLjWST+GgI8Gc2iG49gmmzpgoRMsl6JQ7kMPEihmpYi4KwMi+Q2FYb1iGK1NsMvnMKYgP2X8dXJioSFECdUkxF9QKrNkDElwMfRWwFcu0dMonxnMPbQtk59Om1gi+vb3iRgJaIcScq1LTfpTll+pNcgl5+lftnFuYQ5sgtk9RKFio3+97usZeeQK9IkC7X3sdstb3p9Gb2twlyJQ3Xa5DkWHy2P6ku4sljCMQIXSi7TIqNCSLSdb9Ajq/pe5/+o8jANsVIWVgCdrJSaBi/iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cor42z0n//rFJE8KJb9aLxI19y8bM26Khqn4WDnZiok=;
 b=CcMKtu30tUefbSmZm1G19k6YX5+wjjdMStCxWjiiBL7xfSUJ/n6PwsjsUbHMvNyafMIXqCb41JQJhvFMgVSt/uk5PqFKNcgoDVoXdBg9FnI2SAVoypAu8oRUPhAmtcUqFp4kH3hvhMnv8jj/xgsA1x0UF3ALBwT5EnfnTcvRco4a6mKK1gbH2FcLZjEeDEacHs3nPqYf1fqt5IBCFF5052kSf1WvqjD+2v2nak1Z/PgS1QrI7fiDBQmyczAXbdyF3PQzUzSxMrSPVwMR5Hq+kTbzTW4tCwSP4gxkCLGYmx5MbkElEnjCmuyZrsjNx5tUMjWfrsJUChsqArzfNJV6oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cor42z0n//rFJE8KJb9aLxI19y8bM26Khqn4WDnZiok=;
 b=KAtoaOMDd5dNvTKH0661PlWeB2Rh8DGpqk006Ic5Ck4QXukvWhE41x42rRXxTc6Itjpxepe/2GogBULRwWm441pZRUWtgGDit+wbBJR9t6hNyRc8eFC2/mokQvcDQ9HGAGxMdHYu4ADBVerWObp5lPE/WMApb+0o3v63F/u7QuRe4dK6ky8e51kJhBn4jFzpRp20+w75Njao3sWHDE7SvUeXds1bY/iuNpaGnJS3fmvvHoCQNrlmASRkAwaNkG5ryN2sh3sA/OET9vb70WY3mPJeQxt3D7f8+qQuF2YJkLFJG+UVbUnHL1lQMX06kEszBPfUpActpoTc+Gt4NAjRCQ==
Received: from IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
 by LV2PR20MB4582.namprd20.prod.outlook.com (2603:10b6:408:17e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 08:37:47 +0000
Received: from IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8]) by IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8%6]) with mapi id 15.20.7046.024; Thu, 7 Dec 2023
 08:37:47 +0000
From: Inochi Amaoto <inochiama@outlook.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Inochi Amaoto <inochiama@outlook.com>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	Liu Gui <kenneth.liu@sophgo.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	qiujingbao.dlmu@gmail.com,
	dlan@gentoo.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 4/4] riscv: dts: sophgo: add uart clock for Sophgo CV1800 series SoC
Date: Thu,  7 Dec 2023 16:37:29 +0800
Message-ID:
 <IA1PR20MB4953F625FF1A07E96E24F929BB8BA@IA1PR20MB4953.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <IA1PR20MB495376DBED8EE897FE11A2B7BB8BA@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB495376DBED8EE897FE11A2B7BB8BA@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [EMyz0E4OiVpm7SyTQIkWSwbyZC7KavqhRZvQ2XUHHjg=]
X-ClientProxiedBy: TY2PR0101CA0021.apcprd01.prod.exchangelabs.com
 (2603:1096:404:92::33) To IA1PR20MB4953.namprd20.prod.outlook.com
 (2603:10b6:208:3af::19)
X-Microsoft-Original-Message-ID:
 <20231207083730.874690-4-inochiama@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR20MB4953:EE_|LV2PR20MB4582:EE_
X-MS-Office365-Filtering-Correlation-Id: 26b285ff-135b-458e-c26c-08dbf6ffca25
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	0xZMvt27NdYvX0dWqutfwL0cI/tDPIx+UQ9yaPfhFHjVTpEEstBCd4ZAPSxTsXPY5djmlavajh9nzBCOwG/gSCPnD9OtrjXE0Y6tTfPTcV14YJUznihFel4DcarfyVBOG/VQ2+z7dujT2kPukSMmu19n35lMlXVEvAH8T8yqIJBgMOPxuU93ey0f4cwgwFeeJ7JxYYKbpkUdlEX/fgp3d4k/2cjeG/xpMGQDiSzyAQWlibJRxL0HJ79dv71RMEazOGR3Q9r93oOeewUNmzn0LVEQPriUiip8B7ERT/e2SO7BmHXKrZ3h/DuPPynGBk1OlyiZo3EdB+7uAvu0HLNPmdLvrs+ms5yigmwVEw8ZUWUAx1lN38bCfGTD2kR17IrRRD/TAD87Gr6sPotbHq3iE+DA8DgN5fLLr51aFbBWzIj9LqaceCOVA8IQWpz4hJt8s8H+V0rXBVXtkBwP95LvowOwOX6H+Wvfd2xzrpOtRZy/nx8DukBHa5eOdupDD1GjnH3etOVcdXineUiJVH/TiPH7StG8GCNUwkTMXSkUn2KMI1tYvqH6BrvwHSWl8uYWoaKrbzZbJWqePCS2Ve9SP4ZH99J6xQ5GEDO7+/0vPEIgdziq7t9kOMKBoaws2bdg
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?bAVxWPnPLTDqGWTpUmXDZjXb3kgZDZgyU6w6XRh1yRI3fMinfcGNi7NfvlZK?=
 =?us-ascii?Q?1qvbsSnVXhuLaVc4VNoRCXAGGy0LjYGKPQZrh3T2tFX+4YK4CgSTgETSS+Ro?=
 =?us-ascii?Q?FAbYNPhDRgoArC21zaYQVFvNanekeYQLBxk4WfntbozPIyP7rQ4vOIhKWbul?=
 =?us-ascii?Q?86ifss7RDm/dcimeSTwnzdEgATss/1o5OyNzd0D+NBKceDK5rCtmizdiYVZN?=
 =?us-ascii?Q?RNlhfNQFGEIp8+JZtEjdTGjeFrUWk7EUc+RuCpsOTRKaBH46a7jXrFutAZYr?=
 =?us-ascii?Q?pGO7Lwz3hIe/+7QaBwrPqBXCi0Rpl2mgGa/DLOC+Lk25Wv+lSS/Oqt2AWRNu?=
 =?us-ascii?Q?S3bGKzjRxSXkNZoLtoCfh7ub7ajmMvNYQSHZa1aHmDGmxLW4xdMp5oEkMH4m?=
 =?us-ascii?Q?BH25zTOZLSvoA2NNZuvpWCT5rzcF93PxWpaJxU12XAPxnWJb9b3hOyz6QrJW?=
 =?us-ascii?Q?K1ZdLTzUGooY1vX9c6OaWUhEkUF/X4JkoVGEPQi/pFbLT4eADrzqufI2xL1p?=
 =?us-ascii?Q?aWEazeP4f7ChnfuPu6T1NPHaGfapdlDrasSM2TZZVB3Q+GnSlVAuv1tt9qtc?=
 =?us-ascii?Q?wOGZKwD1/lrFzPifr3nL4ZuEFUbSNgDPQBK6902bB7LoyVeG6dtWtjNe+WWz?=
 =?us-ascii?Q?ESoryOnnOBjRKhYeVBdQJvnEJRKF+ST6+k3oCFCJlsqHvm2Ad3VRzjqj9547?=
 =?us-ascii?Q?cdryBvrSJB3iXV5BsSDGTnWUAImRC84mg+azmQU8I9U1fyzT0wHGJ0FM3apO?=
 =?us-ascii?Q?NXguf2keRWt0BLZOdmQYT4d8T4c2L/d6/a3xpjofBdc+BESrJSx+6e6eP1gH?=
 =?us-ascii?Q?q+Z+N9txR7Oe2yBa3UPpPrur2TVrJLmUpLHh+UKJhUu+g/59FJXOwzocfR+i?=
 =?us-ascii?Q?/zJzlp9UGCu2RLa9chUFjunpzPXySxHMEXya2GvOpQRAuIVM0G+hqsIEVkDN?=
 =?us-ascii?Q?Zx4sWNY5UV0vlB6yw1X/SLOy2SVdiPQpfmt0+N+KLUGD5S/pZVRV2kztXVMT?=
 =?us-ascii?Q?it5oLDnatBn9Qx5sPcfbb62T78KIjV9lxZXJH2QztVrkR0U3bF2YPpBSEVyb?=
 =?us-ascii?Q?vkwp9kRN1tOMXWg/Ef0rasMjnNoII65KyZ7sAqn5u1zjqZwQs9GEAH4LTgun?=
 =?us-ascii?Q?HbOvT+yBiPlpc/KrnMWPkGYzpd3zlnMxxUHtoMWkyvWdMNvf6Jmqg5A+bSbT?=
 =?us-ascii?Q?E2+TcjTKq9+pfEz3qGAJLtWFJN9RuUKOde1C0Cwb7xw2KRT0Q17CZlpNIKM?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b285ff-135b-458e-c26c-08dbf6ffca25
X-MS-Exchange-CrossTenant-AuthSource: IA1PR20MB4953.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 08:37:47.4836
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR20MB4582

Add missing clocks of uart node for CV1800B and CV1812H.

Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
---
 arch/riscv/boot/dts/sophgo/cv18xx.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
index 6ea1b2784db9..7c88cbe8e91d 100644
--- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
@@ -5,6 +5,7 @@
  */

 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/sophgo,cv1800.h>

 / {
 	#address-cells = <1>;
@@ -135,7 +136,8 @@ uart0: serial@4140000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04140000 0x100>;
 			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -145,7 +147,8 @@ uart1: serial@4150000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04150000 0x100>;
 			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clocks = <&clk CLK_UART1>, <&clk CLK_APB_UART1>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -155,7 +158,8 @@ uart2: serial@4160000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04160000 0x100>;
 			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clocks = <&clk CLK_UART2>, <&clk CLK_APB_UART2>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -165,7 +169,8 @@ uart3: serial@4170000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04170000 0x100>;
 			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clocks = <&clk CLK_UART3>, <&clk CLK_APB_UART3>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -175,7 +180,8 @@ uart4: serial@41c0000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x041c0000 0x100>;
 			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clocks = <&clk CLK_UART4>, <&clk CLK_APB_UART4>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
--
2.43.0


