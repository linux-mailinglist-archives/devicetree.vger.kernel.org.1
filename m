Return-Path: <devicetree+bounces-241117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C7C7A02C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7E8754F043F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEF534EEFC;
	Fri, 21 Nov 2025 13:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PsfSjX8B"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011053.outbound.protection.outlook.com [52.101.52.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E702E349AF7;
	Fri, 21 Nov 2025 13:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733431; cv=fail; b=FQrLdRuj4YnNZujmTb/MloD9S+tABGKFt+vUKBWkeB9Vs/GNuIQb3EHXiB8XgvxiS0Ht8Tp1j+bcEo7cUr9VVyqI+CfBPKdcf014D+zhY/cYwY6w3pGY6XN2gZlbOlvtWhN9qOrypxOgu5yv+b5a0lWWLpHE7cWzAvIqaoPvRoY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733431; c=relaxed/simple;
	bh=RhIEBF3xHp36Qdfz4J8sLPFuPuP63t1Y5eci+Koo/Yk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OsmsvuRPnvSYB3QDjZvgnqwhFCK0a4yDgo+kU6lscj4IHgRR6PNZpmtwj48/hbD+x3sxInkVaZaOeJmd0AP24xlOM2B9bLc9//955caI7QcYd3lJuEJtonxt9am7fswIbvu3OM67kdq0MYFcm80jjikI0bX/1igRGoY5Cs7oIog=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PsfSjX8B; arc=fail smtp.client-ip=52.101.52.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVTubdl2bHhz14l25bEUgscFn/NnC7QqDP1Mg4pXQ1COOrsCyLA1+PTpc60XwmCiRFoIZCZE9o+YOlbiFrkbCFmT8kgU991PeZw7RLHjo9Exqs+aotSs6pSu1ylmYjg4DtkzgsXA14Fgj9/c9kiogIR94OIAKqFJ7PlQQRLHiFY+Xp9vt2MlJ91YY7fAfyOzY5WZMEva4OFl5TMXmlvHpRNOhrdUnTNYA/JxLFGLE+VzrmiwNN27qcIpRUEKZhGYr/yEe9/An2pAY6xYwGuPzw52yxoyWzOOH835oWR9V0XXR+3hRwBA+Nb2rJp3oK+QQzbXGXtUl+P/IzjmJFGYPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPRjWKgQK4GbWHhYLu5IMziL3gmxX8Lp65S1Ri/lXtw=;
 b=Jz4eYHRJmoLfYmac1Tlp/S7hPlcYrbzKQQkMYHMLDK0Ngfs6iznxhQY/0FpI2Bj5exZxdJUsRl8MsaNA7Rr2IUCV2t5OQXNXKvUjIhyibOw0m0KJyuJ+fVqhRQJJQpzonNzuwzbhh/AamE+pLJCLa4tFTyFKGqlxHj/WTyCP3ga6T67c3QfELLmA9TzlGyEWsy+j+4jRnt81d3YSgu2dOVXuItyKbbrwC1z7BzLVKj6TzV135sM58Q5cWeLVYvFnURHJGBxC71ShQkF7Z+TliD/ZUme6xlz1ZEZILw459nt3OtuKYmS89QRF7Su9QXd7HrzxDdNfsIaycaZ1TXCp5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lPRjWKgQK4GbWHhYLu5IMziL3gmxX8Lp65S1Ri/lXtw=;
 b=PsfSjX8BlZ8I/+bHYgPzFp/ucZzAkjBbb2iDtJBcv0uYPB3EsSMlwplgauMCVZ91CNL/FsJOrWRj81Mzc2vKAynxkSHtoQDmlE0TbSJrbFagyTBkHxMzw7shu7wc8Wds9B06uK+ZfqIaWV7qdmbPlIMLKturnDXbOBGm74Et9UA=
Received: from BL1P221CA0019.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::20)
 by SJ0PR10MB4415.namprd10.prod.outlook.com (2603:10b6:a03:2dc::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.12; Fri, 21 Nov
 2025 13:57:02 +0000
Received: from MN1PEPF0000ECD7.namprd02.prod.outlook.com
 (2603:10b6:208:2c5:cafe::37) by BL1P221CA0019.outlook.office365.com
 (2603:10b6:208:2c5::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.14 via Frontend Transport; Fri,
 21 Nov 2025 13:57:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 MN1PEPF0000ECD7.mail.protection.outlook.com (10.167.242.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Fri, 21 Nov 2025 13:57:01 +0000
Received: from DLEE201.ent.ti.com (157.170.170.76) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:56:57 -0600
Received: from DLEE201.ent.ti.com (157.170.170.76) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:56:56 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 21 Nov 2025 07:56:56 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5ALDurVV1323598;
	Fri, 21 Nov 2025 07:56:54 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>, Tero Kristo
	<kristo@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Michael Walle <mwalle@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: sa67: add build time dtb for overlays
Date: Fri, 21 Nov 2025 19:26:51 +0530
Message-ID: <176373265676.739386.15498422901678738455.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251120080138.2397851-1-mwalle@kernel.org>
References: <20251120080138.2397851-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN1PEPF0000ECD7:EE_|SJ0PR10MB4415:EE_
X-MS-Office365-Filtering-Correlation-Id: a37e8bd5-4507-48ba-d341-08de2905d88e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZUFJV0JRNEtWTExNaHRFMHpnN3A4Y3pEa0xlMVNxZFlGc3B3cmNZMU1LTHIw?=
 =?utf-8?B?NW83UEhHZk5LNy9oRDBoVVkzaStvMjROUlNidkdyR3hkWThKZmRHSzlWQnZO?=
 =?utf-8?B?TFd3Y0N4QVQ2ZlhPTjlVc01wbWwyWURkM1IyOVNOM3ViRzRuakhoc2wreVlZ?=
 =?utf-8?B?ZTBlWVQ3cjZsb1dVVkh0aGZFSXN1K1N3V1IydW55QUE3aFZmd1IwMXZKcXg4?=
 =?utf-8?B?YUhYNnB1bldqa1NBR3p2K3dFeFFyUS8zWGhmNW1uVTZTdnpyMTdCcmJ6Qk9F?=
 =?utf-8?B?UlZLMmF1RXZDZThRUHpmMEVOKzRPWEtUVlFSV0Y5bnROTU9iVitBOGx1eHM1?=
 =?utf-8?B?Q2ZNU1dUaVlNK0tmZzdJT0RzMmRMbmJHVU9LcTE2YmI4aU1MZGRFenZtUDVT?=
 =?utf-8?B?TDExKzlYcy9xNGpIdlVPZ2tuL3YySWkrbmk5Wk9odmdIMXZOYWpSMnFUTGFK?=
 =?utf-8?B?dFAwNjRxbGliZlVWNEVML1NrTkVuMTdmZXRyckg0bUF4MHQrK3VkcjBjWE5p?=
 =?utf-8?B?a0lmSDVRaVNIR0xMU0VTOS9lVHRqOXpzZUxnK05qYVZLQVRPNXRFWkFXV3Ny?=
 =?utf-8?B?bTJsdldFRSszRXNPMVY0L0ZxREpudjF5aDlxKzNYbEpDUU5vOUd5Ulg3Z29x?=
 =?utf-8?B?bEJLZDNYRlJDdktVN2p5MVFFbnA3c0EvaXVXWlNHVVpvNnZUUmN5bW5TbFhS?=
 =?utf-8?B?RUNMVWxrWUdTSEJBY1BJcXRSaUJETFBpMTZ5djhMSnl6dnM0cFZKeXpXVis2?=
 =?utf-8?B?RWhMSXhyNEU1dnBuZU5HcXN1UHA3THcrcmkrd0JnOEQ2MzRMYXpGdVNVWjg0?=
 =?utf-8?B?bUxobjdjbHcvbUJtemRRNHpIM1RKWUNxcVVCRlpMQ29TZUVDOEdYUURwNS93?=
 =?utf-8?B?Z3Q1akRsNnRLYTZZK0kwbnJGUWFvN2VTb3JHR3lxazg2TTZDMUNGaGlUVnJ4?=
 =?utf-8?B?ZXVmTFIxbEF1OGhyK1N0ZWpmSDdpdG9ZZTdJK2ZsenlJa0xQcVZjSStBbmhS?=
 =?utf-8?B?S2ZJb2FxQVJBUE03aEh3MzBlU3RibHlKdTA1eWtPN2hQUlZvbFJDT09zZjhP?=
 =?utf-8?B?VDdqSzFxQnp1dUdLRXkrMlhpdXVYajdSaGh4QS9MZkdFbEdQem0xZXAyTGJH?=
 =?utf-8?B?TmJLbzd5MGMyWXhiK2VybTJOdHB0Mk1oR2s2UHl4andJWjdTM3YxK01FY3hR?=
 =?utf-8?B?cndUYmNER2pBV0pFa2xFUERjTldzd3JudDFIYWpQMWl0OS9sMFNIb2lSZWtL?=
 =?utf-8?B?ZTZNVCtldmFCOUFKdFp1WStneExNaUlacHEyTWNOTkZYNitHeFVNbTdZeGJk?=
 =?utf-8?B?SVVwTnlOM1NnbVVnNk1QOVlWMlJCN0o5WkhJY2J0TTQ0Sy9RS00vTEovYk50?=
 =?utf-8?B?b2xacEhKWCswQUt1NjkrZWpGdlczcnRIYVRXYkh5eGVIUDlDdW1DMUdaRVBs?=
 =?utf-8?B?aGNVeEFxVUFvZS9HRTdrNy9DRW1qRlJWZlBpK0VNY0xlaFRSSGxBOFVwS29N?=
 =?utf-8?B?RkZ2TVBzUXNNTW1aMWVRWngzam1VRFJuT0t5OURhSWZzcVU1V05UOER3RHo0?=
 =?utf-8?B?SVdyZGtxbHQ4ZVZ1Uk1SYUI0Sm9mVEVEMWQ4VlYrR3QrNi9USUlXYVB4MW5z?=
 =?utf-8?B?MXRLb0F5UGx6bnF6ZVlRc1pLSXQ5dlJJd25ON1hBMVp6N3BKSEh1ZWxjWmJW?=
 =?utf-8?B?MjJqYjBiMGRMUmZ3UzFDTUpvU3FWWkVtdnhnWE52K1I0NERmODI3MlFBZWpQ?=
 =?utf-8?B?VjNKMGRSbVFmN3FzUHdwSzlBM3hOVXJKRkJGb082R3VvV2JScEFabDJydU01?=
 =?utf-8?B?cUZwb1E5bkl2b2Q4VVBCZUh5aXlXKzQwS21mbnNLd3hjTTdzdXVBQm1jVHFC?=
 =?utf-8?B?NUpUQWszK2E1RXN5cS9xUUJ3Q0hpQ3lFRnRMdFNvRzM2M3dGOW9sVXA2Sldq?=
 =?utf-8?B?UFBaU3I3RXVvTVU3RTNtOGh3OXVFZEszbzh1cmYzODBoWmp1VnpFc25ZNGVv?=
 =?utf-8?B?Q20wL0lMenRjNHA3N2oyUjhEb09IbmZUK3FUMXZVckgwR25aNG83R0RaMFdR?=
 =?utf-8?B?RmN6dUhpaE11aVF6RTNzZjJyL3UrSVpaOHFVQ1VyVEFEYW42Q0JLYUw2Q2dN?=
 =?utf-8?Q?22MA=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 13:57:01.6833
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a37e8bd5-4507-48ba-d341-08de2905d88e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MN1PEPF0000ECD7.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4415

Hi Michael Walle,

On Thu, 20 Nov 2025 09:01:22 +0100, Michael Walle wrote:
> Since commit d8c8a575f5aa ("kbuild: Ensure .dtbo targets are applied to
> a base .dtb") kbuild will throw a warning for any stray overlays. Add a
> new .dtb which will only be build if CONFIG_OF_ALL_DTBS is enabled.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: sa67: add build time dtb for overlays
      commit: 4ba96cd38f22b24d72eb3f7c76a0e1cd0af1039d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh


