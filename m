Return-Path: <devicetree+bounces-273639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJVyHx5RsGmBiAIAu9opvQ
	(envelope-from <devicetree+bounces-273639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:13:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7690725554A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8A53A303BCE3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E84E3B47C6;
	Tue, 10 Mar 2026 17:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="eek6y+uX"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012006.outbound.protection.outlook.com [52.101.66.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E062FDC3C;
	Tue, 10 Mar 2026 17:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773162068; cv=fail; b=NkhWKVZjrOxoOv8zo5Hs1UYljQ8qnCvFI7dN3tXJFOAA1EIHo4g1gPberKUsVgLY4AnJMwsglH4q0fa26bydW/kyHmQ4Pfyju4m5XwkOqpyYAbfzmThUKHwNX1wMVFFKGkoJfDJRFlbQy0NKjNAFhUowM0HCjeFGrHHon3LPA5s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773162068; c=relaxed/simple;
	bh=7gC0vUPRPB5pcXcJqDQYxTBGJn0TD68REPTFyXXMBoI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=bmO6kB7tqXSqmFXBKFDqPaPVM0dR+H2B2R1RadyFbhpVgcNj8QbEmLp6YPtLKftL8CL/MNfGegBv1utSNg5i/Gir1sNJCDmrHDfFGizzEaNB3yLTYtT/5diK5aBqiw4K3lR7pPcMT7B7BFb+3UBdZU59MTwXS3ub9Pm95bMTKAc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=eek6y+uX; arc=fail smtp.client-ip=52.101.66.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FllBq+txwHUsJrdXEk8suFhETLgXo2ebdzIQ2+g/PS7Mr9MYYpnpdcUhrFKC86JgWmc4eehR1O50UVIVKA2OjwoO0YYebD++1QIRPWLifI/tk6fUzI4kIh4+4ukmvdlk+D6dBSIoL2Wl9Q4oPUaqDfeWs7b/XJLMXBW1nqtwITY+ILTB6PQNNAufXGPVnSMzuu9d1SWvZNV+NnLWDSujIlwZ3rg8Zvmw1RMFXpujLhGwxjT91AMkzf4C/wmeMUGwbCWvyVm3WGd8FGADkV3Tl960GztXHTgfKyGWUuGiaP7nfSO8Ngk0pP/kNu3lwAIYzr49pAjRUu+JoIB7Z9cZfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fV1vWtqeDfAjPxOqM/HyBgRHtEw87yfkBqug8JYhOxM=;
 b=xHxwPMYP17LuYPGNjscA92PHy1VXK7jsh0U6OIoUROKyIH5SebYi7ZQruAoI1cLgLt9vPwGOkhgz+ikXKf6ELRkdiATSn+C6G+yjd5Ig2OuG+iHop8f9FKoMjJ+k3R44ghtXyqTnsfUMSOMWFUKN1s+tCvpIR/G3L1xy6P468odvKLf6OzmeU+W6XB7Gi7dbxIDWRLwXrsaoWYw2NpXYIPPy2sD3yx6OWdHu1QROowtXvfq3aJILqNVVx2Si75YT3/mWiHIfb8CXUSF2fOUfDInQtQyNmgkD7Wto+zKfxrkxKzw/45NM+0mStvgP1+zFHhJF3+bT+npVlGggkRKdtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fV1vWtqeDfAjPxOqM/HyBgRHtEw87yfkBqug8JYhOxM=;
 b=eek6y+uX9TCf8WO0nbU3uqD5Ktr/LhRz65CrQSJmyfEutZt8Eu5JaIsrhKdjRgHx533sKEY0/GuV6d/svM2PCWHthDq+OkMFaHBTZkVc4fJr7c+ErCnOvcj7ZhrzLXOBq7gaXQGqQPNufRo8GU0ZzovSJM0LrjERp1kMNvHr6RhXGhu1F2pCC580wyYSnID+g0i/Xr2Cng3YoOEPV7mhVXk0S+FgQRMsWbzikkWajkCQL2xOGPQ/F8SGhRx7XQCZ+MPvRzy21m4boku6SJc7YYF6PlqdNUMvtzm7gjLEQGP7UQFiYUlqkySB3mTuDVPijDir4M2SCUvCXNqTCT9o7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by VI0PR04MB11889.eurprd04.prod.outlook.com (2603:10a6:800:305::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.24; Tue, 10 Mar
 2026 17:01:02 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 17:01:01 +0000
Date: Tue, 10 Mar 2026 13:00:54 -0400
From: Frank Li <Frank.li@nxp.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	lee@kernel.org, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 5/7] regulator: p3h2x4x: Add driver for on-die
 regulators in NXP P3H2x4x i3c hub
Message-ID: <abBOMKufTgELkDEP@lizhi-Precision-Tower-5810>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-5-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-5-lakshay.piplani@nxp.com>
X-ClientProxiedBy: SA9PR10CA0018.namprd10.prod.outlook.com
 (2603:10b6:806:a7::23) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|VI0PR04MB11889:EE_
X-MS-Office365-Filtering-Correlation-Id: f0dbc211-7d81-4856-ab81-08de7ec69bc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|52116014|7416014|38350700014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	C7QykUv2u/8mw2cpYLHQyDIhWJMD11xTBDApZHtt1ywKJVdYIniZXVSm6xOwyxwnVLLoQukf1Ucpm7XJxui0lc8QJqI2kvXEBvoP5pLIxmKqvasya73HQCR3f9ZcAaw5GUB5pZZBWqzTr8R5Pgpfl+IvX8cccoS7CX1xTXf+bx+aLwPC4bug7CNZiPjIjx0m+T8JpYBqc0zFsySDpk/HP/Z6A4X5t8INHzCnVffU1MnvZMMbeetIQvyK0d5l8WsqIyRS6tz7mEJAjI/AfRtl/rGPaynrVPRz4U/jrfiusxJoK4qcQzLWegMQQgRUdyZkvzWYQArZ5IH4JRd6MOzAP4mE+EO60xpwSB4YNdsQzlcEDCzSi8EfatFh5TWAwxriVf6kfo1mWNH53Busm8FYkD7R6otwlTyqK784wQrPJ/8n3IuYP7ZPQ5Luco/iUrDqmy1YBMpmHh+Hi0aO6jtenqeGhS60ALI/yuFICcElmTlRqcSz2oCqFp9rm2tJyOf/mf7TjbhYG1SWgOVbquGEPDLp7/daYJa/Tb1wkNqj45ShEtQtzW+2Xc9mPSTyhZyZfiL/tZPPtj44VSGKNMELbllu4NTNJDbhz6iMIjg4hXx0Kg5qxgirYNRH7GUgHEL6ZlcyTsUXsvYqcJDxlOOOJAgIkaTv6AhjyW0bbq5Rqbd1ITNQ+AOa7844I6iOlLdI/XxHdepYKq+kMEyO1ukdUmTDe5Ml9BYV1u2HmM1Fd7N1w2hw9/oNc9fj7Ub/BTBj0XZ+hW+5RGkjxiccQlK6/gSU1LQwE1YD6UAEZQGKoT0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(52116014)(7416014)(38350700014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?7DmlIQNnhkWfIRB2G4woESKQsZiVFx5/FNwycDf3GEmzYtP/AeB5VAxAep2Z?=
 =?us-ascii?Q?bddHXFDlbfu8my9rdzg2Ylj7pvkJOd9rzRJbvRkHeU2CVSNeC95MM5vbGDPp?=
 =?us-ascii?Q?Un0gMIt1tVs6X7XogNHhz4bCdXT3TzzvIqLMmGlNoCOhhEro1cmE1X/PnQvs?=
 =?us-ascii?Q?ORjrc/BAinXacSQQ2X+nvioMZC+t7XWyIFgtHMH80bx/tbWg+Jrh18scw81I?=
 =?us-ascii?Q?s09CUeZib6uuu/75jGfc4Jfx41ksrwLqH95F0sgGjQbpgseZN+NjPmZmHz9J?=
 =?us-ascii?Q?JixNZDKSSWfKIEPsSLYRdg3ttTyUFqClc/DRku/b6j8mclwhv55q3LlWKN/A?=
 =?us-ascii?Q?+ZcHN4JW2CiBN6G7KObJD9NbvfNYuX7Ok76tRWnylh198s6dnCNZkLlatW6a?=
 =?us-ascii?Q?hB6PNrCJXZff/SQisciQcCn32eGwCDJqVW3/rtARRh+1claE1c9G/YjMIlBi?=
 =?us-ascii?Q?tbMbr3vzSO6hguMWacnE+qmr1nh8k+yqchaFT+6al/YTS0Fdw1TDqEC+QCiP?=
 =?us-ascii?Q?JA52ScQVKcq9j0+nzqouu/Xb6cQMzdkJuN+dO6Eli/DCoCv8QadMh+KH+C+c?=
 =?us-ascii?Q?9hB4tEzPnB0rvC17Z7m7q/hw1+9jHvZmPNtHBCeUapsmjAA3WsC1qEv6qFA3?=
 =?us-ascii?Q?owGix0V7BFeqWScbrp+DIylMLCE95fMna5KZvlQVdCsnuplKXkfs8SF4i1R1?=
 =?us-ascii?Q?RppcfXvvTv7mFu7i5LSuzNPkCrBot84GTGXXZb1AHRPeOqKF55rQckg43TZU?=
 =?us-ascii?Q?IJP7qfOfs4ajz2o/4oQmTZVUYsgwS3qWV9OhbwB0NZ72kk9kOt/Nfp1Kj+6S?=
 =?us-ascii?Q?w4fYTNvSsxwdA8zdm+vGQwIEwhAOMcsXVPNx0CbP6T3qs4VsvpWxI765a6tD?=
 =?us-ascii?Q?/hfzdZHYoBBrhrX+QjLhkDBv1+pQIv3WhjDO08uj5AUcfZMq8rtbA8eX/3k0?=
 =?us-ascii?Q?lGsz7RuYZZTcaRwbDeOf2WjNGA3jcq+RfovboCqwq452vMGFTeBi0Odnv1QH?=
 =?us-ascii?Q?d4vZwhlpBe0mdQZMFYUsm+4fh2WhIxPq8BsD9LNntVB14J6M78Cgpp9upLDs?=
 =?us-ascii?Q?t8JnAhMdVFvQ0O1Gn1TaQ6oXHsbLtC9chVBaBHGtUugLAMC80BT+n/VMB7Pv?=
 =?us-ascii?Q?g5vgi8GaQtN5AsjGPBOteGwCTY0SH2ymxFzXck69Z6aZ0h5+p/lu2Dv5bx/f?=
 =?us-ascii?Q?sCEoQcDv4MFGaAzrnBqlD/7X1ORVr5GBqcjdYy9U7rRAsrUQMfOYJPP+zRcq?=
 =?us-ascii?Q?CVzPT9QDhNAcQ9WG1CdaOzaUnZa7p54NRqQ+Ar2hGoMY7QEeK+qrNfAwlZqa?=
 =?us-ascii?Q?8X2S5vUwG7p1x1Tin5rJbc5my5DDNtvqCgZuzcBMAQxQnB0Fq4iPDai6Vpdg?=
 =?us-ascii?Q?h4VT9bu4gQs7STEM0SQeEEgbLS+Yv/7e0oPAY6aurJl34rCQDU+XeQV1o7oR?=
 =?us-ascii?Q?N+pTdC4jTxazVSEcztw6ScRnhwDWeqz6hOI5IjOAraCo0ZNzh+ykg3EG/hse?=
 =?us-ascii?Q?+iHYFYwj2J3tKIKyM92OhilDLOIkXrfLKH/HtSG8c+4YoS1clqXjdbq02bQD?=
 =?us-ascii?Q?PBDdeXLlgVDoePuA7WDgbSmAFwzwG7ScxoPOH7u5+SN7GhRyMqyn0hN9iQMO?=
 =?us-ascii?Q?FfozkB1anr8zTECeZ4hPi9yiItAHjMwwGi+XJ3aQSke9N+SyPrZABwFp4JQo?=
 =?us-ascii?Q?4qUyi1XnBfOsv8xZu+JcNfdpmQZhi7DMTAadl7n7qhaKzw3bB7MjMLuefACi?=
 =?us-ascii?Q?EpbZByutqg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0dbc211-7d81-4856-ab81-08de7ec69bc9
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 17:01:01.7942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ga/808ZZS/FVKX5ahlc5rs+OpTG8DeuJt0itY01T7patphIOGY780utcFPunYhAHPyFydBo5YC4tWJdpBBBQmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11889
X-Rspamd-Queue-Id: 7690725554A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273639-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,gmail.com,nxp.com];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,infradead.org:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:27:25PM +0530, Lakshay Piplani wrote:
> From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
>
> The NXP P3H2x4x family integrates on-die regulators alongside I3C hub
> functionality. This driver registers the regulators using the MFD
> framework and exposes them via the regulator subsystem.
>
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
>
> ---
Reviewed-by: Frank Li <Frank.Li@nxp.com>

> Changes in v6:
>  - Use DEFINE_LOCK_GUARD_1 for reg lock/unlock
>
> Changes in v5:
>  - Updated dev_err_probe() for regmap_init failure.
>  - Updated module description
>
> Changes in v4:
>  - Split the driver into three separate patches (mfd, regulator and I3C hub)
>  - Introduced driver for on-die regulators in NXP P3H2x4x I3C hub
> ---
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/regulator/Kconfig                     |  10 +
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/p3h2840_i3c_hub_regulator.c | 219 ++++++++++++++++++
>  4 files changed, 231 insertions(+)
>  create mode 100644 drivers/regulator/p3h2840_i3c_hub_regulator.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cc33c6c300e4..2fc44b489ea1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19115,6 +19115,7 @@ L:	linux-i3c-owner@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
>  F:	drivers/mfd/p3h2840.c
> +F:	drivers/regulator/p3h2840_i3c_hub_regulator.c
>  F:	include/linux/mfd/p3h2840.h
>
>  NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index a708fc63f581..f3f57b74e2ad 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -1019,6 +1019,16 @@ config REGULATOR_MTK_DVFSRC
>  	  of Mediatek. It allows for voting on regulator state
>  	  between multiple users.
>
> +config REGULATOR_P3H2X4X
> +       tristate "P3H2X4X regulator support"
> +       depends on MFD_P3H2X4X
> +       help
> +         This driver provides support for the voltage regulators of the
> +         P3H244x/P3H284x multi-function I3C Hub device.
> +
> +         Say M here if you want to include support for this regulator as
> +         a module. The module will be named "p3h2840_i3c_hub_regulator".
> +
>  config REGULATOR_PALMAS
>  	tristate "TI Palmas PMIC Regulators"
>  	depends on MFD_PALMAS
> diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
> index 35639f3115fd..46f586ccde63 100644
> --- a/drivers/regulator/Makefile
> +++ b/drivers/regulator/Makefile
> @@ -128,6 +128,7 @@ obj-$(CONFIG_REGULATOR_QCOM_RPMH) += qcom-rpmh-regulator.o
>  obj-$(CONFIG_REGULATOR_QCOM_SMD_RPM) += qcom_smd-regulator.o
>  obj-$(CONFIG_REGULATOR_QCOM_SPMI) += qcom_spmi-regulator.o
>  obj-$(CONFIG_REGULATOR_QCOM_USB_VBUS) += qcom_usb_vbus-regulator.o
> +obj-$(CONFIG_REGULATOR_P3H2X4X) += p3h2840_i3c_hub_regulator.o
>  obj-$(CONFIG_REGULATOR_PALMAS) += palmas-regulator.o
>  obj-$(CONFIG_REGULATOR_PCA9450) += pca9450-regulator.o
>  obj-$(CONFIG_REGULATOR_PF0900) += pf0900-regulator.o
> diff --git a/drivers/regulator/p3h2840_i3c_hub_regulator.c b/drivers/regulator/p3h2840_i3c_hub_regulator.c
> new file mode 100644
> index 000000000000..b2d31ecd5f19
> --- /dev/null
> +++ b/drivers/regulator/p3h2840_i3c_hub_regulator.c
> @@ -0,0 +1,219 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2025 NXP
> + * This P3H2x4x driver file contain functions for enable/disable regulator and voltage set/get.
> + */
> +#include <linux/bitfield.h>
> +#include <linux/cleanup.h>
> +#include <linux/mfd/p3h2840.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/driver.h>
> +
> +#define P3H2x4x_LDO_AND_PULLUP_CONF				0x19
> +#define P3H2x4x_LDO_ENABLE_DISABLE_MASK				GENMASK(3, 0)
> +#define P3H2x4x_CP0_EN_LDO				        BIT(0)
> +#define P3H2x4x_CP1_EN_LDO				        BIT(1)
> +#define P3H2x4x_TP0145_EN_LDO					BIT(2)
> +#define P3H2x4x_TP2367_EN_LDO					BIT(3)
> +
> +#define P3H2x4x_NET_OPER_MODE_CONF				0x15
> +#define P3H2x4x_VCCIO_LDO_CONF					0x16
> +#define P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK			GENMASK(1, 0)
> +#define P3H2x4x_CP0_VCCIO_LDO_VOLTAGE(x)	\
> +		FIELD_PREP(P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK, x)
> +#define P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK			GENMASK(3, 2)
> +#define P3H2x4x_CP1_VCCIO_LDO_VOLTAGE(x)	\
> +		FIELD_PREP(P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK, x)
> +#define P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK			GENMASK(5, 4)
> +#define P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE(x)	\
> +		FIELD_PREP(P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK, x)
> +#define P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK			GENMASK(7, 6)
> +#define P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE(x)	\
> +		FIELD_PREP(P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK, x)
> +#define P3H2x4x_LDO_COUNT					4
> +
> +struct p3h2x4x_regulator_dev {
> +	struct regulator_dev *rp3h2x4x_dev[P3H2x4x_LDO_COUNT];
> +	struct regmap *regmap;
> +};
> +
> +struct p3h2x4x_reg_state {
> +	unsigned int orig;
> +	bool restore;
> +};
> +
> +static void p3h2x4x_reg_guard_enter(struct regulator_dev *rdev,
> +				    struct p3h2x4x_reg_state *state)
> +{
> +	state->restore = false;
> +
> +	if (regmap_read(rdev->regmap,
> +			P3H2x4x_DEV_REG_PROTECTION_CODE,
> +			&state->orig))
> +		return;
> +
> +	if (state->orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
> +		regmap_write(rdev->regmap,
> +			     P3H2x4x_DEV_REG_PROTECTION_CODE,
> +			     P3H2x4x_REGISTERS_UNLOCK_CODE);
> +		state->restore = true;
> +	}
> +}
> +
> +static void p3h2x4x_reg_guard_exit(struct regulator_dev *rdev,
> +				   struct p3h2x4x_reg_state *state)
> +{
> +	if (state->restore)
> +		regmap_write(rdev->regmap,
> +			     P3H2x4x_DEV_REG_PROTECTION_CODE,
> +			     state->orig);
> +}
> +
> +DEFINE_LOCK_GUARD_1(p3h2x4x_reg, struct regulator_dev,
> +		    p3h2x4x_reg_guard_enter(_T->lock, &_T->state),
> +		    p3h2x4x_reg_guard_exit(_T->lock, &_T->state),
> +		    struct p3h2x4x_reg_state state);
> +
> +static int p3h2x4x_regulator_enable(struct regulator_dev *rdev)
> +{
> +	guard(p3h2x4x_reg)(rdev);
> +	return regulator_enable_regmap(rdev);
> +}
> +
> +static int p3h2x4x_regulator_disable(struct regulator_dev *rdev)
> +{
> +	guard(p3h2x4x_reg)(rdev);
> +	return regulator_disable_regmap(rdev);
> +}
> +
> +static int p3h2x4x_regulator_set_voltage_sel(struct regulator_dev *rdev,
> +					     unsigned int sel)
> +{
> +	guard(p3h2x4x_reg)(rdev);
> +	return regulator_set_voltage_sel_regmap(rdev, sel);
> +}
> +
> +static const struct regulator_ops p3h2x4x_ldo_ops = {
> +	.list_voltage = regulator_list_voltage_table,
> +	.map_voltage = regulator_map_voltage_iterate,
> +	.set_voltage_sel = p3h2x4x_regulator_set_voltage_sel,
> +	.get_voltage_sel = regulator_get_voltage_sel_regmap,
> +	.enable = p3h2x4x_regulator_enable,
> +	.disable = p3h2x4x_regulator_disable,
> +	.is_enabled = regulator_is_enabled_regmap,
> +};
> +
> +static const unsigned int p3h2x4x_voltage_table[] = {
> +	1000000,
> +	1100000,
> +	1200000,
> +	1800000,
> +};
> +
> +static struct regulator_desc p3h2x4x_regulators[] = {
> +	{
> +		.name = "ldo-cp0",
> +		.of_match = of_match_ptr("ldo-cp0"),
> +		.regulators_node = of_match_ptr("regulators"),
> +		.volt_table = p3h2x4x_voltage_table,
> +		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
> +		.ops = &p3h2x4x_ldo_ops,
> +		.type = REGULATOR_VOLTAGE,
> +		.owner = THIS_MODULE,
> +		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
> +		.enable_mask = P3H2x4x_CP0_EN_LDO,
> +		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
> +		.vsel_mask = P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK,
> +	},
> +	{
> +		.name = "ldo-cp1",
> +		.of_match = of_match_ptr("ldo-cp1"),
> +		.regulators_node = of_match_ptr("regulators"),
> +		.volt_table = p3h2x4x_voltage_table,
> +		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
> +		.ops = &p3h2x4x_ldo_ops,
> +		.type = REGULATOR_VOLTAGE,
> +		.owner = THIS_MODULE,
> +		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
> +		.enable_mask = P3H2x4x_CP1_EN_LDO,
> +		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
> +		.vsel_mask = P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK,
> +	},
> +	{
> +		.name = "ldo-tpg0",
> +		.of_match = of_match_ptr("ldo-tpg0"),
> +		.regulators_node = of_match_ptr("regulators"),
> +		.volt_table = p3h2x4x_voltage_table,
> +		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
> +		.ops = &p3h2x4x_ldo_ops,
> +		.type = REGULATOR_VOLTAGE,
> +		.owner = THIS_MODULE,
> +		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
> +		.enable_mask = P3H2x4x_TP0145_EN_LDO,
> +		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
> +		.vsel_mask = P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK,
> +	},
> +	{
> +		.name = "ldo-tpg1",
> +		.of_match = of_match_ptr("ldo-tpg1"),
> +		.regulators_node = of_match_ptr("regulators"),
> +		.volt_table = p3h2x4x_voltage_table,
> +		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
> +		.ops = &p3h2x4x_ldo_ops,
> +		.type = REGULATOR_VOLTAGE,
> +		.owner = THIS_MODULE,
> +		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
> +		.enable_mask = P3H2x4x_TP2367_EN_LDO,
> +		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
> +		.vsel_mask = P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK,
> +	},
> +};
> +
> +static int p3h2x4x_regulator_probe(struct platform_device *pdev)
> +{
> +	struct p3h2x4x_dev *p3h2x4x = dev_get_drvdata(pdev->dev.parent);
> +	struct p3h2x4x_regulator_dev *p3h2x4x_regulator;
> +	struct regulator_config rcfg = { };
> +	struct device *dev = &pdev->dev;
> +	struct regulator_dev *rdev;
> +	int i;
> +
> +	p3h2x4x_regulator = devm_kzalloc(dev, sizeof(*p3h2x4x_regulator), GFP_KERNEL);
> +	if (!p3h2x4x_regulator)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, p3h2x4x_regulator);
> +
> +	p3h2x4x_regulator->regmap = p3h2x4x->regmap;
> +	device_set_of_node_from_dev(dev, dev->parent);
> +
> +	rcfg.dev = dev;
> +	rcfg.dev->of_node = dev->of_node;
> +	rcfg.regmap = p3h2x4x_regulator->regmap;
> +	rcfg.driver_data = p3h2x4x_regulator;
> +
> +	for (i = 0; i < ARRAY_SIZE(p3h2x4x_regulators); i++) {
> +		rdev = devm_regulator_register(&pdev->dev, &p3h2x4x_regulators[i], &rcfg);
> +		if (IS_ERR(rdev))
> +			return dev_err_probe(dev, PTR_ERR(rdev), "Failed to register %s\n",
> +					     p3h2x4x_regulators[i].name);
> +		p3h2x4x_regulator->rp3h2x4x_dev[i] = rdev;
> +	}
> +	return 0;
> +}
> +
> +static struct platform_driver p3h2x4x_regulator_driver = {
> +	.driver = {
> +		.name = "p3h2x4x-regulator",
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> +	},
> +	.probe = p3h2x4x_regulator_probe,
> +};
> +module_platform_driver(p3h2x4x_regulator_driver);
> +
> +MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
> +MODULE_AUTHOR("Vikash Bansal <vikash.bansal@nxp.com>");
> +MODULE_DESCRIPTION("P3H2x4x I3C HUB Regulator driver");
> +MODULE_LICENSE("GPL");
> --
> 2.25.1
>

