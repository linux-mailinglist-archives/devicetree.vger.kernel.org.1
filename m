Return-Path: <devicetree+bounces-255450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DFBD231B1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A6EF302F68E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E12331A65;
	Thu, 15 Jan 2026 08:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XPRgKIHm"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010054.outbound.protection.outlook.com [52.101.56.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B04332916;
	Thu, 15 Jan 2026 08:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768465602; cv=fail; b=CDlllIt5CknHHHvEaAcVGu/l5/SrYyol1BM3QLtA/UPtYA9l8FnNT9IfqGhnQImO3+VbcMZmCVGvguVAcT1pO1pL2u8sQz9d+myDjCh5IJLHoV7p6G2lo9VUEXBFAXAKPmLBcCmaB8vd/mKUeltozXgiGxhZp8nzdf5y/xg91wM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768465602; c=relaxed/simple;
	bh=f6AJg3ZZWw6lN9vtku6nDRthxg3BptYCAXWLK6oxJw0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=M58YkhLsECUzKANxy4gVeo5ZxQkD03ZZkCEMM2SXZ7xY6fkHgdOoZFyiIhHbxcXxWrR/q9QIlI+QztNirakIVZhV8JVDesNFmga3rOtj/3sJGd7WVegk55BdUL1e6gvtN/8ZM8ThdapngX4uW7/rUNCj88HlMzwKBNBlY+3nsFk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=XPRgKIHm; arc=fail smtp.client-ip=52.101.56.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNsvplxPN+sAZ1KnU0SjWeMi8oWrjWnzGEOhNtgnE3btciQwa2hL9OsELvN4lXdAvuwlt67xT9ZXOEBJvFg0zxxPmDpS0KyJI5msMABeSwadOyyOKwrdNgBPfUx2vFDts8okvKXrqcAa7bWdgj7o3fzeq3OAdBHfEZfl3AspMcXtSd+/I6Vc25frONjWZXZqpjpz+5XrzgwC/cg9Z/k3MRFrHehcAeeOkiZe9YPk9+HYuXN1LQmeC8n4u9Ce6u+HuAHc2R7UyEvQw202l10KLnjK/tviLJlGVdpwKenhgQQAGNA0Gu2wdDudQRz+WW+ERcfb6QxDm9DydU5Ewk0TnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihCYjBor/TJ7yvCsPjjKpFf3GYyFK9nhdlTTkYZ1ZVM=;
 b=K/QeCpZBnqQRL2yK1H+gz0flQ1ZGltkeOcQseyy79azHK0ZvtIHLUVfWyhDrr4XsQ2uFYJnwadbkHwnbACYLzNwarGgPDM8gG4sCkD3WhqWyj5LuyLB5rKapqNmRfjEwLlCO15vVYxFMihU8xEoGtI12+0ODWlFbEEWaMg/1z8vL/mhHyVXwO59z7LlGvbhL/vE8Plasp0AF4u56DUGJ015tZ8zB5tg7Ftfg97x+q+cVrvBfx7Dp6xMsChOvRxozaaUFU/lcCdiR/teA0JTdWTIqFE4LyWA9vBzAaCxEdONAc0LLFBWewlSMfVoxGmffoOshLFYzdFON/lHp48NZCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihCYjBor/TJ7yvCsPjjKpFf3GYyFK9nhdlTTkYZ1ZVM=;
 b=XPRgKIHmvDiiO9LyFOjflgB/AOzZLw0YQLbrk58h7q2sStW9Skmf0uZCsXaRopTzPLV2nJCSSedYUmpexaiv8bU3uJH9XvdIjpYuo/aJFkp05swKjktMH/EAyZe7YuTBS+5Dtx9WgL1aHINM2/0HT0uIfV8gJqCTE7LSccaG6gk=
Received: from SN7P220CA0015.NAMP220.PROD.OUTLOOK.COM (2603:10b6:806:123::20)
 by MW4PR10MB5749.namprd10.prod.outlook.com (2603:10b6:303:184::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 08:26:32 +0000
Received: from SN1PEPF00036F3C.namprd05.prod.outlook.com
 (2603:10b6:806:123:cafe::78) by SN7P220CA0015.outlook.office365.com
 (2603:10b6:806:123::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.5 via Frontend Transport; Thu,
 15 Jan 2026 08:26:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SN1PEPF00036F3C.mail.protection.outlook.com (10.167.248.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Thu, 15 Jan 2026 08:26:30 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 02:26:29 -0600
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 02:26:29 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 15 Jan 2026 02:26:29 -0600
Received: from [172.24.31.151] (lt5cd2489kgj.dhcp.ti.com [172.24.31.151])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60F8QO8I1257973;
	Thu, 15 Jan 2026 02:26:25 -0600
Message-ID: <f66cda39-acf7-4a88-8528-a4dd41750259@ti.com>
Date: Thu, 15 Jan 2026 13:56:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: ti: k3-am62p-j722s-common-main: Add
 HSM M4F node
To: "Padhi, Beleswar" <b-padhi@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <afd@ti.com>, <hnagalla@ti.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<u-kumar1@ti.com>
References: <20260114173551.2545088-1-b-padhi@ti.com>
 <20260114173551.2545088-3-b-padhi@ti.com>
 <f4319457-6c2e-42b6-a57e-6f326c93fdcd@ti.com>
 <3a62d6f7-ff88-4f5a-8dfd-ded3e5ff1c86@ti.com>
 <cf8f1087-34d0-42c3-8245-38dc7312b29c@ti.com>
 <4eea8956-fcd9-4be4-acc3-b983f1cbe55b@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <4eea8956-fcd9-4be4-acc3-b983f1cbe55b@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF00036F3C:EE_|MW4PR10MB5749:EE_
X-MS-Office365-Filtering-Correlation-Id: 226612b0-8737-4ef6-d8b7-08de540fc939
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|34020700016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?N1d3SjNraTl6UFlmbkt3MTcrNXloT1F4Z2liS2tXNWRqbmZwa25ZZGphV1Fk?=
 =?utf-8?B?ZDN4M3V4R1RNc2Q2VnVEOXh4cm1WdGhaQ2kwSktUZ0huaGJrZTg5TzJmanpF?=
 =?utf-8?B?V2tMcEVabzVoQ3F0cVN4b2Qybm5XcmYxVVpPTEwzVTZxZDZLODZkeCtrelow?=
 =?utf-8?B?eG5SL3VDS3lMVVBxTEVYOVU0ZTVlbFFpbUhLcG9JRDRTdkNCbi9GN0JBOFR1?=
 =?utf-8?B?RmRoRTFVK2V6aytaUDlSS3ZmcklDTGpudENTMGFzblUraUNJRzFVVy9NVEd5?=
 =?utf-8?B?NTc5TUYydG1ySzhRcDhsUmtPZlhjK0p0RmNYaGVCcVJJQUwzbTRXTEJPb0VR?=
 =?utf-8?B?aGllakI2dGF4b1Q5QU5sWnFMN0dMQkRVUmt4elZlL08yL3ltZ1dPandrZ1dJ?=
 =?utf-8?B?UmVCdHh1dm00Si9ZYnhiRWM5MFY5Q1AvSVlUWSsxNXhWTGtVTzFrMnVwN0k0?=
 =?utf-8?B?Y1lkZWozc0UzOG16UElHWUFNT1ZGalhjeEx2TitCNmNGYUp6ZUpiSGpaNHFn?=
 =?utf-8?B?emxxdDlXTFQ0MytxRG1QMFhYQXFhRmlma01FajVvNHJNN3VDV3VEeGs2OXJy?=
 =?utf-8?B?V3FnOTlqU1N6RGJNRmtVRmx5K3FRK20vYVJoLzlmNmkyMDhRdllicE1Bbisr?=
 =?utf-8?B?Z1ZaMEpZMjJBTnhmekZPNHVlRUl3N0JhajI3QzlQU0FlcWFReGRUSktoSEJq?=
 =?utf-8?B?NWpORHRrZzNVK29ZZzF4ODVOeWlud3F3dFkvSEZXRkxiNmJ2YUU5Mnh1UkRV?=
 =?utf-8?B?R1JaU2ZQcE9GVEtFdndWQTcwcnc5ZnRXUElZWFVkTGQ0elJSSkFNZERmWmw4?=
 =?utf-8?B?TmxaNTBRN08zVFYvdjhVMjkzWmhsTGgyWUtQMmp5YVlqRmFmeUticWpyNmdS?=
 =?utf-8?B?UGFoQmpHWHRwWE9pQWd2S1NnRUtKMno3eHRLZjBoOCtCZ1BIeG9LV0oyVlJh?=
 =?utf-8?B?Y05KcWF2TnAyUHc3a0pORDQwaTZBUnovdGUvT1MwRTNCaE9HbG4zSW50RDhr?=
 =?utf-8?B?YkZyanhQaGRPYmsrUC9Jc0hHcDQxZ3MwckE1WnozVy8xNTBYOXp6TTF4RktC?=
 =?utf-8?B?THFiNGgzOWF3WjRXeHhSd2JuT1YySUorTGVkYzArSDh0bUk0Zms3cnc3eHlq?=
 =?utf-8?B?eWVGMkVtY2I1SXZsR0JVRkVqb3dMOXBRWTdpbG1qcUkra0RHeWVPZDJoWVNJ?=
 =?utf-8?B?Wm81eTcwa21PMWFHaUxrSEdRaUxYUW5GNWUrVmFOaVE5QjY4SVBFZE1jZnBs?=
 =?utf-8?B?SjZBSHVLVEd1akFEekZwOVkvOEwrWWRQZFlNV0pWMmlpNG5MYWNxeDlLVUZa?=
 =?utf-8?B?RGx3MFRlMitPemFvVVRsdjRQNkl4TUkrbkptMFgzWVFqVjdEMml6MTRGUWJi?=
 =?utf-8?B?amxzS2crVmpwd3Q5L1Y0RUN6L1dJVktkL3NJbTdXTXBaall4WnlSSG9zN0VI?=
 =?utf-8?B?eGQxRFYxU2dNL2lURzJHWGNHVG85NXUwUndram9aUTVOdG54dG90WHZhMEFJ?=
 =?utf-8?B?b2VEVi8yK3o3dXJWRkc1TkpnM3ZSYzJObGp5SEwwdHhyU0h5aDYrbTUwOC96?=
 =?utf-8?B?Z0Z0MFNRaFEvenBNNVdUK1dDWjZHc3YybHhiV3I3dHJvL3c1THdmMXR0cFhi?=
 =?utf-8?B?dlE5OC9sWm1BTFhYV1RoRzdjMFZDa1pFekxzM3hsWS8zWlpJUlp1K2VMd2Ex?=
 =?utf-8?B?WjhKTnA1bnl6ZVF1bXl0ZWk2NFZxNkUwQ2dGcWk5eEErWmNvR002UHI4Z2p4?=
 =?utf-8?B?SXIrTW4xeWdvMjVFWFdmeTJBZnpjYkVJYmF6azNFZ0dWRzNIM0JpRVBoY1U2?=
 =?utf-8?B?VnNHRHo2MDZnNE1mR2dlcVJJWDN1U1VLZHd6MVYxMjV1cnVSUmd0TXk2Q1Fo?=
 =?utf-8?B?eVYyTFNrdDZua1lQY3cxc2FuZXFOSzVuWlljTHBoSTlMYk50eXBjY2FVdGx3?=
 =?utf-8?B?cXRYcVgvZ2Y1RlNmMWdrazRCV2xod2doRnE0Q09vTzZ6QzNRWEpMVFllbm1v?=
 =?utf-8?B?aExQNnk5L1ZhbGV6RGh6dmFOSEh6ODladUZjV2lrNkNiZ1NRRStNRGJGckFF?=
 =?utf-8?B?SXJSMktkMmJIVzVaQVR2MEJtQ0xQclhGY0RGRk9ITTlSK0RKNG5nTC83a1N2?=
 =?utf-8?B?MURJSXdlNU9XcnQrY3p1ZHFiVEFWcXd2YWpvZFlrdW5CUVVpYUxvaWhxd1Yy?=
 =?utf-8?B?SmFrellpOHBBeTkrdVBNU1RnTk82MlRTLzNGRHZIL3BoQmllOG92cklkMmo0?=
 =?utf-8?B?VzRadG5CUUUwNHRYWHJBdmlGTnV3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(34020700016)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 08:26:30.9671
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 226612b0-8737-4ef6-d8b7-08de540fc939
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF00036F3C.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5749


On 1/15/2026 11:23 AM, Padhi, Beleswar wrote:
>
> On 1/15/2026 11:16 AM, Kumar, Udit wrote:
>>
>> On 1/15/2026 11:11 AM, Padhi, Beleswar wrote:
>>> Hi Udit,
>>>
>>> On 1/15/2026 10:06 AM, Kumar, Udit wrote:
>>>> Hi Beleswar,
>>>>
>>>> On 1/14/2026 11:05 PM, Beleswar Padhi wrote:
>>>>> The TI K3 AM62P and J722S SoCs have a HSM (High Security Module) M4F
>>>>> core in the MAIN Voltage Domain which could be used to run secure
>>>>> services like Authentication. Add Device Tree Node definitions for 
>>>>> the
>>>>> HSM core in the respective SoC common main dtsi file.
>>>>>
>>>>> The HSM node is reserved to be loaded and booted by the early-stage
>>>>> bootloader. The firmware-name property is defined at the SoC level
>>>>> since the HSM is not a general-purpose remote core and boards are
>>>>> unlikely to use separate firmware. If needed in exceptional cases,
>>>>> board-specific device trees can override this property.
>>>>>
>>>>> The corresponding reg ranges of HSM node has also been added to its
>>>>> parent node's (cbass_main bus) ranges property.
>>>>>
>>>>> Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
>>>>> ---
>>>>> v3: Changelog:
>>>>> [Nishanth]:
>>>>>   1. Use generic node name 'remoteproc'
>>>>>   2. Use label 'hsm' instead of 'hsm_m4fss'
>>>>>   3. Add a comment for separate SRAMs
>>>>>   4. Update firmware-name property to match existing naming 
>>>>> conventions
>>>>>   5. Change status to 'reserved' and add a commment
>>>>>   6. Re-order bootph-pre-ram property before vendor properties
>>>>>   7. Update commit msg adding rationale for firmware-name in SoC.dtsi
>>>>>
>>>>> Link to v2:
>>>>> https://lore.kernel.org/all/20260106104755.948086-4-b-padhi@ti.com/
>>>>>
>>>>> v2: Changelog:
>>>>> 1. None
>>>>>
>>>>> Link to v1:
>>>>> https://lore.kernel.org/all/20251231165102.950644-4-b-padhi@ti.com/
>>>>>
>>>>>   .../boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 17 
>>>>> +++++++++++++++++
>>>>>   arch/arm64/boot/dts/ti/k3-am62p.dtsi            |  1 +
>>>>>   arch/arm64/boot/dts/ti/k3-j722s-main.dtsi       |  5 +++++
>>>>>   arch/arm64/boot/dts/ti/k3-j722s.dtsi            |  1 +
>>>>>   4 files changed, 24 insertions(+)
>>>>>
>>>>> diff --git 
>>>>> a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi 
>>>>> b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>>> index 3cf7c2b3ce2dd..0e1af2a69ca2e 100644
>>>>> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>>> @@ -1117,4 +1117,21 @@ vpu: video-codec@30210000 {
>>>>>           clocks = <&k3_clks 204 2>;
>>>>>           power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
>>>>>       };
>>>>> +
>>>>> +    hsm: remoteproc@43c00000 {
>>>>> +        compatible = "ti,hsm-m4fss";
>>>>> +        /* contiguous regions but instantiated separately in HW */
>>>>> +        reg = <0x00 0x43c00000 0x00 0x20000>,
>>>>> +              <0x00 0x43c20000 0x00 0x10000>,
>>>>> +              <0x00 0x43c30000 0x00 0x10000>;
>>>>> +        reg-names = "sram0_0", "sram0_1", "sram1";
>>>>> +        resets = <&k3_reset 225 1>;
>>>>> +        firmware-name = "am62p-hsm-m4f-fw";
>>>>
>>>> you don't need clock and power-domain for this ?
>>>
>>>
>>> That info is abstracted out via ti-sci calls. ti_sci_cmd_get_device()
>>> takes care of setting clocks and power domains for us.
>>>
>>> Same for other rprocs:
>>> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi#L178 
>>>
>>
>>
>> Is this specific handling for m4 core ? 
>
>
> For all single cores like M4, DSP, R5F0_0/R5F0_1 etc.

Ok


>
>> , I see other rproc got power at cluster level
>
>
> We don't make any ti-sci calls for the cluster level, which is why we
> need that info here in DT. Otherwise, ti-sci calls take care of the
> individual cores for us. That's why R5F child cores don't have
> power domain info in the DT:
> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi#L1521-L1535 
>

R5 cores are inside cluster , it is be better to handle core and cluster 
in same way.

But this patch is not related to R5.

So

Reviewed-by: Udit Kumar <u-kumar1@ti.com>


>
> Thanks,
> Beleswar
>
>>
>> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi#L1518 
>>
>>
>>
>>>
>>> Thanks,
>>> Beleswar
>>>
>>>>
>>>>
>>>>> +        bootph-pre-ram;
>>>>> +        ti,sci = <&dmsc>;
>>>>> +        ti,sci-dev-id = <225>;
>>>>> +        ti,sci-proc-ids = <0x80 0xff>;
>>>>> +        /* reserved for early-stage bootloader */
>>>>> +        status = "reserved";
>>>>> +    };
>>>>>   };
>>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi 
>>>>> b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>>> index e2c01328eb298..9d6266d6ddb82 100644
>>>>> --- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>>> @@ -96,6 +96,7 @@ cbass_main: bus@f0000 {
>>>>>                <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, 
>>>>> /* USB1 DWC3 Core window */
>>>>>                <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, 
>>>>> /* SA3UL */
>>>>> [..]

