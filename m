Return-Path: <devicetree+bounces-252135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D23CFB7E5
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:43:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E7F73008750
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D901DF73A;
	Wed,  7 Jan 2026 00:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gG6ZJ/lz"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011047.outbound.protection.outlook.com [40.107.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1C11E47C5;
	Wed,  7 Jan 2026 00:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767746571; cv=fail; b=j0J45O12i7WOC5DVaaOk3a6ca4ccJFfhYKUL+uly8CI1YIDmNNGo8bYwqXK8IVLSnTl/d3YcbycDouYrErS97wm2jpChHWMiBGsn4P/vWRVg/g4oiYWF/XDUWnAaow+7/UC1ZqNKkv5ONtIu1yrhrAwSeoL8gBXbint+YX3Dxtc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767746571; c=relaxed/simple;
	bh=ExQ/8b/2G3828fPuyDBNbPC2koxlWGsuuzfZq36r/tY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=UUnT9jI3KZGSuEBdemJv6ANG8sg61Zc8oJJbejiyD8RU9zfiPUCn492OfrhVUrRbZyfiZn9TbdkdzvSnxaGZHyylGZSSWxg0IbxOYRoP7maiJoym5inGlyPFMxL2BD3TyOvlrv4oN1FL0W1uFHNmE0A7AyEvYAhsILiABxvRUfk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gG6ZJ/lz; arc=fail smtp.client-ip=40.107.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q64plj/077jxZ2DIBNyKNZcYvnGq/+id26C+HY7K5DDOM7ApTVpKasPWX0VN7WmyZH8wcqSJLr3fij7f52LwgjF0HoRPEzRfEdkx3gJCgRo6zHG3ifjlbyIE5pvSfvQ68u+/eJo9UwO+drirW4O3NMmLTkEkDfiKgH5LG50W1SjN3eJJIaJn4HZLwpR8YLm5ELGJiVCJ+byR95vzde3kueiFEB6iGIMncs4pl1/d0D769XoPKsDcpUQ8uxuqjDsAbP02QVcoXX14KpuwCYILxWKKehyhuKiDMiqvJvgau4CS1PP7cJeMvN098OpYLj6G6OEDhJKVOD7H2iKUR08gkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JXpQrsNloZxebq0NagS0nA4YBUsacSc+NnLoFEWj3Fk=;
 b=UswVSVuikQR1BZOLgYknf7SDYUd6NptmQ6WYHzul0VRUEVIkGX9gm2TmDUoGdUfBMoliKGsSXtFNSIMZXCrsfoUr+gYJLVaMkHhlGX2IPOHr8aZxJ1wrCYEKY8qk2I/2hMxSSsztIuAteNMx8MmDKzhvEzWCnvlxvCrLlF5uyLlSRUr6SB+m7kyewL0sD9KzrFVw1/IrOj7pl9Xe+IiIN5recvxfZKiB/Xv8gfgcASAXg8Xb5yL3jrNcNxuXmn1lqrnMLFAVZSoHcbXomCtCz+4oFglFqzGuTMWwBovPtgsfiatzMYl/JpVPHLXCyCxAWRThEBjb5NCet0EA6FNMJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXpQrsNloZxebq0NagS0nA4YBUsacSc+NnLoFEWj3Fk=;
 b=gG6ZJ/lzv7aFwKvZHXsY6fSAIhNuoEMWPfdpjYsFa1rbE2V//yum0mRJt/MmNNHhoIBlNaqcJQvRjujO5Jd3GY0bOfZKkJ9uVXsrpkZSo4x8FpZgOGFQiATHI3esr6q46E718rhs5vVtAM7//016XcrnMz4xLpGV8+5jwyWvo9s=
Received: from BY5PR16CA0003.namprd16.prod.outlook.com (2603:10b6:a03:1a0::16)
 by PH0PR10MB4744.namprd10.prod.outlook.com (2603:10b6:510:3c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 7 Jan
 2026 00:42:47 +0000
Received: from SJ1PEPF0000231D.namprd03.prod.outlook.com
 (2603:10b6:a03:1a0:cafe::d9) by BY5PR16CA0003.outlook.office365.com
 (2603:10b6:a03:1a0::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 00:42:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ1PEPF0000231D.mail.protection.outlook.com (10.167.242.234) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 00:42:45 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:26 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 18:42:25 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 18:42:25 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6070gPrK3856461;
	Tue, 6 Jan 2026 18:42:25 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 6 Jan 2026 18:42:19 -0600
Subject: [PATCH v3 2/5] arm64: dts: ti: k3-am62x-sk-common: Enable Main
 UART wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260106-b4-uart-daisy-chain-dts-v3-2-398a66258f2c@ti.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767746545; l=1888;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=ExQ/8b/2G3828fPuyDBNbPC2koxlWGsuuzfZq36r/tY=;
 b=efMbTxgj6IFbPAwUuDlAGOsK8ovpuNMPEp6n3jLYlfJP1JeiGDn+/QeZBDBywX1iWZKz9rvGc
 2j5DWLaJSCIA7VdYnrpdSali+VywTwXGAW7OQFNGPsWMr628YP1JviY
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF0000231D:EE_|PH0PR10MB4744:EE_
X-MS-Office365-Filtering-Correlation-Id: cf409fd0-e118-43f7-8caa-08de4d85acb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MWhpcjQzdEpvSm05Q3lRUHdoNGMya3lWMHF6Z0t3R3dTNHVzWE9rTmVMQU5X?=
 =?utf-8?B?TlVxWEdCVHdkS1pjbVplMnQ4Nm5GOFA0RXpUQ2V1cTJYYU1Fb0ZGeG9EYnlJ?=
 =?utf-8?B?TUZmd0ZTNGhxR1A5T3VheHJEcVZnYzJSSzl3WEpmeDhRSmhpZGhpL3BTd2Er?=
 =?utf-8?B?NVBWOGxxMGg2MVQ3S00zaU5wMUtHRVkyTEt2QTEyQ3FDbVRIVmk1SVl5ZExl?=
 =?utf-8?B?WEZjdUZZajEvTmlxbDdTNkFxTmw3NWVpTk1sQUVqYnlGOUEycWFoU2dkZEZZ?=
 =?utf-8?B?eFY3UWpwOEhjWkRUbHB2bk4wSkE2SkxGZVVQNjI5UGQzcXo2K3ZzbXFBN1hB?=
 =?utf-8?B?Q3NKcTlVWmNuTGFqeUZHUWNWbUl6eDFRQXkxcGtjKzBLMCtkcUxIOUhTaVk4?=
 =?utf-8?B?T2t1ajZwenV5WFhDd0NvU2xkMUVqK1VBcDN5cG9XSWtZeU1vOVZGNTRFWnRz?=
 =?utf-8?B?dWNaLzBHR2tIZmRBZzBPYWo3Q1ByUm01UmRPcDNTMUtkT1hTNzFsOVJ6c0My?=
 =?utf-8?B?aTJvM3F6dHR3WCtyVG5icnUyQWVxZ2t1azA1MHJRVFlSZEZZVUFIYmpKZCtv?=
 =?utf-8?B?NERsOUEvNkUwM21RYVJvMzJFcmpJWm03YUdRd0tzNmpsNW9Yc0RLcldzVGFZ?=
 =?utf-8?B?WFJYdUowY3lWblg2RTdGb0FXdTlSOWNtN0hKbmgwUjZMcjk5QjZ3YTZicHFp?=
 =?utf-8?B?UFRGRytmL0J4WmQ3NjVKMVp6YVhRNGNpaUMzMElONjNSc2dqZlNwakE3QU1X?=
 =?utf-8?B?QjE2VjQ4RXU2NHRuV0RQSDlpOVIxZ3hJOEV4cmhVYUFmQU5FN1RlK0RzTVlY?=
 =?utf-8?B?b0xQUVNDVk1nbzBmYUNGNDdzQmRkL0JMTVJZUksyM3R6NzlUL3MyRkNXZG9i?=
 =?utf-8?B?WHlucFlCeUhWajFteTloNmFQeWh4RW9ndCtsME1MQ3NKSkllMUZpOC9ZKzJu?=
 =?utf-8?B?RWoxbjJpZFdMTGRKUG5LYU9yTnk0UDlyK3ZZay82VS9JYldlYTllUURwOWlL?=
 =?utf-8?B?Nk42Nk9BYXoybW9mbjY2dnZGVkZKa3lyY2tHcTZWdXYvNkF5bmhkclZjZHkw?=
 =?utf-8?B?RE1saC8wQllLRkd0d2hSQkpHZWRBdFN0cjFWRGcvRjFpL3V0OUJUYm9GYWFq?=
 =?utf-8?B?TzY3RUJRazNTOUNtYzdIbHg0ODEyb1VFcHBsTEFIY2FvaTdqMkR1VUJ0aUhP?=
 =?utf-8?B?aUt5d25iQUdQa3Nkb2lncWp1RzlLejd4cjErbEVGY1ByVU5iMG93azhLbFh5?=
 =?utf-8?B?L0hJNmJwQW12WHZTZ2VBelh5dlpjREgvc0VkQXoweHZvY1NlMDduSmVmZHhh?=
 =?utf-8?B?bCtWRGlYdVhLcGk5TDF2bTdzRkJPSFlOdXBJbG9iK2hXSlZzaXlRTWYyZis1?=
 =?utf-8?B?ZTVYc0VWdmdDem5MUDFHVHhEakhjb2lNSTlGNktZNDlhTXh0SEtGeDR5WFgv?=
 =?utf-8?B?M0FjSko1eWpEQkN6NTlFTVUrbDNlL2JtRFVzTWtLYnQ3aGxOTWRQU0dsSUJa?=
 =?utf-8?B?eEQzTy9WbndVaEc3aFJKZDYzN1VZRkE3T3RqWXR6dXdoVlVHelROL29PYmtr?=
 =?utf-8?B?Y3l0cXorS2ZueUFZYy9HUUw1alpVZEw5Vmk4cmZ6RVQyeitIbm1ONllSNTh2?=
 =?utf-8?B?WFR0ckdoRWd2QVgyWHVGWHJWNCt4WHZNblhkMGxwRXA4NFl3MkovVE5wbEpV?=
 =?utf-8?B?WVBOYUo5K2l1bkFSWE56ZGN5am1jblhKaDhSOUhGamxSSWk5a3pjR2ZTcS9Y?=
 =?utf-8?B?azFDQU5UVjQwYjg1U3RkckNObnhrTEFLcXd6TDJSeTBHYnEranRvL2xYWEs0?=
 =?utf-8?B?eWhuankwOUhtRXpMTU9UeVhiR1VCazJMSS9Qc2czUG9sYjJPVVBpVHVjbmtt?=
 =?utf-8?B?dXRkdVp0Q1psbzg3TXNpbUYvRzd0d0Z4Qlh6ZWhYbHcwRTB6T2ZLWXpKNlpD?=
 =?utf-8?B?aEdLOFI1V205U0pQK0xLYXZ2QXN2L2lSZUFJamF4UHp4dzdFdEV1c1o1cXJ5?=
 =?utf-8?B?VTc4RkRPNGtDcTY5SW1RTDYrMk5WTjVINnJoUk5rNnNsTVpaVmtJRkJkTVN1?=
 =?utf-8?B?a2NuZ2VvL2FnOFlYY2JxcXEzaGNwR0pYenFyME0zWEF1cjZZbUt6Ui9haXhs?=
 =?utf-8?Q?lsGA=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 00:42:45.5706
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cf409fd0-e118-43f7-8caa-08de4d85acb2
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF0000231D.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4744

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
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 50ed859ae06c47af38b11753d909a91485d438e5..ab9e58c2d225eb44c054d984aad8f0bed92bf7e9 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -151,6 +151,13 @@ AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
 		>;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (D14/A13) UART0_RXD */
+			AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		bootph-pre-ram;
 		pinctrl-single,pins = <
@@ -322,8 +329,12 @@ &wkup_uart0 {
 &main_uart0 {
 	bootph-all;
 	status = "okay";
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 };
 
 &main_uart1 {

-- 
2.34.1


