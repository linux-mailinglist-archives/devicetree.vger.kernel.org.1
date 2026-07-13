Return-Path: <devicetree+bounces-325558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +670MpvpVGoshAAAu9opvQ
	(envelope-from <devicetree+bounces-325558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:35:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4283E74BA8C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:35:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=LcT4syvL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325558-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325558-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71F053351AB2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137404279EA;
	Mon, 13 Jul 2026 13:26:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012021.outbound.protection.outlook.com [52.101.66.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94AFB426D22;
	Mon, 13 Jul 2026 13:26:51 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783949213; cv=fail; b=X8UCllSFRKalIAnN97neoVDVq+Lu8uTLYOfj3Q5AS96AgXGI9/xlxK5mb/BKbVWDWo++nonNGftH+zvukrp+8W/ZwFVa3Qem9WLLQmKrbJ/BjtVSyGB5i7YKAX6JCvEEaFn1BoGZDYfY5d6ssJ8oblXgBvWAv4gGRpMNTcNGRXs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783949213; c=relaxed/simple;
	bh=9Z3kQ9vCjc4srWJUISIgs67SfeveO4L6IGaaZQrwSeA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=kLt6XgNAbohzV7sEBop7bPtXN1AfCZLWp9Atm/Bf77Tk/L8ALM2jMe5RT9ct+RtDn8O1uL26s58/ESzwjdYxyTSN+9r/IxZMwdYav+Fd7kXRzDa9NebRqyc9/WxpTNuxQGTk/9y5EqkZVNthG1fRy6h6D138apNTuWKmQcPHhMA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=LcT4syvL; arc=fail smtp.client-ip=52.101.66.21
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tNhRF8RwX9PBMYvZfEsFBKce0QqdMP0pXZ1DosjJP2TTMmRm2eijOKnNuqsAFsGTXihQzRiXt9JwZPOS1tHMBvK+3rtETx6JgMLR3hAhDnt7k8hlcBDznLIsuI3M4i+uWwF65ho69OKMPeEqtLHVD2Wae1+2mQBxAuqJqKoRBxfh7yCfMC2C9Pjpp6tgZWHERhwAxlbF+icIzXXXsAwd8JhByNN2TPm/H1SInc5WpM1FoHtxuwEu22n5O4o7F7ysXz/5EQtRT5/liU75VbvS5jBxtuisQA7EsKjwmBwoV89LDrAOVnNtqRryioeN9Qi7UryHjd/gdPUH08gQcks6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfIRfyFQx/yoXow3poK5Lo93RA6eb5b39EpwCRxyaRE=;
 b=f9DZNnynA4r9UKZYESvqNhphjNCUOyi/I9MNtWC3pw83mhRNTc9v/rfE8viB8FqUSwFcWVICHaVIhvdGVsM/9df3Ebl4NxSJ/NZNyyjF0m5FPqr5ooXVALODCVDCLlSB+vgdAJ7edtbX1OmLtEfzNs71a+blbY90eeJnSMkdxKdFoBfYoqzvS3fLsV/DrPDsVb2OIYcKKAwEsiFvjLM9NZbJI5dY07oNh9pmJ/6Djv4qTbEz/6/PK4YEN8iVlov0MQB965TrhM8U9aeRP6JHYewZuuksbF0D4Tml2/EVAUQ7Rt06I8dgJzrXVLYh9TkmIx30Isbscqu7EM0SqL+/Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VfIRfyFQx/yoXow3poK5Lo93RA6eb5b39EpwCRxyaRE=;
 b=LcT4syvLnFvbyd9/aOKYh+4Z590eRHSvAyKJXiV7Uj2jpbuH51B9LagXnt4RwFV2+LeSBp6fwIYTUA1ZvdeyD32ne7I5TQ4WIgfMt5e+GKibPnYGeVOKRStLhVTPjTNqKjRtmiHqwoBW3Yqyx8AClWquweNbUdEYD39ACp5HgAgwm8r2H6ipzFzfsc+qn5Dfl0BSl0VqxrAe16EA8jAjGvpeUusYvyAV9/7nfRILNHGAgsgbSOnD0L8ray8aCgqF3XIoJZ5W0FHxnZ5PYMuYlghvU/6ctq8rzlXDWYYoUmiqwO7lNQ4KO3xVTexDz5spY16QFmwkCX+P+ZfL1oOO6Q==
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by DU2PR04MB8936.eurprd04.prod.outlook.com
 (2603:10a6:10:2e3::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 13:26:48 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0181.014; Mon, 13 Jul 2026
 13:26:48 +0000
Date: Mon, 13 Jul 2026 16:26:43 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Frank.Li@oss.nxp.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, vladimir.oltean@nxp.com, 
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 0/2] ARM: dts: ls: cleanup fpga related CHECK_DTBS warning
Message-ID: <ppfaynhqproyiqrkqvltfsxyroirqcf7ikcvbo7apr24uspm2f@ovoryolfw76a>
References: <20260708-ls-fpga-v1-0-06c8a099b2a5@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260708-ls-fpga-v1-0-06c8a099b2a5@nxp.com>
X-ClientProxiedBy: AM8P190CA0013.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::18) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|DU2PR04MB8936:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e01a403-d737-473a-8c23-08dee0e263d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|19092799006|376014|7416014|23010399003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	UiE3EPN6vbf03oWOQscJ8mc8OeI/Z0/EuLjd90wZjRW0p10rSTk8bd2N7Go/8NUew/0YFw4y8MDvCI0BeXET7e7eo0+qn6sBU/ortI60cH/wxypGvvzEPusfRT3vV5KCKMQdOv21y9wPgRQmS+Jom1zFK6aL48KrWsBXA8Gidhpg39WAHUHH0urvgRv6gzfa8Xhb8wE6P7Q0n4VEwehZxvWanodUTyQUM8y3BJFoDgtCoD4FuogmTfjgrqXqRHcIP+UidrX02kjF0SvPP2r5WjECen6PeUvYGELiQn3OPuId5780EusZENeRd2kXyM8rXaK9OPl7vkrMoQIGByJ7TIM7PODaVoWBj9OKhZwnBQIu0xOKB9RWvTQV0JGaVkjTz4NG9H+1nWausegBb+j1tVEqxOawtaSqIin8tCVusUkcBgRjWwGcb0nuuZ7Nap9MhGpiduRL0v7tOe/Rqx1QV67NyDuFpT2qBIGe1B8li0kOAbsKk2k8nxbbzOgR0JqismxldwX6zocTkmejh5gtxKHno1E2ferc60q6rKlsgdyDcxxfU6T8VF9MNVRo1XamHN0sgXKUbOt2TBeQZFs/7oi3QBKQGE08fRyvA/7MboljLuRY5RQaFjkbB0T4iWym08PH/yR1OW75deUukhvLRSMpmQpXTNd8Zp46vGy83ik=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(19092799006)(376014)(7416014)(23010399003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?tcRpMlZrAXmS8q44gUYOxQ0TbwBnkCXYltPN/3U4DDmpJaAFbpcpRA1F5eas?=
 =?us-ascii?Q?Ap+Q41jxLrt8KWY26C/AJEe5q1oGH5Lxfp7Jh9Tbtn2dlFF8uSSkalIgHarh?=
 =?us-ascii?Q?IH3QhlmKlq5LsbaFzNSNhn//PWuqnwGfiLb9H3J1yDtO+0U9/GP0RO+lipNH?=
 =?us-ascii?Q?xZux0LSpcsEy64iuuNFp0Jas/IrInckxSjyHj1q4UVB8LGku/h6fiEEDmDIp?=
 =?us-ascii?Q?gaA2lC/vStsudsuFVEO3C1tVo8TWTONxS/BqUSTMbrA00MdbQ1zJWygbxe95?=
 =?us-ascii?Q?E2CtSx8iZLhOKLalYV/GsgK3L1kBegz52i91/t5KrtGBUw9R2T2tqNwx4Oe5?=
 =?us-ascii?Q?KSVEPzUPDlu6BVhhmW0v/7vb0psCZzGJ5+jCZXmISkcYQq6AMFtiYGK2Fkqo?=
 =?us-ascii?Q?S2iU1ZYRybxmYLgPWcbM3UMivBDLmDz8K/XRNO4PaKZsj9dAnud0c2FtT8Bz?=
 =?us-ascii?Q?vxBxJ5smoznbO/anjnvFggTuDzp0PrlO5pqy8kezIA5MRX/BPYx5WxEC+keS?=
 =?us-ascii?Q?oIR7LxRTuDJwKv7UXSuce6XNnp53fd22MCMmQ6XVcEaTdkobbiJ3truT/8CG?=
 =?us-ascii?Q?kOCZBHpQhRzhIeoHdWj7LfUzeX1ZBf+bLo9/0CtKMAl5tlRmACYfJgNdsF1x?=
 =?us-ascii?Q?fIDoAw5ZW3Ed+VUuLPm0d3yQkgJ7oG4hAtVhI0brJg6CD4fj7Cn9qkPfTfWn?=
 =?us-ascii?Q?M18lPQQAd9MVtPJaknJdbBYFJGw1t/DnCghBA6q1ow2i2mJhDayBiro6NOfo?=
 =?us-ascii?Q?deuKIoPJlUo7RdKdydssBxt2uIZ4S/STm5tghzDG+AJmmSERs/ZY00ceehCF?=
 =?us-ascii?Q?NtC/NlzNV4hJmn46ptQ7SrOW7iLcl92WGWHziytlqlgD2Pzqk/WaGOATMArA?=
 =?us-ascii?Q?pP789MVXOUrQ+VuaVcuWqbTgBMzOtKXIyIsIGyPwQlPGW/HI9YUte/+ByD4S?=
 =?us-ascii?Q?f7wSfXOExS8DdHoz1Ilil/EHBZN8M58ZyrSSbr3ybTjzYcS7624XVwI5g8Xk?=
 =?us-ascii?Q?iFaMvxPgs+ukvmOstr8rPAbmVS3fVufCV3hA8wm+TxIu3fopr+eLaiQ0q4bK?=
 =?us-ascii?Q?r8YfzgKxQNTzkg8gJpiCk01wnlrxYDJczev60oObvqLV/GJzs3RxN+4BPmiZ?=
 =?us-ascii?Q?Z/Zx4xQh7t+jNUEfjpR1iZ5CJXQ953bY7mVvuW7c8Xf6gnPstLfYifkrD9wr?=
 =?us-ascii?Q?8SWaS+NBFfXL3Q9jVAoJ4U2LgkezT3w0qgDQkEt7ApD0Dc7sSs84qZFGsXtb?=
 =?us-ascii?Q?46VoK74gZebOCQlmJucMJMvKfUY89OWtuVByH+ZeFkz/T4nMH+NX1FJ7Ws5/?=
 =?us-ascii?Q?tOrcCLNkPOsteWC+/v9biGy72pPNU+RiaC63D0Xc+Xgf7T6nBcaRd0oAtrgq?=
 =?us-ascii?Q?N/QDfoTcBAr4qPBbhPp/QxuiF2G/jxnuFAyZPFMsVsw0kNujPVyn+m6Ty+fr?=
 =?us-ascii?Q?lKKI0/4OCP0F7f1Y60Q0xvSCFO1LRXwSjP1xlPuZHxS2apgUUScPKT2q9dh5?=
 =?us-ascii?Q?gb6tLYUCVjwWrFqqUNamEwu0p0iIqnS40shW7BACO/jZybDt7aMzSSQKISTT?=
 =?us-ascii?Q?bHTAUHrla37Wagoud9d4ihb8z95dNeXjf+NEyULQoIQhgu8fojTr5DE90/J/?=
 =?us-ascii?Q?dZUkraIt6J916oaKLXVQbsSK3soAPJnEFsK7JpdpSjGNQVLURk2JRgJgroSy?=
 =?us-ascii?Q?i6cDQl+kkJiyRAfif8r//Jcf29MYGjkLg+obaS+PMFTn5Fd6C40xdelX07pq?=
 =?us-ascii?Q?NZ2ejQLg2w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e01a403-d737-473a-8c23-08dee0e263d1
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 13:26:47.6699
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4SFbH+tkUnSuiu/Kf1fZTuTc8OFhWhDAI0VOlvKCvxXZXVgcYAxwtVRUTDe9/PtMTccHCJgyWNX+mTRiTx+jpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8936
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325558-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[ioana.ciornei@nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:imx@lists.linux.dev,m:vladimir.oltean@nxp.com,m:Frank.Li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ioana.ciornei@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,nxp.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nxp.com:from_mime,nxp.com:email,nxp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ovoryolfw76a:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4283E74BA8C

On Wed, Jul 08, 2026 at 02:55:12PM -0400, Frank.Li@oss.nxp.com wrote:
> Cleanup oneboard fpga related CHECK_DTBS warning.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

