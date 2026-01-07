Return-Path: <devicetree+bounces-252131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBFFCFB7E8
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 514903017EF8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E1A1E9B1A;
	Wed,  7 Jan 2026 00:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HLxQnq5h"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012066.outbound.protection.outlook.com [40.107.200.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C64E1DE8B5;
	Wed,  7 Jan 2026 00:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767746554; cv=fail; b=kkXZK7AM5V+Qztcw30F1mHzauAGLd+PsUbbgC/K6BEuO6VZSWRJaMRKx6qkpSWIgZRFYtgQOOi+f3FPCLRLdPEzus62Bw30jc6I5xOCkig22mWkE+JtRk51OwiLTpIBQeotgcFF5Q9YO+V7s/vkay7EbFLrHEq+4XOvNAYkCk+o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767746554; c=relaxed/simple;
	bh=r2MIPOWlBnmzHXuRDQt2DFsyc3DGQ5cU+Fq1l5hB1vA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=UBqkFaDx9UQawjowk1rKT8kXrGeL5+OuXm1C+t3Uutw2K+c3xMnL2O4hkfc1KMhUDqMkttjbIYvHzXOBeDXmSkjsXPeEsAJd0gGU8XhsdVgMQ4mi3OvAlNNgAeH26PXGPHB7QYO3eoYlOfuczMsa+H3fp3ShX8f7A7ExGfPesU4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HLxQnq5h; arc=fail smtp.client-ip=40.107.200.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BBE4t6/O1vXQkuZJxJiE7EkaOfgOoKMry6UOqRx0hT5uSTISL/wXpTnbwFuxZ2LULSEFUA/usK/VL9BRVZE/gk6hZQpJpWAEmHEPLjGQl61vCHRpvxvLI67XCAGSwDRFXYMS23X2iyNJmHmYFvWWcHLRNFuiy7854D61U5r5+KawkmfV9ieJ1LD7ThSARORduMg3XBAc4yF7A/2a4c4/f26PXtpLoyeWhsKDT4OGy1a4v/W8bs/Q2ozbJngWMg/Qxt1EVz8f0JMZ4VKCqrQYSZ8PyXnLJhNF4gEKTVj+bzTiybkm0nLEOzQhDwfoHfiNocOTuXwP7G6W4TkoJEZSnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yRn0HXBNm3wE7l+hqt0y6hzV6R3VO+ecWecaOkIe/5I=;
 b=WpoRzwZI57fFrFGdXESHNVzR7oHXij/IDjmLGDdX/Z88hVij87qr8CdPX3cghupuf49puFeBOGN//P0t+CZp3QSFwLeQQyU0It5qA/w+p1uHibXK4TApHJwmro3tNVoVHMK6knLqbhf/tJtZ03UohSDG6Mb+8diJ6q55aKEi/2pObF/2MAKyebCOaBCMmyeR3mTBMaBHMKKahKrV2upsftpJOWAKv/ER9xapZTctPslRvaLbmcFyRlrwTTeLt9+5Bm6Yr9jyMtaOiRZi7y8ZJqvkLtOkGdRvyTb6wxNWTmyeJ4M9ZWIAtBdwx+0oSsS/g3nLxM4wjfG+kotnAvk3Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yRn0HXBNm3wE7l+hqt0y6hzV6R3VO+ecWecaOkIe/5I=;
 b=HLxQnq5hGN9bKtrftcaFPjwWeY7B2+gW4uu2yuGfvzwC/Giz+TBlpXXpEIxGH554LTFOgwtvF7wEt1iA56gToCQr74cEG8fRtl4I49QlylBhJrMPmm0wMWV+qkP5Ebje55uRf9REuJJG0Gt1duEnty/iyI9YeNX+xulxsIHheYY=
Received: from CY5PR15CA0133.namprd15.prod.outlook.com (2603:10b6:930:68::19)
 by DS0PR10MB7510.namprd10.prod.outlook.com (2603:10b6:8:166::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 00:42:28 +0000
Received: from CY4PEPF0000E9CD.namprd03.prod.outlook.com
 (2603:10b6:930:68:cafe::9d) by CY5PR15CA0133.outlook.office365.com
 (2603:10b6:930:68::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 00:42:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CY4PEPF0000E9CD.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 00:42:28 +0000
Received: from DLEE212.ent.ti.com (157.170.170.114) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:26 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:25 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 18:42:25 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6070gPrM3856461;
	Tue, 6 Jan 2026 18:42:25 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 6 Jan 2026 18:42:21 -0600
Subject: [PATCH v3 4/5] arm64: dts: ti: k3-am62p5-sk: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260106-b4-uart-daisy-chain-dts-v3-4-398a66258f2c@ti.com>
References: <20260106-b4-uart-daisy-chain-dts-v3-0-398a66258f2c@ti.com>
In-Reply-To: <20260106-b4-uart-daisy-chain-dts-v3-0-398a66258f2c@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<d-gole@ti.com>, <msp@baylibre.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767746545; l=1903;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=r2MIPOWlBnmzHXuRDQt2DFsyc3DGQ5cU+Fq1l5hB1vA=;
 b=hQumT7zR7WCLFMV4BSSNdAwgl8T1ML+Pj9K2+EOgnAA6+LuwOGPCktRDTjO7KfGJjIXD9DdwW
 nVfvFaIrbIzAr7SDR3cm5sHF0520QoI/elUq4efezW53Iej+RfxtF0v
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9CD:EE_|DS0PR10MB7510:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d0bef6b-b8fd-4ed3-99c3-08de4d85a255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZDlNeWl2RmdYUVNzQWd2VHR0SHBEVlhuV3lsSExYTmx4YnVRZHVJZGZMbmdv?=
 =?utf-8?B?TkM3ZjFWcDVWcHg1b1RlT0tUclQ0YlN1SnVOYlVkYkowMnZRbEV1cmdlbzJy?=
 =?utf-8?B?NWw1TlBnNzVRMXZraStSR2U0REJVWFRMem00U0tFczBDN2ZTQXQrVms2aG5C?=
 =?utf-8?B?eG5wNjNWSWZQQ2hsYjd0NGhlTE0vWVBHYmhpVHZlQkxCN3U5a0VxTlpnQnRz?=
 =?utf-8?B?OEUxM29ZYjNWbDlkMG9Vd1RqaWpTV3dBa08zdUgzdW9jNDYzMmR0MkIra2t3?=
 =?utf-8?B?RFY5amdydk1ialhDTzdtc2VJZEltZEo2akRrbFByY1krMkhSTXZHRVZ0SEg4?=
 =?utf-8?B?NitQM3hjczJkZ05jWUt3K2tHaFFKOEkrN0MxMGV0QTNMUU52d202WUNUcTVs?=
 =?utf-8?B?a3NxUWxhRzVxekpscFh1STVxeExkTXV2TUE5Z2FFNEZrWmdnUUozMkVYc2F1?=
 =?utf-8?B?WDZuL0FjVllrZUZCZFBpdEJBZFRUSkV5ZDB6RXlNWTRVNzNWZnd1TEp3NmVj?=
 =?utf-8?B?MmIvWUp6eDJHbGpzVHNjVmFuSGcwN0sxRzJBZ3h5bll6ZEUwT0YwQ0VCdnBk?=
 =?utf-8?B?S2ZLU1JieXg1VmVPYjVVZ0hKWVNXMlpPZWZjVmxyMGJHSmMrU3cyc3JhZ3dj?=
 =?utf-8?B?NXgyYkVZTzUzWXh2VUxKSHd5S003amRXcWhpM2QwTEtvR1p3RWg4eW1lUCtX?=
 =?utf-8?B?YVc0OW4xWXFyaWJxVHpOZk1mK2VkNm4vK3lneGNOcjJrMnhKRDcvRWhqU242?=
 =?utf-8?B?dGkzK3ZscTBDUXYzZEZVNHNHMTI5N1U3eVdyRUF4NkREUGhxM0tmaU5pQkpj?=
 =?utf-8?B?Z20xeXQ1YzRIdHQ0NlhqbG9aRkluMS84TURabTZ4bHYySHRMcC8zZEtEaUx0?=
 =?utf-8?B?dm5ER0c2cEZNN3EwcmFxVXRUUUZCRGM4TDY2SkkyemJ0c0lqNjM0TXRDZ2Q5?=
 =?utf-8?B?eVo3TmY5ZW51ZURlcUJEclZTOFBaTnNxM2ZoNkdpeDBGZ3lneFo1MHdvQWJ2?=
 =?utf-8?B?bFpoZ3VMZUZoTS91eHVLUjZmcTNpeGkvN2NTWUJNMkp3QVBOREt1T0VRckdp?=
 =?utf-8?B?UGdkQXpIMDF0UEdGVGQxbmg3aGNIQ01VSTZYenAwOWtaUW5GdmJFOCt4Yk9z?=
 =?utf-8?B?em9HRzVIZ0o0ZU9Sdkk5UmxTWkhnMXVzRmg3RDlyTk1JL3dJRXc2YkZVWUZM?=
 =?utf-8?B?a25ITmM2Yis1aXRqNnZ6NGs3Y280cEt1QXpwdjJTQ2RPVFd1amV0eFdnaTZk?=
 =?utf-8?B?VkdvMkNPMFVZZUxlRDNkejcwQVpkb2ZpRnFnNm1RemdBNzVtb0tpVGt4M1lj?=
 =?utf-8?B?ZTVOWVpLRXhMVlIrZzZodkR3Um8vL21lUks0QTRxalRnRkY4V2FQQjZudmRB?=
 =?utf-8?B?dWFya0gvUjNZNlRXbDd1bW5SQXZ4WWJRSkJsRUFsY1l2dU9wWUtpd3hKMm4x?=
 =?utf-8?B?VTMwOG01dDBjUGdQRnpWN0pLZUQ4WFNFZkFub0RzSHVXd1VPaUN4enpNelFs?=
 =?utf-8?B?cUtCVTB1NzZTVWNERzRqZEFCazhTT2RtcnpmRXdWK1dOZC9aM0xGMHppTHdX?=
 =?utf-8?B?UVhMVGtyRDVPcWhpL0h5ajlCWlROTnR2QjVRWGRIaU41TWxpWEZTbkxNRmM3?=
 =?utf-8?B?UEV6U1MvTUcwZ2RBYlFKY2J3cHljSXRkeWs1WlVwVWxyeHYwQ1dCdm9oeUNE?=
 =?utf-8?B?cFFpOTNyNk16NVJRMVlHYzlMakx2QlpKaTF3R1A0L3U1K0pYR0QwZ09RSWFy?=
 =?utf-8?B?aHdpRjZuaFRsMFk2RWxmUVd4andWdkQrMTN2VWJzVWxBRWxCalplZHN1OWNY?=
 =?utf-8?B?NVhXTFYwVEprQ0g4aXQxaHpQQkFWbmtkaDlEOThZbXFmaTBCeXdMODg2ZDdi?=
 =?utf-8?B?Wi9UcitEZ05ibnZUd1kxMTRXNGVycU1aMlVJSXlBdHE2a204dEplNnRxaUZZ?=
 =?utf-8?B?d2ZMdVJMQ2VZdStXcCtVYkxVTlh2WjdZSjlvUkNMQlNXOXhFZWpjakJXT1Js?=
 =?utf-8?B?UC83TkhwOWFydGphaE5VSzN6eU1yMUFSN1haVzdPZzhSakdHQXJ1bEM5anFZ?=
 =?utf-8?B?dng0dllXQXhHTnlSVDZ0MHhMV0NzbUNCcGRhOEU4cXAxLzI3QnhqU3lkK1lz?=
 =?utf-8?Q?hRx0=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 00:42:28.1791
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d0bef6b-b8fd-4ed3-99c3-08de4d85a255
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7510

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

The UART driver uses the "default" pinctrl state when the system is
active. In the suspend hook, if the UART is wakeup enabled, the "wakeup"
pinctrl state is selected by the UART driver in order to allow wakeup.
Upon resume, the default pinctrl state is selected again.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 4f7f6f95b02ef94a140edcef595ad8f6cc4b4113..fd323a64880970e17007ab130161dae56efd09d7 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -336,6 +336,13 @@ AM62PX_IOPAD(0x1cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
 		bootph-all;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0)	/* (A22) UART0_RXD */
+			AM62PX_IOPAD(0x1cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM62PX_IOPAD(0x0194, PIN_INPUT, 2) /* (D25) MCASP0_AXR3.UART1_CTSn */
@@ -692,8 +699,12 @@ partition@3fc0000 {
 };
 
 &main_uart0 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	status = "okay";
 	bootph-all;
 };

-- 
2.34.1


