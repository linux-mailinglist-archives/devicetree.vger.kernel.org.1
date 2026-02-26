Return-Path: <devicetree+bounces-268966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCyqAmKUoGllkwQAu9opvQ
	(envelope-from <devicetree+bounces-268966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:43:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 598161ADE4D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C92A330CC183
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01AA4332630;
	Thu, 26 Feb 2026 17:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="UIPHFxNM"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010018.outbound.protection.outlook.com [52.101.56.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980243290A4;
	Thu, 26 Feb 2026 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772128131; cv=fail; b=m66ieLDx0uMuogMv1y5aWFux5jDHXPqIgBlFsX8I+pNGOjsK5mVh9bga06rTilAGwbkbqLKht+XM3VKXC20JhKDFn8XnRE+7QFCC7CY0d9zDSYiOQmyuyVzxy6Lu6xfw0d9QRDp1RxR1PwAp03Ovrk55RhOSh6r+isPWAMju+WU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772128131; c=relaxed/simple;
	bh=LINF5+NbeAiFyyxdc+lLmjWRyA4HzAZKzvUI34ktbBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=FYlQCmcoin5y+uOqHcl7LgOjgOKaKc2sj1rwZK5VSw7QlQzNOgw9TImIDamyHV0qTCtoRMtRohI6NJGykdbOh+U1GLcAKuYmB5nWNGfscC/7lRE0D4iCWMbn69IoJovKtkkDPvRlvbkGXX5qSf+RIsbzBseG9d9XCy1KY8m8a+w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=UIPHFxNM; arc=fail smtp.client-ip=52.101.56.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t21RgdcEHKCKaRbanMRTlgGLVvLGCAZdc8VV++sMcaDUnKPdjH47mUmf7s9kJVKx0TbbUNxC11sBeU1eymvD1PQaENo0x3nDE3A88KiFehFfKgTrvVSbZxIOWcC43kSk2XOE7KoQT7e4Tb5+h2MWfwn/Z/f2GwAB+V5RlYrJKCEfs/L7coEvhO3rZGsrIM1VHLEsUCSUWMjFmQkDnVZ67UqlEYVrrRxY3PkUbn/x4Pxc4szMOjoKStlePOG8+cYOVsq4L40cX+I4JWqebCPbHQ+k8fGZhOMgxNt10CNZABS5YLfFYEdDuh7ZKR9BUjtp7gPq+TulpWZ6+IBw28KW9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e9TlxE1gH5r3d7X8NijoCBdiHdCbjv9mY0VQW5vrzyU=;
 b=cPY0VeTJKLWxDP5RdAL4OhWdPm9bcijqdxqaKYmw0I56TWwMmnN/dZo4ocP/dRtCddlfnQoYxNQBNdi/h5wRNgnXKT76lPnM5PfLkoPaD+y1IVqJA9wySqcwwK4Cy3IK1J0N4Cj6b8jM3XzQG0pbeN1hNN9SWOsbd/k09s7339B61kp1DDFDl1oAmLJEcDINGLtqv4WR3rOZWlqWbYmVQ3Pvjto1IUN/YkX7ttMoXIFRm+FaZSIUa8I2bFYFGpcTpEguHNvwY6L/JKP32q3oUZ+j7KkQ9/9V4TXhnObwmGy9qR0N2/FZHb8/fOlzRO6pVL4qNBiMbmH6XNmCiNmseQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e9TlxE1gH5r3d7X8NijoCBdiHdCbjv9mY0VQW5vrzyU=;
 b=UIPHFxNMHcg3rvr4v505onZ63FXQBPFGH9TlzkJIInBAmK3OLhmzSUoqOSLNF2KAH84FLRAkHeiT7trm5GBzwrMRb/7rtcQpFdpPE/GA76/plBDP3QPxHPxxfRLcDYUc/3VIazGU4sPOLZoRepH9hR3xEuXL8Dm+v+ajT6Hm/Gw=
Received: from BN9PR03CA0434.namprd03.prod.outlook.com (2603:10b6:408:113::19)
 by CY5PR10MB6189.namprd10.prod.outlook.com (2603:10b6:930:33::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 17:48:45 +0000
Received: from BN1PEPF0000467F.namprd03.prod.outlook.com
 (2603:10b6:408:113:cafe::23) by BN9PR03CA0434.outlook.office365.com
 (2603:10b6:408:113::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.26 via Frontend Transport; Thu,
 26 Feb 2026 17:48:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BN1PEPF0000467F.mail.protection.outlook.com (10.167.243.84) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Thu, 26 Feb 2026 17:48:44 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 11:48:43 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 11:48:43 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 26 Feb 2026 11:48:43 -0600
Received: from [10.249.141.75] ([10.249.141.75])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61QHmdJv2289228;
	Thu, 26 Feb 2026 11:48:41 -0600
Message-ID: <46eed0e2-e5cc-4bc9-924a-83646cbd0351@ti.com>
Date: Thu, 26 Feb 2026 23:18:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j721s2-common-proc-board: Add QSPI
 flash partition details
To: Anurag Dutta <a-dutta@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>
CC: <gehariprasath@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<u-kumar1@ti.com>
References: <20260226091730.2735587-1-a-dutta@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20260226091730.2735587-1-a-dutta@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF0000467F:EE_|CY5PR10MB6189:EE_
X-MS-Office365-Filtering-Correlation-Id: e55b4521-3c9c-46cf-f3f5-08de755f4914
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|34020700016|1800799024;
X-Microsoft-Antispam-Message-Info:
	qtAiSWvZKApS7ZRXzWCX09mabKVyvfwgKv/2FCMRGdmiba6rJGzbWPOMu0Jh+Z7CskKevAAlKJKJQgJ2lYzNish9NuovPOZQhzovwdLxzwXskJJs4PT+XPHE4Be+Mt2VnoZWpVZ7EBNs5nNeY/Qs1BfuWTHhIavZWd098yVAIeN1nm9IeuRksm8fBNarZF8T/7t+XdFtKwOg/HZKEe+jRFPsq0KNHUdEJPmj3VOLQTf3e++fVSFUjNXetkFsbLNTCh4EKvfLmojY7TRRGjeFsjeWCHUuL/Xlu9yPua4f7gpFEc7LtAHHX13h9xujgYHXreVWGFJp9nq330svetgk80TNnhJfLvbRJ2AAGCw2u4kwiPRx3worsQ3Po93knUy3z1Nz0U9/+U2cNAIfRK6QtJ9kDxj6zJihFu2zE2ibJeSPhvgtO9GNwrpKd1PO2T/Y7TVxxjWnjHHVb24GjhJ9ZbWlWe4IWCILAuqd8Y8JuW3wVH/1biX1Xaq4Ioc7BefHvhYs3jbgH0DTino2PPpCyYCEfc1uv2aXRO0cb6JlooMJqQNKeWtlfl1U8pNWKbj1iOQvdGw4rbgDYM1VAqH2tXJyk+kzOsyNXXqQ1dLPFsxyDblYmhtQ9yyjZcHZtxC8EtDX4RM28qWvGBOPxNQ17u7GYdR3GZWth/LSF9d4FG7I8FldvbCgsWK6QjeULeLUD2svx6JTNVwcF0WREPQAqPNM1uzbwRt9hsyrfBXXuwgTEvpqLCUDwj/Te9NvZ1oVtoeN44DWRohjUzmVQfamaCdt6Rc5pNWAli5UpCVGYl0=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(34020700016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	i8VEo6X3ZtOVgNQ/EHQnp/gnE2MeM6WcXvZCiGwClv1QneeJUGTiNJ7nwh2oynV+gJpxzgJWkRZfTeQfDpdel5oDua/rq9b5n6ouSGvhj4aROdL6nTuqlbGlidkw/ytbo/qBLWGWXYc/jBytOZHOs4OTt0Aud58ey1Mt4d7Nl5BhhcqqlDHXo7rC5VdA3T0Wzk5xiPO7+sIO/xiNru4935xRnKvMktx4UQzrg7kKDISrN9TfsuIpsh3aHyTdXUpSugvWA0zajymY0hnd3OcRMWnBfdMuHNsTL34Gk/yVVJlBusxN2wzsjgfGhB4E4xzG46RC4skj14iVKIBFScvHGmgq5pnlb85kMA3a/ohmEJPcgs0hueRdtHvA4t7f6aruYsOKv2FSM385zgokQOW6H7o1Ur3/x+jcdXBP8cutu93MJ0YJmL/rybWjNiG44yAc
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 17:48:44.0508
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e55b4521-3c9c-46cf-f3f5-08de755f4914
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF0000467F.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6189
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268966-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u-kumar1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 598161ADE4D
X-Rspamd-Action: no action

Thanks for updating bootph

On 2/26/2026 2:47 PM, Anurag Dutta wrote:
> J721S2 EVM has MT25QU512AB 64 MiB Quad SPI NOR flash connected
> to OSPI1. Add the partition information as per bootloader.
> 
> Signed-off-by: Anurag Dutta <a-dutta@ti.com>
> ---
> 
> changelog : v2:
> 1.  Added bootph-all to qspi.phypattern
> 
> Link to v1 : https://lore.kernel.org/all/20260121051855.5890-1-a-dutta@ti.com/
> 
>  .../dts/ti/k3-j721s2-common-proc-board.dts    | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> index 4fea99519113..1b48294e47ac 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> @@ -530,6 +530,48 @@ flash@0 {
>  		cdns,tchsh-ns = <60>;
>  		cdns,tslch-ns = <60>;
>  		cdns,read-delay = <2>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "qspi.tiboot3";
> +				reg = <0x0 0x80000>;
> +			};
> +
> +			partition@80000 {
> +				label = "qspi.tispl";
> +				reg = <0x80000 0x200000>;
> +			};
> +
> +			partition@280000 {
> +				label = "qspi.u-boot";
> +				reg = <0x280000 0x400000>;
> +			};
> +
> +			partition@680000 {
> +				label = "qspi.env";
> +				reg = <0x680000 0x40000>;
> +			};
> +
> +			partition@6c0000 {
> +				label = "qspi.env.backup";
> +				reg = <0x6c0000 0x40000>;
> +			};
> +
> +			partition@800000 {
> +				label = "qspi.rootfs";
> +				reg = <0x800000 0x37c0000>;
> +			};
> +
> +			partition@3fc0000 {
> +				bootph-all;
> +				label = "qspi.phypattern";
> +				reg = <0x3fc0000 0x40000>;

Reviewed-by: Udit Kumar <u-kumar1@ti.com>


> +			};
> +		};
>  	};
>  };
>  


