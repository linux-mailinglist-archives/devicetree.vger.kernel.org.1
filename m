Return-Path: <devicetree+bounces-262827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDyUGMX6g2kXwgMAu9opvQ
	(envelope-from <devicetree+bounces-262827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:04:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC067EDD76
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E89A2301918B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 02:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6634F23F439;
	Thu,  5 Feb 2026 02:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="LIr/ye+8"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013067.outbound.protection.outlook.com [40.93.201.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C8622CBD9;
	Thu,  5 Feb 2026 02:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770257025; cv=fail; b=OJGA/rmA9kWhCwEfA8TVRghNU1I1t090gdsDLMuHwMrTgUOb4AIQtNEU0FuZWcK3CTYAvJGsgqPNKKL7U3n5eEK2WV2DZqqJZSHG4JxGHAB5AevhK3skNmIXRz5VfIYp4GGCFhenKpGggMZ3bc5O9z8hm23MJF+WB6wvgRggloU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770257025; c=relaxed/simple;
	bh=W9XMgqOjAE87T+AFCZReBsH6wNbURDtqaXbWeIRiRXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=GuagBQSlkvAznc7QmtcuSgtj1AdfS9x2mKVzkGbQMunBOI026S65yEYG+G7UsoVgNzimR6pz+cf+2K0PAn7+jsl3yyNjydOH8mwHZCQ4wcrpahdoBsTkW+A7+qdJo7T+mxPGf95hM0Yp+N8vJf6tN21j71cv+K+GQFdI1WWLaZw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=LIr/ye+8; arc=fail smtp.client-ip=40.93.201.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rQttsgFFUHjEtW5unLABy1cjgFtXAuyiZi+tDTIAJ3Lb02f47l5tMQuiqF74XNL7WbM4FkKERqzwwFTm81XTOApwh5MkEGZtwUiusXnYSW4RVIrbIYy99njDT8DhCs6ElhnITrq1yiRu00tTS5vzj1u/byhJ0H5NLrj+lkbSPMuBsrrGMjBGLOw1GhmIMeKCj9bmm87XBja4zsyPW3qU/JoLURVfwzdNXw5FnzXVdY5k6lLewiFsXNmY7fHPJz7NVMtpjyUTDPny/q3MwqkLDsifCyErrhcB985Z9WoqrqIUsxw8lijNOD3RkTYt1osdPYEzEVThx7no/7tow/O32g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rUOaUBMPdWkjAB7R5+Tv793l9stoIBNtJ1WspfhFyJQ=;
 b=E9aTjpvU/xWr6mcnaHl1r+j3Ql6S0VuxGpC1JhcExyjEvqGlJukLvzBx1t+tYL0jMSy1ivqvSlDIr9U3b9c5i2zTV100k6bG3zacmYFl9lxVf+7zu3lZ4wBqSXcplzFmAqxs2FY7shjaIo8oLpu1OQPuATn7wWgfUdrdQIzem6FxN2igAogYnoKDmPYGfcyA9Fs4AKeOh4G09HshupJuROPIthS6KCMRvNuouZhjDacam+Makuw7ycIEcUvEyBjytg7byeaDgx5JYw+11zywuPuw5ker/9WHAj6RbGqCKTyYUHpc0DiE0yVAMQUOSDvhsfQH47G2ZHMLManWFLYGiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rUOaUBMPdWkjAB7R5+Tv793l9stoIBNtJ1WspfhFyJQ=;
 b=LIr/ye+8JtXqRYf0LeSjcOK34dlKXN+rPVhuoZGZETUSbTAJ11pWq+gNfPJzERj8zEDZPvvmQYDgChanvUW0aD8GaljDy7iyyffpJ1Uz1omKOD0eeXCENBrkoBbMcFjJ4wxhj0A9hdy2mkXXcBzUHaLJTPHmUD+LOvyX35s94lY=
Received: from PH0PR07CA0108.namprd07.prod.outlook.com (2603:10b6:510:4::23)
 by DS7PR10MB5165.namprd10.prod.outlook.com (2603:10b6:5:297::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 5 Feb
 2026 02:03:42 +0000
Received: from CY4PEPF0000E9D7.namprd05.prod.outlook.com
 (2603:10b6:510:4:cafe::ed) by PH0PR07CA0108.outlook.office365.com
 (2603:10b6:510:4::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.13 via Frontend Transport; Thu,
 5 Feb 2026 02:03:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CY4PEPF0000E9D7.mail.protection.outlook.com (10.167.241.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 02:03:40 +0000
Received: from DLEE203.ent.ti.com (157.170.170.78) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 20:03:39 -0600
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 20:03:39 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 4 Feb 2026 20:03:39 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61523dVe2147580;
	Wed, 4 Feb 2026 20:03:39 -0600
Message-ID: <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
Date: Wed, 4 Feb 2026 20:03:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
To: Markus Schneider-Pargmann <msp@baylibre.com>, Alexander Sverdlin
	<alexander.sverdlin@gmail.com>
CC: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, "Kendall
 Willis" <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Rob
 Herring" <robh@kernel.org>, <linux-kernel@vger.kernel.org>, Nishanth Menon
	<nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
	<kristo@kernel.org>
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
 <c47697b4-6ebb-4af9-be96-c964d990835d@ti.com>
 <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
 <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
 <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9D7:EE_|DS7PR10MB5165:EE_
X-MS-Office365-Filtering-Correlation-Id: acadbdb0-7351-40bb-b986-08de645ac881
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eUZqRzFrU0Y3T0R2bk84SjZjV2dBTXh0N1BRaUFYR2d1S2dzV3U0bkcyZkNR?=
 =?utf-8?B?Nm9tRlcrUlhMZ0M2Q3RZbGhBNEx1YWRRbDZ0enJTUzJZQkZtUmRBNHZWUCsy?=
 =?utf-8?B?dEtpaEViRE1vTXJMTzZ5MjRQK09nR1pGYU5JaHJqMGxueWVrc2o3amxpeUpy?=
 =?utf-8?B?aU82ZWI2dDJ1MjdkYlZIWUsxaElvZzk5cWN2elRhNXBtbmpHdkUxUU9GUXpE?=
 =?utf-8?B?NzJMNS9iN2xFVzhCVjlGdUV4aDZqcXlOR0oydDVaQ0pIZ3VwK3FVZU1kRmNz?=
 =?utf-8?B?S0RUZkxadmZVR0NFWGVVSURNNGxOOGc3RC83eXBXMnN4aVZHUlNvWnpNdXZa?=
 =?utf-8?B?TkNodjBuanM0MThJbEdmVWR0alJuemZBRnJpVlAzUll1ZE1MMWFSTlpvTFQv?=
 =?utf-8?B?QlhSMGJ2VWI5bFJpK2I3bm9rQXc4NzdJc0kwcGZOeldjUEJqWDhGeGdlaDFs?=
 =?utf-8?B?bXlKZFMwMGNNakE5VDlyenhPeUs1UEhkeHFQWDNhL05Ob0M0RUxXVVEwN3ov?=
 =?utf-8?B?Q2FVVDhkbnFPSWlibUFnejB1aW55ZnNZTDJFTWZmSzcrc2pTQVhkU3BVdGRU?=
 =?utf-8?B?QUZ0ZVFMdDJNelV4WFZrY2p2ZUFOZ2NiekZia0N5UzRtNS96S3c3T2VIQ3Fh?=
 =?utf-8?B?R1VZZmx0REVyd1ljMm04RUl1c1NvS3dpa3JkQS9wSVI0d3FPNG0rZXZnUDhZ?=
 =?utf-8?B?UWh1LzdQT0pORGVGT1J0ajdYdDJRRXovOGVwVnlGa1pkbnUxZEdETjIvRDJX?=
 =?utf-8?B?YWxzNzkrYmRlN2RaaENyUEhKNWxEUUQ3NEpBdnlHWFluWWJua0dLZkdUT3V4?=
 =?utf-8?B?S2RuSVIwcU5uNlZjSWh4cndwZXBidVdyWC8wYTYxa2JzRU14ckorUHdPelh0?=
 =?utf-8?B?Z1UxWnUyaWY0OWpsVlF6UVg2djFDU1ducElxZnd0SFRXRXRNWmpWWkhjYkxC?=
 =?utf-8?B?MUUranU1YkxTMmNhSms4OVIvVmtQN2F3SFhTT3h0cHZKYTREbDF4Z083L0hB?=
 =?utf-8?B?WWRxZUZvS1NFZURqcjVOSDF3VS9KN0g2WmFDamx6WW9jYVQzam1lWlBCTW8x?=
 =?utf-8?B?UVkyWHJkWTdBRFNvVDlUdzdCVFdFZk9wdVpVUmVVMUw3c1pCaHlINS9zbExU?=
 =?utf-8?B?TTZaeVA0MzZxQmV6b1JqY2JnYkQvcmVRdXBDTUczRWpnbFJqUE1MWVh1eWJa?=
 =?utf-8?B?M0hxVmlpWXZCcG9DTjNPWFJzVGI0dUlYbVZOT3RRN1F4UHNJZnFWVnpEL3gy?=
 =?utf-8?B?NTdJaHkvVndSaG90dHRqTFY5ajkzRDRMOTNPL21ESEdOUGVLenVSM3JOZ0Fk?=
 =?utf-8?B?TmJUZzFIWndjL3pndlU2TWJHbzMwVHNZcDB2N1pKZnRRdERBbUZIMVNoNDEy?=
 =?utf-8?B?SWhOanJlK0xpdis4YkU1QUhKYmdVS0VUSjQydFhob1Zkbmtka2ZYM2NGbDlX?=
 =?utf-8?B?ZEhhTUpUT3FjbTE5RDE3RS9rQWlsaG5FeXIyUGttZHp2R1hTOTJ6TjRTQTVB?=
 =?utf-8?B?eG1uaStOckxIV1hiSG0wbzR5VFN1czNESndYUGkvTGVXcGkvcnE5eGJSOUwv?=
 =?utf-8?B?b2d3MlhPOURtcUZ2NnoycXdsN3hYYWZhcFNicElzQlZKV0JWdm9tNXk5WVBP?=
 =?utf-8?B?enFUTFllazdZS21aeHpEYWdJNmN6R0RVbTQ0Vm0vSWU0TlpOOEhZdG1uS2Ix?=
 =?utf-8?B?NTBIelJ2cUs5andrZzM4TlY5ZDhXSjRUUFBuVkF3a2J4RmtuWmIwOTlLSUZh?=
 =?utf-8?B?T2hXLzIra29vSy9JYkVPcFl1VWl6UkFuanpjN2lWdVVRMzNYRnNnOXpoRzNR?=
 =?utf-8?B?QU1oWWw3cG4rUmZ4MTBKTWRGa1d1TEdsMGJYZENmSld1SmVacEZ0QWkrN1dJ?=
 =?utf-8?B?MUFhRUFYOStFKys0bjJPaHNPMUlCOTNBOHdyL3R6aHFZYXFWM1o5ckhoTUt1?=
 =?utf-8?B?bURIbUJzblIzb3VBMW12dU9yVktxNzdnSis3MlJGZGM5d0JZUThIZHBNSG13?=
 =?utf-8?B?bzM2WHFGZkdKak0xZ0g4V2tpNlF1Y3dkYnFQUFN1QUJ6TU1DbHQ5WEdLZThw?=
 =?utf-8?B?aGpMZHZOZWhGMG1rSmxIS3NiSElKN1JzWmRnbmVsYjR3SkRuUHM2cEh2NzZD?=
 =?utf-8?B?U0dKb2FZdWN3Q2VpcW5CcUd0bDQ4Ym1HOW1yTERvTHZzcHNieUlVYUgvcURP?=
 =?utf-8?Q?v04k3bTtekQWk3XCcVRIxtE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	sGikcTYdYriwrQy6JKzNSKRPQb5WWFGTSxmrbcDB6R5AcrmC2URbAwbYurvtBkIfieRE0Qa0spayQ//vc11hqhS3rwONTUhXs5cmG4+Ai//SUqaC0jTzTutoexFhKdwqEd1cRrmjo4ADRg4cM7igkkX32vPF2S3Wt5iHnIQoDzCkfUEalj6xktrmRSB06WAgJMPgkG0FwgkAtC42wwM2SQBZkj3RVxnb3yYmLiKEdayfj471qiN9hi59lkU1yTlH1uhICOS3Y4H1GCqqxFOo0rp9QC7cG/omdNM/mX3/hFbRwGvsNtVCorHFxML9KDI5jbok0vPiA4ujQTG0WRYEtCzxZ99stUprBhqWEie/L1vvje4J+9B9AdSPZacMyZXCPQ5yc90E2ruFkO06bsiBa8Oo0tRH0aEJhBcxxC86U8fRC/Dw7h1mISaWyFGiW+LG
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 02:03:40.6103
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: acadbdb0-7351-40bb-b986-08de645ac881
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000E9D7.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5165
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-262827-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:url,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BC067EDD76
X-Rspamd-Action: no action

Hi Markus, Alexander,

On 2/3/26 4:35 AM, Markus Schneider-Pargmann wrote:
> Hi Judith,
> 
> On Wed Jan 14, 2026 at 11:04 PM CET, Judith Mendez wrote:
>> Hi Markus,
>>
>> On 1/14/26 3:16 AM, Markus Schneider-Pargmann wrote:
>>> Hi Judith,
>>>
>>> On Tue Jan 13, 2026 at 1:29 AM CET, Judith Mendez wrote:
>>>> On 1/6/26 10:22 AM, Markus Schneider-Pargmann (TI.com) wrote:
>>>>> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
>>>>> u-boot SPL is not able to read u-boot from mmc:
>>>>>
>>>>>        Trying to boot from MMC2
>>>>>        Error reading cluster
>>>>>        spl_load_image_fat: error reading image u-boot.img, err - -22
>>>>>        Error: -22
>>>>>        SPL: Unsupported Boot Device!
>>>>>        SPL: failed to boot from all boot devices
>>>>>        ### ERROR ### Please RESET the board ###
>>>>>
>>>>> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
>>>>> devicetree merge to be the problem. At a closer look I found the
>>>>> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
>>>>> failure to read from mmc.
>>>>
>>>> I have tested 4 AM62A SK boards and I cannot replicate the issue
>>>> you are seeing. I do not see an issue with Schmitt Trigger in U-boot
>>>> nor Linux /:
>>>
>>> Thanks for testing.
>>>
>>>> Can you please run a quick tap sweep on MMC1 and MMC0 interfaces like
>>>> so? https://gist.github.com/jmenti/f4a73a8323e44bf717c6d2c528c499ca
>>>>
>>>> This will give me an idea if whether we should be talking about
>>>> revisiting characterization with ST_ENA=1.
>>>
>>> The patch was a bit broken, but I think I managed to apply it to
>>> v2026.01 as it was supposed to be. (master currently doesn't boot even
>>> SPL, I don't have time right now to debug that).
>>
>> as Nishanth, mentioned, master is missing two patches [0][1]
>>
>>>
>>> I attached the boot log. It does boot with your patch. Also can this be
>>> an issue with different SD cards?
>>
>> Something does not quite add up,
>>
>> Can you try the following 2 commands?
>>
>> # mmc dev 1
>> # md.w 0xfa0810c
> 
> Finally here is the output from boot and executing these commands. I am
> now on v2026.04-rc1 with your sweep patch.

Thanks for sending over the tap sweep. I compiled a comparison table
here to show a bit of data for the u-boot tuning step: 
https://gist.github.com/jmenti/5d42f1e43fb357083eaa813cfee484a8

Based on the data I can conclude the following:
1. you seem to have more errors than I do
2. there seems to be an issue with the chosen final tap setting
3. the chosen final tap setting should still have worked for you
but did not.

For #2, something in the tuning results seems off so let me investigate
this on my end and Ill get back.
For #3, will have to discuss this internally & test a couple more 
things, then come back with more information.

Meanwhile, I am interested to see what are the tap sweep results for the
failing Verdin board, if those can be sent as well, that would be great
info.

~ Judith


