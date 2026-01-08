Return-Path: <devicetree+bounces-252976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E69FD055F8
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40A2B3032561
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 18:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FA62E6CD3;
	Thu,  8 Jan 2026 18:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kD8xIraf"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010065.outbound.protection.outlook.com [52.101.201.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E7A2EA15C;
	Thu,  8 Jan 2026 18:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767895431; cv=fail; b=Egk3l0xZXE+IwYW3yvMwCdNlX9lPd5+tZ6LhFdKYfQWLykXWedLutoyo1L3mqp13NV+z5rgzhWLP21loWz2jErCaa0BICvBX6TltBsT4qJPcn3udNPYii3RtV8zEz0B1hyIRAfP9Apt7OkaouSnBr1QdfajFZ+9ZpIBkKCNfSnE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767895431; c=relaxed/simple;
	bh=Tkv1oc00Mu5wrQiegAkXgeNTMsRVyN2FXvmUOGeykIY=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wp51JPBBXwkBY0rtENvSpHsVSDianej5LT56wDGgTbFnUxP3kueUoGU9sKPJn60D3zJZATMwLaoSYE5Mc5iEmhgRfnDzqTjgi9OV5j4qwDPkukqEVDFg8ZIXbKXvByiCc3Vo3gOCs5fsTtiXiYiJMFIHTRRDQ0KCH4kvdN2QqaM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=kD8xIraf; arc=fail smtp.client-ip=52.101.201.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zErlWlOsMn9dH175yHGU/pCgywm+wZ/iEyK+rJpXhA1p1f52kXaRdRTfr1es7EkuEe9JS71+386/eGrm4oYIONcTMcK4DlLjon2iMBq1ENmFzZhnbIh7qo3u82Iak1HWBgHhfNpqbl5kMtC1Z03KSPAbKvECEiX+1TvjdpwOrv4rUYn3z63Yu8tsorXLovS3RYnMsQvW9sU6uYsYVApKEgYagvLAWGQvkxc1DBy6DAkb0mWQHnqFZ9eTLQMCi2KFjzolB22bHXgA22ulVB3WpZVa8RKvktQP1WsdC2eTRtr/hAL55y6ho5CnfBaGrZa6+eh9ZNSoqhlf3nmnAk8m4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/4beaYzl3Rh77NFdzRlgvkLllj5ILTeDvKtxiqNa68=;
 b=f6dy1ulo63naaQeSSw8zQE/p74EBpRDAO1/yIxE4eqoHUAdjOHnVaHGiBl5afKAckDFmSsk7EK7GOABPMA6NzCsBBpUU+zdBjhS6X/Hd+fLaRoXD6LwFKRAtizLnxABJ5KuFkwWfeL29UGxvBdad+W7fOy3wAQbbs/UfAnJS/cKCCCYqpklo/KJKpQylpw7iBUDydOcno8qNNLR/V2EszGU0tSJmfeStukOnqkFYG9NfGZef6DR5pBxyPyxFSzZpqLFm/UwR9cXGNxIPSceWz4hVbtQtoOo8LIxwsxp/POfGamnJHLYNPYNybvVmhDaAln4GRaivqYxnvTDwAnInag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/4beaYzl3Rh77NFdzRlgvkLllj5ILTeDvKtxiqNa68=;
 b=kD8xIrafyZ/ogsCJd/1vWEpCx56tAh1l9BWMjQ8pLp9kJs9fiOUY+0Jm5yVJcnh8wvvhS29wufDJLin7X/ryiHaxlxhBQIZhSr1L5CWKxj8csQVNtrJ2KnAaFytrf+yJcbf7b6a4hGloBp8Thz9/FRyj+7XpnacG3IDhFrwQbfw=
Received: from BYAPR04CA0005.namprd04.prod.outlook.com (2603:10b6:a03:40::18)
 by DM6PR10MB4124.namprd10.prod.outlook.com (2603:10b6:5:218::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Thu, 8 Jan
 2026 18:03:48 +0000
Received: from CO1PEPF000075F2.namprd03.prod.outlook.com
 (2603:10b6:a03:40:cafe::c6) by BYAPR04CA0005.outlook.office365.com
 (2603:10b6:a03:40::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.3 via Frontend Transport; Thu, 8
 Jan 2026 18:03:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CO1PEPF000075F2.mail.protection.outlook.com (10.167.249.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 8 Jan 2026 18:03:48 +0000
Received: from DLEE207.ent.ti.com (157.170.170.95) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 12:03:42 -0600
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 12:03:41 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 8 Jan 2026 12:03:41 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 608I3fDN2778777;
	Thu, 8 Jan 2026 12:03:41 -0600
Date: Thu, 8 Jan 2026 12:03:41 -0600
From: Nishanth Menon <nm@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Bryan Brattlof <bb@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] arm64: boot: dts: ti: k3-am62l: allow WKUP UART
 wakeup from LPM
Message-ID: <20260108180341.t2q6msdh5plbrjf4@parabola>
References: <20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com>
 <20260107164504.ehvbfizg7ybbvv2e@bryanbrattlof.com>
 <c7dfe4a3-1bf5-4e50-b4b7-8752aa9ef1f5@ti.com>
 <20260108170545.cfez6dvwkft2z3jh@bryanbrattlof.com>
 <afac4fe3-1dbc-4c8a-a0f1-6e25666eabb4@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <afac4fe3-1dbc-4c8a-a0f1-6e25666eabb4@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F2:EE_|DM6PR10MB4124:EE_
X-MS-Office365-Filtering-Correlation-Id: 758d7ca2-db51-4e07-da5e-08de4ee045b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|34020700016|36860700013|1800799024|34070700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Aohk3fK3NsAVl7P+TX954jCsZDGAUnRrk6ap4AYyY+SlxBSA5jT0SFaJmiTZ?=
 =?us-ascii?Q?eTNqc1nLu57L2Y7Nb1WZMUPMyJ48aZXdActMuLeax0TCBaU0lvCxsNZ4VyUY?=
 =?us-ascii?Q?DsYMi2L1M/krfK6ffoY9dWX34NX5BJ+SYIeCZDj2aulyXtxDX0wJSOf5Xm8V?=
 =?us-ascii?Q?bfpfAkA2hvV53XOf1kU11yrKGyIzgFj7wFF3PyfGbuCi++rRUjJ4JV5NJYNP?=
 =?us-ascii?Q?CdhTMDTzfeWmwJCN/aqfAFWYFhNVBVHuJLEyl48VIWkAoOqmKmW8aRaaQ4LA?=
 =?us-ascii?Q?oyv1yM1hmnqF+Q5i/KRUZ5ZAA0NK6tzLqyWB0kf9rBze0D+/91MQDYfouORK?=
 =?us-ascii?Q?B7twwa/wqZ1DeT3hMIU3WNlOgB0N05tF+r8zEqpvssUWIk7d3bHxrkx1RLuY?=
 =?us-ascii?Q?jbKGj9O6TEVqxDfpWoQkm7CnZA/b81XQOMps7xwg/ftIICjAI55COtJT6147?=
 =?us-ascii?Q?Qsk3E/PND+4xQxyZ6she367OTRNyL+etFmyTAt0qQUa2watfINZ009/bo/nv?=
 =?us-ascii?Q?v4cljZ+6MkRNA5na2tEfUx+Ish2kK1/jAb4ldx3bsTtK+BxeANYnZRKi23kO?=
 =?us-ascii?Q?XC3eXDvbVjfJ+G1FUBPDbp/69Slnm/dBJp4cR7KR+S+wXi76cqe4EWe5A1Ql?=
 =?us-ascii?Q?HUV8d9+CvDAt4Q0AZNpggL/F0mRKcTtVoceFJRo0iqJg1AaFqAXcGcS2Gs9Y?=
 =?us-ascii?Q?oveILMVhcTOgaklMBauKkz1y7yXCZaKKtviFQ8U7bObozfhpWgv+FH9OFUpq?=
 =?us-ascii?Q?e1qJFXK7jXHARRjomsFS1caLcnPFHeRcyMYI/yyYdTBar7ZVLL9hhowb7akC?=
 =?us-ascii?Q?E4S9JRKugkBIRWZJhHT+JdEwvKx6cLLtX6ZghJ1KsApBmlqczIuGx4+Col6Z?=
 =?us-ascii?Q?dHMvRiDg0Zzb8iUHiMvNQkzbN2Om58c6V8h1bEPO2BdJo89J88zW4/UK7FoF?=
 =?us-ascii?Q?A8wrbwJVo18PsZF3pwB5VuEJQb4PZmy+BfmnIiBjH8sB34cAUAulbiiTNgbC?=
 =?us-ascii?Q?ZZ6Rtt55ybc4BdTQCUrT7Y3k8dEva0nQvNPh+XhlboMPuC7tU5zueFXRyqdN?=
 =?us-ascii?Q?oambQRGgtRn86iPx156eSg4qODbmVOdjPTAE2KHP+XyxUkFg81riHILheRXX?=
 =?us-ascii?Q?06hEB/HEnxglCkdepb0rZH++1YxAJg2CzTgtP1t+et/hVHD76lzmPymxveYm?=
 =?us-ascii?Q?YNCI/GCqGBoC2LaXWNzs0Ukl3VoolZFtOpKiuTSOmymHOFJrgFpaSGz0zjfO?=
 =?us-ascii?Q?bbfdhF9uW/yMjSJMXvxFYlbl0oJvIc0LJ8pRjzmW0duRQVFh9HApGRcLkG4u?=
 =?us-ascii?Q?7N6zcaRnmE28beI43RQAU6Uvju1tX2fmRZB913OKWFc9vNlIoEvdK+kmPsia?=
 =?us-ascii?Q?VbuyFSCs5jIb9IeBvxd8qvdJgca3t+cSuNF4tkAvZOHK3JPtP4yO46y/TnvI?=
 =?us-ascii?Q?yFoqb6ctUMcEBW6xLCqMpJviihidFr4WAPlr3Wut2VuyLdOESN38hAuwncFw?=
 =?us-ascii?Q?hZCYeHyBxr1phGuZFrkU2qkdzkCBncImTNZgWk06DOUJ8ePk+2ynmFEaRGgf?=
 =?us-ascii?Q?FdCXux6tkzDLH51QfGc=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(34020700016)(36860700013)(1800799024)(34070700014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 18:03:48.1293
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 758d7ca2-db51-4e07-da5e-08de4ee045b4
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000075F2.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4124

On 11:52-20260108, Kendall Willis wrote:
> On 1/8/26 11:05, Bryan Brattlof wrote:
> > On January  7, 2026 thus sayeth Kendall Willis:
> > > On 1/7/26 10:45, Bryan Brattlof wrote:
> > > > On January  6, 2026 thus sayeth Kendall Willis:
> > > > > K3 TI AM62L SoC supports wakeup from WKUP UART when the SoC is in the
> > > > > DeepSleep low power mode. To allow wakeup from WKUP UART the target-module
> > > > > device tree node is enabled. The ti-sysc interconnect target module driver
> > > > > is used to configure the the SYSCONFIG related registers. In this case,
> > > > > the interconnect target module node configures the WKUP UART to be able to
> > > > > wakeup from system suspend. The SYSC register is used to enable wakeup
> > > > > from system suspend for the WKUP UART. Refer to 14.7.2.5 UART in the
> > > > > AM62L Techincal Reference Manual for registers referenced [1].
> > > > > 
> > > > > Previous TI SoCs configure the WKUP UART to wakeup from system suspend
> > > > > using the ti-sysc interconnect target module driver. Refer to commit
> > > > > ce27f7f9e328 ("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
> > > > > wkup_uart0") for an example of this.
> > > > 
> > > > I think I may be confused. What is setting the pinmux for the wkup_uart
> > > > to allow us to trigger the wake event? It looks like they reset to GPIO
> > > > pins if not set. Is firmware doing this?
> > > 
> > > On AM62L, the WKUP UART pinmux is initially set by TFA so that it is set to
> > > the UART pins, not GPIO. The target-module node sets the WKUP UART SYSC
> > > register so that wakeup is enabled.
> > > 
> > 
> > Nice however should we mark the UART in the board file as reserved for
> > TFA or is it free to be used by Linux and only during the low power
> > modes after Linux is asleep will it be used by TFA?
> > 
> > ~Bryan
> 
> Sorry for the confusion, I said earlier that the WKUP UART could be used by
> firmware, but that is not to say it is specifically reserved by the firmware
> in general. TFA sets the WKUP UART pins, but it does not use the WKUP UART
> for anything else. The only exception for TFA using the WKUP UART is if the
> user chooses to use the WKUP UART for TFA debugging [1].
> 
> All of this to say that the WKUP UART *can* be used by Linux, it does not
> need to be reserved for firmware.
> 

If you are going to use it for linux wakeup, then why dont we enable it for
linux? what TFA does or not should not dictate device tree unless it is
a hardware description - provide the full description in dt.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

