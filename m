Return-Path: <devicetree+bounces-252453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BBDCFF0E6
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:18:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EB2136CD3D3
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0B2B34A773;
	Wed,  7 Jan 2026 16:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JVRxTFbS"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010021.outbound.protection.outlook.com [40.93.198.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65A228134C;
	Wed,  7 Jan 2026 16:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804325; cv=fail; b=nvW1kwyAtQ/tBOWWMqRYDikKjegdK00DEdGMYDv5Tcpv1Pe9QWWsY8nwNxoaciEzlLQwAqnnC0QcrR1Yzl2QURVQJbW9T3hVfLltgIXZboI5BVl8caKIKPJOPS3a5wdqAO3eBnVFImNqjhSKVzryH60BJIbUw2SrDtDhDZLJcEA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804325; c=relaxed/simple;
	bh=gKjZSUwaptCxRX9BJKKzLm7kZ0mCN1nu+6XpesWA3PU=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WJBgKBEvgFr8yBYj8cbKG3SLuwQGhBmGq3+tRJBDeL1c0REUtV6XaTK0QlOb7QLGyldPL9UqFP0Bgcue7LygDGYE2fXCTJWd1D4PhD/MluU0QTKET6GQF2zgoKVG8dRy2p1iTgbrA6NE+nSudbSM0DoOwNA5JOjGoooOg8AOmK0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=JVRxTFbS; arc=fail smtp.client-ip=40.93.198.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tWLuQzauuu7WqsIe328nwB0Onmgnr5gG1KoIULfWhcYkjKhMY5k0d611qa9dId2ju0SDhqUJbYnrcOcCXvL2uWztQsxXi7SxdNrSedNgfslQTsOEiVW2BXfhCKo11fqTkj/ZVzHoL5np9yud5JS8XLxfKcu4dzrEdJJSa+JRp90gctg683LFk/p0umtgwfwqChGF2WRakTp9nZUie/5utnuA5yT/M4H/nN17ylsX8eDrXTTq7ipIfBjxuezunRaH6WbkPtwcen7nH+iuIvfzOz3nSKATteHJgzCID+KTy0VPiCxj36bsvQjDLPOLpOhrS72OWE9lhAdYuX0b2e+PQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qLkvOO+qC3zK0iKw1gp+kVwwYm0NKQXVyrT9aghy2UI=;
 b=vzM4/aXBA5x6puubSVjyAOvwfpfHTi7nEDXN8Z6WaYIbJ4eIyqXNFrSkuOBE8YXVlQ5kR5t3yXFNuhZpFHmh0nE0SdcT/hY6nL3pESYSWbbfEskEdXlBH6Ci6LDWUAbE6aWopRuJaA5jdEfyBPISwqUWVDG4WcaWzQfvxKJy2JQOb0J5+XYVTf1raIkBkd+dYx7ztTqJYgm9Hm2+oq1TWKAP4TV8cadrpDL9n7/iV4yPKb+M7M/DZvrlEKr4p54wvlnsVvQNs/YUJ8angjt4NonFMYBrbqDshFkKHTWOFIv/Z4tkU1/oWPduJ7fdhg+1mGAdncjMNC9h0kkOKSMaCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLkvOO+qC3zK0iKw1gp+kVwwYm0NKQXVyrT9aghy2UI=;
 b=JVRxTFbSuEpT03ch4YqI4efTwcXb3xipCTMOwSKD/N61W70ZZ9OPkjUQViZSPsA5Y9M5Eg5rAaLQ68rl6hMIsn2bWA+LtZmpRhgY2FWl8rkj41nT7fYmdvFEfcluTHbciIXu84R7Q5114omAFtISwhrs0btS8CebdqzDJdfwVt0=
Received: from BYAPR02CA0037.namprd02.prod.outlook.com (2603:10b6:a03:54::14)
 by BN0PR10MB5144.namprd10.prod.outlook.com (2603:10b6:408:127::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 16:45:11 +0000
Received: from SJ1PEPF00001CDD.namprd05.prod.outlook.com
 (2603:10b6:a03:54:cafe::17) by BYAPR02CA0037.outlook.office365.com
 (2603:10b6:a03:54::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 16:45:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ1PEPF00001CDD.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 16:45:10 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 10:45:05 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 10:45:04 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 7 Jan 2026 10:45:04 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 607Gj4XL910213;
	Wed, 7 Jan 2026 10:45:04 -0600
Date: Wed, 7 Jan 2026 10:45:04 -0600
From: Bryan Brattlof <bb@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] arm64: boot: dts: ti: k3-am62l: allow WKUP UART
 wakeup from LPM
Message-ID: <20260107164504.ehvbfizg7ybbvv2e@bryanbrattlof.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
References: <20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDD:EE_|BN0PR10MB5144:EE_
X-MS-Office365-Filtering-Correlation-Id: e2665969-bda0-4318-4bdc-08de4e0c1f1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aFFQZFhoSVFkd21VQy9YTXZhV09UTnRuMjdUcVhKamhGN2JBV3dVTWZHdmZo?=
 =?utf-8?B?czhNL3M4MlFVaEwxK2Y5K01KcjhLZ0IwaDlCZnJjOUpzbDJ6UXlmd3ZLZmJP?=
 =?utf-8?B?cGtUYmxsY0JEckFuTEFmTEs5SDBmR21DUldZalBFYUlKRXRkbG5JMC9lcEF5?=
 =?utf-8?B?ZTMwZjNGTk43Y3ZIb09aekNQQXlBaVRvb3F0ZVZPbTFYOHRBM2pxdlcwT0dx?=
 =?utf-8?B?bWNVaCszdnlMVk04T0NRdUkrbURHb1V0QkNLRDhjb1RQWkI3bGV5R0hZVkVJ?=
 =?utf-8?B?ek5mZ2ZlUUxFL29Lam9pRG5XSnMycWtLZ1ZDYUJhZEszQlhKcFRlU2tURkNi?=
 =?utf-8?B?VGlWWTZWZm1ncUVXamZmRHppUlpnUHk1aDUwbnUyT1NLUWs5ekxJMnQ4aXJz?=
 =?utf-8?B?Ujd4Y3pOMFB4Um1kQXV4Z2pXVnJ6ZFQwRXhuWGVsWi95a0FVZWZudzZQREhk?=
 =?utf-8?B?WlJMclVqbk42MHZvaThzVlhicGFLZUJTNzNDYkRJWVZuSjRzQzdFWWtvNE5a?=
 =?utf-8?B?cm9WWWo0eUQrSUtCS3JEak5RUDhGWEMzRzRhL2RHOCtwMFd1YjlXMXljWlpW?=
 =?utf-8?B?L09xSWpLQ3dkUktYTmFYWXF1cUhVQjBsbExHdmhGOUlnSUJ6Z3RDeWhjWHhl?=
 =?utf-8?B?b1AxdVJmekE0c3hFWnJXRE95ZkFjOVBqb3lNUk00SWRjcS8wdG9LL2d4Z2Za?=
 =?utf-8?B?ejI1d1h1ekdLTnRIT2ZPdGJFa3FBMjJEOVdpNGdTZ29Gb1ByYmkrTDRjUHNI?=
 =?utf-8?B?Ri9zc0FqQ0h2K0JINVMra3lWU2I2ck9VaDF3Z2l6Mk9OcnBDWE92U1l2R2JN?=
 =?utf-8?B?djR4OHhYN1JlcXFiaFhWOXFBZXZuWE9RWUw0dDdTWjA0cjVWZDRWemJjZmU1?=
 =?utf-8?B?cXJDR0J3VEZKbWVvQW12b1h2QTFNMENYS0J0YnIrZUpMQldKOWtJL3BpdWdm?=
 =?utf-8?B?L2dtV3Y4SnVGUGlwOTc3eTVuVmlEQ21ROHU0TytvYm11eWFjeTBTNVdncld2?=
 =?utf-8?B?NnZQSEo2S2tIQWpRbTVqMDV0bm5hS1E3eGQ5MHNyYUVkSlRBQXY3RFFNUjlU?=
 =?utf-8?B?KzZMbWRJZFBoT0lqUlVMQ05NSDdiTEZhUnNMOHhGNDRHU21ENEt6OXdOZDBJ?=
 =?utf-8?B?RU9CcDM2NGFXZmJEby9jaU1rMmZxU0xQSE1VRFB6ajVYZTVwM1cvU0l2RnN1?=
 =?utf-8?B?WTV1aDBiMGtkRUFZd2puaHRHMGxLckN3N0pCQithMUd0SnMzME50YVN1cHdD?=
 =?utf-8?B?NTRLTkRRUUxFb3owdmZuNnI0VUVuS1FzMlZLV2tjeEtEN2FaWmhBaWFrZDNT?=
 =?utf-8?B?c3FiOXh6eGx3b3NoQmtkMStvekt3MUE2V1dqZ1R2N2doVkFLdnhyMCtUTnVV?=
 =?utf-8?B?M1BkeVlTdmxadWtjL0hJeXdoMVB4Z1lzRjl5SUlzSCtmbEFua0JiRTNURGFT?=
 =?utf-8?B?YnpucnRuQlp2QXNtVHV5OWRVQmgxY3BWQ2hWY29FM0p4S2dSQ3Q0eGMwamNY?=
 =?utf-8?B?TXdRZXFMcy92WWJUSStqY0FTNjNVNC80VHRjbHdtQzlNWk90NGoxVHlJT3o1?=
 =?utf-8?B?QW5yRWJJT0swSmMxeDVJTmtXTzc5ZmVxSnR2K3c5a0hUc0FQODZ2TWk3d1lJ?=
 =?utf-8?B?dG5Lb3ZFOTh0ZDExMWxzbm1qL0RZYWpRbFI1aStGL0w1OXlLK0Z3SUpBZGlh?=
 =?utf-8?B?VDc3K2NTRG95VDRGaGtKTU93S01sN0UxMXJaZjkyNU9mdFpwcW5iRHJmaTd4?=
 =?utf-8?B?Kzg5U1orTFBBdDQraGJjZSt2UTJSNDNwUisyTmlPSUhMOXRsOE03SlNHZEhn?=
 =?utf-8?B?eXBPNncvM21xdkI3RHJFNjFSaU02dEZYejdad0NxS0ZQSEtrOWtzNytKcHcv?=
 =?utf-8?B?K1doR0wybDBRWjE1S1RVTHF4K2ZIM3ExU1NRQ0xCKzZtdHZaTnZXUVZEVXgx?=
 =?utf-8?B?Y0xQSUlBMEQyemFyWlZjVTBWSm1UclhNSGVUWXV0T2tWaTZPZE11R0ZPRnN2?=
 =?utf-8?B?VWNLYml5dkYyTXNpQzgvcEJwTEc2TmIrd2liTjQ1d3QrdnN2Smk0TnZ3eWJS?=
 =?utf-8?B?RGtraC9PRjIyb1BsYmVVVEtuekRhbVBQNUp6VjFKQWQyL2c0aTN2UXk5SXh6?=
 =?utf-8?Q?mQQo=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 16:45:10.0311
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e2665969-bda0-4318-4bdc-08de4e0c1f1a
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CDD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5144

On January  6, 2026 thus sayeth Kendall Willis:
> K3 TI AM62L SoC supports wakeup from WKUP UART when the SoC is in the
> DeepSleep low power mode. To allow wakeup from WKUP UART the target-module
> device tree node is enabled. The ti-sysc interconnect target module driver
> is used to configure the the SYSCONFIG related registers. In this case,
> the interconnect target module node configures the WKUP UART to be able to
> wakeup from system suspend. The SYSC register is used to enable wakeup
> from system suspend for the WKUP UART. Refer to 14.7.2.5 UART in the
> AM62L Techincal Reference Manual for registers referenced [1].
> 
> Previous TI SoCs configure the WKUP UART to wakeup from system suspend
> using the ti-sysc interconnect target module driver. Refer to commit
> ce27f7f9e328 ("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
> wkup_uart0") for an example of this.

I think I may be confused. What is setting the pinmux for the wkup_uart 
to allow us to trigger the wake event? It looks like they reset to GPIO 
pins if not set. Is firmware doing this?

~Bryan

