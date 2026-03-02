Return-Path: <devicetree+bounces-270174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAmEG9jJpWnEFgAAu9opvQ
	(envelope-from <devicetree+bounces-270174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:33:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 911581DDDAE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC8AC3006D7A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6483542F54A;
	Mon,  2 Mar 2026 17:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Vmq8wgOh"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011064.outbound.protection.outlook.com [52.101.70.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B0B42882C;
	Mon,  2 Mar 2026 17:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772472765; cv=fail; b=XGv1Vb5p5KH4JxJK6QFJr+PRWTkSXyifkF09//KvCoGz5/V1Ktqsyruz+UCOINbeEblG9zVBPS3q2CzF+m0MkDEHYoNU2sZ52oXR0m7yBW1OUrjz4ZJFzP0FvcYEJbQna25cxDU9HLAG6iHESR6/4V3yx2P2j6EbnANW2bsNUJk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772472765; c=relaxed/simple;
	bh=QhHxoTUK2ssoTqZyTVpk3zsIzZrj9wUL02noMOIgYQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=kipGFlFoOdKMpdmjuWLK+oyt3iiNclvalhsLU7n2IpljVm6++NTXOPHcDs0QeVj0NAqfI8p+M32luyjBu7tGMcbTaNgbRoaN2jNAFgXABDVNAAJj328TKXTM9YAk0nNUM2/FGjrtvXVNAjiwInFX7QQSQo17mdt0B06iv0INmsc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Vmq8wgOh; arc=fail smtp.client-ip=52.101.70.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXGH88Ze2gYiN90qd/s+fqe/Y5mdTW8eSOfMSmy1KIn+Uzhk9eHnXpuddVLXd2BCqhJk9cRcIU7SOL9nWXvjMZCd+T7KIoWEPwyQnq6SEA1q8t84t8DBluIWy9TOFdCQUL1aFHa3PgANI9xHEAG75maqqN3TpNDFrl/psfOvZl+jVC+XurJztHvUz/QcosHnjqII9OaIDSwUwINqzBVnWiC6DKdakA2Pwcube6ySViJmcPctIxwBXpH2XmqcAg7fXN+makIQ6Z3QWuBYa7wnPsbEyr0nvrbhKaW+Z+6nI6k5HH5LLYXjn+8qGUTMOlg0CB7buUbf4PDiF9HSCpW8Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jf5Kmcks1ngtq9TFXySGgxd2xZhdjnqjTnL4DZJAuNo=;
 b=lO3031KS/BxvtTOA8eX09HSo42+FrOTSCKvUypP+LLLGarHV3GUTCDYQE9iIpKj89uEy8LbIt9reXKNX088Qx2oyA8s5IPEPii2j5Tmp8MzgJ9jg+sxRNLSxMjOSA8WIoDZU3rOkZ7Wq4phlU3jJ6MhKmlq/5aeCiKHgJTyTAkKsGptvJl5Oy7ig03xzv4/AKg3nPokNEFCs1mpvigvEPGxusSpKk5upYGjxwO4L/hI5ICPPRUe15PTMB3Kwj2kIYMyiw+WiIa669+7oHKH3c+sGRBbqMUIQcBEBLHa/0o2pu4k74X29ki7SIGnxFuOkgLTySEFDGpWVSMYXdwkf5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jf5Kmcks1ngtq9TFXySGgxd2xZhdjnqjTnL4DZJAuNo=;
 b=Vmq8wgOhet/aF9NaySspsJnaPbhQHOHI9ovC5kyCEjglX/qH4Ipc0vgGIXJ8myLy1p5w1vMFP0LPH99IgI2/CcF+9w+8X5cqpx4MaT3SKDocJfvdRrUX0wmE6a2pvSd9C2rACnlGOnOIDGGh7LSGI/ciYh0yMqf8MBPQZXXQMMGCwL4GibDfSf4YsbUUC8LJuXHDwDGks/iAJXeR2vwhUKLp+LSCVYJXmj39BSUn87h+xaaD8/b4PgvThFCCn71Oh5MoF1QapbbX9KbOdN2JL+ZaxHtHZRoHapZ5Dcn9NcbeN9+PrKyfsFvTMfLjTznlTe0DHO7iw7Vmhr5EYJeSGA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DB9PR04MB11662.eurprd04.prod.outlook.com (2603:10a6:10:60e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Mon, 2 Mar
 2026 17:32:41 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 17:32:41 +0000
Date: Mon, 2 Mar 2026 12:32:33 -0500
From: Frank Li <Frank.li@nxp.com>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx91-11x11-evk: Add usdhc3 for SDIO WiFi
 support
Message-ID: <aaXJsQd6z4cmusym@lizhi-Precision-Tower-5810>
References: <20260205100647.3745669-1-sherry.sun@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205100647.3745669-1-sherry.sun@nxp.com>
X-ClientProxiedBy: BYAPR07CA0045.namprd07.prod.outlook.com
 (2603:10b6:a03:60::22) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DB9PR04MB11662:EE_
X-MS-Office365-Filtering-Correlation-Id: a3e5576d-a852-43fe-e7a0-08de7881b49c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|366016|52116014|1800799024|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info:
	7ENQgTRdC5ePWM5kJo5/BpsMhcXzkfBXPSEYdW+G0vxnoOeolFSENtyP7Al/WUaQFThKG71JtXnccY0uL+aP6P1J/02FsT3dWV8utOobnUFEmNJGeRObTn5KHwuoMMI7ZngnCGNtze/gLfC/bP6EWPAgd8xZIo0mnE9JPp4roBDwGYZC7mx4yKwQBMcPc4aLbgXdxnihKddZxFKab5Q2dnxI8LjracF9c8gVkQmXmUJOEeXFSmFvVTfdJ5k4dFlWlw7oIq9t8GyDRJ/+TT2NeklKLPDYejQaMQkKQ/zXjvpjD6noEoz+u3mZOS6RBkkz1GTYpY0vO7862aZ84YDSUs7xMTiwsrUFSHVd++3YdAy7vKaIhj2ezUNuLFTA8/Th3K4OFxu4MgfBK1MUboB5lFYlY19TnT9qNNmjAuskUPGLyxFmu4m5NE2HjxRoTVofJ91D8ux2o8yU0l8/BmaS3dRA0wTcyvOb4NScO/I/JDRkfV/ZkPg+NQVPiwDRrX7Xk6ODxRCItyXzSq98/JTSbSgkSzs32mwa8Urz2o8re2XInsaLyz5ADuQ6JLpc+GPQKf77vOcS76u2cOmwNpUagiaKmO3c8bnwXEIc2jkLBDjC3X10CkmIuZILEIhoKRSNV84XxhsDqDjm4xxuHEV+fYxUCKHlSE4Of0v+8y7xWwJFCm7Rkvvx6dQ+M/XuOXfxSqBTtbeKTEMe8DUEO4yHGXyzKg0yI9pr9IhtlnvNO8+A++FZb+9TBlxvTTvTYO736jq/w9osHlD+nhj72LTW8ZH5bD5gPnb2x26xY8CGJbc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(52116014)(1800799024)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Xaw/BFzNMmWKhYVf3dRekwIAHfJP0dm3qTCVldqnykWwHczRzAnM4lURhIne?=
 =?us-ascii?Q?IoZFrTWP3P8Ez5LOWNW/PF+ZTM9bIRHVWqCsMCSHaaX/MQAeNBg8aiDE7CA2?=
 =?us-ascii?Q?MoN5dctV6gwzDaZKKlyrcYzpaV9bJAfvXENYiJ3mqshNkCgrCWrVlXVArcoN?=
 =?us-ascii?Q?Q0nwWWNK+s6Ba2F6wi9P2W87D9T+aXKGnNy7cSNxGwOF5hs4nnF7fdFTdWJx?=
 =?us-ascii?Q?89fBC/k0q+4ZmHIUUWqA0kUPWSzG8K8GnRun1XL7cCw3kCaaYna8uqZcAgmY?=
 =?us-ascii?Q?qF0OgdGcjv329iGeGYg9rsA8Q0RnIK3ont/P26FxLvotqlne8LUpt0rYxQyl?=
 =?us-ascii?Q?TzupWgdacdLwAL3T1UP/HcY/OpW6w3o+Puasn49Rc53jN7KzkQpyrJUl2IGj?=
 =?us-ascii?Q?3/TAooaCmufDBsmYKl35gYOp2C1e/G6cxXAMOAUFVZVK8YfDLoDnjWMVad60?=
 =?us-ascii?Q?Q0NBpDGuimH54XKF9hQh2wSyxOadnMjubKBLLUnPUw45lc4L92CcJsBA1kaO?=
 =?us-ascii?Q?y0Wk156tyu91D5eC9b0DY8tBJMZMdZA5mpMA6vl7IbrqTKi097BO+PtAQ9Lm?=
 =?us-ascii?Q?ajWqWB2VbOPEZml2GpQW+KC3yBclu8mIAZ35srlGsfYywTDwlGWKK8KxCBdc?=
 =?us-ascii?Q?wpFHw4eWzd3OYrJm/ASH9z7N37GgoMf598S4+MRiZcqJhxT9xXjLY3p+0KSo?=
 =?us-ascii?Q?htYwFpLz4daUnNFL+p/FJJbLbEI+Z2Ey740higEsPZ/PnkZgDoKIWMQlG8TW?=
 =?us-ascii?Q?xkG2MWZmZOd0LKHRtkisW+Kgz2L87ETO1gPcM6m4xNRU1Va50Z+5dd6xT+ZI?=
 =?us-ascii?Q?wxxlnZXmHbdSFPxiXMnF6OQVwnisL8xoTnEcAjB/uzMHOvUG4ei4xPK7XWce?=
 =?us-ascii?Q?VWIagEKkDmUepkjktg4QnUr7wZuIb6WG3+MBkjYy9KfkxgPZJE9E3a6ErdOd?=
 =?us-ascii?Q?q92dONDzTkFQBq978F6UrddUnbiUf5OYHPcdoIMuJOa+GCqG78/KLNujryNr?=
 =?us-ascii?Q?Sh7AxH+VaBVLqRKNj3qfCcbP/OFVUNry01koiWEouvCGmxHv9ZSOJtojobjH?=
 =?us-ascii?Q?DL4m4mmSNnijLfzGJiuchYyJMmiQZxAffb13kMm7ZXA7mljRYkdZ/B3x3dag?=
 =?us-ascii?Q?zRgUqiCt/ORATuUGAKn4/99rUYas6ttiw4z9snK+UNP7cEIi0KIg8LtcAecN?=
 =?us-ascii?Q?LXFfHebEpwnLOZW3sZTbnGYJuNrvbFNYgqCMcOkvefSJUMLN4DR87EUf/4NR?=
 =?us-ascii?Q?5LLj1DVjrf0QcHDwR0rFjV9x4o8HOodLrYeedU0YoB7dDnIOorZRv1Nz62dz?=
 =?us-ascii?Q?vfnEIsrGewa2Xbxnuq9amj+2x3ZlJ6I/iPinqM9JHSWpiXFUoDrkUYVTUQPB?=
 =?us-ascii?Q?nQqcoQ2LpVILWWBK+H6A9W7d6bgWuJlWo9yLtwr3dFiKbgVZl/aDei5RKB1q?=
 =?us-ascii?Q?/XQAY7+DmEYHjHPw+8Vv80v0ABd2HDWRNG3G6xlpEfyJwubXjkU3kJ7xmsyY?=
 =?us-ascii?Q?6GYpGhu9EFq1GnOH2cQrDYmVvu+v1Nlw5EMs51CpT3FODobgiE2YfU2T01wv?=
 =?us-ascii?Q?rNV4OvgP44VYwoYR3qmKay/O/xBevO1bDDUcdB8UcUhV5K4Gn4TUvVPCq+Wf?=
 =?us-ascii?Q?w2Ak6U5XucwNtHR0zPi8xQFyK9JPcPzyZX4UCGaA8d3Z39VJtyV9bH257953?=
 =?us-ascii?Q?ahwLh9kl4cp6GuBvKjIWtzEIuSQNV+sPW5Q3kIe66QHAyCqMDkRQCtQ1Ev0E?=
 =?us-ascii?Q?iPuigeVUrA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e5576d-a852-43fe-e7a0-08de7881b49c
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 17:32:41.0691
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5tfOAiac3A93dsrVHkvkpf+hC9NKprH4uS/fBxNYu/535OXM3aJs4pWFkmBdY+Q3fiaWyfTCppRieT4eV6xFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB11662
X-Rspamd-Queue-Id: 911581DDDAE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270174-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 06:06:47PM +0800, Sherry Sun wrote:
> Add usdhc3 to support M.2 SDIO WiFi on i.MX91 11x11 EVK board.
>
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  .../boot/dts/freescale/imx91-11x11-evk.dts    | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>
...
> +	pinctrl_usdhc3_sleep: usdhc3grpsleep {

I rename usdhc3grpsleep to usdhc3-sleepgrp, please run CHECK_DTBS before
submit patch to make sure not warning.

Frank

> +		fsl,pins = <
> +			MX91_PAD_SD3_CLK__GPIO3_IO20                             0x31e
> +			MX91_PAD_SD3_CMD__GPIO3_IO21                             0x31e
> +			MX91_PAD_SD3_DATA0__GPIO3_IO22                           0x31e
> +			MX91_PAD_SD3_DATA1__GPIO3_IO23                           0x31e
> +			MX91_PAD_SD3_DATA2__GPIO3_IO24                           0x31e
> +			MX91_PAD_SD3_DATA3__GPIO3_IO25                           0x31e
> +		>;
> +	};
>  };
> --
> 2.37.1
>

