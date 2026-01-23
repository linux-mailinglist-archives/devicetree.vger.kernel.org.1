Return-Path: <devicetree+bounces-258735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id llBBAYUdc2kzsgAAu9opvQ
	(envelope-from <devicetree+bounces-258735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:04:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E672A71603
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 56B03300B8F0
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 06:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90CB33DEF7;
	Fri, 23 Jan 2026 06:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="bTC96W3O"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011065.outbound.protection.outlook.com [52.101.65.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79DD33C198;
	Fri, 23 Jan 2026 06:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151499; cv=fail; b=r6AT3RQUvve9J9SoDJ2csp4bZb3tgf3nnTQiE7zUUSxI2I5BXXaoJtCKYRPjaXCgHAfjwNaTIVcoS6A4yYpZi1BBded/hsv7StHYdl7E6Uprh7Su2dl4NTFIEGqCKY3DYj1AcynwXOk5XfdtR3+RgoBP4/iqEfe7p7cd5Czy4wY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151499; c=relaxed/simple;
	bh=hRE9RDGY48WJtQtF3CQ31fQb+Du8J3oIxSyTAR7ITgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=stevjkGGAAvyxNT3COXfuY2IqFTB2MQ8Ze2zUQD78O6i7hl6IaA7t6KURqdNeWoeTk40E7zefkFOBy5WWMQaJhZplMGC+W3OTWhbD2LXwYQdw9AoG+SCu8WiqMJNhoOCAsb+YC+AuAJYlBC0wDjl+VGi5InQMDQmuX4oAvD/NlI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=bTC96W3O; arc=fail smtp.client-ip=52.101.65.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MrDMf89ENJGQJPSTQn4HEXlcgZ/tK4pm3feDH33DwJoK0TnZFwGeHUG4LeOns1xMwDkOPgE9bxmD0FDQDlRrgaHRPM4pk0r0WS38G2IRDLi/54zI/k4WlaAgjy2bdcHVXwgt+7CzvkjKGkQFo01HTB1QgUdCAlsTi09CSVTgdk1xqOKCDPQmQNVevkdzZPQT291lBjYj9N42vaYenmTaawyFdbhUrIKEUvAGABU339LqIG7lj0+fSpX1YY5ok2MzyaNKuL+PvgwLEJbuU1yJLKKil5c1PgT8/Vb9Mct4RAyoXaCHHrMboS88dzLtgoy9FqMS88ZvwbkHpI8SJHRiXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=deT4fVBdvecmfuXMwn58mb7RxQajd/EtgezH02UQk7w=;
 b=CP9t+L2yYD4cuzeKl4FGP8dHD/HbbFraJMywZ3KfboveD5Hh0cVc2JB+GC0NljTtUQ/B69TRk3Ooavpe1X91IVwtGtgX06fj7tF7Z7xT3Mm9Mzz3z9OlYa3bMPqRw1pULRMdLcLGiQl3z2ZqNYYjwbfvmNe3dFa+rXKT41x5YuZPtY/QS6l7gDrARV+yXlmpT76tax9Gjxg3JxAq5UbMBVVN+puQRVXyLVpbLTGKFyIxUOeBYNkCKipMPLc6s3Rr+OoeEBKwlFSBWwHDT8+kNnzoq2IeVZUAyjXDUKY9n6nbe8jq3+kuYWGPTVcNasVFN3d4WW/MGxVOAtmXCqY3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deT4fVBdvecmfuXMwn58mb7RxQajd/EtgezH02UQk7w=;
 b=bTC96W3OrBtsLm5artYCx4bVhbYLiyEkavrGxRWBwJYBmoSwr84Nl8H4mUE7zoDqJoqWrLkGhy1K7UECw0EwEuJ/b5STME/ETFwdPFdeuUpQ9iZylTMvHrnTljvYxJQEJT9wNq4fZ1IU6fHcxBhPnPM7zmBcmnyex7gcn/dcPDEHKKwdEHVg9ySqfeVCQv/RMaDa7ll/ttmEHkizP3mL/Hm4a5bCFhHP9VpMBf92XMpqNPjPvY9nAhmhUdtX+QmwRU4cy83YFfEUwx8bYExN8n1M2Mr++fZCdJP1hgzlXSPh9sRrOV4dE0s8S0c5aMAqZa46VSYOXgv10CXbSLiRZA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by PAXPR04MB8253.eurprd04.prod.outlook.com (2603:10a6:102:1bf::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Fri, 23 Jan
 2026 06:58:14 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%5]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 06:58:14 +0000
Date: Fri, 23 Jan 2026 14:58:05 +0800
From: Peng Fan <peng.fan@oss.nxp.com>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexis Czezar Torreno <alexisczezar.torreno@analog.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/5] of: Add of_property_read_[u32,s32]_default
Message-ID: <aXMb/bkMoaOiM6sX@shlinux89>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
 <20260119-add_dt_default-v1-1-db4787ea7a9e@nxp.com>
 <20260120222155.GA1226342-robh@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120222155.GA1226342-robh@kernel.org>
X-ClientProxiedBy: SI1PR02CA0005.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::13) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|PAXPR04MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d2877e-410f-4daa-b017-08de5a4cc724
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|1800799024|19092799006|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?UI+UV8D1EN8fxaquyLVFqSgPFjoSTqkDgmAaw1ObiBr+uuMNBOTue2T//OxY?=
 =?us-ascii?Q?M58n5nc6q0VcjmCtsHf7Afgv/QCDpiWXbhV4oyefAvr0LXwzxtAgzyqvbq2I?=
 =?us-ascii?Q?RkNL53Qh0xMYhPqjgdjB/jGBNjzpOCnTVbDyV4SSP3aJgH/eNwxSQTSHUa1M?=
 =?us-ascii?Q?wW/UUwYIVVp9ItZd1juRxjYkP/lDMknwukNKGHvvkMrGI1g8RiE277T9UIKH?=
 =?us-ascii?Q?xOwZq6PmQQUQK3L3yeErw+zvjMBoIjDzMDrj41VhC4sF576hzEgjZrnF7wSs?=
 =?us-ascii?Q?64OpH2RXzTUFQ0TfoF2QZAKRsduo4Fr2W5SBqMqRW7/C/AVz3fl1eZDtG3C6?=
 =?us-ascii?Q?qOM9v4B8xng3M9ZyrChJvHDDeNKpiWeKxJNV3Nmmhz1/OLCSVQqzRKKobpBY?=
 =?us-ascii?Q?kkCBtfdIiOA6ad2d+vUP/1OmJ5iZxT+BshtWd1GfJ2GobYsVpIyQ+ddaw83p?=
 =?us-ascii?Q?W6TlGh6A3X/mMDjP/DwM+RR3G1WwiMTa7Ul3ZhW6e9FSJl2g4RQrDbK7Cy4/?=
 =?us-ascii?Q?TDjKfnNz/wewIEJqdCkk95iECueLHwAOUbmV3UK45s460o55w0V3wapikeeZ?=
 =?us-ascii?Q?HtLMUQQ+9UeSoS2FRUPxCJhkkX/ZdrsulhtlORk1rOEhrNYTS9UKUXEmUGkr?=
 =?us-ascii?Q?35/9E6bmPFJqiQ2TGku0sa9//qaUx5y40aI22BZ34MrRYstGf5I/ydSCEIyt?=
 =?us-ascii?Q?yxN9WnAYr2zULlvsYmTGFQyRjVSm7JQdt6EZ/QNN87E7BU2egc+B1BDCXRAa?=
 =?us-ascii?Q?/ZuDEh87ao1rclo64ZJx1UI6E6jTl2c5ho120cm6h+NANy3l9B6j7Ep9s73a?=
 =?us-ascii?Q?KMJimgRXvjTOondPxJfmpxiYuH+koFpQVNd3LR01dSYMXMk9hbmztX+lEX48?=
 =?us-ascii?Q?NElBO16+MJ3ODOg/YtpY5Ok5YTepjbagXuXl27tBntLMYgJsTRE6rNka3o9d?=
 =?us-ascii?Q?9zmu0u0sDetKhHSFRyifp6aNUvyrWq/QK83ylhpVjh99OA0VkJgX0iX/mGE6?=
 =?us-ascii?Q?bBEEPCdqi2w6hzV/MtaUPj2Dn3xpwgMELGi7pBaYPMnmRueM0UrJB7lUV/f6?=
 =?us-ascii?Q?PmT2cOyltEw43Gt+B8xy6Ew3gR+XVLp442E4GdTP32y5mjebVajIpShZdNGa?=
 =?us-ascii?Q?M605+AI0cC51MzR+N621g6tN8ST14mWSfAsWkp/GJBnLjt+dr8/OpVsWYXz3?=
 =?us-ascii?Q?8Z8hr8aI9xhLqMyVkMT2gvBvlmavzZkM3xh8yD9gjijL2KsOBJS1dZUC0q+l?=
 =?us-ascii?Q?Zk8SuCDWr6LTdGSYo2M6IApcfbHX9RuU/QuXakcZjHD32FwqKZNpJE2BEapc?=
 =?us-ascii?Q?FbkihwLgAbKMltV6JSsWZfD+w9TttZtxcRZWxWu1/1ceKS83NRp0PYBmgOue?=
 =?us-ascii?Q?KJeRX73rnUHbYRnysaOcD8eyBqt3CyhtfqUFHzzGXpLJIMs/h6tmGynX8xJb?=
 =?us-ascii?Q?ZTt068F/olXJYIrBPpGdxJeCP3t0VJoPTiCEGEcOtyFBUSBmXIkEpPvVg1Oe?=
 =?us-ascii?Q?hiHnmY7sBTDCdMg9ppELIAjgF+pFGnqeFvZ2kArua98wZ4immZo8OtE0cCx9?=
 =?us-ascii?Q?3GTX8+T1lHtEVqFiql9hjGRtQF1DGFNtpzyYll8jZVMNpZjDu5Uc6gXNwz5k?=
 =?us-ascii?Q?ZPxaAtQKSKTlJaPqB1thc3g=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(1800799024)(19092799006)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?1e7Niu/vpwHTFDpHB2Hr1n/r5GgilAYMwD6Q6EaHQO6Y34X35ZCVn+Zb6jBm?=
 =?us-ascii?Q?Dop2l9X3E9IUU/2Dob1A4+QRv7Tp3Bgr5bq6WpBoD3x1emziVSgcc+CHA44f?=
 =?us-ascii?Q?Lsm4v+DlhK2/h5lqwbg73HkyriTLYEgrgIiEBrVhynjlz4D274kOaEMhm+m2?=
 =?us-ascii?Q?hJTQxBxfGHFTynkqgwbR+9b01rvQnqnMFopciD28MWCT9d25HuewaBkG3oRA?=
 =?us-ascii?Q?jfAsHxdoYmXDR+FZIoYpVqoZdnp1eB0Q/uhhZQ964yjp0aZbgN0L+CuUqS4u?=
 =?us-ascii?Q?hoEH5bv0ejPc0TmmL1nQzm8JAJuJe691rMrbxF2psVCCUC04RNjCvP6nofeY?=
 =?us-ascii?Q?w0shGKf6m7YCN2VD5ehiO0FdVLd87qCnO7LBzLkvy5N+b49nQwWTGu5Jov8j?=
 =?us-ascii?Q?Xf2nkt8I0plZSvhVbVfe3DxKVOLTBhthyONNxI4mCu+XbtKaf2Xs+8QJyYMS?=
 =?us-ascii?Q?pgNbjpvsZysQYr+ETd/7N8z+TJ4IsW4qiySATu6ghQNDuECoeAVoxjYFtx7N?=
 =?us-ascii?Q?dQAWLtu4LRdrKTd6qNrVBH9tHc9R9Zg0y7Plc9X+ejdvbLuK35BfbCCKwHWL?=
 =?us-ascii?Q?jXEjgYx4LdvYWGh8l1z+KBo8APhCFmQnN6gyAFJ6ahpnNV7sLw4vKj+a1sdB?=
 =?us-ascii?Q?G1HvaGZSFfkylqe7gTA1eSuJv64A8nsA54bbJIWxlJt/yhU5WF8/xl+UFmPF?=
 =?us-ascii?Q?++iNToBU4Kveo8u+x00bbkdmkyHOkTTCt1breJoPwRqDaOegHLg/x8q4a8sa?=
 =?us-ascii?Q?ZP61eSc0N8iGKlr5V3aIJoy/+IwGgqBRFsjTnd7Fupf7j4e6Q0Xhg8LxbUon?=
 =?us-ascii?Q?+XvDA3sIeUoGXYDGlzNndj2ToTiPwDphz4YmGhZI4HzDZ/Poz8BOtzp/4pwM?=
 =?us-ascii?Q?eEy1eLNtS6YGiH5wqeHmU53tF4Uhms6vnMjt2axUF1auktcLhSxJHE/ny0CD?=
 =?us-ascii?Q?w9GOI9CbJDyKntWBk7/9zctOc+TOo+nWOwnyknpXjE2ro1F1GE842R0OlsOK?=
 =?us-ascii?Q?r5xfj+fQxNVVliqU/rlhKkV1VJjj0DcEisj8Y1bUr3L+5CjegPxoDtrfET66?=
 =?us-ascii?Q?HOqOtHA3Jx+cLNOWuWGgo/hGUkp4Q9q/N1rYnihT1JxflmjUsqVS9ntbWL3Z?=
 =?us-ascii?Q?R09pyEltnXfyyFt4RBQE7GAxbjhX/MJHifuksD+yRxnDbMIQSUjAmWBw3QEo?=
 =?us-ascii?Q?QBuejhzpH2gl5nHdxDgLidTs086VYVzhuIAt40VtQQrE8Hn4A9OPCjFAZ1tI?=
 =?us-ascii?Q?/GlVS9ORIFx67a8CJvjNvNYpFwUX8dUAm6WJhhj+vNqkCyoQlTYKwGiHqHd4?=
 =?us-ascii?Q?AbgSnBseJtgpzAU2A93y3qXMoyKSeUdJdXjWdSTiEGB/75o25zJMZyZBw7/c?=
 =?us-ascii?Q?eUSAk8mvhuX+lg3//fH0GmdidQREZ1oDmGVc9s7oxokiRAxaDA/Zbxwdpo8F?=
 =?us-ascii?Q?OjvBzlcUjV+xFbPoQL3/k1sRDXDqSH25EfIt2AKU3hVn0CZ9I/95Y0i7DBFj?=
 =?us-ascii?Q?SIyEqQQNL9AAVE1jeylJkHkHAPDJMSVwGlA4azkZSwrtzboaXi5Hfd3wqSrI?=
 =?us-ascii?Q?QgQMyp/vGsmiqlFsbozJhMGwE9Z3W00mSDjK6Lz6zxCuNEve8KNKZ/BDf7ks?=
 =?us-ascii?Q?XicJ2PbY2PnbrApkJxWFQDMo+FQJLq5mWIhX8wA4Bx/+/StGh6PiqkoBT3Xi?=
 =?us-ascii?Q?wuebkhjx8oE9LtJ2La18QTJa02vOUf2O1qX/eU6AWwMwz1ExtKFpMaMpwTG6?=
 =?us-ascii?Q?e0jRnOy3Nw=3D=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d2877e-410f-4daa-b017-08de5a4cc724
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 06:58:14.1910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LeO+fk9d+a8bCSaY0ZrO2KpHrCTO92IbCH9hhs7uljQ14WCKMAEVrvxmwDohRA6CjJuWcb3s1zkvEhEi68QQBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8253
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.94 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,nxp.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: E672A71603
X-Rspamd-Action: no action

Hi Rob,

On Tue, Jan 20, 2026 at 04:21:55PM -0600, Rob Herring wrote:
>On Mon, Jan 19, 2026 at 10:02:54AM +0800, Peng Fan (OSS) wrote:
>> From: Peng Fan <peng.fan@nxp.com>
>> 
>> Introduce new helper functions of_property_read_u32_default() and
>> of_property_read_s32_default() to simplify reading optional device tree
>> properties with a default value.
>> 
>> A very common pattern in drivers is to provide a default value and let
>> of_property_read_*() override it when the property is present, e.g.:
>> 
>>     Y = Y_DEFAULT;
>>     of_property_read_u32(np, "prop", &Y);
>
>This is how defaults were intended to be handled.
>> 
>> or equivalently, checking the return value explicitly:
>> 
>>     ret = of_property_read_u32(np, "prop", &val);
>>     if (ret)
>>         Y = Y_DEFAULT;
>>     else
>>         Y = val;
>
>This is usually only needed if the variable type is different. Probably 
>the better fix is fix the type difference.

I see. There are a few places that use above style to set default value,
no type conversion.

such as
drivers/clk/socfpga/clk-gate-a10.c:71
drivers/clk/socfpga/clk-periph-a10.c:90

>
>> Both forms express the same intent: the property is optional and a
>> well-defined default should be used if it cannot be read.
>> 
>> With the new helper, this can be expressed more directly as:
>> 
>>     Y = of_property_read_u32_default(np, "prop", Y_DEFAULT);
>> 
>> The helpers intentionally ignore the error code and return either the
>> parsed value or the supplied default. They are meant for optional
>> properties only. Callers that need to handle or propagate errors should
>> continue using of_property_read_*() directly.
>
>What about u8, u16, etc. and device_property_read_*? I'm really on the 
>fence whether this is all worth it...

My cocci only reports some u32 usage using style "if.. else..".
Let me write a cocci pattern to scan device_property_read_* usage.

>
>We may also want to do something like of_property_read() implemented 
>using C11 _Generic(). Not sure if that's worth the churn either. It 
>would make doing some type checks harder. For example I could extract 
>all property names from of_property_read_u32() calls and check their 
>size against the schemas. (I have the first half of that already.) Using 
>_Generic() would make that harder or impossible.

I see. _Generic may not be a good idea if it makes type checks harder.

Thanks
Peng

>
>Rob
>

