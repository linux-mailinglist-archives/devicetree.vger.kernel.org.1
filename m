Return-Path: <devicetree+bounces-271929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PXrBSadqmnPUQEAu9opvQ
	(envelope-from <devicetree+bounces-271929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:23:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A84A021DD71
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 499C43030FE6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C904733ADB8;
	Fri,  6 Mar 2026 09:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="AKLCq2om"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010003.outbound.protection.outlook.com [52.101.69.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0FF30F92D;
	Fri,  6 Mar 2026 09:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.3
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789020; cv=fail; b=LyAyNV0tjE1LduLUs0BwkgADMLqgJW8XWph9ddKjs89OZbEXVjJjDSbbWAiAhu5RQBGZrIWPvKG3Y5yx4u2fYWTSftjVcd9jMBc36lJ18Vf133pbUXQk4cSnXBHZejPfuMUqXkg9UHaTBAMw0H8Ibv5xvtGlPP/r8JL4Zi1PAsU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789020; c=relaxed/simple;
	bh=kgdKQXYem20bhC89noP/0+FnFUXm9+K0tsZX0iiKt5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=bx2pQgNs4bkqtanlK1A7xbOGyd3cENvu4Ki1kNAJYaGBxDu/5SO27X+rAclSdt/q7eOh92I4WBvQKepZ7xkGjYs9dRkp+/zm/XR8QMTk+Thz7xHdFXjJDVXZ9kvDjIoaGoNQ41wY2rQ3RteRkebdh0cVl4DrtP8GY8xW2QjY7mY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=AKLCq2om; arc=fail smtp.client-ip=52.101.69.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oEV3F1lV17ERJDz3Z4kUgqJvOXtpla3aXRuDLYrvYv+G0hX497z7n9jHw0Aj8tc4lpii9AwG+MuuyhZ/Vg1eCRXcCEZIR3o8Sn33AGBd0nu/P8bDq1VMbgxtaJG+dqDInVqGWnJv/xHoVH8rg+dAmOvTj7Y152JGw5zjiryWYuJjfzmVUBfUiiN7ZUYfrdZBCDxx2bamJaJioFIoNX1I7UdHfLMu2/e1AHBX+tiGAuxmuHAY/dhizpo4L0RPry7fw+FdOeXmrL57mfsnO5zkZ2xsgUmGZrcIsNrT/MhnvIDvE1jjXQLjK/mya9E7MtJFxFXCmE4idck3f5c64lE82w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qEkAVkQ/c6YeLmQyOJU4X42ztk2wfqHXPmx8hxBdYs=;
 b=caiXDXchIqWEYxPGqSuf26TuvWzdkrOLnZosTYgi50UOjnf4b8U23GuK9PD8dacbdU9rXhS60IQ8R+oFjKfoen2pIulrODAL3wWDe55h/T798vRRXJOzWOVKQGM4t68dXBb1FBHKE1/6O7JTmlPAA6harTMnCUfYdK2j1EkvKY6KEEeoMMAHMnqQHiMkl+cBiEw63x45yp0eUjcTXFKk7mUCsxDZdYt1B+43uDyWpzI6unpyJHOJGFjsPV+6ggg0zGOrMAqEaDCDxl+4Oe1P2dvgyW83mt3xpG52WlkDUJ7xWcGk9PgdkHyluGaegsGXx+3+bWt/u/tK9FhaLlG8dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=phytec.fr smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qEkAVkQ/c6YeLmQyOJU4X42ztk2wfqHXPmx8hxBdYs=;
 b=AKLCq2omRy4rMtPXlVWS/FBENQIbMaRhi3h3oQRtTeqEWN++d62lZbsooRaYT0n8GpWVID2dXzJ+3fR85174ktBPDIbJ2RNXq5pFd8R01Ge2o2RaUKXTjxzPemdu8e2jPzwJfAcZ8uge5bNhx97cy27FIjTyLEFRrZKkqkfxtNTZGpNALPRxi86Bq+P3ik6rpKhp2t9nod5I7hSx8FFvhRf2XVJCz5TaNJ5CfKMAmc+Mme+JNhqvrV+xb7/jKS3bh9+prPFKFCvGEPWIB+92aop6jrBqmmWkvNOcttifs5RzNqts0Z0e3AGWqVcjPKPM41U58z0k9L73+JAuHKNjpQ==
Received: from AS8PR05CA0029.eurprd05.prod.outlook.com (2603:10a6:20b:311::34)
 by PAXPR10MB5686.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:245::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 09:23:33 +0000
Received: from AMS0EPF000001AC.eurprd05.prod.outlook.com
 (2603:10a6:20b:311:cafe::cd) by AS8PR05CA0029.outlook.office365.com
 (2603:10a6:20b:311::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.23 via Frontend Transport; Fri,
 6 Mar 2026 09:23:32 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AMS0EPF000001AC.mail.protection.outlook.com (10.167.16.152) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 09:23:32 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 10:25:44 +0100
Received: from [10.48.86.79] (10.48.86.79) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 10:23:31 +0100
Message-ID: <e77be906-8f4a-43cb-b63c-f82416cc8356@foss.st.com>
Date: Fri, 6 Mar 2026 10:23:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 00/11] Rework and fix STM32MP15x PHYTEC dts
To: Christophe Parant <c.parant@phytec.fr>, <devicetree@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, <upstream@lists.phytec.de>
References: <20251210101611.27008-1-c.parant@phytec.fr>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20251210101611.27008-1-c.parant@phytec.fr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001AC:EE_|PAXPR10MB5686:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c7af214-089e-434a-8522-08de7b620974
X-LD-Processed: 75e027c9-20d5-47d5-b82f-77d7cd041e8f,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|7416014|36860700016|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
 mieN9yVYhij2tRwYSGZhw/auQuJLDkWoLjys36BDmD3srjJjs8xaHpQ8j8GfrCBp+OquyRX2i3XjQeqoLygXelB4/VodnutafmmpWmaLOa0rniFSVDpNJ3cLo40gXzlcaiUtQ4xP+32CmVTZ5EB6Zmf4Qw0M/BeFl51G8qTcW8k1mzIlpwRVyODRSFU16CWIUogFJYW2exczdvxOUTk0eMfXsp57oJLBbPhKSl/l/D8CBtkJryDlaqVbe0SH1uo3IDE6LJobP/0UinwKMDciUxt14KAm04wMsZLG8RYy+n9dcZs9AHDDQs/sDjnnjf4+90uFEfxnvOojy+RZVH4DAFHXocPskxDDxwVvLaUTPgMedTtEfMqT+rFE6TkwrS41nflOD9velZlJI0hQxVC23V/nyonVNqemucBsIG8ZShJ98yE7CSOzySbWHjb1XMxcnP5ZK59R7DE6b9F+Es6x2xJLcoR4FQ4ft+hkSeFQ1Qb7RzspD409tOlm88VkfGITy3UkTsyMtKn7GGu5KMMLl5NZoS7Fo7yJPMAPRLGWqQw2EE3Oe6zgozp09so3tnvK6fPfT5BNRWCRy5k2qe6ViIdtO2dwDzk6ge8KxsrW/e8CW+xtVRp523f2QFhV6+5uzqEXhB586oBcOL8QmAF+n2qxjC5JGZf3Q9GL1tXt5EpBMIalk6Wjvx/IfCHxJSd52CC0BjElxfFev4y3+Yndjz1VK2FH8Y0QF/VzlD/YBHFAmlavCE+S1qLeJaWXWYjuW3G6GzHg7rMczT6n0n+Mug==
X-Forefront-Antispam-Report:
 CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(36860700016)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 0c4x0cNl1r8FOFFb/0MI9YrRuBsgviadmxZJRuaJiA2dGypQAKTLDKUDlODnsqKMuJFPsdyDyzbzxc7RZhQCy1GcMysdLEzXEnlNaxHFN8yWo63srmLnz2lIHmjYWwQU+MXwixmp0X8pAh2hipYr/znT4bvHr5hhhz+phZO+t0ofT5T6yYTAHpo1yEBEzzACsqxuJgwdZpJ1JJsfQBx0/nA+dKFGsSCf9OxnPxADly+i/qUJmD/CCwRxTs/HqV0infsV0QcIauDOyGZOQ+pF8gdt0Qcsa6QtpsPrPw6LO4EvQIOjRDUtfzAgtju9tQaqRFKgtFYXUNank6K9Ft/UySxIAsi9p6pncZZJ2ZX/aaCNzssmk9fa4BGtcI3fIidxiOpxnwGt498ZRxuQWzZHJX/jrPRWtOkwx3m9ZmiJMw9ec2rh++dVXPl1cSsMJTmE
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 09:23:32.8040
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c7af214-089e-434a-8522-08de7b620974
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF000001AC.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5686
X-Rspamd-Queue-Id: A84A021DD71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.phytec.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[foss.st.com:dkim,foss.st.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271929-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[foss.st.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.torgue@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Hi Christophe

On 12/10/25 11:16, Christophe Parant wrote:
> This patch series rename and reorganize the STM32MP15x PHYTEC
> baseboard (phyBOARD-Sargas) and SoM (phyCORE-STM32MP15x) device tree
> files.
> Indeed, the current device tree naming and organization is not really
> consistent as it does not align with others STM32MP boards (use common
> dtsi file as much as possible, use one dtsi for SoM and one dtsi for
> baseboard).
> 
> The series also fixes some important pinctrl issues and minor one (coding
> style). Additional pinctrl is also added for the optionnal interfaces
> that are not enabled by default (FMC, LTDC, DCMI, PWM).
> 
> Changes in v2:
> - Rebase on v6.16-rc5
> - Rework Patch 3 (stm32.yaml): for board description, keep "compatible"
> string identifiers as before to not break ABI. But use "enum" type
> instead of "const" for the SoM and phyBOARD indentifiers.
> 
> Christophe Parant (11):
>    ARM: dts: stm32: phycore-stm32mp15: Rename device tree files
>    ARM: dts: stm32: phyboard-sargas: Introduce SoM device tree
>    dt-bindings: arm: stm32: Modify STM32MP15x Phytec board items types
>    ARM: dts: stm32: Add new pinmux groups for phyboard-sargas and phycore
>    ARM: dts: stm32: phyboard-sargas: Fix uart4 and sai2 pinctrl
>    ARM: dts: stm32: phycore-stm32mp15: qspi: Fix memory map and pinctrl
>    ARM: dts: stm32: phycore-stm32mp15: Add dummy memory-node
>    ARM: dts: stm32: phyboard-sargas: Move aliases from dts to dtsi
>    ARM: dts: stm32: phycore-stm32mp15: Disable optional SoM peripherals
>    ARM: dts: stm32: phyboard-sargas and phycore: Fix coding style issues
>    ARM: dts: stm32: phyboard-sargas and phycore: Add optional interfaces
> 
>   .../devicetree/bindings/arm/stm32/stm32.yaml  |   8 +-
>   arch/arm/boot/dts/st/Makefile                 |   2 +-
>   arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi   | 164 +++++++++
>   ...ts => stm32mp157c-phyboard-sargas-rdk.dts} |  24 +-
>   .../dts/st/stm32mp15xx-phyboard-sargas.dtsi   | 285 +++++++++++++++
>   ...-som.dtsi => stm32mp15xx-phycore-som.dtsi} | 344 ++++--------------
>   6 files changed, 525 insertions(+), 302 deletions(-)
>   rename arch/arm/boot/dts/st/{stm32mp157c-phycore-stm32mp1-3.dts => stm32mp157c-phyboard-sargas-rdk.dts} (58%)
>   create mode 100644 arch/arm/boot/dts/st/stm32mp15xx-phyboard-sargas.dtsi
>   rename arch/arm/boot/dts/st/{stm32mp157c-phycore-stm32mp15-som.dtsi => stm32mp15xx-phycore-som.dtsi} (53%)
> 

Series applied on stm32-next.

regards
Alex

