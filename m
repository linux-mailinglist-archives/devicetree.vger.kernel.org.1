Return-Path: <devicetree+bounces-249390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EB7CDB82A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6443C301D0D5
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE50A2EF673;
	Wed, 24 Dec 2025 06:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sFtYi+YL"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013019.outbound.protection.outlook.com [40.93.201.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643962D7D42;
	Wed, 24 Dec 2025 06:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557772; cv=fail; b=ToQl5K1OnmggVpRi42k4jTnZNRSSCuIt/ugxcLx5dFmq6KPZcSfsl0dkLNhbMXR8yWzPf5mPVBC73QGCI0ef8out9ZErW0dH6ylNzTO3m0uqSE4RypzlCCnO3j91frsm/VrzD/kSVpq/O2/qz/ZeUiUL2KDWGiKgfo0aTFEZfYc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557772; c=relaxed/simple;
	bh=z6uNkZztR9QeOtylO0rbCVb2gs4/PdMy15G9l6c9v7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=pRHGo3ur5fLiY4hIXZno4KalQvOOHt5sxR4G4nfBOlVeF8cJevLMHb/jN1nw+2KtOc+SfQ85toUq0vbOdor55bsc55FyjsFobOHS2uXiOk+h5YFY23uF08FPBb48/w1xuTyVScMv9nlrYPqQEhc8zWmoZc/bWhA2YsuToM6FvDE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=sFtYi+YL; arc=fail smtp.client-ip=40.93.201.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9owjwusuGi4RKf19M586St+tsaK1gNd2jVnNfyEXbk2uHm1Xa2IiWbqRiyP8ouXOYn8KaE0yvdxH9mwNck5ht0B8gQa8W4yDYa3I0JKX4oed8+BHqCjfZ55lh7SbO6nr+XszIN+9xHh+HoK/WYOagPYiaJYD9aaAl9nnqNHmc7WAbERo52zvHO4y01OPXDnr45ffH8NBUZRSpglHsfIiyDUxZvDh6XqsR00JNURUTXmgadSEiMJIGiy1LhoE01r876An79rX+bVWY+/BDM6Ab5J0BEvkm1+VJ7Wo0ebU1iFFASr4W3eNGXL63Gi5+uGsedbCrVVu13SijOVEFT5QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qh0wRTLQ965lygz9pGdkILsXHLFDCvmsOUxbC0AJ5S4=;
 b=uUPdplt/F7lMkgsm5kxncKQ1xAd36fp9aE7NftFriTLweeqncIAIPgLtW1Gw+KD3i630o6yzSMHTLQ0dZGTyvZ/Vf86+jpPV5wMjtpwvzmuQ2NlgdrNp+y0tcXilT9ZEFbqm6rg46Y1kZOLrcnJEHe6+IVKiL2lld00B3rjX4PlcWhZfXULaquJcPj46ZMbd2PP/ZRQyoRZVKOeupubpqSXXcqkn4a/Mylyawnmndr/cJ6OQg/Weip4poODlzB+iL5v2o3Pn8sVK3Tt5BndeUrbuxCVQUkuZOrn9s+0VBe6AQ+WaAPeWb+/1PJD3UisT72/9fbDWGMIMTlxgDWAmPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qh0wRTLQ965lygz9pGdkILsXHLFDCvmsOUxbC0AJ5S4=;
 b=sFtYi+YLSZXTsWQEIjvZ3M7JqGRWHHrn30QQabe9Xiu/ShiAA5AIoLScqRw5zR5SCsDkP4Fu0JjidF5YTYtFTO7EDONCxyAvZFNSzGgVYK2vtOdiGtjC0LBoegEKyWpcvFfWDoIGgEw6uLWZdpgyIgOO9h8mn1MltL51E9a19qY=
Received: from BL1PR13CA0186.namprd13.prod.outlook.com (2603:10b6:208:2be::11)
 by SJ2PR10MB6989.namprd10.prod.outlook.com (2603:10b6:a03:4cf::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Wed, 24 Dec
 2025 06:29:28 +0000
Received: from BL6PEPF0001AB75.namprd02.prod.outlook.com
 (2603:10b6:208:2be:cafe::f6) by BL1PR13CA0186.outlook.office365.com
 (2603:10b6:208:2be::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.11 via Frontend Transport; Wed,
 24 Dec 2025 06:29:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL6PEPF0001AB75.mail.protection.outlook.com (10.167.242.168) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9456.9 via Frontend Transport; Wed, 24 Dec 2025 06:29:26 +0000
Received: from DLEE213.ent.ti.com (157.170.170.116) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 24 Dec
 2025 00:29:05 -0600
Received: from DLEE212.ent.ti.com (157.170.170.114) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 24 Dec
 2025 00:29:05 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 24 Dec 2025 00:29:05 -0600
Received: from [172.24.31.151] (lt5cd2489kgj.dhcp.ti.com [172.24.31.151])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BO6T1xS128254;
	Wed, 24 Dec 2025 00:29:01 -0600
Message-ID: <f9322bd0-8285-4e2b-bb23-fd0373d11ae9@ti.com>
Date: Wed, 24 Dec 2025 11:59:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: Remove 4 watchdogs from common file and
 move them to J784S4
To: Abhash Kumar Jha <a-kumar2@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<krzk+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <p-mantena@ti.com>, <m-chawdhry@ti.com>,
	<u-kumar1@ti.com>
References: <20251224055410.208516-1-a-kumar2@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20251224055410.208516-1-a-kumar2@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB75:EE_|SJ2PR10MB6989:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a6673da-2f30-4c67-e64a-08de42b5c958
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V1JSQ0pPc2YxUDZXdEh0ZTlwb2FPUVlKMGZrY0hNOEdZTmZLdlg0UjA5Kzgr?=
 =?utf-8?B?a0p4VDUxMjBYekFKcmYwRnVjanNITGZJTWdJSVNmWnY1SmtGaTNxd0VzeXBy?=
 =?utf-8?B?WGszM1k2Sm9vVnhmUjErNGdHOGNKSW5maUZDMDdGSk1YRHROY0ZoZkhmZTVC?=
 =?utf-8?B?SDRrOTA2eTd2ODRsUnBIRE05K1BxeERmYUlkS2JFVTMxMUJJZVJRb2RJbzVi?=
 =?utf-8?B?WDZTcGhHN2ZuYlhBeFYwTDdYMEoxV3JRMHpOMjZTUnFWYzY1OGVON2FiRkR6?=
 =?utf-8?B?TXJzZ1NoYnpLSEVJODYyTXNPU2NTQzlNM1k5NFFyWk9GK0xVRWRITStjcURl?=
 =?utf-8?B?aGRpSlVxblVsV1B5ODkySEJaYjdielhyYmFKTm84TUYvUFp2NTZIRFo4MXZx?=
 =?utf-8?B?Y2FaYU1GQU9vVHl5aDR6VGFVOGJkd1VHQ2lob0dhTmQ1YXlZUjZBOXVvemNn?=
 =?utf-8?B?aE5hNlMxSFdDTDBsQm1qTlJ5WEt5cjVqS2RMWk10YUhLdnNSMExGMGx0UXVp?=
 =?utf-8?B?bEp0M2N6NXpXdkN3UCsvNG5BaGpBWkRnblFzYmpzcjVENTdWR0E2U0JwcXgr?=
 =?utf-8?B?Y0MrNHlja1FwSTRZNWtGTUQwY0NPOTBiTWxrdFJCR3Vndnc3UCtQUi9DaHdu?=
 =?utf-8?B?ekxjbDM2eWhhbFZpUVN1YVdMbWs5UGo5aDlLeC9yb3owc3FZeUFzMkdJS1BF?=
 =?utf-8?B?MUhKdXc2WGJpTFNoVGdYaVp2YU9SSS9GT3ZKTDZ6eWtaU05KbERhYW54LzFh?=
 =?utf-8?B?RXdlZ3RMZGtTK1N1WDhrOTd6dDFqbGhuYXV2VVpZVXBPK0laN2VTb09NTjNp?=
 =?utf-8?B?K041MFRRcThlQS9nejl3WjBDdGVSRlQxNzJhaGt6eUNiMkVacHhWM1pEWDJG?=
 =?utf-8?B?aWtMUmJMQ0ZBTEUvZTJuQmFMRTBUVUUzcStURG5kSUhUQnBxK0k5M1EyeXpN?=
 =?utf-8?B?cnpSQkpKNUwxTFpyNHBGZXhmV1RidDVBS3BNOHZ6U01URTN0QWxXc1ZqcldH?=
 =?utf-8?B?YlluNFN1cE1rNm1pK1djaU9USjFwcWZMK01XR2xuajhiVmo3OE1meWphdGZF?=
 =?utf-8?B?d2tTbm95Z0hyTkIzcVQ3TjRTVi91ME5qNGp3NU5yMUFuakVOMVZQaytJSHdi?=
 =?utf-8?B?WTFadkwzekN6ZG9JK2dhdVJEY1FMYTVHQzdMN3lGV0lkYkltV3dxSWFXL2Q3?=
 =?utf-8?B?YVc3UnZPZ244WE5Rb2NMcnRrWjBibDNJTncvb3hzNFJpZXVTYm5lYkpYbHZk?=
 =?utf-8?B?b3pTbDJ3UlFBSGFOVVRtOHBMalhsZENUTDN4Zzc0TEpPM2EycC9oMDhNdWlw?=
 =?utf-8?B?ZzExV0JRZWYrQ2lBNy95cW15R0g1UHpsQ2g2S05IK210UmtwNEZabjBHMWlr?=
 =?utf-8?B?NHZsZnNsMlk0dnBmYkN5emRWNm80bkQ4b29QSlVzTmd6UzNRYk82ZGlUL0dE?=
 =?utf-8?B?blZMbHRBc0lZWCt6dWJXTlY2bVFFVC92NzlnNkpqamgxZ1hhZW45clFCVnV2?=
 =?utf-8?B?M2ZwOG1HWUQwY252dVZiMm9wVllmOUpTa0RQajVrZENJTEFJbWdJVElOMWZ1?=
 =?utf-8?B?ZjVVTWlIV21tVjFMck1SYS9IbTdHNTNZQnYvQk5wV004OXV6blRKNTlCNmIv?=
 =?utf-8?B?bzVHbVFpc083eThQSStxV282Q3l2Tkgrd0xXaDAzM2xERWgrckNNTjNjdU9i?=
 =?utf-8?B?d2pISy9xc2tvSjUrb3lJd3lPRTJhN1YrRTN4ZGNNb1B5UEdRcWhqdzgwOGJj?=
 =?utf-8?B?OEtDbW5tR3FZMGtUMG9wUG1QS0JhWkJKWmljUFJQZGEvQWFMVkxMSFFDUkxW?=
 =?utf-8?B?SWsxWUcvMy9RdVYyZUF5RVl5YytLR1U5eVlMTk1FOWwwWjNBNmFoY0x0d3I5?=
 =?utf-8?B?OUpQL3hGSW53aGoycUtGbllRT01rNnRHUFo3MkhlMWpuYkVTMTZTbm81eEpU?=
 =?utf-8?B?S2dOeFpqSzB6TGt4RmVubFNMVlg5a3pmUnMydHZndGI2VEIwQlFOaDJVTERQ?=
 =?utf-8?B?QVhRU3pWZGJ5Nm5XQkROVjJvekhjVnErUnBvZ3V4VE13czdkVEpEMW9pQVEz?=
 =?utf-8?B?WVJjWUZaS2JOTlA0L2tsbk93YytDdDVhcEtFdHdyMEJhbUdtTDkvV2NRYTA1?=
 =?utf-8?Q?C12Q=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2025 06:29:26.6572
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6673da-2f30-4c67-e64a-08de42b5c958
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB75.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB6989


On 12/24/2025 11:24 AM, Abhash Kumar Jha wrote:
> As the J742S2 SOC has only 4 cores, remove the extra watchdogs and add
> them only for J784S4 SOC.

Thanks for catching this.

Fixes tag please


> Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
> ---
>   .../dts/ti/k3-j784s4-j742s2-main-common.dtsi  | 36 -------------------
>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi    | 36 +++++++++++++++++++
>   2 files changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 9cc0901d58fb..c2636e624f18 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -2378,42 +2378,6 @@ watchdog3: watchdog@2230000 {
>   		assigned-clock-parents = <&k3_clks 351 4>;
>   	};
>   
> [..]

