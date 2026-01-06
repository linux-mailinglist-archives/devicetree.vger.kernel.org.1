Return-Path: <devicetree+bounces-252122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6ABCFB467
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 23:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98F6B305A21C
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 22:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E899930FC3E;
	Tue,  6 Jan 2026 22:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PR+zsw63"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010056.outbound.protection.outlook.com [52.101.193.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73F830FF29;
	Tue,  6 Jan 2026 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767739195; cv=fail; b=U7SNcT3Jiwpii9k9hM3FgUjOOgXkPWbMEHHho0MwdghlLevBqqn9UPavtoY7Od6Bs1Q8NwhMHJdgnhMT6/jpjBv9NEIQ8+vVCSupPc7bD8gmoO4yKTyxQjTfKaKSZypdEIaAyNN/WiftSJwiQkx/qxcecdhMuc2879+ptEzhthM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767739195; c=relaxed/simple;
	bh=6z6oIPqLS6m8/2lbknElanlGAg7aG1FZU9s4eqTkUP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=okDY/kGKkFOfWNOHxZ9fl/CZ6Y5Nulv8+IlqUXwFeAsnQF6OZGgJuu/Kx5d0sIFYNOoa/rcyGZH7XsHAr7xDAiPWHkbfdb94TmZa1x6uHMQM5PUHK7QTVNHB2a1Uv807IU5BS45m2QBAn2/O9sPpu1ZAceHdZMefto/FTgmgizY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PR+zsw63; arc=fail smtp.client-ip=52.101.193.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eHQ6gjpzigl7TrUm6RfAwDLDendjmLpUgdstkGDX4112ARZL855EjOy6G4+xeXb25st+FLmvef1hUUb9bnTsI/uFANKagvlJ3htcM9M57mBR//PfpH6LjtopOJELEIfOqbkPTJpJnhMvWoc99oRWoiJxn0HTTOrus2G7ApsFkU4PWpLblVG5F7DBAbiqWJW9SmRvULSb00l/q7CWBkJkSFWITVltCk0JyQyzpSyWUTz7oSrQLNIRJSNDfMA8P77D2nfLed471wnQtqL045MY8oxuFpqqsCGGh5G/l1mj4jv/upc/G9oYEv1WtIN1j++v0sY3/5GqTKNqkJi3X+66Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YYrJJJv5NHU+ZESVsxMVCe2r6w4ff0ThEzslSfXZ8pQ=;
 b=CBUtYqLZZgOy0Mgm/gaiKCvUxjri+LCNU5DtQRz4yujPj0tGheSjsog1nK1yDGzgvtX8ZYyH8Hv1L7eHKNX+qVuSEou0vP4YszQnkGceQjOF8l7yvDsWyng03sNMG2/10k2znonysn+rc9agqXo3Jx833vL23fZFGILXJuUSY7OXbAD2Fp2s2ASG+z1p90msAKir0Yjxa9mAXXrupTU5mabKHE/6g3PEkBY45Uon+qJSPWJyu5oeqR0B0S00L+y/NbZzZgkeSsAVApQocxYO63uSQl0hoJn/ir4T/BK3qc5Np9eTWtJullE5r+CMIYt3N0Gmq/OFKAuneQQ6+S+yoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYrJJJv5NHU+ZESVsxMVCe2r6w4ff0ThEzslSfXZ8pQ=;
 b=PR+zsw63sgYs9ZHYY7rfHs3+wCUCK06Xl1Ac0oZi0gw+PMqdi6xLGQbGicVwCAZ3OxY98ztGCAPxf5kXkQ6rDf/lBIGG5dGyX3v0KcQEtTtvXLaeGnViVrF0/z5bjEnBAPbfUn1cmpjJN5jRXR6/agsaLjza+gWDH6mhxxWRIxM=
Received: from MN2PR05CA0066.namprd05.prod.outlook.com (2603:10b6:208:236::35)
 by BN0PR10MB5159.namprd10.prod.outlook.com (2603:10b6:408:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 22:39:50 +0000
Received: from MN1PEPF0000ECD4.namprd02.prod.outlook.com
 (2603:10b6:208:236:cafe::b9) by MN2PR05CA0066.outlook.office365.com
 (2603:10b6:208:236::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Tue, 6
 Jan 2026 22:39:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 MN1PEPF0000ECD4.mail.protection.outlook.com (10.167.242.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Tue, 6 Jan 2026 22:39:48 +0000
Received: from DLEE204.ent.ti.com (157.170.170.84) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 16:39:44 -0600
Received: from DLEE215.ent.ti.com (157.170.170.118) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 16:39:43 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 16:39:43 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 606MdhS73586904;
	Tue, 6 Jan 2026 16:39:43 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 6 Jan 2026 16:39:23 -0600
Subject: [PATCH v2 3/3] arm64: boot: dts: ti: k3-am62l3-evm: enable
 target-module node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260106-wkup-uart-wakeup-v2-3-fb4cbd56c827@ti.com>
References: <20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com>
In-Reply-To: <20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <msp@baylibre.com>,
	<khilman@baylibre.com>, <a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767739183; l=830;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=6z6oIPqLS6m8/2lbknElanlGAg7aG1FZU9s4eqTkUP8=;
 b=bIly9dBlC3Kue9LcN6rL8Ia/a64Qx75ziM9areI48fk1Wj1iLBaiWawLLm1lW6VB27aJCE+ju
 ohmjkh38I0aBNJGgRpzZ30EJkGelmihFIcbhvxYhLC0ZVI2k2o8ZaB3
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN1PEPF0000ECD4:EE_|BN0PR10MB5159:EE_
X-MS-Office365-Filtering-Correlation-Id: b14586f7-0a87-451a-8199-08de4d747f6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Rnl6NU80dmI0SVhDN09Gb0c3d3ljNmx3VEF3QzFGV0JTWThkNHN2d0xybm5T?=
 =?utf-8?B?UG5aZTVwYlFRMlNFSGZtT2tyZmFPMUNHcTJ1eFBqQkpJc1VkeVZ2Rlg1ZE1C?=
 =?utf-8?B?N2U1QzAyc1RuZFdtSkRpZVNuSmFBNTVBR0JEMGdzczFIYXNPelBtSGNSMk9w?=
 =?utf-8?B?UzhSTG5hUXVmOHkxdzYyVlFzWDNpZ0hObmp6YnduUTYzWTVNSW1iMGZFWnZJ?=
 =?utf-8?B?YjVuanJnT3dJRzc0NTczV3JKeXJodGtYblE1aWhBK1BjVk5TZ1E3dkNnQVpT?=
 =?utf-8?B?V3RnQmlHRXVrRkgwVkViRy9jWXNRTlNlT01yOWVkaFJTRUxtZENFZkZ5Z2pX?=
 =?utf-8?B?eWM2enAvR1lLNk1ubEd5UjRxblEwRmdEcGZaR3ZSMkJ1bW1yNnFQSk1adldB?=
 =?utf-8?B?RCtkeHJ0NXVHYm95Um5seFpIZkw5aHZoY0F0ZkxsQjhmc2NsZjRRMEp0L1Zj?=
 =?utf-8?B?Qm5IdC9ReVRHQXBEUUhjQ0lSazVSRG5WRVc3WDFYbDhDWHBJMy9oY0YzWTQw?=
 =?utf-8?B?REZhaHlGbnE4SGppK1N3VTVRSWJYV1p0N1J0WU1ITEpKdExwbjkyT3o4eDJs?=
 =?utf-8?B?Y1A3R3liTzVPNUM2QWo3RDBBZ1hxRDZGOEo0TmtwTWl4eGRQa0k3QlRxMUlI?=
 =?utf-8?B?c2NNRXVDWWlrSmt2UjNCZ3FjWTNZSXBRZHRwM2U1b25YN0ZQdDdmUmJ1a2py?=
 =?utf-8?B?UDVSQ2JKZ21pT1IvVVdKMUJiWDlvRmtFK2NEWFhxMDdIak02elJIcmdwNkU5?=
 =?utf-8?B?NDYrakFJUGdiUm0xNlFWUm1iNFF1WndoOHlSRFpTeXV4WDJubHh3eGZjV05M?=
 =?utf-8?B?R25rc0lnQ25odndORXN3OWl1NkFGK0lyQkRQbmpyTGJEakE3WUpqNEJjWk5I?=
 =?utf-8?B?THpDSUxmTnRlVmZRMDZ0YU1PQUovZ3NRSVJSemFXMjFXMTRwdjBVbnZsMjUv?=
 =?utf-8?B?MERHTll4RlExVUw4ellnM0wxUHhEZW12d0xabTVQamYvNjhGNHFBUVVVbjJo?=
 =?utf-8?B?WlFuR0ZCTEdIU2JMcEMyU2JqTktDbVhiQUhYQ1k3N0srajcrV0liVTFSL0NP?=
 =?utf-8?B?dXE0a0R2V210Ums5YnoybkE5QU5mcEdIWXQrVWhHNDdBeUJNU05yS2pBcUlS?=
 =?utf-8?B?QmRjdnJZNjVPVW1EdnJkb0N4QUJJclFGMVh0YnhORGhjQlFHZ3dUMUNmTlds?=
 =?utf-8?B?ZzdaTmFzd3l2ZDZwc3VuelF6emEyZ2JOTTJBSzhrNko5V2NId1dJSThXeDJa?=
 =?utf-8?B?dktzYXh3YUtOOS9UeUNNVkdwTmdDcXpjNGRldCtGV0VycnF1OFU5S3g2SzhG?=
 =?utf-8?B?V0IwNlg4a3NXbThlayt4U0JaT3k2QzZEekplaVJhYlBta2xhZ0YxRVMzQS9k?=
 =?utf-8?B?WGlMUFMwK2JxeGxvdGVVS2h5ZzBMbWRLYWdlL0I4WkxIM2c2WFJDUDQ5NWNu?=
 =?utf-8?B?UjhKeWwrYUR0ZXd2NWZwWTlBenBQNWZKNUxQQ0orWUk1QWgzaTJQc0tXYjZ1?=
 =?utf-8?B?b3htMXdiNzdiT1Q3MG1DTkJzVlM5YzJsdGZPeGU0cG1TZzMzMUNyQUd4WDAz?=
 =?utf-8?B?VUdGZmpncnM5VU5JbWtQTTIraUZsbmxEaEVtZklxMkNibE94K1B5MVZWTGdR?=
 =?utf-8?B?RFZXbEVjbVJGSXBJUEliWTNVM3JoOFVtbm5hZk1iNXd4YURsTTdKSjQ5NHNQ?=
 =?utf-8?B?eFNTcXJIZkN0ekdTdUFkRUg4WCs0Y25UWDkxTC9CWEEyaGZwYXJTcENlR0xO?=
 =?utf-8?B?TUFTVUR4K0M2c1hFRFNhK2c1eW1aT2h5ak90V3RIVzVhK0doRGV6bkRMcXF0?=
 =?utf-8?B?bU55S1RxdnZYQXI0MlFFYjVxMWFHb0YwMW1DT1JoWmpQYzZCbGFDQmJYYm9K?=
 =?utf-8?B?NTZaTTlTbEh4MjA0ZkVqQU5TTlgrMEl6b2tCSWhKYW1seEJOL2lPekdTeDRm?=
 =?utf-8?B?akhYRUVLc2sxc29jdXhiTlNFWDRvd2hUdU1CeG55aXBxMXVwQ3MyeDRpMW9n?=
 =?utf-8?B?VGx5Unpac0VYeDJ4NGF5b1czWUZNRG9PbURCUWNJWHBEK2JoVElmM0VKQVJD?=
 =?utf-8?B?MGdpYnNZZEpGbmpvSU1qQ2xyVUw3dXBCeWJIUVMzWmlIcFhCUW5YZDZpMTJO?=
 =?utf-8?Q?amgI=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 22:39:48.1884
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b14586f7-0a87-451a-8199-08de4d747f6d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MN1PEPF0000ECD4.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5159

Change the status of the wkup_uart0_interconnect node to enabled. The
target-module node sets the UART SYSS register to allow wakeup from WKUP
UART in DeepSleep low power mode.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
index cae04cce337366b50928d39b0c888550b14e43d3..02b1a1c76b2ee05d49cd69d199a6aacdb1973fa0 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -359,3 +359,7 @@ &usb1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usb1_default_pins>;
 };
+
+&wkup_uart0_interconnect {
+	status = "okay";
+};

-- 
2.34.1


