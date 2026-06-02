Return-Path: <devicetree+bounces-305676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IqZ6BLnbHmqmWQAAu9opvQ
	(envelope-from <devicetree+bounces-305676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:33:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AF462E871
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:33:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=d5cRhdEh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305676-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305676-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B13D301F325
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2427E2D1F40;
	Tue,  2 Jun 2026 13:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013013.outbound.protection.outlook.com [40.107.159.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B794833A711;
	Tue,  2 Jun 2026 13:26:44 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406806; cv=fail; b=S9z2SndXnjEhLDU0ASN2gxOkXUN5MjVd0TaB5/LeF++bTUj8fcfyabvdO1rg/e1vyeHLzSAWiE51bFJLqlwJ/julwCOXt3pN6KeooTRhNAjiXSrF2B8qMorMT3lPEPlKfNWS6E4VhoUajRn3ZcsirwB1R1ExSQrSlfz2xLpN9wI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406806; c=relaxed/simple;
	bh=Uf7GCvnswYtjzFMNOwpik0COAIQu3w22WcVw5d/5DJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=F0HBA61pt6A6UO9wFYiy6Ejn0NmJRqL3cvxg8eaDo64ciVDZjUOcckt7pWyj4FyJZvRnmcvhsxp+Aq5Fb3ls66oIn3CIcw4UzGKRyYIp3F0b5dsVfo12zn8bnW2kfKucotUOtrL/b0bz6GJtFb5GOizyFO/7hVvPMtLgS1ivnHE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=d5cRhdEh; arc=fail smtp.client-ip=40.107.159.13
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KX8HklwpNJopbBkc4eIYdrLE00ffP2hNYcqK8DNtFHhUvw23jU+InQAU3IklMPyFCmO95dUobtOAB/S4Q+ZZ9/k5BexQK5fc1+pA9qZkioZyjnYQk9s1glipQxDnEDAvu2G0RHDRdA11OB8uTMPOZdOS5tAGk4z2+V4e3fC+RSYBvVG6Rq4ArL3HGdF0fISy6ctjkFs21vD+M+jKzgkRTGtY8J42Xwyo2rooj4ughBcRbKogFpHt9F5oOb8qsOpmpioRDOU6cVYBlUwI/s3fRQzhimSxOhFMjuW2mMitCxf0UG489Bej2bfA5ffpYzZRVH1ai8Ep8++Fqy/2VPlIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SPBfYogXyJ9Rtedz5EIOhEyJsTuSAoUt3DAIFCpDvRo=;
 b=AoQ7uUEjhFdtuKyRVCjSOsxwOPLUYVsgovDdmqrajjWsP3O8sR5GaHXkcnb7azWK2K39OYiJsD0mHRUqt0GqS+Q55gChm3X1FfvoPAp5JqsUMmdyEBYKNnqhWklpQXR+osmr+Mxt73PiDKsCYBKCDxjkgw7zgrB9fp+QFY0vcIucjDvpYjee30JHTW1Q9r8NSfsMxEsgZSiwWCqW01h1Bz+xCVzEn91GslSQ1sYf0jbTVa6/PuDahuu7WbgRxnK4jT8NI1DhysYMNRVBfoAlf3qj8kkkoe98cFrVUneAgpWMdXuaamjVfTqskWw7XnHsXqPDswSsJfc96btObJGXgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SPBfYogXyJ9Rtedz5EIOhEyJsTuSAoUt3DAIFCpDvRo=;
 b=d5cRhdEh8EuXiqUM4Obr+RAR5TLl3398uzeSG0b5N+Mxef5yZlJUK6hWULDjaSLIrxL0K8S82apTIt+6dtv2g42CX8TnNVeuxF51ZlgPvxFZ4StyHX+vNABEe4WqFNFajGutzVOfqeisMwmGFN0gSJjpOc5t0uTwbEAxDFxSNLGbCJHLe4QFLDN79MbmAKMVKRAhibH+qM0es/tEsramaXrLgQNUKgOef/KbilWi2L9Gw0F223mOW70CJz4mZFZK6WqpsNYFlju+P+clnMuVPhsDtw1C7esh4HH4ncqJ+5+IwGOq2c3QGL8oo3a2cGlqRuzkXael2yDSC7vTxoEjQg==
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AM9PR04MB7554.eurprd04.prod.outlook.com (2603:10a6:20b:2da::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 13:26:41 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%3]) with mapi id 15.21.0071.015; Tue, 2 Jun 2026
 13:26:41 +0000
Date: Tue, 2 Jun 2026 09:26:32 -0400
From: Frank Li <Frank.li@nxp.com>
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	NXP S32 Linux <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>,
	Alberto Ruiz <aruizrui@redhat.com>,
	Enric Balletbo <eballetb@redhat.com>
Subject: Re: [PATCH v4 0/1] add PWM DTS support for S32G2/S32G3 SoCs
Message-ID: <ah7aCJwV3cIPmYKM@lizhi-Precision-Tower-5810>
References: <20260602102351.3477106-1-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602102351.3477106-1-khristineandreea.barbulescu@oss.nxp.com>
X-ClientProxiedBy: PH7PR13CA0003.namprd13.prod.outlook.com
 (2603:10b6:510:174::14) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AM9PR04MB7554:EE_
X-MS-Office365-Filtering-Correlation-Id: 73d2b809-8164-485c-4b51-08dec0aa94e3
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|19092799006|11063799006|56012099006|18002099003|22082099003|38350700014;
X-Microsoft-Antispam-Message-Info:
 prApVeMBUn2lWYZpF7zZtp2kOlucNssnUewbnZxx2OwX1oogEgLuDQIqoGC6c/3URqZeGq9avuvUfEXcyPNdSeXuRz8f3zMD4Nj82RE2S/iX2JorhtB5q3SI+shCwZIlynvjiT6ATtJPOmZGlvbfKKjAhc21f0jcI17m6Qv1wVI4vtDx1VuvVujYNhmcDQe5j+IXqIQWrm4nybTOFzMK/DLzUfVXboHW90IzRet8ZlAntKJUIixOrrqZI44qq2NEthKUf3nDl0GDBaxxG0F7it2S9ehk0Jt/Rxl0HzLB/pGmaNVdKPZrXIbMxvwmvYOMU2C6VD5Q+roFolXlLt1aTB7ojfKLDPgHATKNTdxUh7Xs+QSJO2y/TjiJ5WjjMobCt9nfHA+nQ6wyShOoszI/8FdE3JcGMFqtQ6T9YpmwS0ZAAHnWOI92dXjay824+eEN7UhYfxsxKE/OVpkeJfD73cLn/4FWqEbf3ncvmzED/TsPiFPGR0CE4eCT2ldwSG1HT7+K88knCrILevfT4ulLY+D9vA8nkpv/nXJpTOlq8dlRn6KO8saw/miiDsRQeWesXtXsjQcAz1hI/JNzLTOoD6Qy3v2uKIpaivD0kdzZOtbUtzoQG5rTccwroQGHGxuszwyyFhjcr7507IAKh3+6su4RdDRsSn9zcUdqocOSRR/GjHM/1Y6oLjsaV7hucdlhRclrtdpEBrGLw8TjUFOvG76zyWB7G+yHJnJjhNR8GTbgv46lQZTrHU5ZAAn/bOiv
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(19092799006)(11063799006)(56012099006)(18002099003)(22082099003)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?gTBxqayd5j3uxiKxhXKqc74C/sJMhkfmuanI9VDlpaPneGlfFpy2boa7yo52?=
 =?us-ascii?Q?a+DUGdqeIEdlv0SiSfgG3UXMI9b7O8XGZKTzn2kfIaOUHmXiXcRwu7y7sBV/?=
 =?us-ascii?Q?0ZL8ZVzyqtfBtqeW8ZCGrGTxUp6MqtYgGFTrW/bdIJLmATlzT8LD64CnpVof?=
 =?us-ascii?Q?Mshs6wgadRYhPQwktgOg6gyaNZnMPXHjJS0Qh3UAHZewScwxh6pbW/zC/2FC?=
 =?us-ascii?Q?hy602krlpdReZhgL7EnUPPTOhGQ1fhw4KrXHpbfB53vwxbjod/zAxXrsPN6s?=
 =?us-ascii?Q?CDMftrXhNU00Fn7GODs3poDV6dRvQcHtuQ/9V0JQkZBDb2fXjwpzKmy608br?=
 =?us-ascii?Q?VvDqoXttZBEQfkpTzuDEbGzH+FqDfheQUkp5g4DhIJbk1vC4iWuZOSkGmIEz?=
 =?us-ascii?Q?6Xn52TqEZG1KhviRYXQEhD3hCika+3r6hwE4MZCNJ51PIVe6VXgx3ONasBR0?=
 =?us-ascii?Q?c6cV+xFb0Ia6X48mi8/LyfNDPOUkBIfoA59HzGHR9V/GtBPDIB+2NHzaNA0H?=
 =?us-ascii?Q?tKiqBkHC/oXQ+W83ZeUy13WvwGgo+hXWXHNGMAr8quDRQgUqbY4h+txeCe/v?=
 =?us-ascii?Q?QfE3UbOjrfVavCXipI1/4BqFafYnFJ6dT9zgGeljYbNP+oXWiFDsvWGQbo7+?=
 =?us-ascii?Q?gxR/nk79PfidxSFIJJpueP9g6+ZoXm6mCCVhU20XbBZNoL74AwTSuJjPWk+p?=
 =?us-ascii?Q?CJVn22K80+ldk3OO9Eoa+C9DZh+UUfv+xsfENlYrckuorVlcVjpt6FJIktQE?=
 =?us-ascii?Q?VEFZOBRoomDaPV4cxYPnqZepEvX3TYe9jWftIHS3KGm7wt3D9MfxQ+6uBWFg?=
 =?us-ascii?Q?eg7XwSRUnmjdi/yAXlzbGjn/yJsIPBAm5RSXJN83HkZX+jPl0oboApbzL84d?=
 =?us-ascii?Q?FmsdTO0LouZwsn5iVWiYR73YV6qdUbrKdl61gKhEOJtdpsUfin7Tqpl0Y2CP?=
 =?us-ascii?Q?0xHvn684Wb3HiBtgZIA8D6faXG3/GZ7Q1CnMScnLa4rpcIP3AfL1PEIuilPn?=
 =?us-ascii?Q?eoQmWSMnRtDAIZMbGz0SizzfFKndhbP19ZuYErq9djJkgv3oI2xtVrhz51Jj?=
 =?us-ascii?Q?Zqi+xzGvvKXe4pWUHcqEr/Wn+obWT8iTCbJq27M32xGCP1/oXywmmegDLFzF?=
 =?us-ascii?Q?5FUiKp37ku93zjmDYCWhRx9wzGK/PyepGuouIhZKnrXj0puXcLZrxEORhOqD?=
 =?us-ascii?Q?OSCPKPDlgNaFG517We4egQA2PCTBGHpUOvtkGeC/y3gQJzOOxVlBBCAJ9MRI?=
 =?us-ascii?Q?bUu428zIA3lHY0exk8sxVZmJYA+slCNPmYhwVNuUqgXMC39pBitTNUWCIDlQ?=
 =?us-ascii?Q?MMBg8CLgjZCZs/hLn4bK9+89WeN4ChoL5YSPm1cZ5+FSglQYCZzBWr0pN5AT?=
 =?us-ascii?Q?/oyuKPjY7GbF+nIncIPAY4ehv0kPs0XS1HaN5u3IIXTUhqH+NRyJYHJHGPmH?=
 =?us-ascii?Q?dfUE7PS+7PmanvQoQPU9CPZIURsboXCwPyx6rNT4bM/T6jgGfoaSFom2xS9v?=
 =?us-ascii?Q?uFvnp8Hj6Yl+lLPweZ+q3lbZbQ+eNnHavnAJyBLI3GajOkuMXXT9LxB7g9Ni?=
 =?us-ascii?Q?B0h9VsDscAGFYq2C6mhrPj1qZVu1kMFcwkwGwgVVugcE++0dQa2RZ/HAKKBS?=
 =?us-ascii?Q?EAXIgK/8Clsr18W+586aBEqfuxQ0AP/h6xFrbMurkiIUOhF3XxPFWNMpiarc?=
 =?us-ascii?Q?R8FAPAfEQ8GGZtwHqYzYzD/NNWbfYG1UK5sGQq4sprFs3UBa?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73d2b809-8164-485c-4b51-08dec0aa94e3
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 13:26:41.1893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LD0TMDlLasaEtbfTbxcdoaZEdkLUt4llqQELV7TK2qMKkM3+/PzKfoKTEpvwxpEpDXEf7rxeplYdZzc9kBQ70w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7554
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305676-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:khristineandreea.barbulescu@oss.nxp.com,m:chester62515@gmail.com,m:mbrugger@suse.com,m:ghennadi.procopciuc@oss.nxp.com,m:s.hauer@pengutronix.de,m:festevam@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kernel@pengutronix.de,m:linux-arm-kernel@lists.infradead.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:s32@nxp.com,m:clizzi@redhat.com,m:aruizrui@redhat.com,m:eballetb@redhat.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,oss.nxp.com,pengutronix.de,kernel.org,lists.infradead.org,lists.linux.dev,vger.kernel.org,nxp.com,redhat.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:from_mime,nxp.com:dkim,lizhi-Precision-Tower-5810:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44AF462E871

On Tue, Jun 02, 2026 at 12:23:50PM +0200, Khristine Andreea Barbulescu wrote:
> This patchset aims to add one change to the S32G2/S32G3 dtsi support:
> - Add PWM dts support for S32G SoC based boards

Please bump version at next time. use the same version will cause the
confuse.

Only keep the same version when use RESEND.

Frank
>
> v4 -> v3:
> - fix indentantions again
>
> v3 -> v2:
> - remove vendor internal issue tracker
>
> v2 -> v1:
> - fix indentation alignment
> - use hyphens for pwm pinctrl nodes
> - sort pwm nodes alphabetically
>
> Khristine Andreea Barbulescu (1):
>   arm64: dts: s32g: add PWM support for s32g2 and s32g3
>
>  arch/arm64/boot/dts/freescale/s32g2.dtsi      | 26 +++++++
>  arch/arm64/boot/dts/freescale/s32g3.dtsi      | 28 +++++++
>  .../boot/dts/freescale/s32gxxxa-evb.dtsi      | 78 ++++++++++++++++++-
>  3 files changed, 131 insertions(+), 1 deletion(-)
>
> --
> 2.34.1
>

