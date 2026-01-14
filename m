Return-Path: <devicetree+bounces-255234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF718D217CF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 697673020CEF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D97D3AEF5A;
	Wed, 14 Jan 2026 22:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sDseGpzm"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azhn15011002.outbound.protection.outlook.com [52.102.149.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D783AE705;
	Wed, 14 Jan 2026 22:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.102.149.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768428314; cv=fail; b=OypZrdLi2JkugjANCWlWVSJTMIn2yo46ZC/ZofeuwHORTkNrzTM81VRl3bvBVVdvPcqZaKf7+z2SYQ2AT+zdA1e25cFzzrIJbZ1dOk/AptiN2YiPkpEXDlPhRrQqBGLtxWbvgK/KQEUUJqwFECH3bw80WynBwRuJiiG0nuGDrrw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768428314; c=relaxed/simple;
	bh=qkArcQG+b1QxyYiR7oU41HFLl56Y91e39XLZuoeW4es=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=IrajDM+RUhTCHmhsnVBXigutl9J5alBhXGWLL1G5wWHDddNFGXZHhv83poGaAsn3kW3tQQIjBh7xYAjhIJiuENKyzXksdR6V1KST9UatlJWwiU1ps6UAnfIQugMVR6qAlRyzlXCsxzfl5ko7KHH3SiHUivTWcKZmH8FpebEuz5o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=sDseGpzm; arc=fail smtp.client-ip=52.102.149.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nNuzGVsGs+xV9GB2N6cksbOmREVxOjt6TxTSBmDmZs3rMKSq9OqXMJ6JrZEQ2zrRTSR5fbuQ2iLJE0DgeATDEGOl8qjmpqtGKYhLUfFDJxoPmlyhaV2POBS86nnSGwefqNO3Vcx3bePglypbG7WBZj6aQP6MY/qF45pnaXDlJsz7n3DPnIC78k/+bnul/o8lGRFioIiM6Q8PNLhxjurWtDwcjJwAKwmpNqqiSmsp80X26m4OwelPJsKuhlEZuvRpLbBlbF12tv5COB90PptIlUzbf8HKcK6EEGItOj0ONp5moxvH99f8/XU6T5tsNpm5i5w6xZdvXADt9CG3TnRo0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcuviV6iTrj+v93xcw3oDimjjG68EGscqDwSZXpeJG0=;
 b=djCysDg6mdJxmyXfUNzEcNwms0VxVek0RR+d6hGzMN1C/ClO9qQ3/gtJaXgpPbDLrsb4x7M0KRTL/UdMZcXx46u4luciW5Npndm2LB9Q49y+ubonHVXeO12kdommX15LIEdUC8AyQ0rNhahfJCcRWdOLzZ18TIV33XWW0F53sicndS9jJpsQMv8GqtWF4hYH2ZCJYgND8/yxnozipW+qpMstF3jynqkTiX1FH71CS0QoI5M+TnwFvjRTJOU/CQ4aP+S/13XmfMfGAfwmAQhkK1IYoVFySXdc0IAqFTg0f37ZMsjaED3KKm2YHPgU8tOYPV4jFSs06Tkdy+/qmwaQVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YcuviV6iTrj+v93xcw3oDimjjG68EGscqDwSZXpeJG0=;
 b=sDseGpzmnPNJWGpDlK0ULS1Bt3HhiVpC0iMU5HmLGAOT8NregPgBvJpcTQSXXE0qsXvv80JgGwTipfCIjgh/1NLgPrya28DG7IGMl7s98plfv+pVSqdWS0AwqRNX2MwPnS/RnssM7El1HbqLun5p28lid3/Cw2wpbqjx28dImoo=
Received: from SA1P222CA0073.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:2c1::23)
 by SJ0PR10MB5835.namprd10.prod.outlook.com (2603:10b6:a03:3ef::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 22:04:32 +0000
Received: from SA2PEPF00003AE7.namprd02.prod.outlook.com
 (2603:10b6:806:2c1:cafe::f0) by SA1P222CA0073.outlook.office365.com
 (2603:10b6:806:2c1::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.5 via Frontend Transport; Wed,
 14 Jan 2026 22:04:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SA2PEPF00003AE7.mail.protection.outlook.com (10.167.248.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Wed, 14 Jan 2026 22:04:32 +0000
Received: from DLEE204.ent.ti.com (157.170.170.84) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 16:04:30 -0600
Received: from DLEE208.ent.ti.com (157.170.170.97) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 16:04:29 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 16:04:29 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60EM4TYL480239;
	Wed, 14 Jan 2026 16:04:29 -0600
Message-ID: <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
Date: Wed, 14 Jan 2026 16:04:29 -0600
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
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003AE7:EE_|SJ0PR10MB5835:EE_
X-MS-Office365-Filtering-Correlation-Id: f25fbb9e-4b46-419b-9377-08de53b8e5a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|34020700016|7416014|376014|12100799066;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aTdNNFNLQ2NOa2YrZW16YTZROE5nYVp6KzFBRmpnblFUbG5BVnh3STk3dk54?=
 =?utf-8?B?bzNXbDV6bTFqUDd4aUZmL0gvQjdYNU5UbWxRcGJMS2JhUm9jMFpzaGQyazdQ?=
 =?utf-8?B?cndlbnBwbEUzSVAxTjljTG5mUDRGQlVDakd6Z2tyT3hjd0RZKzU3bC9KaFZC?=
 =?utf-8?B?azBOTW5WMHRvVTBuZ2poWlN0MVM0cnZTWE1nRHpYdEtYV1YvTUl4SXFkS3U4?=
 =?utf-8?B?aFFJbFFGRlNGNlNwT1JYQWp2Y1F2eUcySGtiRHFtazdIZ0NkcCt2TXB6bFEx?=
 =?utf-8?B?emxKbS9aanB1MkJOUlI3V0xCK082NU9mREVKOENEVVVQdkUrQlg0VkhzanJm?=
 =?utf-8?B?cjBsVDB1blF2VE4xYXovSHhCU01RVk1jVytGUldPRGMrQ21sVWg3UWkveU0z?=
 =?utf-8?B?bWIvQzQxa2N6MS9wZzcweXE1RkVOT1hkTFdjdTRVRDNtOTExV24xTTFDL1pj?=
 =?utf-8?B?T2ZQUjBDT3U1TzQ3bXVueEtab3RIQjBjNlUwWjVLNXVBaDVOeldyV3R6OEly?=
 =?utf-8?B?Ykd0dXc3RU5VMzExL1hGVkxINVdtM1NoYVZkY25ZY2dScWRZeWpQYWt3MnVq?=
 =?utf-8?B?NHUzWmhWMmtTUlFjVmU5cjhvY09vMklnM0Ezc3BqOFFodUQ2amNBWXdONkRp?=
 =?utf-8?B?YWh1eWZEdXh2YTBHekV4alJtd2EvYnp1YXNhSkJFKzlVZmJsM0RpU1I1VFpK?=
 =?utf-8?B?ZWJGYXhPOHZ3S0haZ1JMc1lrUTlQbDBkaUVvQ1dZSDNZb2MxUVJHUVl2bXFM?=
 =?utf-8?B?L1pVUHNDZmVnaURhQWZpYVB4MVN2U2RTTjRSUzQvUVdESVRxNVNrWjVJeDI2?=
 =?utf-8?B?VWQ1WSs2enRqa09DdEVkbWtKR2NTRmtlL1lFakNKT0ZmQ2YzSVpVY0ZLMUpQ?=
 =?utf-8?B?SmxUZWF0ZGVGUXJpdVNGMXA4M1lXNFZ4dE1LME5wY0hHT1VhZkFwMFByRTRu?=
 =?utf-8?B?TG9LY3BSUVJtRXJpcHJjKysvNElsK1RDWWw0dXhMeUFydmhCeVdEZWdFMVRs?=
 =?utf-8?B?WkZmTWRIaG9tOGtSdWpESDYxUzBUMW9WbUJkVG1vZ1hUaG5WTStZdURJclhn?=
 =?utf-8?B?dXRkUSswUFZvaFNnL0RVNnkyN1Nmd0hvY3JGa2RmYTdpOEhFNGRhcVFOeFBB?=
 =?utf-8?B?MFBmZi9Cb2FMeFJReVlWdHVXVnc4eloxMXRyeTZVNTQrUVpQNEp0WlN3ZU5I?=
 =?utf-8?B?eU1lb21qV2Y3dzhmVUNpdnlkYzB5eWRBbXAzQmw0aENjWGtwd1JqK3JYbW9o?=
 =?utf-8?B?OGFkSEhGVzM3dDVUeGFxa1JlTXBVcHF5T2h5WlJwR0xMU1ViN25XQmlwdGRG?=
 =?utf-8?B?ZHQrRUlQZElFdXQ5eVBsQ01hZE5sd2xLZEhuOFluZWwxMnNnNTZaTkQyOTV0?=
 =?utf-8?B?UzIrd3lDM2RCMnNFbUltcXpIRUFSMVlURUQwZ3BiR25CQ1FSaExuUjJwdG5M?=
 =?utf-8?B?MlhHSUN2YzhGTVRSalRndFpTYTA2MFFPemI0R3hjWmpobDRsWVZ3ZWswZ3dF?=
 =?utf-8?B?UW1tOTRIOUFUTm1SU0RKOVhEZzByQWJkaUJJMm9DSVFmRjR6aXhHdVNzMUQx?=
 =?utf-8?B?UkR0QmVzZ2I0NHQ1b0VIbVZISXNoaitEamdyakpuNjhBOGNEcUZsL1pjeUxJ?=
 =?utf-8?B?ZC9RWmxrSncwODE4RHRZWUNIUFoxaUsxTkVLbEZuYnd5cVpIbzJuWDA0eE9N?=
 =?utf-8?B?NnhwQVF3cmo5SVQ4M3FZT3RvWGZLcFRpejNQd1ZkU21jWXhOSFY1MkpVRXAx?=
 =?utf-8?B?WDhyMGI5OWw4M1BwWkNkN2ZBT1FHamJXaUpicVVHZjJuck9tK3pjdFp1cFRq?=
 =?utf-8?B?ODJGT2Q4dzc3cko4ZEtrQWYrNFBZWEQwQ2k3UXZTZ05uS29QWnBaM0V0dW81?=
 =?utf-8?B?dGp1NStkV3N6b2pIT1laSXlTNkJSUCt2MklSOCtOd3kvNUFRblNrWUtERWx0?=
 =?utf-8?B?N3J2akc4Snk3Y1dVQ3haUEpyUjB5aCtmZnJFaXo3dWxnWEs5SzNjRUxZaWhG?=
 =?utf-8?B?SFhqRzFJWC9HRjRGVTBlMUF6djhmWWdtTjQyWmh1d1dpRGxSY1lQS0ROTFhX?=
 =?utf-8?B?cU11L01wTE0vWWNHRVBkSTNEaVpvWTNHK1ZDVllJVDBsejNpTitBbjdhS0FS?=
 =?utf-8?B?T1U1Kys2Y3pqWVhhQkNoRGY1M0I4ZSsxSTRadjBHNkhRMHFLUnhkRExlQXR5?=
 =?utf-8?B?bUNMOHdUZlRMZjZ4WWFLM2pSY2JSeFI1aGo5UDZBTlhWalZjYkFZOUtWdzJ5?=
 =?utf-8?B?ZG8zdkFFZmFOa3BVTllQR0VLSjN3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(34020700016)(7416014)(376014)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 22:04:32.4100
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f25fbb9e-4b46-419b-9377-08de53b8e5a1
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00003AE7.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5835

Hi Markus,

On 1/14/26 3:16 AM, Markus Schneider-Pargmann wrote:
> Hi Judith,
> 
> On Tue Jan 13, 2026 at 1:29 AM CET, Judith Mendez wrote:
>> On 1/6/26 10:22 AM, Markus Schneider-Pargmann (TI.com) wrote:
>>> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
>>> u-boot SPL is not able to read u-boot from mmc:
>>>
>>>       Trying to boot from MMC2
>>>       Error reading cluster
>>>       spl_load_image_fat: error reading image u-boot.img, err - -22
>>>       Error: -22
>>>       SPL: Unsupported Boot Device!
>>>       SPL: failed to boot from all boot devices
>>>       ### ERROR ### Please RESET the board ###
>>>
>>> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
>>> devicetree merge to be the problem. At a closer look I found the
>>> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
>>> failure to read from mmc.
>>
>> I have tested 4 AM62A SK boards and I cannot replicate the issue
>> you are seeing. I do not see an issue with Schmitt Trigger in U-boot
>> nor Linux /:
> 
> Thanks for testing.
> 
>> Can you please run a quick tap sweep on MMC1 and MMC0 interfaces like
>> so? https://gist.github.com/jmenti/f4a73a8323e44bf717c6d2c528c499ca
>>
>> This will give me an idea if whether we should be talking about
>> revisiting characterization with ST_ENA=1.
> 
> The patch was a bit broken, but I think I managed to apply it to
> v2026.01 as it was supposed to be. (master currently doesn't boot even
> SPL, I don't have time right now to debug that).

as Nishanth, mentioned, master is missing two patches [0][1]

> 
> I attached the boot log. It does boot with your patch. Also can this be
> an issue with different SD cards?

Something does not quite add up,

Can you try the following 2 commands?

# mmc dev 1
# md.w 0xfa0810c


[0] https://gist.github.com/jmenti/92da6526e366e3f5cf41911724886471
[1] https://gist.github.com/jmenti/8cf589d0302248ad26da37128f622e98

~ Judith

