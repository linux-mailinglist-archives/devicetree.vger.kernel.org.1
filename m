Return-Path: <devicetree+bounces-105399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA469986A1B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 02:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13858B2500A
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 00:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20201F19A;
	Thu, 26 Sep 2024 00:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="XTTBr77P"
X-Original-To: devicetree@vger.kernel.org
Received: from TY3P286CU002.outbound.protection.outlook.com (mail-japaneastazon11010014.outbound.protection.outlook.com [52.101.229.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B342AF510;
	Thu, 26 Sep 2024 00:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.229.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727308847; cv=fail; b=rtS6C7NISOsRMV8J8CA19AhE71HTkOh8HcY8Og9w41C4XJeLKT90LH4f8Dh5ixupK3jdIKSsz9j6Nm0GdBTVCR7o4RbQFggo7vzyTIai5c0XsbOmvkB3d4QChPViKslgzMcXd0yRC4ddlzOLTpECOgd1QA5yDCV037S/0xqQIx8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727308847; c=relaxed/simple;
	bh=EdKbugWpKq8hcObZNGvG1vWjSg1SvwyEMRoeEfW4sys=;
	h=Message-ID:From:Subject:To:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=FGiJ6YFNMqvikt8UFIzkoHhO4b277IptqTyEIeI9BHQJ+CKVgQpHDY21FwHp5Gk2me4SSTF+BDuIpXC4pwSMLm8NmYB9+kEUF7U/13ItpNm1wnoh1xvHwN0vWRqR0d4kaeHnMSs2nVcTb7BdMyDxWy0gqKfEYRi3ANCt4DlJxGo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=XTTBr77P; arc=fail smtp.client-ip=52.101.229.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=omVmABVIdrkAzaVaHZia81i4jwFJHMW/2M+qT5fdDZEjZbkDT62UpWlrUEq5GfMQqDfTbNc+uQH/pgv3v4QqqHA2zgZLsrw7CiRunMdUmKdCusw5vuf40V4xuWSZmEJNHAiF/z6glHIjJp50hG0jeckh/CFSuNwPaleDA/sEzaJ3wm8QlXyVEi2uBj59HyNT58upDg8gUPpfIsSfi5tR6zygUK6UHfC2VAYrLddDileYKG+r/+wL/NQRbhwIT7P344mgu/HPdvPbEgFOjD7OowUmbsgJqUCAlVFUWuwzskw0FWquWElKpmFUVuK2n+ZiOA3Cj8v3+/OCXA0K2X6ARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QrWMpjt2fcUpvD0bCD5iddrf019/xghmFRiFAtCDjEM=;
 b=yTRaMbHRWlJcuXDBOz6QXhvp1Ohvj1yuVDPSQBrioD6jzZonh1UYoR2hgV9gOqQaFU2bSMpB3fvd5nms9RrmZN7DFV0SmNES0eWBRGi/COKScvUSWM1b3D2DLuitcXU/tVgxMtNarQe8samJnmLEEZSW57dbUmYTlmBhDBC6PzWNeEI1npe4r0NDmSjgUXDhCtFOTNamf6kZJ5icypSkDE8F5OF1MQ2vRa+GhSjW6/rtIM9S8r5IbsP4+ljEsok0itnVy3OlZV8YkblQYSdv4O6Wej5Z3iJWDSwH+KPtq+ntBPoR0i1salv6aR/sXWLjWUrpTVxNpiPs78Ht2eivQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QrWMpjt2fcUpvD0bCD5iddrf019/xghmFRiFAtCDjEM=;
 b=XTTBr77PUN8jPm2spZBY3tsTsvsR2cCBXGp7+TS9EfyPdbCjURsj39OXpFzgMTQ1y9DewDhdtvgbp55FmEl0uPafvi8r5xtpi3l2pVlIXu/78V4OWefRP2R1QYCC1DxfEiuEW2yYh3mBWBC4N7ffLCrOGBSp/NXw87uy3Z/gzpk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYWPR01MB7353.jpnprd01.prod.outlook.com
 (2603:1096:400:c6::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.20; Thu, 26 Sep
 2024 00:00:43 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%5]) with mapi id 15.20.8005.017; Thu, 26 Sep 2024
 00:00:43 +0000
Message-ID: <87y13f8es5.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v6 6/9] ASoC: audio-graph-card2: use new of_graph functions
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Helge Deller <deller@gmx.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Takashi Iwai <tiwai@suse.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-fbdev@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>
In-Reply-To: <877caz9tdw.wl-kuninori.morimoto.gx@renesas.com>
References: <877caz9tdw.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Thu, 26 Sep 2024 00:00:42 +0000
X-ClientProxiedBy: TYCP286CA0229.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::8) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYWPR01MB7353:EE_
X-MS-Office365-Filtering-Correlation-Id: fb81d687-9cab-49c2-bd09-08dcddbe43c2
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|7416014|52116014|376014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?OtvCZfD2tUKVrB7pOagEULywBUHkL2Fot9Lg+7Bcq0BNJ57u6AxmBvWeLuaF?=
 =?us-ascii?Q?MddWFKODcj1de7zb7qJhE1Jbh5xLLVGPKLv+3RmRt5WywEtycgymWyrt41IQ?=
 =?us-ascii?Q?vz63tjcr+Yh2lfgePnif2nhy+8g/57Ai+6NiiVPXuUHB1aE5o+6iNCeYVaFY?=
 =?us-ascii?Q?qNMaUF2FceVjUnArzDCyQfqpApd4i0BddOcRyY64z6FyoGq9TjtIafr7n1rt?=
 =?us-ascii?Q?ccdQ2+M0df8JqEoQq2SMO4i6smX5v4bxESQoPTW7+AIRNDVoMCGobWh3p+By?=
 =?us-ascii?Q?bv2PIwH/SgEVj1hGlY2oXq90zCFDMj8AWpbSMbwft2pXzDqaI9BWTFfQkLg2?=
 =?us-ascii?Q?OSa7Wq00LJ8R4z02xF6rmOM2HI4B0Lm8+V3ri7WEbuyK8pOuyx7HHnOqVNkR?=
 =?us-ascii?Q?pGYR9prBAZNz04nIjEmEAY5XNH8HhWWPTlop7vdUYoxXjCusSWuYYyTh5Hbs?=
 =?us-ascii?Q?FVCGp5/vhbFcaEGsaSvEmPe+QgP8xvSX4Fk/uTsINEzi63jup+8N6WrquJv+?=
 =?us-ascii?Q?O6jvm0ViDMgMsAeI5+sfyyXEO0a/c6tmyrvdxErk3ckE1xszIpD7kXtoxjLm?=
 =?us-ascii?Q?pOyntrHgAiaH9DuVqqyR3qkpXkVjGAuNaL6ROsVq2WPc3utqpptCwG4xBSDS?=
 =?us-ascii?Q?dl8SyOouQ0ita6i5Hcmo/Uyppp3GoPau7U+MpqtlUDgmRovGmmA1MVyZ7V09?=
 =?us-ascii?Q?DrihQ3uQObtYdYSbln4Aw/ONKmGhNC9oLJzo8uRA62gxFkbhIXzasBClXRwd?=
 =?us-ascii?Q?3UTtkEdZg7ThMVAdjMLwyA2fN4yEu6wiB2yMNs6Pc0Xka9ZT+Tsd2MjaQI13?=
 =?us-ascii?Q?5OaVpcYV/BqAzELPt+Cpw5fUdbyKvdHXUXyhM+OXBEGVxPca3ftgao5k9S6m?=
 =?us-ascii?Q?qGtnpMbZgJbTZyb3E2r774gdeII4JV6SpKlaF/0q7pPsdUgvfUkavd8RSQ4T?=
 =?us-ascii?Q?V78AvlwhwuONgFs6ZUit9wM2EkQASawZTC9Zgcm32MC5V0CtO6JAaoerSmOI?=
 =?us-ascii?Q?8LBJMfJGslAHQvpFJmvhhE8qpB0q/vrduseMZYo7zztJHKEsl32uAY5nKouS?=
 =?us-ascii?Q?AWzzHUqZBNqN4FH9B41mXQpfVbxAkL9NsoNJstTuvBtDjV5EszimN8CW/Z75?=
 =?us-ascii?Q?YDcOiRgeNkYM64tl0qyzCOFbIkGZOF87wk/pfAVVlJ66PotwslXLis/1BnO5?=
 =?us-ascii?Q?SUxtoKAKocOIK9V51yJ+1KsY043ebhJ2ch8yirb8yO3ZKmnMMk0mLOPkVnOK?=
 =?us-ascii?Q?JUyGA1robkyyvFCqn+anzAhWHb9gjN8VKOdXDycouO1E/jXgyFzZv6/VCOgx?=
 =?us-ascii?Q?vM+FycBsMBHMA+8iEPze49L5XUPxjnendChK69YeU3ZYB1ju+7Q7r7jQKdsK?=
 =?us-ascii?Q?HLJE4KzpU5xi8gUki4T0XFT1FV0zI6QQruJGtiNS2bs+pXfj0Up3D0eJ5zmU?=
 =?us-ascii?Q?y78x4vLTza0=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(52116014)(376014)(366016)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?V9ZcETTHXUgQO1tShtHfw+7YAofyL4IHrXayxXtpBOXdYYkT1Bxc4VN04FBM?=
 =?us-ascii?Q?Tmj0bo+mdpdutCrRNQ0gtGHdYAc8uMKQIbbbcMEAAI8AgTbhujD+wxSCi3z8?=
 =?us-ascii?Q?B15EON1malNjZ4H0FVEMEfkyh5FowNsE2sNcDVrms2G77a1QyR9R+vPIiaf5?=
 =?us-ascii?Q?qr+dQBGbRTc9JcXb0InJ/eFs9QYdTmQleALDMyXWFEVpEOPtXsPB+cvZjX5x?=
 =?us-ascii?Q?ESh8gXvAKPQEnBoSzm05hXpYN0+Cq9np8mPZaGJybtee1Y9VvAfbDFLhv56G?=
 =?us-ascii?Q?C+1FI3gWShhEWZxrxzi6mwwe3KdoIEPJIqSkiforMYT2W3/HO2JJgSGaDpEW?=
 =?us-ascii?Q?h+Pc7/Syv1rXlWkpp9mPSthqt3+CPhaacWbT25eHZQVTcuh3Jk0cpUCeeDzM?=
 =?us-ascii?Q?qWwmFBMWpWiWpAHd4ORskmOm6mr/lOt2UtH4gRJ8nd8A9B+xvNP0xwfWgzRu?=
 =?us-ascii?Q?Pi7e+W8+ZJ2zNVmXUUTQaOFlf03ER+EXzuZnIWFIwEu+ED7Q1/NrfFsoa77q?=
 =?us-ascii?Q?q+mBvnywyQIVGXetH5c0l2FBdoAnNl1TUUoSLVX6uKPSIanjqB1URrOYBg1I?=
 =?us-ascii?Q?A/Z61mQH7BspH83yA/qVljqdHWFPJ9vGDEfYjMQ2/eGyVxWEs1KfkxMpNOAP?=
 =?us-ascii?Q?ldW23n5b75n7jJ6l8YwghRLCxFQVRT01+ik/ZUp3ouVEBsrBy12mXXqFW/zJ?=
 =?us-ascii?Q?bteN6/XcW4mjIUSJWrDO7blq6JKa7OFSe8ZMUn8EbeQSv/rmL84Y3Vq2kyHB?=
 =?us-ascii?Q?lMm4BU3pafT/iPYj6ezqgx4QCeuGQQc+H6XR7iOG+/nMkbhIIkdOccBQkftn?=
 =?us-ascii?Q?9dc7YxHLKWgFU1rty0cMUwbsFs9MVH/g5fvCc5rA334WYXgjhOT0lrX0WJ5n?=
 =?us-ascii?Q?Dg9waGBORGUrxpLl/QDZMRHQytUEOhG6pD4ajMg9CbCiDCFa8MTm02ZtGtvj?=
 =?us-ascii?Q?vbTIhXy2/PCtWcbgXTF8AVtofVf+jkWvjMg8BZ4qa33Ywr7E7x2QB4zNC0V2?=
 =?us-ascii?Q?meHm4t47u4qlLWvWQz2ytYa9QqApndtTQJQZlmp8XkeR4ptAd1uJ7I5MHoxR?=
 =?us-ascii?Q?WgVzEs/jgW9XAbFaown50wSixt5GJqwK3udDXyw/Fxo6yZbK5E8Gc+96x7kz?=
 =?us-ascii?Q?gMa8B9sDAAVXxSMYFd/bMbV/rRtM6YetGVbO2OtpVm0li1FS/eWO4sNbS6Ps?=
 =?us-ascii?Q?XKXNY3yDaX31pJSKR3B2nFfJGr3Ni5jmKPcGcfUYDBtNPDV2gH3mMUXHJQPD?=
 =?us-ascii?Q?UhU9Syc2F7bzb4uZy1n+wWmLvYGa/KRJT32TLG0HtR5L1LNVwvhXdRtA9hRm?=
 =?us-ascii?Q?yMHEdBTJWKXe2lmFJ54ypxPyFEK0CgRoTi3xlsvRCy1d8IAcwqjhsedUY2Il?=
 =?us-ascii?Q?aWkJPU+jj1mTgYQJdK1VnwWXa4hrk4/i4zindEzCVHJO5KePVgObc8tn6S+2?=
 =?us-ascii?Q?fIRL/16fTxk+9NgthLo9kPlrUCEysHk+inGAnU7DjufuZ31DMGe5Ku50C/W5?=
 =?us-ascii?Q?9iN98jIiNwWCy0MWRC2I4YZ/wOfNGQSAWFIN1fPj/khLDbEp3k+fvbd3A+eJ?=
 =?us-ascii?Q?0uWyNoBJt8ZFd8R87NLmww0vZoWcgIWxbYjnjbf5EQmK+dOfdJ4CNBIItOiY?=
 =?us-ascii?Q?c+5KyU7VafCkC1oaSyaSwlY=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb81d687-9cab-49c2-bd09-08dcddbe43c2
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 00:00:43.1951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ouEmiL8MEoUDqP6kAB4twwvPWWozvX05MZzmdzw0MFCbO0GCltkAWh/iTYnZKrcSFtK8kMw2XYrTLSUR7n8D7uqCPUBusvp5uf9V/O/C6dwSv4u3rQEp/88qzLhxCOix
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB7353

Now we can use new port related functions for port parsing. Use it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/generic/audio-graph-card2.c | 104 ++++++++++++--------------
 1 file changed, 48 insertions(+), 56 deletions(-)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 4ad3d1b0714f6..3605a6b2c7820 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -234,8 +234,6 @@ enum graph_type {
 #define GRAPH_NODENAME_DPCM	"dpcm"
 #define GRAPH_NODENAME_C2C	"codec2codec"
 
-#define port_to_endpoint(port) of_get_child_by_name(port, "endpoint")
-
 #define ep_to_port(ep)	of_get_parent(ep)
 static struct device_node *port_to_ports(struct device_node *port)
 {
@@ -351,14 +349,9 @@ static struct device_node *graph_get_next_multi_ep(struct device_node **port)
 	 *	port@1 { rep1 };
 	 * };
 	 */
-	do {
-		*port = of_get_next_child(ports, *port);
-		if (!*port)
-			break;
-	} while (!of_node_name_eq(*port, "port"));
-
+	*port = of_graph_get_next_port(ports, *port);
 	if (*port) {
-		ep  = port_to_endpoint(*port);
+		ep  = of_graph_get_next_port_endpoint(*port, NULL);
 		rep = of_graph_get_remote_endpoint(ep);
 	}
 
@@ -530,67 +523,66 @@ static int graph_parse_node_multi_nm(struct snd_soc_dai_link *dai_link,
 	 *	};
 	 * };
 	 */
-	struct device_node *mcpu_ep		= port_to_endpoint(mcpu_port);
-	struct device_node *mcpu_ep_n		= mcpu_ep;
-	struct device_node *mcpu_port_top	= of_get_next_child(port_to_ports(mcpu_port), NULL);
-	struct device_node *mcpu_ep_top		= port_to_endpoint(mcpu_port_top);
+	struct device_node *mcpu_ep		= of_graph_get_next_port_endpoint(mcpu_port, NULL);
+	struct device_node *mcpu_ports		= port_to_ports(mcpu_port);
+	struct device_node *mcpu_port_top	= of_graph_get_next_port(mcpu_ports, NULL);
+	struct device_node *mcpu_ep_top		= of_graph_get_next_port_endpoint(mcpu_port_top, NULL);
 	struct device_node *mcodec_ep_top	= of_graph_get_remote_endpoint(mcpu_ep_top);
 	struct device_node *mcodec_port_top	= ep_to_port(mcodec_ep_top);
 	struct device_node *mcodec_ports	= port_to_ports(mcodec_port_top);
 	int nm_max = max(dai_link->num_cpus, dai_link->num_codecs);
-	int ret = -EINVAL;
+	int ret = 0;
 
-	if (cpu_idx > dai_link->num_cpus)
+	if (cpu_idx > dai_link->num_cpus) {
+		ret = -EINVAL;
 		goto mcpu_err;
+	}
 
-	while (1) {
+	for_each_of_graph_port_endpoint(mcpu_port, mcpu_ep_n) {
 		struct device_node *mcodec_ep_n;
-		struct device_node *mcodec_port_i;
 		struct device_node *mcodec_port;
 		int codec_idx;
 
+		/* ignore 1st ep which is for element */
+		if (mcpu_ep_n == mcpu_ep)
+			continue;
+
 		if (*nm_idx > nm_max)
 			break;
 
-		mcpu_ep_n = of_get_next_child(mcpu_port, mcpu_ep_n);
-		if (!mcpu_ep_n) {
-			ret = 0;
-			break;
-		}
-
 		mcodec_ep_n	= of_graph_get_remote_endpoint(mcpu_ep_n);
 		mcodec_port	= ep_to_port(mcodec_ep_n);
 
-		if (mcodec_ports != port_to_ports(mcodec_port))
+		if (mcodec_ports != port_to_ports(mcodec_port)) {
+			ret = -EINVAL;
 			goto mcpu_err;
+		}
 
 		codec_idx = 0;
-		mcodec_port_i = of_get_next_child(mcodec_ports, NULL);
-		while (1) {
-			if (codec_idx > dai_link->num_codecs)
-				goto mcodec_err;
-
-			mcodec_port_i = of_get_next_child(mcodec_ports, mcodec_port_i);
+		ret = -EINVAL;
+		for_each_of_graph_port(mcodec_ports, mcodec_port_i) {
 
-			if (!mcodec_port_i)
-				goto mcodec_err;
+			/* ignore 1st port which is for pair connection */
+			if (mcodec_port_top == mcodec_port_i)
+				continue;
 
-			if (mcodec_port_i == mcodec_port)
+			if (codec_idx > dai_link->num_codecs)
 				break;
 
+			if (mcodec_port_i == mcodec_port) {
+				dai_link->ch_maps[*nm_idx].cpu	 = cpu_idx;
+				dai_link->ch_maps[*nm_idx].codec = codec_idx;
+
+				(*nm_idx)++;
+				ret = 0;
+				break;
+			}
 			codec_idx++;
 		}
-
-		dai_link->ch_maps[*nm_idx].cpu		= cpu_idx;
-		dai_link->ch_maps[*nm_idx].codec	= codec_idx;
-
-		(*nm_idx)++;
-
-		of_node_put(mcodec_port_i);
-mcodec_err:
 		of_node_put(mcodec_port);
-		of_node_put(mcpu_ep_n);
 		of_node_put(mcodec_ep_n);
+		if (ret < 0)
+			break;
 	}
 mcpu_err:
 	of_node_put(mcpu_ep);
@@ -674,7 +666,7 @@ static int graph_parse_node_single(struct simple_util_priv *priv,
 				   struct device_node *port,
 				   struct link_info *li, int is_cpu)
 {
-	struct device_node *ep = port_to_endpoint(port);
+	struct device_node *ep = of_graph_get_next_port_endpoint(port, NULL);
 	int ret = __graph_parse_node(priv, gtype, ep, li, is_cpu, 0);
 
 	of_node_put(ep);
@@ -769,7 +761,7 @@ static void graph_link_init(struct simple_util_priv *priv,
 		of_node_put(port_cpu);
 		port_cpu = ep_to_port(ep_cpu);
 	} else {
-		ep_cpu = port_to_endpoint(port_cpu);
+		ep_cpu = of_graph_get_next_port_endpoint(port_cpu, NULL);
 	}
 	ports_cpu = port_to_ports(port_cpu);
 
@@ -779,7 +771,7 @@ static void graph_link_init(struct simple_util_priv *priv,
 		of_node_put(port_cpu);
 		port_codec = ep_to_port(ep_codec);
 	} else {
-		ep_codec = port_to_endpoint(port_codec);
+		ep_codec = of_graph_get_next_port_endpoint(port_codec, NULL);
 	}
 	ports_codec = port_to_ports(port_codec);
 
@@ -850,7 +842,7 @@ int audio_graph2_link_normal(struct simple_util_priv *priv,
 			     struct link_info *li)
 {
 	struct device_node *cpu_port = lnk;
-	struct device_node *cpu_ep = port_to_endpoint(cpu_port);
+	struct device_node *cpu_ep = of_graph_get_next_port_endpoint(cpu_port, NULL);
 	struct device_node *codec_port = of_graph_get_remote_port(cpu_ep);
 	int ret;
 
@@ -883,7 +875,7 @@ int audio_graph2_link_dpcm(struct simple_util_priv *priv,
 			   struct device_node *lnk,
 			   struct link_info *li)
 {
-	struct device_node *ep = port_to_endpoint(lnk);
+	struct device_node *ep = of_graph_get_next_port_endpoint(lnk, NULL);
 	struct device_node *rep = of_graph_get_remote_endpoint(ep);
 	struct device_node *cpu_port = NULL;
 	struct device_node *codec_port = NULL;
@@ -1007,7 +999,7 @@ int audio_graph2_link_c2c(struct simple_util_priv *priv,
 	of_node_get(lnk);
 	port0 = lnk;
 	ports = port_to_ports(port0);
-	port1 = of_get_next_child(ports, lnk);
+	port1 = of_graph_get_next_port(ports, port0);
 
 	/*
 	 * Card2 can use original Codec2Codec settings if DT has.
@@ -1037,8 +1029,8 @@ int audio_graph2_link_c2c(struct simple_util_priv *priv,
 		dai_link->num_c2c_params	= 1;
 	}
 
-	ep0 = port_to_endpoint(port0);
-	ep1 = port_to_endpoint(port1);
+	ep0 = of_graph_get_next_port_endpoint(port0, NULL);
+	ep1 = of_graph_get_next_port_endpoint(port1, NULL);
 
 	codec0_port = of_graph_get_remote_port(ep0);
 	codec1_port = of_graph_get_remote_port(ep1);
@@ -1144,7 +1136,7 @@ static int graph_counter(struct device_node *lnk)
 		 * CPU/Codec = N:M case has many endpoints.
 		 * We can't use of_graph_get_endpoint_count() here
 		 */
-		return of_get_child_count(ports) - 1;
+		return of_graph_get_port_count(ports) - 1;
 	}
 	/*
 	 * Single CPU / Codec
@@ -1158,7 +1150,7 @@ static int graph_count_normal(struct simple_util_priv *priv,
 			      struct link_info *li)
 {
 	struct device_node *cpu_port = lnk;
-	struct device_node *cpu_ep = port_to_endpoint(cpu_port);
+	struct device_node *cpu_ep = of_graph_get_next_port_endpoint(cpu_port, NULL);
 	struct device_node *codec_port = of_graph_get_remote_port(cpu_ep);
 
 	/*
@@ -1186,7 +1178,7 @@ static int graph_count_dpcm(struct simple_util_priv *priv,
 			    struct device_node *lnk,
 			    struct link_info *li)
 {
-	struct device_node *ep = port_to_endpoint(lnk);
+	struct device_node *ep = of_graph_get_next_port_endpoint(lnk, NULL);
 	struct device_node *rport = of_graph_get_remote_port(ep);
 
 	/*
@@ -1228,9 +1220,9 @@ static int graph_count_c2c(struct simple_util_priv *priv,
 {
 	struct device_node *ports = port_to_ports(lnk);
 	struct device_node *port0 = lnk;
-	struct device_node *port1 = of_get_next_child(ports, of_node_get(lnk));
-	struct device_node *ep0 = port_to_endpoint(port0);
-	struct device_node *ep1 = port_to_endpoint(port1);
+	struct device_node *port1 = of_graph_get_next_port(ports, of_node_get(port0));
+	struct device_node *ep0 = of_graph_get_next_port_endpoint(port0, NULL);
+	struct device_node *ep1 = of_graph_get_next_port_endpoint(port1, NULL);
 	struct device_node *codec0 = of_graph_get_remote_port(ep0);
 	struct device_node *codec1 = of_graph_get_remote_port(ep1);
 
-- 
2.43.0


