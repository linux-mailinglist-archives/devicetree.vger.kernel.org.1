Return-Path: <devicetree+bounces-255697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65198D25C38
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50C863005BA5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3F33BC4E2;
	Thu, 15 Jan 2026 16:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="c6nsPHw/"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011001.outbound.protection.outlook.com [52.101.52.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BECD3AEF27;
	Thu, 15 Jan 2026 16:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768494684; cv=fail; b=YnPx55E1lYkIIQlWWnHkwHztmfEh+Ce9CdN2tOj+eX/A5vsLIN1labumq6bfl28pOQf7YGAI2fnRnkxjdFPhBWYZk23BuhJ82YFchvZ3z/CHX3Y/uKDKswQuYBF25cnb6f8qy/9M1ez0YhOjaALtGtgAO7wPhOyfDKZzmjWW2rY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768494684; c=relaxed/simple;
	bh=NaWeckOJlNsxUeEktDZL3DEg3GzydFWWc54lWCnQ2y4=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kvEUJziSChXcRbLFb3iE46H7BoN7NsfspB0aQaoYWgEqPTGDYK/Z6SAzc30iNRoLVouKBzM4rn0hpMB+ymMAoIGMfEjVAe4sxIU9BYtrl3RjNxMk6AuBnwCq0b0ZuCJvW2D6RgncvkQxFE07noAj80/0ZU88qyXW0Rn6Nulx54o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=c6nsPHw/; arc=fail smtp.client-ip=52.101.52.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fI9bqXjdjoOi09WvFpBUGBqeSLosWPICgNhOOG4Vdn4ayIKED9t0ByRguDV8p7FiJ3v4lBaqKSiDayw8OOrSkanxnVLbboN47FGzDg1lFS18ot/8TMcIa2hB+p1BvvVrAdT0En6BvzUeLtgyIGL0KdjO5p2YtHeWgK9fQ+X6iLcGfcteC3ykFsnVgmgSLOHUtwep0l5uzavPe9blYZxT1oRT8HM/RC+zg6Ko0PCE1n2Bu/GBvg4hFbdV81TIIcjOTPaWMYUsq/WXWVgOFIlZm6P935UBxjHNnG7n+XAB8Zfza9TJ2VuAOY8oF0tQCi54UMMnl0YiZ0lqQ9W46Ksq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ysYOJRXMejAx1wQYClyaZ9aUgjdBzz4ThOnP+fNrweI=;
 b=cQKtyMkwgmXIRP0st0PbtRsw4czI+loEYu/sEvvyY3f37nLoKAGIKB4ENl1LgzUakpn9d9AV6o4DKivXm8UCRxmzbqve5aYXnePejvaXh+zuqG7q9cz496bjL1/6MHPd5vequEhwzh+ix6VdVbXC1VmVDDWFM5WmK8UBx7VxXRoUMhjSo1UtRvGcar0dYambMRkTclb3swzn/qaCGMmVmEgXcwABVar6s+W2ue+VKcXXa7xAyyflU/Pvq546OxLTkqY1FBXYWnXm1YsjA/WCVsh/b/+TOnYSY1pdc7PA1w2VpYNHZw1seBlnHW50br95lv5Rn5Zh+hqiYF508CEdmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysYOJRXMejAx1wQYClyaZ9aUgjdBzz4ThOnP+fNrweI=;
 b=c6nsPHw/TDmjmXbLxpYZ1HQRRjO8Yw99v1sgMDNIl8R6qfbCD/KCv/rBoKr0Lf8NOnBqP23oxRKFvj04E5aPfBxO1iu2eXyAl7UmtS3QreaQHT/CknQudjsxX+due3m8nNqBxscsUxv7ZDWEdcMfvcL55sSIytcMWDlZYJC1UyU=
Received: from PH7P220CA0047.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:32b::6)
 by BN0PR10MB5160.namprd10.prod.outlook.com (2603:10b6:408:115::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Thu, 15 Jan
 2026 16:31:13 +0000
Received: from CY4PEPF0000EE38.namprd03.prod.outlook.com
 (2603:10b6:510:32b:cafe::cd) by PH7P220CA0047.outlook.office365.com
 (2603:10b6:510:32b::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.6 via Frontend Transport; Thu,
 15 Jan 2026 16:31:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CY4PEPF0000EE38.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 15 Jan 2026 16:31:09 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 10:31:08 -0600
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 10:31:08 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 15 Jan 2026 10:31:08 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60FGV80T1845460;
	Thu, 15 Jan 2026 10:31:08 -0600
Date: Thu, 15 Jan 2026 10:31:08 -0600
From: Bryan Brattlof <bb@ti.com>
To: Beleswar Padhi <b-padhi@ti.com>
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <afd@ti.com>, <u-kumar1@ti.com>,
	<hnagalla@ti.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 0/2] Add TI K3 HSM M4F nodes in device-tree
Message-ID: <20260115163108.hhpzibzbb62co2zj@bryanbrattlof.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
References: <20260114173551.2545088-1-b-padhi@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260114173551.2545088-1-b-padhi@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EE38:EE_|BN0PR10MB5160:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c7f4a28-c0c0-4450-953c-08de54537d46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|34020700016|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YmdnZjVkb2NPaGFKclJyUDMvR28rRDBlaHplVlhrYWQvRXY0am5VS3pQcDZF?=
 =?utf-8?B?VUk2cE0zREhqTTRNK1BjbFczdTcweWJIa2piTHlnbHMrOFc0Zy9ycmlYZy9a?=
 =?utf-8?B?SW5EYmhMbzV0dEcxL1RVa1ZEbk5ndnZUeVNrOUdHM2NTYXR4L3dtZ1NsTThl?=
 =?utf-8?B?UGlYOGdzZGNzZFBjQWJXN2F4b1l1a1hQb2lubzFIeVF0Vkx5T1BZRkdaMGk0?=
 =?utf-8?B?V3VncU1kTkJNQVdXTnlZTGhwYUgxRGswN2JWRCtrY1VUdTF4SWdVbUVvbEw3?=
 =?utf-8?B?WmZmT0M4UDRBVksySnNsQ3RtazhCeUlpbEZpWTNHc0xQeC96NVJrS0JINVF2?=
 =?utf-8?B?VzJRRk0rMmJKQ1BNb2VmalVXVUI5MkJqU1Rta3dQVnlyMzlWTzFjUkpDWldl?=
 =?utf-8?B?cUVmV3BycG8zbEZTUm5pS2VQVnViMnZqK1VrWElrQ2xIN0UxYlNTR3M0L2dH?=
 =?utf-8?B?VU1TdjBRcEp4N3VKZ2duaHp6d0hiQUIwdk1LSWNYQVZTdEg1SG8vL1pxaGxX?=
 =?utf-8?B?WFFLQm9ieVBPSkxDTkt2eE1NbGh4NTI4YW9CTzJFTUxaRGxsZXI5OGd2T2Qr?=
 =?utf-8?B?Z3ovR1piYVJNR2Fqcko2dm0rV0EvT0tCZkdkVnBIZ2w2NzV6ZGZmbGIzMDNn?=
 =?utf-8?B?eGUzSFdUNW5CeDNDLzFsdFhWeEY2S0VvVEJpckJIUnV2aDQ1SGZWOXVRbmlX?=
 =?utf-8?B?NzlmVlRpRkRFRytHZVRabCtxVU9ZSVpmbkdzTTlHTm5acUJUWE9TOWlxUjRw?=
 =?utf-8?B?d0xBYnZiQmNwUWU0anRVWlZjZ2k4MnN3QmdBM2tvNVdIMmJma2pvdy9URGpo?=
 =?utf-8?B?ZVJOclJFZHp3WkxTaHJOam5Sa3dQLzUwVmR6VVJSY1F6TjQzVTQ4RzcwcExH?=
 =?utf-8?B?U1hyWWpLWWZRQ3NPOC9nMDhaN3o1VVZQM3JoaE1FZ0JGaU1KczBwNVFkRzdO?=
 =?utf-8?B?UG5iQ0RiUm13R0t3TzhCQVFTV0N0cDUyV3Vob3ZqRU5TSGxhdldEUExVUDRW?=
 =?utf-8?B?ZTVUZHRXWllSV1pyMGE3akpMZkdqSTI4dWRneTRId1dScjNCeHlCNlJQTXlK?=
 =?utf-8?B?Rmk1a0p0ZEltRVUwMW80eDhCZWNRbC9pR05RRWJnaWExTjNxdmJZWHZDb09W?=
 =?utf-8?B?TzF5QkhZdlJUc0ljbHFYMWM2T05odWxYM0FGbW9zTVI2V2srRUVUanZHSkhV?=
 =?utf-8?B?NU1CZHNXREtXbTlMRDFZeHc0RkJpZVBxRXpRMU96Mkh6aGRRcFhRbFR6VEJm?=
 =?utf-8?B?a2tFTkQxdjlreTF4K2NLSUh1UmRGNmROU2FIT2xDTWpIaFFPckpwK1BETkVi?=
 =?utf-8?B?NFpzcFBPd3JyZUlyNHp4NTNjSlFyZS91UHdqeWhXbDY0OU9XcjdPeFRvSHY0?=
 =?utf-8?B?dmk3c0c0UldTNW5FZllTR241dnNySTZydm8xWExKcm8rZlJFbm9XWVovMGNY?=
 =?utf-8?B?NG1uNUp3TWIxc0lpOG50R0g2R1lHdDJxUGgzaExaYm90YnlINU9aeEdnZmtG?=
 =?utf-8?B?ejJXSVRjNFoxR0oyVVl4dFkyN2NiWDF2ZjR6RUk4YVFxVG9Rc2RERHZ3L3A1?=
 =?utf-8?B?SDJIYTBIZU8yM1RkempoM2kyM1IxNXFnRlRDUDBTYmUwZURjY2NjRGZhWXFn?=
 =?utf-8?B?REdqVWI3N1NwcFpzeHlRdmVBYWxQRVBEWURuRWdqR0VhMzNvV2FxL1B5eWlX?=
 =?utf-8?B?ZVBGRS92KzBYMUY3ZEV2eTlzc2hMaUwvOXp0WFVEZ3JVeTZtS0p4WFV6eWEw?=
 =?utf-8?B?eElET0hydWRTNmpWV0VlamYxOXhLazJZaDlJY0F5emxtY2FjckZKVmo5K3Mw?=
 =?utf-8?B?UDN2M3RTbVFBN1hVcVFNS2tRbndkb0NranFSamNzSFN5Z29BMDU2SEMwNm9x?=
 =?utf-8?B?SHB5anJUcmR1SUpUY2V6ajZsR2xJcXg5dlJUWTIrUDA5SHlONm9BVVZEMnN5?=
 =?utf-8?B?U1ZOUjVRa0JoNWdKQ1AybGpteEI0WTVWbnJrditDR2ZGcy8yRmZUWFpKeHAr?=
 =?utf-8?B?RW9qOU5RRjlXeVcyVWJLRjJWZXhoYkJlTi91cVNRK3VITDZlUzVaT3djY1ZI?=
 =?utf-8?B?TjBKQ09qaWVKcVFleS9HMUU2dnJZMktPL0E3VGgzN3dpTmVLKzBuQTkrK2RQ?=
 =?utf-8?B?OXNGTy91K0JZd1lOVVVrQUxTeDErNzJwVzBqNWcycHNuUk5PNHU5eUpNUUEy?=
 =?utf-8?B?TEdFYldSZEM1KzUwMlBSdFZWNi9YWDdVeE8xRWVjNVZmZHpad1F2bXpOQXds?=
 =?utf-8?B?bEM5ZXAyTWJoZnhFbGlmclBkYkhnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(34020700016)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 16:31:09.3091
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c7f4a28-c0c0-4450-953c-08de54537d46
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EE38.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5160

On January 14, 2026 thus sayeth Beleswar Padhi:
> Some of the TI K3 family of SoCs (like J721S2, J784S4, J722S) have a
> HSM (High Security Module) M4F core in the Wakeup Voltage Domain which
> could be used to run secure services like Authentication. Add the device
> device-tree node definitions for this HSM M4F core. The bindings for
> this has already been merged[0].
> 
> The HSM M4 core is typically booted early from the bootloader and the
> driver for the same is posted in U-Boot mailing list[1].
> 

Nice! Amazing job cleaning up the remote core drivers Beleswar! And 
defining them so well in DT for us.  For the series

Reviewed-by: Bryan Brattlof <bb@ti.com>

~Bryan

