Return-Path: <devicetree+bounces-255351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CFDD22751
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45F473012763
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9686A21A459;
	Thu, 15 Jan 2026 05:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eEjFVIU/"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010011.outbound.protection.outlook.com [40.93.198.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C29C1494C3;
	Thu, 15 Jan 2026 05:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455985; cv=fail; b=BB/DatY1Z6Nscwi9w0R6gcUvatx3lrg1azOSxW2xkukiyOnQz39ddhOh2+5C/s7v1xlIF6NM04B8BkyGiRpUpoJeWeYlC5vMYXAfBu0I1lCSjNe+PftCLmzZLJofcKd0HFps3ZH0Mut/8Zb8ktgI7RRzTQp0ouqXRh45YIP/MtY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455985; c=relaxed/simple;
	bh=+Y4CaxgncYM7LXux1wFH4NCl2KW4i2yXFD1MoQKxdIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=dqCCDqjlAOENAbVdtz9+oXcIP/1GtNtZXoeDqBhthsjIhhrw+h0Ko5tRP4D0WQIqm/Ve4prG9jkmzdCPxRCiUxYd0WyN6qR0DR8wg6ZmbByH8mSUxsxG/WioryYt9Eaj9jRb4CwEohIFtgl1H+gg0WugF7oK1UX2FXu2FoUUBQw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=eEjFVIU/; arc=fail smtp.client-ip=40.93.198.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6FjMxMaumeMC5vuHzPdIxn2wNg6k0z7Ur5SAMNnVJoPB8X0+tfqiwe/6BOYnxGr+dS2dlfBYQQxiPGPTkKakpS5mwH7QTdMdaRfUyWzQybOwe62cg5PcN6cfGBSS0MR0FqMTyfZojfgZDYp7HGlB45v34rVfQa4/LXnO5c2L+1BOHkS07DxMyWmdnVnjVp3uzTMb9uoVzCiKQA6E9RwnH0Qr19zrguvExTnBC1Y8eZeq8tksxdxomBmLXeoFi0WuUIwn9PUnXWSJR+opWYinUBsjHIv9YDpSdGOwSX0ftvyG+iwClntrkdVT2L33RmAVD3xTD9S8qd1OpYM+Hlxaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMuEBV155iWo+OTeDH4RunpjgRhY4ahDdaL9Thshf74=;
 b=bmb8TBglcK7vtFI2/wbMThOYlRm7dEavF/eByHVT69upPC5MZg3wQwtp/VMuHEp7jNOnUSLUnVv3MPerr/qmUsCDgiiFBVX3pqL3ho7v6lP3RCi6l87LUV4+NNrFQNQSY6tR8XU2NuRRFZZ+u+WOq6WbZFFjP+pBZSIkFSCdG1MqUYu5VZ7XhBOTK3RjRSsqRO87dZGfD2Ybqo7QIdFXMyGg57vz0uYmqJhI3BLV4msQ4/Kg20aWwyLK5IePEkV9wp9IAaeaY7HTiUAh+xcUmA0Ad5ddSZ2QgK5ZjF+h+gV2cvboo3YZvbwEygHbdOT9Fvo2ccWs4Dd8rqzfWwoydA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMuEBV155iWo+OTeDH4RunpjgRhY4ahDdaL9Thshf74=;
 b=eEjFVIU/SJS7dN4OFs2o/PNaoJb/Z3t+rHcjG2c8x35yg0k46LcvbLw46WS9X66Kyr+5+21J663Ay+hHyD3GvrfWxbeYV+Afzgc4+ijxmTOQBg3qFPeSZtGSU/b6GgS0JQQGAfAb1ked4hTs6+AoejUOiu9tQQA9dwLAVyp9B9I=
Received: from BY5PR03CA0007.namprd03.prod.outlook.com (2603:10b6:a03:1e0::17)
 by DM3PPFEACE3F2B7.namprd10.prod.outlook.com (2603:10b6:f:fc00::c54) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 05:46:21 +0000
Received: from SJ1PEPF00001CDD.namprd05.prod.outlook.com
 (2603:10b6:a03:1e0:cafe::f9) by BY5PR03CA0007.outlook.office365.com
 (2603:10b6:a03:1e0::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Thu,
 15 Jan 2026 05:46:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ1PEPF00001CDD.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 15 Jan 2026 05:46:19 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 23:46:19 -0600
Received: from DFLE215.ent.ti.com (10.64.6.73) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 23:46:18 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 23:46:18 -0600
Received: from [172.24.31.151] (lt5cd2489kgj.dhcp.ti.com [172.24.31.151])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60F5kEb0900017;
	Wed, 14 Jan 2026 23:46:15 -0600
Message-ID: <cf8f1087-34d0-42c3-8245-38dc7312b29c@ti.com>
Date: Thu, 15 Jan 2026 11:16:14 +0530
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
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20260114173551.2545088-1-b-padhi@ti.com>
 <20260114173551.2545088-3-b-padhi@ti.com>
 <f4319457-6c2e-42b6-a57e-6f326c93fdcd@ti.com>
 <3a62d6f7-ff88-4f5a-8dfd-ded3e5ff1c86@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <3a62d6f7-ff88-4f5a-8dfd-ded3e5ff1c86@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDD:EE_|DM3PPFEACE3F2B7:EE_
X-MS-Office365-Filtering-Correlation-Id: 73fa50bb-bb8c-4efd-9249-08de53f96875
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|82310400026|34020700016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RXpFN0EvSzBmcFdqNG5oRUYyVkVMem5jNWtpM09MQ3c3NDNYSHhvMHBhampY?=
 =?utf-8?B?NEs2TlNMY2tld0t2OHZSaDJ2ZUdITGNMRExuTVdzZHBUVnVVWTMvQTdMODA0?=
 =?utf-8?B?YmVNNk5kdFMwWjNPWUxJWnF2eUNkcVpkRU8zOG96bUxmQTNBK2F5TVVZSFVx?=
 =?utf-8?B?T3l1d1NYRC9PSDVjZ3dIZnp2MWE2V3dMMmdsSmJzMk5NTkNBa0tnU0xhSGZ0?=
 =?utf-8?B?SWhTSDVvQjR3UTRGNHB5T2M4NnJERjQzTGZxelNWa0twbXFVbGRRV0RTNzU0?=
 =?utf-8?B?TlpNamh0YzhQb3hCanpTVkxCbjhpbElsN2VLYm4wTzcweCtlWU9qUDlCb3Js?=
 =?utf-8?B?V2dlU2JuVzlaeU9NTjg3MlZ4Y25YQnFtYjZ2dG5EL3ZtdGNFcWJyV3lnUVc1?=
 =?utf-8?B?MHBEMHZnVmJ0SGdGNGpQZzNJRHRzcmVWU2sxVHV1U25KYTNkZGtKck1XUWVD?=
 =?utf-8?B?ZXZONHdsM2txUUVYbm1CektZVDM5WnR3R28wSGZXcHdqZnJITmtQS3BadHUr?=
 =?utf-8?B?OGV3UjlHNmR3amhvY2ZhK0RldGRVV2xhaWt3Zmk2ZTNaY0FGS29CWDkwdVFs?=
 =?utf-8?B?b0NNcTZjdTZ2Um5mV2RhWlN5WjFCZVRPL3pPaTZlYWVRQk5aVVpNMitEemRa?=
 =?utf-8?B?cnhra2tIY011NGlJeldlS3NRQ29xRm5HZU12TWxZWkl1eGMxOE5qRW5LMTly?=
 =?utf-8?B?YWtuVVE5U0FSWnEwYWV0ZWVpNTZCajROUmpYVkx1dmdDODRpUTMrcWJQVWhV?=
 =?utf-8?B?a0RBdUR3dnM2aFJZTk9lT2Z4K2pFYUV1K2RiTmJNaEYyVE1CaVhvNHdnenpy?=
 =?utf-8?B?emNqQ3Y1MVpzWm1hamwrdTNwcmJqZkNTUGJKVCtwM1VialFhN0d2QzNhSm1r?=
 =?utf-8?B?aExUNUNZWEs3Y0RMWUZ3WUx5ME5MbU5tVE9HcmZWRXRsU3VYNU4waTVsQkJy?=
 =?utf-8?B?QzRsTE1GTVFxSmZBMHJFcjEwclpqeFFWcjhGSGV0VDVKNVhoZVpZU2dEMWp0?=
 =?utf-8?B?dC9VUFhjWDlPOXR6WXd5c05la0dhTk5jTTRpbDFQNGRNR3U0MDFWWEN2ZFpD?=
 =?utf-8?B?VmorWnMxZmk0SFhJMnlac3l6d1N4clZXdkhYVklTRlVLZ2crMWhNUEVvKzFF?=
 =?utf-8?B?WGFmTlNRZCtmRHNPSHNlSFczOGxyTjdxSUFkUE02NTV1QTcwakVXWmFqY2Nx?=
 =?utf-8?B?aXUzZDVHZjU4alBMbHBqdEpOaE93aW5oVWMzWDVlT3Y1YW5GSHVHWlppL3p6?=
 =?utf-8?B?WmM5ZVlVcDJtbVg3VTU2a1dsQUl6SnZ4WERsOVdWWXBiTFM5TUZxUXh1LzR0?=
 =?utf-8?B?OVJMNExLUS9QRmVjcE8wQkZQcmpTamhPa1R3UjFKTm9sQTRkTXpUWkVnN1Yw?=
 =?utf-8?B?ZGJyYm1CZzVWd1lxa1cvR2oxbmo2QkRLM1k5NTgxWVJsTkZoZUJTSUJqenR5?=
 =?utf-8?B?aVltR2FYWUFORzhkYm1HWC93ejVsQUdQVWZmSFBmZ0FpTWlJcWNIdjNOZlQ2?=
 =?utf-8?B?aTh1enN3SEVnYktnQnlkb2Z2VENMUk9TREZCV25qZCtaSktPek5IMTkwL1BU?=
 =?utf-8?B?MFJmMExXMTlkdkhDbnVXTzQwREE3VmFwOWFmRUJsOEZtTHdsODlIQ0hZN1FU?=
 =?utf-8?B?UXU1VnJGV2ZkNStpalM3Zk54cVBlU00rOFZZL1QyQ0ZTbXNTeVVRdS9rTzVC?=
 =?utf-8?B?YWJ5c0psZmx2QmdNeXhzVDVXR0s4Qm1RWGxQYlBLQmhIelJyK1h2V0oyOE5s?=
 =?utf-8?B?S3ZDampNcExoV3laM0VKY0pzWk1PRWw3UTEyR25ORWt2VjJQeWNYTFhWME1B?=
 =?utf-8?B?bmN4RjVyTGFVMWpzMW9rOUNaZDZad041UlVkY0EzaHZIN1dIQzlhMkZ4MGtO?=
 =?utf-8?B?MDhrWDVuZVFXY2FDUjE1dThYMHFsUW1rK0EwZEFmYWduUXcxdU9OL2tGc0VY?=
 =?utf-8?B?V1k1VGQzZngzSld3K1VBamQ4U0swZFdGaklJcmJIREJITDJWSTdpZzhIbldz?=
 =?utf-8?B?NUd5ZTVmMnk5bi83S2Ztd0xDd04vR2NFNThuRGIxazBvZjRWSnZxbDdIcHhG?=
 =?utf-8?B?YlpxR3QxTTFrNVZ1d1ZnTU1WVWJKRzdOMXpGcG5yVTc2cmVJejFMVGg5WFBU?=
 =?utf-8?B?Nm03ckUvVzFaSk1iTGxUMVVNR25OZDFNd0Z0OHhCa2tNYkdoSFYrOFI5SWZB?=
 =?utf-8?B?NmxRMndLdmUvT3JRNGNmYUtKVVdpVHlNbStkdnJSSnhwNmpVamtIRjRCY3gw?=
 =?utf-8?B?YUhBRkRSUlZZUXVtWmNycXBnWTN3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(376014)(82310400026)(34020700016)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 05:46:19.6411
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73fa50bb-bb8c-4efd-9249-08de53f96875
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CDD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFEACE3F2B7


On 1/15/2026 11:11 AM, Padhi, Beleswar wrote:
> Hi Udit,
>
> On 1/15/2026 10:06 AM, Kumar, Udit wrote:
>> Hi Beleswar,
>>
>> On 1/14/2026 11:05 PM, Beleswar Padhi wrote:
>>> The TI K3 AM62P and J722S SoCs have a HSM (High Security Module) M4F
>>> core in the MAIN Voltage Domain which could be used to run secure
>>> services like Authentication. Add Device Tree Node definitions for the
>>> HSM core in the respective SoC common main dtsi file.
>>>
>>> The HSM node is reserved to be loaded and booted by the early-stage
>>> bootloader. The firmware-name property is defined at the SoC level
>>> since the HSM is not a general-purpose remote core and boards are
>>> unlikely to use separate firmware. If needed in exceptional cases,
>>> board-specific device trees can override this property.
>>>
>>> The corresponding reg ranges of HSM node has also been added to its
>>> parent node's (cbass_main bus) ranges property.
>>>
>>> Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
>>> ---
>>> v3: Changelog:
>>> [Nishanth]:
>>>   1. Use generic node name 'remoteproc'
>>>   2. Use label 'hsm' instead of 'hsm_m4fss'
>>>   3. Add a comment for separate SRAMs
>>>   4. Update firmware-name property to match existing naming conventions
>>>   5. Change status to 'reserved' and add a commment
>>>   6. Re-order bootph-pre-ram property before vendor properties
>>>   7. Update commit msg adding rationale for firmware-name in SoC.dtsi
>>>
>>> Link to v2:
>>> https://lore.kernel.org/all/20260106104755.948086-4-b-padhi@ti.com/
>>>
>>> v2: Changelog:
>>> 1. None
>>>
>>> Link to v1:
>>> https://lore.kernel.org/all/20251231165102.950644-4-b-padhi@ti.com/
>>>
>>>   .../boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 17 
>>> +++++++++++++++++
>>>   arch/arm64/boot/dts/ti/k3-am62p.dtsi            |  1 +
>>>   arch/arm64/boot/dts/ti/k3-j722s-main.dtsi       |  5 +++++
>>>   arch/arm64/boot/dts/ti/k3-j722s.dtsi            |  1 +
>>>   4 files changed, 24 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi 
>>> b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>> index 3cf7c2b3ce2dd..0e1af2a69ca2e 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
>>> @@ -1117,4 +1117,21 @@ vpu: video-codec@30210000 {
>>>           clocks = <&k3_clks 204 2>;
>>>           power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
>>>       };
>>> +
>>> +    hsm: remoteproc@43c00000 {
>>> +        compatible = "ti,hsm-m4fss";
>>> +        /* contiguous regions but instantiated separately in HW */
>>> +        reg = <0x00 0x43c00000 0x00 0x20000>,
>>> +              <0x00 0x43c20000 0x00 0x10000>,
>>> +              <0x00 0x43c30000 0x00 0x10000>;
>>> +        reg-names = "sram0_0", "sram0_1", "sram1";
>>> +        resets = <&k3_reset 225 1>;
>>> +        firmware-name = "am62p-hsm-m4f-fw";
>>
>> you don't need clock and power-domain for this ?
>
>
> That info is abstracted out via ti-sci calls. ti_sci_cmd_get_device()
> takes care of setting clocks and power domains for us.
>
> Same for other rprocs:
> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi#L178 
>


Is this specific handling for m4 core ? , I see other rproc got power at 
cluster level

https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi#L1518 



>
> Thanks,
> Beleswar
>
>>
>>
>>> +        bootph-pre-ram;
>>> +        ti,sci = <&dmsc>;
>>> +        ti,sci-dev-id = <225>;
>>> +        ti,sci-proc-ids = <0x80 0xff>;
>>> +        /* reserved for early-stage bootloader */
>>> +        status = "reserved";
>>> +    };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi 
>>> b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>> index e2c01328eb298..9d6266d6ddb82 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>> +++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
>>> @@ -96,6 +96,7 @@ cbass_main: bus@f0000 {
>>>                <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, /* 
>>> USB1 DWC3 Core window */
>>>                <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, /* 
>>> SA3UL */
>>> [..]

