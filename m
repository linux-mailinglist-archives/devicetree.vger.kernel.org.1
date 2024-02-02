Return-Path: <devicetree+bounces-37850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4A28467D1
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 07:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67B80B24980
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 06:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0EA17550;
	Fri,  2 Feb 2024 06:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="ijwiofAf"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2128.outbound.protection.outlook.com [40.107.113.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7B717542
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 06:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706854223; cv=fail; b=H5XWZFUJ8M5WM2BdQUStZMvbImN9XDr4R9o9cwzTjY7kCIaNdqqTqAK7UDwx5Wr0kXeftWgJD5YFDFjXPczYttd6J9dcQ3zTTDwQCmJJAQWTiDkyVPR6+bniQR4LDSk78ousIVpbHhX1hvPk62OwPV6IMUbSSCdaQQQyTzPtckY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706854223; c=relaxed/simple;
	bh=O8VV/zpTGQPQuIZY88DzdZGTu+MqJSaR2Ptjuz3fgPM=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=SRg9Sdvpwl2yYZiT2nX27ODA1fYMbsoLYrte9KiGAOYDzdSuJnyDnYgGB9ElEFZO1/nmvZM09j09CV7n+Mzm0RpcZ6hR6c4YGs5VCjeoWLXvi4b+oVLiRd1pjEWrNhQLzcUJcdsi6MYNKuq5tM0M+FtvCtTvY6PDjEz7YOLvUWc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=ijwiofAf; arc=fail smtp.client-ip=40.107.113.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m98vQnMvfov7wi6VPIjXyGJ7XG2t9dPqkDqutGXKKAWXw93+2e31nJgUw0/fFC0Xp+DeHKZs0rTZm8Ae6g4p4Oavr28tlvEbB5Wn9pKd8mhXXK77MWk9nRMcg+I3ZdguWdToUdiIvgp73tz1tjrHCjy1tEOCF1AcBXuWLtki7K9f+BKw8IioZisoA7+rXklBBS3mtNLvrrxMyqKgs7GCfuGbvrUYtfnYz96oaNA5/QyXb8r/YjRLFVFrjZEatBxjIVyZYp3B5bFukhhPrFluq6djrGF+mIc60EszcPDthhvnVN7PwB29ibyQFvrNagF8MHzUrp0nG1X4kGoTt9hwbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0GwAAsLQoFgz2sazmu2oEWUnjAaZIg+p6Qv4RU1H18A=;
 b=lMUZWU0l6FidNUhj3IAu8MFCDLqZGm5Arg6rmsFBYZLVHEUnASfsK0wHKZznNIx5i3Hms9v+OA+I1qx8ytfDhvsubX/HMV7SoiuzsVk/u7DF6ufaqU2EN83AOwf5Gp1761/I+FAf5EM02Mwn+mHbRa11G/OxJ6ANFbir/1jmruET8c5wVGhYPl79pVWbz2Vck2pwC4NYKWj6nBnAtyLS1imqvY604QwDSFTIsGAD3A3FeBR00WzahgjHqYSSf4IuXHKztrizqFB02m5Of9lvrgJExCr0fjohvAZO856CyxMjnfDslt15iuuUbmmOcI4MRnMgaaNAw+yxrQZWh9lrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GwAAsLQoFgz2sazmu2oEWUnjAaZIg+p6Qv4RU1H18A=;
 b=ijwiofAf85nXJx9KhmMia1saDLIQlijaUoExU82U9kyzdM0+gFRnsXbI7AN+BtLXDv9Z+Vesb187TUtiEatTLFKglXWntGHfhG/cHGI/ayoLBedcfE+p/kevVt0oAiNhrHSYX3NZ7/bJzxSE8H7nAVSIDivfgnm67pvwAe8dHbA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by OSRPR01MB11634.jpnprd01.prod.outlook.com
 (2603:1096:604:22e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 06:10:19 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 06:10:19 +0000
Message-ID: <87h6irs8fp.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 2/2] of: property: use unsigned int return on of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Fri, 2 Feb 2024 06:10:19 +0000
X-ClientProxiedBy: TYCP301CA0027.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:381::9) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|OSRPR01MB11634:EE_
X-MS-Office365-Filtering-Correlation-Id: f0a5a43b-f898-4efd-196e-08dc23b5a201
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	3tFQBaxGjr6bBpvJDn6jV10vpg53/jcDmCMOBsbfhzEoCxZzi5CNJwN4/NuLej2BhdRQtMIAHXi4zOOK/x2J+1yS/aQ0I4iLQkNIfh2Qu0GrXbW8uTMu6NQps1lDKNBYrT2B5LU//hDe5RHbzI1QElj2KVdhsFqmxZv0eWtK8yKne37WLVxorQfd0r4HlOC9TY0zf1X6Kc1/hMX1SdWmGVTJF7Vdu2x3Qa2F7B32vg9zfVY2pqPr7pjN8tTDCiFBIxgLeXX1s/5ZKXmKbdKPcb2/oX+orD5e6ShnjClgMjb48qLyEqJuNPqzadanRtwtGBTsdDMoJp4aWREeD0q/S7kVmPEoPADAAW/u4RzzXr7AUE0sPS1VNPj0gUMv/IhGFrDMGTpkLAbfnj2yrZePPIaIBu5ifR8hyYwcmzuLGnyMAUEbS8TS91gWmZbsS6LdGGvHLDifIBZkh0jd/GWsj5fIEMAUW5s3WIgLVOFGI8D7z2Pz8aMPKJ+O/rAqLKiC9Dntjv7pCN2JJAHsvAUXiukCq3d9jmQtygnuhWi2cHlGX//JvJwgt7jooz+aTJhbe28RHQaB8JiGj60A8CekM8r6Lvkr7rCuBX3Bb9LjuwP8S8RnjdEFSoGjO/lr+zkY
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(39860400002)(136003)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8676002)(4326008)(8936002)(5660300002)(2906002)(41300700001)(478600001)(86362001)(110136005)(66946007)(83380400001)(54906003)(66556008)(36756003)(316002)(66476007)(38100700002)(26005)(2616005)(6486002)(6512007)(38350700005)(6506007)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Dd7gGA4Pyp67Rm+mzQZkXnbbUnylzh1+w1piayj3tSfkMzadu6uwn3HN87Xp?=
 =?us-ascii?Q?7+4OiBTXYKsfD3jtcumc8IG5j9SXWXLMkHtmGlSifHd8nSjPpJQMaF1DtWsx?=
 =?us-ascii?Q?WfPgGIDq1JyYBwOQm8Bbgsu4QASfQ0z5Guu9hJCsASxpK/EaTos2TnGFx8aN?=
 =?us-ascii?Q?Jk81JRu5p4Wkmke6KeGwLAXfeIzBSu8f99Q0X96gZCXqJhhhv79SR4a2j0FZ?=
 =?us-ascii?Q?TR0NVX+wd/dzhjmYS+vYLS0mUHZO+7LEfcmiHMPL3dPsQ/UMlgyinyCXOH0y?=
 =?us-ascii?Q?Wq3H1Wd9OC0KRdaPfJZOUGDymlDQz7vZKoh+QDfAd4kkhLvCabuYo4eipb64?=
 =?us-ascii?Q?r3aNzq2FYqwCUdYpGX21TtCh79xPxUDGS6AjTenzqAEMBuJPrTo9OpvuBt37?=
 =?us-ascii?Q?5McjmQlN+4JRWXSErW8U930QDRGFUcach8tqJgCVGR5ar2Fbu9JhHlFg/qP5?=
 =?us-ascii?Q?uuORuhD69J+ko8aKQKlH2kqILfdU8tBYdSAI665mDfoLlSTok11bahpro6Oj?=
 =?us-ascii?Q?xmzPUnMMWJyOlotf/nSqw7qrhMU2n9exfMGj5Q3ZCGE4OV7ojbnQ212Lv0mi?=
 =?us-ascii?Q?hdTIJLvPf9O9i8UOWgVgc3Vb/I4uEw5uOAzOi7/6Oga5UedUMPlq1B8dt5HY?=
 =?us-ascii?Q?X2Rp8r+boaPYMwMNHaAGvO+ISxchpkJT1KmndDKBvlVk+4rp+skkg1W4npXc?=
 =?us-ascii?Q?ehDQ/gm3ip4u0u0+yfMQjoLSeD/7j4tbv6ifuwTnvis9TYJwhNLOCjLLHmRy?=
 =?us-ascii?Q?aii7gqzfAGyBVad7r9OA9gOI2NnEJf7ouUxiOaN/UoducLYDt+UkpJ0q8YSQ?=
 =?us-ascii?Q?vAqv9Y2+O89+DvMNRzGHJDYPtT90TKEgTI6mMMOFwGnBxgaVVhHnRA98uXYm?=
 =?us-ascii?Q?Zi2R29T1CjaOzZCy/pGryG4YdR7AkWLykCjJJ8lcnj+2sCnnhpwWg/+TkOQJ?=
 =?us-ascii?Q?tlP8RMN0PvCVAqv9S0okLfh8LtXrdJd9uUYTbMABJFkvTfDN6nNrNXH23qMD?=
 =?us-ascii?Q?jfceqJFv/+UVj3MV1WRHAkPFqgJT+xCaHmKM2PLnS3+U29TQNlc9XRvtpa3o?=
 =?us-ascii?Q?AQ/aaQMXLWQ62Mp09Djb08bjEc5TGHoPeM0bbEhiopPywhjdh2Nooke2wWz1?=
 =?us-ascii?Q?VNWraTYWEFAEHl2rgQs8op6+fMyDZkXZOvnukncZ1YjFJOWuSefTB33xvoZf?=
 =?us-ascii?Q?+VlmBZMJ8KGvnKlIBamxxFRQUS4LKk0EOJxxCctLYMcp/i76pzVtRk6Wn3UP?=
 =?us-ascii?Q?/YLff9TPzk1lUyrSZ1Eptx7bk2a5dhYbpu9FbbotxuVsUntcKf0t0vCyGEz6?=
 =?us-ascii?Q?EOKUaNhrJsl40NpgbZCTCSftLp2xoX0+z8PsyWWLllipTT3ET9mw52hS5mZ0?=
 =?us-ascii?Q?1wIulYR0OOSPIzyu/f68tNqDVx5EzawojZETYHloKMphvA01gmTOeHZ50CyU?=
 =?us-ascii?Q?/5AXsd3QI11LyiUIsB+TGtgXY3wU/Bm0VNlH2UiIV3mZnKJzK9ZcecbrNyV3?=
 =?us-ascii?Q?PNB6FscidSUQw5RH+aJOUzK8OnFtdA++hxzUoWjfQzTnK9EBNYGyoajNevk6?=
 =?us-ascii?Q?ovyM0B/sXTbOoX2uRXYcLfQWHS+hvzNF/PLuUQ7KFEDgnViwQ8uu159avPQx?=
 =?us-ascii?Q?ks+vnVx0basqFRVnSKRMFIg=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a5a43b-f898-4efd-196e-08dc23b5a201
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 06:10:19.4556
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F5vIBLZxf+mfOF9wwrXZIewrbR/G7I4kxhzf+t5lGKGnr0QM/TewLO/k43TyG3/nsT5qaQncrLFWGkkiXULQeeQBieOdTURfV1fp6pQRHevvYkej1s9H4/G1w0a7b3WN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11634

Because of of_graph_get_endpoint_count() doesn't report error,
just return count of endpoint, the return type should be unsigned.
Tidyup it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 drivers/of/property.c    | 4 ++--
 include/linux/of_graph.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 4e879faa1710..66834f85b0ff 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -817,10 +817,10 @@ EXPORT_SYMBOL(of_graph_get_remote_port);
  *
  * Return: count of endpoint of this device node
  */
-int of_graph_get_endpoint_count(const struct device_node *np)
+unsigned int of_graph_get_endpoint_count(const struct device_node *np)
 {
 	struct device_node *endpoint;
-	int num = 0;
+	unsigned int num = 0;
 
 	for_each_endpoint_of_node(np, endpoint)
 		num++;
diff --git a/include/linux/of_graph.h b/include/linux/of_graph.h
index 4d7756087b6b..a4bea62bfa29 100644
--- a/include/linux/of_graph.h
+++ b/include/linux/of_graph.h
@@ -41,7 +41,7 @@ struct of_endpoint {
 bool of_graph_is_present(const struct device_node *node);
 int of_graph_parse_endpoint(const struct device_node *node,
 				struct of_endpoint *endpoint);
-int of_graph_get_endpoint_count(const struct device_node *np);
+unsigned int of_graph_get_endpoint_count(const struct device_node *np);
 struct device_node *of_graph_get_port_by_id(struct device_node *node, u32 id);
 struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 					struct device_node *previous);
@@ -68,7 +68,7 @@ static inline int of_graph_parse_endpoint(const struct device_node *node,
 	return -ENOSYS;
 }
 
-static inline int of_graph_get_endpoint_count(const struct device_node *np)
+static inline unsigned int of_graph_get_endpoint_count(const struct device_node *np)
 {
 	return 0;
 }
-- 
2.25.1


