Return-Path: <devicetree+bounces-8727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7FE7C9CEA
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66A612815AC
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 01:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9C81369;
	Mon, 16 Oct 2023 01:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="p2eFOfcU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C357E15B5
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:38:03 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2102.outbound.protection.outlook.com [40.107.114.102])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FEE5C1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 18:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRnfK0rPP0sIj3gOZyljHhyox6jpIJnkOkAkC1Jk/wQeb4kL7VAJmdbe3bFgdSNhyIWK57ikmWp2Ye8QOAqVoRmRswgpQwUpFuExhiPdlNirUGgSleQT6cDs2PR3FdaOYl/KSl+cs+QhoLT94xb9Tk5leS63CGNrP7u5GQjyIhiwz9kZZxgB+8cDjfaGTpZlEv6qi6zchgGbViLTxiZj25n7oZKiTXOl3/fZqMSsVT7OAhEtcJ9E/MrN6vmgyw+2W/2JhU/R6wqIK1xSGad3FJ5BnsGpw+IrkB3xfXF3fTKOWbUXfOqQqOH6S/I5rZBONzA2VFc5Ll0qcaQlvryPzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VYmXm9T2vC4fO/F5co+2dN94BAsJPw/XSFjbixCUtUo=;
 b=YtM3zO5Id1FMv8AvRCIKntlncozb4cGTznOO/xM0KXdFL+k1ZUvPiYAhX+2xGtDjmw7AGuJc+nIgQSMErD2mX+u6C5XBKxH8XrPdAPfg3T7+8RaiYVkV2dylmhpYmjqYs0VXwkxvjnGEwL4JcQm3RkCOa7DD+4qVDc0Oip1o8aN7o1k9RZ8MapWpFgJjL5+Z3ppHQsennc63NkBg5vAUde9l0sUh/OwZYgFr4rT+xAEF+VX1HUiI8+TjNar5zMCuoPVAEBJBoEZti0/yXcz2zBW/4nN28dp4pc84RtAIVy5DVyBAHVoTrstv1nSmzN9i2OM+58y79AN3tI6PA1gRMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VYmXm9T2vC4fO/F5co+2dN94BAsJPw/XSFjbixCUtUo=;
 b=p2eFOfcUUpVMiTLU60oxGGfHxzkZQfHmpeqd1ga6zOJTgL4J52HJlzW1Decfjpevct6lVf/ohZMfNOK3Aqm0YGkaMRchL0mgAlalCvQmZ/wqTzu/OC3qsGb4rDAr2icNX238sZunBrlOznhEf42yOqLTHFozVIC9jdFbMi+ivCs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB5656.jpnprd01.prod.outlook.com (2603:1096:604:c6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 01:37:59 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 01:37:59 +0000
Message-ID: <87ttqrwdmw.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v4 4/4] dt-bindings: audio-graph-port: add ch-maps property
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
Date: Mon, 16 Oct 2023 01:37:59 +0000
X-ClientProxiedBy: TYCP286CA0115.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:29c::19) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB5656:EE_
X-MS-Office365-Filtering-Correlation-Id: 3320983e-0489-41cb-f1d6-08dbcde887a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	aO2DadeAn85IdtfziHIZqeCPHgAt9iwZQsBH1keFx+H2ZScQ9bU7kNMXEiGk7c7EbkRieg28N6w1FZ+mogQKSWoDRo7PgbuGbBqpRBbV5Uo0Rgau+ru+Y7J4IhFJONne30yLSVNrcIaLvsosSeXVQM4xNFs8KamY6Cyahs6PPLl1hsAfl+6VE31vwIwtihTSM07GhfF1FQ6cbfyc7eyUxX3uGAi8fNM1Hgu9qHS/aa6NgonWgmnM13NHJNkyWPhmPPyB0NIaRzBg37vOBa3VsIlmALomI1oee30JTngx4fJFV2LA9mimB4dkJZXMpb7f7RP1pXS9MuTAWR/2XHeWHTPS3Qm52JFT9ytvk1XVBBn9gK2sSBvecYHMsKIm5USiM0uPGddXro9Ip1ibcBIHTtkc8k5Z1n0hW0d+uNJuUtPJWQZiWA5x+haIQgCoOM0cXaKTqdAufJf2z3k5Dmhj5CqhnNIWxLRokhhpq4sZcO8gfBldNiDJlsn3vM8ZTmgO948Pv39McnZJWiOXcX76XGixcS07lyDw51bhDDGUCkyNafEPBNOUkvdG107q7IIz6/oxtjDE/JcgBeWEVWDNIXR+dMtDetyTrx5dqgIl9VHli5jMcmc9u96Maa/22ZBI4sYbJUN4Lr/iybUaVRhqmg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(346002)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(110136005)(316002)(66946007)(66556008)(66476007)(26005)(83380400001)(36756003)(38350700005)(52116002)(38100700002)(6512007)(2616005)(86362001)(6486002)(478600001)(2013699003)(6506007)(41300700001)(5660300002)(7416002)(2906002)(4326008)(8676002)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?uv3S19bpzbCrQOFy1LN33zHTlp4u2iDOzthwVaZP/Q9IpZ5AysUYktmMyCNK?=
 =?us-ascii?Q?5Dw6sfVt+vJIy0sJvrZ3X6v1bvxKgemPsTAj/KUxMCrehwCYZYn7rBSqsSII?=
 =?us-ascii?Q?I51f0HTRvBJxEDijQQ9PujvVY0oOv5yjrcB9xreFa6UOqjczltEEYlDz2URs?=
 =?us-ascii?Q?8xs5YeEEMNEY61T8iHcJN3ViK4UfgyzQCHOev2bgRDK0khlpeofXgck3YIF4?=
 =?us-ascii?Q?X5g82b8QStO2XDzRQW9Gufv0b/SsZH9BImERTZCmKXlSSZl0OHlihvmf31IS?=
 =?us-ascii?Q?vJodZDs6Yb+ciFtjnNRLt2xombTtwXjD7BSHu3kQWAfgXu+ziToUMS7qGbKK?=
 =?us-ascii?Q?JKMKIHUu+t0h+lk2E5/Ylzfmyx2t/HWotlgm9TRrDK9Yc7iX3R6z3Eu26llX?=
 =?us-ascii?Q?CR3RN13EeBHYrP1JSMUvsVhzfStzbv+FGCryxEcHvALcaft17U9AY66wNJ/3?=
 =?us-ascii?Q?lNnwlCEUqKLuBJ6osXsns6bretaGxP7qozUq7gQT822uNNGxU0ePIckxE4b9?=
 =?us-ascii?Q?dYyzVYxtyelzsQ7hQ1XTVEnNKwVDx8eluBOecLC3IuyBdobbCLBOt9DQBZyt?=
 =?us-ascii?Q?pjkrKmtf0ABhGvPHo4NpKVYBpPmIltIUZGupB2W5xFQe75n//g1+NWAq9EbG?=
 =?us-ascii?Q?jFLuqTZoKBQ/YZzffB3fLYmaeUvx5f4R9GvHNGvxGTc74wX+2cXjr5D97MqV?=
 =?us-ascii?Q?CvsOOhmHdR1XC42TR1wGF5s8PjdFgg08FaAKC8UJCDifgzFegeVnDklLP1zQ?=
 =?us-ascii?Q?MCOJtSYpQfNaAi9Y1XMAREX5F6UzURrzSlSCL6+TGVYzxKa4rISflCtW426U?=
 =?us-ascii?Q?2xjuV0XrMhD+cUFTwNKq15SOrWNh18mwKp/32UJPh0+mr7m5tr2QEBLDotOY?=
 =?us-ascii?Q?fOJk2OzXMSXk4d/5bHWmn8A/1BacuKgi9IJLqTxDVhrrq0eowGYtrYFi+N41?=
 =?us-ascii?Q?vd8leUEk5bSgORpj3Mx3d1AYhG/65QRmcrxPfU5cbzp13kot+7sFA9o+d2sc?=
 =?us-ascii?Q?NnQWnQbHazAsS2+AtjN50UNQ6c5CyxZ93RT8oPsWHdC9jR9wyEUGwh1igp/L?=
 =?us-ascii?Q?GlOr2y8j48Rt4QswV9pegqZOU+qgytqgTwYdyt7sVYwPwuZkui+iM1541C/o?=
 =?us-ascii?Q?XXHZ+k17qxPjFz3XwJ9LHnt36nc2fxle/xSCUpOlOBlVIp787RSbyVq2cc/m?=
 =?us-ascii?Q?0FGCImpsit9pwXDwLFZAcd+gK1/alyDT3UO1z9dAF95+ciILrHimR7AZM8CZ?=
 =?us-ascii?Q?lZc7DUuyzpfE9wOuhfku7gbeieBfYhNpuaqBwuTTrR0fKu0rQsEckXGcYQYf?=
 =?us-ascii?Q?/qBS1Rjha6v0szZW5QolIg/4f/JQRrWLA54nuEsOgy8pyITIZl/P8S2PsV9N?=
 =?us-ascii?Q?+ItuPJnUBVh7Ce5a4piIkjeHDogBd38DCPhvqiSxbesgyb5BihhEEZAD0XQ0?=
 =?us-ascii?Q?1Y/McWEkji5mACIXqxc4sIvMGxuljgi0Y5dn8Q4LXQz/stnLNcPdGPxCk9gK?=
 =?us-ascii?Q?BhgxwUiCOVKa+Qu8jpxRY3h5dQSMYkvmehLhXPwPC6viOPGSTfpK0f6HCszW?=
 =?us-ascii?Q?XBxOF2oV+YLyvMRA9aUJn1pv45bxRDTPhWKhUZTnbnnXDc/Mnnl+ShMxV0wn?=
 =?us-ascii?Q?FjydxzyDqTsYaomihLrCcFE=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3320983e-0489-41cb-f1d6-08dbcde887a2
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 01:37:59.5833
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N1ammdu1IGnfk/cNSzyl0UJWoQC0FAKux4Z4mWRuL2kKPeyQdjtWsywVELT7ZQx1Dzqa36/EKlGFnR78plglLcqdUZs3EUZv/ZxnxJoCWtn/m+ZsdXdBcpRcn2K0Iasm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB5656
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch adds ch-maps property to enable handling CPU:Codec = N:M
connection.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml       | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 60b5e3fd1115..1f7005356efb 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -19,7 +19,13 @@ definitions:
     properties:
       mclk-fs:
         $ref: simple-card.yaml#/definitions/mclk-fs
-
+      ch-maps:
+        description: It indicates how CPU / Codec DAIs are related if number of CPU(N) / Codec(M)
+          DAIs were not same in one dai-link. ch-maps is not needed if the numbers were 1:M or N:1
+          or N=M. If N <= M case, ch-maps indicates connection from CPU, if N > M case,ch-maps
+          indicates connection from Codec.
+          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dtsi is good sample.
+        $ref: /schemas/types.yaml#/definitions/uint32-array
   endpoint-base:
     allOf:
       - $ref: /schemas/graph.yaml#/$defs/endpoint-base
-- 
2.25.1


