Return-Path: <devicetree+bounces-12287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5810F7D8C40
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 01:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1411281CD3
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEA83FB30;
	Thu, 26 Oct 2023 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="EvJPV1vj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E5F3CCF0
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 23:35:51 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2093.outbound.protection.outlook.com [40.107.114.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7601AD
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 16:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=McofUoDEIfpwHt0O1cagYek3EU+ZQv+0J0uPNHDhJlHe3TdbRpwthREenLyD/7Vb77ewrkXTiUfdb7XgKvDdg1vKBuCQdtpoDjCizMRfHGtUWR6OhWKQRIsMB7Bq75xluXQESs3TmFcmYqXE66mfKMaSGk4nc+znTB9ePvk0+uvHG+TgwVtwRM1kH4Z/WE34J8Y06uxOw6glbM5F1ojzZWJ1GACtjyrAzi7VLXFDpepH001P2vgErNxrdBVRrsBg4ZTAsv5dixjAVOL6dw6lzJGMIBfiowB1qYfRbm4d8TjobKNDLRCBrHTpEbRBQWW0QKcxUF5xqB6+oR73aa241Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=As4rh2ww0uj0vc9L1TaR/dqUqq6nzdB5V/498LcbR3o=;
 b=kOJ0/ih5tEEeAebBV/mLe9lkKFggRtjPadEgDYxt2M+PrZmD+ZghFfPFVGgv7Cv3ecTh9adaw2sBiDiky2h0hyZpjnqphv5RnhiGK1/NdA+o/NBphIsNNGvV6I+b94/Chgxo67DNi/zVH3mAIdJIvMi0aDvKSBsTlhwwR2rkbpwQyS4jba1JGf5L7+thB/Ci83bizfl6VXETzXckld/tLNJNGe64VfRqYqGVr4VNR2ulWhEUOr7NC7TOOUF7uWx47dlEQHy+xCgm/RZaNeVvLylUjZiS78/bHfBsdzRZtBvYsQaTwT3oWkyGC5AROTCBZ/hEmGbr7Hi82jb6WmyLFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=As4rh2ww0uj0vc9L1TaR/dqUqq6nzdB5V/498LcbR3o=;
 b=EvJPV1vjmFYiWH+3kVmT+ERtC/QT0/nFsDfArF6dvPzyIFlSczg30tJR8mXGjP2DE+jj7GZxJvvVU81+fpHqA5PJW6Sd+CHlvDjfFBj/58mIjeZHAtojuZc6u13J1umVtClU/i46yzKSYIYklY/gMbDnW2enmP7HH2/5xjGCsS4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSZPR01MB6200.jpnprd01.prod.outlook.com (2603:1096:604:e9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.23; Thu, 26 Oct
 2023 23:35:43 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::9ac9:4ba4:a453:d84b]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::9ac9:4ba4:a453:d84b%6]) with mapi id 15.20.6933.019; Thu, 26 Oct 2023
 23:35:43 +0000
Message-ID: <87y1fpq7n5.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Rob Herring <robh@kernel.org>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 5/5] dt-bindings: audio-graph-port: add channel-map-index property
In-Reply-To: <20231026212248.GA383937-robh@kernel.org>
References: <87fs1zbg2g.wl-kuninori.morimoto.gx@renesas.com>
	<878r7rbg0v.wl-kuninori.morimoto.gx@renesas.com>
	<20231026212248.GA383937-robh@kernel.org>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Thu, 26 Oct 2023 23:35:43 +0000
X-ClientProxiedBy: TYCP286CA0295.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c8::10) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSZPR01MB6200:EE_
X-MS-Office365-Filtering-Correlation-Id: e6685045-e07d-4d1f-e118-08dbd67c4588
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	SJAEvY5SjwWyiXcq0g9GJdO26VA2OMiKX4jT9vm7u3gU67TzpuM3tQ3lVvUWnZAaDPNwoSV5sE1hFq3xagSsFqz+hGymXgr9hN5QFYF1l+9I3kS4jheJXgjs/oWteSFpTU71eMVNhNdGnCAx5lso7QvOTYKRBBhFWUmhsRIUtC5gqKBRWMbLulyOMH9MGbKdNRqbGqqjogLJJAQjHDnOJxpygSJGOA1RMjcIef8DgOLCWddZNYZh3NAo+LD20kXw9RcMpotZD+BKvTs/f8Sh3/Zzwj0vPPGWMSqfQY3jKV+3zugKlBogVZYEvVZ4uYPNMUyWseBCGqu58mFrJkF4NRMhAdkZWSjfnxPsZyXkW5UlCI262izs2kgSFIfAZdIgtcYn+oJBITInDASMbYtM5DKsuWGg7eE5aMvLZyWhl6QIwD99DlO0x98MYsJkDMBzPjxusrRKTbV5V/6+QtDZBF6edXmz3BDQOUfwZ+/AFe6ZIu8wj9ybVWG3S6E5D4pVxjL8hZEvWlR1WRJVb/KzYakyfgBoTUd1BooEg/H2lbaBGbeNqDVrgrZQW8ZeGd8LulHMkePFGxVkQLMPsuVMOrOzQ7BhFbuXnjRrjMdg5gUzRQuk5yjwNaZHunzeI65BMsOhe7G5gpngxqu59yVbBg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(376002)(136003)(366004)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(2616005)(36756003)(41300700001)(26005)(38100700002)(6512007)(38350700005)(8676002)(8936002)(5660300002)(4326008)(52116002)(7416002)(54906003)(4744005)(66556008)(66946007)(6506007)(66476007)(2906002)(6916009)(316002)(6486002)(86362001)(478600001)(2013699003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?qnluo6WNZjbtGz0i2SqOM0khRXKJmvEwihlUyWVF+DfPfuY2yooE/Yp43CV5?=
 =?us-ascii?Q?idmA1Mln9FHMmGfi7xxvJzY3U1rkgtq21zh34UW8fkOEsDd1Pbqam2Z6UiE/?=
 =?us-ascii?Q?E0pH7EPwViqVF+1eBwRg6H1TeXCGf6gH7DUFvox2uCDqqJK6vA74ajVCp5Rm?=
 =?us-ascii?Q?nKTB2IZfOxmm/18oNwXotnOyHnZkNBSyXxhBisthqnCfgRUL7EDxEgBjMoSy?=
 =?us-ascii?Q?FAAbaTyapnautY+Sv4VdWPvEdj46aV6oPDV5nmHyvkGeG95ImResczKZt5Hu?=
 =?us-ascii?Q?bRVKzm2VDvlDOt6ifnvXGXDx81zLScShYtyEmU2de0U5CFVixh4vhJLJUmah?=
 =?us-ascii?Q?bbDFZIfvkaIZo2E6hYqPC7rCCelB3NMJWiFrEjEOUNWLrZwG0ZjPikwtLHAP?=
 =?us-ascii?Q?L4ET5PFGQYz9ljRZZAEApUoXaBsBdvXagqu1UcNZIS2lHlJhl8qh7NpFNUZn?=
 =?us-ascii?Q?x5odET6LRXa/iedTsDzBOZ/z/h7FodRidl9u4ANf0d8KHvdG1+sxs7ULTzSI?=
 =?us-ascii?Q?1rQRGKcO14tieA2Lawttee8snhMEFM0o4Rrje36kEvTwUbOrEF8VNRn5ZxtE?=
 =?us-ascii?Q?sFilYsD3gHYKqTI9bRt0MIGxt2oSR/NDfypDcv9MyVQqpi0Aixg/PcHVOG8m?=
 =?us-ascii?Q?4BIkW6KIGBEz7RIkT4rhVGSt+jd2ODAiVUbV3NWE1GsU2nFhfYhsVJPoMtID?=
 =?us-ascii?Q?Me34Q3yMFXBoSwfoy5+HQld+jKwEcMGPVPyjK/QL4G1mDoWDsrkJxNDpN3k+?=
 =?us-ascii?Q?c0MM1hxDo+0F45wEB1BYl1n/jMu/N1PbPKFE6ORes4D7/0g75cFBoyh/Rh0Q?=
 =?us-ascii?Q?KpINYGAIcUDEHE0tfP0gU5KmI+G/GBgh9YBo4mAMOQ0cXppZXswVONMOGHik?=
 =?us-ascii?Q?DKRE7+/NrKkIG50VHZ4VTiQhlATxLV7ObQptWbGZh8YoXBqMxSEX9qEELwyW?=
 =?us-ascii?Q?oTJnjHy54gWdzwonly41zdRLpRFQdEaEWYOsyz+zOOAVCkXKK7wpPUVF/BsU?=
 =?us-ascii?Q?v8xMJs7YePQtAn0eGShFcM7Mq2EON50LlviVJg9PmnN1+TajVNG+94zP+quR?=
 =?us-ascii?Q?0iZGh1YfsMFUn4Ki91zZlYsBERA9e6ACaXtD9ePdTdOqFYRtqVHL8wiZPKaN?=
 =?us-ascii?Q?XqZAs0PdZGZF0LU6pZBNCGFfSuCX8Fq0ezQ1vFnbsTbvqXLGwGeRDa7F9HWb?=
 =?us-ascii?Q?8xwHpGIr+CvG/efTpG1I3DPvLMcCfIUiXNz5h1Ozf5swxAQd9pvBdExRjkGQ?=
 =?us-ascii?Q?B6mr/OQF+I5uMiX+WzQ34WzCv5b/ntjsCt20ouGRkTIa5H3kpNDty8WZ+2we?=
 =?us-ascii?Q?2TOViOfB/cNKsCg0pz4jY/X/M0YMTWHV/idj5DW0wyNZg/TIVxTWuDSkovzD?=
 =?us-ascii?Q?czPIgmve4lbeOGvRfSsCi3KrrMc3yTXhu3iFjtH2NE1HmCFxHVI5CdOtW6jG?=
 =?us-ascii?Q?Ykoh0TDCw+uXF2PxZoEkIJngQNeZ+EjQLQmhMzjziGwESOQ6HpNa7xw0oWG2?=
 =?us-ascii?Q?N91qNaejtttyt/RdGtQLV+k0USzDba13WDSkVU+QyJf7LDcv2vc/iXVETRwL?=
 =?us-ascii?Q?ywNc/SEQXW2p8FmFZwPtDkDZnKDd2PoJSe8knd2MYx/o5WfcjTDAxU+0qAdZ?=
 =?us-ascii?Q?8zpUz53MyUxDZvOY19gtgvg=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6685045-e07d-4d1f-e118-08dbd67c4588
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2023 23:35:43.5388
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /HubaF6YvBVVZIeaNDbG7IhG8M8ztw6JKp0T5LaEBJg8VD6jopNIbBNwRvnclZYr4ivTKKmQPqb2VQJ0ac2xbBv+glF12PfcG3yrcytJ02GfwbjbcqlgRNoNZeJfGjVI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB6200


Hi Rob

> We have 2 different meanings for channel-map-index here. We have the 
> codecs defining "I am index N" and then the CPUs defining "I'm connected 
> to codec N". That's confusing to start with. Made-up indices are 
> something we try to avoid in DT. Are the numbers here (0, 1, 2) 
> significant? The normal way we link from one node to another is 
> phandles. Why not use phandles here:
> 
> CPUA   { ... .channel-map-index = <&CodecA>;   }
> CPUB   { ... .channel-map-index = <&CodecB &CodecC>; }
> 
> 
> However, we also have OF graph to define complex topologies/connections 
> AND we're already using it for this binding. So why not here? You can 
> always have more than 1 port and/or endpoint. Generally, multiple ports 
> are independent/simultaneous data connections and multiple endpoints are 
> either 1:N fanout or N:1 muxed connections.

Hmm... I will re-consider about it.

Thank you for your help !!

Best regards
---
Kuninori Morimoto

