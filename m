Return-Path: <devicetree+bounces-38460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C1F84936B
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 06:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EA6A28215D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 05:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B563879D8;
	Mon,  5 Feb 2024 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="N+OCUYbA"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2138.outbound.protection.outlook.com [40.107.113.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DD9B654
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 05:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707111453; cv=fail; b=R+Ti9q/6KK6gZokgZLbOT6tfLOqv9u+3NKn9U8oAKInBjbu46smC7+dbMw/N+O7oCtbmdg9DcbcuE/4+bQMeGzIAxbiWvXsgU2A3WQgsqMqbGLLBLr3neLhmSihhxDSBOs24PAXn+2oQjpBVuEPJbSR9WMzSsOjKK7KKEcxKY0g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707111453; c=relaxed/simple;
	bh=lRuU4TU0zxJzq/cJ9zjsuPWzf1UBS9QrDrJd0aGRVQU=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=nycNziUOpIwaOyYMIKtD578k1cUre9fSzshm/MJAOSnlKqW++x2rkyxP2VVmH3qrDLwmol2xHURT63+QzKkKxLV31fTeBBt9I0t8sYODao3yCJP6op4BXLWEAXNRoyZ9WfpLrVvfSrnLXDpsQq6777kBNUqfAiH0eu7K7F8YxLY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=N+OCUYbA; arc=fail smtp.client-ip=40.107.113.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/Ukl+988HuZtYOdGzxmUUgk839uDnOj9S7SilqYE8VhQ6tBrMndpPGgNFmDS82lYvK2WynH/W3oNPg21NV1catzNjueHBzeUV3pCmwtsEfGXOeqpagMqyzd0W58kd8g3YGgACivZfs0vofbE4GsVM/9NbIaIAFc6urUN4lexkgFJIxSOCWa1EwNkqP6knhwgUQC5OyPdnhuEpEO42ZT2QvHCnNseUrGDxWXlIJhxM011o9RkYSG4dw9VZwjw2IG4VzvKWDWvhoXJg0cNOTLGekhL9Ft6aUnAWfbz5Oc4JIuLzs8+b9IsvPCeKFJuUBM7qXrOdNMxHtumBQBVDJpPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BtOExXxJIdRe6H4Xt8ZKMBjr5MhoZh9LkdNxDm4C1Ec=;
 b=h9acyooWiwFSLYbM8mCySqYdHvzlOpTk79QLvCqvA4NSXlpnwmw6bieG2vpOQtipnuRHJ/lx+5uNlKMymFAsEspIIoW3Ctmiz0+5rcV7MzC9bZHlAkSsmfUMefe+4Q9FpyNWUL37rVeGmBAPVuGFJeq7esB8Ia7/sfvsLrBy8IuAfroD0Yt7Am8jo8hEtt4tBr3yfIGOnNZFdDyfRrwdpBLhzx3ycu9GE1pWFgqE9Np+jVo91qx0ujQyb9WYgafYxRBW9WBBawwc7EXMJ4TI81QOcY3Hh3dFWZQ41Ezrj69Z/Jk80/psVeWjWIaYegJJ+WAnSmD/pl47vcKCZLxKgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtOExXxJIdRe6H4Xt8ZKMBjr5MhoZh9LkdNxDm4C1Ec=;
 b=N+OCUYbACmt0R1cOwQBlexqX+XlA5hWZ95Favi+j1ILnS3fCojguwwhQZ3iO0/u99SuKU4+xA48Exgz60Gl3+KmP9JFiFwknQPrA31uYKhyXYdfABRgHFbC5BZXC6vGEo87yN6mdIg5VsedZFAXMjvEa/sfiLwoCsO16HNUyaWM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYYPR01MB10593.jpnprd01.prod.outlook.com
 (2603:1096:400:30d::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.33; Mon, 5 Feb
 2024 05:37:29 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 05:37:29 +0000
Message-ID: <87plxbcvzb.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 2/2] of: property: use unsigned int return on of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
References: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 5 Feb 2024 05:37:28 +0000
X-ClientProxiedBy: TYCP286CA0058.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b5::9) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYYPR01MB10593:EE_
X-MS-Office365-Filtering-Correlation-Id: bf723091-006a-4dfd-45a6-08dc260c8abf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	5Ni0HIJXg4BE8BNQXn1vgsb8P0B1+qtacVssXeV+kWmXgiLOvBdwgjoKvOFJazp9TC3Ca/3Jq6VhSpCImztHaQwUtK4PYIt9lTVYJ80iyjkkgyoESv1U2jPiwtr+mLiMTKzqLsbsWwhryv7sE/OUDHM3ItL090m36oVdJWCN+1L6o+uSGjXntzSgkgVKoRXuxB/xpqV48QmfY+FOHnB1jwzoBoBgn6MB46GaJkLIe9CmqNP3wlddt61FpuJJlIGMFwl8GP9QdYNB9KoycqorAsAbkzeYkhGF6/LMyT9y80F027hLZxMK7KgwuNa6+dodkfJdxMUPJaRM7faVfAkepxr9MtZFbSqi5LCis0UEYHrO6FiS0oVz/F7GboLUmPpU36wCWplGeS0qgf9f7gm3l3fvmSePijJ4td3oLQW6v6pAPmgkH7Mg1OhVpl5HYVLuyZF1NUAqj9yLbH8MWN8x0QUjeHQWEc5/5PMHEZ3DHuX/yFtL77pKbLIfPqt584QkiFlfLalbP7sLVu/w9M62RBfqtsp4jWD8eqYHHR6jw61tJr6AW0KgSzgRlpXSibIpQgGgh4nJL7/KZoQz4Uo54vRhnpofF9hnbRKKAnXBE4K3PWX1CMv7cTBrWw5tr2vN
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(39860400002)(366004)(396003)(136003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(83380400001)(6506007)(36756003)(38350700005)(86362001)(6512007)(4326008)(110136005)(66556008)(66476007)(5660300002)(2616005)(26005)(66946007)(52116002)(8936002)(316002)(54906003)(38100700002)(6486002)(2906002)(41300700001)(8676002)(478600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?KLtbGU0tuli+Kn+279Ux1fNhBYmkZrVtbApPVl2d2KyKPwdhBc84vFXMxolu?=
 =?us-ascii?Q?AaRpuBoIp3peJa8B4MjBjDtbXfX/tWI/PojzD8Lh8XTQ8f6KOSIX1+3EspiA?=
 =?us-ascii?Q?3/cKDO8VQZ3qQabDobSNehcysf0y5ESHdnODgMsTwLXSpFGoqStKnbf9SQBT?=
 =?us-ascii?Q?94bBbrWboOPQyhADiX9PYzRMCVCJgHWX10hD2FAbcg5Cfx4R16EXq5Ld/Ian?=
 =?us-ascii?Q?ZaWmj9SDlF/dL+lOm7MUimvyGgv/y04mrXWO1XatGgHG8E4ucwI6ptUjHq6i?=
 =?us-ascii?Q?YAlYVGrGhnfBfss8GxrPBX+u1H55V/jHwe6fIaWSmdItFPb5PeVOckokAf1P?=
 =?us-ascii?Q?o/i3BzRti+gDxy84AYS/P3JuygdzRmfaGMw5LHCHlcadQuJtKBybDF/lp3T3?=
 =?us-ascii?Q?POCsBZDDZVm3PCwz9Klg0N2talpsnk1d6/sGT8uJ5uSMxSPKboEoi9nzzqcQ?=
 =?us-ascii?Q?s43jN4rThdK82iSVw6Xm2kTUYbSPYo5TsZb/qkAggIsyJ5cJ/JQI8enoJB1H?=
 =?us-ascii?Q?08I3CCq2tHrac5z+yA1sbe+crzJA4YsIK72o51F6yxWkL02UsFCECDpVfO1x?=
 =?us-ascii?Q?rV//kXy5JuvCkyjsBRm7yq9pnpQt8dDH9BiPHt2LmxWWd86qWUK43TEyEoKT?=
 =?us-ascii?Q?eMIds4m+B+PJ5pYyA3D2S1UxEWQzekysb1F6Heip1Cszc8t8oz6fKg7N4aJG?=
 =?us-ascii?Q?FiKCRSdYCvw8rMiEO9Qm8rTeCUcAp7xRlt4SqBhK2aDriMG1LT+TdCknTyBe?=
 =?us-ascii?Q?4JmRHPQEEdBV7kckqmi0QW/6QBTWNdGoKJvXWqqz9nd+wNUMGMT8jl5nKXYs?=
 =?us-ascii?Q?Z2Mw1RWhqAi2PhqiVNNcQPWJMcPdOSwQgVqE2sK870YENQ/Yw/WjZc8fhKn2?=
 =?us-ascii?Q?GPiJ/0HKNNHzITC0nvi44dmwl6HjtRxUOXohchM7zRNPXIrOm7zPsxEiZSue?=
 =?us-ascii?Q?s79qN+niKJvYqvABN0ES5DrCKp7BuP6IxX479Yi1GwiBM47hz3H2IerhVC5Z?=
 =?us-ascii?Q?masETSorIEkXyyUeZ6RiapVwuE8RZF3frX28jsqUyEPblAJAAJ6jtvy+kZfZ?=
 =?us-ascii?Q?e1P+xtecXL9GAT7/wh5aU5cbczaIjOLFxdGXeFcJH88e3lobJXRwq3anT/Wl?=
 =?us-ascii?Q?i8PFQ1GnPHByjLuDJKxLM+UMlbHXs8PD2UuwjjB+gi/JjkjsDwbtlZRUDU38?=
 =?us-ascii?Q?05yQI5nD1RdZ0oZrNYCwTLLq1WAslS2WOpdWaba1WCtjKiAn+H9H13mrvN7/?=
 =?us-ascii?Q?5AR+6JL6EI4fJL6Zys2608MPz/LHUmeCKH1BiKZBQtdZb75JOcd5g2R+FSIc?=
 =?us-ascii?Q?9Gnbo53nLO1JN+Y4h/t2dfa/6SsR7xVB5d3Bpj2NxVdlvSW18F7dstolYdgV?=
 =?us-ascii?Q?omdcefzMUJp5t0d+7EKulUqZ6/UU+Q1EDqf/vi7z5QHke3WutWOa8X5H3Yg5?=
 =?us-ascii?Q?pPe9bDKfEdFYSRs0muI5ry9d/1tt9UU4o+2Sa6Xwdb6bth87/pdOIvAtcoFg?=
 =?us-ascii?Q?qc02koKSi+ybYtPqLziN0H7LPLPs2XPHhLUZOi1gMqfILbIeMZEAmg8IQMpA?=
 =?us-ascii?Q?Y58zJuqQpTCzv62xHtJRg3+6brdeODlrf9ejXVvIvuJxmtnm4rPYbtG5TClz?=
 =?us-ascii?Q?6FHt4OOz8jbesTesjcscoIo=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf723091-006a-4dfd-45a6-08dc260c8abf
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 05:37:28.9895
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gV/bbdWfPAUi2T/puc02ETg77ae0SnMU0mySPwqdHYVVUa1f2xIWlhsUCBTeObcq8BOSffkocHB/MiY81xVZfG8C7vu5ASGKkWyG2boAjhxIHTVLfcuBcVkQqSjE/4HM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB10593

Because of of_graph_get_endpoint_count() doesn't report error,
just return count of endpoint, the return type should be unsigned.
Tidyup it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 drivers/of/property.c    | 4 ++--
 include/linux/of_graph.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 9291759c8228..c9ed7b5ec2f1 100644
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


