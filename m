Return-Path: <devicetree+bounces-250693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 57428CEB1D8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02AED302E04B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8FC52E62A8;
	Wed, 31 Dec 2025 02:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="wPpuaEtS"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010062.outbound.protection.outlook.com [52.101.61.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41FB2E06D2;
	Wed, 31 Dec 2025 02:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.62
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149520; cv=fail; b=doBQIaIRkciOGKBIaqvFXky07MmfOyVT7KTSs+AfNW9YDCU1NNeVaDkFSghqNyy0F+71szDnk5T9/kyIJzopGHT4Bq/g1BfIkLrMRcqDwGquwNJyb3hWgEsJIKhzf/TtdSSiwubLTwB/UU48xhi/6Oy1GAfBc8ApHFNtAH4mpig=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149520; c=relaxed/simple;
	bh=w3psUdobO71ZQF7bt+ubEo1RjCG8YonAnmkCrF78keg=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=PKYnuxCa0gWJJyZb+xC4D3dC/D0m7wc7nqCoici6H9zAlRg0kZciIfyKa8PERVWfkjUQv1ZF8jHdP4w8cfVb4InlHhsIpmLaQwsqS5WOktaz9D660NrzkQ/28bKBJdxBGeTnbrK/sEvWcAnP9/cwEb2nlA67u1duOVq8mWztCQU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=wPpuaEtS; arc=fail smtp.client-ip=52.101.61.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uTdAbj1/LtQcLSkE69V6KcjO7vVph0l7jWbFctryd2BoT3BkrzntTJ/AFDQXsB7gtNXkfCp9MHVXFoPLYkbSisTolUzITc9WM+1Nd+/5WGKQ6ruxmL6aY6Ou0gM2cyfaI69GXoA//FNhVj1eXr/3/3Knm56gy7ePRt/gJfFBUuqROAKAH7xjz0k/h/90hdps7CPLP88h++Z5iQ0X4TOXM9z03UB7RJSrJXRnlJE1hKb30ok5gP+UDQZQXqU3Clh/qGnMkwJzufPjM328NtEOdirq15pjrnmTdj4LcvbitS884HawKz5w2bhDRz/uDRwg6i8Mds4fRAPe7pyqAwZ2fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XoFo2WnfpYdg9zZPPbV+sGZ6NmmshfB4IylRwTRCDpY=;
 b=HQtk1TgR2TIHFG+j0mBGIRl5eTVsBz0mZ/EEiDmatYMSgxytc7F40TQToNOJuqpVrhIe3cn8Wf58gaCqvZ2K1utqFPnqHk6keKHeXXHj4VW5ZppT9GA55rx4OuBdxAX1gYCSMv7PHQIaHRMjAr9TIH27g0DtAC2rG0ccXeEHfVXY+2yS8KjHVycjggVo7UGzGfcRI3E753JH1u2X0JdigBMaOSVR895mOg67ToRNqqg2V9czFyYeyrygLku3k8J/ha+YpN34nsC0KXk0DoXXMRePdl6cG3AX4Xrgx6hKhgtKs7nGSIcGXQ7Ptwynaypg0XeaK/39bA07P4SgNnbLEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XoFo2WnfpYdg9zZPPbV+sGZ6NmmshfB4IylRwTRCDpY=;
 b=wPpuaEtSPj9WkP9tvFzWQm75VrXRhbzm0+GjkYkgjccHbN48+AsWUxh8PVR7YG/2az17r1ydyt93QQucmcjs+gufMNyobj6urhg+jlBgxxm3wzugvL/OwRdOn9r2mvSYossak3W4xnvKY1ZXoNA4/ehr/3mt9K2Zn8dE7WN26h0=
Received: from BL1PR13CA0268.namprd13.prod.outlook.com (2603:10b6:208:2ba::33)
 by LV8PR10MB7918.namprd10.prod.outlook.com (2603:10b6:408:1f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Wed, 31 Dec
 2025 02:51:57 +0000
Received: from BL6PEPF00022570.namprd02.prod.outlook.com
 (2603:10b6:208:2ba:cafe::ef) by BL1PR13CA0268.outlook.office365.com
 (2603:10b6:208:2ba::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Wed,
 31 Dec 2025 02:51:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL6PEPF00022570.mail.protection.outlook.com (10.167.249.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4 via Frontend Transport; Wed, 31 Dec 2025 02:51:57 +0000
Received: from DLEE201.ent.ti.com (157.170.170.76) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:51:50 -0600
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 30 Dec
 2025 20:51:49 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 30 Dec 2025 20:51:49 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BV2pn4u1608844;
	Tue, 30 Dec 2025 20:51:49 -0600
From: Kendall Willis <k-willis@ti.com>
Subject: [PATCH 0/3] arm64: boot: dts: ti: k3-am62l: enable WKUP UART
 wakeup
Date: Tue, 30 Dec 2025 20:51:39 -0600
Message-ID: <20251230-wkup-uart-wakeup-v1-0-cd6e15f8d956@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALuPVGkC/x2MQQqAIBAAvxJ7TlAjsL4SHbZaawlKtDIQ/550m
 znMJAjkmQL0VQJPDwc+jyKqrmDe8FhJ8FIctNSt0o0Ucb+duNFfIuJOhc00zV2LaKwhKJnzZPn
 9l8OY8wep2IYMYgAAAA==
X-Change-ID: 20251230-wkup-uart-wakeup-8bbc95aa8f8e
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <msp@baylibre.com>,
	<khilman@baylibre.com>, <a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767149509; l=1580;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=w3psUdobO71ZQF7bt+ubEo1RjCG8YonAnmkCrF78keg=;
 b=gBOOyhSY8hJB//aKule1DgUJCt29DLVVYyMrkUsapcVyBeEOKe+GgRSn8JmFOZpHkxjpZx80Z
 DHAqWhCiUG0BhRaMWJL6PB4bo/TiglWQdikynLNAWwKGfKThybbaSSh
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00022570:EE_|LV8PR10MB7918:EE_
X-MS-Office365-Filtering-Correlation-Id: cf106f9d-3272-4fb3-d0a2-08de48179009
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SGllelRUOHFFZ1VLQzRJZHVtOFpLWE1NVk1DVmQ1cUlraU9Ec0pWbjh2NlB2?=
 =?utf-8?B?OEVYU3VsNUNFVkEzRHNhQUdLbitZN1hKU1JHS2JBWDFSS1FwUmF3SEQvaC8x?=
 =?utf-8?B?Nm1oRDhsZVFWUUJwWVN4QjVCbi91dVBYa01nTzBEZTZ0YkxpdFZkUmN0aE0w?=
 =?utf-8?B?b1p1YVI3SGZobGMrYkZVdS82Kys3bC9LVVBwZk9FV3ZzUytxMGxlVGo5UUJW?=
 =?utf-8?B?WFF0Y2kzKzVocUczYjJBOTFOeVJBOG1vMXJadDBKZFJBTUExQlpvSWUxZllq?=
 =?utf-8?B?VW1Wd0ZURjZLb2dhTmtpTGVvbE1maVROTU03VTQwMmU1cFp4SFlsZDk0THNw?=
 =?utf-8?B?OFRTYktZbW5MQ2txYlhKUVNEZXRadkJrV3BFVjhKYzNpWmxsN0F2NWxsOU5X?=
 =?utf-8?B?c2t3ZG0vUTVONHRDekFOTWJIQnJGSVZNNWZ1SGFpckhvQ0JNQWlFRWFSbUFq?=
 =?utf-8?B?SEhRZit6eWJZeTZ1L2QxRnBjN1ZNUDFnK3JaeHVld0RnaDRsREE1ZGQwUGpR?=
 =?utf-8?B?c2laL1FmYWVaTTl2RlJzOXhGYjc3czZ2eGU1WTF1ZTE3QUNhNXZ4ajg1cEN6?=
 =?utf-8?B?VFYyT2srcXFjRlRNQkM0c093TnhUUEJoN1FrdnB0UmEvQi91cWRrekNaUEU0?=
 =?utf-8?B?SDhpOHpoUjhMQjZaamR6WkNoV3BNZUdBNFN1K2R4VmcwZTdwK0c0QndsUkpC?=
 =?utf-8?B?dGxmK1FMeThnWVk1K3VqZy9hZHFpWDlFMTRvNkpmZUF5dHB5Mkp2UnF4LzdF?=
 =?utf-8?B?eDY5TnA5dENsQTZrQWVVZWRvNnZIQUFjaDliZHpEazlkQVkwU3p4YnBMd2V0?=
 =?utf-8?B?eHNtK1lrVUVOcEN1enJJYnBFaTdJTmVXeUpIYXlXbDBWckwvLzZ3TlpYU013?=
 =?utf-8?B?OFRBVUVIMzhYQjNRUFYrRTVXYmdDZkR0V0ZHUS9XT21OczBKaWpQNXl3YTFS?=
 =?utf-8?B?bnpJbmJIWGx0aDlqTnhhOEp4azhjUHAyUmtaV3pyeVJGTjhLYXpBTWFMK1hu?=
 =?utf-8?B?Z09CSEJSck9jSEhlUXJxVHJsa1NhS3B0RnhUeWpVYUVuTGI1bXJDMWtENEhs?=
 =?utf-8?B?VkFXaTZyajMrOXZscWpWQUpCdWxrNDB6TGowVTJld2pCeFQ0YmxnanMzKzdR?=
 =?utf-8?B?a3Rza2gxNjFDY3JjUFY5dXlRWkRKT0JpbUxFYXlJdUtlRWtQVXJYSFhCTnRl?=
 =?utf-8?B?bm9zWW5sYll5OEhYTHFNY0pwRXZneEFzSjFZQ3dCUGhjdzZEeldsdEM4NFBH?=
 =?utf-8?B?Y0RtbmNGUVAvbGlFVkFVTTJxRjdqTmR1Y3RIa0dzdXR4bEwxNVNLM3JVWEt4?=
 =?utf-8?B?UkNyV2hlbGVzV1lOWHM4bi8xRjBQR2M5cVlLY1RNRHBPRkc0S2dmRUY2QVFT?=
 =?utf-8?B?TVU0UVRMRHEyK1N3SGh0ZnFYTlNGL1VRUFRFNEtqVUVrSFFnWDhpQVF2aGtE?=
 =?utf-8?B?WW9sa28wZng2WTFyQzZZbTIxa3UyWTZDUTlIU3NLK0xzNjlUbFdJcUV3aTFm?=
 =?utf-8?B?L1BOeldJTUdHYmk1bkZ0ZWs3NGd1SnlrQ0RRc0dGQ0prUUIzbFl3WG5nMll6?=
 =?utf-8?B?U0lEQXZLT2pxRHprM2pGRlZkQldWMkx4R1ErWkpTRGswdVUxc3JJNWZSSzZw?=
 =?utf-8?B?dkZOUEJNRzA0VFhodjZJemZqZlFlMXF1c0RRM0VuTmFmYnVlaVpCNUV6cGda?=
 =?utf-8?B?a2IzYjBGSkJvSnFWeVlDeGVSS1E4RUltZUxvUm5PT08yNkQ3bkxCaWkrR0dq?=
 =?utf-8?B?a3lQcjcwWEt2ZzlXNjFYY3Z6NEZIYTB5anVmN3dhWVBadTcwbjI3WkxJYU9E?=
 =?utf-8?B?MjBPWXkrM014d2h3aFFXa1pTNzJ3di8zVk9yc1pGT2ZBcVJwc2crOTR4Qzls?=
 =?utf-8?B?ano2RDkvS0VHeGRYbExrVmNYUmEyNWxERzYvVnJBazlwSzhkVGhiQ3JGTlhm?=
 =?utf-8?B?bWRjbzFXMCs1U0xFTDdCL3VURFVlMS9TczZxditKcU90RzBtN2VYNGc3cnFr?=
 =?utf-8?B?YlBhSDE5MjZHa0N3QkhNQnFubkd4R3lLVy9sRldVS0Q4MGl1bGp6dXFwSVhq?=
 =?utf-8?B?U2tPbXFQV2h6bDJsb2xsczhURDRtSXVEWEdmNzBMN0JSMlVnc3pCaHVNbWNk?=
 =?utf-8?Q?YEoQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2025 02:51:57.0054
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cf106f9d-3272-4fb3-d0a2-08de48179009
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00022570.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7918

K3 TI AM62L SoC supports wakeup from WKUP UART when the SoC is in the
DeepSleep low power mode. To enable WKUP UART the target-module device
tree node is enabled. The ti-sysc interconnect target module driver is
used to configure the the SYSCONFIG related registers to allow wakeup
from WKUP UART when the system is suspended. Refer to 14.7.2.5 UART in the
AM62L Techincal Reference Manual for registers referenced [1].

Previous TI SoCs configure the WKUP UART to wakeup from system suspend
using the ti-sysc interconnect target module driver. Refer to commit
ce27f7f9e328 ("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
wkup_uart0") for an example of this.

Testing
-------
Tested on AM62L EVM on v6.19-rc3. Suspend/resume verified with the WKUP
UART wakeup source by entering a keypress on the console. 

[1] https://www.ti.com/lit/ug/sprujb4a/sprujb4a.pdf

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
Kendall Willis (3):
      arm64: dts: ti: k3-am62l: include WKUP_UART0 in wakeup peripheral window
      arm64: boot: dts: ti: k3-am62l-wakeup: create label for target-module
      arm64: boot: dts: ti: k3-am62l3-evm: enable WKUP UART wakeup from LPM

 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi | 2 +-
 arch/arm64/boot/dts/ti/k3-am62l.dtsi        | 4 ++--
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts    | 4 ++++
 3 files changed, 7 insertions(+), 3 deletions(-)
---
base-commit: 5dc233097d4f94776c0c3f6edfd7476281478dc3
change-id: 20251230-wkup-uart-wakeup-8bbc95aa8f8e

Best regards,
-- 
Kendall Willis <k-willis@ti.com>


