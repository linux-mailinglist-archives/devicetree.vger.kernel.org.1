Return-Path: <devicetree+bounces-38459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E64784936A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 06:37:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9E2128214C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 05:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A947D79D8;
	Mon,  5 Feb 2024 05:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="Z9W7apUw"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2117.outbound.protection.outlook.com [40.107.113.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE0DB654
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 05:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707111445; cv=fail; b=DR6b4a80gw8LgxC1K5qj/D5sSY+W6QbGEWzjHJuL1FOpI7IAaacDjccvCzl4IPUCmJA2Q7RS4OGHYabieb2fVw2Fyn36eYFzIJh4Z12eYtq8+FQyalTR1s+eTtJBptxyZ/X/dLKqZwPRWGydOEfPOsJUMprV/EPSoGoJPF4Y/A8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707111445; c=relaxed/simple;
	bh=XG+2tJgo5LNlvM7RmokDbtZ9bdPolM2GIKgqVSZYqUs=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=N4aQKlYw53s3j2f489Z/Tr2vn/Xf4pSfC59Qiwu2EgDuNJQMx8FbSyU/Z3cDXIQ6/6pAzj+ijcZSqNN9VJLdubzR0S0H7kR0TKll8TmnBCib9UTqG1q4Yrl2GNSa1CZ0SYBJ3UGyHOPfi9xYxEl3+/jnvCcS1WQFUuYNIqwQeOA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=Z9W7apUw; arc=fail smtp.client-ip=40.107.113.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOZWpq9BGHkizisL9Xcx78s5VuHTQv7Z1s9BQD/4hKZ6NC3/EM+6gXOWYam2bzF1HlhXwSYCjH/AhF7ByOMkeSkr82T791VaaBZhbooX+AEagX/xn3c7aD9bOfw4mZhx9SZkvmEeRcyun/2fqimlnKF0PtxMKmf44N2JDl0d5NPY6vGdymclDGdI4Ncmtbcp0KKRYQfzjeu/hnoI8yyYaGf/7EmrdI7qE+Rdapfc2xcrtSyMqDpZ4+QdKhMDmI4YedVbyZ0O95R/XMUzD6jI00dAn33FZJyNbig1LKed73Raw/ml98IU6oTxeIHjXMlUYofvTO6TSFm/OaNmXtNXPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yrx496up/Ljc8cQvifHsEcgsmo7yRuKt/9Q1CJY9kVA=;
 b=MGWT1ZFjJ3ll0sc3k2yQA36Be5Gn+UbZz5p2wwx69t/AMUcHNubzMiQTpVgPeRZnWUmWhTTONxcljJ1l14n+TtGxvqLVK8YpnfKmBUL2sq93sZS/OYMsGU2VxYJr2K2Prh8YO6pY/uPE6N7GIP6A41zOks4I5wBsAQxgrOEPyvl7GQXcExzDasKDjPlbE4Qbma3Erpi/0jzjhKLQTH2f3GK+j/LR0sTyZKKa8rOs5wP9jk8Cuz2qkgChZdj9CRGmpWam6IHeSUSpwoZ7KrrOJYYPoE9LwlIYfCSvu2x06ruzEe61TI3e2lXvrALQ/uK1i9VS9oi9t4XIJCYuJZUOzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yrx496up/Ljc8cQvifHsEcgsmo7yRuKt/9Q1CJY9kVA=;
 b=Z9W7apUwF6S1FEPT/eEogUXBGTbyq1S/Dod8Tbq2fUoJCOjqcJVLAz6ax7fLmpZ6NToFbN3GPzDiDnZHXJnCWW4cJbqM3ZsCuznksdPUyDF+blEyO7VswhREkpgWlvO6Zy0QTokTzgBnsq1LCPtFQNkW6SjBREoIMNNSQDfXtQc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB7821.jpnprd01.prod.outlook.com
 (2603:1096:400:182::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 05:37:20 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 05:37:20 +0000
Message-ID: <87r0hrcvzk.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 1/2] of: property: add missing kerneldoc for of_graph_get_endpoint_count()
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
To: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
References: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 5 Feb 2024 05:37:19 +0000
X-ClientProxiedBy: TYCP286CA0155.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:383::13) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB7821:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b812966-3f8a-4881-88bb-08dc260c858c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Pe+If9p+OmGNVM8CL0oRXuKAMVcPybgAEnQOw83CdEmf32BtmPXrc/EmFLo5QNkJWRgg+GxgwxkbpNhfA5ADsKEHK2tm2uw1NQj8HQc9Z7XLjLGB7yugHMDOVn9To9BnCa4UnfabP5QfzxREkGCifMA+AjQAcPcysy/J12aee9kSrC7KYh8Wfcz1fEoBTCXru0pQSDAkfcJYAhF7J+HMNAbPAgCJ+BiY2bHcMN01gWpVQlwS16JEG2jOGf+1qO9gEHfnPRpP+0x3pJ/urfLnEY65oTV2Ew9uGkB37fAjnHXUeZVKtim4i/wZ1JMDLoC/1VqiwMQQQ0RTsxL+SuYFGiULYiR9B6GCyjyyV6lJG3DZW7hn3dVFka5/Syd22k3qqw+J5iP0L6LnaHsfASAvpWautEJKFqQyxs/k6PE+XOPJSlvr3A194YzNVqYmWKHI0Mvv0+3Ryju+MCQDhCJU4Gviif7ZgA9C9EraSrgapGg6iXM10plqRR8H8mn6Cdm9afVUwVEnzuQAgT/1ALnOEG3tGq/gqm7bb+Yv8i531fpUTN+NhXiaccOqZ+umleMIe3cAncvNNcWAVh+7crguYMrQD+X+JBlmUxfrPYC0rCBGLgczZ5UCn5Qh1j4gZGAC
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(346002)(136003)(366004)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38350700005)(6506007)(6512007)(8676002)(66476007)(66556008)(66946007)(110136005)(8936002)(54906003)(26005)(6486002)(478600001)(316002)(52116002)(5660300002)(38100700002)(4744005)(2906002)(41300700001)(2616005)(4326008)(36756003)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?r3zStX2U/V6rAxsqyxAgGlUFva9OPKgjKeqdC0QiydkprLho0kd0l9mC8pAx?=
 =?us-ascii?Q?C2vOPc5FaR+btjC/gekidpAuDRvoxII5IQIK7/HCEZ93VkBdTxBzOd3mk6FL?=
 =?us-ascii?Q?jsD10Uj+2c9GvCRUxX72aBIKHsASwbFNieZ3rsoa4+30nx8xi7Oq4E1euqHt?=
 =?us-ascii?Q?T373jT8DH9g52VqECV7m9bZ26G/kEeXlTB8T5zAKZ2dFFwNMrz8uH4W4DVbn?=
 =?us-ascii?Q?I+/XmAiumaVz5IkW2tBc68ExNYaTl5IUaK6TBBO+NnutGgq52+TS4fbrm3FT?=
 =?us-ascii?Q?bE0b6pDl4Q0LdQX2jmnWh9LOFu5tWaAZOXbZSvNGiKeqwf9QLLBFhoo7Ng6q?=
 =?us-ascii?Q?RmMIuGIoPFBJ/Ozaa4SsWy34oc1c6xPpi3qOZghyZzapKrM+SBzF0I+QpbhV?=
 =?us-ascii?Q?7FHEL5d4rHCrI+1pNsHoHAq79z5xoppqs9hwEjOav/BzxSBaX89Uoxm9HNjG?=
 =?us-ascii?Q?T1c4vBLeporaRMC3irsSgOM6e7F/Eu4xSnch0jBDooyNN7TUCSzPrrOQCyYh?=
 =?us-ascii?Q?GJROg+3YSfYYtbZDXOqVfm2K6JvATEoblwoPzKsazT0Y7JKHMjxtQYPwYBgm?=
 =?us-ascii?Q?PF65zl2c1zkEJAQMFy3Hj+0LpE4tNar/xn7qgNlnar+sGUvmUJFZIhfcDxnM?=
 =?us-ascii?Q?33/8XWABNxf/OEDndQ/ZMz2QniZ8ZqdxbAw1hTRZ2MWADBrgnPyWIvqymbZ4?=
 =?us-ascii?Q?o4w3O3pQaukf0Gmk3p8A0vgRgZFNcR5tlP5guO+pURT5mIEoYnYLOts4to7l?=
 =?us-ascii?Q?YC6I0cPVxWqdZnxpw3Xg7sl1UwHxripi7viQjKho8dDwqz4NX36MBLMe6w3Y?=
 =?us-ascii?Q?wV/7Pz+4avMXDbkV7ebKHLdM+M4AQk0LameBK3ixshKO2KLPXU+s6pBFzwRc?=
 =?us-ascii?Q?+/p9iTxYvCre+aKWO8uQAPULyHnH3jb0DNv80S9BDE7JMaT5R/fEZaoaeIWS?=
 =?us-ascii?Q?Y2GOYkuh5/6LL4zxlUS6RvhW3Pf7ck4OXZp6tcAmuu93IXNFOcnRqXwWXrQa?=
 =?us-ascii?Q?vc/JTDlxEga0AIco8GB6H9PLhH0FzQwEKOjDWuvIDKHGqiQqXPao5MN4wy1e?=
 =?us-ascii?Q?ZboHxT7lqNVkejlZiTOSo0A2TELnsnuakxh/CwSpCOBCMorOGzBh2cFZsf0n?=
 =?us-ascii?Q?oR4H7uz96vlYEx6ORu5zmq1f/lPPvITGHgH77HOOAvwmicnUFJ3/vd6KkH0A?=
 =?us-ascii?Q?DT8O7IiJxnXm4vKxqLHnQbVPp/UTnklNCdaQGzEJBesxmEkMUt0wQ62LG3S4?=
 =?us-ascii?Q?NlijP6TTSw9aCgKP1dV2DdOr38Dk0sWyhGZc5BlELHHetppczFdGc0ZVglnx?=
 =?us-ascii?Q?7PFj3aLhiGw7SqMqGIKm3U18h/9i5DDlM0VrRi7PcJ5L0jq81VoLyJEyjhjk?=
 =?us-ascii?Q?VfgyoLUsRuos8qYOOX0fLu9pR76jSt+c4ukGyngAxeuFEcxrWhKteKfQyamS?=
 =?us-ascii?Q?e00sI4zzBRK1FXjs8wSukm0NrHC3otm3vNQS01TYVd1kMZ6ERdFSvPz2TM6j?=
 =?us-ascii?Q?+sXs/Fx73OK/ZxK/BUkLU/zZxDL1iNpC1SCtzYPfFYT0Ju2JOOe63qyfC4zv?=
 =?us-ascii?Q?PxE4qAzYwJ92wNzPOGK2DMPPjlbo5VOCa9Y0rK00TGWbHzVVPiOaRzJH+oyK?=
 =?us-ascii?Q?vzg45SHRPYXFsFlOV1lFe6o=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b812966-3f8a-4881-88bb-08dc260c858c
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 05:37:20.2872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e4Andn7scvvHHVNJzPqfWPX4pYvk4OUx/y3XO4wUc8R/J7CMZ/OVALak4baDX3IOn1q8VrJSIHrlIXHuFz7En1TYC2bB2eetJ3Mv1Xh/h19qtT2t9yjm0kEP6wglJyWN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7821

of_graph_get_endpoint_count() doesn't have kerneldoc. Add it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 drivers/of/property.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index afdaefbd03f6..9291759c8228 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -811,6 +811,12 @@ struct device_node *of_graph_get_remote_port(const struct device_node *node)
 }
 EXPORT_SYMBOL(of_graph_get_remote_port);
 
+/**
+ * of_graph_get_endpoint_count() - get the number of endpoints in a device node
+ * @np: parent device node containing ports and endpoints
+ *
+ * Return: count of endpoint of this device node
+ */
 int of_graph_get_endpoint_count(const struct device_node *np)
 {
 	struct device_node *endpoint;
-- 
2.25.1


