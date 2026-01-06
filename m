Return-Path: <devicetree+bounces-252120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE74BCFB45B
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 23:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81ABF301EC62
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 22:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24282EAB82;
	Tue,  6 Jan 2026 22:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="m3wZRlHl"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010010.outbound.protection.outlook.com [52.101.85.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EFB12E1DC;
	Tue,  6 Jan 2026 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767739192; cv=fail; b=regHPGzbhYEYiRFr6XzoKKJO6AHDbZkcmc8kA1m5ygAkq9v6uaqTH2tMLjg3JZgPmeonOkn6Ti55qdQ0RcKbTxKjxfb07VMjnXKszkBX0NEFMe3+voJwFcGRLtXSz6zmyBhMZ12zMQHJp3MSmlZBGnmAGrMI4HJfDmOOVOdnI5Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767739192; c=relaxed/simple;
	bh=rBwScZZOALzI///KpW7r8Dg3n2vevHBlYilxmmGzAxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=p/QheylH6ZG5U6DATPRCF78JEkxzZWDqjFznrL6rOmQjkHE/jzng7OL98z8CzhTOep8zf9BwHDld0GfFqpizyXzBoF98Mzp5ENCc2GJGSwdjGL1XA0IRImhQxp/CfUaFuw4ZtuzabbnHY4nHd5KOu/UcmIW0jQdOUyK1OW8RsWc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=m3wZRlHl; arc=fail smtp.client-ip=52.101.85.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XeaxcqdnVYrVUzhyR7qIRZ8ctj5Vu1P6foTQn7wenXU7u6M5GGZpgUEQUtZ+OTheKnX7apr28E5Qg20SQjcd/u3O85a0JsQaxRlNNB2sKWV0BLMXoaKVcpobIrCB0zQO66UYVJaivv51KvY35omjm4nnWdwGSC+qU+NyzBbuphvdYDhkdTiV/EFyLvP9NVlLda65HlQjGPO+3V5Prdy07sMhAXGoDje+Lk1cjfZm+DsndTJk2MYdg6JNS0VtSFB76PxX2koyjKx50r8rSIaK2/aKN8dOPvbY84Z+mqSSshz2EKOSvAlIeZZwhDmZqplczOBkYjfCNI+HNqGNId09+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MWw2ZryDlKdIX2qq4ckNwpfLkGrW+dyYIEnNyAzU/hk=;
 b=Y/N/AV3tWkl0FahzHn1VX0eXHUVOmPSsxjE7B1dvyMQYHj/BrTPJvuHtzc1ePH6NY4cQU0ygSOSGTjPGb3KF+Q1/PSB9cGi1XUq8qpIwml532GUw9S5j9vT7r9q4kIwUmEVHV6zHv8v4gvNIOiRnUBUeSnrslV02Tbih3Kr+0rUl7HsrNj0QffD3EbnGx3fx3TL5c6KtK2pM6fsJSD32NXknJH+0s3MA4pqbLfXgRN9d5xBfwiN3Uii2aeq31s5KyYjMGo1aJUCIaJyr4bBnKSONOtUCwcNXnGC4hNBaipTrgKnjlpzsibvYTxmoM4qudmC/UYnV/csguhhEpg176g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MWw2ZryDlKdIX2qq4ckNwpfLkGrW+dyYIEnNyAzU/hk=;
 b=m3wZRlHlF/LqxefD6un3iLS94kzqIl2EOkOnayFSELjaUj4HE5bUz7ZUcyP4Dqn7ksFdIAMwGdAwH8sUVyDaCoRbuVefL9XyF3am3gwhsVT+g8Q3etni9pSSNrNLZjm14CE3rXC695D5Z0K3jo8AVOuHTR46T5lmLeAcjnAo+2M=
Received: from MW4PR03CA0163.namprd03.prod.outlook.com (2603:10b6:303:8d::18)
 by IA0PR10MB6697.namprd10.prod.outlook.com (2603:10b6:208:443::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 22:39:47 +0000
Received: from SJ1PEPF00001CE4.namprd03.prod.outlook.com
 (2603:10b6:303:8d:cafe::68) by MW4PR03CA0163.outlook.office365.com
 (2603:10b6:303:8d::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Tue, 6
 Jan 2026 22:39:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ1PEPF00001CE4.mail.protection.outlook.com (10.167.242.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Tue, 6 Jan 2026 22:39:44 +0000
Received: from DFLE212.ent.ti.com (10.64.6.70) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 16:39:44 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 16:39:43 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 16:39:43 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 606MdhS63586904;
	Tue, 6 Jan 2026 16:39:43 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 6 Jan 2026 16:39:22 -0600
Subject: [PATCH v2 2/3] arm64: boot: dts: ti: k3-am62l-wakeup: create label
 for target-module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260106-wkup-uart-wakeup-v2-2-fb4cbd56c827@ti.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767739183; l=956;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=rBwScZZOALzI///KpW7r8Dg3n2vevHBlYilxmmGzAxA=;
 b=2XmWzMx2NFi82OYj4MjYuiefp3oEjoNJVnchNGLKdyrBCB86pGalMUtIqeW+kUMiEToXWA9fn
 OFV00y37+4QBUwMniZhjebVbXpSLiRXQha1RMsJe1iIiK4iQyj/I2Lb
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE4:EE_|IA0PR10MB6697:EE_
X-MS-Office365-Filtering-Correlation-Id: c33d96d7-8654-455a-3dbb-08de4d747d62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R290KzJ0bVhZRzFtTGdLTk5sVGs5QWFOYmdmekFra2RwOTBKQnRwNytVYk1r?=
 =?utf-8?B?Q1pvN2I4R3hzSzRoYzdjRVBjNi9xSFVJMGhsOTVNV3ZlVmRETnlIVWg2M1pB?=
 =?utf-8?B?L3RZQkp1ZDBLTk5kN0tqZWNBazI5a2FFcG5VNWNTMkVnNHA1UCtWUkgrWnEx?=
 =?utf-8?B?MXZFVVpqRjRoTGtrTWd1TmhYcmFtcUFidWFhNmZOMUxUdkV2cGp5NWk5dzJp?=
 =?utf-8?B?bDQ5UXBqc21ZSVU5d1lpWFFnaVdmREFOaVpvSGZnVjVNY3VoanFhRzY2TEkx?=
 =?utf-8?B?L3FZaUR6UW1Rc0wyYlVvMUUveXBTaTB0Ly9OV0JoNTlEanFwbkd6azJSVW9z?=
 =?utf-8?B?NUNYTFhqLy9EZUpnRGNxbDEyQnVQUmd1NENTSzIvdmtWZC9zV3B5amIyUWxi?=
 =?utf-8?B?NE45cXZhVFBTeWMzUW1iWU9vSTRsOXNuR0JlMklxd3VSZVdwY3VtNW1qdFk5?=
 =?utf-8?B?UlBXbzhqNlNIOE9aWHpVQXBxR2NOTnB6Q1FzRGdLUklQSzJ6Q0FnY1hLN3g2?=
 =?utf-8?B?eUhBcnV3RjIwYmhvTDVsRGdpMTM1VmdId2Uvemg0d0VDODZETzhZdC9UaFVC?=
 =?utf-8?B?a1hjazBiNWFhZmVwaUtPczBVNHg4TDk5c0I3aEIvaWxBU2VBM01pVFFhbkdU?=
 =?utf-8?B?SUlzZEFoZGVjblFEbnNONExCV1lFcENzWS9rYmZ1Nk5JYzBRbVJPVE1NSFVU?=
 =?utf-8?B?Zzk4Uy9OOEpZTnRMb3M2L2hoUUpMNHFnVUthR0l5Zy8rczdpMWs2cklGMG9N?=
 =?utf-8?B?Q096N3E3bXhsOFpWM241dDgxOVFTVCt0TXBmNUduOGlLd0QyU2tOMDJIOVF0?=
 =?utf-8?B?cC85dFBjVENLbjRBR1ZLOUIxMjl2WlNaMzFjNk5kSmRxaFM4eHBjQldZR3Z5?=
 =?utf-8?B?aWJpYXE5TmNoNWpFc2NCeFdnbDN5K3o0ZHkyZDhnK3JVZy9iWkJjYzNJc1Jp?=
 =?utf-8?B?aWRzL0NWaW5KZnlqU2pla0pDSGJrbjZtY0s4VWlmVk9sUmd2OFIxc3ZieGdr?=
 =?utf-8?B?c3FZNGxFelBmTCtyZGpYdWJjZ0RVMVE3M1oxUFRaL2tQOUROaytPVHVZZFJG?=
 =?utf-8?B?NGdRWGlqUkFDak1ody9RdFdkNGdqZ0hPQmtzTk5lLzI1blcxdUJOd2tleWhD?=
 =?utf-8?B?YmUwNERUbXRLN0cwZ0tPZGNUK0t4c3RRTSszWSs4a2JBRXR4SEFHZ3F6RldX?=
 =?utf-8?B?WnIrVnlnNEVNaGdWRHBLa3o1SExkOWsrVjNvaWhYcFNjZHNRTWprUGVRYkJo?=
 =?utf-8?B?SHA0aVdBMk8rNUkwQ214eHg0TTNQUXNzMFhJTTdhdWxvalh3NFpwMTZEU01P?=
 =?utf-8?B?WmdTaXdRcy9VcitObTcvVnlmU3I5WktEOHJaS2FRUzMvTlVVR0FLcVV3MnVk?=
 =?utf-8?B?UDE2c1l2VTNzeUU4Zy9HbWw0NjN0VUZ4TGwwTXBkWmJ0N1Zqc290dmtMZmFk?=
 =?utf-8?B?alNxUmFjallibHg3VFRLVGdZVFRSYW5qcVNQK21RVHIzaWthN1E3UXZVdEha?=
 =?utf-8?B?VTRQNjJZVzZUR1B3SEJYTVRuNHpoQVZsM2dkTFMxQnEwRjRRdmFZN2MvTVly?=
 =?utf-8?B?Z0FHbWJNbnRyemY2dVgvYjNtOXgwRVJwdjN2QkN5L1NzVjBRd3lYdDNYMm1n?=
 =?utf-8?B?M1V0Y0VtSjV2Tk04eFhUQmRBRnVqK2l0cmRVeW5ncmNSaU5MY1kyVDNkTVpi?=
 =?utf-8?B?cFBCYjRobVpBV3loNUhyd25nL0RNcUNWQWZoUFJLTUJSNGtjclNhNTVhSm9P?=
 =?utf-8?B?eVVDWlM0Mmt3dWV2NGpVVkhmVi9TTGVRTThJUC96aXZKTGYrVk9wcUxBdkxr?=
 =?utf-8?B?M0dpUGsxQzZlUWkyY2lIV2dPL0xlNG84NlUyUXBLVEpkaHZyTk1HYjNEYjlp?=
 =?utf-8?B?UXc3KzRNYWxubDJnQ3NWQ3NaMFpMVGFqQlpVMWc5TG95NUhJdUk5QTFWOWVv?=
 =?utf-8?B?cE5YdHdvMC95VFBFdk4vZzhBOTh0T09WMzFHcE90Sk9xTFZvVzhZbUhDOFZS?=
 =?utf-8?B?TndQZk9zY2JPS2JPV1d6eGhBdlZ0ajNSL0lTUzdtWDFOVXZJRldNVzNreUFt?=
 =?utf-8?B?OHFRRGYrQ0twbldqRC9Ud3gwaDdGVGhTRjQrK29TUnFpRlBDQVpqVEdyeU1Q?=
 =?utf-8?Q?rIS8=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 22:39:44.7043
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c33d96d7-8654-455a-3dbb-08de4d747d62
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CE4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6697

Add label to the target-module node so that it can easily be referenced.
The node specifically configures the SYSCONFIG related registers for WKUP
UART.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
index 61bfcdcfc66ea8d802a36ed43cd01fbbf3decc70..e9d638d9ffd3a52aa6e0df70f6003879bc292358 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
@@ -81,7 +81,7 @@ wkup_i2c0: i2c@2b200000 {
 		status = "disabled";
 	};
 
-	target-module@2b300050 {
+	wkup_uart0_interconnect: target-module@2b300050 {
 		compatible = "ti,sysc-omap2", "ti,sysc";
 		reg = <0x00 0x2b300050 0x00 0x4>,
 		      <0x00 0x2b300054 0x00 0x4>,

-- 
2.34.1


