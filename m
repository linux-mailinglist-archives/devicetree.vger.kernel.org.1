Return-Path: <devicetree+bounces-274962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLVPBvnCs2mEagAAu9opvQ
	(envelope-from <devicetree+bounces-274962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:55:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F1B27F107
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B7E633034C36
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D79E36D9F7;
	Fri, 13 Mar 2026 07:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="TxoeFy3a"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010045.outbound.protection.outlook.com [52.101.61.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AAC36E483;
	Fri, 13 Mar 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388475; cv=fail; b=SP1zQOup99GIPi88KtAqXKHER9/NbHiY5reoisxpglGQIvEy0MWnRHlag1yfMPVC9utwmY1N1KPmeY/pEgUnJjqBNk4MKfvkG80rOajVLQFCrLkjw5MZ9ND1ttXVF98DtC7USkwfgJsINHU7mJ4zdRMQfId48YRWbRQY3pVmbgI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388475; c=relaxed/simple;
	bh=svahkQ6sT+Ulw28qx/jgkDc4f+Xg5UAipNaAn/MSu5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=IMtusRz/YOSK8WVSeRDOEZFVODDneb8mJ0S96R4nniNiPRqz+F+/5x6dxq3G8qKgbll2x0LGrS3pxtpsx7Dlm+n9EeemWwm2Z/C2kJUZojvoTXa+MF4tMWHZkK1UP5/vi0DnNRDq6CcJ1uA2i3HRfPOFfVgEXVxd3g1YnXMC7AA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=TxoeFy3a; arc=fail smtp.client-ip=52.101.61.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ec58+jG4E8QAw7ho7hPtm87jcM3fRiOpjPr/4H6DiKdKMqh+jx1/NwTteWYegei+oWUU2dkzUK4Y9i45VNeWI+nyV8Gu7ch+jR5r3rbGGCKlWATQ9V0G4GEn7/Ip8oU1FbmUVhYPBPLWAjhWitYHe3k/Pf9SA8VhuyoFmi9VabhNgPDRHPAcf04DR+RYwHoFGZSbXK/JHRtUY8hD5tmbM9bcHSRNzPnbCO4R+Z1gWZl4GNuOpUHkxObrVlH8M85b3uLVCV4AETnZ73AbFKbYNSoTfhlcj2ASNXqraXYkY6C60Jc8Ua8RZH9l3rujUsouxsy59L4q1VVfgWmYp6phrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r66TxYOTCOtYoUwluefKj7KQVnn8Sl+j46NKv9njfWs=;
 b=QwS3bFEGmByR32wENVvK89KlXLfgOBrUtkhleg6uMNwrbPt8j8srrhTq17NQ9GbTS5yzNhxHlFAWgV4e4S64C9NfHdAJFcpBCBVaTjpJSA8k3UqC6eh3MKWBtKkqzHCXhz98g7NWJxNIjw5i1QO1EhTgBkwU4uz92fggHbTW3cfe68PEolZHoaWYv474hTZJufv6e6ErQJE78Vi5J95zfxkjfR+YsRqrP/9bJcb8gjauPe+DkKY7LUitwxcErdZaowKUFXjmuR8O/pwiQRtrLdpm3EoQ1Gw3HuweIGkm50K0i7MQEJuK4fQeC3e4lRqWs8S42IY0d4FQIJLa3rF/Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r66TxYOTCOtYoUwluefKj7KQVnn8Sl+j46NKv9njfWs=;
 b=TxoeFy3aiTUzVR2+MSX849t5FllkCY5ZQAScIn3AseMZpETaJrC0JCjtUfRNHi22SaH49b89KJ5U9hVLIJdpbo1kViwjaq55U8tCwJlhQ1gN5yhjxLbcj2bfK7APtQUfGy0oPijLqRhzKroQMaEiYguW/XZwAn3yyB6vMAW4WuA=
Received: from BLAPR03CA0089.namprd03.prod.outlook.com (2603:10b6:208:329::34)
 by MW5PR10MB5874.namprd10.prod.outlook.com (2603:10b6:303:19c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Fri, 13 Mar
 2026 07:54:31 +0000
Received: from BL6PEPF0001AB4E.namprd04.prod.outlook.com
 (2603:10b6:208:329:cafe::e8) by BLAPR03CA0089.outlook.office365.com
 (2603:10b6:208:329::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.28 via Frontend Transport; Fri,
 13 Mar 2026 07:54:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL6PEPF0001AB4E.mail.protection.outlook.com (10.167.242.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 07:54:30 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:54:30 -0500
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:54:30 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:54:30 -0500
Received: from [172.24.233.103] (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7sQmS3855592;
	Fri, 13 Mar 2026 02:54:27 -0500
Message-ID: <680b0db2-7ac0-498a-b2a4-ceaf7f56a9ad@ti.com>
Date: Fri, 13 Mar 2026 13:24:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j7: Reserve memory for LPM meta data
To: Prasanth Babu Mantena <p-mantena@ti.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <nm@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>
References: <20260312113446.1857592-1-p-mantena@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <20260312113446.1857592-1-p-mantena@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB4E:EE_|MW5PR10MB5874:EE_
X-MS-Office365-Filtering-Correlation-Id: 36ba216a-57c3-41cf-b1ab-08de80d5c258
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	dzney8nVLQEyDbEzPUBbWXiSGlWoPOem4x3TVmhSqm3wCZiJ/6ai9sWBC8ocGTyldNYcgmAJpdOzaP/iNA5d6CG+bai6rKgaw05B06Iu/paC5S4PhVQmqd535ruWZWhM56gTy51BA0pnFB3cfYxceWvIXGq/0vVnkPNPty1e6gs6b9oeO0f18PjnB7/OAfdYVAeft3a0AxTyEudo8zj/950JPIysMT2IIwvzZ6kQKTDCrbx2uZ2/kaawN3fftqnBU+4cHJhArU3bWm+tmK+BkEE8F3Iun4XOxi1DPrJkGXChcDyKecamfuvj2BzUigC9jjT9N8aIJEiIT0PFWkbcrgkW8tpyLIlmAbaSzm+qDMOgPPPIuRS64NfRu2T2Yx9AhRvampDwuhFb+lJrNYjl20OZU33a1NOYNuUmXv8YPojzzmsrTZzQjQhcfg/qJrTblIvv7BXwdHm4niNajYQ9MIafbIK+2/zDAxJQIh2GjmolyzUttQ9tpDv7OLcqdrPP5qgeauH4hL8tM78N/zjN0+pTBrxQ5KqISdDs7DJXUtDFHDC0WoKiZmT3JQzaP3G4+skA1Cr9UzczBIlci4IBEU7YELWSP2Vh11O2OCRmF4c8aK3Fq9PPZhADPfx7Sj3xBcKORbVUj1aiEW0urNR0XaaaR9U47rMh+lWo6HAOTFHCM++R3Du0FNRc93756abeJExkT6vPTgVCrhLwAApgZ/H/NkkPG4v+Y+n3zQWZYa7DaOQrgMC6s/6OcUUahwJE7apgcky7fV0KFZTONS8vOw==
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700016)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	30FbpRdn4WkqNxEtYmk4vHDk1Ij92hhI1rmO0Dv6TjAnrgVFRDEqJGCLQU9cTAojphAD2tE43S+C4qDyPfC3wujJylSZ1+2HBg2JekJNetPpg8g7Y++UoJX2xOg6pQEm3DmsCGBaX0vPt/XdvaaCUuSncor6Sn4/AF6L0ZzCBmMFfNZmLvhH2/Y0E2KYgGa8eUY0RhodQ6li8L1XHrRVZbJmhEqA9evQ4+d1r1ppcEnODrprNj/TmMc+kMvLJV8slCVKvskA8DCPZxclw/Bo0UshgMZvM2rQv5QcPIUy4xXEv5GRGCN/spK8dVMxB4ta8rgdYKAT5nZq9kKz+omsBINvV3fXu9t/8wenIuLn1pTJ7ckN8wajirkhTo4K7kbYemXnRrp3oo2vIbnfZRjDpXXcaQ9VOm7uClVKg4RevyazLMCiYFFhKf17DmrqMGWl
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:54:30.9061
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 36ba216a-57c3-41cf-b1ab-08de80d5c258
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB4E.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5874
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274962-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:mid,ti.com:email,ti.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 18F1B27F107
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12/03/26 17:04, Prasanth Babu Mantena wrote:
> For TI SOCs J7200, J784S4, J722S, which support low power modes,
> A chunk of memory is reserved for LPM meta data, which is needed
> for saving ATF context and the certificate information of ATF and
> OPTEE and DM image. This LPM metadata area is firewalled to be
> accessed only by TIFS.


Which firmware accesses this memory? Could you point to the
documentation / ABI that defines the same in the commit message?

> 
> Signed-off-by: Prasanth Babu Mantena <p-mantena@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi             | 6 ++++++
>  arch/arm64/boot/dts/ti/k3-j722s-evm.dts                 | 6 ++++++
>  arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi | 6 ++++++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> index 5a8c2e707fde..26c2489c3b91 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> @@ -40,6 +40,12 @@ mcu_r5fss0_core0_memory_region: memory@a0100000 {
>  			reg = <0x00 0xa0100000 0x00 0xf00000>;
>  			no-map;
>  		};
> +
> +		lpm_memory_region: lpm-memories@a4800000 {

Node name should be generic

> +			reg = <0x00 0xa4800000 0x00 0x00300000>;
> +			no-map;
> +			bootph-all;
> +		};
>  	};
>  
>  	mux0: mux-controller-0 {
> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> index e66330c71593..f2ca0354a917 100644
> --- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> @@ -63,6 +63,12 @@ wkup_r5fss0_core0_memory_region: memory@a0100000 {
>  			reg = <0x00 0xa0100000 0x00 0xf00000>;
>  			no-map;
>  		};
> +
> +		lpm_memory_region: lpm-memory@a7000000 {
> +			reg = <0x00 0xa7000000 0x00 0x00300000>;
> +			no-map;
> +			bootph-all;
> +		};
>  	};
>  
>  	vmain_pd: regulator-0 {
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> index ff3a85cbc524..3e79677792a5 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> @@ -46,6 +46,12 @@ mcu_r5fss0_core0_memory_region: memory@a0100000 {
>  			reg = <0x00 0xa0100000 0x00 0xf00000>;
>  			no-map;
>  		};
> +
> +		lpm_memory_region: lpm-memory@ab000000 {

Node name should be generic

> +			reg = <0x00 0xab000000 0x00 0x00300000>;
> +			no-map;
> +			bootph-all;
> +		};
>  	};
>  
>  	evm_12v0: regulator-evm12v0 {

-- 
Regards
Vignesh
https://ti.com/opensource


