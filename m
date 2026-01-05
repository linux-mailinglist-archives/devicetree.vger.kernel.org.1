Return-Path: <devicetree+bounces-251540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42448CF3F20
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2683830049DD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EE4286890;
	Mon,  5 Jan 2026 13:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nvi92ULq"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010052.outbound.protection.outlook.com [52.101.46.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5961EE033;
	Mon,  5 Jan 2026 13:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767621135; cv=fail; b=NwQgwPJnDYnn0tFf2hRfroylHhB7A4guBkvVfmxuChJUhr/3p5tq2/YSzshCfQh2ATT734e/gcphntVV0PMEKsVe3ZLZgO0HSX6b6zYnox81Ijo8zxkRVOlxcd1bO77BhRCuKdJGfCwUdZZv3JOPb8/qif4Z7VzLIBcpifcxvp8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767621135; c=relaxed/simple;
	bh=eV1rQpf80wVDIm2N1oP7sJf8oqlozQzBc2VDCT+fSkg=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MfoYRBVDR9hnSD8TzMualrqwLdMCFjgyfNdoG77Zkgbt3PPaRHZg2EheRXM4ECAgMtVpHJWG2jAP6cbyHFFhfUMuunm9mL0HNpaYUpSck0A1a7DRS1889DjX05DZINknNMK+Zs6Kw55vUAHKxvglut7Jcvi/gnG/bwpujizJ478=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nvi92ULq; arc=fail smtp.client-ip=52.101.46.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UU+z+WeJDrWUikSkOnHlDSZJ+9p9ZCk/LpIICzv//s8LeHr4tqsAvIKhWhF2nfjHwWTm9l6To0wpf1GeUMb/HlpK8I2zUwidRqZZYbhN5V9KZAwvySpaLl3AQ0meIvBEboMkheIPcS60VyiAURLo9acmv2/vAmdoGac+cPtTUe6Ze+w73xnFgC5e+x+v2LDzw6FgeAqbNI6FCE4UNAcY2IckMXz3LWILAO0o7GR/g4T4nXSwpA+mQjzdjDr+ObZ61/WOep3VKxDiDhyWTmvMEIZiRH3dXx6/OZ3Iy5MXoEJEhKpl1rc8zETHKseml5sQ77GNS2QGucSMvRETTeyYoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6WdJS6zqWiDS3vwIeDXSr6GTjATJuINTEr8i0GvXy9k=;
 b=OH46rj9SN8JCPNf6WjEc325oiObyM/df37nMJrL7oULWnvOpUMkbu5vbRybFNhIyQtk0IKkQipn1xb/fCBmKbRPObn3xqZhn2U0rdPjqdiiWfZTsPTE6De4FoE6LDhO+8aXGUNP6btKUMi7VrLAh3N86HqY1d50CFSdV1+b9kYFDXpnnfh9bStepv5kfGX9dXS8GKBqeDYCNwLXO7gTEmTzVUin2L0/iZNgJJFkSMmpXD77hiTYxk3GqUgXHdl1V8fAJZA82pN28WUKrA8iwUQL4vPXsGytMsNYG7l9ZVd5msAWwgQI5Jj5hIVUoT31EcX1Oa+mLDabzNOgx1s1kbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6WdJS6zqWiDS3vwIeDXSr6GTjATJuINTEr8i0GvXy9k=;
 b=nvi92ULq+NRXG+YbPjIdKYBzEnwp+T6XP9lkzwXWmNo2qa8K0oVrQGaXpCXVUEEkmmjL1AQn+BephF/OhEvPgQoiuKR5xD/s3Z5Alu7TUfdkok0PTDMP2jCLNSr8987R0kIlu3L6RjwkUCSSYyMkFC4rD81tmuiH4Nnfcx+5YYs=
Received: from BL1PR13CA0124.namprd13.prod.outlook.com (2603:10b6:208:2bb::9)
 by SA1PR10MB6615.namprd10.prod.outlook.com (2603:10b6:806:2b8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 13:52:07 +0000
Received: from BL02EPF0001A102.namprd05.prod.outlook.com
 (2603:10b6:208:2bb:cafe::99) by BL1PR13CA0124.outlook.office365.com
 (2603:10b6:208:2bb::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.1 via Frontend Transport; Mon, 5
 Jan 2026 13:51:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF0001A102.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 13:52:06 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:52:02 -0600
Received: from DLEE215.ent.ti.com (157.170.170.118) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:52:02 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 07:52:02 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605Dq2aX1240466;
	Mon, 5 Jan 2026 07:52:02 -0600
Date: Mon, 5 Jan 2026 07:52:02 -0600
From: Nishanth Menon <nm@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, <d-gole@ti.com>, <vishalm@ti.com>,
	<sebin.francis@ti.com>, <msp@baylibre.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: dts: ti: k3-am62p5-sk: Enable Main UART
 wakeup
Message-ID: <20260105135202.vnamexwl3afdt4cw@deferral>
References: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
 <20251230-b4-uart-daisy-chain-dts-v2-4-fa5257ec54bb@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251230-b4-uart-daisy-chain-dts-v2-4-fa5257ec54bb@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A102:EE_|SA1PR10MB6615:EE_
X-MS-Office365-Filtering-Correlation-Id: 91618b41-f48f-4bdd-a6b7-08de4c619d4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?yiRmTyPmuctsgVuPSY9MT7+Fk2LGvsOQGa9xEKNVdDropLmA1oYRNBawLraA?=
 =?us-ascii?Q?EJx6BKxQvY2O47FKI4MHHTHtKPZVGMbDpm+hPqX6BMsMIrqnOgubnTfYEw7j?=
 =?us-ascii?Q?nmeQkijiN16Bs4IHBSVPBnLTvs1a9/BxhCrk/5C/H7Mk6a87oNmc7/fYNkAa?=
 =?us-ascii?Q?4WrzMbDZMTV/Nvn29F4v0o6THUWTUHhVh3LXTOBiF6eCqD/WWp7cPHOSPt1J?=
 =?us-ascii?Q?LZwvigHqE36JkIY3P3ubulfoaKKX/UesFXuJi35Yi3BmHhy/fTtB16PxAr91?=
 =?us-ascii?Q?I0C0MVVhOC1shj4L/KQYOWM8Buy2szvhvIyRG7P83t4J8AvFhJ7WloqhL23L?=
 =?us-ascii?Q?5Vl150aVI90/uMJTFSc+8S07pTWiPOOwbrllb79LJwm1+wxezO0JjigOgpwP?=
 =?us-ascii?Q?Y4139xDs3FJWaS5pSjj4zyesQPVB6fLu+VI7VgdNqHwCRKBuF95WMZKaWL+L?=
 =?us-ascii?Q?77dzCJdhYKtoKIYcYwjp1yT8pZA4paF06jafXkrv3fSoBhJZHhlCBDYJ6FOY?=
 =?us-ascii?Q?LlfsacuZTCBBFr1UnRPHEE3LII0V8LcHUKxn0CKzjcVFhzADdf/rdGdZ30jm?=
 =?us-ascii?Q?dq/Y7QAJ4QO6BiGzqZ1AGWacFGurW0K2OWDhZJhRck4shegqPUBjBIEE3vcs?=
 =?us-ascii?Q?xIp44wvJe9XcEij92QETA1Phrht60KMrcG76wNC7xDQbo7DZ/REG2VJyAWqx?=
 =?us-ascii?Q?7n3IbM7UkHYabTPTx57Jlni6wCskgvJwBZrQOUTvAhfU57YKbeMsmAiLTRH8?=
 =?us-ascii?Q?Hzdre6Ls3WuFZN+3B6oxoqUqtUZI9HPYg3fMDWwUexQwvvSeABS3nFj6QJA0?=
 =?us-ascii?Q?evEbCOEgzUtNX/ihWvnCs3srxztja59M9mYO0YVAJXJnmyWMBEvuDxts+3BV?=
 =?us-ascii?Q?/kkQMgly0drzJAuanvz+EVrqqk+AweNCSpIOaj6w6rXVkMaFPCFRHypRmJz+?=
 =?us-ascii?Q?RSjeJ9MIHXTAIguvuIs86zSisEf+KSWIDGBDEwTwkaj9NyABNoE0qKWE2FIL?=
 =?us-ascii?Q?y4gzpca14N1zuP0zp/PNgJtj342RjKHu1fGwVg/WjBQetfL8n1RF/bKfgAiq?=
 =?us-ascii?Q?RE8qXqhPsptKAx99cug5rTE3vRhonz6XaFLwQ7jvKERWNhR/TvoKVvdA+UZT?=
 =?us-ascii?Q?MHojSeY52PdL+1uFCfjUcjaiFukSqS0BIWNWTZ2Bo/UF2529LVONJ9jnwPCN?=
 =?us-ascii?Q?bghebaY/nIj4pHf3HmNDOaIcdESJXGffddIaxeef7pitdffhhFNap6yUfsPy?=
 =?us-ascii?Q?ZQtJEQPtg9dY9LCTdyeKEYCrkJAlkdC8yuIsoM2YnDKh2Pkenk5Y+hO4zZ3y?=
 =?us-ascii?Q?m8M5jzdXBjlrEvJAVACjBJQ9A3hCfM2vM759fj+fPRtvXZd7jqK39rx319Ty?=
 =?us-ascii?Q?JLXelngu/dWGStFoEBtbfUTvHW7hFuGRdCMfFKD/kYj4geuiAr3Te4Qqfo2b?=
 =?us-ascii?Q?8R24WUKGBjrVUj/TqjekNh2wMmXgleeXljZTEEsCgXCCLQuL0MM8oIyMIrjH?=
 =?us-ascii?Q?4hLhafjJiGNJNmCFsSpumQofywRiua6euemdcU7GD8d4XBkCUwlDIprUBVB2?=
 =?us-ascii?Q?VNLbB484RyDJjOfm/gQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 13:52:06.6601
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 91618b41-f48f-4bdd-a6b7-08de4c619d4c
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A102.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6615

On 20:38-20251230, Kendall Willis wrote:
> The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
> is enabled. Add the necessary pins needed to wakeup the system. Add the
> system idle states that the Main UART can wakeup the system from.

Is the tx and rx pin register states both lost? I wonder why during
"wakeup" we set PIN_WKUP_EN ? is'nt that supposed to be set while
entering "suspend" state?

if the tx pin register state is not lost, then all we need to do is
play with the rx pin state (and leave pinctrl-0 as is)?

> 
> Signed-off-by: Kendall Willis <k-willis@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> index ef719c6334fc094f01d9e8185992f2f58320e17d..96bba65f4f16792834567324db6f7f2bdee7bc06 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -328,14 +328,26 @@ AM62PX_IOPAD(0x0164, PIN_INPUT, 0) /* (A20) RGMII2_TX_CTL */
>  		bootph-all;
>  	};
>  
> -	main_uart0_pins_default: main-uart0-default-pins {
> +	main_uart0_tx_pins_default: main-uart0-tx-default-pins {
>  		pinctrl-single,pins = <
> -			AM62PX_IOPAD(0x1c8, PIN_INPUT, 0)	/* (A22) UART0_RXD */
>  			AM62PX_IOPAD(0x1cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
>  		>;
>  		bootph-all;
>  	};
>  
> +	main_uart0_rx_pins_default: main-uart0-rx-default-pins {
> +		pinctrl-single,pins = <
> +			AM62PX_IOPAD(0x1c8, PIN_INPUT, 0)	/* (A22) UART0_RXD */
> +		>;
> +		bootph-all;
> +	};
> +
> +	main_uart0_rx_pins_wakeup: main-uart0-rx-wakeup-pins {
> +		pinctrl-single,pins = <
> +			AM62PX_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0)	/* (A22) UART0_RXD */
> +		>;
> +	};
> +
>  	main_uart1_pins_default: main-uart1-default-pins {
>  		pinctrl-single,pins = <
>  			AM62PX_IOPAD(0x0194, PIN_INPUT, 2) /* (D25) MCASP0_AXR3.UART1_CTSn */
> @@ -692,8 +704,12 @@ partition@3fc0000 {
>  };
>  
>  &main_uart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&main_uart0_pins_default>;
> +	pinctrl-names = "default", "wakeup";
> +	pinctrl-0 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_default>;
> +	pinctrl-1 = <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_wakeup>;
> +	wakeup-source = <&system_deep_sleep>,
> +			<&system_mcu_only>,
> +			<&system_standby>;
>  	status = "okay";
>  	bootph-all;
>  };
> 
> -- 
> 2.34.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

