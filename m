Return-Path: <devicetree+bounces-250687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2D9CEB199
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2570B3017F13
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1616726FD97;
	Wed, 31 Dec 2025 02:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="s7SIo7OT"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012026.outbound.protection.outlook.com [52.101.53.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C865923C4FF;
	Wed, 31 Dec 2025 02:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.26
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767148723; cv=fail; b=oHmTot3nNyZOdL5c4igQ83qSweUv2wgs75Rj1Nu2Ukf99Mx2Wwi4EIjVD6ySLu8HGcplWgeYyWsE9zPFv4BolQsCme5STB1bLiIyKXiAwwra3ZZ8VAnQOueFZn0xbaCFJLeFb51+Ggmo3OT7pGFYC2fUWzhheLD806NLM/V8mME=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767148723; c=relaxed/simple;
	bh=U0XurmaEYp91Fe5ntzcO14+AELqqfFnzIH5N3wtsuks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=jtAxRtQe++4ro14JuDNVGMnQ8ThvYFTYW0sXRMp1fmEXEaXcd0+YyyoBs7OEX9405Nom1OnpWqZAwMd64TSaFqbKyk3loylGVljzc2RtS1FrQy4k7d0fr7JqfFpye2uuBMAxGK9kUhU1TcxmXgPO5TpIb0+06zt6lZFCCgoNlHQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=s7SIo7OT; arc=fail smtp.client-ip=52.101.53.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ixz+U2CNXUO0jCT3f+ADepU7PlGw9L86MNq2YZxAP7A+LAFSX+yF6E1MM/PFwu4Fh1sLOXPioeH1YB13+RFd37ehptcOEx9nhXUk5674W3boDpGHjdR6QJxhYIZ4RQKl14KuLOK+0MtX9abAItVldmOd6DndimXXIWuqkUcPcoYFfsxndO+b36cJNuqqmphsd1xlc+dOCiYluT/Vaz3Lxi9Ixhso1wxIqL41y1wqHQ4MHprQm8SDmOAZQuT2EgtqlXHq1TYQ3yqDl9HvMemW/sYSHQL6AZyse9AVsl6Xn4qUcoN3ONNVw/+UQygNs747QP3W7yhE8cdRQKwIfCtIIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KMU2eVOQenLZX0VwOI0/Zp2q4tE02ZFFt8H0thylxQE=;
 b=V5khTojRV78xfXHmz1yQe4qPa9nsNhOTpsm7F9Pgz27tnaRs/TZsbfevSb5/xuX6n7/TZORxbi86dX7s/f5WvKelgJmG/uw+z6RP8+7ybIO1rFt1GFEsRIcOwNw930Fmlun8RJGpCSRGt0BrcJn1kNRBHfquXw4WU6spAiEls7mK0oWUQ4MEwfDybH4C2scP9h+12qLkt7jg7AB3732aPQMLJlnwWGqpQoqs8PIdEXZcRXM9Lh22tI4omhT3DpH0aPQq4E5ykfvUHI3FAqSzSTfFLv8PnJgfP+rTFPNg7lC+v/PwxQwcDYjAtsNaDumG3Cgx4i+AqcLj1xYEH2O/qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KMU2eVOQenLZX0VwOI0/Zp2q4tE02ZFFt8H0thylxQE=;
 b=s7SIo7OTLjtYcmrkzvbTHc4d6VjeM4VJiXNcstqDebV3GnpYEY0fbK5+haIuHCDiNVO3g2vIIF9l65nPlYwIwz9FEhSzHTrwQxid+RjibDKyVLhtIiQzoLYuastH3WhlYAgCMipjb2lnpmnsHfsDLLk+afRqlT/TTPL06aEcMWM=
Received: from DM6PR04CA0021.namprd04.prod.outlook.com (2603:10b6:5:334::26)
 by IA3PR10MB8044.namprd10.prod.outlook.com (2603:10b6:208:515::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 31 Dec
 2025 02:38:38 +0000
Received: from CH3PEPF00000013.namprd21.prod.outlook.com
 (2603:10b6:5:334:cafe::66) by DM6PR04CA0021.outlook.office365.com
 (2603:10b6:5:334::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Wed,
 31 Dec 2025 02:38:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CH3PEPF00000013.mail.protection.outlook.com (10.167.244.118) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.0 via Frontend Transport; Wed, 31 Dec 2025 02:38:37 +0000
Received: from DFLE213.ent.ti.com (10.64.6.71) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:34 -0600
Received: from DFLE214.ent.ti.com (10.64.6.72) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:33 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE214.ent.ti.com
 (10.64.6.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 30 Dec 2025 20:38:33 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BV2cXV91704518;
	Tue, 30 Dec 2025 20:38:33 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 30 Dec 2025 20:38:21 -0600
Subject: [PATCH v2 2/5] arm64: dts: ti: k3-am62x-sk-common: Enable Main
 UART wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251230-b4-uart-daisy-chain-dts-v2-2-fa5257ec54bb@ti.com>
References: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
In-Reply-To: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Kendall Willis
	<k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767148713; l=2088;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=U0XurmaEYp91Fe5ntzcO14+AELqqfFnzIH5N3wtsuks=;
 b=KEkVVXtuL83N0uLibvL89rFVZYpFRRgJZ4xydfK3JeKcxs4tG0vQaOaATQ2bOqEQiwMbgBiVF
 aQwAk4Zk0xEA3CEwm4gwlFS5kPrvjMxm2iepOAqM7czjdrLVXo2RNPQ
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PEPF00000013:EE_|IA3PR10MB8044:EE_
X-MS-Office365-Filtering-Correlation-Id: 665e0f42-1d00-47c0-74f1-08de4815b34f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aDI4WE5GUFEvNzZobjBiTzZhVXN5a0thNFZSQVE5NGxDNk5maExwS1B6cXVY?=
 =?utf-8?B?MGRnMVJhMzRvL05NNUlHb1k4VlBPWVBCN1JFVWhENlFiWXdEYjFwWVJNZlBY?=
 =?utf-8?B?UVBMQ2ZhTjZaMXpSMm56VVpjd1JSN3gzTklDMzJBUjZ4ZStPb0ZodENMTDRC?=
 =?utf-8?B?d3BWUVFMMTVFSjBTVGpDVzhjL080Qk1pcitDS0pQc1lIaEswelQ4NGl3ME4w?=
 =?utf-8?B?NHpTd041d0ZBcGFvUEFjdmE0Z05xRlYvb1N1M3hURGE4dVNNcXZwS1RhZG1t?=
 =?utf-8?B?ZzNKcXE4eUwvaTJsN1ZqSDdoSUpDZzN1RUpBQkE0bXRuQmlOSVYzSU1oSERS?=
 =?utf-8?B?dkRYQTBpbkI2ejFtMm9XYWljclo4UjkzZnRGeXRqNlhjb2VIUXc5bzRJeGtz?=
 =?utf-8?B?N2JxQ0k0ODk5L211dkZ3bWpMa0hzb2dmNkNSaW41RnkyZjA1N25IQXR5Y0NS?=
 =?utf-8?B?ek1NTU9HazVHdzB1MFl4NnBVM3o2eHNoUlUxcTA2bE1jWjMwaElaWWNUU3M4?=
 =?utf-8?B?WmpYb2RTeFMySUFRN2IyanVKUHZtVnRBQjh2WHgrNTA1ZDhJZzRYQXhnTXU2?=
 =?utf-8?B?V2oxSFlTU1FMWUI1VFc2MHEwUWtISm11TDY4RnQwcDVEV095Y1dyRnVjZVVy?=
 =?utf-8?B?SGNXci9nYkNFOENlanRFaHdxYWovdzVxalFuUTdXbE9ocDMzbDFpNVBnQllp?=
 =?utf-8?B?eDNic1MyR1FwUGFpWEEreVYram9pRHJnS1ZqSmZCR3MxSkNFeHN5M241Szc5?=
 =?utf-8?B?RHVLOUFuaWF0eG53N2lRTmtvSTVXQXdvZUVJaWJCZWJMUXZ2WmUvNFFrdlEy?=
 =?utf-8?B?R3R2c3VpaTd0bGFNMVprYXVMM0NOMlpERy9uVHFGWmovMmZtL1JyNzBwU2pp?=
 =?utf-8?B?ZytxdXljMXNyNlhsUnM0WUdrYjZKUGdEZlIvekpjM1IxQUZmSUl0TUNuTm9K?=
 =?utf-8?B?aUpBdkowc2pOZ2ZIOVVtdGZWaHZncHZqVTZhUlY0NVFuNDRtVGdiYVIweVRS?=
 =?utf-8?B?RXIvWU15SzdTdU11bm5wWlVwUW1JTG9lU2lYRHZjWWl0dE9zNzFHUWw4YTNO?=
 =?utf-8?B?Ymc5bGxnR0ovbTg1ZEQ1TVZGOWNBbXlPSklWdEZlNGg2aWFYbHFlc0V3cXIx?=
 =?utf-8?B?RHZSckRtYVlBTkdqUzJPaHlFNDZKUVV4VzFLb2podmdqdmtBZzRzTG02Yk5u?=
 =?utf-8?B?cEt4OUdETWw2QjRleVNFTy9RK09FOG5zUndpZkFVcnhUQjl2cGVKaThvcFFS?=
 =?utf-8?B?dEs3ZTJJNGg1OE4zbllhb2d3Z0NwUWcra0EwRXJOT1VnL2wwSTkyUEdWV05C?=
 =?utf-8?B?bHA4Mkd3QVZIMnYrcVdzOFN2Mk9kV3JjbGFKMTBwZTU2cUtIeXhRZnRlSHh0?=
 =?utf-8?B?bWdYYXVBY2IzcGVmZmViWEV5Z0lPUWk0RjBPcXhGY01wcUwvNS9ObmtWemFU?=
 =?utf-8?B?M0EzOVU0V2RnNndrajh3S0lMNUxqVzlZNERlQVoxdkt6QVovTncvVEIzRXB6?=
 =?utf-8?B?MGdraW9EaFMvVGpWdXV5L3g3Uk95RG9PQjdiNlRnQVZyYmc0ZDZjTmtvY3Jk?=
 =?utf-8?B?ampqWXNIOG1Wci9DTWFXNE8wRGNWYU9qWE9NT0JvZTI0SGFuaVU2ZlBFYlEr?=
 =?utf-8?B?di9CSzMyZ2JTNE9Wc2lrc2c5ZjA3VVNDeXFhdDlrbDJ1V1M0d0h0c1Fxcnkw?=
 =?utf-8?B?MEx2eW5nOVVPY0VzcDI4SHlsQVRVL0RSZEJnL1pad1VRM1V6Wm12WnNXWUFZ?=
 =?utf-8?B?dEZYY1NHd3pvTmVsL3BXZ2pIVzdoWTRqZGlkTXpQcmlhS1d1K1ozZUlmaUFt?=
 =?utf-8?B?THNmOTVZM0dMOWZjUlFING5YWEx6aEVrdzQ0S05hKzV4R1NuQzVPUW5wUi9O?=
 =?utf-8?B?YytvcUVDbnBjZEhwYzFtaEhkeDM0bENxMEtUVDlCMzI3Y1NyTSs1aGVXcWVh?=
 =?utf-8?B?MllvVVBVVEVkNGptdE5LeU9sSm1salRXdk1LekJaUSsyRW54WWx2VW5ta3Vi?=
 =?utf-8?B?OXhTZ2d3L0VKeGVveDRCYU9jRWNuUmREb3JqZVRrTEFINGZ0V2t4Sk42bHlr?=
 =?utf-8?B?aHlwcDJIVkZsT2RETmxqSTM2ZEtPcmg5Q3M2VlY5cERVZUVqNEwyYVQxSHNo?=
 =?utf-8?Q?GmbE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2025 02:38:37.2246
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 665e0f42-1d00-47c0-74f1-08de4815b34f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH3PEPF00000013.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8044

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 50ed859ae06c47af38b11753d909a91485d438e5..e84356a971ee5a2c1c799eb5a1830cc8efc9adf7 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -143,14 +143,26 @@ &phy_gmii_sel {
 
 &main_pmx0 {
 	/* First pad number is ALW package and second is AMC package */
-	main_uart0_pins_default: main-uart0-default-pins {
+	main_uart0_tx_pins_default: main-uart0-tx-default-pins {
 		bootph-all;
 		pinctrl-single,pins = <
-			AM62X_IOPAD(0x1c8, PIN_INPUT, 0) /* (D14/A13) UART0_RXD */
 			AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
 		>;
 	};
 
+	main_uart0_rx_pins_default: main-uart0-rx-default-pins {
+		bootph-all;
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x1c8, PIN_INPUT, 0) /* (D14/A13) UART0_RXD */
+		>;
+	};
+
+	main_uart0_rx_pins_wakeup: main-uart0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (D14/A13) UART0_RXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		bootph-pre-ram;
 		pinctrl-single,pins = <
@@ -322,8 +334,12 @@ &wkup_uart0 {
 &main_uart0 {
 	bootph-all;
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_default>;
+	pinctrl-1 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 };
 
 &main_uart1 {

-- 
2.34.1


