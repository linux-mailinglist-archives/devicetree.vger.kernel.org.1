Return-Path: <devicetree+bounces-133462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF89B9FAA98
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5FD2E7A1F6D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 06:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102C718DF6E;
	Mon, 23 Dec 2024 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Bg9Dni0i"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2072.outbound.protection.outlook.com [40.107.21.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22725190059;
	Mon, 23 Dec 2024 06:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.72
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936152; cv=fail; b=CLOqYXm0rNUTUEVtIlB0vE3CD+jfLV2vVTf7Gu4yk+q24O3Clo2kjINKwAfZkvBBbOPt0BVWyG5d2y+hy4okRSI9f97kHij+pJ1To29ehqn5zpANprIQ1m56sT8cP1+hRk7vKMUn7GRGUxA58BUhGgZbCW/Pd7r7rwgU6Xe8SDU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936152; c=relaxed/simple;
	bh=PgWq3s7kMp8nslQAViaKfdO9DREBpXDrb1EpF0Kuxw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=B6AF4dz5pXEzgmj3JNllqZr/dRPvBPXMPKwkRU6MDPtOKamuOjqTPU1jIF26BC4eQs9/6qIaHTHNTx7NnZMHdM+eVVWvkPMv5buPWA8QrUVwWb034CuhXvsLOzxeXwumy5OozBZBJIuhlimIDM5fwDmjJ2qdNOWn4CwWxoRHnF0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Bg9Dni0i; arc=fail smtp.client-ip=40.107.21.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=idiX0iFyJ2Bp/LzedqAf0aEXjdBcedHHYXYQGW4WhOaJW+3HaLh2/EX9caayMhRSLOlVB62bqCVRReiIIL6JLXrYRgRex5vqQLsltLF6uGsbyNbjkLa7rg0FHFPG+lzU+NTtJapP/KOE1jdCrtCNYxwhJcaV7jePR7bu9We6cA9d5maDxRsqW33lNvRX8C7wFRwIsK5MU0yqmRo1kppxAO7ptk5yRb7M6waPDiUolG9nZg3UrbpNqOIOvzmSx1Zruoj3vDRvUpYpu4G+JIxCSpihvgfGJGY+c3Dl24Ntx7HSOA/S49sqm5l6MZcd3l+VfqOH5aG6BJR5ZhjHpxXi+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRGsCfyFjAsb4Q/6iQSSGKNgGxkvtLPHfSylzBOaDCw=;
 b=JRhy2a9W/6WJbi7EidN4M5hXyoobu5SjFiXipzGZt4M+GTZrzpMwuC8QcMy8eMZZ6RXCw/qFFlj/3PVZNodLJBmpRC+Q3kogbeyAGBhgjmwKBznQUVvHvdV2rwr82bXgjjK71kZoW8Qgvp1T3zsFAfDU90EAkuK6qlttmqwJ4G7xkagAUeuyNK8rzuhJ42r8dCjZboAoV4ls8QyiRQbtw1ssgEkttqPBGaV2udHQTeSOiZ1eIctBZUcrC1pFz4EGVkMNZX/p8+8LUZ+JJ8+5kChz+b3ohmI1Gm1ftN4Blc9xolAwb+xfZWTlM9akPunf1IXAza814IKRIVwKvNcMGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRGsCfyFjAsb4Q/6iQSSGKNgGxkvtLPHfSylzBOaDCw=;
 b=Bg9Dni0iTXc+pMa+5DaCQuVGcpSacoYADaA2wnFxHfP+CTE4x9wkl/lxUt+87UafZqRx+HELR4yxBMiZc4EnFVSL4cu/wNSApOjlsBZJj9Co/otPWymxt01Mk8Vv+tT5YT9cTJQLsPnCDMugXGW5HxQDTGjZl8Ni5py61QK+cRVz9Se8TTYEMh/40ykYHhFOkLWlFdz1uZVqPm9h30v3TXoHBegFswlD0Bm4dnCkKoOsGUZlmAHvZCImO2Qj/PxD4U1nVWhZevp3xvlBcD2EJD1uQajokeNyDjcUgQFaUJbNesv0LSIhnqer8ueZBxcKQu15+B0Ml1icb4V1mk/+Rg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7941.eurprd04.prod.outlook.com (2603:10a6:20b:2a6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Mon, 23 Dec
 2024 06:42:23 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%3]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 06:42:23 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	u.kleine-koenig@baylibre.com,
	francesco@dolcini.it,
	frank.li@nxp.com,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v7 05/19] dt-bindings: display: imx: Add i.MX8qxp Display Controller AXI performance counter
Date: Mon, 23 Dec 2024 14:41:33 +0800
Message-Id: <20241223064147.3961652-6-victor.liu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241223064147.3961652-1-victor.liu@nxp.com>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7941:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f1143ca-ece8-4f7b-fb11-08dd231cf52f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gCoV2/jOQyq3fPAr3hssZM6IPuM8UTSBFjA+L4SxqUi9LumcQAsgG3EBwDa4?=
 =?us-ascii?Q?51Y1mKUZVCQ5v0MHYoBULx9IMf3PUt/56A2KGXD4+1gtHGol6NhQ1WbMcDme?=
 =?us-ascii?Q?KwJQpJ0gDfVsfzJkRbW3gobd2acYVLSj0CUR8aZtwA/RMfN67sCJg2Epb26+?=
 =?us-ascii?Q?7f4XlxtkKaXOl0tDakn9O7KF4A+To90UpZXcaOflG/UlSUtwPY+7m9A2Vwu1?=
 =?us-ascii?Q?Hl6f/6o7w8eqjvjN+Q737sWatF6chEqH4vEVpXL/7zkBqywRSUpPcFTk4T4T?=
 =?us-ascii?Q?fVnM4kys+/1qWTUyNMWQpw/BeunlVWAa2TKa3+AoT9pcfmlnYXC9e8pZ5MVp?=
 =?us-ascii?Q?pI41KTTZ23uuuFmM3UsYblNO3m+b9sIFrcSiQVSeaWBp0SXa5TfgI2Yms4SV?=
 =?us-ascii?Q?W/Qu1DlUvd2umkSSoFLlsYjx6FQY3qgDey8C2Zi4OFasCFky7QPUsHhAuFf7?=
 =?us-ascii?Q?8CY4vDfk8QOXeIf6+785ne1W+4Jy3AMkgE+ZBBwjmAxd65dUOKn+jYgjoc3/?=
 =?us-ascii?Q?ZKbUA3GcmC6vdLXmEPgx5p9jmFChZDzPaeN8xtkMG09VhV0JcGkI/5DKL4+I?=
 =?us-ascii?Q?vLvb1jjywYFBmKrHiN2yexoztkPeXL3pMqSSE2Rik6wBIaUH8wETuAqC8reV?=
 =?us-ascii?Q?xYWNBBoc2G7hOHq8w1jtAHYFoMrSv0t6UlgHo3Uj+UAplsIdkU8e3oaukfGG?=
 =?us-ascii?Q?JecqNMnJb7tGDNhuwVzgsBj7qmILQa+/orcsDne59SPrfio0wMLLS63lDtWy?=
 =?us-ascii?Q?eAqSeYc9EAEmcgujPane5yHYUqudTI1QzBUzf3qGyf7YROGRkxEaMm6PKSoJ?=
 =?us-ascii?Q?s89QBYy3iCnm2602pl7zXnixXLf8kKKJ3I6W/aAIBsdc2RWphojtKc6tBoAn?=
 =?us-ascii?Q?j2hKhMfo4zk+nfQ0jbAJIxVjvI/CycnWKYFEwbq7U3zRBo5Se2P7S5rIRMj+?=
 =?us-ascii?Q?bl4sr0FROmvT4kD8vyWpX8M0eg/aMxfGPSMEg/imsD7KUfcWv5xbcjZ+dMuW?=
 =?us-ascii?Q?/sre+8rZwJBkNqnmgYsIEwkLL2AOOqQhBiBqW4PXjkS9rQpI6PRUwGtaO6I5?=
 =?us-ascii?Q?Ae1Kk5obE0M6SPf3Fiq42uv25OsIPZmfPWHyLQzL2AvGvjSsGGGC1mhAfF9c?=
 =?us-ascii?Q?O/tyrU/vL9d409XXyFT2xtl1TDG6gJ6QB7tjR92KhAcReU0IKRi5kwZYyFXj?=
 =?us-ascii?Q?DhoZWmuxhRdOjAsZVcB+zx6IZoNcf1OVHZu7dscXhVAT6c3GSnU/otzfkhSY?=
 =?us-ascii?Q?Byfq/k3We9eOxLplggRNhkezg8eecdC+Jp+k2vD6LQCBoQIocl4ATHJp7L4t?=
 =?us-ascii?Q?/uu7ZRa7IsNsR++WUpK8Javd1LXZY/6p4m6Fv7hqXJrSgkzF6sPOWwvDlyMK?=
 =?us-ascii?Q?XWN1SPJmUpMWM9AqD0moQX2IHMbg?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?DWvXXAR4sUomZ8Qq2RTorxkaaMnKHcu2BmoDOO6Kj8qNnzqPlv9FYZRcNsTY?=
 =?us-ascii?Q?nZ29lat7DnJsOAhYezY2KM6KYXLMc0utjcbaOG90ci7WNZHvhP2vtpVXhulv?=
 =?us-ascii?Q?PI/C64R7rq9Lj7iAiR+4WUCt6hWeqpQn8ti4TCNOZOFgAQFG7zDcSDQervX+?=
 =?us-ascii?Q?7vnG2kszB/xrxAzFxD4O5DUJNhU3ZFa9SHTJrhBBXemPGkiz+p/BmqHRbGat?=
 =?us-ascii?Q?Bfgot/fdRS2B1kAm29GX0DJTRyDpgaPouE38OTmb70n9T9INBe1n10/ay0YT?=
 =?us-ascii?Q?virfwNZNl9u3A4L63YRznhj9E6mGZhbau3IDKXfI8aUqJj8q6A1TX0Nslt1G?=
 =?us-ascii?Q?wCXoTRtLBawEFrXlfTjtVmaQ1eU5mcVYUvPNIsrRf0UHGKO6zYoO99gi57C+?=
 =?us-ascii?Q?WGu7GiSEcWzkkJXnd6Udf7zKhj4jdKn80/0r2tRu14hD4Z7TDKUsBQVIek8c?=
 =?us-ascii?Q?ebyJc21EJ/R3xvKSVdG8K4OlNC8AwbvDL2OFWv1A+MCg93yKxoSnbyeFQ3o2?=
 =?us-ascii?Q?n5G3LQDjPczqfmMyai1eTEJlNkNFxipYomvjyO99cHjaUQgXMAJmHzBJAEOI?=
 =?us-ascii?Q?Qf6MoYWUgLzngiHOKbSt7grT0U7BY6u6kUK7iSuLuKm4AQOvqTlOLLACsHHl?=
 =?us-ascii?Q?vn+19ctjgz8Q9XrZOOUNBQLWlZf8TpMiR2nWuUkCZwnPg4Ejg2Pb/i+wne59?=
 =?us-ascii?Q?c/c4zkaMqKqvbhII0LTwZgnsebwVoriKapvFB8d2i9NAQUEN/bhIIRWeRQaM?=
 =?us-ascii?Q?F4EgP22vSlAY14wvzgehI8mKjBkG8iZ0LBp0ABbg068eX0SrwjU6+izMOxUC?=
 =?us-ascii?Q?4LX66fZ99q0orbRSIWOhqWzYfrtUz9uozeQdpqSRQ2+3x2t1Xja8PX0WQ+jx?=
 =?us-ascii?Q?f4Ff0SmTAIcQBWXADM9rdcIU5IwZOpXjp2oL7A9sZehyDH9jLZS40k8Uf4UV?=
 =?us-ascii?Q?i3GfueNkZFz3zyOFSlsbRer4CFCXK1swzeQ4MZ0Bdty+Eqxs2Ic2CyeEI/NN?=
 =?us-ascii?Q?V3KUVPBpTnl7a7GYEsxpRLg4XpOoNTuBDBEdRxQgzoIiD83lbCwveQrtRcqH?=
 =?us-ascii?Q?dbjdlxjILYvGQ1MUtqS6njXDXlfP/0KnheA9LEmkq7NeSaTRqtNZu7Sn9lpV?=
 =?us-ascii?Q?yEfALEObuJeEuOUKp4dkw9viKa5930Dn8/hK9EPn9P3uzd5R0+R6ikIn7+XC?=
 =?us-ascii?Q?xmNkqc3+7bKosdx+Yn8zZwMtSZFQixhxzUSzG4K8oJL2tKcsqUBhyHHZYhGT?=
 =?us-ascii?Q?VhxFGu5dU7BPuSjKjojOJ4ufW9G26snhemahUFdFM/8TqNFiXI4WBtQF9URz?=
 =?us-ascii?Q?RnQrO3FU2VDssdRapogxw6zJmw+Jx8UfZP1LRjQchtFrVVwkfL6xQ0yk9+0D?=
 =?us-ascii?Q?dHz4/mnfzj1oppwwDWQXHiiAzKIam6zuzVJSw08KqeR537cmvVGtWVrXb+3W?=
 =?us-ascii?Q?hZLd34UIdc8A/q72jj0Ijfh8ueNv0BaMYvXyfqFOtwqm4nm1LYlxVBzVt/6I?=
 =?us-ascii?Q?IBjy1qeDUZu2iffCJEMTxa54VJp746qdU1wlu81RtVwRewkZ4/pTdIrI/Bz5?=
 =?us-ascii?Q?XvIKZlgR1jyFFdDNnCKgTrdHnJ/nm4m89vJvt92F?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1143ca-ece8-4f7b-fb11-08dd231cf52f
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 06:42:23.7596
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r9bcUp4aLVxJuRSDXzAd43J7OpIzxFu+NiJ0f0GAtG3mh9YHm2W/F5zMY5nxNtxHb7WX0QQ051dsUjq0r90rIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7941

i.MX8qxp Display Controller contains a AXI performance counter which allows
measurement of average bandwidth and latency during operation.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
v7:
* No change.

v6:
* No change.

v5:
* No change.

v4:
* Collect Rob's R-b tag.

v3:
* New patch. (Rob)

 ...sl,imx8qxp-dc-axi-performance-counter.yaml | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml
new file mode 100644
index 000000000000..1d6501afc7f2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8qxp Display Controller AXI Performance Counter
+
+description: |
+  Performance counters are provided to allow measurement of average bandwidth
+  and latency during operation. The following features are supported:
+
+  * Manual and timer controlled measurement mode.
+
+  * Measurement counters:
+    - GLOBAL_COUNTER for overall measurement time
+    - BUSY_COUNTER for number of data bus busy cycles
+    - DATA_COUNTER for number of data transfer cycles
+    - TRANSFER_COUNTER for number of transfers
+    - ADDRBUSY_COUNTER for number of address bus busy cycles
+    - LATENCY_COUNTER for average latency
+
+  * Counter overflow detection.
+
+  * Outstanding Transfer Counters (OTC) which are used for latency measurement
+    have to run immediately after reset, but can be disabled by software when
+    there is no need for latency measurement.
+
+maintainers:
+  - Liu Ying <victor.liu@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8qxp-dc-axi-performance-counter
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-lpcg.h>
+
+    pmu@5618f000 {
+        compatible = "fsl,imx8qxp-dc-axi-performance-counter";
+        reg = <0x5618f000 0x90>;
+        clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
+    };
-- 
2.34.1


