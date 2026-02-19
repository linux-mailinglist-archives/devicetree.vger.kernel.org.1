Return-Path: <devicetree+bounces-266708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLJ+FuJnl2nfxwIAu9opvQ
	(envelope-from <devicetree+bounces-266708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:43:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 940EA1621D1
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89E1F3013896
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2853093C3;
	Thu, 19 Feb 2026 19:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hrIwOwXG"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010011.outbound.protection.outlook.com [52.101.61.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA202D0600;
	Thu, 19 Feb 2026 19:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771530206; cv=fail; b=gLSb/BhYQxbm35+MmQ8UtkusOHhD/f2QvgYwmwnv7nIkG+DeNzvZ4h7JUrASNg1hL1rSiXQqkIQ2N2exu2rOtIm+sI6qEwWlQH1W107qSKu6XWoCw991mQjHhGbYhSdapvD4MO/lpmKZPC45jmR/mzTb+4Ls6Ykz+zGEe6nCihY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771530206; c=relaxed/simple;
	bh=ddD/Vip3aX/5XRJ5a0Ff3x90f9flsJijVzvQzw+8eNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=cIR8SLISvEodgbRp3XpJOWl+4AeQvTn7RAjOkeMySlmZylhwBQwK00I1O8NbWkGbSkeFxboEaVpXMe5vlLYxo9tTqsZtrHcTyZYvsrUXhMceq2gkip6MQ5Ri5BqqKo3mbtyGk9itfUXmO+fjw6Dq1le/+H76cwIvwD63ZwbJuPM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hrIwOwXG; arc=fail smtp.client-ip=52.101.61.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j0eW9L4Oj6xBbm1O+Ey0GBXuZCdXpkfBq3wvusLjLrh4HFEbCzbH+bPhvN3nhv2AitGNEqDRoHU3ayXEiVv0ltY1aFoORcdM71N8NhG9NEYKkdOaE98VJEvTA+vWPrXnmboKuoKG/nyWyTdYsCdbYS0ZFsTpqaJQ/4NndAnXkx99+blRrrQsKiT9TFqASCGAaRvKuq6sYnLBeOgQ4NU72Q+6hrW46b/Zl4YHXVSmOL5RMmImQnjo0xjsHdvuhKgqJTDynCnFgJuqJoZWkTkJ0snTxL8dcN2/hAhLf0KcxArOXbeF+OzSo0HYd6A13WKRw6zPkCgyNhumhMQtSETrdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNHNSHjWNotABSIFE25FtBM+k+lWJvu4zhWOp8QW2co=;
 b=uYnhgltED2ndtmsxACms10my9i9qORvnsXO84FlXXt3HR5xFL7kUIqxUg3FlS8TJNyhZVwc05GVUj5SsQh/HcF4o0UIlkbokwNWpwV/pe9Y7HEY0x97NalNsxz2s9/eThgw6OENoeRKmhSGclJA1JFUrVJrn9qI2dchUvo4keJ6Sp1T60TX4oyIBC8VGno9eIuvVvz3+M05xBJpWPUOTqGFTRzkUHfA0G8PiQXtdtM9ViZVW6HRRe21eRUxv4KrcbJYSvi+xWWKpx1tmZ7ZJOgrlTi/kIowCtLxqarA3ztwMx8g1XrG2hcrCYXRVx0fABlVCQP9XYDwld3e7Y6DQxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VNHNSHjWNotABSIFE25FtBM+k+lWJvu4zhWOp8QW2co=;
 b=hrIwOwXGeNayHeOh+WuBAMTpR+uptEff7alLUrtrsY6HrSBAjujLM4fNkehp4guILU4dcTMbT4Rk1vZFsBs0Fia1aW+dtVOPdXfybXWckgDuLzTTJgR8J9MGowgC3rQiEQx2I4BhPRBpZrGmx6JxVRAJc6HZTUg7CmMTlq8YhBo=
Received: from SJ0PR03CA0146.namprd03.prod.outlook.com (2603:10b6:a03:33c::31)
 by CO1PR10MB4417.namprd10.prod.outlook.com (2603:10b6:303:93::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 19:43:22 +0000
Received: from SJ1PEPF000023D3.namprd21.prod.outlook.com
 (2603:10b6:a03:33c:cafe::5f) by SJ0PR03CA0146.outlook.office365.com
 (2603:10b6:a03:33c::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.15 via Frontend Transport; Thu,
 19 Feb 2026 19:43:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF000023D3.mail.protection.outlook.com (10.167.244.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.0 via Frontend Transport; Thu, 19 Feb 2026 19:43:22 +0000
Received: from DLEE206.ent.ti.com (157.170.170.90) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from DLEE212.ent.ti.com (157.170.170.114) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 19 Feb 2026 13:43:21 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61JJhLBb2638942;
	Thu, 19 Feb 2026 13:43:21 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 19 Feb 2026 13:43:18 -0600
Subject: [PATCH v4 3/4] arm64: boot: dts: ti: k3-am62l3-evm: define
 wkup_uart0 pins
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260219-v6-19-wkup-uart-wakeup-v4-3-eda09dce5623@ti.com>
References: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
In-Reply-To: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771530201; l=1063;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=ddD/Vip3aX/5XRJ5a0Ff3x90f9flsJijVzvQzw+8eNI=;
 b=FVS5wcmlqwZTcL21VYLhRdN/aakYj8x8CJ52PAZvFh7xKuQSpeNgyhWC5mRLOnZ+jQH2cImQf
 FLxIcYW46YUAcZ2BvyRc+6YP9xhfV/Zty7Fqkqug4EfRM0EoSgVz0JZ
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000023D3:EE_|CO1PR10MB4417:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ac86082-d9a4-4e2a-965a-08de6fef240c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UlRCS3V2Y05GZm1pQkJpWmRqT1JxN0d2VW1mcjBvSlBmak5ialh2WTNSLy8w?=
 =?utf-8?B?UE9GRXhMN0xUZVN2eUROUVVqRlBLMlRHcnFaUFZIQlFaV0N6SVZralZHUmFV?=
 =?utf-8?B?cElrZXZGTTI5VTlCcG1mWk54anU2L21sSUxxeUxVQ0YvT3BraERvK0k0L2lr?=
 =?utf-8?B?NDVXeGxSbnBNMVdUc1d3b3RqUjJHemhsQW5NV0JSaVR1cHpUT3VBemkrRWFX?=
 =?utf-8?B?T2gzMWpMTjdSMjBDUE1VeHhDVk5nNUhSN3czSjhjRDIyZmxhYWY3OUFKQWlz?=
 =?utf-8?B?aVJLcThuYkZSYjQvSU9NRVpXWm8yNTZPT2dqMmxmVndvR0JWa2txK3daUWZz?=
 =?utf-8?B?V1JERVdDdklHQmRNaWZQQ2FTd25EdDZnc2crVTJENGhqeDRBRkpiVVNTR09u?=
 =?utf-8?B?MENQUThndEhsYmYxaUxNQ3NQempHSWthbnRId3llcjd5SEZyZk9aSVA5dkFt?=
 =?utf-8?B?RzFiQVROQnNzajBiTDh6YmxPSVUrQ0JRbklaYkdlMGpZeXovOGtNa09oUnVy?=
 =?utf-8?B?ejRtNjFuSmJXOTBiclhIazlsYkZtNlc3VWR2bXBVcXQrUUd3Mzd5OFZiNWNG?=
 =?utf-8?B?ZTlYdjREZFg1M1ZydTdJRFE2SXA0VTlrTGxZUlMwaGRpTVRLMGxsSGlhVE5p?=
 =?utf-8?B?bzZpSVZpc0kyRndFeGFIbzZobjZwNHVYQ3JtalVVV0VweEZMMFRsODVaa0xm?=
 =?utf-8?B?WENVcmpkV2lHMzFrRStWRlR0MjlJQVAwVmR3U0VKMVplZ0ErM0s4Vmg3K2VU?=
 =?utf-8?B?enNUWlMrcWhLNTVnVU9rZmIvUW5DemVPc1V6VHJLOG5wVHljYXVNWnV6MW82?=
 =?utf-8?B?UXQ1VVZnN2lyVjdhaWhwTytSU0FBYWxkUVNXMDhIQmpOV3Rra1hDV25kR0dI?=
 =?utf-8?B?VWxKT2dnTzNRa3piM1VFVDczYkxLd2s1TU1HTmJJNU05elFqQ1RpT0FSUnZK?=
 =?utf-8?B?SlBSYVlJcXRwMlpsVTkyK29YVTNuT0NXTS83V2tEcndHUXY2RWR1TytJMmc5?=
 =?utf-8?B?U1Btc2F2TThSSTNNLzJlWDl6SlA1aDgwMVdIbEp6YmRaSkhuZ2ZJL0FtbHUz?=
 =?utf-8?B?alcwVmFXR1BqOC96SDA0VFpLSGthQmQ4V2ZQdXBDSVRPR1ZZdE5hSHY3cWgr?=
 =?utf-8?B?czJydWJZZjZLWFdCcDFML3dVQ05WTGl1S1BKM1FROW13eU5qckJUTEw2d0lX?=
 =?utf-8?B?UUtkN2VhT0tBSmlacjl0dlBNUFl0YXhsdnlpaFQvQVJrcGt2RngvNmNlREln?=
 =?utf-8?B?YVdEQ0FGMVhOM1V3Zks5N2c1S1NuSzJ6MlJIT1p6VmdwNEV2Y2JDM2pYZWRE?=
 =?utf-8?B?Z2RhK0F1eFNZbjlrMHpsZVMzTW45WVZ0UEJuWXk1ZHg1cjNiTFcyd2pMVWtI?=
 =?utf-8?B?ZHJjVWM1VUNuU0dYVEQ0QWNaanR6Uk9wSU5tbC9wYS9PSHd4VDNNekNoK05G?=
 =?utf-8?B?MWlqWXNUenFJTGJrSUZoc3g3cmZaTnBTYnBUd2drbEI5aTRmbVo0eVljamVa?=
 =?utf-8?B?bmJEUFRwdlNYR1pMakNTVURJcjNqRXBtZlV3YitYSG9nUW01WlhJUm1XRGw4?=
 =?utf-8?B?UHpINFBJeEhzZEQyM3YwaTY5Nk5OTWdrWUM4VzUzdVJUbm11aE1QUmN4V2Yy?=
 =?utf-8?B?MzZlOGtzVTRCUXF3b1BmNFNWWFI0TTIwY3FERE9uV1RoN1Q3SERpWElUQUhI?=
 =?utf-8?B?VGNFKzNaMjNEQWpBYlF5Q0NNTC92TXk3VldOVlJ5S0ZvQXFNNzFYUG8wMW1v?=
 =?utf-8?B?ZCtEeHN4NFV4RThVZTk5d203aFB5UmRPOEVuRkdsZm1mOEFIRXpac1JZb2R2?=
 =?utf-8?B?YWNrenc4UFdJWENReUU2M1JGdTczVmg2WWg3dWc5SVZCNWE1V2J2eUk5dWhO?=
 =?utf-8?B?T1c4dmIxNTRkOGdJME12Q1dndjFhVjR5Z25reXkyc2JpSHBBUlBOVjBBS3ZR?=
 =?utf-8?B?Vml3cmZhSXdTcU04VGVtdkJsVkwxRHFOUkVFaGEvZFp5VHlDVWlhWXFNR0Y1?=
 =?utf-8?B?THZyUWZXMUZkazlWUXp5SEY5Z3RGaXYwQzhuWlhRQkltcWtYejFtbFBMdmtp?=
 =?utf-8?B?cCttTXFTU0F3eVJRT1RKYitYejRGMUYxSjFVUkhjY2dnaGFYRDc0bWtKeE16?=
 =?utf-8?B?YkpDbzl2SVdHcDZkeHcydFBlbkZ0MnFJb1FpcWlkYUxTQUtkRVZRNDhwMytN?=
 =?utf-8?B?OXBwcFdkRis2bHNwYmROYXNTcjhZd0lOQnhFNHJHS1orZFlYMUh4ZjBlMmRq?=
 =?utf-8?B?TzhMb1V3UzE4bTJ3RTBGSFliU2d3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	7dTQLmDN9L5iMFa1KGVLyQiRBlDny4I+fhUZovjKd8eEh8yum2r29nb6scTm7teF1bX/DdAO9uBlrNTrgFblDCiaeMyqopW+kSRoj37UXjhymgFR39V+XtFv4d6yqmRepmw2GOTgHKE+cyGvsGcOgYPusep7XO/eJ+K8VqOzcZb3Evtq1oqDO6Oruc5dWs+GY/QyqOK5dIFjzxZR1zeVB72RhG/jnPTY5XwsWLaInlyOxsm8AjGHZ68VVghD4TLHk5OKPxrxcJI78VfKP+/ZvDtShLLwRe0WSsSTkE+MbMuQf1H0MDxQXVAV4YYT8oZhQMrLdGliY/m/U2vApjvefuPUx4YgKG2YNGY61nAbNSksH1F8HyCBEwUFeg4E8Ke6+IMiE4giAv15fd9Qf4FVbOWNuDu48ClUA7eBTBHnI9QdAngwYdNI4ilxqUs4m5Ha
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 19:43:22.4524
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac86082-d9a4-4e2a-965a-08de6fef240c
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF000023D3.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4417
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266708-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 940EA1621D1
X-Rspamd-Action: no action

Add the pin definition for the wkup_uart0 node.

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
index cae04cce337366b50928d39b0c888550b14e43d3..3ac9a2d0d9cb78d87479c4a8aed5c0b1f1cb3faa 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -306,6 +306,12 @@ AM62LX_IOPAD(0x0238, PIN_OUTPUT, 7) /* (D24) MMC1_SDWP.GPIO0_123 */
 		>;
 	};
 
+	wkup_uart0_pins_default: wkup-uart0-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0000, PIN_INPUT, 0) /* (Y22) WKUP_UART0_RXD */
+			AM62LX_IOPAD(0x0004, PIN_OUTPUT, 0) /* (AA23) WKUP_UART0_TXD */
+		>;
+	};
 };
 
 &sdhci0 {
@@ -359,3 +365,8 @@ &usb1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usb1_default_pins>;
 };
+
+&wkup_uart0 {
+	pinctrl-0 = <&wkup_uart0_pins_default>;
+	pinctrl-names = "default";
+};

-- 
2.34.1


