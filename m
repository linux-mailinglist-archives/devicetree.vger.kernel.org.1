Return-Path: <devicetree+bounces-21819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1855980539E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C70BA281753
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E2859E4B;
	Tue,  5 Dec 2023 11:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="gMKtttll"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04olkn2019.outbound.protection.outlook.com [40.92.46.19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DA2D98;
	Tue,  5 Dec 2023 03:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpBYyF7o1RVD0J2pHZAHa74pos5WfqBqsezMoF5FDynhXQZovIZqhQtCZ5Icxw0SvfR7ld7XzY2PrymQyPTKb9In42mwXJA05z80o0GOBhoAxKVqKWI8huIJSt3a+EeffX4J9Pg0MLTHgxEzjUy69T+ndqBXmFJh74wkmw29b2QfDi0ABYTqPy5yJ6DtQxJQSafHML/3kT5tdOF8Rdn1ZWYNftDGNpW4UW5m4NnUt5CemWASuWwqjZ9sRly9QzYRQRVFYmemM05WfSoQ7uQ5WtlIfhkiWaBzPs318sttRQ3GZBd3YnkCHGayf1MZDVJl6qHJmI9RB/wkdTHIR+nEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9O3UgkxluQ+ROHJTMui1BkCI9cCAFSFZvDB6rVEvXLk=;
 b=hVQCOpC/QzxjQSMqX5Nrx5cCfTwk9vZz6xEn1U7iIqmdGJd7UyjXOhCCKb5rcuMM5O2KkUxM8MC9hmHMELyKDOlXVJfwH7xwfpL6W/40ydCTcS8Qasz57NQdnebprQMj01oXMJDVJfP2u2gKs3dG+FqtfaBeqzKgmAk1I5oXAcLkEbGSCq5JytSf3PJENQDM/NXOGk3GsGaxkFC4906L5eL/WZ2gUNs0slfFMwVZN4OzYBKNnbwOC7r2zCleXOWq5zbHCW9x540i1DfvEMhE/dMX5FJP0Ql3uF4N/9Q0fA1PSM4fZ6iPb/IiEmUkJVGzZ5YkGmTt+e556xkdDXcajg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9O3UgkxluQ+ROHJTMui1BkCI9cCAFSFZvDB6rVEvXLk=;
 b=gMKtttllUfTkR2Et/vuXbwnMeFVcMHJjSGcY9HOrMkMXI9EPkxr6ZKOqMcwg3lkskq4bdVS2Ypw+zNN5zXcpefcDlZEB3VTstWBDOHibF367Hl17Mj/kZMm9wjYYwM+qbeo3q7HOlEDicNPul3+WnMGIvlWabmPbjxdCt8FJZKjCYVQCCUE98nMZMKofzPREUt29r9/WG7oz9epy+Dh4AEktT1g0lGQ5zdWox28sXS9f0cp2+P43A4d/bdjzlOiqaI6As64Hx7JTPI4NhSMl5gQCJYHKFfb2MAL4Y+PU6iZvJbnsQlojnJq/HykGHcc6OSC2eKNKVjkEvyf8u4f5ZQ==
Received: from IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
 by LV8PR20MB7005.namprd20.prod.outlook.com (2603:10b6:408:1e4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 11:56:07 +0000
Received: from IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8]) by IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8%6]) with mapi id 15.20.7046.024; Tue, 5 Dec 2023
 11:56:07 +0000
From: Inochi Amaoto <inochiama@outlook.com>
To: Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	qiujingbao.dlmu@gmail.com,
	dlan@gentoo.org,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] riscv: dts: sophgo: add uart clock for Sophgo CV1800 series SoC
Date: Tue,  5 Dec 2023 19:55:53 +0800
Message-ID:
 <IA1PR20MB4953EBF14C9CA436760B2A58BB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <IA1PR20MB49532E1A3D8BA71FDBB444BCBB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB49532E1A3D8BA71FDBB444BCBB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [As4dNTdSpRX/8vw6LQsP/NXLktZFqnQ+fNmTCtrq3gk=]
X-ClientProxiedBy: SJ0PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::18) To IA1PR20MB4953.namprd20.prod.outlook.com
 (2603:10b6:208:3af::19)
X-Microsoft-Original-Message-ID:
 <20231205115555.1042712-4-inochiama@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR20MB4953:EE_|LV8PR20MB7005:EE_
X-MS-Office365-Filtering-Correlation-Id: 838dd071-f9df-4015-2c16-08dbf5892a32
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	zNIL8scZzx9W/Wk6UseCxQfwBVk16PdsCH04XtcBTINlruFJA3+Vwj+GWpfup6djSN8RVGOWjWzeiYwFv5jnUJ/V15KWw/6b8qM6H6OCKHvPHvIiiKUUMrfDfMF08gkL8ZxOGqQseu4kl9HKlYcotFjhiOGvuiBMD/qQuVWKUG6NU8b5NRieK3jnXsTqHYn7wsffLNGAbxPUre2EIIQtJClz7ImIGMbx74CCbUeRHowmBIM9eFB/B3C+Qr+Mpd4YeJsVUT8tuK3xG6jhibKZQuVwEcIPLOEdGAe1wOSrY8ceMiniJ3ptI93JD8lS/eQiMrmP77jgDLXXH2eVRZyx55V9PwXYqdxd7LWEJ/gPxX8DohDNdQlwTwEpRvaYbqaEHulci2pm3+I7YZJL2z+V0vHjzwWveTadABCEOptJQrCqRXnxcsdE+7pTQeDK7vRhNU794M4niNnS5s76L8LNSRG+ks2YAhjBbQYgtXSzYfMN09aHIgKXif0XwZ3j1z5Ks2OPgGVZr7E/naMBCpCUhkK4GzbTplK/9xxmbcaV6NgtA//WJivCrqx6LmZdIY3U/m6A2CWKsfzBTfqRIb+ewwrLv3pmA/68/6zRJWy9lX6Ke1rAgQe5+7qPpLbR6sFa
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rUBQK8utgGDBXU4fgPEq6huNQ+MxN+mO9HipP347TuTL/VT9aE1Ug5koRg8z?=
 =?us-ascii?Q?kZHplvNteG44cW0S+ih+PoGJQHE7wjDCQNK5sSaBrQis4Rf0LUMOtRs/L1ke?=
 =?us-ascii?Q?vI8TvXGfJzCM+9JVZ3qE4LB+h8x403CRdJAMy6NMujaq4ArVz+vPit42BjlR?=
 =?us-ascii?Q?PWA+GX5h6BQZQtKLc/i3USoG5BKLAlflsY+DBpvH44a/54SG8N3Kfl8D1guK?=
 =?us-ascii?Q?z23dncFRTxFoDm05hLRcp5a6UYgc8IYIARUMqyszcgSg2kHygqPfYDSa7P4P?=
 =?us-ascii?Q?ZTkhc/nQqg2OWjVoo9SsL2wKeMzhTYftq626uUjPjQbHG6aAfHoZvFFMLm8y?=
 =?us-ascii?Q?XQnJnR1PnztMHcfz3xD9xaVMx1v15qk8IdUV3o/1dtPjA+kVYWXx9BLaRRvw?=
 =?us-ascii?Q?0lo+iQDVSXLEPNLTTp9Lcm2OvXwHWKLvOEnWHUFZC3Vxobq4T2CTdhGCiwEn?=
 =?us-ascii?Q?etWphpzTeWU16PG9y7pQkkpkNNrauHJjZBp38AYrJm52Wr2oC/rAs6nwrOg9?=
 =?us-ascii?Q?JbhURq3typ21+FjHCMUuJihsSu9lQ7G0zV/KAJEUy/Kwnn7UmKuBNYO+v/3w?=
 =?us-ascii?Q?moaH2RslijaeAPpRlvXD2uX1E4esH7PTYyzG1YMgMWCbJlv2XoIGTRzQXC+y?=
 =?us-ascii?Q?daSnfPaSGsjZDPc1YLlb5Qa4hu0twaPMRSakv1+z9CYjzsOB11wKOyPDEfIo?=
 =?us-ascii?Q?NCdxCit/46EZ4FZU1zkE7JsCx6QILqJ1B50L4t9h25R5eowL79l4G3no0XMz?=
 =?us-ascii?Q?2BhcLl+hgHCCZu5Lkm/W6AB/1cJFsXrziwSFvJ2mBRa0f32zufJa+MZdPPvC?=
 =?us-ascii?Q?3tJrXGV8M/xzju4xTFeQtfXobvJgz81kGsKNWr/vRYOeFua8oaWOGZHf9RY3?=
 =?us-ascii?Q?FbkFXOjD2tDBEvaL9fqZSs/8UsrpxTK1ujbYR7e9X0CMqj/WqhJZv3g9MjZG?=
 =?us-ascii?Q?I/t2OXBzr1PfjsXuLCLEbOisSJXLlvY0UYNyibIZe60GdcBUoamMpAsGrMnZ?=
 =?us-ascii?Q?hHKADn7PdJWVEuBM2ksq03POv96Ot8oONI46lazT2Eq0QrdPwNQpEgcbOBkq?=
 =?us-ascii?Q?IkpNpoaQCZz6Yi3fsxcOY7qDn/lG/ABWB1ALylzzI4e4aRyfbGXBF2pcYOni?=
 =?us-ascii?Q?pf6ijmc7UAlmbwAaf/x7AmKXeAGeYtq+Rr3L7z3i/OM6nyIkacRYf3KUt4fS?=
 =?us-ascii?Q?gWlP/d3bDlkba+ClieT1sCpDEosiCaqP2tyEJ5GT42TYltyvmL/AdD9EtZ0?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 838dd071-f9df-4015-2c16-08dbf5892a32
X-MS-Exchange-CrossTenant-AuthSource: IA1PR20MB4953.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 11:56:07.5118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR20MB7005

Add missing clocks of uart node for CV1800B and CV1812H.

Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
---
 arch/riscv/boot/dts/sophgo/cv18xx.dtsi | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
index c5642dd7cbbd..3f290a515011 100644
--- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
@@ -5,6 +5,7 @@
  */

 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/sophgo,cv1800.h>

 / {
 	#address-cells = <1>;
@@ -136,7 +137,9 @@ uart0: serial@4140000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04140000 0x100>;
 			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clock-frequency = <25000000>;
+			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -146,7 +149,9 @@ uart1: serial@4150000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04150000 0x100>;
 			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clock-frequency = <25000000>;
+			clocks = <&clk CLK_UART1>, <&clk CLK_APB_UART1>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -156,7 +161,9 @@ uart2: serial@4160000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04160000 0x100>;
 			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clock-frequency = <25000000>;
+			clocks = <&clk CLK_UART2>, <&clk CLK_APB_UART2>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -166,7 +173,9 @@ uart3: serial@4170000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04170000 0x100>;
 			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clock-frequency = <25000000>;
+			clocks = <&clk CLK_UART3>, <&clk CLK_APB_UART3>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -176,7 +185,9 @@ uart4: serial@41c0000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x041c0000 0x100>;
 			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc>;
+			clock-frequency = <25000000>;
+			clocks = <&clk CLK_UART4>, <&clk CLK_APB_UART4>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
--
2.43.0


