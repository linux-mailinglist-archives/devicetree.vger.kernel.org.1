Return-Path: <devicetree+bounces-36401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 446FB840DA9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA1082827A0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507ED1586E8;
	Mon, 29 Jan 2024 17:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="K2AG9zpg"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2082.outbound.protection.outlook.com [40.107.104.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE5F15B96D
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.104.82
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706548144; cv=fail; b=W2YtAEGNEoYOIC/hJfuC9qxvNlddUem8/b6vjwF5k7Jel6yXD+OVS6FsmCmX4bSPJIDbHULfcWmMRnRSoXl/qP3KM5x4XPNJKbXLIpjZBVpdhX2MV5mX3SiMcznK+VB+fqbxSUl8Q5tjZQXVtUwSUr7/3E82mATgVFgeoJjGQZU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706548144; c=relaxed/simple;
	bh=BlMAzvVAViYM78D51z37OOxV1BLaXS9sguF1v8hMsUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=OcCCxy6ZioUwGi0qsdEqnrDb+/wZVK6LOSv3xjJ7NCrfg7ERbWmTbgcEr3MxoERjub4O/w+kWv932wQ9+Rm0sXRmfaUUd1F3RyfQhZgIOkI4XA8AwxMqHaGTRAj6YgTrtgGy5K9vj569kRtNwCPUU4GphfZDpuTgtnfqQVPQMLE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=K2AG9zpg; arc=fail smtp.client-ip=40.107.104.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fykDEbSPfdQINYSc88nrTN0n4YaFyM9rJc1YGYBL2C9vf8Q2KI6EU/1jUowc04dpkNXwUab2m8y2PZXW3Q+KvmOHRz3P92WgFJunwDvVM2qciPgLzJUzLUGaoYRRN6X2KVetlticK86rSP57hM38T/1nwsaMI7njDBPH18dBf1zvjeTqJH+7tp5aRWEMTLOGKr8l7JXKEEWp15euBgIYDYMG7DNFm9RSedEBECIOJCNCekMzVe8Yb2qZ6jhQ2udowQM8APXGtCkgD31H3SNV7QD7uWHZGPqvk2ll1RvNeO5S7l3y3S+9jpT5BZwZosA1NT4lRlI+rdrAMTTN+LZCyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7FoT69hmC5h4IIHz72JaADHL5zxpfof+lR+fRlMaQxU=;
 b=LM1D0FPtQm/qlc0dZQCgxcvKOz/jCzTdWDI5oISPZ51VytI9mnQG2bOeqchfuyzi6bAuzCv/WZV7J76sKlIFSwID61PyPd34kcHQpKgd/Qy0z6nGgjLiHbIvAjZ3btXTizR8KcBjjTIQ+L6NvHiiIzJ0RJtUr0nsnAY44ParEszNHHAEKtgY9ZLrJ0yHBwkLGGeT/ZjMfO68jmx8rt68mF9ZWptC5AS5QiLB/Azsaxl4FWdlasOAjF2Rkw7ob/50XAlcp14lzucXxJHs1t8p1dJNPgmRLD2GZD+JtqhdThuNQt2wbWZW9HqYFK1szH8ikmKpmBhDzpzBPBqc94P4Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FoT69hmC5h4IIHz72JaADHL5zxpfof+lR+fRlMaQxU=;
 b=K2AG9zpgiBf2irSXvINfJm/g4jTElKBuzAQaMR33Kc7dBg+gVOCOZU1HbTEtOZIKdsaqbCyev5jeC29+IiR6hAj7H8AKGzPey9YYWaFJYbqdVEHNMpXl8w5/12USM9WzO2P5e/d1vgFW8XOb7yGikgBHb+drBPWPrXGRUn0uMSo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AS8PR04MB7511.eurprd04.prod.outlook.com (2603:10a6:20b:23f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 17:08:59 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c%3]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 17:08:58 +0000
Date: Mon, 29 Jan 2024 12:08:51 -0500
From: Frank Li <Frank.li@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/5] TQMa8Xx (imx8qxp) audio support
Message-ID: <ZbfboyJHUoNyXqy3@lizhi-Precision-Tower-5810>
References: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
X-ClientProxiedBy: SJ0PR03CA0063.namprd03.prod.outlook.com
 (2603:10b6:a03:331::8) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AS8PR04MB7511:EE_
X-MS-Office365-Filtering-Correlation-Id: c57aac55-b654-4302-9bb7-08dc20ecfbc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	lbb4JLnj8MvUxvmKgWCFpoW5vzQlGEckqc9Dztw/nLff22y5BUkGllm8HL3vtReDwp9zlo0prqJxi6HmCzv6fZ8LHO7tzo9LIpTd53WVgOys/RI6GoabghkWmb0uemn1/6YFXsNvgILWhsJiTKgEjSkwyvPkmjRD1LRHQ2iL/1mZMceYjzxr5dYBb+CIZbB3DoROn/DEn5hUStsu3ejyAenXS6gdnH6tcgzMdo5LaMzn+kCE3xym1Gcq3+o5DhZ/qcc05usuKaxOTxzT5Q+2Hw4bnrQz4n6EYoQ4Nqap5SI3+DmZYGHB75KOds3eNtKGIlNQj0RjRQxxxgHObPdLLQKE8zpJ3nx1EbWWOr7waHYzU4Tdh627MMsRSMz1bv24e18B0Pbg3UnUOCIM2KV7fGYQzfcML2lcCVDdoPEsySwuBVKSSNB7zFryk6vBkIRTXZQLlzNSqDY1QQGor54HFSclgwsP6NgW8jRiubMM5UtH1kUWWUAuvGkW5nC27qjdP0ntH44mR53j5nehMfvw+t0VMgV4zXH6th/P1uFQChxYLNEmmB+1pagzAIIc0jEOQGTsDK38SKzRcXNghHTZ17mtYgRLUUSRHtzXRLW321SP7xDbPNWacy+LGjGlYLIN6mKs6p2MeHBXjpyKzAAn4sYkk9CkrX5WW9H7DSAz1VY=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(346002)(39860400002)(396003)(376002)(136003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(38350700005)(26005)(6506007)(2906002)(2013699003)(6512007)(5660300002)(52116002)(7416002)(6666004)(4326008)(8936002)(8676002)(66476007)(66946007)(66556008)(6916009)(54906003)(966005)(316002)(9686003)(86362001)(6486002)(478600001)(38100700002)(41300700001)(33716001)(83380400001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Apt3Kvnvqs3Txg4qmRcE6oql+u+YQDnFYfOf01v1vI9U0uE4SnAiphQF7Cix?=
 =?us-ascii?Q?kxXHB3miDSqcmyHIjKmpcfMyXdG8SOmBHL8ZdZrMYqu9fzlVfxERYsh5+AZ2?=
 =?us-ascii?Q?giZx5WFIDUfoLucIOaNlMM2PiKw6F4VQ1gZawv9s3PzFzpRycs+EEs98rkCl?=
 =?us-ascii?Q?j9KiRknbAXKLtpevejxNn7c5ASwK9RQEZr5Q+s3Owf5qwkE4xBj7F6iC1oSA?=
 =?us-ascii?Q?lSyJsRuuOPf0bvij6W+eIGH3AqZmbZNdrqT98G/aZQcgTx2Q8zTj6Qvo/uZk?=
 =?us-ascii?Q?UM977pOy6qB48BSiEt1YynNn9LPjegc8KXpMOrSHh+IF60TqVpuEAjURR0lN?=
 =?us-ascii?Q?bMTCofPaoWsS054l1qHdsRnc16YWqQxXYSH0YHFV38V9SDUZ5UhcEbnAq4rz?=
 =?us-ascii?Q?MuR21d9kbOlwd48zc2x21B0SjVC8SifSY2mxwfFhdNkI9L3GViYm4mYDBxRs?=
 =?us-ascii?Q?08MxMBxGbB5pCSRt3zChMJe+jIjqPGza799nNnrun9lER231BK1cURYwbJ4A?=
 =?us-ascii?Q?ILDqaHtkVfwFoLvyVwhrf4syYDYjp99l0MqeXKTzKrcJtDe7Dt57BRbDQFXB?=
 =?us-ascii?Q?4ONATsvGT0dbqK8HmMBG2S7ViwPMCeQ3xk6Zb7yrvoOV3Lofk5l3bzktldL/?=
 =?us-ascii?Q?sWbUImOS1zdWYljzhrbNgAfGLGc+DTyeMuq+Bko/Zu8jz8dTE/SO2gVhW3Ok?=
 =?us-ascii?Q?XKhEqW1wgAlUSe31woEMmrpCBWIsZxq7UDtAouvlMaoYLSEYaY8YOMknxw4C?=
 =?us-ascii?Q?BfLm3SuPIgBMyoLjqFE0lZZSPNGB2cyu7GJ6m9Q3QEe9UWNWYpeG+gkl2oJ+?=
 =?us-ascii?Q?O2cVxxx9aW8c5kXHsV2eIuJH11e0N8Flcc7n6SXqKp5VKH3yOItYqS+hAW8O?=
 =?us-ascii?Q?6k1ipbGYwCciXiv+GtXpR6EG/21El/GC1mwDJLf5Mvc7Pi09IuBdzG/+p8Z0?=
 =?us-ascii?Q?C9qqoWMJtlv6rl0M30SG2YS7Ke+Cy5i1Iio3m7Y3Gbo0hRWViY8RP5r3gfCR?=
 =?us-ascii?Q?sPV5bzSX4N7zQ5aTK1j5X7g4TfSEqjJ7IrtYqyESnHtARMaZcDmhsj27rDve?=
 =?us-ascii?Q?G1I7maQsgs7BCfxevZYWTgkojUnZUJ0MVOM2TT82h9/pH3IxehvTJaRT+VPv?=
 =?us-ascii?Q?7eAVcaECi6IO80vpoZ/pQa9IEEceZ45mnc5wiFwvYpE3bcSmxSB5oEwcwjlQ?=
 =?us-ascii?Q?B6IE301HjvwYT2NfAOmMUJaEoZSuFx2YjzhsOKWkd+t5krIFimdo8BJfc1E/?=
 =?us-ascii?Q?cF9sXmbVyjKX7ykJQ56Ni0kaRCfQoA6rJekv6MrHjcE9ZxegRHb6EseM7WXH?=
 =?us-ascii?Q?+dy8nAwRccC+ucM3XZiC5O/H7LylF9N5PpHYhCZ3EvjL9FK8AX+glqv0UtOZ?=
 =?us-ascii?Q?QyCfO4hKksrJmwEZC+lRm9z7diAnHgv4FsTKh3AwJuFVRZ4gSNSKwc3MRoFP?=
 =?us-ascii?Q?PqyFphuQzfRaVxSZD0dij+n4d2FAolIRsQ2px+o2jSJDNrP4J6nzCTVP2OlI?=
 =?us-ascii?Q?8itCAHNw1g13V2E4Y5Ic28f6oIW5tLnyufC+bk+SkuHHRQEKZRvY9uGjfR8l?=
 =?us-ascii?Q?WvhCNYEFNL0RDyx6X6E=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57aac55-b654-4302-9bb7-08dc20ecfbc2
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 17:08:58.9475
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tEsC76e+H0r/sIQvwZx/fwUEN6OCz6WoDEU0RRhB3dBl6GQVCzmhtq4CxAoHRwt7uRtzjp7eiL08LXGdbQNNig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7511

On Thu, Dec 14, 2023 at 04:02:38PM +0100, Alexander Stein wrote:
> Hi,
> 
> this series adds audio support for TQMa8Xx on MBa8Xx.
> The first 4 patches add the necessary nodes for providing clocks and SAI,
> which are used in the last patch. Patch 5 depends on [1], but right now it is
> to show a consumer.
> 
> Best regards,
> Alexander
> 
> [1] https://lore.kernel.org/all/20231214142327.1962914-1-alexander.stein@ew.tq-group.com/
> 
> Alexander Stein (5):
>   arm64: dts: imx8qxp: Add ACM input clock gates
>   arm64: dts: imx8qxp: Add audio clock mux node
>   arm64: dts: imx8qxp: Add audio SAI nodes
>   arm64: dts: imx8qxp: Add mclkout clock gates
>   arm64: dts: imx8qxp: mba8xx: Add analog audio output on MBa8Xx

For all patches
Reviewed-by: Frank Li <Frank.Li@nxp.com>

> 
>  .../boot/dts/freescale/imx8-ss-audio.dtsi     | 330 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |   7 +
>  arch/arm64/boot/dts/freescale/mba8xx.dtsi     |  27 +-
>  3 files changed, 361 insertions(+), 3 deletions(-)
> 
> -- 
> 2.34.1
> 

