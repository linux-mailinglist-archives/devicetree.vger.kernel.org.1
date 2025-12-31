Return-Path: <devicetree+bounces-250691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6990CEB1B7
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD7F130198EE
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4477E296BBC;
	Wed, 31 Dec 2025 02:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tmJnGZ3X"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013005.outbound.protection.outlook.com [40.93.201.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D56A26FD9B;
	Wed, 31 Dec 2025 02:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767148811; cv=fail; b=q8ClKSR9vpYauUBrvJU0Y9J77I7Q78168t5X/tM8zCye+lbUT661g3tdQPLQjcRFQhTPz1LEvOZ4ebqEDBm7YeNTR6zxVFNOklaq/wirLyJL9z9o7jvIwxBRFzVEGLBOts+5M6qEuIKIAHAdO4RD3AJq5yjpBrOw2I/L1Fdzbo8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767148811; c=relaxed/simple;
	bh=/FelgTZ/GCw/lDmEqyCkhV9q9xaIbW/srD7FyeQVn/M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=MXB0nxQKfKg7TW0ry35qRM+aw3v7V5rceYDwNu3GW0y+lZ3gle2SSBtz0PEf7795nyLiISQAaLaTQFPYjJWYgJsYaBx3Qla3VpCTKeVirOdNDe4SPW/dJPlAea7qx8hjVgdnOqG9i31ZhlKn35hiS/vpY2gVOtuMohUWp+gT3pA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=tmJnGZ3X; arc=fail smtp.client-ip=40.93.201.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WH3yApUqnIZUczqZo0RJ3SljJGnkU63NMRXbSeLGpOlYPRLKf3zzLWYoNoua5SXiBv7lF9r9MCFNYDy4IOThMEdV/hNKi+nZJ/j3ZftDAsHSHuxCULzyVLjleUstNP1WwzfWLs/sUdnh355K+PJtN0JFJaIJE4V3ajtO23vLS3sT+zbyxPw5N/5Bd0X1Z0HnI8Ye59s3/JUc60CgnXXs0hHtYD5CI91rQiXaZMCVjY3ZvZHyk43iKB4g/KbwjzXSBuFaBsEx3qW89DkKgDKc8Wqo9Fpsfg6RFayaU/QrAFO4xNQMMw2MJWPJKzia/QTjxBgIiU8rinrTmbVlld0Ozg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yp99J7/0He9oetlEOkoczr7RdkniexVUvJhzCtL9mds=;
 b=krcYJi6GOMufXJeNUnVZ6SHQ3LDqJ1Y/Qylis2/jVsGgaN9YfPj+FrzHuacve2atstJDIcB63cnDpl28aLdUa1CCfDbw3BshXJsTCaooC+SBBYz5NdHJ187LcTlq5ANJQpJ5Wso7pIj/xHmhcylAf5Ontf0RJU/SQk+siUV/K6S9xl1GfarPiS55qGNk3G21JVFjE8zSgymlFjmj4hHUrH9HJibaCgEVl+IwXo1kog6XbkxiV+oaQGb/XfeD7HV+8TxCFFIUkHiKgxW+qsfGg877Ascx0l5w8yPNJi7zbs1kNil8nOzHsIWc7J/OIEemV7sd4ts6qdP+BZRzABhRfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yp99J7/0He9oetlEOkoczr7RdkniexVUvJhzCtL9mds=;
 b=tmJnGZ3XaQgPM00qKsEYnKiWE4HT31ivfYTaUOtxiaz9HTbTGIiBNRs7lg7MpTHxlusw5Ai13cqqfIu4NdiLm6ajEwLhedRV9fyUtbiv4D6jWd/fTQblzCs3XylMekNk0EH0ViTYCZBm/zKpSlrwc+MQDpaG9qZeE1brlOX2uhQ=
Received: from MN2PR13CA0010.namprd13.prod.outlook.com (2603:10b6:208:160::23)
 by DM6PR10MB4156.namprd10.prod.outlook.com (2603:10b6:5:217::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 31 Dec
 2025 02:38:53 +0000
Received: from BL02EPF0001A101.namprd05.prod.outlook.com
 (2603:10b6:208:160:cafe::57) by MN2PR13CA0010.outlook.office365.com
 (2603:10b6:208:160::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Wed,
 31 Dec 2025 02:38:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF0001A101.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4 via Frontend Transport; Wed, 31 Dec 2025 02:38:53 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:49 -0600
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:38:48 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 30 Dec 2025 20:38:48 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BV2cXVA1704518;
	Tue, 30 Dec 2025 20:38:33 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 30 Dec 2025 20:38:22 -0600
Subject: [PATCH v2 3/5] arm64: dts: ti: k3-am62a7-sk: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251230-b4-uart-daisy-chain-dts-v2-3-fa5257ec54bb@ti.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767148713; l=2072;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=/FelgTZ/GCw/lDmEqyCkhV9q9xaIbW/srD7FyeQVn/M=;
 b=1lraVFCKIRkFA2CER4Ct1TN5uiQSYXFw+Q+XE4PRQ8BY2Nvbt8savU7JylVnLsW+3nQj8Rc3i
 A68rCJqw8KbCwa45Zq/6Wzqs5UEAFd+Q789okHbDqufPRDyQvyEXA0Z
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A101:EE_|DM6PR10MB4156:EE_
X-MS-Office365-Filtering-Correlation-Id: c8b0b6ca-4df5-4c89-78ff-08de4815bcce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cEFtTFA5clBEc3kxcWJVZ2kvYkJLZWU3UHVFK09CeDBralp3QTl4ZEh4WnpC?=
 =?utf-8?B?T1FwNEN1VEhRcjRhVjRWYnBTdVd2a3h2OUZQVHRiQnFTdGxXU08yaWJJZGRM?=
 =?utf-8?B?cHBINXNSc0RaK2dkMzhwY2Z0NFVEUEpwWEF0WXJudmlydUZNRUJTaGdabFEy?=
 =?utf-8?B?cEdtN3hDTHhtNG1CTzRwek15a0RjVVZ5K1N2UnNmNjZJQzNaeUpPRm9VR0Zx?=
 =?utf-8?B?aWpmYndIdmZIaWhRYkFOdWN2STdTb3BZT1pRY0ZmdmVNYmNobTRTakZ3d0VD?=
 =?utf-8?B?bER0eERIUDV4TnJDcXFwck1EbGJqUUUzalloRzMyNnN2bEx6VkFqMVNMWVZ5?=
 =?utf-8?B?d2hzMHNLNW90czBDL3E2dkFOeDk2cURnOW9QZWJkblZUQklkT0NHcUllVmg2?=
 =?utf-8?B?cExMUVVpdFZEUVdhaHQ0QTlPNnIvTGszT3lnaUk2M2tUVTlsS3I3L2d1TVBJ?=
 =?utf-8?B?ZzFuNlpYd3hBcW5TSHdUWWl2MUQycjFIU25teXE2akZEaTZveUQ3ZnVvOCta?=
 =?utf-8?B?NGdMN1VuSmhoelM0L0t3WjBNRE10L0NUS0xuazV0UVIzaDM4bVd2U0hTcDFy?=
 =?utf-8?B?aFB5S3h0ckd1SVZEcUVpaGdPWldFNjNneFJJVlMybzZ0NjVGVnJzUS9Udm9M?=
 =?utf-8?B?VzVaY2hDL1FPTjYxOUtKc2Frc0FtMWlDVmZzZlkrd1FIOWVDREZVWmYrZWxa?=
 =?utf-8?B?dzltY3ZGUkRhNXA4a1FUaXhwWU5kZmtQVk5NMUkvZm4zbjFuQVpUOGphUFZ3?=
 =?utf-8?B?ZitNTElXTUMyQnhHYVNoMEo2TS9lLzF6dWp1cEFYZ3c1TVAxTDZnTGhsVjBv?=
 =?utf-8?B?NWtoV1E3T2FSeXhJNnFpZEh6VUdlS2doMWFZd09oendaK3lhTVpDQW5IN3gz?=
 =?utf-8?B?NWFRcUpJejNMcU1IVVZRTFJETDNWcEwxRUVlZnVpZEM2WHYxNUdoenBaWXIv?=
 =?utf-8?B?b21TZ01wdENvQitVNVlKeEdFb2FtN3owNVFUei9LK1pzYTVyMTA0ZEpoeWJR?=
 =?utf-8?B?dEZCUUJtMlp4OUJXYlN3YlNiK3lzd3kxTmNPUjN5ekxYWUIvUk52ay83aXJT?=
 =?utf-8?B?ODJTaUswODE4Yyt6ZVoxclBiL2srSTFuK01BUTY5ZkdHYk9xOUpOS3BHYWJs?=
 =?utf-8?B?RzJTWG8wZUM0NXVlTVlaZmhvTmE1NWRJdXl5Z005dTJvK1NSNm83QkhhTjRJ?=
 =?utf-8?B?TFNES25TVlJEdzErYXl4RncwU1RiS0dXa0hsbnNXU1dYKytyaFV5M1N3Z2x6?=
 =?utf-8?B?WVBta2x1TnBIaHQ0WDRXMkNVMlBJWGJRNnFlbFdQTTZzVHJkQkVkc2gyU1RT?=
 =?utf-8?B?ekJtZFhVQ25NdUZTOVBwMmhsZm5aMmpLK3Q3a3FuUlRXTjZscDNiem81MEsw?=
 =?utf-8?B?c0kvai9NelErNXp5bkljZnZ0RklwNFFtODlKZVptT2tkWG5ML0hkd0JZQU12?=
 =?utf-8?B?eDZkbXd5eVJoWVBLN0FTUjdvMXNML2RkZmkzZzV1aWUzK2VEdkxUdWU5MG5J?=
 =?utf-8?B?UVdMdEIvOWlTZkdnZGlEdHhSNE9mRE5haDczSnE1NFVKakgzSW9CdXlnRTQ0?=
 =?utf-8?B?dStFNzFmTzBpMFdOY1p1UUhHd0JveEtTNU5yV0JtZ3E4U3lrdzRibFZIcFhQ?=
 =?utf-8?B?dlVjekNSSzVqTHVJOHdhYXRFMXZuYW9WeHdRVkREcU05UERxakVFSFlhdERE?=
 =?utf-8?B?WXdsZGUxSnJPQVQvbVV4cEtoL2RURXNZNFFCVWFiejJ5UU1TOXB1V1ZNMUMy?=
 =?utf-8?B?bjRLTTdUMVhYSEF1U3AzbVQxSlBEZkV2dzRveklTUEtzR0hrQ2lTTm51bE0r?=
 =?utf-8?B?OTlsUVJqSmNnMVFMY2lsVHpzdVBSZXVUN2FTQ0oyaCtVNVcyYWJKeHd6RktD?=
 =?utf-8?B?UG8vd1lDbDVUcUdIQm0vZ1lWQmgyeG80S2xXTFE2STIwUEhWSkY1VCtkVldH?=
 =?utf-8?B?cTUzL0hoUFIyNVJzSjlGTmpJNWlQWU1jMWx2aXYrOFB3SFJNdXA5NlJpWE5Z?=
 =?utf-8?B?VS9rYXdSTWgxSms3bWNPdzQ3ci9aWm9DNXQyS3B2WDdUMFhHejlHNG8zUUYz?=
 =?utf-8?B?UHc2bGg4NS9nRC9COGoydXA2TDZadE1sZWkxQW5ha2padXhYeVhIWDVsbzdF?=
 =?utf-8?Q?2mxQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2025 02:38:53.1174
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b0b6ca-4df5-4c89-78ff-08de4815bcce
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A101.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4156

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..85f93975fa728e3e65f5c7562e67e684cd5a4da2 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -274,14 +274,26 @@ AM62AX_IOPAD(0x078, PIN_OUTPUT, 1) /* (T21) GPMC0_AD15.VOUT0_DATA23 */
 		>;
 	};
 
-	main_uart0_pins_default: main-uart0-default-pins {
+	main_uart0_tx_pins_default: main-uart0-tx-default-pins {
 		pinctrl-single,pins = <
-			AM62AX_IOPAD(0x1c8, PIN_INPUT, 0) /* (E14) UART0_RXD */
 			AM62AX_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
 		>;
 		bootph-all;
 	};
 
+	main_uart0_rx_pins_default: main-uart0-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_IOPAD(0x1c8, PIN_INPUT, 0) /* (E14) UART0_RXD */
+		>;
+		bootph-all;
+	};
+
+	main_uart0_rx_pins_wakeup: main-uart0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62AX_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (E14) UART0_RXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x01ac, PIN_INPUT, 2) /* (B21) MCASP0_AFSR.UART1_RXD */
@@ -717,8 +729,12 @@ &main_gpio_intr {
 
 &main_uart0 {
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_default>;
+	pinctrl-1 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	bootph-all;
 };
 

-- 
2.34.1


