Return-Path: <devicetree+bounces-19000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D657F9660
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3179B20A20
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0061B15EAA;
	Sun, 26 Nov 2023 23:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="iKvvKVG/"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2101.outbound.protection.outlook.com [40.107.114.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A87102
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:19:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jULpaWMc5jWbgEw6/teEbczKIraiPKlE/7J/VUSsxLo141Gpzym1r5pcsZPk/6RzosHy2Y6VMc22B9TVqTav/WByM2rAZ8w9E/DKtf6GkaBM3WbilkERJHoqpYaFf93uPh0zKrnGcqb69bZymT2hcdi451QkpeuxMO5fcgdvGSggIVsEDV/Qd69AsH/sobAd1mNWAt0EZkkJn6GG+X5xcwy1TykYz9FIPhJBMQdO+v8AHBILJQRvVheuG9CoBrAHPJgyGg9RErHUPw1bp9oFbkliYV20zuSKU37wTcDkZ+ENsqmzk4CPDbU4G6UvtJJtjibz7Qg2QlNJepuv3Dhyrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rh+zD44dFT2EJaVtm9IsUpVq9y8f8ECkxLzw1/NSXoU=;
 b=inGtxFS+vKNskYetqvOfp9a2157uBRiFz9sBi9uN+RJaO1Jle0pGHB1j1XUDVM31NIHA5YuTAL2beIzetv+gBPFqCGjOD0+OOGr+Ywb1TQKOEEDTxzM0rxD0QTWMYk9zYqhcXJMpp7KElbcG+amhOrtHg/wvKKb6tLaMifkN5O40G6B8Z/6ESGGOSHkOS0D7/wejXlVeVz8ZIJEfz833f78vsdK9cZvBFF4sqvFAx6bTHDoAUdbZRQM4rJgmqCDa5viY+NIldEDp23qCIcDLp8Ka93VF77F7bGfcuVGsgkfXMcAXceEN2biC0Mn0+hHTl8jdkFlCOE9iZ5cEPMyC8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rh+zD44dFT2EJaVtm9IsUpVq9y8f8ECkxLzw1/NSXoU=;
 b=iKvvKVG/Bq4SzzUdJPyXzCpAs/CcXS1c5i4i+kJATkgdXwMeJLRZD9/q6Eu5ITRLUKGfhYi0IIKaflKEZJWqRvEjXivijWZ4RgeR1IKeZVwq+cblwKwsgeWVgURgjxbTYJ+DoTtkHggVaIAzcgVUeMOQY7WaHSk6M56e8AGi8wg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by OSRPR01MB11697.jpnprd01.prod.outlook.com
 (2603:1096:604:230::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Sun, 26 Nov
 2023 23:19:17 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::16b3:a84d:faa6:4846]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::16b3:a84d:faa6:4846%6]) with mapi id 15.20.7025.022; Sun, 26 Nov 2023
 23:19:15 +0000
Message-ID: <87plzww1ak.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v7 resend 3/5] ASoC: audio-graph-card2: add CPU:Codec = N:M support
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
In-Reply-To: <87ttp8w1bk.wl-kuninori.morimoto.gx@renesas.com>
References: <87ttp8w1bk.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Sun, 26 Nov 2023 23:19:15 +0000
X-ClientProxiedBy: TYCP286CA0153.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:383::15) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|OSRPR01MB11697:EE_
X-MS-Office365-Filtering-Correlation-Id: 4992634e-f001-43e3-5ad9-08dbeed61b85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	9YSRDArtrl6s4ITYVC2AV1sUiGMSQ5E03sZeOlD9TyUv79uYkgmo7sbyjZJ1o0RezPoHayPr4ROvnJwBD2PYaeF4cmg5Oq3dljNVzOYPa8ymcQFiK8bERqCoflQLbb/b2/OtQ/hHBPPlRCol4IpM7MDzzCTOgSDWNNcAQUrmZG2IW2DldgNA6SpV1+ORmDBPxosS6Sz5kweP2acEtNorwPiwLBJ/y42hsN8Nd/yMUvpuTATv52aM58YCV+lI8Eb1AjnmOyrUr+lrHt1Ve04K78bWUDxm5JThHP+UWQp1NgJAbMJdlzfSPlvAIiFGvCqbp6QZVr2apMhmn54KtDxGeaIqaF/hDZjesTUVwZxRNDnAQt6cfOEHdIxsc9TwIxGc4ylcJc5uimg5a9L+9I7L2pS7XjP1d6PlB+Uj1FmEntHP7I1Pm0/pV3FF33K47qim5W/2CCXGi6h7vwIxm8U5mgUXOoAu30Y0tbHpS258I840+dM0EIzWWoUcqhEOn9XBXoGrjz7y5bsf2yUzD3W/3hFtwmsstUhe1VVrnj2Gol480yw1Vb0y+jVdPjo8v68O+ofup+3c+ZmZTqpWomnrd7APakospU6wTc/49bZ21hKkqSz71J5QOZBdjocW5hQpe/bAOIh0LsUR5ALaaRphOg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(136003)(366004)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(7416002)(4326008)(2906002)(8676002)(8936002)(41300700001)(26005)(66476007)(110136005)(316002)(66946007)(66556008)(6512007)(52116002)(5660300002)(2616005)(6506007)(83380400001)(86362001)(38100700002)(38350700005)(6486002)(478600001)(36756003)(2013699003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?OwngzbvwZMalIi2XVD68SvQg59kQlwWb2jnp5StvnPfwJDiXB5fPtWBIXs4F?=
 =?us-ascii?Q?JpkAVgzVNYyxfK+dtO2fHEMAh7fAQNGo3oBv8bPAn8nGWM2uYvclXNxXwhNA?=
 =?us-ascii?Q?4ELzmOGpLqEW1iYh9VIyUw9gWsz1UFLNbMkiBRx/8AhXrVgw49tO/4BAnt0j?=
 =?us-ascii?Q?GM+YFFoxq0hJuyzdVntrMUb8YV3OzRxDLODmRMkXLGXJNI9Jc+Ya4Y0ahLDk?=
 =?us-ascii?Q?kGjN4Z/dc145/w4iGACqTzCoU1EXaHiwNT3iWZQ7a8rELOH9mJP93EsWpfpL?=
 =?us-ascii?Q?lS4U4znwHcIKW5kjCerwbGJtPH+l+Y3f0KRwVggADkeNPfVDd0OX8O+fbc/7?=
 =?us-ascii?Q?O3NGMa57Rt5M6/R8EU7OoO6+T4wVnPAAibmjjBCZksNNsuOSEMdNUdqMDnWw?=
 =?us-ascii?Q?EImZ+JXyre688B81Q/jfHesuvwB2l/wk1OO7ULpiWZrAYXr0W7F/QwbLFMUm?=
 =?us-ascii?Q?6HEyVcJoQOudC+a0KZGbx7PYU+Gt4dJITaZXJT1/w2qERgarhhfQUZTaURpg?=
 =?us-ascii?Q?m050PhjGLfG0T83by//J3fJgNuBIb5ioADeQOrOgA2RYfS+G4zAM4xd1Y09p?=
 =?us-ascii?Q?9PFfnQVAokCn1mKF7jtSABwgSNNxng2Dp4rUjAHW8edNF5yIBmNwUJLRQxvC?=
 =?us-ascii?Q?9g6RPLaqwigKqCEy6J5H7E/y9oKtsta6kyJhiVBGnuiw1d8Q//Mnr53piF1T?=
 =?us-ascii?Q?XoDKMdecV4tUWLvNv6U95LaWWEnJeGuVU8s4YAU/9d65FkonAVwaMJigfveb?=
 =?us-ascii?Q?qoulJ1lwI7Zvg+x2ez21MS64ebeKac3TJhG3JlryB7vspzhSbiPeIUxo6VSA?=
 =?us-ascii?Q?lVZ3YRCfEdRLiBsD6S8iys0A2YqZt5askt1c9i+PEsd46HqqxhaVCv+0V0q5?=
 =?us-ascii?Q?Kvj4KFzIvl53sJKOc3GlJvhEANoyCVZchvYg1j6Tq8FmxDFVVu5btsgQ9WAc?=
 =?us-ascii?Q?CbGmdU9FrdhzYdukc1sdpz4h7aNjRoU34t5RLnXPge+7x1wnER3NAI0hFuqJ?=
 =?us-ascii?Q?uZrVi/GzLc3+SUQtOMR/MNOsFEQBUlHDTwLSRCxiWKfQPD4Uc89fr2VUaApA?=
 =?us-ascii?Q?qWLTMEoEWjMEvZxFjd/qD1U/IrW5Cmm5Hb8iV22zaHFv76Dr1X9AN3XNxfQf?=
 =?us-ascii?Q?thL/BwtSab7Hpw+at9giAaHOeH0QBiJWggr5EXJjwruDTDz2ilh23YjWIV9j?=
 =?us-ascii?Q?AE7RguJlTpSbwOfRX15KJh4C8Zxz+RgKh/UAglT/lWOBiIiPaDHZMXXcUzkk?=
 =?us-ascii?Q?FajfBlTcPn4Oy34V/Kn1HoQ/Ky7HxZWsXnuWRdaQ+rb/hBydPqRXstb8tsnp?=
 =?us-ascii?Q?DqB2VeKpS0dsABHzRoqeJASVlVdu7usIuxS5jZ0Pu4Wzt6SzxOlc5Jr3W7w0?=
 =?us-ascii?Q?BF+swypVksNQMvUmR39XcZ0k2o452XV9SyZbCbNngy+myEFJRSnPRmUgsXDd?=
 =?us-ascii?Q?QTGKCSHaNloRVTgcHAWk0J6pkERhOr4/GM2hX4gKzfr58FMT59GRjfo4URK+?=
 =?us-ascii?Q?vqh/dIhsRMGpf5Tsagcrm14w6ieXxH8Nb9rxcTZDSCN9aMqIzpHDuAvzNgFg?=
 =?us-ascii?Q?YgrLhBsgFF3504LtbIGDm8x/QWO63VJSH2tNVBj/cdVCqvuax6myJ5BB4Hgh?=
 =?us-ascii?Q?yWoXtKOJp0q1pqRbMtIN0Ec=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4992634e-f001-43e3-5ad9-08dbeed61b85
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2023 23:19:15.6457
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r+a+7a4lvikNSBhS3bYlUk7acGQxqpFatGXnx89JpwIXjdBAyKSL5fjN6NxAIYFrRjkiNMKobvbSCq7IEqpkPvkwKCqVkbn1myi1JbyAOe3exgstxIO4BIuyRzJi/z9c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11697

Now ASoC is supporting CPU:Codec = N:M support.
This patch enables it on Audio Graph Card2.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card2.c | 225 +++++++++++++++++++++++---
 1 file changed, 202 insertions(+), 23 deletions(-)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index c564f630abf6..d9e10308a508 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -504,40 +504,203 @@ static int __graph_parse_node(struct simple_util_priv *priv,
 	return 0;
 }
 
-static int graph_parse_node(struct simple_util_priv *priv,
-			    enum graph_type gtype,
-			    struct device_node *port,
-			    struct link_info *li, int is_cpu)
+static int graph_parse_node_multi_nm(struct snd_soc_dai_link *dai_link,
+				     int *nm_idx, int cpu_idx,
+				     struct device_node *mcpu_port)
 {
-	struct device_node *ep;
-	int ret = 0;
+	/*
+	 *		+---+		+---+
+	 *		|  X|<-@------->|x  |
+	 *		|   |		|   |
+	 *	cpu0 <--|A 1|<--------->|4 a|-> codec0
+	 *	cpu1 <--|B 2|<-----+--->|5 b|-> codec1
+	 *	cpu2 <--|C 3|<----/	+---+
+	 *		+---+
+	 *
+	 * multi {
+	 *	ports {
+	 *		port@0 { mcpu_top_ep	{...  = mcodec_ep;	}; };	// (X) to pair
+	 * <mcpu_port>	port@1 { mcpu0_ep	{ ... = cpu0_ep;	};	// (A) Multi Element
+	 *			 mcpu0_ep_0	{ ... = mcodec0_ep_0;	}; };	// (1) connected Codec
+	 *		port@2 { mcpu1_ep	{ ... = cpu1_ep;	};	// (B) Multi Element
+	 *			 mcpu1_ep_0	{ ... = mcodec1_ep_0;	}; };	// (2) connected Codec
+	 *		port@3 { mcpu2_ep	{ ... = cpu2_ep;	};	// (C) Multi Element
+	 *			 mcpu2_ep_0	{ ... = mcodec1_ep_1;	}; };	// (3) connected Codec
+	 *	};
+	 *
+	 *	ports {
+	 *		port@0 { mcodec_top_ep	{...  = mcpu_ep;	}; };	// (x) to pair
+	 * <mcodec_port>port@1 { mcodec0_ep	{ ... = codec0_ep;	};	// (a) Multi Element
+	 *			 mcodec0_ep_0	{ ... = mcpu0_ep_0;	}; };	// (4) connected CPU
+	 *		port@2 { mcodec1_ep	{ ... = codec1_ep;	};	// (b) Multi Element
+	 *			 mcodec1_ep_0	{ ... = mcpu1_ep_0;	};	// (5) connected CPU
+	 *			 mcodec1_ep_1	{ ... = mcpu2_ep_0;	}; };	// (5) connected CPU
+	 *	};
+	 * };
+	 */
+	struct device_node *mcpu_ep		= port_to_endpoint(mcpu_port);
+	struct device_node *mcpu_ep_n		= mcpu_ep;
+	struct device_node *mcpu_port_top	= of_get_next_child(of_get_parent(mcpu_port), NULL);
+	struct device_node *mcpu_ep_top		= port_to_endpoint(mcpu_port_top);
+	struct device_node *mcodec_ep_top	= of_graph_get_remote_endpoint(mcpu_ep_top);
+	struct device_node *mcodec_port_top	= of_get_parent(mcodec_ep_top);
+	struct device_node *mcodec_ports	= of_get_parent(mcodec_port_top);
+	int nm_max = max(dai_link->num_cpus, dai_link->num_codecs);
+	int ret = -EINVAL;
 
-	if (graph_lnk_is_multi(port)) {
-		int idx;
+	if (cpu_idx > dai_link->num_cpus)
+		goto mcpu_err;
 
-		of_node_get(port);
+	while (1) {
+		struct device_node *mcodec_ep_n;
+		struct device_node *mcodec_port_i;
+		struct device_node *mcodec_port;
+		int codec_idx;
 
-		for (idx = 0;; idx++) {
-			ep = graph_get_next_multi_ep(&port);
-			if (!ep)
-				break;
+		if (*nm_idx > nm_max)
+			break;
 
-			ret = __graph_parse_node(priv, gtype, ep,
-						 li, is_cpu, idx);
-			of_node_put(ep);
-			if (ret < 0)
+		mcpu_ep_n = of_get_next_child(mcpu_port, mcpu_ep_n);
+		if (!mcpu_ep_n) {
+			ret = 0;
+			break;
+		}
+
+		mcodec_ep_n	= of_graph_get_remote_endpoint(mcpu_ep_n);
+		mcodec_port	= of_get_parent(mcodec_ep_n);
+
+		if (mcodec_ports != of_get_parent(mcodec_port))
+			goto mcpu_err;
+
+		codec_idx = 0;
+		mcodec_port_i = of_get_next_child(mcodec_ports, NULL);
+		while (1) {
+			if (codec_idx > dai_link->num_codecs)
+				goto mcodec_err;
+
+			mcodec_port_i = of_get_next_child(mcodec_ports, mcodec_port_i);
+
+			if (!mcodec_port_i)
+				goto mcodec_err;
+
+			if (mcodec_port_i == mcodec_port)
 				break;
+
+			codec_idx++;
 		}
-	} else {
-		/* Single CPU / Codec */
-		ep = port_to_endpoint(port);
-		ret = __graph_parse_node(priv, gtype, ep, li, is_cpu, 0);
+
+		dai_link->ch_maps[*nm_idx].cpu		= cpu_idx;
+		dai_link->ch_maps[*nm_idx].codec	= codec_idx;
+
+		(*nm_idx)++;
+
+		of_node_put(mcodec_port_i);
+mcodec_err:
+		of_node_put(mcodec_port);
+		of_node_put(mcpu_ep_n);
+		of_node_put(mcodec_ep_n);
+	}
+mcpu_err:
+	of_node_put(mcpu_ep);
+	of_node_put(mcpu_port_top);
+	of_node_put(mcpu_ep_top);
+	of_node_put(mcodec_ep_top);
+	of_node_put(mcodec_port_top);
+	of_node_put(mcodec_ports);
+
+	return ret;
+}
+
+static int graph_parse_node_multi(struct simple_util_priv *priv,
+				  enum graph_type gtype,
+				  struct device_node *port,
+				  struct link_info *li, int is_cpu)
+{
+	struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
+	struct device *dev = simple_priv_to_dev(priv);
+	struct device_node *ep;
+	int ret = -ENOMEM;
+	int nm_idx = 0;
+	int nm_max = max(dai_link->num_cpus, dai_link->num_codecs);
+
+	/*
+	 * create ch_maps if CPU:Codec = N:M
+	 * DPCM is out of scope
+	 */
+	if (gtype != GRAPH_DPCM && !dai_link->ch_maps &&
+	    dai_link->num_cpus > 1 && dai_link->num_codecs > 1 &&
+	    dai_link->num_cpus != dai_link->num_codecs) {
+
+		dai_link->ch_maps = devm_kcalloc(dev, nm_max,
+					sizeof(struct snd_soc_dai_link_ch_map), GFP_KERNEL);
+		if (!dai_link->ch_maps)
+			goto multi_err;
+	}
+
+	for (int idx = 0;; idx++) {
+		/*
+		 * multi {
+		 *	ports {
+		 * <port>	port@0 { ... 			    }; // to pair
+		 *		port@1 { mcpu1_ep { ... = cpu1_ep };}; // Multi Element
+		 *		port@2 { mcpu2_ep { ... = cpu2_ep };}; // Multi Element
+		 *	};
+		 * };
+		 *
+		 * cpu {
+		 *	ports {
+		 * <ep>		port@0 { cpu1_ep   { ... = mcpu1_ep };};
+		 *	};
+		 * };
+		 */
+		ep = graph_get_next_multi_ep(&port);
+		if (!ep)
+			break;
+
+		ret = __graph_parse_node(priv, gtype, ep, li, is_cpu, idx);
 		of_node_put(ep);
+		if (ret < 0)
+			goto multi_err;
+
+		/* CPU:Codec = N:M */
+		if (is_cpu && dai_link->ch_maps) {
+			ret = graph_parse_node_multi_nm(dai_link, &nm_idx, idx, port);
+			if (ret < 0)
+				goto multi_err;
+		}
 	}
 
+	if (is_cpu && dai_link->ch_maps && (nm_idx != nm_max))
+		ret = -EINVAL;
+
+multi_err:
 	return ret;
 }
 
+static int graph_parse_node_single(struct simple_util_priv *priv,
+				   enum graph_type gtype,
+				   struct device_node *port,
+				   struct link_info *li, int is_cpu)
+{
+	struct device_node *ep = port_to_endpoint(port);
+	int ret = __graph_parse_node(priv, gtype, ep, li, is_cpu, 0);
+
+	of_node_put(ep);
+
+	return ret;
+}
+
+static int graph_parse_node(struct simple_util_priv *priv,
+			    enum graph_type gtype,
+			    struct device_node *port,
+			    struct link_info *li, int is_cpu)
+{
+	if (graph_lnk_is_multi(port))
+		return graph_parse_node_multi(priv, gtype, port, li, is_cpu);
+	else
+		return graph_parse_node_single(priv, gtype, port, li, is_cpu);
+}
+
 static void graph_parse_daifmt(struct device_node *node,
 			       unsigned int *daifmt, unsigned int *bit_frame)
 {
@@ -929,8 +1092,24 @@ static int graph_counter(struct device_node *lnk)
 	 *
 	 * ignore first lnk part
 	 */
-	if (graph_lnk_is_multi(lnk))
-		return of_graph_get_endpoint_count(of_get_parent(lnk)) - 1;
+	if (graph_lnk_is_multi(lnk)) {
+		struct device_node *ports = of_get_parent(lnk);
+		struct device_node *port = NULL;
+		int cnt = 0;
+
+		/*
+		 * CPU/Codec = N:M case has many endpoints.
+		 * We can't use of_graph_get_endpoint_count() here
+		 */
+		while(1) {
+			port = of_get_next_child(ports, port);
+			if (!port)
+				break;
+			cnt++;
+		}
+
+		return cnt - 1;
+	}
 	/*
 	 * Single CPU / Codec
 	 */
-- 
2.25.1


