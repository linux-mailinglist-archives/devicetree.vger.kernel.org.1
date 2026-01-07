Return-Path: <devicetree+bounces-252133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BCDCFB7F4
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8274E30443CD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 599A5202979;
	Wed,  7 Jan 2026 00:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mjXDYlHW"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012037.outbound.protection.outlook.com [40.107.209.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073881F7569;
	Wed,  7 Jan 2026 00:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.37
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767746559; cv=fail; b=eP6UJbeofQ8iLx2z+Cye/kVcaqzfS97R5Mta7fygvnKY72H5wqooT0SHXQzXW1cQqXKJZxqJ2z0rmg7y0AlMncOh2wh0UKBTM5y8Pw+fgL5RgEnpU5VGVAG8lzFZeBxjxxizWIoS+CM2tRRe3cSfh1WirYE2cFfDgDTInmoRQbc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767746559; c=relaxed/simple;
	bh=46bPixP7smJr7uSr3USEc55ukoBgMxmoKvPoyJxIPnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=JrXp2jh7H8caJhGPN2M1r76Nr39+gPgANDuTHOMV4mhofh6ZdaaSWywLOGTCztrXqrPBMhc4QSf4qybbrAqIW0NkmhSdp5G1KVfAgJYnQNo01LmXsHJpMVvgiLTbDtsaakObgFnE+LyEcwVfUlcFTgNP1muHhezMJdzmj7GlNXI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mjXDYlHW; arc=fail smtp.client-ip=40.107.209.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PtMV5rogxhYHJC0uHPcLrbftKByrpkfpTHT0ENFCIg30avNl37/QWJexazooQap2Hot66wbEx7IGTHHvUOv392mXtQARZoizNhZEZ0H+E0Ygzd5N9aWr5iPmumdnNO3d7gL48YCgTLPS0fXPDnC+r4Cn9bQL/WwqZuWgsftKtbShW6XyhKQM3nJ4PfIxfNJ8794BzVnODho05xOMVUA3ItDu0hoMmLdpjRuMMzpPfDXnXSGEKy9RdmtsywRNirYmQ/3vYD9/9WfY7PjsWKdm04sAo0CV9xCVT39ryb3yEBxBLTJj1/jVVc6xaWhQa768CbiO3BMJfCXePrHGAtsDWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KxNaF/ik3B9pkXZQ7i9Om1m6J+LY7mQF5J9v1LZKNCY=;
 b=XemsTMj7K21OnSc4hi/j1e9j+YdJmtohwJv8AD1NBCoCPveIydyPrRkIZ2Ih/B0s4EaZzUvf1DftmIf5Pwt6xReT2Y8iKXKoRyX8qgmRuHKT+H66bCeS39VId9WmbT9UcP6YTVx5kqTHnIg6+dgz0KmsWvk2Bns8kXyIxnnGXZ7bn87AMZ7FChm6Vw7wJuWWjJ2fvjeOiZ2CVuUUp0YYH+bKflxSxS/jj8smJHoRJEf3/Yue3sl1qImQsdCX7Qo1NIvyM32zfG5JhgpkPocm3cW9FF3u2gSOpfCCD+QAeDvABURJAOlMacH7JVE3Q51XrwomDkSwrHpv7c72hM9TCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxNaF/ik3B9pkXZQ7i9Om1m6J+LY7mQF5J9v1LZKNCY=;
 b=mjXDYlHWxcoNT6/Mtsx6rcHl3C6Rn50li4EMoRDJgYgbaL/hM/Ps5DjtiBGPaM6/eKZ0yoaOI6oiAdYCWcDVjGMv01SFPggzXhjvrNWxVxdvkAHOguiNIYG37JjKUCv8wJq6KygmTbmlixxHVuPLdP7WztKN4XpcItRqK977EzY=
Received: from SJ0PR05CA0068.namprd05.prod.outlook.com (2603:10b6:a03:332::13)
 by BLAPR10MB4849.namprd10.prod.outlook.com (2603:10b6:208:321::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 00:42:34 +0000
Received: from CO1PEPF000066EA.namprd05.prod.outlook.com
 (2603:10b6:a03:332:cafe::66) by SJ0PR05CA0068.outlook.office365.com
 (2603:10b6:a03:332::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 00:42:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CO1PEPF000066EA.mail.protection.outlook.com (10.167.249.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 00:42:32 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:26 -0600
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:26 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 18:42:26 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6070gPrN3856461;
	Tue, 6 Jan 2026 18:42:25 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 6 Jan 2026 18:42:22 -0600
Subject: [PATCH v3 5/5] arm64: dts: ti: k3-am62l3-evm: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260106-b4-uart-daisy-chain-dts-v3-5-398a66258f2c@ti.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767746545; l=1837;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=46bPixP7smJr7uSr3USEc55ukoBgMxmoKvPoyJxIPnY=;
 b=GVg2x1wCG1hb/Ql5udke0Lx30lZasjVTcrbJ+6gmFmI6NCF5imSZapCf5OMI+Zy9zk0zd64VA
 m6qcdS7Yp5CD73ji/sXBqqt898aFyFu7lKgzhSqMePrbiLxjPP95z6g
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000066EA:EE_|BLAPR10MB4849:EE_
X-MS-Office365-Filtering-Correlation-Id: fed6533a-4fcc-45bc-17b5-08de4d85a531
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?N0tiVkRqMG1oZ1ZQd29WLzd1Q2xGbmpEMzlHK05PREYwajVpSUVlczd6dVFP?=
 =?utf-8?B?b1ozc0NHV0U3Y1lFOTBsUUNMcUNINFJhWWNud2tXeG1sdGJVM0ZTRUdMMThU?=
 =?utf-8?B?QWtkeVMvWWFGSDZVZFE0dkNyWE44VWVaMFpTRkorSXdkUUYxMlN2MmxXbnZo?=
 =?utf-8?B?YUJEVUFjT1U4disxTmE0L3BEUW5IV3Q3UXN2eHU1WDUzL1cyREJWMHN4SzJy?=
 =?utf-8?B?UUc4WGZWWFBGclJmL2hBQmdMNFd2TklDOWRaUEZmVmVXQmtoTjhhRHZOM0Fh?=
 =?utf-8?B?OW5DaklOdzM5aGxyRXR5MFJjUElyeldHUUFYdERZcUErWENqSjFLVTdJcEcw?=
 =?utf-8?B?WFJKRThsV2ZxY0IrL0QyYlYwUTNOc1ZXVjVySUJaRHhmemI0K1dRYjhpMTB1?=
 =?utf-8?B?aXJvTGxrQm1XNTBsdkxCYkZDRWhnOGxhYWRPQkQ3cGhUWjRGLzErRy82enVE?=
 =?utf-8?B?ZnhKbkFtY05zMC9OYXp3TnB6N0k5bitJM2hNYjVGVCtGZzhjL1lKcFhBcVh0?=
 =?utf-8?B?TkRVSDFhOXBvN2hEUUhkVmpsYXBkT1Y2T2dXT0VleVhZRU8wWS9US01ZdE1o?=
 =?utf-8?B?MkdUWnVHL3FwYSs3VWdPS09aaGsvZkMyR2pmaUxqQmV1alZoVTZ3MDlZb3hh?=
 =?utf-8?B?TFN5ejRDa3FsaUZkdjlHcDJRMlBSVGVVTkZseTZ3dDcrOEM5OUcwQkZQODdE?=
 =?utf-8?B?dGxkaVFlRk9Mak9ZL3h2d0ZBeHBONEtVMzB0RU93d2hHU201SUZTNUJXSkdW?=
 =?utf-8?B?RFdVbXB0WGIwMTFndG93V0wxVGdrTUtuY0NsbU50Z2JwVFdHUVN1MFFydnRP?=
 =?utf-8?B?akVqNlhBNEJqbXBpbThDbFdUSDlKN0VRenNOU1VSUXIzR1krQzYwajVLZ205?=
 =?utf-8?B?UGZmUlpkL1UvTWw3L2p6aW1udm5KK2MzYnQ2UlRScTJ5NTJLdHBjeHdvZURS?=
 =?utf-8?B?TFovSUcwQ1hoYVBLT3dHbGJ4THl1b1oxeXFoSVlscnhJVk1TMkk0R08zbngw?=
 =?utf-8?B?UmJFcCtqSHpMY1gwVndWdG5BSVBCWmExdUJqVzVTeThsS3lUdlZEb3BMaXla?=
 =?utf-8?B?QW1XMTlKdVhqQmNBU3JTMmhDcXF0QW1LSFlPcmF2SXgwZkVLdGxwMnRDdWxE?=
 =?utf-8?B?QlUvOGozeUxaY1libS82M1ZUL3hrSThVU2pKd3g1THAwMTVNZDZKOCsvSWxR?=
 =?utf-8?B?T29vVlBNd2w1aFo1ckpwZ1N1bEEzU01TSVNnWXdESlR3OHBvLzUraXpyTGpa?=
 =?utf-8?B?ZDF3bGhiQ2xGeUYwRkVqbmFBUnFZVHRvanJMYnZEWkNuVFVXaWp3NkdrSUVO?=
 =?utf-8?B?YTRrSmI5Z3ZoK0dFc2hwajZFeVgvU0Q5RTZkdGd2ZXRmRmM0TFY1R05vUWhY?=
 =?utf-8?B?eUEwUEdNUE8rSzRSaHVWWGRsalhyUnY0RlZOMUJGVmFKTE9LUW9pWEQ2WmFx?=
 =?utf-8?B?Q0pPbTc3R2xGWUNTaEw4VVJaZmdlMTV2aGZTM0FFNU96ay9TYkM2Qko1NjlE?=
 =?utf-8?B?SkxNM1hLN21aZUsvQy9HdVpGMEo3YkVSU3Q3Q3ZHQktCSm01Vm9pdnZlaWI2?=
 =?utf-8?B?a1p4NVIrTXlEYmEwUVBFYmREekN2TGcwaGk1S2ZkZ3pLWlkwUkNSTkswOVRO?=
 =?utf-8?B?RFF5TWxKWDB4TUxVOEYxY3JNbHk1bjU0VzBEM3FjNDVmZGhNWWVvSWNtMzlu?=
 =?utf-8?B?K1lPYjZuZ2tacFJwYytGQzVlbmVacmF2T2d3Nml6RGNKbC9jWTVDb0ZFeUsr?=
 =?utf-8?B?byt6RGRsSkdGakNzc0ZoeVJwVDhuclp4WVFqSVgwbUEwci9LRTluZGs3QlE0?=
 =?utf-8?B?b3pwVGkzNWlkb2JSck9CNU1BZTVubTdvRHpIM3k0a1NmRU0rMnBBVVdwSHUy?=
 =?utf-8?B?enhuRm5HRHJOeDNnczdvaTFqcG5pVVV5M3hkSlNoTC9LMnhyTzhsenlsKzdw?=
 =?utf-8?B?UDU4TlhKL210T1B3b0Fma0tWVkJUeHlTMmZrRE9nZVBHcW8xN2lGRlBGU3pn?=
 =?utf-8?B?OXFQSUVzZVRQZ2xrNDUyVHJwSGlWaXdJOSsxTjZRTWR1ZC9LcWJ1QUQ0OFFP?=
 =?utf-8?B?UmViVmdsQk5oMTRxa2o4czdlZUxiSTQ0NEJYRXdqZXB5MDlncjhTcXN1K1pH?=
 =?utf-8?Q?gfIY=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 00:42:32.9241
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fed6533a-4fcc-45bc-17b5-08de4d85a531
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000066EA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4849

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
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
index cae04cce337366b50928d39b0c888550b14e43d3..c963b81f84c16f09b6c9f582c3e977ff59d50eba 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -288,6 +288,13 @@ AM62LX_IOPAD(0x01b8, PIN_OUTPUT, 0) /* (C13) UART0_TXD */
 		bootph-all;
 	};
 
+	uart0_pins_wakeup: uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01b4, PIN_INPUT | PIN_WKUP_EN, 0) /* (D13) UART0_RXD */
+			AM62LX_IOPAD(0x01b8, PIN_OUTPUT, 0) /* (C13) UART0_TXD */
+		>;
+	};
+
 	usb1_default_pins: usb1-default-pins {
 		pinctrl-single,pins = <
 			AM62LX_IOPAD(0x0248, PIN_INPUT | PIN_DS_PULLUD_ENABLE | PIN_DS_PULL_UP, 0) /* (A5) USB1_DRVVBUS */
@@ -329,7 +336,9 @@ &sdhci1 {
 
 &uart0 {
 	pinctrl-0 = <&uart0_pins_default>;
-	pinctrl-names = "default";
+	pinctrl-1 = <&uart0_pins_wakeup>;
+	pinctrl-names = "default", "wakeup";
+	wakeup-source  = <&system_deep_sleep>;
 	status = "okay";
 	bootph-all;
 };

-- 
2.34.1


