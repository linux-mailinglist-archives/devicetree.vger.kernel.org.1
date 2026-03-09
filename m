Return-Path: <devicetree+bounces-273018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JnNLWztrmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:55:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3247523C313
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 755163063ACE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805953D9048;
	Mon,  9 Mar 2026 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mmreoXmg"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010042.outbound.protection.outlook.com [52.101.201.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5FE3D6693;
	Mon,  9 Mar 2026 15:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773070943; cv=fail; b=LniuYoeIx2wl2HE7jeBpa07vq+uofpawoFRVmL6qtpnA1DBi6UQJsIb9Fni+kF9eI8UmVd9VcTCkfZS2dxuXBXWQ0DGsZ+sN8/WS7t6VjMXjAMCFwja47a3qCVI+FfLNqwgvOVWIrZ2UmEKR57ePqYL7pHYVC6Xh652dIJ1q1zQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773070943; c=relaxed/simple;
	bh=CgVtaNkeJ2s1z0+DZJRLGXbnnk9yACmvpyhCQDykWxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=rE+MbZY+6+KZHCV3InAcPrizKrk+VZ3fMV57sJ8/zGASEp10x4g/UYgfAwk3D4F6TdBNwlmozJewzDvn92QmXUlO195qNXJuO+ceo+L/4KAfS33opYhokP0V6P2cseGzZGzZujdCrSxQrtPGO0aRFHv4COyyklwE1Wb0QTve0iU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mmreoXmg; arc=fail smtp.client-ip=52.101.201.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T4QQTae24ya55RFwfsbl/XyZ1IvefqVucJm6F4WwfnIPxDJ250+eUuO2WChlJq8gRCZzwlDZMPxHj448q2U3rXh7ofZmqzwERg0dOX7+sPcU42WgoamUYWH8gJkfXwxc55yr/ZCaSe2ZuoAQQEMMljT1KIwCZ5dQwpeDKc+McBAkGnfKNEpw9b+YlZneiecWMirtcA8fcZpduYvqbad362wrJBlBqbObd07Cd8xRjlSN/ddjKWgmIkuCJ0Y7QtwgDAAcEH+LLOHG+rBQqxyttrpNXKv21jancgtZQI7AAB4ggje6d2z09+i+V3q/PSuCKgLJOR8k6FXV+IhQkcg0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VnEGf/sLIBXUAtn+f95VeJPPC7kDQPm1KTdc6gtRpSg=;
 b=x2F6NWfQuKyVqZvF6CDQTydTNL7WWb0qE809mCaphhJqEul7suQMLquEf+9sB2sYCWYu5WQ/Y+XFuzeINobrO2F+M/QooPi0wpXbhQcQqpme0l8qN+2fCSceO43pwILesG1F3b1hfZViBgOXNuHJW978ONd3Do+8bLSNnmTcQqETeYjydhXb/XruVxMmYliBs3XW9ZFOcsez1awyxlA9aPEn7cKHbkiu62k+ZzfUYfvv3qfaAZuPJ5MIDX/wfMNOxxap2rrEtWOUWn95TMq+QynYq+/K3lWt1qem+qP9Z2o7SovpaD0lGa3HEi3swRP6bvLkIBps2rAKMEPvWkadAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VnEGf/sLIBXUAtn+f95VeJPPC7kDQPm1KTdc6gtRpSg=;
 b=mmreoXmgh++RCCnocGzWegFOnadWAjTP88zw7bttcCSnXTKxmaHNv6xJnu5kNABUzwjZa+QR70413pW4fsmnGsRGvMXEsX+8dE8AEdH3pilcWY5Ny/icNukD7h8wZ5AaFkrwp+roE+KW9D2HdqW0O4DCrCmzuB+9rRc/0cp9RIQ=
Received: from CH2PR08CA0010.namprd08.prod.outlook.com (2603:10b6:610:5a::20)
 by IA1PR10MB6028.namprd10.prod.outlook.com (2603:10b6:208:388::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Mon, 9 Mar
 2026 15:42:16 +0000
Received: from CH1PEPF0000A347.namprd04.prod.outlook.com
 (2603:10b6:610:5a:cafe::3) by CH2PR08CA0010.outlook.office365.com
 (2603:10b6:610:5a::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.22 via Frontend Transport; Mon,
 9 Mar 2026 15:42:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CH1PEPF0000A347.mail.protection.outlook.com (10.167.244.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 15:42:15 +0000
Received: from DLEE215.ent.ti.com (157.170.170.118) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Mar
 2026 10:42:13 -0500
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Mar
 2026 10:42:13 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Mar 2026 10:42:13 -0500
Received: from [128.247.81.69] (b-brnich.dhcp.ti.com [128.247.81.69])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 629FgDPK1370223;
	Mon, 9 Mar 2026 10:42:13 -0500
Message-ID: <a87cbeb2-528a-4c92-877b-fbb9c0f09534@ti.com>
Date: Mon, 9 Mar 2026 10:42:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-j721s2-main: Add mmio-sram node to
 main_navss
To: Vignesh Raghavendra <vigneshr@ti.com>, <nm@ti.com>, <kristo@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20260302181800.445653-1-b-brnich@ti.com>
 <89c40ed3-50a4-419e-872b-5cde8b26b8a3@ti.com>
Content-Language: en-US
From: Brandon Brnich <b-brnich@ti.com>
In-Reply-To: <89c40ed3-50a4-419e-872b-5cde8b26b8a3@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A347:EE_|IA1PR10MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: e5eabdeb-5f0a-4ff0-eec5-08de7df270a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	yghwJarOY0VDxq9RQch8Rn3VwX2Nd3d4DLEAKPxuU1WGbVhyXmvHtlk1n68mNeIp4+iruyaTULj/EXpRKh49VykDE4rh2Cgj1UCe8+sbbrnV43GUMmUvPKNVGbWOEitQ3VD3HwbtaQhtVXfyTDSM+H1MzJifdK++LGg8Z1y/D+CWBPJVAHdhpVZMkA7uYQbcID5SHSX5bZKf943kpFaRUufIcjqBFTZZoewix44OVTVB1VH6ktsdYkuD9gru6Jv1OvQk4uxPkYL66JaOZ4EB3gz/VaiVWEnbz1q/Dlyx97QYushhNgfEhu7NducyrcbGn3vkhpjckNmfB57tFdBXLErM/lJ7wTwn/sa95B2Un/8seeu4w1uk0lxM73CI6h21k6+mRGSH9TleiRMeRAPF4tIk9kJIF/+G5+106Ljj7x2B1COSJmYnaBvZwhH24Fpyigp6JGQvQPYRQahABZeDktslk2iHpWW7ehs7AZqCEJX6u0XY7QN2pI0AYHlYFvEnaN13VfGdU2p5DSyEHsqUjkyJDVEX2w+N08tv2NfTbMncfjulwKIkhebGSHOCi9ajvXqzp8YHSzbYJtzw/EUX5RZFQVjMAWKhOaNR0byIMFHollWKj0v5L5tDW4oB8vBjUV2hbHjaPXHAu8NOZ4xSQkdtNc/UkNl3y/9pMnl+alb0esK2gs5VTCcGg+CstcaNMguCxt7OFTHmILGgD2Z7TcHuCRjjlcX2Y6aB6Fxdyws0jP68v7L4VCSVoJ0nwqR6fNZcKq2pUhnUg+zXDok0tw==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	vDFzTZKUTilt0Ol6G4d8auDmMqSydPX5l67X7YLfdcf1JHTzPtvBZuawkNarH33AQSDYri1nER41lRhzcI7zWppsJRR5Sr29D8hIgSZn2Css7nw9Lhkce3YCGQ3Mhj1zoCQUhAroDwzlJzDpO6m/FJrxhQosmeWB7GN4R/irUY8lgXMRoDtwRYiTw2X3K1yxNXBuDh+wZcXcCZa/KmYGzkzblSNKBX/lUo59lA0c5Mv9Yvba+2BA1yqBEB6BMgq7SDN6JgrLCmwtda4jOdTe4Qiu3TzM9WOz15jB0M0rFLMMODdeg5Y2LysL6J7xncKOOg1y9OQyBV5cfwFyWbG2sMMh8EhcvFnSAHAMi5hUydyy+SfL/ycX5AWgGEOWi5XC6OxGxPZ9exjNct6IMUbe6p4CLuVYrb+RbEtHD62tFCFWmKErN0zg/K4i7z+fQ2dj
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 15:42:15.8000
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e5eabdeb-5f0a-4ff0-eec5-08de7df270a9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000A347.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6028
X-Rspamd-Queue-Id: 3247523C313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273018-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[310e0000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ti.com:dkim,ti.com:email,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[b-brnich@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[1.201.195.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Hi Vignesh,

On 3/9/26 02:27, Vignesh Raghavendra wrote:
> 
> 
> On 02/03/26 23:47, Brandon Brnich wrote:
>> The NavigatorSS (NAVSS) address space contains a 64 KiB on-chip SRAM
>> region at its base address. Add an mmio-sram node to expose this region
>> to consumers via the generic SRAM allocator API.
>>
>> Signed-off-by: Brandon Brnich <b-brnich@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> index 80c51b11ac9f..7b1ba34ab719 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> @@ -785,6 +785,14 @@ main_navss: bus@30000000 {
>>   		dma-coherent;
>>   		dma-ranges;
>>   
>> +		main_navss_sram: navss-sram@30000000 {
> 
> This fails make dtbs_check

I ran kpv but must be having configuration issues because all of these 
cases passed. I will fixup the node and send a v2 shortly.

Best,
Brandon

> 
>> +			compatible = "mmio-sram";
>> +			reg = <0x00 0x30000000 0x00 0x10000>;
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			ranges = <0x0 0x00 0x30000000 0x10000>;
>> +		};
>> +
>>   		main_navss_intr: interrupt-controller@310e0000 {
>>   			compatible = "ti,sci-intr";
>>   			reg = <0x00 0x310e0000 0x00 0x4000>;
> 


