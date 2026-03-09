Return-Path: <devicetree+bounces-273037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QB5bHmv6rmnZKgIAu9opvQ
	(envelope-from <devicetree+bounces-273037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:50:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6346F23D179
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4DFE230399B8
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 16:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8195B285072;
	Mon,  9 Mar 2026 16:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="KWbXM5RJ"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013006.outbound.protection.outlook.com [40.107.162.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47B63BE14A;
	Mon,  9 Mar 2026 16:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773074737; cv=fail; b=t1yZfOzfeZI2x/2RISJFkkJier0EF9WFJmVx8G3QzVSPsiuw3Kv3peXIg2yY+93mZJdVEo43xu9b9H54ZkmF2vNnxLxZU+u0Wi5ap5KcOsqEIK0BLCcirllT05IFefwf0dulc4aU2pCPsKBljpvbkyDQP11eNjdRxGqjp/B2o70=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773074737; c=relaxed/simple;
	bh=M3+UgciYHMid7O3bFvTQXluSa+6/0aNLmFrYxoBykq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=c2OX9A+vi2yzKllUVopEC0UPWVIpMwx3MnTU/DOxFlwSOMavat3U81cNADuc2CHNpQCQ6U4zbigF9F/fVM9zJizw02iiecS4uPDispzEFqy/iycPDA7mnVFVZ4jKkpRUoLuFBcUKhLIjaKRfBhWRT4JsKZGGs8IP+p9Rg5ZVIXw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=KWbXM5RJ; arc=fail smtp.client-ip=40.107.162.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hCdueGXF+yzy6eSmvxkuBotf/Lw/KH5LcPmTV2KrZz8TvHCUSylt7w2+me+ybv6z9I1sgouxgIcq6kp/rNzLYEM5WQgjzUjvFFLeHUUjYwEOyLedLN4e181yUW3Hi7ta8R3MPnI/jwCSote/Rqu/jY6HY/Qa4n9C+YerVvPIam3rkRlzVZVTNgsgW6tsKmJuChpujS7PrOxKkuQwTqPaNNGqyssbOA66GkfqZBvimDdezXls4x8OqqG4ZJfIaIFQOVMlVLFbZvQmnoUoT655JVYqhy3iNgWH+0uPdBlr1XRb6Nwt6dywaPFur9d7/5iDpUDkCG+X5OpzBaWI1ZBDMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WhjtHnFf/hIxrVIQM+BrOpsPRKG1BIEFG+TyCXYeUa4=;
 b=tK4L/87zFTGkV4p5AzE0nv5pinGqTbBoYAiAzo6Xejv8TUpeGsClBFN9kB1fnrBX1XIU5s6a32yo7HYKLRhs39equiPy2miacBlFQnTZe5Caz1IbaNE2C7pa32eTexf9QSb1q+KT6+NyoA4u9zFscKSC3DA+8oaxtGrXUPr6yrRAyG+c72SrSB906nMkTJ3p+bVJ8MvmbelaBHQCBz2f87UvFhW9LTcqXf8rTvkyhU98u56IJzXKk2o37VEWbuP4tyktX3cXf08bnBwD36oYanUw+bl9eFfNI0mTg8YLtM+qVacrSXjT54gCcQzntsuQfAAcn3afdLCKgQ1VZMVLPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WhjtHnFf/hIxrVIQM+BrOpsPRKG1BIEFG+TyCXYeUa4=;
 b=KWbXM5RJubi4MV9EhLJ9xDEJ4vl+mQFpA8N4Vy2DfOH/aHU2dRCUNEhT4TfUdOsIzfBAw1Aqv9bxoGSoKWPewWv6wSxmUtLwFRpojMG4AvyT++e0CFFIBTJCvkwQ4AlgP7SCvTH7GxXd+ldZJcqZrxPWIEIzMgtIIxsoyX79Ds1wtKohVU814Nbx6AH2qqCQ2YEOfLhmwZ/Cx4YGmOqQ5kZ8zzuTJNu6HkRzHuJEAMIcRNCV+4M8JTBsu3L2lkMXOtYTkzfrX1pwhJnWg+TWKXoY28P7narsYQ7flbWUaFCqATDWKty4pq65W+OLjkAz+Afh8hE5wfF8Vn/SVYwZ8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by PA4PR04MB7581.eurprd04.prod.outlook.com (2603:10a6:102:f3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Mon, 9 Mar
 2026 16:45:32 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9678.017; Mon, 9 Mar 2026
 16:45:32 +0000
Date: Mon, 9 Mar 2026 12:45:24 -0400
From: Frank Li <Frank.li@nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Yannic Moog <y.moog@phytec.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 3/3] arm64: dts: imx95-var-dart: Add support for
 Variscite Sonata board
Message-ID: <aa75JLEUDLsKtgdC@lizhi-Precision-Tower-5810>
References: <20260225170347.77841-1-stefano.r@variscite.com>
 <20260225170347.77841-4-stefano.r@variscite.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225170347.77841-4-stefano.r@variscite.com>
X-ClientProxiedBy: SA1P222CA0167.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c3::15) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|PA4PR04MB7581:EE_
X-MS-Office365-Filtering-Correlation-Id: acedf666-6cd8-4721-6923-08de7dfb47ad
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
 dcKawTTGBb06cQXGd4nTRU+RCm+lsyW+8w9awBeAbU2mUAAg4I00FKwTssd9jcKbXCrvR/XSy1flArlhpxihErfEU83N0FsFtz0EHFwD1y7la1IdYeyaJaUDxt+d+1Hw1FFuCltFl2FiI9punjk0Kqv4kBVIVi4tFsvYo0sxrVHxZgRLwblBGfED0Br4Nb0Dc8mxH5UxXJ8rjK9TAaFqQfy8X3olH1fBlrf0nvFyaFa9kKQIe2CoARVtjYnCiyru4i2t3vikwEiBCDVykgTc5tguVjH0rhuTcOXzw5c0fitrii2i8oCuD8fOu8cvsnemAIAw9k7c1Yf7+dS1eckkAxNONUZwhb1hkr2MqCrhLtl/+kzkEKM8khfLkD6e1tJi5fuVHXZ03vg+hDzucWaCdaZ3e9KRrC/JL9nWaEJNgKdH2So97JY5oL6DsNts0qD85xgLzzu6QMVHOWYRizZlnt4oJsXCY2Tr7QO3c6rgvO7N+F4oU9AEZnHNprtvGkz2qudjdi6EVGu6M2Y4/imyK42Q85HXQ3uAwZs7VeieYer6lZaniiro2LEf78OcdY6MA7qOxjVh0nS7+K0kk43eA2pRAhPP7XjSPx83lG+fqVj3A2M90gbeLj8W26rqRTfvgF0QYOGtg0FhMVK8CINItq45n83+CA+nF6WJg3uEVzX9cLMPwcCCJoPc75K9tS6DUG3GcxNqV15qVivnPmTSrJS0eA0N6LcHQz57mlFLTlEXHX2FA580WCj8t2RxJ+af
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?N98ddsdqMX/jMAHlAf2tjr7u7RdIhrgrYv0bJjLNe0buUYyS8iAZNGl3n1Kj?=
 =?us-ascii?Q?j4mDb/P1AalnlQM5vdQjXh3tjYPZ1SYKVfU7ANAbqE4Biz+qYKg5xG9Cus3T?=
 =?us-ascii?Q?sf3qOIgxEXKyQNDvvl1wb9EMESuPPHXm8yaK3uqciP1SL1/6gjCnY5WKyyNU?=
 =?us-ascii?Q?8ijBbSJvpzRmH3YixT7g7kfDsNd/3ld4yF38HTNOk+xdEMooewZkzcAJ72HN?=
 =?us-ascii?Q?F8PA5BBdvJ3XPKplhIg96EUpXhQeUSIgJOfELaS6TPkQyswEr53mlWJnIPV3?=
 =?us-ascii?Q?1pUV+7FMJiRPSJN65PP9gAQNvo4gnoA9dMLmGL+yPRHxJrJAUaS97UEjAXPB?=
 =?us-ascii?Q?O6utPkLyLEnxYQGCTYZXNdpFYxFL/wnuxzQfy2iyJiv53bnNDqDHPtq3GCtv?=
 =?us-ascii?Q?lUUtvgBGiqcf3a7rO8mVN9zZQC3dCVmSLyKnM8rAmNeJ+ZKgSCRrK1Sj+OYh?=
 =?us-ascii?Q?omBlrrjmmZQInOrN8kKdWU5dgpMWsa8FjRp0ZTNbhUOCvyCB7KibmhxAObr9?=
 =?us-ascii?Q?/P22pPGi0yc8+tpK4xmx7XqWy+KdkFRzcC7pEpaWTdWk+KfZQUh4aXIyTHgd?=
 =?us-ascii?Q?VCAN5sdXYweZTFBtL4QLxc1l+yauTNuIfwbLrwXmI5s7y7ouP5RtYIJ2FKBK?=
 =?us-ascii?Q?9L/kaiE2SPxGc4SoV3tTSTg8IIQC0HriTWudNMltLX9iPT4nTpBYR9xdgnxX?=
 =?us-ascii?Q?JsIoAnyOfUqoxKAseEE6pqJE8/J3dZge2FgNaAVCpVmFt1P6eXGnfW/gAjhU?=
 =?us-ascii?Q?C1a9xqaiRA7LBeei5mLERYfyIA1kU8fG7Q0ZzWBDMNG5aeUuzIAH+tUUjNnY?=
 =?us-ascii?Q?K9p3syWpOjWkhl6BzcYiUV+DP+OAhIsNay7RGwl0gdZl7Jw4EnhyT0zq+lJV?=
 =?us-ascii?Q?7Xi0S+2YEDpiG6DHXEPhPFZyo45BwZW5LE4rLe75B6Swi5eTn67Blud6rzDs?=
 =?us-ascii?Q?yqmb21zXEDxPtNRpE6XSj/815ZWbmhWYhX9sVSxLWoLoJ9r7m8JqAp9VoToM?=
 =?us-ascii?Q?Q7OEmD1GIY5nXwrJ4syBo14Z6tAyCJtqj7BCAzQ78sxCAk+EE4SjkjQTvfOL?=
 =?us-ascii?Q?p4V2CRt+CSRiSNwKRazPH9kvF9v18y0NONWRGB63JsDovL6pxTiyLwqxgfXe?=
 =?us-ascii?Q?opEcRMc3fEE72qIuwdpCJovVFNnbvd/QquDYEcEhszwa30Zn6KNE916vZWBg?=
 =?us-ascii?Q?UiGAYWsD8pbTVQqdTDTd7WU8yJtLr6FVcqxjlMBMsEfvQA4yQz0S8JqBHKO+?=
 =?us-ascii?Q?jiwIWPjSnnxIwUS0AqVKGu7qI0eRloW1agO3/B27UQApVeYSOadQGmEbrJVn?=
 =?us-ascii?Q?oWFQ2U/AvoZo8CAOzk55lSPBcNvuCHjRmqdR2HdFEJXnm1RHqy72GC/31fXU?=
 =?us-ascii?Q?sop9yT2YYjhCLgjU86DRsqN6wwabKAJNm2hi9fSI4yvAyieVCHMGyaczucsC?=
 =?us-ascii?Q?BbjJi8XGGzC589RA+FPeP3NcD4pFcilCm+oJ4mPjL0VbQf0gQuXKRMCBPs+J?=
 =?us-ascii?Q?c27422qBkqy1qPzNXWff7lGDPKrL8Z+mPrpYvGKGdE20A6oT+Rg3gOceOxxZ?=
 =?us-ascii?Q?uFFr/5usKVyUaEL9DYsKZ3MIazLUcmJGsE6jer7manh1oxZfXFsh39V8eYvh?=
 =?us-ascii?Q?ZcvnTrz1aR8/MthMwblFUad5SwG7ePkuaaShOb14pg30wjTv2G09DHBoXqvA?=
 =?us-ascii?Q?PW1h/3A7vuEcRRPk5OXFrtG+4XI8t1wB+q8lNt4halK8qr4l?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acedf666-6cd8-4721-6923-08de7dfb47ad
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 16:45:32.8384
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: woOtNXJ5hqkXYNV6csn9tmiVGNPq0O8PK77nAoFwqeEhj0G2icfczDvt0yPI50iOValny2OycEDicdi/sTLS5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7581
X-Rspamd-Queue-Id: 6346F23D179
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273037-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,phytec.de,tq-group.com,norik.com,solid-run.com,toradex.com,lists.linux.dev,lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,variscite.com:url,variscite.com:email]
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 06:03:38PM +0100, Stefano Radaelli wrote:
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> Add device tree support for the Variscite Sonata carrier board with
> the DART-MX95 system on module.
>
> The Sonata board includes
> - uSD Card support
> - USB ports and OTG
> - Additional Gigabit Ethernet interface
> - 10Gb Ethernet SFP+ connector
> - Uart interfaces
> - OV5640 Camera support
> - GPIO Expanders
> - RTC module
> - TPM module
> - PCIE support
>
> Link: https://variscite.com/carrier-boards/sonata-board/
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> ---
...
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led-heartbeat {
> +			label = "Heartbeat";
> +			gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};

gpio-leds should be after gpio-keys.

Can you run https://github.com/lznuaa/dt-format to avoid manual check
such nodes orders.

In past, duplicated nodes was added in sequency update because it is hard
to find duplicate nodes by patch. So we try to enhance node orders for
new dts file to avoid duplicate nodes added in future.

Frank
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
...
> 2.47.3
>

