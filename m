Return-Path: <devicetree+bounces-38458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42708849369
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 06:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024EA282322
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 05:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A17B79D8;
	Mon,  5 Feb 2024 05:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="CXqKthKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2090.outbound.protection.outlook.com [40.107.113.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD7FC2D0
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 05:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707111415; cv=fail; b=R9kOjZmKNvYLWU0QwMM0FPIDKX9zjY8DDg1rLeHm9QNvcASm5tuogK4XBKOINI4XsAdbTxpUKbdydABMKnQqmOiRWxV3iniTKGkMa2Ohd3BvgxNCN140OmFzJLmYkIdmsC8TH8nc8ZaN9Q/oiwpeKmQk0cM+icL+y9KRouB5wok=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707111415; c=relaxed/simple;
	bh=KjrbGMm++q5GCSeY0tglkJ2KscCeSiMtQoI7BSsgvfQ=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=KBmlFYTZhinngLx9UTjdcLDWBlKnSh8uWs59CO+rtjZi0avWjZqABjAg2c61y3aUx8Zd5x4CFscPrkgUCCNmB/JEnga1mNdyfUrhuHx6CKJY28mdcmpAnyTmXb5ytWTDUoM/fip2lnHONkxypCtgpRiGpUwcfNVRkLjQK0DFeDI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=CXqKthKQ; arc=fail smtp.client-ip=40.107.113.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQWyX+GcXUq0VsYc3ux+ZBj1xSLy9a4iOwzsFvEivkjtLrTMT/xzfE+gHZ0riue541atsw6Md8djsGKdJomtogOKse22QABH8NnKMmYSKywaT/3y/cLiW/PtZu16h50QW3o67U9l/ABYQaYvw7qua/YVx+7bX0vw4+OxZkKDCcfLq8C9omb3JSaepHA5xqyDQ4mBetW2BxcMdbQCWyQzUQrECeT0aCok6T+1mHg48zibFobR2n+rwlI0gPQVhgt0sXYmy2NGgXmd6u5gdgEgHSSw59duzLMHQyQTb8H84ZsEMJJ+yzXY2OGJvy+U7CWehSqt1QqxyblNAWjO14B8dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/861HCA+3ucESGW8H/tUN/5144mEZutJ6MjteWnOBw=;
 b=DN2SfvJCn35S4AvrApY83BWLuHtcoxuLByOAlzxNulDo5a7Nre/hmnJprZIHVluxOzl/6ABGsLP5elRIlUZoFh+nizUV2qP+5QET0Sdq9bENZSY1R5qygCieTDk+k5LnEgAEC26TeZhbdS0WQCPA+P+1SMcZ7h+5S3f3nyl/p1cplsCSJlX5JEi+MXbRDUMUCtNzPGoEhupHlLVHEx36+zlwHrLb+zhckHXTjFJU3I7hvHDKv1pd4ENqG46VDCKNRokxxJLbjJc/03U1NvVHPlQn0enfOyAUq6RWQlU9VN5jJwJZeyVs7PVQ9Hl2SF6KcbtgjBEaAE2M9StrKLtvPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D/861HCA+3ucESGW8H/tUN/5144mEZutJ6MjteWnOBw=;
 b=CXqKthKQy0BmybFeFXyovKzkj8YoZBT+s543LmEG+1+uaECsUaYqpPWRXT5aUBhXoIOPHxiW8ZgVIW63AJC1KFi6n2gbc4sOxygWYc3EsHKPjNo8bfXLzrcTWR3x1gPYK2QP5jY2eYluU/zgG7sXpgZanF6CZfVOS2dmDEKiKBY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB7821.jpnprd01.prod.outlook.com
 (2603:1096:400:182::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 05:36:49 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 05:36:49 +0000
Message-ID: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Sakari Ailus <sakari.ailus@iki.fi>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 0/2] of: property: cleanup of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 5 Feb 2024 05:36:48 +0000
X-ClientProxiedBy: TYCP286CA0183.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:382::12) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB7821:EE_
X-MS-Office365-Filtering-Correlation-Id: ccc017c7-17dc-41f4-eed4-08dc260c730c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	tqLB4298QWS+0y0NsLW/fQUw7OP0DYsIpEGnEwsLpwdBOTGDrofvFijD/BOTpGv0K5FCVQztDINK0fyUnwXKugnyRLSC8nHHcQOP2IUq6xPi3wqV8iw/5c/gQHQRJVk7V+8//D6D2TxFdsTi/UIdqQXtD90qXOvKMHQI+GUr4zqep59SiFpjp9aP7BIRCySbSpK4TTZw0OvCpSE/R5iTHZ/OV4RlJrt/RbUrkt3bm9YJ8l8ggHfrFTebvMEY1Yx/QmP7+doFan6NbPkJAzrR90IoR2uvr14vqPs8d+C4mbe0siVAp1ssBms752sq4CY044nN3Ie6exYFHUCChC7RprRDJrYWdqbvBRXqRbOBUJkq3nlQxKTYTw3HFgL8aUqMMnXlb3+YP5Ma1L3TrXD6PRQlzopVxLBx6j/f+EsRc4ZBG3XK0tZWjMXErFpOt+8C9sGg217t8bmoQlFbHsoQUrdg05461/LxjfaYNpKdJgf5qH6meWxARshIBzceMskmCQqhAmgs9drwHNfQmh6DNeHay7LTx3ioeW0yZ0xx00L76dZ2a/7/HdanysjZeoF+D9j9F787/DA7ZHO7aroXl44ccat4RVqS3kbsYq/X8Ng=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(346002)(136003)(366004)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38350700005)(6506007)(6512007)(8676002)(66476007)(66556008)(66946007)(110136005)(83380400001)(8936002)(54906003)(26005)(966005)(6486002)(478600001)(316002)(52116002)(5660300002)(38100700002)(2906002)(41300700001)(2616005)(4326008)(36756003)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?tlCegiF2xUedEliMksYbtc0o10rKrzRMXmyIpH8cIqQe6GJmcewWuoX4yxzX?=
 =?us-ascii?Q?s7r/1ehuTj2OmlTY6qWJTMMkuXYy4BXmInJJAyTg3+KsKuVqp6DeI9fbt4Ht?=
 =?us-ascii?Q?/uaQnH3baa0uf5VdRcrjCtS4XV+jdkixJc9wErnOo9DyyzF3+lBko33defYn?=
 =?us-ascii?Q?2fZ/QiqDBzw/HAmfAWbx8PCuhf9E1tw2H+A3NA5lhOsl0zZCicIseNteLk/P?=
 =?us-ascii?Q?cfYuc3w809jTgnXJapOEogJ60Es6JbCA+73idACTXeptF37z7nIzk0BUZyVY?=
 =?us-ascii?Q?pszMKkZqMb26ZaTYUXfX8rf8ArIYA9jw0LFl66f8Vd7zZx1R6YFSeTKUinF9?=
 =?us-ascii?Q?hjaKuba7xFQr2vh5Z64637yZ5ygiuf2kTXIGQTvgPfS2CWvJL7PgQ9pzPiHG?=
 =?us-ascii?Q?grsmgLPO7qw9PIFKKT882iEixyO59KcN1wqMjm6TIe6Go18hYx9ESfvWFrzY?=
 =?us-ascii?Q?EQICOpn24wtBHAd6sQph+saY/ToyMhmH2zIqVG/lRxFwERjXvVj4c9YYdnsm?=
 =?us-ascii?Q?ppfXMRQA+Qa6dbgyH8RLGZowUVzsS4H34VkBs45Ib6qvTc+JOPT3rAQhEcL+?=
 =?us-ascii?Q?NcQX9SV+OjALJnRuk/RgofxkjEq8KRngAFWJuMKh8u7yn5HUjEOSJaqGYiQe?=
 =?us-ascii?Q?I6/J3YhVwl3Di7lwrL6fSVImO09HOa0F6fPUlq4IhfDcDlCtyBkky42FAZvo?=
 =?us-ascii?Q?F2ja0VK9NRwQqXKWFbuFOT5a3RM7l4TH4absh0gcW1lBgxvKv2Jyos7YLV9H?=
 =?us-ascii?Q?0mM6f7zZvI9TeKsj/2+YLq6uDvjk74YKc5mDQg3aTJCgObPtGi23kexWCgq7?=
 =?us-ascii?Q?6qnLUT+pv/CcxL5Z/MaBRoUA8/BdtOkmLA7TAVITNRberI4RGN6zgET1xatq?=
 =?us-ascii?Q?Chi2MmlZ8fWAm4t1v35UOHDCCwDmO8pdbssqlWphOQVal97LcyMpiQIZJeA9?=
 =?us-ascii?Q?/9WjA04LYaw8P4i9bkzqfIv1FLy4VKmzf5Q5cGVo168mqqsYR2w3nldBEVaK?=
 =?us-ascii?Q?YhIR/sgaPYbCAcJ4NgW5k7YrpVytLpMcM8zuu469wXhwRhySXhnbAap4pmOe?=
 =?us-ascii?Q?o0AGcTeYHQiyiiDTkiifw5mhjeMcQM+hmhAI1/nYpupBdWHgE+bOK47QOu3R?=
 =?us-ascii?Q?ZF18Up+T3MvGbVHq3oZ4O13s6u6oj0spHWbDMa83v23+93Zj6znG2doB2A7j?=
 =?us-ascii?Q?sPJo1fvrTz54T6QmH5wMx4ujNnh6ts2fT/WUzrg9sHDdd+QILWeUnE/KwoYr?=
 =?us-ascii?Q?3P4T/hS90bSgFW507XC53Zy8hiuXxQMFTDYRUX2BF/CmNjGkC8yUplmD5zWm?=
 =?us-ascii?Q?wj05CpJ20VrfKpsLc6LD7p3PPq1iKHm2b4CSuyGrUK8yVIi0pPJRyu6jEJn/?=
 =?us-ascii?Q?DOlNBOKotxBeiIT5c90aotoLMAQRj96F/p7fBbe0IYML4jvuUxPP8zx2X0qW?=
 =?us-ascii?Q?6tXRAgPNOUiVH11cpfifXi1XIMmWz0X3Sdx3L1jMXeTrHvZ0DnOEKX6wsesf?=
 =?us-ascii?Q?QvmfTHi5Vr29oUKaSeFK63BohJ/XTi15s8arXcTMxhAVRMGZdt2C6SCGN5Nw?=
 =?us-ascii?Q?fE4KYIcC7eN5LVPqZaBgqrBum6z4kN+8n9PRbVLsmNLP/6iVAfGrVxzsmolG?=
 =?us-ascii?Q?mfH/noWlT7Qb6dFqYommFWU=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccc017c7-17dc-41f4-eed4-08dc260c730c
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 05:36:49.2446
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q/K7dfM/RhySbOceY03jKwB6uCwnPcu7u4KebqL39ajhiLS8g4KojzvzwvJ8ZM6Y9VnK0Z10mxiKXW06PY/OEigVNLcJFlo+bVXrcIeRHYNuF27VRIEdcaF0qz05jaxx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7821


Hi Rob

This is v2 patch-set of 1st stage.

I have posted patch-set to add port base loop [1], and got many
request / opinion.

Because too many reviewer / maintainer are related to this patch-set,
thus many request / opinion can be comming,
I decided to separate this patch-set into few stages, like below

[*] this patch-set
[o] done

	[*] tidyup of_graph_get_endpoint_count()
	[ ] replace endpoint func - use endpoint_by_regs()
	[ ] replace endpoint func - use for_each()
	[ ] rename endpoint func to device_endpoint
	[ ] add new port function
	[ ] add new endpont function
	[ ] remove of_graph_get_next_device_endpoint()

[1] https://lore.kernel.org/r/87o7d26qla.wl-kuninori.morimoto.gx@renesas.com

v1 -> v2
	- tidyup explanation
	- add Reviewed-by from Laurent

Kuninori Morimoto (2):
  of: property: add missing kerneldoc for of_graph_get_endpoint_count()
  of: property: use unsigned int return on of_graph_get_endpoint_count()

 drivers/of/property.c    | 10 ++++++++--
 include/linux/of_graph.h |  4 ++--
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.25.1


