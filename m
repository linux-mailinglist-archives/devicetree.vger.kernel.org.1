Return-Path: <devicetree+bounces-255352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07660D22760
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:53:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90EE0300C6DD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12D721CC51;
	Thu, 15 Jan 2026 05:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kJUP/jym"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013033.outbound.protection.outlook.com [40.93.201.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D990D27732;
	Thu, 15 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.33
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768456435; cv=fail; b=X1HQzWXwL6YDc+3IdFxA4xQ0/2fo3O3VXYm6WtUA9SD6JbhcoRWxQz2shjr60WxOC0A66dNjC2LbUHvuJFy8hxWZmybLmtpYavVtuYoX224kbqjKC2kPZUBB52xiHBueGmlUTyMfJSnp3uHkE026qccAuRVg7bQHUSM8ou/wsHg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768456435; c=relaxed/simple;
	bh=f0K5AzQqdiwRu63J5X05s0+KcOKmOThOnKm97r2i9/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=EiZP1EhEvbkMgKiZORz8JtsaDWkxH7TmLfYuZs6WB4Lesx7NJuv1nRnhYg23Ta0LniWM2CM6RedbtYo+CsM2ncs6c7fQo+tNN4FrPC3jDZqnvpMyi0pnEA/Ullm3kYf1TabBSKiUPSatX8okTEVoJNfqv+KelKUarQ3lTpdCsJs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=kJUP/jym; arc=fail smtp.client-ip=40.93.201.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hr+i8058FLEn8zDxEfxJxz/KqduyUmjxH3lDWyTixvmoOxuCYMvxrFM77dZMNCi94KqMF1SOVcSF7c50JPCD/6tKYtLfHY2FIRmhjme6SA02k6ze5mAThA/gn+ylwZcepbAoP4Sustr1PSq1i44e8pjJUKyMsmGsltheUVjnuyrBPVNWgEccsoQM7LYduYwj6MZI9w9Su+RKqdj9ypkkgpYPS0a/LO+UyjkeFCLteer/Ey1640PeHNJDUoS0ZE10asWxZV+czvdxOONG/qZ9Jq65qX2VjOKZlgpS9I99n6xkoDK/Te6B2pU7JM06V26Yxu5h6Y9BBEXGrz2fJWlPxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQT/8/FPeUydS8ane286/XtD5doNbYTfE1Tnu6gtWmY=;
 b=nvr//yr56QdNm2axRZxerPiL0GzvSUDJBPmxzFm1T4HhTJpAuzMYzPIzhxDBN7aFzw+p5Dkg4yUbXs9MOrtIZ5dNQKHPSy2vx4IOUmLcpra+KhhEda1aIzUDa31f1Bzux2cFI/5z/V4KNIwN/KySTrfgHOQNrL+1WMomuxdLuLnVov6SvpesLc8QvYmXt+VUWhxDLSkhcG0pOohDYLDRn8fGeAciVhVOZJpW6teejhbBg0DA+o11HLZY7sJZ2tP9wMOUizBnj8eWvbCtndorVHXW48rZQF3KXsg/a5ekxrfJoRWa+NMI3ut9SljmApnnLKgW1wAV/d/F2voKW+ayqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQT/8/FPeUydS8ane286/XtD5doNbYTfE1Tnu6gtWmY=;
 b=kJUP/jymsman+MR/5LrNxrK6OBb/oeSapWWWtkUnRWHiDQBiAgWprJ/RVmijNxIfN9/Ei47aZWsWG4X36OS3SCWDbcVmXDlmz9htcbq1d6tif6r5PuqUyT/dwqv3Q3PtTWiETIYnQU7H3sFOqvAbWWGEmbxNi7DKVvRW07sytRo=
Received: from BYAPR06CA0031.namprd06.prod.outlook.com (2603:10b6:a03:d4::44)
 by PH0PR10MB7100.namprd10.prod.outlook.com (2603:10b6:510:28b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 05:53:51 +0000
Received: from CO1PEPF000066E8.namprd05.prod.outlook.com
 (2603:10b6:a03:d4:cafe::96) by BYAPR06CA0031.outlook.office365.com
 (2603:10b6:a03:d4::44) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.6 via Frontend Transport; Thu,
 15 Jan 2026 05:53:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CO1PEPF000066E8.mail.protection.outlook.com (10.167.249.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 15 Jan 2026 05:53:49 +0000
Received: from DFLE214.ent.ti.com (10.64.6.72) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 23:53:33 -0600
Received: from DFLE211.ent.ti.com (10.64.6.69) by DFLE214.ent.ti.com
 (10.64.6.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 23:53:33 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 23:53:33 -0600
Received: from [10.249.130.12] ([10.249.130.12])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60F5rSU2908196;
	Wed, 14 Jan 2026 23:53:29 -0600
Message-ID: <4eea8956-fcd9-4be4-acc3-b983f1cbe55b@ti.com>
Date: Thu, 15 Jan 2026 11:23:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: ti: k3-am62p-j722s-common-main: Add
 HSM M4F node
To: "Kumar, Udit" <u-kumar1@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <afd@ti.com>, <hnagalla@ti.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20260114173551.2545088-1-b-padhi@ti.com>
 <20260114173551.2545088-3-b-padhi@ti.com>
 <f4319457-6c2e-42b6-a57e-6f326c93fdcd@ti.com>
 <3a62d6f7-ff88-4f5a-8dfd-ded3e5ff1c86@ti.com>
 <cf8f1087-34d0-42c3-8245-38dc7312b29c@ti.com>
Content-Language: en-US
From: "Padhi, Beleswar" <b-padhi@ti.com>
In-Reply-To: <cf8f1087-34d0-42c3-8245-38dc7312b29c@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000066E8:EE_|PH0PR10MB7100:EE_
X-MS-Office365-Filtering-Correlation-Id: 79828c3b-591f-486f-16b8-08de53fa74aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|34020700016|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Y1JUcnMvbjhhM09oT2JMRVB6bGNKaDkyM0hsYlVOeTB2ejFqVTBQKzVNV0ZZ?=
 =?utf-8?B?NDd3VkVWOUpnK1czQUFGVmt0NWdnVTEwekVYSll0ZWxxcDQrWG9GUzR4cVdH?=
 =?utf-8?B?TUJyOVBJSGsxd2hGbVV5N094QmhhMXA4MWxrb25FTVh2VTNncW52UU93ZnAw?=
 =?utf-8?B?aUV2clB5Q0Izckc2RDRnNjZFMmUyMnZhZHlGTkgrS25JcXdNTmR4V2RCb3E3?=
 =?utf-8?B?RmFNN29GSHhxYkNpV1BJZmlBU004dnQ1VWM4aFdUUldlN216dGNiVVQ1MXJO?=
 =?utf-8?B?dVdJZSs2dFRGa3gzUUpoUjlJWExhSlNDdnhoMjlmUGVtWjRhblQzMTV2Z29T?=
 =?utf-8?B?UThyNFZmMlBoMzcxcDdiY0FtSno1WldWeXV4cnd6ZU04RC8yWVNvZ0txdVhF?=
 =?utf-8?B?TzN6YTRsYms3SlJROHBxSXM1b1E0V2xjZS8rOUlYWTRSS21QckNpV0l4VlRM?=
 =?utf-8?B?ODBMVEVjUExnQ1VPMm80cXN2UFZvaEcrRFo3QlE1SjhYa09oRVZYZkdUaGlH?=
 =?utf-8?B?ck9Oa05KTVdVS0tIRjljaEhqVEI2alA0ZUVIQ01rU0Zwb0UxSHc4SGptZzZu?=
 =?utf-8?B?THVkeEJ2V0F4RXBiVzFzVTBXcG9QVXlCWGlwenFSOXBMUXV1bDFOZDJheU5z?=
 =?utf-8?B?WU1tN1AxRndNVDdNVHM1NEFWMUdBZHZvNG9QeDlSR25iNXhsdGVlaWw4WmNw?=
 =?utf-8?B?K1RFVWlIRnhGd3hvTzF1OEM5NXQ1MEhJY1ZhaFJSZnYwNnNncnlwOURSRlRC?=
 =?utf-8?B?RE5kN1ZDVXFwemtnS1BkODU3QUNWUXJpN2ZESHRJQzZDSWlCTzlPWDFHTkFM?=
 =?utf-8?B?SEY1ampPN3U3UEdCak1ZMURhNGl0ZFBmS0ZUbXRWeitBS1VTSEhqdnJzZmZh?=
 =?utf-8?B?SWZZOVcyT0wzSnduemtiRnViaVJjNEJ2UVBiQ3A1THZYUmNLcFA5OFhSNkc2?=
 =?utf-8?B?ZDh0RFRBemFaWU0yS3dDU1VaN2M5NmF0UHVhbFVDQnVtNnJTNk14d0ZHaWtn?=
 =?utf-8?B?R0lMTUZ2OFdjRGJkWUJmZW1vUklBMnNHQ1UycjJLbGVzeUs4dFB4N2JwREwy?=
 =?utf-8?B?N3lzNWkxWHE3bWI1ejNJSVFOMHhJM2tvYkdiVG9laFdiamNDZnRNQ1JPaXh2?=
 =?utf-8?B?djlIQWRpb0E5dEZUKzU4VXBnMkk0eDRyQ0VPdU0rR1NkTnpaSEcrRnkvQy8z?=
 =?utf-8?B?MlZ3ckhveW1ja0RiazZrTzJkbUkyTTdZOExaNXp6TTY5VUZSSHFzK2hyQ1lK?=
 =?utf-8?B?Z2JhWnIxckVHbkUyc3o4ZnAxR2RIVnkzcGduWTVnSWorYmZXSzdaKzlMaTdt?=
 =?utf-8?B?T3BuSm9YT21UeWh5Vm9NMVdOZDViVnJkYTRBa2x6b2NUcVN5elFFZ3JwNzdV?=
 =?utf-8?B?L01sT2crSlpEYnVvangvaE9aMnZjd25BSFlPY0RQYTZxMmNnSXp5R2R4MVhv?=
 =?utf-8?B?ODg5UUlGbUVuS08wT0YyOTI3VnZ6bk5TK1UwMXMzVTRmYm5HS0x6TTZxQ2l6?=
 =?utf-8?B?U3RVVkR4S2crNHh2Z0Vadk8xWHcrdkZzMlZKcnppVWZ0YTM1eG83azRjWTRj?=
 =?utf-8?B?SkxhSXJaZGNUY0ZPdlUveW9kcXB1RTNyUW1JOXRhV1I0Q21weFRXcVNYUDRp?=
 =?utf-8?B?bHhNR0pqaEZOemVEYXRuMEJlc2xJU2c0aWtvNnhBUjNVRTJaTFJ0bHpSQ2pT?=
 =?utf-8?B?TmYxWkxnSCtGbTh0eVA3dXU1VFpHMW1QNFBTcUljVDdhN25hdllVekU1ZmJ3?=
 =?utf-8?B?MUtTbWN4ZTB2TTFDNWtLQVhYc1NYRFRkaXZNNlZkZC9abnk0ZmRpdnF2Q1dL?=
 =?utf-8?B?MkRHQzFkSEFTdGl4ZmY4TzhRYUw5bkVqV0tMNEVIQ3FwSGM1dHlTN09rYmpN?=
 =?utf-8?B?VFVyRWhSV0tJZk52VEkzNWR5YmF3cUV3aFhRVmRMcHN1N09vQS9lQkZOUzNw?=
 =?utf-8?B?eWNqNlFnYmRrbTQ1Ykk3MSt6aEJDak5hYUg3UWdxa2EzRnYxOHVkMXJQYVIw?=
 =?utf-8?B?OHcvNkgwR2M0ZDNCSVpkYWFzdlR5RThzcGVrSjcwZ1R0WTF6UVJzMGJucllj?=
 =?utf-8?B?R2w4UDZCVW9uWHBQZGVmMjd0Y0p3OWZ1NklEcWlZSHo3L0J5REVEN0R1aXlP?=
 =?utf-8?B?OHZ6Zm1wYWZveVJYRHVBRk9aSStUenZzenJwRjZJeVkzVUpIU2lLbWhydENQ?=
 =?utf-8?B?L0ZIMHhjV2xnZ3I1NnpEdjJ1Q3l3RExZQ0FIdlVGVjNTU1UyWUp1R1lNVzht?=
 =?utf-8?Q?DwmZwSl3Jns5J6aKNt9fv7RKa7v3E0hQa7SIwLvxpU=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(34020700016)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 05:53:49.6113
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79828c3b-591f-486f-16b8-08de53fa74aa
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000066E8.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB7100


On 1/15/2026 11:16 AM, Kumar, Udit wrote:
>
> On 1/15/2026 11:11 AM, Padhi, Beleswar wrote:
>> Hi Udit,
>>
>> On 1/15/2026 10:06 AM, Kumar, Udit wrote:
>>> Hi Beleswar,
>>>
>>> On 1/14/2026 11:05 PM, Beleswar Padhi wrote:
>>>> The TI K3 AM62P and J722S SoCs have a HSM (High Security Module) M4F
>>>> core in the MAIN Voltage Domain which could be used to run secure
>>>> services like Authentication. Add Device Tree Node definitions for the
>>>> HSM core in the respective SoC common main dtsi file.
>>>>
>>>> The HSM node is reserved to be loaded and booted by the early-stage
>>>> bootloader. The firmware-name property is defined at the SoC level
>>>> since the HSM is not a general-purpose remote core and boards are
>>>> unlikely to use separate firmware. If needed in exceptional cases,
>>>> board-specific device trees can override this property.
>>>>
>>>> The corresponding reg ranges of HSM node has also been added to its
>>>> parent node's (cbass_main bus) ranges property.
>>>>
>>>> Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
>>>> ---
>>>> v3: Changelog:
>>>> [Nishanth]:
>>>>   1. Use generic node name 'remoteproc'
>>>>   2. Use label 'hsm' instead of 'hsm_m4fss'
>>>>   3. Add a comment for separate SRAMs
>>>>   4. Update firmware-name property to match existing naming 
>>>> conventions
>>>>   5. Change status to 'reserved' and add a commment
>>>>   6. Re-order bootph-pre-ram property before vendor properties
>>>>   7. Update commit msg adding rationale for firmware-name in SoC.dtsi
>>>>
>>>> Link to v2:
>>>> https://lore.kernel.org/all/20260106104755.948086-4-b-padhi@ti.com/
>>>>
>>>> v2: Changelog:
>>>> 1. None
>>>>
>>>> Link to v1:
>>>> https://lore.kernel.org/all/20251231165102.950644-4-b-padhi@ti.com/
>>>>
>>>>   .../boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 17 
>>>> +++++++++++++++++
>>>>   arch/arm64/boot/dts/ti/k3-am62p.dtsi            |  1 +
>>>>   arch/arm64/boot/dts/ti/k3-j722s-main.dtsi       |  5 +++++
>>>>   arch/arm64/boot/dts/ti/k3-j722s.dtsi            |  1 +
>>>>   4 files changed, 24 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi 
>>>> b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>> index 3cf7c2b3ce2dd..0e1af2a69ca2e 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>>> @@ -1117,4 +1117,21 @@ vpu: video-codec@30210000 {
>>>>           clocks = <&k3_clks 204 2>;
>>>>           power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
>>>>       };
>>>> +
>>>> +    hsm: remoteproc@43c00000 {
>>>> +        compatible = "ti,hsm-m4fss";
>>>> +        /* contiguous regions but instantiated separately in HW */
>>>> +        reg = <0x00 0x43c00000 0x00 0x20000>,
>>>> +              <0x00 0x43c20000 0x00 0x10000>,
>>>> +              <0x00 0x43c30000 0x00 0x10000>;
>>>> +        reg-names = "sram0_0", "sram0_1", "sram1";
>>>> +        resets = <&k3_reset 225 1>;
>>>> +        firmware-name = "am62p-hsm-m4f-fw";
>>>
>>> you don't need clock and power-domain for this ?
>>
>>
>> That info is abstracted out via ti-sci calls. ti_sci_cmd_get_device()
>> takes care of setting clocks and power domains for us.
>>
>> Same for other rprocs:
>> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi#L178 
>>
>
>
> Is this specific handling for m4 core ? 


For all single cores like M4, DSP, R5F0_0/R5F0_1 etc.

> , I see other rproc got power at cluster level


We don't make any ti-sci calls for the cluster level, which is why we
need that info here in DT. Otherwise, ti-sci calls take care of the
individual cores for us. That's why R5F child cores don't have
power domain info in the DT:
https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi#L1521-L1535

Thanks,
Beleswar

>
> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi#L1518 
>
>
>
>>
>> Thanks,
>> Beleswar
>>
>>>
>>>
>>>> +        bootph-pre-ram;
>>>> +        ti,sci = <&dmsc>;
>>>> +        ti,sci-dev-id = <225>;
>>>> +        ti,sci-proc-ids = <0x80 0xff>;
>>>> +        /* reserved for early-stage bootloader */
>>>> +        status = "reserved";
>>>> +    };
>>>>   };
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi 
>>>> b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>> index e2c01328eb298..9d6266d6ddb82 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>>> @@ -96,6 +96,7 @@ cbass_main: bus@f0000 {
>>>>                <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, 
>>>> /* USB1 DWC3 Core window */
>>>>                <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, 
>>>> /* SA3UL */
>>>> [..]

