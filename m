Return-Path: <devicetree+bounces-265164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GZBDZINjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:27:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A41E412FE51
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2582C302E0D3
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCCB35C1BB;
	Thu, 12 Feb 2026 17:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eukw/HPx"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013002.outbound.protection.outlook.com [40.107.201.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1ED7259C92;
	Thu, 12 Feb 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917256; cv=fail; b=LWWh2+kG7ZwPbpKKOs8+zy2zgPo7wFtQjAEILdBGbM8pwB0PebHw786GLcbs4YtCl+AI6x91MuoCSLA5oECFgJUO9g97m0A0Jj9xQz7iRytkHlDM8PyiOi6D2GAI6dw70RRMG728c21aZWNjGt+oZ//9Lu4wep1OKKz8HXsW+Yk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917256; c=relaxed/simple;
	bh=4fr74g2oYuiGpfkShWukQgCXWlR+Dv7RwbBJt0mAfbU=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=trBVC9oeycYAdBuNg2X+5q4nlct8fdsipKnOEI60ceHpVtDFo+crA2nEac3w5Q18pcFe/y5IvA9XUBqoJga2MWMY65nM7tAyalhOAJzMVld8xBkqMkZCZZbS+V+Hm09oX2XClsrNkW21Hf4XNVcPQf/FycLGqzEZDxwU+Rkox6I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=eukw/HPx; arc=fail smtp.client-ip=40.107.201.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMmVAaE2vGwZ31AeU/L6mHILsPFGJf9JeKjbRhC9r2CReyPWvpwZEa5yUzazqyDbQsviFcBl94nhax5nI+x9c3EMPKtrgJ1NXZwgn+H4x7SLLvofJkd2NL39zqodUk7rZRjM/jf0BM4CVQoM7Z/X0+aZNoBbCX5VJiyOXxcyblA7H40o8X9yyaDCRiqLj7ZftctZTg+hcOOwdEczAH47o7t+QqfLE/XyYqYKOhMvPGi6/kM/TY62VWcffmkhdnWC/Dgz1e6WmC5jcBBGffNw4FdWIG81CQTHuK4zes06DPojtpNrFT6rPB3PYLZcMfRX4LxAH05GVawPyADPSCmjNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I+GwYqm9nr2qRXATGgBVi78r3YBZYRQ/xecTnJN0buk=;
 b=cKUnnvXJzdDVnuBoNF8TNH0OlXc2aRT2prwQfemY+2Ch/X9eOw03+tc4xlqDdEGuc4hPuddZtpxvi8sy+J03dy1oKtLKsU5CmUS1EjADYWcJhnbNIo2nGluxx6Uz0WzcKG3TMbXmzVjkFM71nFADfV4QK8HsZ9yKV52SCI6QRGrFgpl5Ks32ogZpzhD51Ciq+hthUDzgNBOt88LSypG93z/bU01/Pt7bi59LwRB0cqFLNH58+09F7v/qSh365UTJzENtiqHheV3ZirGQpf5Ne1sg5LkrIH9KjBaNYFa0YRiuF46O1+5YOfbZy0kErXbXEysjApeeBEnujaxnIb1K+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+GwYqm9nr2qRXATGgBVi78r3YBZYRQ/xecTnJN0buk=;
 b=eukw/HPxCXG9HA6w9YWe1NYi11JUYskbKqMUidaJMU2fP84ar7fIeyA12RNsJOnUSi7s+zrDWR2FoX78H9qc7gy/tcYbii2JrjcTcqicusgoEhsbvfpCqAt35OByW489inGnle9A3HgSRndyqmiVJucpx5biLGhQMLEhCvAgPvo=
Received: from SA0PR11CA0109.namprd11.prod.outlook.com (2603:10b6:806:d1::24)
 by CH2PR10MB4311.namprd10.prod.outlook.com (2603:10b6:610:79::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11; Thu, 12 Feb
 2026 17:27:30 +0000
Received: from SN1PEPF0002636C.namprd02.prod.outlook.com
 (2603:10b6:806:d1:cafe::d1) by SA0PR11CA0109.outlook.office365.com
 (2603:10b6:806:d1::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.10 via Frontend Transport; Thu,
 12 Feb 2026 17:27:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SN1PEPF0002636C.mail.protection.outlook.com (10.167.241.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 17:27:29 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 11:27:28 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CHRSI13458792;
	Thu, 12 Feb 2026 11:27:28 -0600
From: Kendall Willis <k-willis@ti.com>
Subject: [PATCH v5 0/5] arm64: dts: ti: k3-am62: Support Main UART wakeup
Date: Thu, 12 Feb 2026 11:27:19 -0600
Message-ID: <20260212-b4-uart-daisy-chain-dts-v5-0-26c7f534e567@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHcNjmkC/4XQy27CMBAF0F+Jsu6g8fgRklX/o+pi4tjF4hFqm
 1CE+PeaIGi7QF1eyT6+vuc6uRhcqrvqXEc3hRTGXQn6partincfDsJQck1IWpBE6BUcOGYYOKQ
 TlDNhB0NOMKBgVqgN9lSX2/vofPia5bf3kn0ct5BX0fHDwxYVCVpSs5CNRCkUCFjDMWw2Ib3ms
 LDj9kqtQspjPM0dJ7qC/9eZCBA8a9KNs1r1/d27dpnkHTEo0DxHZEFku2RjSC892T+I+oUQPUd
 UQawfuB+8dsaKB3K5zRTd56Hsnm9b/czeVY9fzvCR1+6wB0TPjm1j21Z107x1z8lBIbchd9VkF
 qKFaE154PINhAIM1OABAAA=
X-Change-ID: 20251230-b4-uart-daisy-chain-dts-d01aa40560b2
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <k-willis@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<khilman@baylibre.com>, <d-gole@ti.com>, <msp@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770917248; l=2829;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=4fr74g2oYuiGpfkShWukQgCXWlR+Dv7RwbBJt0mAfbU=;
 b=LsjCKFiyXu4S2p9zjnsgTbjx/OmNx2mvySpVyF8LHkUkMGu29UutB1wSm0n+JujmjnHl9mz9c
 WuoxKR4zI0ODAZXl7kmrs8S4lroF776dhSDOho9vjRKHW1smmkXy0oq
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002636C:EE_|CH2PR10MB4311:EE_
X-MS-Office365-Filtering-Correlation-Id: d2896e98-d92d-4619-b6ac-08de6a5bff69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V3dqVmR4SUNKaXVScmRZTGhRbUhkc0VVT0UyakZ3ZzZEV2tlSzFldzFGbHpj?=
 =?utf-8?B?dmxzUDBLdTg3RGVpbVFqRnBJOTRIYkJhVWlKUEZ2bXRteTRqVnFVTldtL3Rk?=
 =?utf-8?B?cG5rNmZjMXlqYm8zd085c0VTZWhmR2IwZGI1aDZVRTd6dmZTN1ZLWFJLOHhu?=
 =?utf-8?B?TnBKRU05WGxIcmxMeXNTQmVaQ25QQUNWUnF1WkhwditLblpXVkFvME1Uanha?=
 =?utf-8?B?K1E1Q0dQKzdNRTlWTitNVzk3SjZmekVabWZ2aUtNb3NqMjU1SDByTjEza2k3?=
 =?utf-8?B?SFhhcWNEbnhsNm5TSnIyZGlVc1l2aWJqRUhEakczR0lETEpsblBTdnFnTmpy?=
 =?utf-8?B?OGNJRHl6WU9uMVZ3djFpTkRoZzBYcmJkQnd2NklZc0I2dkcwMnlxaW1SNUdK?=
 =?utf-8?B?M29scWQxeGJUUDluTkhsTElGS3FzTnp6UTZpWTRML0dOY3JHUUtLYlhLY3Fr?=
 =?utf-8?B?QlBXbVJqNW5pSVVRakt4OHlEeStKeno4ZFdNazNodjhQYjJCZCtESHpySEJt?=
 =?utf-8?B?KzQzNVBOZTcxTmJJbHFmSU11TjFFVUwwS0Jtamlyb0E4a3RWZHVKVzBYVTU4?=
 =?utf-8?B?Qy9DTkJkMTdDTUlBR1dTY0VRZzkrMVgvUldHVmcrbDBlQ2xQSWJpbkJZaUxS?=
 =?utf-8?B?VE5ocWNha3RYdmNkcUFLT0NtS2paWksyQ1gxbnlUNGRhb2V3elJzZjlTY0g3?=
 =?utf-8?B?YkJvMGoydmROTElBWDhxTXhkU05DL2lRMG0wbVQvWWdPSnRUanhXYTN0SCtC?=
 =?utf-8?B?c3VZaU9GQlp6YjJ1R0dsVUs2KzMxbzJKckEzbGltZzZjM2pTbTlLMENUQVU2?=
 =?utf-8?B?UzlSODhwQnI3UkNReVBOM3dFM0ovOXRjM1Y0ZXo4QjJ4VDFBa3poMU15ZGFQ?=
 =?utf-8?B?blc5SERmN0tXaGpBb2w5STF4Q0tuWkhCTEJrNnBVVHEwRHVPbzlDaFhDOW44?=
 =?utf-8?B?UHh2T1NjV2Y1SFd0c0hwVGdjdEljRmZPenRUaGttc1BlVFFnWXR4V2l2V1g5?=
 =?utf-8?B?eC9NNTZxUDBUQXFLbU5reHhtd1ZaRGtXRkxxYkowNkF6Uzc0RU5xRGRpaUZ0?=
 =?utf-8?B?cnNYOG43OG5PRFd1UWxxOEoxTkh4T05tYjdtM2tFWnU0R0dSRjdSR0l1M3Zz?=
 =?utf-8?B?THkwK29Iam1KSGhFQld4V3RhMGdSQlVWV1VxZTZnWU1JV0RYK3cwTjJBRHBh?=
 =?utf-8?B?QWE5SjNHbDRxR3R6RHhsZHU3VG43V1BhY2I3eTVKSlNlV3B2MDNvQXJyR2cy?=
 =?utf-8?B?djVjTmRGT051VmI0TTUwMFFneTV3cFpEUDJhaXQrSnpPUnlETXNDaVJkT1NC?=
 =?utf-8?B?VjFadUVzcWJxMHgrd3Zhb2ZzdzRpeW5YTW4yWUJZWWZjWDVqZWxrNzV1em1L?=
 =?utf-8?B?SFFnSFIreW50NVovZW5qNHVjeWpnVWt0ZDRySG9MTC9FQnk5Z1FWOTdtUGo3?=
 =?utf-8?B?dnNicjdaT254eHNwNVRPQ2k4YzNLS0NyUGJKdUFXenBnNVhyZjNUQmk0bndO?=
 =?utf-8?B?VE1nakw5OElZS1RYVFNLdEZOVGpyUFkzRzdDcTlOczlYRStiZWxOeUp4Zkk2?=
 =?utf-8?B?TlVHSmlLYTd3UHlvWFRYWGRoUjNiWmEwanhZTzBFVE9XWnJrYWpRNUdtUWdo?=
 =?utf-8?B?bTZ5RFlxRHVoam5iVURheS8xeW9LTWlpOHo4VEVMNWdKeUFHRXhWd1UyVEQ4?=
 =?utf-8?B?UnJTUUk1NFc2aDNWL21QZ1RPNVlZTjNWREVPSkRZbktleCs4V3hvbHE0NGI3?=
 =?utf-8?B?WVM2ajRRT2pFRXZSZ2tBa2MzbmdWNm1wK3dTZHlGbjdBL2ZYZGc3TE5yeHBF?=
 =?utf-8?B?eFBqN0E0UDVBMHRQejlzTUJhSEJCZ25hb0hrR05XNjBHcGVtZzVnK0dRTk5l?=
 =?utf-8?B?OUt1Q3dYdkErelBuc0pWRlZ3Z3BLODdaaEY5YVpBS0ZDVXdWaERUN2hwMXF0?=
 =?utf-8?B?VFZ5ajZEcW5oWEdHaUNkUEFDMDFMZHRvNHY1TTNtZ1pJMHYxTTY3QkNObE5J?=
 =?utf-8?B?VFJOT0xicWMvUnZ5QzBRWWVIZEpxZE5VNmtMM1FWaWl5UFNOeDZYc2sxeGMx?=
 =?utf-8?B?bXJSUC8yVmFiRnNjazZNNlFPdnhIWkF4dmZKcUR0SllTRVRzWG9wSjRVZGh4?=
 =?utf-8?B?cDVVdmhlbGd1R0dPdFora3pCM3piemFMUFdGMS9iRjdubXhrUE9HVSt0WGZo?=
 =?utf-8?B?Vlp1cWN3TGZWVHpMMVRNNzlkQ2tFMURpT1MyTVBhSjJEUXY4VktieHV0eGFO?=
 =?utf-8?B?aHdleXdCMHV3ZmxUcW9xMmRLWkpBPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	HsrKF3sahKpZEjTXLRMeyW7JhqTBCpmmickem7GJu7gIxJPRIIzmVnls8i76U4gmTY1W6AFt2iKq18h/N+n6dTGXh6SUFNqNjJJ+HKT160mw3170JHsVzqIvRpc+jiWKblQDeu6OHEoOYYwnZVaOUbwUO4zojyuHiKBZklt9R9iI7ToteZX1NjXOtvYgM5yQTBt+Ua8qdzP2UVB7h4e8dS1Qvr+iWUpi9iPbCU7m1laZ4S9mLStbhkvY0HiOWG0jeKMZrKn9lfy8XsBea/COJeF26Ga/TrDt4OwwKjgoeqZjYsZxe9MWEJDNTf3zNDpZXZU4VlTBGP7vGrN0ZPV3R5yqLkJHjmLM42GzxXDPgzSNjZrAVmv6HD00hahWlPOFoCgrYGxfHVxlSfcCZ5cE4gQ/g3Y6ulD8nxD5FU7otfIGaRxkLQ7WnxbKs82UNtzs
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 17:27:29.2140
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2896e98-d92d-4619-b6ac-08de6a5bff69
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF0002636C.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4311
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Queue-Id: A41E412FE51
X-Rspamd-Action: no action

This series adds wakeup support for the Main UART in the device tree of
the TI AM62 family of devices. It defines the specific pins and pinctrl
states needed to wakeup the system from the Main UART via I/O
daisy-chaining. The wakeup-source property is configured to describe the
low power modes the system can wakeup from using the Main UART.

Testing
-------
Tested on a AM62P SK EVM board and a AM62L EVM board. Suspend/resume
verified with the Main UART wakeup source by entering a keypress on the
console.

---
Changes in v5:
- Enable Main UART wakeup for AM62D SoC.
- Link to v4: https://lore.kernel.org/r/20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com

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
Kendall Willis (5):
      arm64: dts: ti: k3-am62x-sk-common: Enable Main UART wakeup
      arm64: dts: ti: k3-am62a7-sk: Enable Main UART wakeup
      arm64: dts: ti: k3-am62p5-sk: Enable Main UART wakeup
      arm64: dts: ti: k3-am62l3-evm: Enable Main UART wakeup
      arm64: dts: ti: k3-am62d2-evm: Enable Main UART wakeup

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 13 ++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62d2-evm.dts       | 13 ++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts       | 11 ++++++++++-
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 13 ++++++++++++-
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 13 ++++++++++++-
 5 files changed, 58 insertions(+), 5 deletions(-)
---
base-commit: c8a4a774a9b0d2c86593492625874e27e9cbc9a9
change-id: 20251230-b4-uart-daisy-chain-dts-d01aa40560b2
prerequisite-change-id: 20251230-uart-wakeup-00faeac7c994:v2
prerequisite-patch-id: f886c56dbb291b710ec07001ce79b0016c233e1c

Best regards,
-- 
Kendall Willis <k-willis@ti.com>


