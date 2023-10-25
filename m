Return-Path: <devicetree+bounces-11490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFAF7D5FCD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 04:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65310281C7D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 02:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7876F185F;
	Wed, 25 Oct 2023 02:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="RUpLnFdN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9A91C39
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:18:49 +0000 (UTC)
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2090.outbound.protection.outlook.com [40.107.113.90])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D819C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AO1FuZkY2jbXggF2FEOs0yBDcW/ViP6j7565r31gAAt8FR0ptnfzi+dcktFMUmsbFUn1z8LdoIuxHqsAiAm2a75HInezvn45waWErppV//fBCK7/46SrE54WDggosYbumhPtQ1Q31L8lsNGhU6LUhjxtH7gjW3j2YpdRN6O4llx1iPTd2OJ1SZXZ2uWxakU6+8Dsj/7EKheiEZ1EX+5q8IvqgKblztt+4QzKsV/ZCjvchMAamlkyeP87+Y2KfHHNHYAyT36ybyb+4hFFPcO/A+/7ree0t4RJVTO6NMolqpbTts54zDA+ZojG7qUSRh5zp1/MjfH9q8huUXIS5aF4FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=46Pmdfsrpfy9g8xE8r9Ebbo81sVxEfGihxffq/8JwyM=;
 b=fRNCaSJHcHnmUoblR6bi72scJQ8cHDjx/3Y6wgkmT2RPkFrW+csqUvY0kAnwt3HlEUT9gEAZcwW4nIoY4KKla3ERzcrnn3iSfBRyNGLb4Sojk0z66HBzDDuq7EAufNoMmZfr5IdV6hvf9ONYLVGx1vNkBo6MNY34gMHkVzV+vIUrPVA828Lk1zmOQGUmn+BhSE5m/MWROkbjWNa8NApLqROe3d5OtZq9t6+kisU+15C+9Fa3gQhbcLW2j4dYc9qnOwxAMXhSpdNZCdKiAq1u8nwPHyQkT79VX/QHKf770tf5gzmd3w9wcvjMtywrGJrMV6Yi6UHo5RrpP0anyQrtaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46Pmdfsrpfy9g8xE8r9Ebbo81sVxEfGihxffq/8JwyM=;
 b=RUpLnFdNa5/gEGEYtk++U1Okq2yQlmONxD3NzJG34mmmoYfivRXrFOzLRh9gPOMSwWXYEJ1Z0SVaIZ00nAZQ3AOWDXsrJ1Hk9RbXOr+TLq2xe8INxnWEuTzVTRCRVSZr87EJV2fgjeIbbJ6VnZGzVLezmF+o5ouKovMJMbCG8g8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB10372.jpnprd01.prod.outlook.com (2603:1096:604:1f9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Wed, 25 Oct
 2023 02:18:45 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a%3]) with mapi id 15.20.6933.019; Wed, 25 Oct 2023
 02:18:45 +0000
Message-ID: <87cyx3bg1m.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v6 2/5] ASoC: audio-graph-card2: add CPU:Codec = N:M support
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
In-Reply-To: <87fs1zbg2g.wl-kuninori.morimoto.gx@renesas.com>
References: <87fs1zbg2g.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 25 Oct 2023 02:18:45 +0000
X-ClientProxiedBy: TYAPR01CA0151.jpnprd01.prod.outlook.com
 (2603:1096:404:7e::19) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB10372:EE_
X-MS-Office365-Filtering-Correlation-Id: a0acd028-fb16-4d5b-0271-08dbd500b75f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	SyWn8qRqa9UDAOtyuQ55qRPzJNrn4yV+J3GL3sahXcSWJAuNWzSc8xNsmgzfZ9FvM7jUi/w8VFgLAEBhHXJJDh3e3NkZoHG2hpwxccV40y79nohvuU0P1QQNuCqAaICrOkZxgGuwFP8oZkThfe34+9JxMivn6+itbWwtTxWMAlSef9D3tBh+HiSoMZroeXYVPHl7HlAQwcpz4wg9GSmIhTEGxi7OhlKaLhGl4ljqYQaICixZWHBvQN2HcmvBkEFSYuMPuJutqua1PmtmYt9GZQw5hoKXjbmGZxJ0K8jR8TFCOejR+F0YxO78XYbTJvQRlAxT8vJO0rZ+6uKYrXeH5rDmE8UfDBzHm1/VZMVvV0jSaApPYtQHSKxlPaTM0gIfRoVGmpKC9z46WBvIhhIbifIo+1ItyGfj6PsPP6CkansSDgnNS+HUjY7ZkrpXvkUAKnwntu1wjMpHQf7h1t5msPdEmVLhgzkvOIXkouYTn9BWLAorLelzcynwV38vFxfxCk4OwRGhhNKqzvMDJXf5BEaUEj2kOkmsCSIcT7eUFHyotJz4fybkvfTxBu4wM6NB5fZIw9T5zT6zZxpZw/wh9UxJIdrLejskrKDybPW0sZfCk43mbYGizX43BQAX6XQiy6jPQ9YHLm+Z2mZGnmqOJQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39860400002)(396003)(346002)(136003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38350700005)(2616005)(41300700001)(6506007)(52116002)(83380400001)(6512007)(7416002)(66556008)(26005)(4326008)(8936002)(8676002)(6486002)(2906002)(5660300002)(66946007)(478600001)(66476007)(110136005)(2013699003)(316002)(86362001)(38100700002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?jh2Mzr5vFzigvo+5Ilqx5RJrcFcm6AdrywhTG7qsV3bAyngY+a5HHvulbfbj?=
 =?us-ascii?Q?b1ebeDVS5/h2WZgSHm5DPWUBQSeyqhRwTMhtv+lmcxB4cm9qFTs79YWcyP1f?=
 =?us-ascii?Q?LNS5R87pHYWfbyyxsa+EJjQJM78U33fTpWToHrQyy62oebXiJpTJ9PaCf2MB?=
 =?us-ascii?Q?PIgEq/gYxuyoiL1QlQ/X1yuyqRcIYvEWiJ0mCH41dVt5xvGBtDcYliQIL0Ow?=
 =?us-ascii?Q?8Zzlj32jekhPpfMM7GWe9ETD0HveiN5pbv1iUdodztwFjiNmDCoLv0aO0zwT?=
 =?us-ascii?Q?f+jIbB6Nt5xTG5xKTN8iohtjqQViUZ7NhVD4aHlx6E3Lf2O7LfMPu8Z5dif3?=
 =?us-ascii?Q?MbDEDnYmHnLwJrS2SjZWZgwwj41z21kc5WmRurghcOq0kzjGQ8Z0QtEglVw4?=
 =?us-ascii?Q?d7ulK/6YNP1pm65395SKdV1m+pYIoRFSUOxwO6R9ho4ZAga26BVe/rR8IcXu?=
 =?us-ascii?Q?ESNGT0J4ElMyS7b3K/KYi1sH1JPcxp8q1bO0/iaoWyy7tIEmMRta4qw6efrj?=
 =?us-ascii?Q?yknqHs2sbZ0+6xe6SB1brFA5oSU6H04bw7SgdLSHKez80TTyNJBpgvoXZJbx?=
 =?us-ascii?Q?tNW1dprMrxVaBcPCKl0kIcELE/IOemx1wBEivX5gBkKGi+ALmzv95rLqyT/g?=
 =?us-ascii?Q?CtiivsRt2KEOoG+RDr6JPo3y/Pxgk+6Zl12dsEw1ckr2CeEVrTHFefezTloJ?=
 =?us-ascii?Q?hdzGmYyYM93q5T17LUh7ORnVyDSG1FlmBen/f5Cuvskfwrvk0e10tbZpvdlf?=
 =?us-ascii?Q?bu4mSNnv7nVidgCS+gL+p6LXomEq1tHKjjEuuDNyTKkLHcmtsvNXCt2CevgZ?=
 =?us-ascii?Q?Ee7kMcNS93pAWf+e9G8d9fAkdjSmN/OEJjKyMZLsJUpZVqB5+tw5VT1U0VWC?=
 =?us-ascii?Q?tS0aE6fiAQTUgZ3atiaXh/kC19uG75d9XskyJrvi3L+NPM3A9ZFbvbQTiGWs?=
 =?us-ascii?Q?FYirThwBfKdOtWsswpyRi47GhXY+yJ4b3H0wtm6UGABcjaePEvMFbDQ10DeF?=
 =?us-ascii?Q?1xCABFbv8yiEA0mmHHqyNIoQs35o07w+G4Rs9Qe/nMKzDy0wlzXmb3pGdj9d?=
 =?us-ascii?Q?MrU/CJ9u7hBGvg+IfYSwzepIeA7lBKWj4swFWwlwvgVGBjAXKDGtij3OmdzG?=
 =?us-ascii?Q?KdxnU9Ckn9FtEHLX2kGazPBebko5EL54hfZp+pm/ikHckMrzZl+dAR68rX/7?=
 =?us-ascii?Q?+ysaJShUN6kJpBJwoM2bLkkdGgIAo5xjopAyJERQBireyWq7nI8PN/URyiQv?=
 =?us-ascii?Q?o9tD/49DNIVriEsG4uIzOxiiOuWoalv5sNFazJ2xt0Nk0wSee2+rxPMyPyPE?=
 =?us-ascii?Q?T0nRn74KtwL1ziCNCn6Ic4pmpUI1HQtgj0nZzuiR+tIy0ku3PaaYByHJwL5J?=
 =?us-ascii?Q?YUonf7RT/dVKUUleAdMu0+c33d93NpVRvJAXIqur/snHlnQtl9jDYly4hvIQ?=
 =?us-ascii?Q?QiZS24wkd9/NE3olS34vnZHx+aCgegDSxazN8JsWOwq6wAEb9o0iK908vyHQ?=
 =?us-ascii?Q?vnOAynptugBBNw7s3fyn+JZkW9L/Sr/XXP5vRII4QfRs0xjYQor/vPNHmMZ+?=
 =?us-ascii?Q?wAMiO9Fj494pX6VVgcBhWqbiMAXaHT9l3iCqG9aiwYO1BDAVtF19PpO43GJc?=
 =?us-ascii?Q?5DVjc/7EacSUzlxT/UwU038=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0acd028-fb16-4d5b-0271-08dbd500b75f
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 02:18:45.7420
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0eOlX+hmcZ7f6WW1fUQaXW0tSzNxbEqiPFTy0Px18A3TxaceXaMEPbmZlY9I1VPLqP3qM+NM3dI7AKQSlX7h0d6QHhd+NFmjnvYZJ6ZAXnJcseuF4g4zzAXH+dXAnml6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB10372

Now ASoC is supporting CPU:Codec = N:M support.
This patch enables it on Audio Graph Card2.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card2.c | 49 +++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 7146611df730..25a1c7d40be9 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -504,6 +504,7 @@ static int __graph_parse_node(struct simple_util_priv *priv,
 	return 0;
 }
 
+#define MAX_PROP 7
 static int graph_parse_node(struct simple_util_priv *priv,
 			    enum graph_type gtype,
 			    struct device_node *port,
@@ -513,10 +514,31 @@ static int graph_parse_node(struct simple_util_priv *priv,
 	int ret = 0;
 
 	if (graph_lnk_is_multi(port)) {
+		struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
+		struct device_node *ports = of_get_parent(port);
+		struct device *dev = simple_priv_to_dev(priv);
 		int idx;
+		int num;
 
 		of_node_get(port);
 
+		/*
+		 * create ch_maps if CPU:Codec = N:M
+		 * DPCM is out of scope
+		 */
+		if (gtype != GRAPH_DPCM && !dai_link->ch_maps &&
+		    dai_link->num_cpus > 1 && dai_link->num_codecs > 1 &&
+		    dai_link->num_cpus != dai_link->num_codecs) {
+			num = max(dai_link->num_cpus, dai_link->num_codecs);
+
+			dai_link->ch_maps = devm_kcalloc(dev, num,
+						sizeof(struct snd_soc_dai_link_ch_map), GFP_KERNEL);
+			if (!dai_link->ch_maps) {
+				ret = -ENOMEM;
+				goto multi_end;
+			}
+		}
+
 		for (idx = 0;; idx++) {
 			ep = graph_get_next_multi_ep(&port);
 			if (!ep)
@@ -527,7 +549,34 @@ static int graph_parse_node(struct simple_util_priv *priv,
 			of_node_put(ep);
 			if (ret < 0)
 				break;
+
+			/* CPU:Codec = N:M */
+			if (dai_link->ch_maps) {
+				const char *props = "channel-map-index";
+				u32 num_array[MAX_PROP];
+				int i;
+
+				num = of_property_count_elems_of_size(ep, props, sizeof(u32));
+				if (num > MAX_PROP) {
+					dev_err(dev, "need update MAX_PROP (%d)\n", num);
+					ret = -EINVAL;
+					goto multi_end;
+				}
+
+				ret = of_property_read_u32_array(ep, props, num_array, num);
+				if (ret < 0)
+					goto multi_end;
+
+				for (i = 0; i < num; i++) {
+					if (is_cpu)
+						dai_link->ch_maps[num_array[i]].cpu = idx;
+					else
+						dai_link->ch_maps[num_array[i]].codec = idx;
+				}
+			}
 		}
+multi_end:
+		of_node_put(ports);
 	} else {
 		/* Single CPU / Codec */
 		ep = port_to_endpoint(port);
-- 
2.25.1


