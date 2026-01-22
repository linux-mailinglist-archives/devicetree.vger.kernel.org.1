Return-Path: <devicetree+bounces-258527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qI0aMgxRcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:32:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7486A00E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C03330004CF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8083DE829;
	Thu, 22 Jan 2026 16:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Dd98Cgmy"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010009.outbound.protection.outlook.com [52.101.61.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74493DF5A7;
	Thu, 22 Jan 2026 16:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769098496; cv=fail; b=tV3iIAnkJ2k5XrVGp0PrhKKYKJH3EYbcsaI2wHuD5cM1oSscvhIADWT0t1hn4DEHlEIYqPu32DRT7JsLYxGBDmbwFc3WGBkkDqlpucWyRO6j0IbopGlRVfp1fuJ1nK2VuE8E96yzc5luKIdnkCsplvKY9RRNxYhpcrpb9I2J40A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769098496; c=relaxed/simple;
	bh=719d799wjvTDw6UZdMgBrH3Dmm616Myv3badmdvQ6K0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=KK6kPEbFjP2f0CVFptT4ym72dfK6BH5QITQ4oZl+2pj9XMo1y6HpWBusxn8hUQD7UbfUgr42ECaXDF0XpPYG/TWNzsJ44e2J8Qydu3oiVx5d71p/xGVmsJia5PNu7qZh0JAZzGuQ2oY+4HYjqSm/YsV6G7LvBYbHdX05JJEdrr0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Dd98Cgmy; arc=fail smtp.client-ip=52.101.61.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XAjFF8LjCiNxrdYlBWTpa+mogI74lYKTzIH/rAxC/4Kmn/68a3dfhusnQtwrk2qa8wpCCP8jSMfinUGgAkJ2KhbJd7KqMuesNoM+nC2FAwFILEyb4Vsf/glPxCNwBh+9oJVDyTuzj2iVKUGOfASnBsLTDmtmNfY80LgKSQc3/FAxeFjrGEEb/7U/WOaMM81xodmTkhlqsYXb3qun+N3S4PjTEwoVqGUhS5ZB+dbbYv4NGq8pUP2aoSxu+TKeR4zZHPZS33i8ZhgvAa0q3Hvj0iAhduH0AGHC1pheIFxdivYTe40lVCPZ6s4gnkRM9HL8q5wwQR2dh5ho2vGvp8cwHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRB+elTxMhUwZofvuOHySILcnYl1zyDPHryTdLP+HEc=;
 b=cgpvBWJSR1wjxRXiqS4ZzQ1fsbJd357QVoTqdqeNlgB5cBw/aEIsmErMsjIumWAe9oqW5J56vePZvcX87ljbeZapVsj477XweOM6Pxo3VTV7/uicy7LL4KMfnkV1dsznfGOlQxL5yAEhYGgksI985DQgkejx/V54aeUUKKlu0iAZr/LQZUsLLsfD8tVoXoCP9YZQRs5kezNrHeiOHr/uV+7luwbggXZn7fLNF9sOc4jg21ew1GPfP0g8dt+rZIQ3ZSyx8dNdVqsj+jeHuV9nxtmLzwLVy82+dLFskfkSl9MQAzbHFK2cQlq+8AvCEvcMASiY4PCp6Ppge3zu2BOI4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=linaro.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XRB+elTxMhUwZofvuOHySILcnYl1zyDPHryTdLP+HEc=;
 b=Dd98CgmyDejspJO+P9jB2i0Ga0o+RY3lECbayBaTtCnB2jCUjjys6g4KhDTSryW1c/BmGhXbsKe5xdnhS/mks9Do5drb22ggfI5rdOSGqyUmNUYigcO92fp7HlC7VCLlH+NM9STW1R4zwIwSqfJGtLOex+D2iS3tpnOvJMKMFOA=
Received: from DS7PR03CA0357.namprd03.prod.outlook.com (2603:10b6:8:55::10) by
 CO6PR10MB5538.namprd10.prod.outlook.com (2603:10b6:303:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 16:14:36 +0000
Received: from DS3PEPF000099DF.namprd04.prod.outlook.com
 (2603:10b6:8:55:cafe::a3) by DS7PR03CA0357.outlook.office365.com
 (2603:10b6:8:55::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.11 via Frontend Transport; Thu,
 22 Jan 2026 16:14:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 DS3PEPF000099DF.mail.protection.outlook.com (10.167.17.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 16:14:34 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 10:14:31 -0600
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 10:14:31 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 10:14:31 -0600
Received: from [128.247.81.19] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MGEVNb827155;
	Thu, 22 Jan 2026 10:14:31 -0600
Message-ID: <77b3b869-558f-4854-95b0-57980be28032@ti.com>
Date: Thu, 22 Jan 2026 10:14:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
To: Dhruva Gole <d-gole@ti.com>, Nishanth Menon <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>, Viresh Kumar
	<viresh.kumar@linaro.org>
References: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
Content-Language: en-US
From: Kendall Willis <k-willis@ti.com>
In-Reply-To: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF000099DF:EE_|CO6PR10MB5538:EE_
X-MS-Office365-Filtering-Correlation-Id: b8c11caf-e78c-48b0-b189-08de59d15511
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cUJHNUFTNnlGUnNBUW5rR3psNEZlTGpXZnFZUkhxNXRuNUlmbnp3TFJCZHE4?=
 =?utf-8?B?ZmVVMjJRZzZhUjhhOHkzaFJaWVRkZHdXT3kwVld4aVhTUW9VZnYwbEZtZlBY?=
 =?utf-8?B?WmxueGY3ZlBjWjhrK3RjQUtyRjlmd3YxUXpEa2NSYmtnei9MYVRXU3B5R2xy?=
 =?utf-8?B?Zkx2WmVzQllMc1liR09wYkVwNm9vcFU1bFVGQThrYld3KzU5UTZ0VVJKT0Ew?=
 =?utf-8?B?SityeG9ZK3pkQjdrRnI2dm9xVDhrSFAxWHNwcE5WTzFzUHpyQjlzQVRpblh6?=
 =?utf-8?B?T29weXN0UTlsZ1NGdklMcktjUlIrUCtUREJqbzVtQjgwMzEyNXBHOUVpaW0v?=
 =?utf-8?B?dTRTQVlWNUFWZUpSTHJ0akd3ZFVaTHhxQmo3aEFDVkNLU1VvZGxYODV2MkMy?=
 =?utf-8?B?Sm5pT2txeUZDNHhuSFFNNWhFU1FidTJtbzlQR3J4ZHVNT1ZuSHFDbWUvL3Zx?=
 =?utf-8?B?bGtFYjlrN09ZMEdDcnBYVVh3NkxzYlRpalcyY0lCSExjY2Ewc1ZoTFJjaGR3?=
 =?utf-8?B?a2tqb0p1Rk9WME1KNVlIRDQybUF6b1hUUDRRbmVXSTV5K3RMVUV5YzZnL0RV?=
 =?utf-8?B?YXdpNGRDNFRUNy9ibm1JZ1ZtREoxVlNWeVVCU2hJUmNnS3FnMlAxUm5LZ3pH?=
 =?utf-8?B?eGdSZ1RYOTF5UW1WWDVVRW5uem5ZOXdlVVp2d2pZVVlZWWVUcXhZREwyc09H?=
 =?utf-8?B?Y09QOWQ5VXcrdEdhelhkWFY5RlhramVUQUwxQkN6ZEh5RlBaOVU5ZGVYOVJE?=
 =?utf-8?B?WG9GWjdUcGJabUt6bmwyZDFJU0dqQlJpeTcwVTA4WWF4cXRFQTBDYXc0Wmcr?=
 =?utf-8?B?VlRvTE1LZWlSVGM0TjNTR1dKY242U3ZPR1IzRy9oUm9BN1Aram5FbFhEQTYw?=
 =?utf-8?B?Tyt4SkU2bDNJR201S3hoTk5Ba2tVT2h6ZWp4eWtwM3B5VHZhQnJQMHdCaTh6?=
 =?utf-8?B?RHhPdm9kb1dFZGRJV0l6SERSckMxdWRLT1dJUXNCNnJsRHV1M3M1VjVvMmla?=
 =?utf-8?B?c2twZ3M1aTRaQXZIQXM0TDJQKy9raVNtb0o2SEhqM1BqSnlReUFxVHBCbFlz?=
 =?utf-8?B?aFRMZ0NsTHl0MzhhOURLU2ZLaXVZa1NHd3RwSWlZb0JmUXA2Y2wwR2VnVTJ0?=
 =?utf-8?B?bERqMEY2am5BSkdYbVR5OXJhSUJ6V0lqSGg3eG14NzhQT0p4eXA4RG9Tekw5?=
 =?utf-8?B?TVNzNlNGQVV4R2QrRldyL0pKTjdpWU9aWXR6akJJTkRMNkFCS1UxeWFaZEFp?=
 =?utf-8?B?aG85RWx1UC9ZN3MxOTFKcWRtZ0pVamkvT09sMU9PeW85K0hjNkJBRnVGS1hV?=
 =?utf-8?B?QUk0Nm8vd0lZc1VuWGUzd1o5UFlDamRpQ0laOHpCREFoNmorN2J3NkZJMllw?=
 =?utf-8?B?VUdaMU5oUndhcTlNdWZwZGVDT0VEZjhvOW8vSzd2UU5hSnFjazUyc3IvNXNL?=
 =?utf-8?B?RUozYXh1QkFnMlNDcVdFUXR1dFlrK1Z1NE55TVRCVE1XSVBwVjBCN014S1hp?=
 =?utf-8?B?clhHakR2cjNNWE1kaTdZZ1QrSkdNeTh1d1hDVGhIVUZvL2JOc0NoVXR0R2lW?=
 =?utf-8?B?djI5ZS81STdPL2sxVlZHUyswWG1vdHpnL3pONnRPemhzdGhVL3I3cUh0bDN4?=
 =?utf-8?B?bkF5NW9XUk1WN1A2NEl4ekhrVDAyd0VpZGc4bHI3SXFkTzZ1QzlQZUJmeVVz?=
 =?utf-8?B?OXBVR0tzdklpM0plWVE4NEk0RGI2Q2NmRFUycmJHamVGY2FpUlIxNlFqbzF2?=
 =?utf-8?B?L3d1VmsxZHhGOEsxVXJrKzZ0Nmg3VUJEeTZBZ0gzQmpvUUt3dTFtSmpRUGhk?=
 =?utf-8?B?WlRkSEg1M2MxR2tpUysxTzBmT1cxUFFib09Oc0ZUT20rOVNsNWF6N29kdVBW?=
 =?utf-8?B?Sk91R255ekRuSUt4U1I4MWJab2xpZ2ltZDh5czJSTStIMExvSXlnRm9mbGI1?=
 =?utf-8?B?R0IyS3B3Q1A4OWhoeXRCaFhxZEZzT1BFRjZCOHROcktGKzRyTytlVEFMVlZX?=
 =?utf-8?B?MXVuRHdaeERES2p0MXRITFV5OUJvQWJuNXl2TEpXUkQxQW9DUU1GNDQ1M01R?=
 =?utf-8?B?Z1RKd0gvb1Z0S1RlQ3piM2lxcllWSUhKZGtaNlN5YmoxMnUyZ25wSFl2bHp3?=
 =?utf-8?B?d2NPN2VCd3ROY0pmVWhGUE1jWVc0T3B2RUZmWkl5cm5HMVpyNVNzOHlwTjll?=
 =?utf-8?B?d0NGeE5la0k2QWRsL2F1TjdkbXExRFpuNUpMb0tEajdZRjJNeU9NNEdFUll5?=
 =?utf-8?B?U0RwSXppT21KOFBBdEJRcTlkdU9BPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 16:14:34.2401
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c11caf-e78c-48b0-b189-08de59d15511
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS3PEPF000099DF.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5538
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258527-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5E7486A00E
X-Rspamd-Action: no action

On 1/22/26 04:49, Dhruva Gole wrote:
> Enable CPUFreq support for AM62L SoC by adding the relevant OPP efuse table
> syscon to k3-am62l-wakeup.dtsi for speed grade detection.
> 
> Add the operating-points-v2 table with CPU frequency steps from 200MHz to
> 1.25GHz to k3-am62l3.dtsi
> 
> Configure CPU clocks to reference the SCMI clock controller for frequency
> scaling
> 
> This enables proper CPU frequency scaling capabilities for the AM62L SoC
> using the ARM SCMI protocol to interact with the power management firmware.
> 
> Signed-off-by: Dhruva Gole <d-gole@ti.com>

Reviewed-by: Kendall Willis <k-willis@ti.com>

Best,
Kendall Willis <k-willis@ti.com>

