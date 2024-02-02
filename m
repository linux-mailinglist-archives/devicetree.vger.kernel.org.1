Return-Path: <devicetree+bounces-37849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D664B8467D0
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 07:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AD0828C978
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 06:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C6817542;
	Fri,  2 Feb 2024 06:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="VqhObHfd"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2104.outbound.protection.outlook.com [40.107.114.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A22917546
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 06:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.104
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706854213; cv=fail; b=CNgTL34bV8h8V2zb5I/Hm/XoqhGM5Ltg7O+tFLNqBw+/QP+novPbnkqpqmXB2+mXGPC/jBRXofmpO1w2VyTnFcZVcTgJMMNy6vSPpHSxm5FT6DaPwKtqaO0IutWZ1r77dK8EOaprD0l0MMb6KIIGtYuUw9jtkr3DW++cKL9eeXc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706854213; c=relaxed/simple;
	bh=JR76OzPyZ8m3+5yFG0nHpqXN18IPCZOJUn8uoNbO2i0=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=PRCpYpAWkoREqmtJREO7PvIFzcUgIZdKo4BQK6YIUM3Ax1PY9R9ztol+SCjXXuHDXE4CTc1wmsNUgu79OQaNeSzsfwQZ8+FKjbF3tGrUKdtqFVQ/jNzLBdrPe60mug1GzDAygeLd0kqZtbgBNs0kmLh4rjoyc+AroVcI5Y/9Tao=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=VqhObHfd; arc=fail smtp.client-ip=40.107.114.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cmCVhfJHpkAA5RiOoeVd77o64H0xeWlvG4/Nq1tKF84az1doEeaRD2ujvzglxrT1+KyBKoTuA/KI9ZVF/q+oBiW6ykZfh7b5IgsxWNSdyhpDCaZeiF1gYgI9fFHE88UbHtps/SYOQaGbGD0PPKgve+hMf+VVLR6huKRAhWtBnZ5X/aE/qbHoFmS+nyeAL9Ucl5YFMMT5M4wdKmQHlhKSe2nnGQND49fhNSTHRRdqcmN4/b6IS47F4FfHWITJHxmmBz+Hfg9Ljpi0tmbRvXWzqlEGTw/gLRSWoJ+lCLK6G40cK4zStZKSXyzdpBjcE+8sw4sCrK8dj6YK60mMDSVWug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=maeIPmsW4DZ8V4nBY6QneZZ9SJtcvkSRsiWuHbWoEn4=;
 b=kleeXeWqCqGolzgrwGub/gIgecPpFaRoYap6Gs1BbvhauXoiJqxnf4Xcwt+F0iMiA9FIQXLoqnGdWCPqpysHBT6DMsKX1RaVCms7TpgpXRMsv+C9dg+CpZ4GoNV4Mbp0AO4y/4yMeTHfXODa++a/uLm0Gz2p82Vs0ntS89zaAiF7RDfjGVYbrIYtX42bfJCQbl2AtqRy0bT2dWhPzfXpLzp2SKxaJA4nQbzwkQwOxABdt8AOjOhW3s4BEZXaPM1NKyvgKf8iMIE8lVwcI6PrBHpQ0YkT8ggnYn4olG1veiYpcUzQpL52n7BUWPpvPJBVabEPAw9d+xVYNsSX1vcGgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=maeIPmsW4DZ8V4nBY6QneZZ9SJtcvkSRsiWuHbWoEn4=;
 b=VqhObHfd5WKWM+OafoUP3KNm3O1LX/2++r/9/+griSgBIuXd+81v6Hn8cO9Eq5T04V/f20/swHA8yUHs+20nLSV6QD/+QGhp1cEtnIKwh+B90tz1jSkz0ppqmfGg2+GZMsGjEvkcs7F8Zo0yjUGI/gZoV0+x19nPliaRnnvVfXI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by OSRPR01MB11634.jpnprd01.prod.outlook.com
 (2603:1096:604:22e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 06:10:08 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 06:10:08 +0000
Message-ID: <87il37s8fz.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 1/2] of: property: add missing kerneldoc for of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Fri, 2 Feb 2024 06:10:08 +0000
X-ClientProxiedBy: TYCPR01CA0087.jpnprd01.prod.outlook.com
 (2603:1096:405:3::27) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|OSRPR01MB11634:EE_
X-MS-Office365-Filtering-Correlation-Id: 33f32c79-9b06-47c6-a7b4-08dc23b59b9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	+ayT68OvTlbllvWFaZnTWSn0rwP57lus7ofKQAma9y3xVoHaMf+kESl1EbxQRl7/1YVNM5L+4+KTGDzY0bmMBqgPYrOWCPqU8siKLG0PvnkVBjxt4MTCiWSAIvATz4gfKjPSt1iohxQon6nV2/c5h12WCCPhOsmD0nPdAobQHWuW22jToxWotug5sXZHVXGNYk+OOZcbXsBzbgE0Dqb7G06+n8mPyjk1dhGrcYwyNao5M6YBHaZO+E1/KZVbL02Io/802Raq6dvkazhBuAAKfnATXIsdNvL1eT7fvb2BGX+PsoGtyRHpbE8MiJMFfYDv/vNFTStMo7tWICBeds9Nm64ULMG4q36iKcyjpYBfOP/ngekWCAehx2IAjsHw2eud+sshSeinMJitwtEyCsZPGPSgbdXXbJUE1Xw0Ac8JH9EHKtCPzqn3ZjsApBn7VaWpx5LiM8BRI8indAO9T3qWy7IbCV0NlAZFzz1PL01P8E4bivmKEMu8/vpuiE3A0wPX8Q5j/rD6bRWcBxSkl4oW9OHTQRBwvyLf6sEW4A3uEkhcYLpMxDPujhDFdpXtwVMsvMZi7iIqfoh6yND2Z/OK5Z+jIb6KdayWN1/0vI/g+BYqgrk2FN1INQitYvY3P9lu
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(39860400002)(136003)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8676002)(4326008)(8936002)(5660300002)(2906002)(41300700001)(478600001)(86362001)(110136005)(66946007)(54906003)(66556008)(36756003)(316002)(66476007)(4744005)(38100700002)(26005)(2616005)(6486002)(6512007)(38350700005)(6506007)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?k88HUMALY5vZT1H8V0JKaMyDSTdSv5HI420XGffPvV8GlZO32Wg37ytOXnzz?=
 =?us-ascii?Q?TEGvzz99SjGxUvgj0CldU/IY3ldVYJ8UzEK0soQQAI12FhV88D92LIj8mXg1?=
 =?us-ascii?Q?/dvXyNfungB0mWXqS7Qt/YJIf7f+kfIXj6dIe6xCgoh+4LqHTu+1JI2M/PX4?=
 =?us-ascii?Q?/pIzPmaMx3ltscS9GVMYrKouHYyr0QloYlY+DTQKo/bHma8c8gWmZlAI9x8G?=
 =?us-ascii?Q?AAT2yeMYsRWV7sw7ys9HGv2rcmk/KF980kS019kvp8BcW1COFTxgyzGSliRZ?=
 =?us-ascii?Q?dq+JdbtRu4WqSiWdv2rf/r10cjVRnPPJAE9L3MyXzXXqFQsUVfOgpvmhZxel?=
 =?us-ascii?Q?rzZral855/jHbmj+6+mNuHGcpQakA0fAmPC+d2tELcnIAcFqTbEHMHTAHFzi?=
 =?us-ascii?Q?5E5xvlGWVg1orxb2ufTKvfepakA33PXMI9yQ2GoWnBmiChUeyq0YTI/rj7mZ?=
 =?us-ascii?Q?kL6Kbikrmra1KMYN84T6iIUeXRS78fVe8nHhVqf/CayQA2pu94ZXYetuo0WU?=
 =?us-ascii?Q?VzdNsA9XMqUzUe7jK1S0R7kZ8bEOParv8uiX4Gd8GHNaExi0xFNCUEbFO9B6?=
 =?us-ascii?Q?k0IDv6GJ5ypHt6x++Wmswu53/zmF79FI/HvdoU+7e/gt9A/kfSF9csmZFpNj?=
 =?us-ascii?Q?1xSX1KaFDfc55OmzqLRQrVpWlJTchd8YoGNUT6H+v5/h0cr6NVcMZQOP4hlB?=
 =?us-ascii?Q?q7f2KMYznRPxHWLZgcx0HvCjeC1WW0Nj9NcBC8tE6gxcezEbqOFb70iY9E6L?=
 =?us-ascii?Q?3ihxlDmSd1UkI0TieC0NuHKtGpO1ZZoe2HLwhnVQlO3NchC6TnE9tEJW7Y3/?=
 =?us-ascii?Q?pjK7DJ16FYmVSOremc5Y1t7qpUrbH364ZBD2Ub9XsDJkCARQunYwTUM6x7nO?=
 =?us-ascii?Q?3ijE8CWI/hJTuJLc0VYtWyPlIyKk/vcGytbR9B5VaJQkxU3Y889X+CUBVqYz?=
 =?us-ascii?Q?XlNlP0RUslD8e02zzeLZMrNaJVLbBuVj1c/qKTXE1Sl03Q/d+DEt7zyc5bat?=
 =?us-ascii?Q?hQUWqTLamPlANXxqBxBT9tD6Z9o4TTbjQom1IzY6H7ecAV/AAwkRwzBF0nlf?=
 =?us-ascii?Q?iuKsxwc5ZIsRtCuBzisSWLDiATDOvX6cDc1uSInRDuZO8Ta7HpNQ13rkGeMn?=
 =?us-ascii?Q?fdKNVEN3mGIZHejPwaeIKW/rfRsxsJjKmf2K+PI1zgvrgTLA4EUA66JWDTYx?=
 =?us-ascii?Q?3CWFSbhF9f+FH82JQQHmgIrDQlbCDiUyrOIOccZ9deKT890AHtEvfxdoeacy?=
 =?us-ascii?Q?kD7A8Q3992oFSkv3/R7ou+q9JN9QWuTuGdUQXPeB5/3Hr5qMeIFw4un6uvMo?=
 =?us-ascii?Q?+YgVS4k20gj1yybOBPLo3+/0F84Pb1vUp3lJhOJ9NwsfoEYefauuYV117f63?=
 =?us-ascii?Q?nXXw+vfqyPIyVhCYrg/THmbfAOgsWO8GE40bodRTRKonj75skq5sTaYEFSqI?=
 =?us-ascii?Q?+LaQGCHvDry6KEGkBcnDY94yDtlBwLmWecO0B0WLKBwNiSZRs6I4xRXYZiR+?=
 =?us-ascii?Q?Cn82sBEW7yN2aoWnwYFBygfZY/HwnYQRAzLAOL19qsr2EZE1J9espbkM8LUF?=
 =?us-ascii?Q?l+3lBNEl8Fai9yQv/2ODZ41ztZ4KNMx97hfZiKfwLVrFUYiFi8Q3OibQR8MY?=
 =?us-ascii?Q?942afYzNynFSp/FhiRJmeyw=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f32c79-9b06-47c6-a7b4-08dc23b59b9f
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 06:10:08.7511
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f9J6TCYbwV0QHzDS8LMOkwxmXu5D1GPq6LFz/2BaoJegCx9lrvmo3nkNTDatkMlW99rR6rQsuI8CKsMFS0Obaj8jcXjU4JrdNOfwBzb3VuHp7pdMIC4A3EclqeJFSex+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11634

of_graph_get_endpoint_count() doesn't have kerneldoc. Add it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 drivers/of/property.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index afdaefbd03f6..4e879faa1710 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -811,6 +811,12 @@ struct device_node *of_graph_get_remote_port(const struct device_node *node)
 }
 EXPORT_SYMBOL(of_graph_get_remote_port);
 
+/**
+ * of_graph_get_endpoint_count() - get count of endpoint
+ * @np: pointer to the parent device node
+ *
+ * Return: count of endpoint of this device node
+ */
 int of_graph_get_endpoint_count(const struct device_node *np)
 {
 	struct device_node *endpoint;
-- 
2.25.1


