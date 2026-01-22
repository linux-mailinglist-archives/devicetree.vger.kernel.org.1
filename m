Return-Path: <devicetree+bounces-258594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH/YA49ncmmrjwAAu9opvQ
	(envelope-from <devicetree+bounces-258594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:08:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBFB6C01B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 283F03086DFB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B017E372B47;
	Thu, 22 Jan 2026 17:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qcM14dWK"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011025.outbound.protection.outlook.com [52.101.52.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2BD2F2914;
	Thu, 22 Jan 2026 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769103542; cv=fail; b=WkroJQyL0RUmddjD6s0jpQtro3zZjrMj6r0A7rqIxvvot/k+u5VcRHs7YKNbIqL7CkY/QN0MugTci49r4Hdp45eRlet6NU0xQtqEymBzkVPsGGP70kNyCCWVzCA9/ta9daeWgD5BqHDYSkDweohY1eUvCQR40BIAqOusOjmwKyw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769103542; c=relaxed/simple;
	bh=/F3GTwV8vWyhYH0T1ZUADpI7JN6F+dYPAsKOqCC5pMM=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=FXAn3Rmy/RZ4/6ZttQXsS2gapBNfGod1uT+TXhOfcNZ/680L2F63EOtyVODk7FsuGFgvU5Wy+X/R6j+qUvheI/EG3X7l13n6wBRNYFSSdB+XoSCVvQ8VGzNUGCYL0GXWVHCVw11R8ItkIF+VjipT7Sk9jAqLTdRLiwmFTPSQYFQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=qcM14dWK; arc=fail smtp.client-ip=52.101.52.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=viKCalj6SQeBAy0sXPQY4T70f2tf8+iXlc+qC1S22KsCrxgyJx//eVHKmED/1PhTO7YTL5oXXCvYJ70HyuyKP4gQ6CcdGRKjDD+ncxQWUsruLkavMS4nIHqZ98FqMsFYfNCr/Xymv9VD6tDa8YhsvFKTbVW+Ti/lQ2UCogedIzu8ulU3hdXUJr3Z3Mj0grCHZTnj7BBWZIw87Ajs7DXys73tUy46d/C/LQWh/vLUkqgM9KoS39xU6xNe0VC2R4aWjs+ZIR7uKMDQUSEru0hLLbNPrUpsB3EvgPvDp7gMK72r6LbmiWCLy2+Tk+pM6w9rmodCY0Kse0q1APq2lPlu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cpPU91Ry2CKaWp/847BIZ23d5hn/yb0PynMNpL92H5k=;
 b=C1R1moW30mC10kVPhF2xBvWbRHlP98g0CofxqzWs0mD1uoSkoOQ2cnmw/oaku628z4dnCJVkP1V+OLMjHRGah+Dr2ZOXOE30Mfg/zLSD2oOFLnoyYQbGbw0lAswOylCC1WDoW1YrAx8RgyWNvXWG1wlbH/bZrOKpWluz/QKLeYpIGUj9XhlzJlu8ohi4cxTx8ZusNHi+bvmq3RMBDVtKh3Qiy7u3wnBuAYb8McVWIqieT6r3wdDjF7ZCdryZAjR3ibqOyHpLxlsvCD8YkrCEfHDZKjd0o7rzwGp0Vx4qk+pHrx1rVBrsflMtiMr/HrT+WPk8w/7kZi0bEOrCKrg1jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cpPU91Ry2CKaWp/847BIZ23d5hn/yb0PynMNpL92H5k=;
 b=qcM14dWKyR09Z2pfrYQU7uoUqb8Eic+29T3AsTw5A+b5vQaz7+UjoOR9fG0svLUn0EWdgnB2iMbQunptvXWNQbTn02rrFAUTWiKQ93btsIqJ6AHOF8VSDQulEyxiu7Ao4dpSO/P2g2ynIEX9Lyy2RNEKlWtEuCZSmPubnuL0JG4=
Received: from SN6PR2101CA0007.namprd21.prod.outlook.com
 (2603:10b6:805:106::17) by DM3PPF1D4534BE4.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 17:38:48 +0000
Received: from SN1PEPF000252A3.namprd05.prod.outlook.com
 (2603:10b6:805:106:cafe::90) by SN6PR2101CA0007.outlook.office365.com
 (2603:10b6:805:106::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3 via Frontend Transport; Thu,
 22 Jan 2026 17:38:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SN1PEPF000252A3.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 17:38:47 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:38:45 -0600
Received: from DFLE205.ent.ti.com (10.64.6.63) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:38:44 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 11:38:44 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MHciJD934604;
	Thu, 22 Jan 2026 11:38:44 -0600
From: Kendall Willis <k-willis@ti.com>
Subject: [PATCH v4 0/4] arm64: dts: ti: k3-am62: Support Main UART wakeup
Date: Thu, 22 Jan 2026 11:38:30 -0600
Message-ID: <20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJZgcmkC/4XQy27DIBAF0F+xWHes4enHqv9RdYExrlESOwFMG
 kX592JHcVdVlyPBmTv3ToL1zgbSFnfibXLBzVMexFtBzKinLwuuzzNhyCRlHKETsGgfodcu3CC
 /cRP0MUCPVGuBUmHHSP599nZw35v88Znnwc8niKO3evewQcEoq1lV8oojpwIoHODqjkcX3qMrz
 XxaqdGFOPvbljGxFfw/TmKAMGjJZGWNFF338tYsib8QhRTV3wjPCG9qrRST9cDMjjyeF3p7WXJ
 l8Xnmb2NtsQfc4Ks+2OUMiIO22lSmaUSbtpo6HSxk8uRiWyRV0ga8UXnB4wfIMGm9mwEAAA==
X-Change-ID: 20251230-b4-uart-daisy-chain-dts-d01aa40560b2
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<d-gole@ti.com>, <msp@baylibre.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769103524; l=3085;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=/F3GTwV8vWyhYH0T1ZUADpI7JN6F+dYPAsKOqCC5pMM=;
 b=lnbFstJeU50nxvVsb7fuApbQI+/HWEp9hB06jbJotPjePryAe0gXtMo334AKPLUacLrREJ05E
 iQEaIt9utphB/bGIedrOuwEX7tYyK0zx+40qA4OiVcai2h4RU8tRY6C
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF000252A3:EE_|DM3PPF1D4534BE4:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c00ba3e-8d16-4fc4-7567-08de59dd18c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SDBoRHhFSWQvTXVFOFdER0pRZ0ZGNHhMQWFJOVptY2FMTS9lZ1I3VkZpR2xr?=
 =?utf-8?B?VVlyQVFsWUhEL3NydHdTZzVqenNUSWRFaVRpdWdPa2ZQQ3AzT2lWNnkydy9P?=
 =?utf-8?B?MkVnUGE3ZXNVbGZXaklPUDNsOHpHeXNyTVQ1THh2aElCdkV4VGhOdXBsZjcz?=
 =?utf-8?B?SmdKSmJJdzh5S1ZCb2xBOHc2dXhjQkhkUWkwNzZQNDNQWW0rbnVXSm1odUQw?=
 =?utf-8?B?S1k0eHpRTnRQSDZicUJMY3ZVcnFzdThtSkJTSjd2WVU2STRGYnN5L3EyNllO?=
 =?utf-8?B?bjJRRks2UXQxV3lUeGhWa1FmeUVnZFJ1V3RQb0NWa1BCbmNWaVdLYjA5OHpr?=
 =?utf-8?B?WXp3eERLUE1qWlpGQkVUejQ0QXNvNnl2M2ZweVpZQm9XNmszQ2xJUkluVFcx?=
 =?utf-8?B?VVB2RTlwS3RCZCtLNk5wcVB4RmdlV3JPZDBWM3NSZ05YcWVIeWVDMVUrclg0?=
 =?utf-8?B?Sm1NeWxXWUNKRUZPUndJR3JpSjdsSm1LbzBnei84OUk1SHR3NVFyYjFQYmhP?=
 =?utf-8?B?NTJEa0wrWTlsL0FKaGdON09DcDJoU2NweVF5anl5VGhGWkkvbDlvUEdIcCts?=
 =?utf-8?B?cERDdytITTQvcTY5SjJjdlNoRGVYM3hmMW50QzluWDFxcGNuenJHRjJhM1Jz?=
 =?utf-8?B?N3pxVExucG84alF4N3UwZFBWWWJMUUZ5dXUrQUdBL3F5WnlxaVBpSVRQYi9v?=
 =?utf-8?B?eEs3aWdDLzhQNjBpN3RnQnFTTGxxWWJsM1R4RHRVN20rOFFES0VINWRVc1pJ?=
 =?utf-8?B?ZFVEMjk3cHlPcGh2dkFyT2lzdUJDeXJNRXZTM1ZVdkNiWGdSWlRYTmtCMWVH?=
 =?utf-8?B?aG9UU1BEV2VzVk5iL3FsRGQ5K1hwelhIUmRqOHRBZkU0RjdsSjVuL0gxTVRI?=
 =?utf-8?B?cktMTUxYS0pvMkJsZFphd3Iwc1VxZi9BbmZZUEdvZVprUkdxS0ZidXNxdWlR?=
 =?utf-8?B?bnVkSHRTekl2Q1BMZjRzZ1liY0JBQUQ3Mm5MelJ2QVZnZDdwdzZCc3VGeU1U?=
 =?utf-8?B?U2RhS3dyazJyZmlpRUZuTjcvUXBlK2lGVHFPYmpnWjNSRThCRFMrMUNabGtT?=
 =?utf-8?B?QkoyWHZVQUZuZFQxTVRsVkZZY1BlUS80Y1ZnRDhMSnpKbnNVbzZjMDVIVHBv?=
 =?utf-8?B?RmNPTVo5eFR5UlpIQmE4eHFPdEU2OTViS3RFNm1qZnNvUk5vSkZoVktUVlZN?=
 =?utf-8?B?bjE1bmtYR05CbzE1cUhlVE4vRCtDaXBtbmVkamVxV04yaUdhMXgrNG8zUm0y?=
 =?utf-8?B?UEJ3WjhUTmY2Z3lBVXhIZDM4dUoySVhGNnhUQnU5U0JDVDdHZzRkSFRHeDI1?=
 =?utf-8?B?WkdoL1RPZkdnZUREREd5cVlqeE11NUVCY29ON05zb1ZERlViM0NQQktOOU9a?=
 =?utf-8?B?Ry9pTkV5bjZiK0pFUTVkR3pqdlErdXJleG9aaGdoczJneTV5dmVJVE4rTjNs?=
 =?utf-8?B?TWl0MGk5RldseWR2TE52bzRqYjZ2SjY3WE94OWZHMmhjL0lVQkdXVkhwRUNC?=
 =?utf-8?B?TFRsY09EOE5rbDNOV0JyR3l1MXRKN1FXaFpITTNCNHkwM2dZbHpUZmZVc0lx?=
 =?utf-8?B?Z1oxdmx2RmorMEVWWWs3MzRqZFNwcU9lekdvZWR3cnpRQ0pPUmRXN0E1VXpJ?=
 =?utf-8?B?b0hROVFMZTBQU2V1bjdBWDd2aUlNMm9DM0U4N09MK0lCTXl4NzF6MHRvL012?=
 =?utf-8?B?MFozS3pJZDVnTnR4bDdVVHdNL2N5STV6RDZpTE5oMkFuNllRVUJRcGQxT0dt?=
 =?utf-8?B?OGU0SzQrK2luQ1BBRkNHRVpqV2I2SjJLQ0tTbHVMc2hlelVpUUQzMC9kaEpJ?=
 =?utf-8?B?ODUwUlFVMWpGbmM0WitWMTUzeUVBL2pQRDZWQzIzd2RQajdlOGxHbFlwUkpy?=
 =?utf-8?B?d3VpWGZ6Lzh6L1VKRzAyWXV3OWkzNGVoSU04dWNZVlVOcExzNlhvd2J4cGZQ?=
 =?utf-8?B?RVRxcDJwZ2FpNDJrL2xoTDNOMldYa0NqWE9nbTl4SnJqb0VHdVFRaEFUVTlz?=
 =?utf-8?B?d0VNSlFCVitNQkpBQ0JVd3NXOERnaFF5ZkRxUlhObXlxRXE0TkdObndpWkh3?=
 =?utf-8?B?UytFSjlxREh6S2o1ZzJFVVo2dzlGV29LaTkycGJmYnBlM3ZGakMyaWhPZG8y?=
 =?utf-8?B?MVhqV2VHd2N3NDhGU3NvNUtEelJ6L3cwN2ZVUFp5UWtnaWFXclk5VXJjeHZj?=
 =?utf-8?B?ZG9vOVRtUXBhYVZsTm5lUm9UK20zR3lPRzhkTVZnMjM0WGJHSkZWQzBINWN1?=
 =?utf-8?B?WXZmRlJUUDREekpTYlpSYUlmM0N3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 17:38:47.0997
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c00ba3e-8d16-4fc4-7567-08de59dd18c9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF000252A3.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1D4534BE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 7EBFB6C01B
X-Rspamd-Action: no action

This series adds wakeup support for the Main UART in the device tree of
the TI AM62 family of devices. It defines the specific pins and pinctrl
states needed to wakeup the system from the Main UART via I/O
daisy-chaining. The wakeup-source property is configured to describe the
low power modes the system can wakeup from using the Main UART.

Dependency
----------
This series depends on the "serial: 8250: omap: set out-of-band wakeup if
wakeup pinctrl exists" [1] patch. This series should NOT be merged until
"serial: 8250: omap: set out-of-band wakeup if wakeup pinctrl exists"
is merged.

Testing
-------
Tested on a AM62P SK EVM board and a AM62L EVM board with all the above
mentioned series implemented. Suspend/resume verified with the Main UART
wakeup source by entering a keypress on the console.

This github branch has all the necessary patches to test the series
using v6.19-rc1:
https://github.com/kwillis01/linux/tree/v6.19/uart-daisy-chain/all

[1] https://lore.kernel.org/all/20260116-uart-wakeup-v2-1-0078ae9996e4@ti.com/

---
Changes in v4:
- Dropped AM62L system idle states patch.
- Removed AM62L system idle states from the wakeup-source property.
- Link to v3: https://lore.kernel.org/r/20260106-b4-uart-daisy-chain-dts-v3-0-398a66258f2c@ti.com

Changes in v3:
- Reword commits to include the logic of how the "default" and "wakeup"
  pinctrl states are used.
- Revert pin logic so that main_uart0_pins_default and uart0_pins_default
  are untouched.
- Remove main_uart0_rx_pins_default and uart0_rx_pins_default.
- Combine main_uart0 RX wakeup pin and main_uart0 TX pin into one group of
  pins called main_uart0_pins_wakeup or uart0_pins_wakeup.
- Revert pinctrl-0 to only include main_uart0_pins_wakeup or
  uart0_pins_wakeup.
- Change pinctrl-1 to only include main_uart0_pins_wakeup or
  uart0_pins_wakeup.
- Link to v2: https://lore.kernel.org/r/20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com

Changes in v2:
- Define AM62L system idle states
- Enable Main UART wakeup for AM62L SoC
- Rebase to v6.19-rc3
- Link to v1: https://lore.kernel.org/all/20250904212827.3730314-1-k-willis@ti.com/

---
Kendall Willis (4):
      arm64: dts: ti: k3-am62x-sk-common: Enable Main UART wakeup
      arm64: dts: ti: k3-am62a7-sk: Enable Main UART wakeup
      arm64: dts: ti: k3-am62p5-sk: Enable Main UART wakeup
      arm64: dts: ti: k3-am62l3-evm: Enable Main UART wakeup

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 13 ++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts       | 11 ++++++++++-
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 13 ++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 13 ++++++++++++-
 4 files changed, 46 insertions(+), 4 deletions(-)
---
base-commit: c8a4a774a9b0d2c86593492625874e27e9cbc9a9
change-id: 20251230-b4-uart-daisy-chain-dts-d01aa40560b2
prerequisite-change-id: 20251230-uart-wakeup-00faeac7c994:v2
prerequisite-patch-id: f886c56dbb291b710ec07001ce79b0016c233e1c

Best regards,
-- 
Kendall Willis <k-willis@ti.com>


