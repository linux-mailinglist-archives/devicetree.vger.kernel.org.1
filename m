Return-Path: <devicetree+bounces-270608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAm9HXgAp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:38:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4991F2C9E
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A361C301AB94
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8A23BFE47;
	Tue,  3 Mar 2026 15:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="f8t8RqVS"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011017.outbound.protection.outlook.com [52.101.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EF447DFBC;
	Tue,  3 Mar 2026 15:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552308; cv=fail; b=pghAPZWKvkAmEZtscRHISx5uDgGf6s4GITlDEGwPG8nqH51uq4v12OQY3tz38UTGFyXyEZIfJoNK0GwovwQ0o6ul6BYrfgMUhqQglzz4hKHap+NsWqgIylHUpzDyIGk2HY9Hw8+0/vVxKiIqTmgH9A0iTT9Qn6NwjRdrhfYSraY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552308; c=relaxed/simple;
	bh=HSY3pnASXsHUEp2IMAAfeILjgGNIcGdm/zS/JEDgYN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=gMtAAbemBnn+78Tt6P39g9iqVmGpnTjfgtGl8WhGuKqZkI60BQmpDQHyVQnwEBTrWo3OeGtxPbDKtmYtD6yjN6vNf7MmCPgBDBqr+Z6dx98SBisn6XwZggG87eMaNRCAfHA0I+r0Ji3dx4w3QXIbddJJYbXDOmkaX154NPKa+Z4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=f8t8RqVS; arc=fail smtp.client-ip=52.101.65.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sYVqzPMFmqVThdOqiDO9MdHkuYkT/TmrZHtiYGEb+WcWzwPMKiHDoNMEBwHiWyII7oY/UTzzCQNvua6YjOCm7sd1T6hOK3t/85ig/4stUQBIRZAmJDqvzEnm7coKcKlwRS6+t/CPiV2ii9B/e3AJp0aAWkGh8T9t0G0cro7RY5NQDWaHkI+Pf/71pkmSRtlaAGVxabmK0eXaXxKlIIMQGODhJc7oesDfgu7QRvFg8A0imQt6ldm6/J9Dt/EsxMlD+76hgoyYh9QqaMdYTzijznxwu3ce+F5Hx+g2eXM029sqdjmdWaiMBDYeI61NOd1QEUM2ACMaVVsud74QMcuzZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Le6gD0rzzfa10BAOgirSBAxEA2aR/+WU/FoU/rMi0lc=;
 b=PSqXx1/RhEnCUsfJigQbd74PsVMOKUtpF6tj5dbMd9/cvmqMvm0ZeZoyEErE3gEo31KBCmLgQDxnAIk6wg8EZyd7U6L8eUohfuVyxn7fFk1aJjyacTy/zIWDmyMHyN/HwvJxfukUIQIGqXRhb5NVf0PN/+sJtt5tWfXOO7ULdlSFhW7kP3WV2O7N0Ql1JkS0e1/BM2IhMQ57w2sGF5p2bR32UnFz2cX7G5kmq+kfN6zI6cKXhqOq6JuPWd8bqKaaHdgcFknQqrEZRqDJOEcR9kWJ0bl+j5uMr5/dfReBjzCNiaYGv3unMgOaE20+xYuaydN27nElNgRvnFbHDtJI0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Le6gD0rzzfa10BAOgirSBAxEA2aR/+WU/FoU/rMi0lc=;
 b=f8t8RqVSOimCuJzyxRAdUzevu+mRyVGZMmbvDi21Na0W1Dw0muqCJaIgb9U1uBomZp1xXEtySxFLfeC3nmKJvsDX+KLpgLJrROzrVonXhLd4yOjmQTKLTbmWNhhCjr1hOC74COjM73zYF1nYkU45NbdS7OB5mb9DgKnnc5sqZzAh34nZfRoFODvk9gPAAhaj1GHCOWEMVXkC32kSZWZHrH3nBMSXVfXnqjCZnJO9Fpp60SKZyuccACYbXmrWLFs0v6tQxwgxbAaLG7lqauwaZd39bGwP92OOJTFGABfAXb1824DEGDeDu3g7Z6Z+EHba1WEEHCboj3s5Yn2vdpYLEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by PA6PR04MB11988.eurprd04.prod.outlook.com (2603:10a6:102:51c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 15:38:23 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Tue, 3 Mar 2026
 15:38:23 +0000
Date: Tue, 3 Mar 2026 10:38:09 -0500
From: Frank Li <Frank.li@nxp.com>
To: Emanuele Ghidoli <ghidoliemanuele@gmail.com>, peng.fan@oss.nxp.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: freescale: imx95-toradex-smarc: Support
 Cortex M7
Message-ID: <aacAYYuPkqgV3QYu@lizhi-Precision-Tower-5810>
References: <20260303121324.1576841-1-ghidoliemanuele@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303121324.1576841-1-ghidoliemanuele@gmail.com>
X-ClientProxiedBy: PH7P221CA0030.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:32a::35) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|PA6PR04MB11988:EE_
X-MS-Office365-Filtering-Correlation-Id: 07e420df-0aa2-49a4-caa3-08de793ae7a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|52116014|19092799006|376014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
	Y4TM8C/AuIsfi8C+SYMC/ZQW495/VBnymKAOPs7dXwy8rWKfF2gZEnK2008B0E4lA7cKbVUMc+RyD7sYMzkQy/4cR2EMe2m/fTx2yiexcTf3Fwng5FYh70UTv2d7qr4EKYqnFNMpSMuMr/XwQwx6C0WnWv6CHkaRcxcQtqOlEcomWurzfeBaeRNvflKLWeu8sVmSI8J9ElMJs8pIGu81EmSdPgTEv3PIs2SRPAyz+UZHLcxFOkDt7Qy9Rjts+3tMpGFfbTMDPE3zf4yBhxFLCEjbTwx9WYFj5xzd5OzrEl9UEwViz71mcIZ1LETyqwHHjZhKGBLnv1v58/ugWbMOJT9c7XXDZ2U/ks6wbp4tIGUIXT2JLkSRKLN4XDI8koLKYKcYqXtyO6vY7Tr/twP2XD5t289yHHliS0XQUh+0Jxkbm5eFO/I5SFF28OpBPD41usVG92dJ2Q+ydB39hJDiPU0J+cXQV65s/lJDtzxzAUpXjlEEhiKTTlsNqwhBau3lS33+txTIH3Lr9rnxafJ+y00c//3i660F7R8xyNhVmqD901uuVgVVFKHvtrl1F/fuhgGMlIYeGpPyAqDR6oDbYfkQ6FxvUuXHRuLzVRIuYerSgVupX/6O+C33SWDTMT+aJZOruHrO82d7LjjC3KRnbakFZsE2ooeD4/vTOHamx99XAZV3ZPjM2ez38s7tr2ysPPi+Z+sXp0EM59OowTVGe3Q2OnEr6FCu2sXbY1wxoqP2Y4VawnnOFozxi/Iwt2PuU/oRI6Dhs7hfdA0766Lt8Zb4C5GLCPuhR1W6vMogA0Y=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(19092799006)(376014)(7416014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?6413PWUy4mBr85UUTRuw3XYh0m0auirFY1DvPMryK2GdULyMOdBaJR3Xz3qS?=
 =?us-ascii?Q?t9gN0rB6qVrnUMEVAY97qrZqqtUbNHW1KvlRTmq0w/9Pp+gbaX/7tUxLsCwS?=
 =?us-ascii?Q?2z3HZJ61Y+67cLazi0iRaKuLjU4WlpX/GWi5QnhCIX+thIjBiU7wMMJgs32/?=
 =?us-ascii?Q?IJ5KaFxU1O0D5nvngDNpPmdMqVPBWuiIyu2IAlKawPPz1yuPYNSGXV/IrxmB?=
 =?us-ascii?Q?tWWjR+JE028+iiOdsY4/GAJWfVjzBNIlRpNb9lLsbMI3H5ftGjc9OeUm/Q+o?=
 =?us-ascii?Q?a7q+BDDc2/LVQEix7teZ32pRshLEDoqSqtYbre6oNjJJ0LQsI9arhbhIlIaT?=
 =?us-ascii?Q?kkN+HGJMrMHFS7HAvQ3T5fp7OeeSiG5eBHU+nnUd0/lw19nEU3Ep2ZpSLH2u?=
 =?us-ascii?Q?ALfVG212umojRpZpTIC6xPDUQT5iCSUCQ3gumxjLVdrSKmz07MREdn/P8K5S?=
 =?us-ascii?Q?wB21LW4z6mnDKJREYW6c/X9BRgCjNShOnFOj+uhPqLbkj27p7P1aTMgKcAFg?=
 =?us-ascii?Q?+zqa48WSbSQXCLF7JKyE2LiD8Ckm4fWNpCdMe7qNspkdvBS460n1s6EGbupB?=
 =?us-ascii?Q?iHeFq99Tt9epeAXxw7wJFBt0SqrYuUh04sW9Y6kC1q5PqYlmkLFW7gH8NW4+?=
 =?us-ascii?Q?EIln7UL0raJIH2ZtWH0pAjCfDFMTNoJePqqZnFc9YXpSK7J6MVFnbvNyh49g?=
 =?us-ascii?Q?90PhGeCIJnanL76sxonE1Sd0iE1u6T7wupyg99H49pUfZTC777KPmhvjt5fY?=
 =?us-ascii?Q?Kcn6eb8zlLoS9FwnmizZkMUurzxUJkdLAF7WwB92bs3YVwvL+Ztec6GHddzV?=
 =?us-ascii?Q?DAuXnf/mWG/PcgF31xMEei35RuhshpVrqHdTVFa3g49d5cagwyGxnuCasKfS?=
 =?us-ascii?Q?3tOIrzfcPbR7iEyEcQV9TkilHOKXQbo1ZiNSVzTtLBq/rqdJ8xTGAcHw7veg?=
 =?us-ascii?Q?4ZxrVUj6V2oQkx2TPmWXsD0V7Zg+PlMPAk2OeEZsNOw8/rCdg4xygDbJiNv6?=
 =?us-ascii?Q?AwXOnJx+ql95Xz6JuU0t6jwGDM6J16rc2mIpH4Zb6oympThtbjCA0R+KK0wF?=
 =?us-ascii?Q?4F9uVk17q8Qk2S/WEmKvSNy70oFA/O2tnYILULGcrGY4/Q0gxFn6Fn2ArHb5?=
 =?us-ascii?Q?tzIBXV/56OWSTvhBB+OfNAcbLZPeLTzAvyFKW4h2Az5Wpy7H3SHBVrwEF2tl?=
 =?us-ascii?Q?evKCdvwEYOv/ecS/sihGpstNncSL0Bm4DMIiZSRgahn7J3JvGo0GwD4K0WS1?=
 =?us-ascii?Q?cJU91YB+eNMC9T4ut39OubtZkBGJD8NtUB9Xnwibe2Dy7OxA773ju2/LflZ+?=
 =?us-ascii?Q?/nhf6xNgUyhRNe+NaD8KJ+Ubd1QmMlTxR6YfoHsI467icDChieMul3wodZkA?=
 =?us-ascii?Q?qoWZsTcrLpyoTcjbffw6eBjcVZsmnSH4NZ3ePFnL/3tk1796dSpoOIh4/Iw0?=
 =?us-ascii?Q?Iz0HETIOE5gjk0c2g3Jmp0OCJm31+s/XLdnSdK4aV7kWtliJWay566emCNFm?=
 =?us-ascii?Q?H2fex49iZ8/aoLKvJSUwrMSGN8dwslCxILAh3Y1/OHQm4V0hnoW8g0EzqzsY?=
 =?us-ascii?Q?AYn/WQeJwNcSUNd1tXzmzpLRGfW88C9ftbIwXuzHMJbni/wcFzDinAu93sip?=
 =?us-ascii?Q?koa5nmj1jS9M5XXyMlVtVpL7/C8yLLbFXT5++HJSYnetJ5Qte4wmWPL0sezY?=
 =?us-ascii?Q?sgvvS/idB0vdaX15aH+Rflu5Fo0rAdAvhbB2SwH3KWIOyxAIT5h7dtzBI4Vc?=
 =?us-ascii?Q?Z1F5pfN62w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e420df-0aa2-49a4-caa3-08de793ae7a1
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 15:38:23.6153
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3qtwQpYDUGCukXqGEPb4+56l+xa7rrMGCKd5CD2jevxSRn3yfO8nzbxh++exLRiFBGtjq0oaa+TF48I4PRI+1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR04MB11988
X-Rspamd-Queue-Id: DC4991F2C9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,oss.nxp.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,toradex.com,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[5.63.12.80:email,5.62.198.0:email,4.196.180.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,5.62.237.16:email,5.63.20.32:email,5.66.33.96:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:13:06PM +0100, Emanuele Ghidoli wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>
> Enable Cortex M7, the vring nodes, a mailbox and reserve DDR memory for
> the M7. The remoteproc framework is so capable to load and run the M7
> firmware.
>
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> ---
>  .../dts/freescale/imx95-toradex-smarc.dtsi    | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
> index 5932ba238a8a..77c4a6dee098 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
> @@ -42,6 +42,16 @@ clk_serdes_eth_ref: clock-eth-ref {
>  		enable-gpios = <&som_gpio_expander_1 13 GPIO_ACTIVE_HIGH>;
>  	};
>
> +	cm7: remoteproc-cm7 {
> +		compatible = "fsl,imx95-cm7";
> +		mbox-names = "tx", "rx", "rxdb";
> +		mboxes = <&mu7 0 1
> +			  &mu7 1 1
> +			  &mu7 3 1>;
> +		memory-region = <&vdevbuffer>, <&vdev0vring0>, <&vdev0vring1>,
> +				<&vdev1vring0>, <&vdev1vring1>, <&rsc_table>, <&m7_reserved>;
> +	};
> +
>  	connector {
>  		compatible = "gpio-usb-b-connector", "usb-b-connector";
>  		/* SMARC P64 - USB0_OTG_ID */
> @@ -156,6 +166,42 @@ linux_cma: linux,cma {
>  			alloc-ranges = <0 0x80000000 0 0x7f000000>;
>  			linux,cma-default;
>  		};
> +
> +		m7_reserved: memory@80000000 {
> +			reg = <0 0x80000000 0 0x1000000>;
> +			no-map;
> +		};
> +
> +		rsc_table: memory@88220000 {

I remember driver use hardcode rsc-table, I suggest fan pan to update
driver to support memory-region-names to avoid use hidden ABI.

Fan peng, what's current status?

Frank

> +			reg = <0 0x88220000 0 0x1000>;
> +			no-map;
> +		};
> +
> +		vdev0vring0: memory@88000000 {
> +			reg = <0 0x88000000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev0vring1: memory@88008000 {
> +			reg = <0 0x88008000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev1vring0: memory@88010000 {
> +			reg = <0 0x88010000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev1vring1: memory@88018000 {
> +			reg = <0 0x88018000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdevbuffer: memory@88020000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0 0x88020000 0 0x100000>;
> +			no-map;
> +		};
>  	};
>  };
>
> @@ -572,6 +618,10 @@ &lpuart3 {
>  	pinctrl-0 = <&pinctrl_uart3>;
>  };
>
> +&mu7 {
> +	status = "okay";
> +};
> +
>  /* SMARC MDIO, shared between all ethernet ports */
>  &netc_emdio {
>  	pinctrl-names = "default";
> --
> 2.43.0
>

