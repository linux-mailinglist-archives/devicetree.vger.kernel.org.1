Return-Path: <devicetree+bounces-76290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B1C90A193
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 03:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD5FFB2194C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 01:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DD5F2579;
	Mon, 17 Jun 2024 01:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="YqjHfMS5"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2074.outbound.protection.outlook.com [40.107.113.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C0033FD
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 01:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.74
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718586405; cv=fail; b=mLrv3cgLyZssoo6ABVdH55A2JDm8iYMx9vvs1PM6AvzfqHFHLr1lXqt/TfzLUtxoT6/1AKsIFLcMVKESkMs2DD4F3Qe1sGu6oZatEMKdxuYR4Tyad9YKwe8ifde+9oaQ/vb1rZuFYqEh3tsBKeXSO2N+PeUZJIEYnecCnlMcFn8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718586405; c=relaxed/simple;
	bh=sM2/TEsKsgQY7U2Ye16OVj3oJI7EvHOe4wd2woO5SLw=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=ce/SEhuY2Etl1QkeBEocOsMtzXN8EcBjV1Jdb12d5dUsCp1MtF2WTE0PbbY/Nix14hV4CCMRTRm1Do7KOfCYoJi1inmjtkDQz3C3Un7b6fgaCfQME8IJtBrjQj7dcIXN38ZeAHAdf6DzFJ4ZRXCWRHSgnbXespiEIfapL0+9nhw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=YqjHfMS5; arc=fail smtp.client-ip=40.107.113.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=meLACtGGaJhgBmMRb+C7WRdEvWkB+UiGugHwxCh0Y5iQVjbED65OnUm4ZrGMpdYODHnLLDrPzJrs11b4FQ+/C3GzlkLUwLorIGZ7/6pg0ywLhayBMHoQG1Zocy2iD1yxfH4AGyStX3TmPxv2iunFXJeh+5kQfHkvxWssnLtMKMoh8ORt36EyytpFWGyi/XjS4Oa01NA1Gs84ZDPGGPKYgXLzBkQ/GwzWOmW1s5Izy2Gqg3guc6UW7pRbVysloFw7Ma/fxisvqyjUQ+6iuAXV+KKREhYaRINC/FvF0rGCwk5p6ydlqaOyKzckCxvaHw52GaBnWJ20quWyREYEgNaFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nx5CGNB8VEr2Dp4JAbHvU0049Du3/hPPWcfh8ch3oT0=;
 b=nHw5MbmF59eLxDqCo6AlfF2J8vXJV5mDBD+ISbXND6aEJrEDcU5BDet5F+3xCwzbpHDZuf/YUtQO5CO2sOLyWcVGBBJv8W217OBzDW+dzIpFWlyyuXb+0AiEw53mJJx1q+FeP+GslBm0Ihdr2BndZI8yA4esPfegtGSrJEiig6bZ7zhDobEGjUXV743YcTblWjYgPmp5EkOAEJuvSxXf/9EFwe1anB59iyF18IdiaEV0Oxe9ktr9YqgLwbsVbQlo1fytS62llemZe2qUKgzSCayA/IhaiJuWGHO+kIYOkvwP2tcYfBX0lQQMAj1LrmAqgbkIUw6MwDjY5BR3ONs11g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nx5CGNB8VEr2Dp4JAbHvU0049Du3/hPPWcfh8ch3oT0=;
 b=YqjHfMS5NhTNeCP/gqLVMMRMEUnmn4D5J9HO4rbNtiQHOJpaX+x+hWBZLYWK686POWxJcQKeVBt1Lx3vw+7/ULE/fjfRAGUbaMAqe8mnQsehuWR8E8C+y90u2k5U4kq4T3dRJu35/itV0nPnLklSTX/iYxvqZq8d+nhpJDfHNWQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11912.jpnprd01.prod.outlook.com
 (2603:1096:400:38c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 01:06:40 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 01:06:40 +0000
Message-ID: <87ed8ws7hc.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 2/5] ASoC: simple-card-utils: add link-trigger-order support
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87h6dss7i3.wl-kuninori.morimoto.gx@renesas.com>
References: <87h6dss7i3.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 17 Jun 2024 01:06:40 +0000
X-ClientProxiedBy: TYCP286CA0013.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:26c::20) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11912:EE_
X-MS-Office365-Filtering-Correlation-Id: 184b21b4-0744-4bbd-412b-08dc8e69beec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|366013|52116011|1800799021|376011|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?nfsXrpIYc+lZxxYyNelpEI3dat/6IehvW+PUndSZCTHZc7IcLo+GYuiewNao?=
 =?us-ascii?Q?/ZrD7hR1iBHLO7DlpznCtXRQXwSOiRX2Q+m8KDQ/8uzhCpxFqfjJVzPJ2wsL?=
 =?us-ascii?Q?rCv7UW6ESj2dG7n1u13LBPkeAepPmZTDedW6VshWtfqWsZyfFor7Tl81mvk5?=
 =?us-ascii?Q?5mwumIOrEfQEBQvp37yIN9MUC0LPKq0GOnCnNKHyprg0E2bs2h07jc7qanuS?=
 =?us-ascii?Q?DmfaxDvt7vGHM9nzSkheWiidxgntZOlkIPGeaDeTKmIceieK+upBH84A3dVr?=
 =?us-ascii?Q?kv3JlN3pUh+367TQD1Se8lHLQjAqNI2wVlP7NL8jxKexD7fG75LzH7zzytPo?=
 =?us-ascii?Q?pRntjhwPw0x0qeI26v/bx73HCfI/ay5OgPLCOxCQlB8W7y6+60ThncOexa5/?=
 =?us-ascii?Q?CNpMDCSpJFiI9k77UYAzxaobf4IkQbspTl2t2xawaxhJ8+xr4cDWnPhRpQ30?=
 =?us-ascii?Q?fEA/Tq816owBSeFHdkanu4NVuWarkhHzkTYFku7hmA4BdNWEuYtvyqLcCdb5?=
 =?us-ascii?Q?xLG0bkmZ1jP1A7TXzwL/14SerCS1DoiXcNQYWTQF4b2bhjeCRIoDYXJ/RHAc?=
 =?us-ascii?Q?QYdO855xfDva2zuaGF+rY4AOa9DWt+4Xgklqo7P/upHHLLHtDeHQu24TK7B9?=
 =?us-ascii?Q?h17v5B3y8nDCJ6fhISXmqASABr8rcQOKcvvDNDb4BdkYsBl+Ri+2K+XUXsHn?=
 =?us-ascii?Q?yvq9hcHapRY2AOLyrvj+FVswUlixToZl6fX4AiloQAdHkKtDii2Ucs/hq4IM?=
 =?us-ascii?Q?Fo+EpJ+dejxJ/Iv3TQhpoqG/tnONJl08GDxbDTsUT2Fvvc3XwOWjPylThHFp?=
 =?us-ascii?Q?MY/7dDHO832gPIhv5ZS2KfbTLoClQrTEUHdC6K0xVvWpBsjLyRBd+2Nu8cGu?=
 =?us-ascii?Q?Mcz+b6aODrdN6lPXHFoJquWoCu9xDJMFiNqv/DhdYzCdY3YnnYME4BymCZxO?=
 =?us-ascii?Q?CkVYSwNS+Qt9CQ5pcbuYX7Dm4Z13uu1cUHqck6LKNOhbIOtaW8dwMwW1zY4m?=
 =?us-ascii?Q?/OkCKnutf/yp6xMvcBKWBNjkVccrcCBvSO7ugckeMugCjkytt2J1P0gYk1hv?=
 =?us-ascii?Q?vj8uzrHuJZGEKBAPovqXenoCRfpeECN+1L/RznIZMhEBQM0a9B2PwYFxRoTK?=
 =?us-ascii?Q?Pw2BddB4fDZAaKmfCDL9T/saCJovseYQbLTt8v7bxMENgjvRTIaY7vAH6S2D?=
 =?us-ascii?Q?laBG5Yg6MjZ8eFaTSHVTjDKCflT91onl753fcARrbiMB1KNGuN/YXbHWjSrB?=
 =?us-ascii?Q?NNsOagR5I7xPyPV9ZCoTEIUS92bhM6cTgEPkfb9ki07KA/EdbHPOWzsq0n+I?=
 =?us-ascii?Q?7P8MIG/V3Rh3vXUWIQsnF3/kL3rz5h5xFSdeTqeDybw3txBrzG2Bn559POlS?=
 =?us-ascii?Q?252EKXI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(52116011)(1800799021)(376011)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?GTJQlY71hRyg3/tOyVwJh+dyCUzBUjcVK+ZIErlz7dfPItBA4ld76jCVJg3K?=
 =?us-ascii?Q?VqXedChDSqyrOsjIkZkLEwKhmz5mFewD1QxuP9cVWtLGw3jvUvjcxOgA1Bo2?=
 =?us-ascii?Q?EeGYKD1hFdw3T9CBsxer7WDVeouv0D2o/PJStcUE9XRqTmWzcul+8v+T0nXR?=
 =?us-ascii?Q?AarSjxjrtC2BPyhgt1o0ZY2jt/Z9SAFGxdL36d5oeVEKQpHBXaZchiuor7ZY?=
 =?us-ascii?Q?CzhAs0nQiHr8t0DVTB4x5Ler90bJHzbQeVATdBNRHfF6cA/8mP+5kKNqO8Pt?=
 =?us-ascii?Q?jqcql3jqaqyseUvJBLMsJPLg0wvJdJk8rUZ2kmVIvslypH53j+5bEq/L0jwJ?=
 =?us-ascii?Q?vayGq5y65aqxdTMOuctL0WPz+jPTfiEwY8Pp5YHhdU0FK4ZPQV9CTUTO3OWo?=
 =?us-ascii?Q?JgzZ9b8MMvSJ/hVMH4LLaMOeof80IufXVMAS+VPqduzh8j7GsqmmhlQ1TZq4?=
 =?us-ascii?Q?8HhwdYM+Mej9pFRFsLD3v9dDwMx3ey3cIpNSsO5qNPf1Zt0LHKiGr6ZOIJ57?=
 =?us-ascii?Q?nr6EkUpFnIm3nDMqpCGbTddKYka9CU3R348zErMUd4LkEXks1SE+/B5x7WZy?=
 =?us-ascii?Q?MwG7LWn08JUgV30o8ByABsW5Xy6jiPfKatagBo1bj0dfqMGekAsAGA5KdRnT?=
 =?us-ascii?Q?WsLobrWhWSeK3xZ/Aeh27rKs/6C1rnN2Vc2BOxQ9Vgvs5XuXyCkcdlSAfvYK?=
 =?us-ascii?Q?K/1gAviZwl7y3gtLY/JrjQel3gq4Rv5VPx5IeS9+gigCg92IjiReOtIWr1Ck?=
 =?us-ascii?Q?8hERdtGy2UoSnq5EDb2eqF4uo0DSs/7enWCQHm0NnYE8LchWTTjwNOFQp1Ek?=
 =?us-ascii?Q?d2ZnKNxR3skifkCjZlSFAbLaJe/N1RBldXmhjRwe0buNbgfK5dz47TYcP/DP?=
 =?us-ascii?Q?J/TiZWQ6RG/e2TF1WY1dUB8YYxwo1Xes1j7kVxC4iLWLhtmpdbLo7LD+dx5v?=
 =?us-ascii?Q?UmC7n2GhWrg5VH/SkQnVm6KwKQEjcF7FYmBWLFESs5fqIOGDihDOj1TVBhtV?=
 =?us-ascii?Q?loX2G1HtpD/sfElVj3JoZTd5dmVbRW2EM/n5vkzbAasjemARq0n2j8Z5An2j?=
 =?us-ascii?Q?OBsX61DgTrJTd9I+DvsoN+aFslMOXnohaZ0w2fWWbBD9K0oahu3XXD7+kQvh?=
 =?us-ascii?Q?1Dx3ej6MtWCgPJVnnPuNqQR3fSHbEs7hZqoozhpq3xy6NwSEyDVNGFnzn8YG?=
 =?us-ascii?Q?FwkGBzikbAXb7U4w1rJMvJ7+vv3WssochJOMMYVam701vmfWrKdG3Im57fcw?=
 =?us-ascii?Q?KgRACzfhJXCn8BQbKoWiyi/reOqmvSbihPeynD9asOMaO2HgFNFMapO2u0++?=
 =?us-ascii?Q?8iRiG2jqo9SC5VQwibsVHFz4LAevg6J+TqbxHuhamNZKu3FloLhO3i1Z2SGf?=
 =?us-ascii?Q?JbOn9ZNZw9eI6fFU8QxzHc+F57nats/sAPXF4z6xaW/G+loxYL7TquSZnNTW?=
 =?us-ascii?Q?qLB5XE73B7RYIBrIin8d7hBmXwzzvnS9U84lJWJZC5c5QHQG8Pv60tojEFzH?=
 =?us-ascii?Q?MeQOZ79dLQGfcSS8pAfr0Vm8tHEq2dAu40PXciNphl59ZKzrocOzYKUcPzGb?=
 =?us-ascii?Q?/oFe0pyhMftGiaCrZFHj8YDMpKJBryuk14VyVGd7Lvb4qbP1ba4yM/MPzLYV?=
 =?us-ascii?Q?5QA98aq2gRPnKbsRl+jwRKE=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 184b21b4-0744-4bbd-412b-08dc8e69beec
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 01:06:40.6616
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pQgfb18K+3S84haoiTEorL6pQ8Su6ZyXX5Zs+rVv/K9yjWRreXbMEDD78WhyqjwtQBEmPokRjA1i33HIw+NYMmcWPchzGDKxMKGE4IXLRTBHwJnz3tkxk+IDFhcQpik1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11912

Some Sound Card might need special trigger ordering which is based on
CPU/Codec connection. It is already supported on ASoC, but Simple Audio
Card / Audio Graph Card still not support it. Let's support it.

Cc: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 include/sound/simple_card_utils.h     |  4 ++
 sound/soc/generic/simple-card-utils.c | 71 +++++++++++++++++++++++++++
 2 files changed, 75 insertions(+)

diff --git a/include/sound/simple_card_utils.h b/include/sound/simple_card_utils.h
index 0a6435ac5c5fe..3360d9eab068d 100644
--- a/include/sound/simple_card_utils.h
+++ b/include/sound/simple_card_utils.h
@@ -199,6 +199,10 @@ int graph_util_parse_dai(struct device *dev, struct device_node *ep,
 
 void graph_util_parse_link_direction(struct device_node *np,
 				    bool *is_playback_only, bool *is_capture_only);
+void graph_util_parse_trigger_order(struct simple_util_priv *priv,
+				    struct device_node *np,
+				    enum snd_soc_trigger_order *trigger_start,
+				    enum snd_soc_trigger_order *trigger_stop);
 
 #ifdef DEBUG
 static inline void simple_util_debug_dai(struct simple_util_priv *priv,
diff --git a/sound/soc/generic/simple-card-utils.c b/sound/soc/generic/simple-card-utils.c
index dcd0569157cef..a18de86b3c882 100644
--- a/sound/soc/generic/simple-card-utils.c
+++ b/sound/soc/generic/simple-card-utils.c
@@ -4,6 +4,7 @@
 //
 // Copyright (c) 2016 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
+#include <dt-bindings/sound/audio-graph.h>
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -1156,6 +1157,76 @@ void graph_util_parse_link_direction(struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(graph_util_parse_link_direction);
 
+static enum snd_soc_trigger_order
+__graph_util_parse_trigger_order(struct simple_util_priv *priv,
+				 struct device_node *np,
+				 const char *prop)
+{
+	u32 val[SND_SOC_TRIGGER_SIZE];
+	int ret;
+
+	ret = of_property_read_u32_array(np, prop, val, SND_SOC_TRIGGER_SIZE);
+	if (ret == 0) {
+		struct device *dev = simple_priv_to_dev(priv);
+		u32 order =	(val[0] << 8) +
+			(val[1] << 4) +
+			(val[2]);
+
+		switch (order) {
+		case	(SND_SOC_TRIGGER_LINK		<< 8) +
+			(SND_SOC_TRIGGER_COMPONENT	<< 4) +
+			(SND_SOC_TRIGGER_DAI):
+			return SND_SOC_TRIGGER_ORDER_DEFAULT;
+
+		case	(SND_SOC_TRIGGER_LINK		<< 8) +
+			(SND_SOC_TRIGGER_DAI		<< 4) +
+			(SND_SOC_TRIGGER_COMPONENT):
+			return SND_SOC_TRIGGER_ORDER_LDC;
+
+		default:
+			dev_err(dev, "unsupported trigger order [0x%x]\n", order);
+		}
+	}
+
+	/* SND_SOC_TRIGGER_ORDER_MAX means error */
+	return SND_SOC_TRIGGER_ORDER_MAX;
+}
+
+void graph_util_parse_trigger_order(struct simple_util_priv *priv,
+				    struct device_node *np,
+				    enum snd_soc_trigger_order *trigger_start,
+				    enum snd_soc_trigger_order *trigger_stop)
+{
+	static enum snd_soc_trigger_order order;
+
+	/*
+	 * We can use it like below
+	 *
+	 * #include <dt-bindings/sound/audio-graph.h>
+	 *
+	 * link-trigger-order = <SND_SOC_TRIGGER_LINK
+	 *			 SND_SOC_TRIGGER_COMPONENT
+	 *			 SND_SOC_TRIGGER_DAI>;
+	 */
+
+	order = __graph_util_parse_trigger_order(priv, np, "link-trigger-order");
+	if (order < SND_SOC_TRIGGER_ORDER_MAX) {
+		*trigger_start = order;
+		*trigger_stop  = order;
+	}
+
+	order = __graph_util_parse_trigger_order(priv, np, "link-trigger-order-start");
+	if (order < SND_SOC_TRIGGER_ORDER_MAX)
+		*trigger_start = order;
+
+	order = __graph_util_parse_trigger_order(priv, np, "link-trigger-order-stop");
+	if (order < SND_SOC_TRIGGER_ORDER_MAX)
+		*trigger_stop  = order;
+
+	return;
+}
+EXPORT_SYMBOL_GPL(graph_util_parse_trigger_order);
+
 /* Module information */
 MODULE_AUTHOR("Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>");
 MODULE_DESCRIPTION("ALSA SoC Simple Card Utils");
-- 
2.43.0


