Return-Path: <devicetree+bounces-264070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIULM3gKimnKFwAAu9opvQ
	(envelope-from <devicetree+bounces-264070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:25:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8971127C0
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC96A3004F36
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AED3815D6;
	Mon,  9 Feb 2026 16:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="kVjit8KL"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012035.outbound.protection.outlook.com [52.101.66.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C2C3815D0;
	Mon,  9 Feb 2026 16:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.35
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770654325; cv=fail; b=a13uSGjbqeRhMY1ls87snkx9PSoPE1RkTnsEytI3ScWckEhOzcIyO56bMAO4DhgmRQlgNM4oJs+Aq9nd2r41EDfcG5if9l7gXxmaIWJKZP/OBinisLvrWFE76Nr0PDB+FijUaWdvxWw6XQGqnMSN7cFmJZmzvQH0JlL1UfX38KE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770654325; c=relaxed/simple;
	bh=vuNRvhONmy9XIcES+vC/BlFHQaz8sMmxe0AjcI9b8do=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=nFXodfeoki/d/ufl9fZ8C+45+XcWWaqGFvLiqOFB+T2o6ofxGVg+b+l6wmQNsD+GeTALL+98djSjSM6XywoSl2I5N+WdD6IkNAq04V2D9fJoqKF7DJIx2MKC6GUlMtMeTuRjrWOejoeLcdPgB7Bc8UJ8J6DIgqjMWsLY60ZBa60=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=kVjit8KL; arc=fail smtp.client-ip=52.101.66.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PqwE030wYd7OWXchn3H00uu8LZLbmOZmKRv0TvVLoiSHJMm2d+S7ArI4NSdFTYvlRJn79hM1FnOCnnkuiYzDjbX9+ATS15F4ugXJklVMSAL1akGMT1kHr7Xti8v366OVQAbbRjqkQDFZh7m+5zYmUwfLKTDl8DsEwLG9oGjyiCu0xG0NVDC/Zg86g7JpBBsukMfeFH1aElksQc1llDpYdoXsHQ5ozLN4FD34isru2kayqkuugVQyifhFrIUFMGItOUbgjJQntVUxS+fI5R9eVRIwls5I9VJobGZ4eRQNurb01wwiYRbK4UQXSOmGJeUffw6Xh+JjR8gfY/HtGbAF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BAI4qFYDQhCDELVH9YdwlqLm2LZnM3rqanpbeZWBPm8=;
 b=IHi1T3YPLKQ3fXa47rNpaT7JtuhQkL4Gk2ZzwQBuxQaX46YrBOY9tFyJ8ugOdVb8IyzVCjRBvQmA5hG1SxXev+wN4+YjHfdMKsf+KE60Po7+HMulgn1TIpMwAy3kJcDGoAQfFxWEr4OHiU7d3msUJfEKDpDtHTh38rRNS6bfsxK861Zaz2awTRPcnptj1RJHTDKkxjkz/8yQstRLna3vRLp/bxybF1Z8YMm4wRwJuc4eM1LOr3qi7RzHhQQ7wyb78FcKrjaDT9ktAXkbwn51INVy+iX/s+MBXd67/TrpGGwxiAND83FppXpNT5F0gQav9AwcF1+UGzaH3zbsQqViMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BAI4qFYDQhCDELVH9YdwlqLm2LZnM3rqanpbeZWBPm8=;
 b=kVjit8KLLs40hj7ZBQq6ZShlRTh1QyIePbD2GqrctSqjoMiov0OX5q0tXj3zQZ+V4gC90F3361l6cIyo4BeDEGFc0pDRL6Qtq18Bko2A8zid7/Ovp7NbdhTFscYq5z/+BcIRUqn3TQUkIAqLiv8JONSInkK8XpNi1qNAnlnXLaOhNngoeNRyB21IS1UHtfYou/oVky6K4wAAk25Z85vHou/U6J218gXujqGS5xIIUco5NqSGhLbZzdjSVNVLQP5b1QDfxoJO4/slZ0xVQRfA0yvio5hNWbqqHEHCSUDdYVGIobvvgz3x7dk1fBwqqv3oiEedSzwJH4pL3c3yuFXCvQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DU0PR04MB9370.eurprd04.prod.outlook.com (2603:10a6:10:359::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Mon, 9 Feb
 2026 16:25:21 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Mon, 9 Feb 2026
 16:25:21 +0000
Date: Mon, 9 Feb 2026 11:25:11 -0500
From: Frank Li <Frank.li@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: sherry.sun@nxp.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	festevam@gmail.com, kernel@pengutronix.de,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: imx943-evk: Add pcie[0,1] and
 pcie-ep[0,1] support
Message-ID: <aYoKZ9fRromogY27@lizhi-Precision-Tower-5810>
References: <20260209055745.1545129-1-hongxing.zhu@nxp.com>
 <20260209055745.1545129-4-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209055745.1545129-4-hongxing.zhu@nxp.com>
X-ClientProxiedBy: BY3PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::13) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DU0PR04MB9370:EE_
X-MS-Office365-Filtering-Correlation-Id: 24a68d05-d6fb-42cb-dd9a-08de67f7d1c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|7416014|366016|19092799006|1800799024|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?wbUOlUCJT3ZskRAvEU/pACqZDIfQFxWbpvh70EvsobDA1WwJcXurTOAVik7A?=
 =?us-ascii?Q?RGctbaL/OP9Bo+ibX9nZXzarqEd24ZJ6m8OHVT6WI6Jl89fwF1RHQo65h/nq?=
 =?us-ascii?Q?Y8fEfFJHM+s63h2TzL5zOWts16pQTC+qiVJXpmzLNAcC+iUeJjcj5seV1qyl?=
 =?us-ascii?Q?ZRZqPZdMg7LYsm7b0qKKE+s6eu/yi+lXv6vtae9vTReGul1L8Vnk2BZN6mh6?=
 =?us-ascii?Q?c1R2g7P4qY5sSNcV+vWMxt7Wud7yxTeGh+9LNv2Iujpwk5/jg9Sid594fMep?=
 =?us-ascii?Q?e/X/JJq05zOgezMLahXQyJpfZhEDTtBkm5nOmzEIJnuPuLj8+9pBnRjki7dy?=
 =?us-ascii?Q?gpsFZNNSD918sgEBokdDi8amySDxUFLI0oeyNUJM3lV2EmGHq4mzgpclmqjB?=
 =?us-ascii?Q?2WeDPS2AnyT7tnqYvVWlOpa3oltJLHPzK3SqrMrZ9t9qcZfDPxuxyNunQb0e?=
 =?us-ascii?Q?xX7e6beoUZnoM+3AQaAf7Fmw6t1HwaPT768DNOdal0g3pywOFQ6A8lEIx7Od?=
 =?us-ascii?Q?fGCIU6lHgvann6UsoVBPGTO5WqstYY4UoY2D2HRrxAz1uZLxJafAk8mKNYhT?=
 =?us-ascii?Q?/8GIvW7C0Gc40m0Dp1FszVCfz/r3th0FK8nUSa24ZCF4FGXb4e6ETEdyjr9s?=
 =?us-ascii?Q?yDt1VRJp4ytNjVeLkZ8L5CkLL/z50AXPwANQHgmjhOHfRQCK5mjE25Mn+2HK?=
 =?us-ascii?Q?UVqbihIl3qymok8HOtlwJnPwOAc9YekzYBw4PBu+DDHnl4X0+ejGNmekfIXJ?=
 =?us-ascii?Q?w/guXvP93JJdhu1nDOo9fFeETmOKfnAFzAsZ8HOIOJ/o8wfVFFiwx85PBakt?=
 =?us-ascii?Q?L4cnTEJ8l3+A3bCZRGHO/H7eOlP7KO/fI9NGXinOe/NJwhXRt5PORwJ26xNO?=
 =?us-ascii?Q?xefiROxr1oee5gj2lLL2uf/5cKNxfLFTOZuC1kUGOw9W4fevxHdGshMMasCm?=
 =?us-ascii?Q?sLwuCuE0XYqvbkbtxoTrld8JLaoe/r5SRtEyugC7MtIc4S1tL/BEXZDgiEnS?=
 =?us-ascii?Q?D9bOUuzN6ATc33d/VIAhChIGFNu9SuheKz+lujXJeXK/nhOc9694di0OzjR7?=
 =?us-ascii?Q?PYkU20u64OFq+VonJgayzXO01bQe/+KAnePdz+9eV1d5z6Rktv93US18DU0a?=
 =?us-ascii?Q?2qDtBVG0M59vMRSJvAR/vPg+WoYnZJLmk39/cenfW29RF6Nif0lpqwccyLFp?=
 =?us-ascii?Q?AU/Ns0VkdN5CzCGgDr3eJTzjOeMzDpjfv4OrECvuKZI70RSH3cUnIE7nUkMA?=
 =?us-ascii?Q?KFEDpvkhmO/WB3I4mNU99PkOkcflOhtlWn6PI11YjwEMZzLqZQGL39txO9Xo?=
 =?us-ascii?Q?3zz1z5M28pdKIrisIii+h+VfiMNSUDd9whW8ypE7KeNs6ipXC/5JW7h+CDLo?=
 =?us-ascii?Q?myQ5G5eOrktacZzAaIZ5of5MAC75CpjMrnQkc1fBaz8ihHZKv9ZnBxUEVrdp?=
 =?us-ascii?Q?Zd52BWd+f4wHMzb5LDONaEJTDUtHe6Ut82hzVgf+h+EkNsBY9BL7njEQv1PT?=
 =?us-ascii?Q?uhdIpkG1BsS+kp04wfJBCv6I7dbcjWFK7gA8KCMfENZ0UROFB4QZCeYT7+Ra?=
 =?us-ascii?Q?AhHlWfI3G7nYBpdapUkxNLCCTKmgJDZ+rvZX4oIeLv7y6SCl5jEpAVvImxIX?=
 =?us-ascii?Q?6rB/PSYHsrYbBivT0Fuilew=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(7416014)(366016)(19092799006)(1800799024)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?8Q6hmuwXGVBbBblinkPgdXnTdcJJQxfqxsAd8mv57V5WO3MxjwPmnxza9hzI?=
 =?us-ascii?Q?zQ7PGTmXon85vryudUl6+0z5DLcX+MJJNWPI7S2Rb6VL3C7H+c0rEHTPwVUN?=
 =?us-ascii?Q?nRQ5exOTIJH/8Igy380iSp4Kb5BG1W9CfKkhVUv/PDgOdExnjROveK9y9sGf?=
 =?us-ascii?Q?7o+qyFyqjBiHlTT5tuDA/JeU2ZcOlLZoVL/i+QToy6C5U17MZsC8Ej05W0SW?=
 =?us-ascii?Q?AKA5ke1NyTM03IsojA8xAgtSkfmSjAt4R4k3LGILfZZm5XiaBODNZcpVOoVo?=
 =?us-ascii?Q?eVCA5CdFhFIYVCqkrjF8AnGlrn8OeMYGYSd7cXQ/QoC/Nq4Rl2UiQwbCrZ9n?=
 =?us-ascii?Q?qwLPspxxuEuON9lreLG4u2pKF678ssQsXo0Aw/gUq1CO8mtPU8fJNqxZ8m0y?=
 =?us-ascii?Q?eEYdXO+2SYLPBR5wUJUklnIFDsbtJBASM6BZ8gA0jZGeIYO4X1ac8RX8Ypg0?=
 =?us-ascii?Q?rr0WPV1Ep5YEdatpBMU5Lc9R6L4x1f0G3LEtnhh4GOj3IgT8vuoArOeGWqFP?=
 =?us-ascii?Q?HtTY8XHZcC5xtJmAxhWBHPSIg5SfUBSP4ovYJ2HuIl884uS+Mu1MFDsV40QQ?=
 =?us-ascii?Q?F0AV3vaVfbCGezLYPqJELF/tZlEMvdj+BByEd1+tdmEEuxZk8U7EucjaFx6J?=
 =?us-ascii?Q?i9OSBA89gGIEgMURESrHyRbI7yZnOi1kubopRdEUxjrnxtaGdGqwTr17rsQH?=
 =?us-ascii?Q?9KgdTuFcsFjmwvKKmp6Y261zAHHuSmJFIyBIDVYozbt5z+TOgMuDsKwtnxUk?=
 =?us-ascii?Q?FMaOzrH7u2cUtyzh+vewmtKr7g1noTDg326KeLBVlQXAL1Dr79qAY1oKxllU?=
 =?us-ascii?Q?NlGRbsCm7Jn/j+yccxkA/8BvLiKR23GtSGGthvoRlGP1jV5eRhHDwt/i6wKO?=
 =?us-ascii?Q?0iUCTx9AlSOSZkk2qCFwQVyWIR8o1QfAPJdqrVdFutOrBVZfTysi/8z8A/mE?=
 =?us-ascii?Q?tCvWxZBtTMSvTz6TjzogNJP7/oODvN2RHYIAILG1nSqYj5UsK/YvACoZagYa?=
 =?us-ascii?Q?dvu6vPn7KKphyHpyb44qz6Q1r3BWV6T/LFSZ+05SP5Rw4jfKPFjmaDrEk5lN?=
 =?us-ascii?Q?dTP7oNzzsRsoR1obsipsj9mAvIMWsHLFbeE4L10rweX2ul7pO8pcMHPXzjG/?=
 =?us-ascii?Q?bP9IjhGhYhawQZXTVw0kFiaSVhISC/gGiavNxFPoBC7tAoe/d4sAy2GXCyY5?=
 =?us-ascii?Q?iAHesuh73EHFPgOtYNP6UGPKjojMmzX6Q/4fXV5Sbi9o8hB1cU0FDte/XIWa?=
 =?us-ascii?Q?A2MPiQcOtfPDDFKtNhRCE4J6ti8pdAwjE+W/vWQ1FnrtI7jcCs3M2f2PfPJ2?=
 =?us-ascii?Q?wujGGM/iafC4Em3HHweu4e++97OCBcU7rzewu9X7hQp8Hzrg+qE3gbApNGIy?=
 =?us-ascii?Q?NwAjdKxiFizWKrD7DgQjnpLd4kL7mU7yNe/+KQwq4N0KiKZmL6PWLk1yAfPw?=
 =?us-ascii?Q?0cFDZhB8iB8TRYic40w+LXrRG4HzRCesCHIUmj0iUd25sPgwtvyjwJPyNZWA?=
 =?us-ascii?Q?Xc7tHzutHKvK0E0fpun/PP046oNwDV/RMEyOVaZJzfH1tk8nobZ1GM3xOHDb?=
 =?us-ascii?Q?9NqBvJKt0d7cQVbWWcSVotxosd30TiNQ62UaGk47PS06JjvOrISoW6E+YbNl?=
 =?us-ascii?Q?taYjT5E2ADCm1sfK1o8Zb0r+L/gBP1ouHgC0XEEzxsmXjgi36f8YdQq5a45N?=
 =?us-ascii?Q?lSG8jT42PWiqXQzDuhPOW5KGO9l6ZK6SehxtHBeMnyknGfNy?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24a68d05-d6fb-42cb-dd9a-08de67f7d1c0
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 16:25:21.1519
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2s5vjod+hTkj9s0LlubP7aVTAb+XIjrRcvK2nQQuaNG8RrSpu+tvCCW/NXF+EZbMO4PnMppbq4Apa55lLaYHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9370
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264070-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email,nxp.com:dkim]
X-Rspamd-Queue-Id: 6D8971127C0
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 01:57:45PM +0800, Richard Zhu wrote:
> Add pcie[0,1] and pcie-ep[0,1] support.
>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
Reviewed-by: Frank Li <Frank.Li@nxp.com>
>  arch/arm64/boot/dts/freescale/imx943-evk.dts | 82 ++++++++++++++++++++
>  1 file changed, 82 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx943-evk.dts b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> index 765d9d05e489d..524bcb5951151 100644
> --- a/arch/arm64/boot/dts/freescale/imx943-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> @@ -49,6 +49,20 @@ chosen {
>  		stdout-path = &lpuart1;
>  	};
>
> +	pcie_ref_clk: clock-pcie-ref {
> +		compatible = "gpio-gate-clock";
> +		clocks = <&xtal25m>;
> +		#clock-cells = <0>;
> +		enable-gpios = <&pca9670_i2c3 7 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	xtal25m: clock-xtal25m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +		clock-output-names = "xtal_25MHz";
> +	};
> +
>  	dmic: dmic {
>  		compatible = "dmic-codec";
>  		#sound-dai-cells = <0>;
> @@ -70,6 +84,15 @@ reg_m2_pwr: regulator-m2-pwr {
>  		startup-delay-us = <5000>;
>  	};
>
> +	reg_slot_pwr: regulator-slot-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "PCIe slot-power";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pcal6416_i2c3_u46 0 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
>  	reg_m2_wlan: regulator-wlan {
>  		compatible = "regulator-fixed";
>  		regulator-name = "WLAN_EN";
> @@ -641,6 +664,18 @@ IMX94_PAD_GPIO_IO28__LPI2C6_SCL		0x40000b9e
>  		>;
>  	};
>
> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins = <
> +			IMX94_PAD_GPIO_IO20__PCIE1_CLKREQ_B	0x4000031e
> +		>;
> +	};
> +
> +	pinctrl_pcie1: pcie1grp {
> +		fsl,pins = <
> +			IMX94_PAD_GPIO_IO23__PCIE2_CLKREQ_B	0x4000031e
> +		>;
> +	};
> +
>  	pinctrl_pdm: pdmgrp {
>  		fsl,pins = <
>  			IMX94_PAD_PDM_CLK__PDM_CLK			0x31e
> @@ -800,6 +835,53 @@ IMX94_PAD_XSPI1_DQS__XSPI1_A_DQS	0x3fe
>  	};
>  };
>
> +&pcie0 {
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	pinctrl-names = "default";
> +	clocks = <&scmi_clk IMX94_CLK_HSIO>,
> +		 <&scmi_clk IMX94_CLK_HSIOPLL>,
> +		 <&scmi_clk IMX94_CLK_HSIOPLL_VCO>,
> +		 <&scmi_clk IMX94_CLK_HSIOPCIEAUX>,
> +		 <&hsio_blk_ctl 0>,
> +		 <&pcie_ref_clk>;
> +	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
> +		      "ref", "extref";
> +	reset-gpio = <&pcal6416_i2c3_u46 3 GPIO_ACTIVE_LOW>;
> +	vpcie3v3aux-supply = <&reg_m2_wlan>;
> +	supports-clkreq;
> +	status = "okay";
> +};
> +
> +&pcie0_ep {
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	pinctrl-names = "default";
> +	vpcie3v3aux-supply = <&reg_m2_wlan>;
> +	status = "disabled";
> +};
> +
> +&pcie1 {
> +	pinctrl-0 = <&pinctrl_pcie1>;
> +	pinctrl-names = "default";
> +	clocks = <&scmi_clk IMX94_CLK_HSIO>,
> +		 <&scmi_clk IMX94_CLK_HSIOPLL>,
> +		 <&scmi_clk IMX94_CLK_HSIOPLL_VCO>,
> +		 <&scmi_clk IMX94_CLK_HSIOPCIEAUX>,
> +		 <&hsio_blk_ctl 0>,
> +		 <&pcie_ref_clk>;
> +	clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
> +		      "ref", "extref";
> +	reset-gpio = <&pcal6416_i2c3_u46 1 GPIO_ACTIVE_LOW>;
> +	vpcie3v3aux-supply = <&reg_slot_pwr>;
> +	status = "okay";
> +};
> +
> +&pcie1_ep {
> +	pinctrl-0 = <&pinctrl_pcie1>;
> +	pinctrl-names = "default";
> +	vpcie3v3aux-supply = <&reg_slot_pwr>;
> +	status = "disabled";
> +};
> +
>  &usdhc1 {
>  	pinctrl-0 = <&pinctrl_usdhc1>;
>  	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> --
> 2.37.1
>

