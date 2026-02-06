Return-Path: <devicetree+bounces-263427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGA8JvsbhmlNJwQAu9opvQ
	(envelope-from <devicetree+bounces-263427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:51:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8DA1008EA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8592C3002D12
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 16:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410102DC34B;
	Fri,  6 Feb 2026 16:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dDy0ZQ+z"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010058.outbound.protection.outlook.com [52.101.61.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774992D8393;
	Fri,  6 Feb 2026 16:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.58
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770396630; cv=fail; b=J0PanRYVIMvw3W2RBg/IttzAktgMWvDhMUoO+GVl3wIZA3HLp+2a2G/mTO01WA+Tj2bq/WPw7aUVH7QtRf6d0SpySNc0hJ1b7CBQ1a39FrS5HTzwqzFTLk9JVMhlHeKQHGEu57l2oA0WJRDYeec15qCv6sfsXY6pya26gqvWQfg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770396630; c=relaxed/simple;
	bh=ZLh5FPDnga/FYELDWqYRmlNxG8A/WUhJXhtwo140QiE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=feVRJauaKme14xVElnigY9forNkolsIk86eyykg4of/KJT0E38jNng+rxKjxDBk7Mzs2DARd5s86rrqs9rh0oted898XtS+ywgHb+UOzj1UMmbYB/8a0fWeg8c4+HbL0Ep+uG1aMLT08FDip4iPA2YC7JH1g7b07T+P5Bj2Xq3k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=dDy0ZQ+z; arc=fail smtp.client-ip=52.101.61.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ppF1mcJfa7lvmiDUFiuXTBaF/YxK5l3tl6kJ178Dklh0mx9vSIZPTFAJUY1y2RSPXJG0XG/FoiQIpFuq3XfEvSPeqLiBqT07L5vGmzd7ZGTEFiRf4/J4fjKm5A4JIqsmlMUuwCO9cY/Uo/zRstoccmp1dAE/b6U9pKbImg306RpAz2geIc5H/+6pwoGNJoD0lw51czs66nBnSCU3t1KmLZkOU0zAco/LURHzOGoRTpmjeIPUMscOlKkRbcUVSoJIVcVSbgmJjY/WgvtPsk4ooJ1q4o3cWibKMycprZG9S12hcFqf4vlZRfrFXW5yVUHLEO4Zanvk62elh5kCMCh18Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3SUa2/xTsC3OX8rqGzEPP/+S85cA0WNSow2zvi1pHY8=;
 b=ChFgq3okNsp3zF79nezDTazNn77F5AhS50N0sWQ4+F31jodnWEbkiA50lgFZ9rJYobAHnWAnGbjfIyWozRq14RC/3Jhg3GjkbtmW7Z2npL15/g/vDfs0DbOj1UiEW+PXTdcorqX6o+ZYJ1p6iI08OREexYs6KfQBNHepYRBh4p8vu+l5nTmcptch7KG+LV2U7YqT11lQerTK/EidxPyoRXI7EsL38Jd5LbfYu2P25l8lH/a4K3ahMmhqWsd30Y88XGrRvA1vxzhSIjJQvLVR9KcR3x24oHtCB1wlHzLtGauBA1tnX94WhO9XX6K0nhkAfXJus+d4qmc3OKPSuKZJdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3SUa2/xTsC3OX8rqGzEPP/+S85cA0WNSow2zvi1pHY8=;
 b=dDy0ZQ+zNOYeL8AVZorOEXb1DJRgLyfsas4x1Nz1R4WwcG9r/tllOip+/bBK3vLl52quUKK9ugH6HRY/dtHqt2qqD3lYtoeuB8CwbNs2tfwnLpYYy4FgqLjVRq5xIR4SmRZhpalcUQGrLJyymf5IGke4C5bPbvlMiaVqUtGyJyI=
Received: from SJ0PR05CA0160.namprd05.prod.outlook.com (2603:10b6:a03:339::15)
 by CH3PR10MB7531.namprd10.prod.outlook.com (2603:10b6:610:139::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 16:50:25 +0000
Received: from MWH0EPF000989EB.namprd02.prod.outlook.com
 (2603:10b6:a03:339:cafe::c2) by SJ0PR05CA0160.outlook.office365.com
 (2603:10b6:a03:339::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.15 via Frontend Transport; Fri,
 6 Feb 2026 16:50:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 MWH0EPF000989EB.mail.protection.outlook.com (10.167.241.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Fri, 6 Feb 2026 16:50:21 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 10:50:20 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 10:50:20 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 6 Feb 2026 10:50:20 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 616GoJnX1617576;
	Fri, 6 Feb 2026 10:50:19 -0600
Message-ID: <d04fbaeb-1801-4987-bada-5f99018aa2bd@ti.com>
Date: Fri, 6 Feb 2026 10:50:19 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: ti: k3-socinfo: Add support for AM62P variants
 via NVMEM
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20260204213746.2589028-1-jm@ti.com>
 <20260204213746.2589028-3-jm@ti.com>
 <25ced9af-b103-4cd3-9b31-42b188fcad60@ti.com>
 <528b107d-e2ff-4970-9484-24a6acca8308@ti.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <528b107d-e2ff-4970-9484-24a6acca8308@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989EB:EE_|CH3PR10MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: ddf56cdf-86c1-41ce-1e2d-08de659fd136
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TnFYK1lxUjkvNGUrODQ5UVRzWmRZbmZaSHo5T2NxTEw2c2NLOVFEL3pnbnE1?=
 =?utf-8?B?VXBRcGw3NmZOQUx3RW9CeGlPSFpaRS80Y2dSQTFlSkxsVW5ySVoyY1BUL05y?=
 =?utf-8?B?bWRkbW9VcVcrMjJOVkZaK05NWnRMSHlicmNoOHhwTnduSzJNYzlLbFdKY3BI?=
 =?utf-8?B?NzNOV0U2QTFFMUIvK3FxZVc3RVdsVzRwckFzL1lCZUZsaXdBMHoyUm1ZMmpt?=
 =?utf-8?B?bndkdGh3Sm43Y2JNRHpZekxtYlVHRVJTSjgrMkJobUNaaUZsUlZWN1VOakNw?=
 =?utf-8?B?V1N4UE1xS25ON3lTVGtLcEpGWVFEcm1SV2NpNExDUFQ4U2Z2Y3lvNWU2NHoz?=
 =?utf-8?B?V2F6Qi9yRjI2Y0JlSnMzNUVvcGlZSi9XMlA2N1BvbEllRXlGZWVYeGZxYmhX?=
 =?utf-8?B?YlpweUttaExvdzhOb3FTeGVxWGZEUEZVdmRvWlNnZk9CeE13OUcxci9URmU5?=
 =?utf-8?B?djJlTTczd3B1cXpaTm9tdHZjd0JmZkh5TTk2NHZ1Vkp0RVF0NWt4bWJINmhS?=
 =?utf-8?B?dER6Y3grZEljbkFkVDM3WnFMSHBoK3BzWjFBMnZhOHE0TVpOK3MzelBMaXg0?=
 =?utf-8?B?WlVZVjV1V0JZZ1VpVHBOVXVNZWpubkp3ZDNKVld3MTMxY0M3OU5Wd3o3ZHMy?=
 =?utf-8?B?TWUvT3hQcDdkaXR6aC9HMWlDT3RnbW1MNEFtallGMGdYMTdkU0FNNmkzNHpl?=
 =?utf-8?B?Z252Wk13ZmxPWmZ5cldGUEFtekJGRmNMZHNGalkxTHZtQm5QOXhVWVRiemRU?=
 =?utf-8?B?Ly9JN21IcFl4UDZ5dUt6NTRHWWgwTTFRMkZQWEV1aFhUcXBVV3VkYW1TTjVz?=
 =?utf-8?B?S2ZscHdxSjNnY3ErUE0yUTdRWDA5ZE5XMXQrODM0eDVTMlJBemlRTE9mUVZN?=
 =?utf-8?B?akpuNmhkT2E3dkw3YTIrMjliUkgvVVYzVmxkQkoxMjRhMVZiZXAxeGcrS3Uy?=
 =?utf-8?B?Q01BUHczVjA1R3FOWDVMQUFtTWYyeWpyT0UyWmhPTWJvQTlaeEJaTU9iR2dk?=
 =?utf-8?B?U2tKV2xVR0F5M2cwYytzcFFlanZzZHhIVSsxWjVKTDZFVnF3WC9hdHhQNTRH?=
 =?utf-8?B?RkdQamFtTUpLYnRSUjkvbjlSN3psU1VlMFF2cEhzWTNVcjhQMnUwMXYvZ21D?=
 =?utf-8?B?TkpvNGJVZUZhNkk0YkJwVCtJcVdmQmk2S216RTM5N0pYYlRiODBheU42UnFG?=
 =?utf-8?B?VzhUbHZNclRpbFVoWXlJM2swdnVPb2hiUlY0dUt0YjhBWjhSRytiT29qaTZa?=
 =?utf-8?B?QVVXTjl3ZVVvcEFaMW5sVFZVQzdBNTZ0d0hWOEdxSDdJK3JCMDVINS9WWkxX?=
 =?utf-8?B?blU0OGNqa1lJdmtZcFpIazJEeUZTMktXVC9pTUhaMkFtSGpDZFdDVnlROXVL?=
 =?utf-8?B?dUVLK3VPY1djelNNMFpjTWk1QzJUbnRMcnJQc09UbDNibUJESDBpekpxaVlX?=
 =?utf-8?B?WWRxanJmUVRWVEFKdTZsTG5ZRThrV2lzVkVWeCtNK3ZDREhIYTlkVVY3QkIx?=
 =?utf-8?B?b3FYeHdmblVrS0NCSytpcUVtZ3dJMTZVK0pPYU1HTkNRRWNBTG95WUlhWDM4?=
 =?utf-8?B?N3ovQy8rK2JaVFpDSFJpdzhjQ1BJVGJpeDFKMlJmUEI2QVowVTlUU2JFK2kv?=
 =?utf-8?B?OFNpZDc5SE1JQlZNNC9lR1JITjRuSlZ4ZTFmd2F6SGlPSjNQK1lsaXpsMGxu?=
 =?utf-8?B?K1dXeUNUdFg4aGkzenI5djFuWW1adWU3bW02UFV5eVE3R2t0VDJLVGNiUUE1?=
 =?utf-8?B?eWFXQi8wRmwxNjFZRmNsM3lQNUZaKzAwZkZBMWpKM3hFSE8vaXhkL3hNN1R3?=
 =?utf-8?B?UVc1WU9jQ3hNcjJEREt6b0ZNTk9LTUFCVU5TaG9GckRneHVzamNoM05XZnhj?=
 =?utf-8?B?SmFCSXVtMnArb1JSdlhmYnljN2txMVNacFRLUkV2Sjg5SWM4YkV1L1lXQ2xL?=
 =?utf-8?B?VUwxZC8wRHhsbmJaQlZqOVYzNmZ2dnFJSkJ2T1kwL0hkeTZoNUM4OHpmSHdZ?=
 =?utf-8?B?SS9YZjZ3cTFaVnN1L1VIZFZVOU1wcTVxa0t0VDlMMUplYkpobmVPS2VSN0pX?=
 =?utf-8?B?RDdvdGEwZ1JVaG44cDdyT2lEVUJNbzZuMlh5S1VKdm9ZUk9UWlNYYWtiR1Ji?=
 =?utf-8?B?aVpRNGdnN0M3ZTgrZFB3UDltWTNsb2ZPb3VOcnh0SHhjNXhWRWhWSHhFM1oy?=
 =?utf-8?B?OXZHT09vNkNwL1IzMlBjdEZjRjhUS0tkK2ZQbzEyZEQ0M0JPNTVKVG1wY2da?=
 =?utf-8?B?VUVBK1R5MzJmdG9XWWpwWUFTOFhnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	IIoxzoXgcJwYY3QbUrs/6XgOmFG9FYQ5EXkR82QjtznQQiLRKt4cPKOR/m1PshT28vgnMdBslX5dQ4XTb5HSwsgdx7OrX+Jl1E43ershF+/hPh8jHCIoWwTmGyM0CkwCyeAicfWmLqkgH6geyrvMmevMN7wERO645t/OiOImLKfmw6j5S4yGrdiiXEjbroBqsMUwNMPkJj5Lk9wxzRsxblK95Q4ebri1gFoe6Jj3lmAC8UgU4ebwhV62vo6xyZKLnESE0GXUMn4l2VfLDSXguj323CXePvVXSJcJCW0ue9zBeCuTi/iOLH+BuS4RpFV6jcJQTLtrie+Z3+2tFSfd6jdrrYw7wRKgxBsjB/wYf1ftFE7j2eJ/qAuahz0a5dONuc0RJmFEqhdLk0hmRpVkR+FxfsszSu7vUvRpuGyBgkYynQ+94p0+136w+nF8dw9D
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 16:50:21.6016
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddf56cdf-86c1-41ce-1e2d-08de659fd136
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000989EB.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7531
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263427-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[afd@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5C8DA1008EA
X-Rspamd-Action: no action

On 2/5/26 6:38 PM, Judith Mendez wrote:
> Andrew,
> 
> On 2/4/26 3:54 PM, Andrew Davis wrote:
>> On 2/4/26 3:37 PM, Judith Mendez wrote:
>>> Add support for detecting AM62P silicon revisions.
>>>
>>> On AM62P, silicon revision is discovered with GP_SW1 register instead
>>> of JTAGID register. Use the NVMEM framework to read GP_SW1 from the
>>> gpsw-efuse nvmem provider to determine SoC revision.
>>>
>>> Signed-off-by: Judith Mendez <jm@ti.com>
>>> ---
>>>   drivers/soc/ti/k3-socinfo.c | 48 ++++++++++++++++++++++++++++++++++---
>>>   1 file changed, 45 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
>>> index 42275cb5ba1c8..4b6947a9ceb4d 100644
>>> --- a/drivers/soc/ti/k3-socinfo.c
>>> +++ b/drivers/soc/ti/k3-socinfo.c
>>> @@ -6,6 +6,7 @@
>>>    */
>>>   #include <linux/mfd/syscon.h>
>>> +#include <linux/nvmem-consumer.h>
>>>   #include <linux/of.h>
>>>   #include <linux/of_address.h>
>>>   #include <linux/regmap.h>
>>> @@ -25,6 +26,9 @@
>>>   #define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT    (28)
>>>   #define CTRLMMR_WKUP_JTAGID_VARIANT_MASK    GENMASK(31, 28)
>>> +#define GP_SW1_VALID_BIT            BIT(4)
>>> +#define GP_SW1_ADR_MASK            GENMASK(3, 0)
>>> +
>>>   #define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT    (12)
>>>   #define CTRLMMR_WKUP_JTAGID_PARTNO_MASK        GENMASK(27, 12)
>>> @@ -70,6 +74,29 @@ static const char * const am62lx_rev_string_map[] = {
>>>       "1.0", "1.1",
>>>   };
>>> +static const char * const am62p_gpsw_rev_string_map[] = {
>>> +    "1.0", "1.1", "1.2",
>>> +};
>>> +
>>> +static int
>>> +k3_chipinfo_get_gpsw_variant(struct platform_device *pdev)
>>> +{
>>> +    struct device *dev = &pdev->dev;
>>> +    u32 gpsw_val, adr_val = 0;
>>> +    int ret;
>>> +
>>> +    ret = nvmem_cell_read_u32(dev, "gpsw1", &gpsw_val);
>>> +    if (ret)
>>> +        return ret;
>>> +
>>> +    if (!(gpsw_val & GP_SW1_VALID_BIT))
>>> +        return 0;
>>
>> Return -1 here so you will get the warning message about setting default SR1.0.
> 
> Actually, thinking about this some more... If valid bit is zero, that
> means that we have detected SR1.0.

To me a valid bit set to zero means the register is not valid.. If you are
saying that bit actually signals SR1.0 then that bit is not well named.

Although if the whole register is simply all zeros for SR1.0 then do you
actually need this check at all? When you do extract the revision from
the lowest bits (gpsw_val & GP_SW1_ADR_MASK) the result will also be 0,
which is the SR1.0 value anyway.

Andrew

> Id rather return zero instead of
> printing an error to the user and overwriting with zero. What do you
> think?
> 
> ~ Judith


