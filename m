Return-Path: <devicetree+bounces-275534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHYnEqdktGngnAAAu9opvQ
	(envelope-from <devicetree+bounces-275534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:25:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECD628944C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17EA732A84A0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E223A3D566A;
	Fri, 13 Mar 2026 19:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="LWc+mAeV"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010013.outbound.protection.outlook.com [52.101.69.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7383D38CFFE;
	Fri, 13 Mar 2026 19:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773429759; cv=fail; b=lcooPiFJXZ+WSRsePn5Txa2nf90/AmumnvLXXn+DJA8aSub9V5VgojWubUBBfLmCzEf0BQZhhUHm5Q0IKfNvKxU5TIY6t4n6OssgeHlmUmcB3QbfMByhSjAqOMRVIq/IU7jgLKu83wsRKAqOFxadZg/a4+t1cEvrFmC0jaV7QUo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773429759; c=relaxed/simple;
	bh=yeMLQlCT/menngc2JgDE4f38XnWxGd+OTqKQQ5uwyaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=EOMBe4e17yI01KKAnbSW1CIa5U/ed3WckEuoj0q5/tGULWjlkcWSfzlKWVD3dAq5142v0R5ONS8mGHsjiAfT36saE62cRkiabYOlIg6Pk7vnjufSFaZWq1r1Exv0bwku/S6bRCfK8+yf1chGlJOJXmY2ieAWyY6A7UWv9s5wFg8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=LWc+mAeV; arc=fail smtp.client-ip=52.101.69.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hrKAGReqM1FxwsxKRYCDY1gLO5Sui+Lb7P8HodfCrIrpj6UpURZa4312oVoprGmP2MzJ/QLUhQznE5rQWFKm1TWlj/EXLb6NaMeLqaFb/EJFQJEASUFXd7QGGuJvyEMxIPp2dSmQHdTd+7oLJIKqe1ZCa3dGcEY+30knbrft5gSnbNxV2gZ5omB/zEk8zSVnzl1o7DGUSr/3m4YAEktSwWpWgoD6t4X+vabCNAI7xKFyqckBUToCQFGKzPxDJpNuXLhGTnNq6X1DPnwuzThbuy92w25kjTjb6LjP81pPbkf5HOHJiPlucYe61uZ3Xaia5qeqEyp/6NctADFj5NpSfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hh6eexd331/JqawqmiHeHowM5Jtr54pxljSZZUZQlxQ=;
 b=b+maEjca02aAbLd9jxPYCero56Mapu7FuOqhljm7xPELtEo9/lpNFtXAxRUnzIfjjk6h0FtYAfYitS3vAn0u9hX+NZtiUJ8vpo2VGcFsRWtvRntVAr60Hc5suOFpWVUc9GQKHYIIi+JmKeR4qRuvFeDS2V4/jgA/dxB7oxswlgpJA0MkyteKDF6If68bad9xO1oY5qSH0wRchWnZ42msWjH21C6R/OwbroaM3HlI2yCizRybhy9/krU67NojVmpY8wrv4bniWcbCmP10HRrOw+08FTWV3wX6s1aJ4X/HnoaxztUsMWQdUzdlTuh1/xCwZ8xWNQKYdXN9YnI8CWIFfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hh6eexd331/JqawqmiHeHowM5Jtr54pxljSZZUZQlxQ=;
 b=LWc+mAeVRHxM28L9hfHT/nrKkiMxsTkFMtdHY5oL95Lx1dxhku7HlIE8CqUujN8FlAi9DfOafZfg/GPxKA5TOyd9/2DTy4eow8qgkuce+OMVvjyFmKOUbPQ0wQMocfOuHG+oVZphdpMOmduRD34G88pf9UvNJE1RYlaAIPUaqBHYYyGB4eoWbT5GY+N+MlB4gYLGj4Q02WRsJeumbFlACeuIa/G5w6sbbDyW5gtsOUlI8toq9fY4QHzu5M0N8Cv9ZfbQZpt9dmGPPQg+XxSZSUvuAxWoC+iImifoV1aeiNzB88ZIRTG/eOcZQJG5ufqwGaJ9RZrPlKkV2XGNh18Pkg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AS8PR04MB7512.eurprd04.prod.outlook.com (2603:10a6:20b:29e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Fri, 13 Mar
 2026 19:22:24 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 19:22:32 +0000
Date: Fri, 13 Mar 2026 15:22:27 -0400
From: Frank Li <Frank.li@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@ew.tq-group.com
Subject: Re: [PATCH 2/3] arm64: dts: freescale: tqma8mqml-mba8mx: Add
 dual-channel LVDS overlay
Message-ID: <abRj84Rpgq-nEt4S@lizhi-Precision-Tower-5810>
References: <20260313113422.1722787-1-alexander.stein@ew.tq-group.com>
 <20260313113422.1722787-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313113422.1722787-2-alexander.stein@ew.tq-group.com>
X-ClientProxiedBy: PH8PR07CA0017.namprd07.prod.outlook.com
 (2603:10b6:510:2cd::28) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AS8PR04MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: c10ad63c-fcc5-49be-5850-08de8135dfc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|19092799006|376014|52116014|7416014|38350700014|7053199007|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	5cJMl9w1YTSWtmpXJEsM039qOVvSU/9VvN3yqPqyY8lRBoEKsU4ldG11NYqTihioWc0erN8pcQ9p6s84VTpMsSWhI5ZEJS6T/nDQghedwkyIVyXHYRlX9Ld4rH2YSLuY22qdYJ2q1AU+saZ5vgpfkAwdXoa75y4zXsl87yJBQgrT7yrcG7aVJkPfdtbw3VMTVs0rEn3Xtj6IRwDMOeKxkqXhJUMS3NOD5qBi0slJ1zEDZ1zm1QhB3WrEE6Ipao736UiyYn6aQ2tZRofD1o68TbgaPQtEeOwbgBRjlY9Q34uyaml3x+JmE30C19me1nLnHlF+byYOJgJeFCPcA1SwIA97B7eI5re4J0iWwS3SODxTjvKd5LBUCuGHkcamKOtFd2geqilf4wCvYEoRTqgBHPw2lvYGoCc0hydXvpMUoQp+nVc2kkwJjGfWWX8wcHRxIOCdhC5lbNy90nVhPNchxINTASjTDhZa4OG4WFwHwglKgLMBl+tvQIOzY7hlXzQXOZG4N/dWf3fS+ZYAyG3tes/izMtliIDX9EtQDDDmgXbse3gxKYROLFZYCHsaYBQsht2bdL/RvRum2JrwHz/fcVlybpeIueOPqNh+UGmML5WKJZzAMuP+3xvOpuMPFIA5BW5bwR0Rw2RfyqcsmIspEDJfYBYtlvnRKYP7C0gILZ6Lh+oSRwmBQsGJQZJOhLKSSOhrA7vyKtmUARry7XmTtFUdCNk6Y9uU3jDAgp6rVAZZ5soxSnX+p5vYR72/f6GuXHVRJvqJykdCvvB2k4tAT8AjvAAe9o+RhV8qQPyKt/c=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(19092799006)(376014)(52116014)(7416014)(38350700014)(7053199007)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?JLrO6ki1DC51gUlfzI0lj/Qs87USyxvOGu+OVmRnXfWM4xlsWFZiE0ZA/HA4?=
 =?us-ascii?Q?AfVB7PXosNUX/YpJe55O2NfuSZxjy+wxc8Vy58Vbv9OmpcPxYWWnd+4+r66Y?=
 =?us-ascii?Q?Pjh7iS2iEudgOawWXh2XNvQbBRVWvmcLCxciT7j/XQC2/wX7BaJJdEuX3wzu?=
 =?us-ascii?Q?wfV8GYfC1BPWT1BbtxzAWlGDo6cWt2xKo8L2TSZkFKQ2bUEygWwADfM2vcAr?=
 =?us-ascii?Q?9Ylvg8frtNqEUzqlyN7BWZvcLyFlEEcIpH2L3enx6FrtJ7iIUSW2pwb0s6BU?=
 =?us-ascii?Q?bROz676Yz09rvl5mPn2Tersy+ODkte6ZY5YvkSgGwGP+UFIVwi0Vr2CTQ/3N?=
 =?us-ascii?Q?YktUoe7BnrndSs7pdk+QNqJqWE2FXnfH2w/50Yi9novOptas+NDQUONcrZd8?=
 =?us-ascii?Q?XMW7hxSNeEtWDDPDCKh/90oEO5tL1dYc+jG/CzjbZ0QHbjbZPwU4ETeAvurP?=
 =?us-ascii?Q?qNa5QPHaJW/AlXe9AKYi9U3TUELgWxJGuGeeomHpLMxn7Pte/8kXyipe7+BF?=
 =?us-ascii?Q?uSZE5aFvHMiftyMbjtzrWVmOjxHllIdOY1DSeSl8Qr/+xr0cdElx09xL74Fw?=
 =?us-ascii?Q?jWExi3d0m6vtOVr8mRiB9m5rSjSnLFzHuf+AjYovoBiYgra/a3gJywlA2RLQ?=
 =?us-ascii?Q?p3/LQB+3nOS6FIB4eyrQi0+0uCb9tDgVkkVnNfKdHFOI/Hzx+AWviyJ8vit1?=
 =?us-ascii?Q?Kj1Vkig6ejDVM43gKqR5aQmwrdGSRMeXh+PTn0S/s0un9LR/z6FDYksB7XFX?=
 =?us-ascii?Q?zg6IhhyQS8vvJ6kPc1aoFQ4aaJ7PIrxnxTieuBH1ElpaHEHkm3PaRoucJAop?=
 =?us-ascii?Q?Q7H2dQs3ZyjWvZ7eEcL8mTq9eEWIwuBpwoF82WmpHNu3uvslCYFhW4Hj8DQ6?=
 =?us-ascii?Q?B8bfShsBTpjM28zA+kdWEM00rwnokoQLOI4vfk9VvPdEfATMBg1veP+vvRCw?=
 =?us-ascii?Q?Vy5hQJgYYpsFb7qgHTYVN9zgU6JtSdzCgGCvVMVpwBuUpaiR9G3XEzC9HKCr?=
 =?us-ascii?Q?IsbTekmbJZa3j7A9nLbF9/HE+q69leNyq64CHV5BTYPcditWqSiOplwimsve?=
 =?us-ascii?Q?+oLYkU4raayPoyl0banpcwgAGf0uEE3xLT3e/4ppJGbs3d9+UWEYMzpY7ilR?=
 =?us-ascii?Q?Gl8kWDvjkPx3hiTYp+19VA7ZFZ+BcC4HjoMpD4zqYjs2VYRQXm6EdbG/T6lE?=
 =?us-ascii?Q?D3ZhbVC7nRe0FViX4uIBbzxPl210O1QgfBVAMHGB0aHFBNWEpB1/1sgsRv89?=
 =?us-ascii?Q?wXgFZ1pNaHKb08SakhBAI4FL2InmGMAZ6k8DJkinipwPek0CdSm1qSsT9lwn?=
 =?us-ascii?Q?wrjl2r2GzjIPC2STROhhe3ivRzToHij2+AJ1okwJ5JmrNZKeH27qod0JDFK7?=
 =?us-ascii?Q?TphbcrIhcBcYbmPftzdMoD8TzTDJW0vI58623GRvfR3DWIkCJgOmAoiJkXEi?=
 =?us-ascii?Q?HuExMpf+lfF5gxr5/2Z1FIrh4YY9h6/2jrC5FjWUckFzC5TGPnb+IsK0Z7mk?=
 =?us-ascii?Q?iOLD8Wxb3N6FbXf6Cywl691wazuVQue+hxDxT90IFiGgRDhKtfRcy1xsw6t5?=
 =?us-ascii?Q?kNS+zlTQtDQvPMCeCQFOeauT2LuVlMF0fvgbTC23d7g/6Y6hsHnlVEAgApfG?=
 =?us-ascii?Q?IliZlgdiOX7BW3Ayf79ignHzUmGUoWy5LXqWu1z3zgGHoWBYIsnA/SLcgNuO?=
 =?us-ascii?Q?vd+seJARYSRTP2bkYB7qmnyaKUxheprjHAh3z0yTSsG8Xgr06Lu95h9dyGo0?=
 =?us-ascii?Q?L+2lZGxCkw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c10ad63c-fcc5-49be-5850-08de8135dfc9
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 19:22:32.3092
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d700sqxOWVnv1todmPqKBbnf5VsobD8RLuOgE+Pw+dR3P21t4Lxmb5aZ/E/72bvWs5LQYXZa/7RHf/Fu9mTWeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7512
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,kernel.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,ew.tq-group.com];
	TAGGED_FROM(0.00)[bounces-275534-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.2:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,0.0.0.1:email,0.0.0.3:email]
X-Rspamd-Queue-Id: 9ECD628944C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 12:34:19PM +0100, Alexander Stein wrote:
> This adds an overlay for the supported LVDS display AUO G133HAN01.

Just said "Add an overlay ..." and apply to ... (from patch 3).

Frank

>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |  2 +
>  ...mx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtso | 86 +++++++++++++++++++
>  2 files changed, 88 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtso
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 8a85b5c39f3cc..f1b54f1b0a23a 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -180,7 +180,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-ivy.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-mallow.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-verdin-wifi-yavia.dtb
>
> +imx8mm-tqma8mqml-mba8mx-lvds-g133han01-dtbs += imx8mm-tqma8mqml-mba8mx.dtb imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtbo
>  imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33-dtbs += imx8mm-tqma8mqml-mba8mx.dtb imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtbo
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtb
>
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtso b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtso
> new file mode 100644
> index 0000000000000..ce12bc46553dc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-g133han01.dtso
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (c) 2019-2026 TQ-Systems GmbH <linux@ew.tq-group.com>,
> + * D-82229 Seefeld, Germany.
> + * Author: Alexander Stein
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/imx8mq-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&backlight_lvds {
> +	status = "okay";
> +};
> +
> +&dsi_lvds_bridge {
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@2 {
> +			reg = <2>;
> +
> +			lvds_bridge_out0: endpoint {
> +				remote-endpoint = <&panel_in_lvds0>;
> +			};
> +		};
> +
> +		port@3 {
> +			reg = <3>;
> +
> +			lvds_bridge_out1: endpoint {
> +				remote-endpoint = <&panel_in_lvds1>;
> +			};
> +		};
> +	};
> +};
> +
> +&expander0 {
> +	dsi-mux-oe-hog {
> +		gpio-hog;
> +		gpios = <10 GPIO_ACTIVE_LOW>;
> +		output-high;
> +		line-name = "DSI_MUX_OE#";
> +	};
> +};
> +
> +&lcdif {
> +	status = "okay";
> +};
> +
> +&mipi_dsi {
> +	status = "okay";
> +};
> +
> +&panel {
> +	compatible = "auo,g133han01";
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +			dual-lvds-odd-pixels;
> +
> +			panel_in_lvds0: endpoint {
> +				remote-endpoint = <&lvds_bridge_out0>;
> +			};
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +			dual-lvds-even-pixels;
> +
> +			panel_in_lvds1: endpoint {
> +				remote-endpoint = <&lvds_bridge_out1>;
> +			};
> +		};
> +	};
> +};
> --
> 2.43.0
>

