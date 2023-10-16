Return-Path: <devicetree+bounces-8725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE907C9CE9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6608BB20BE2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 01:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875761377;
	Mon, 16 Oct 2023 01:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="fG/My538"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BC61369
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:37:55 +0000 (UTC)
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2138.outbound.protection.outlook.com [40.107.113.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6036A9
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 18:37:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oGTHZ6dCMmuBUAXBOseJ/b+9fbMM7+6YLd0fZXz5pvL+ISwFgOutOAfULr2e++NJYEDHNG9fgzrmZi6HMb30QUSjk7KDei11of7er/USpZD2AXiV5UIUYAjY9XWjsxvNfzrSYCTsOHmf+31MCTj6TYYQmuF/zdGnhQoO6NOQd9hmadU+7Ce3K6F2RKziT44uNQXaP/An+BDB4Hi0d+9tGVbGIUHUz/9c7JxJVwIhp+qkJUNTPs8qNhzBX5eECOOPX4sPcBouX1tBbtxl7unYuvSO26G2la96bvc+6GfM63Z3vlIK+UoGfPyF3Lp0RrmsIlSL/PNPzT8ZMLD/ertB+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SV40rYPgD+X79RHIP1LMFV+4ANzbM28sKQBKFTpL4f8=;
 b=bvlUWSFN1a9gxnTi3IaxtYCR0xsDiKPx18bFcJk7s2w7gGHV0GxEmHHeuXf3VbdkHhhbQm7Bg5dXYdfIfvMZ5TZwrrWQf8NGCHr37BLBy4AiNh2ZbzeKgHQjO36S5KGZ8Q4UEEaj+tIfkkk25o/NeUTB1HxklavwbxNEUkWp1sZfIob/3YA+EiNQWaGgK2yioqdkrpb8LzLu9gT1ZYZjExYf6P/ouAZNWV0nmnRF39qnsl6Jt1kJkD1emTM5azbtdtlMmDmdzbk49iCjszrjytc6fVfC0//b+FOBd3ivUg3V2If+WgXb42rIZY8TktifQwMyKQkcqCcOsRuiNh1xpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SV40rYPgD+X79RHIP1LMFV+4ANzbM28sKQBKFTpL4f8=;
 b=fG/My538BoQjfU8UxJsETpWA4OGGa0ENFmbXRuuqR0iUyIDzXfDneBK4oR0dSCIGYL7F6wrr7Xqkg0ao1g59GlLFlR3GixfeM6Ira2fQzjIqD0BjqJHri22vGs0LrV/MTNI5XqyG8gmCDjPcnAJwHsH5o7RGYou6JrfhAi8A1cs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB5656.jpnprd01.prod.outlook.com (2603:1096:604:c6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 01:37:48 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 01:37:48 +0000
Message-ID: <87wmvnwdn8.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v4 2/4] ASoC: audio-graph-card2: add CPU:Codec = N:M support
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
In-Reply-To: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 16 Oct 2023 01:37:48 +0000
X-ClientProxiedBy: TYAPR01CA0078.jpnprd01.prod.outlook.com
 (2603:1096:404:2c::18) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB5656:EE_
X-MS-Office365-Filtering-Correlation-Id: bccf219f-f39e-4df8-b08b-08dbcde880f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	4B7jaxob9WE6EMdk/REnqBjOzk0ZuSbx7FuPzfNU816aksPrIHleWQVsKMjlMKnjrnZeMRD/bu+XSXd5JPlxWczN52lQLPHBzEwoo2FF+1cEc1/zNyQxvrBqVv7C4LshajXsfvuikHNvgenr6K/vnOWrKxVOP2tm5l9e1yUZfXTqGKunhZ/MRjALrN3Ak0EYbSMWql8JsuQq9CxihmTO+KUfpBXqoZXFJw0rtBKQBMWzE2KFLd37fkCdGnvIOHQbF1S0cKPRvBanFgOhZ3kMzfYmOynE1AtTjrGjt0FQOWgbUFL3O4/l/70GoMRZwSQkTb2FdhzprVqOXzosnMZsjEEo3pOsSCaqMN+sdzdpbvkMC/Xz7KSiDhV/X0BA/Nnpwx+paEg6ikfIqVtjexOHsgyyhaK3nlvoPHa8nnXLAiXJ4wxRWae6mcvh5iG1suLp1IZuq6m8DR1Sgl6AcAbNBD2xt2NNL9rqQoepOAzahBwupSJR5KieVbNIG8l8ewYEzQMBZr1UOUVy6junaORAqZ/V1LOIpqc1FQ9WeZBw7sOtJkDmfmJ4FF2sctdy7nRXa5cuN9p5PNBwNlqlRcvYDgOdBOZ3GT5Hwe9vDZLxbgbD3YA7s5cSmObXfD9l4LkXYxYd5ZDHfjGz3l3JlkSExw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(346002)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(110136005)(316002)(66946007)(66556008)(66476007)(26005)(36756003)(38350700005)(52116002)(38100700002)(6512007)(2616005)(86362001)(6486002)(478600001)(2013699003)(6506007)(41300700001)(5660300002)(7416002)(2906002)(4326008)(8676002)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?O5BjMxaFsn0uHPclFAemdPnk7OLjpt4Dk01LXw1+yPwlAwfp+gu8JA03F1f0?=
 =?us-ascii?Q?brQhTTSEgClmkEMeCYY/f05Jxp/XAFMz5o3hhLE3WN8m52d6Mxr4r1Mp4Bi7?=
 =?us-ascii?Q?B8hvkS1hodlHLLSK7QXp4DlUH8quqR3JMeEUBZ5Enu/aNeqgWJMh00shWaRX?=
 =?us-ascii?Q?g62wudDeaH+SO0ZrVpwMHCPDdMrqcq2iDl+4IhyvtZ8gPdBwHCiDyQyUfxV4?=
 =?us-ascii?Q?WhBgyOFMyBeWWMOAbXsslS2s9kYU/eUvKADH0uL+QqCfn8owiIqggwCMU/xW?=
 =?us-ascii?Q?amkMpJGQR/bR6eDJcovbg/HWLse8iv0c89Nlr2U0zp1wiD9UN8neaRAisjMJ?=
 =?us-ascii?Q?bPD50Ora7tN2Ni3bIxOpMyfwLvFwtgNzDGjMrbHCkH9dhm6AsS0cGH+h5kur?=
 =?us-ascii?Q?CJxrjPNQtOTxSAwsj5sITcQDH0lRL/3wN6gh6ri27oCNJEBMJRP2sg2YjStb?=
 =?us-ascii?Q?9x6115E1sKoVnTRIDHEer/LpbeFAXcCcSI8RMK/fZPZpSFIDcYHrBa+EeM8z?=
 =?us-ascii?Q?9LGkTwpdoEw9uKoRZcjMGrTSTxV9kJOfH9wrg4GhahAEp0vppOfjyugFoc66?=
 =?us-ascii?Q?V4W0YCDScg65TzijRsl/XoJyDbShD3eVMUOFLR1UhfzoHvxB9hQBs/bDaZqB?=
 =?us-ascii?Q?UojIoTSd9DpA2wlLCinEIVMyrWHlvZ4dPeWSbclq3/Ult/li7d/9PrP+3PmW?=
 =?us-ascii?Q?bBz3j1WFgtQbUUSI95UEy4aeFaEqItKkv4grFtp/BmU5/D8E/e6RJ0v01H9Z?=
 =?us-ascii?Q?hYj8V7nHckFL9j+CmR7iviLjsImUlrDH3f1bVSu9gHvUUjji+gZQLG0+So0f?=
 =?us-ascii?Q?G6I3UZolCMDgUhcoe8nl8qVzFbnUcXfKbS6xQCs8FCGfQVPJROR24UMJUAQr?=
 =?us-ascii?Q?hv6FE6z/vwwTIh1Vl09KXuMKr3lFKX7Ygv4SsZ5jjeENgSy2rifvxhNHKMXA?=
 =?us-ascii?Q?Sg4NY1r2SppzGqdD1wEJd+hmKeXpMrIWlC/GzJ1TSEL4bbOpi/A3COEkpGkG?=
 =?us-ascii?Q?0zNHA6oTDmqykN7V1gFDWgyQZLPYL+8zJA+Ec8JRoF9O6y7X0OAXwT/r9UHP?=
 =?us-ascii?Q?RCYB4bI7n9hOiYKPhAOJfxaoumgY4yLDmeioyGtsdmDl7ydoxtjgA25ybAah?=
 =?us-ascii?Q?BNLugO7CqE+PAii+BYzxhnWItQkJt/q3swwDrOeeXVXmsGfgxmkO6J38AeyN?=
 =?us-ascii?Q?1eIEpKo25HUDU1vtbJUc36639Gc7v+PmjHd6aq+0lGGqjhph+1sKCz0lWiYp?=
 =?us-ascii?Q?xmexwqBpMEH/now46O6BA1FFqcwmyyCvW7ITVydkIxe4s6OIyBYYWNknfLBM?=
 =?us-ascii?Q?yVo8vYDp8wQYDvpHnM8Of9oB+6z/CMkkkmw4MEi9+kVlqUlEC83JSShpSzLV?=
 =?us-ascii?Q?a182aO0F+gIWHyqR2ZLq1OBbeyS5vEhTurEMy8Ble1CnCjMMULebB3xzfhnV?=
 =?us-ascii?Q?1sqVS8X0A38aqRPAPkmUebG0gHqlqTIWxIjhloaSp5M4f6cawL4LZc5xzESl?=
 =?us-ascii?Q?fQm6kuRTZZa/iqsu3D7RO4Ok4spePZ25qCDIW6U1SzsucvaYOkzeNQZBWndc?=
 =?us-ascii?Q?povyE1KlAA9zxN8eyYHAVb2DkZNqfA/rdo/BfFTT4yWjuiobN0EBwHjueaEX?=
 =?us-ascii?Q?BLz8uHp8IWo0G91mLD0+Rbk=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bccf219f-f39e-4df8-b08b-08dbcde880f0
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 01:37:48.4263
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j1kPiYN6JypCBl9JiwadpdFgADrMwMyHqSgdaRXbmHACuIqlwbvt00gmGioOXM3rtibvFivHJTYwhOvermVimMaiaO9tbQ6gDy61NeymbUfUFxjMJZqaZWoY7lJeISfG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB5656
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Now ASoC is supporting CPU:Codec = N:M support.
This patch enables it on Audio Graph Card2.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card2.c | 29 +++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 5d856942bcae..bd65e7a19350 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -515,7 +515,10 @@ static int graph_parse_node(struct simple_util_priv *priv,
 	int ret = 0;
 
 	if (graph_lnk_is_multi(port)) {
+		struct device_node *ports = of_get_parent(port);
 		int idx;
+		int num;
+		char *props = "ch-maps";
 
 		of_node_get(port);
 
@@ -530,6 +533,32 @@ static int graph_parse_node(struct simple_util_priv *priv,
 			if (ret < 0)
 				break;
 		}
+
+		/* read "ch-maps" property if exist */
+		num = of_property_count_elems_of_size(ports, props, sizeof(u32));
+		if (num > 0) {
+			struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
+			struct device *dev = simple_priv_to_dev(priv);
+			struct snd_soc_dai_link_ch_map *ch_maps = devm_kcalloc(dev, num, sizeof(*ch_maps), GFP_KERNEL);
+			int *temp = devm_kcalloc(dev, num, sizeof(int), GFP_KERNEL);
+			int i;
+
+			if (!ch_maps || !temp) {
+				ret = -ENOMEM;
+				goto multi_end;
+			}
+
+			ret = of_property_read_u32_array(ports, props, temp, num);
+			if (ret < 0)
+				goto multi_end;
+
+			dai_link->ch_maps = ch_maps;
+			for (i = 0; i < num; i++)
+				dai_link->ch_maps[i].connected_node = temp[i];
+multi_end:
+			devm_kfree(dev, temp);
+		}
+		of_node_put(ports);
 	} else {
 		/* Single CPU / Codec */
 		ep = port_to_endpoint(port);
-- 
2.25.1


