Return-Path: <devicetree+bounces-10740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1427D299E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFE411C208D3
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF7C538C;
	Mon, 23 Oct 2023 05:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="NLsUzjP7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47356525C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 05:36:14 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2104.outbound.protection.outlook.com [40.107.114.104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 863AED5D
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 22:36:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cb2luZm5HEKydVCAVnw4YJmgn2xGsqmQvLGRUJ/2P/ujRlmyxKPzxqE6WamSz/ZBHdvofTQ/Lso1luUtg0hVsaNHMUavByyraQb24XZbL+9yyuS93FMYUR/fQTysKeMuDyzELOiVN6OEAwSHZqyUWzyIj52dCRm/Pex1MGOYiX7cxu0YSCVCoU1lcqOm1UAohI+cDlPSgMu6LymIr1iRSGFdjCjJhL//dg8zLP8zXZszMkeyAkbPgRKYHdg9ldIRzbZ8urt2UiCjdovMX+/S8V8vNZ6JshgMOX6JKKKr3CmDkvYMWXmKhmyBG1DAQ+mYa04gA8meMTcp/l78g4W9mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7HkjvLzCY4gqiQ2ULQ4uyZBhbxamAK86Y0cFHe1aKZ8=;
 b=OeREfVHQwuURo+fdupgoKQKjW6eS8A94QAMt38qnl0RKR7eH1ahTeSoeJCQJ2aFAop/lXgNAAnMAlLOqf/R+svxotn9bfSdCTtnUh81PN88ib/+xLWrsfr2eYCsHlJMSqsm5dNXi7x1V85655D7ioDNYBDbv9TSTp2fYs/CGyqKnEGhTB5bDYPDg4pRwoLiJGDs4E0Dk9Oy64z4VbT8GauRJcAafOwA8fE7zEBPthj7MKGOwkbSNmXxPzPar5/tX0RqZGQBjLh+OKBGFwIXnXbdjpTumPYqFurA3uIKatcvMKa7Kdx6oCtGp/O12w6DT4n6RueVvGN7nSQAfOUguMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HkjvLzCY4gqiQ2ULQ4uyZBhbxamAK86Y0cFHe1aKZ8=;
 b=NLsUzjP7zubLwtD7HxcZ7+SJnBs+/xjItutYmjLq3HN7O+r5E2GS8Fc3+fHm407GEqBz6ZiE2W/89BkfhpGggfte/NkTtaYdOIQrIqn8Kaf26Yu95ZKOdEDNHm2AMePdnKQ4GHQhsytFlJYVJI+ej/YpBgH2H1zanLKMPQq9qyI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB8242.jpnprd01.prod.outlook.com (2603:1096:604:174::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Mon, 23 Oct
 2023 05:36:09 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::be8:b648:c989:8e7f]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::be8:b648:c989:8e7f%4]) with mapi id 15.20.6907.032; Mon, 23 Oct 2023
 05:36:09 +0000
Message-ID: <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx property
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
In-Reply-To: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 23 Oct 2023 05:36:09 +0000
X-ClientProxiedBy: TYAPR01CA0026.jpnprd01.prod.outlook.com
 (2603:1096:404:28::14) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB8242:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fd0cdfe-a982-4611-0de8-08dbd389f5e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	0eDJP/ETAS3sBxSHmHtAD8XPvYEVn6BlLC/5LsOBqU+DtCqTGQ7LXQb63EKzITsZ7bUwM4gpo3VDZI2BmckC85yht107mN5HdtYMjesl/KnukzyCLqpn8Xba7esLLKgyXwBLF4UwBuQ9rWUsEHnSv1mBMzE29T+buA+9F5O3JftGqnIsLGTU19+Tn9Ga5wuvPdwSLkcoVetnv9ea6gd/JxRA/clQGO96HygcA/6tzQXOksWreQCCZfPY4TJz0MV6ukU6LFX5CHwzJTUHWsq5YFjtP8w8HFNwVYfvTuqvzb+/E0sQcyMsN1nOtYTzApMsYtkDvrIJWKJTu3QyB8qtoohE1O9AOd08VTGo298yo2Y4WpLp+xYBA92GI80AWf1slGBhvzzb/MQP2DxGGsFdSYc9UY2sGVtGm2vMidr92ak8V6gShBU1BLhJ91vrToSIVSD8mDXK77TIU3B3aXpxDepYHp+NlVTCJE1B3DVZsRfQeptsmHQGDtDy4lSWIb9UKD20AA3z7YMNGqiGw1xN1lidgKv1g/RMYcycUZ16LXsY1Tnneh+AQF81lFFFjPskaGjSf8E62BNdziIcAI7Mr/g9JrL34HQdf/0FG/puRysRu8jNySArSOm1ITwUK5b6b2mriS+UwhqzNnL8b93I/w==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(396003)(346002)(39860400002)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(38350700005)(36756003)(38100700002)(66476007)(66946007)(66556008)(2013699003)(110136005)(6512007)(86362001)(2616005)(26005)(52116002)(83380400001)(6506007)(2906002)(6486002)(7416002)(316002)(478600001)(8676002)(41300700001)(8936002)(4326008)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?8Ii20NwlTDLVw/HEimMVWil85gKyMjOwTvqjfSQrqLdBbc0dti+LHlmESkyQ?=
 =?us-ascii?Q?O2XCAzqy9ShzIVQZbVBpSl6gZAq6B97V7YTtIKyIpBoZUZGDZzvKyUyKqeCK?=
 =?us-ascii?Q?VjuKvNQVGZ8QchokVJw6HFuUK37xmzT1CDsul38pMKBa5NIE0vwyMTaCUmvM?=
 =?us-ascii?Q?Fz6xS5I/O4KJxckRELPrn2pnc3AiRYl2S82hYas/R3buY8msyCmdpiQPaTK4?=
 =?us-ascii?Q?fL+Y3yITrLlk03ADH2SemkomgqJHVFY3883LMIJ7I5IrAPK+84i7q5W+XH7Q?=
 =?us-ascii?Q?c9P+wh1yyMGvG8e5BJ1tF6TLGNLol6zENI6vSHXSa8WP15bzQiNILJpNV3ab?=
 =?us-ascii?Q?ujva1/XL/DSi/DIuYlNPI0L40sej71whqsIu60Wum3ejBBIJC286HjiVWK0w?=
 =?us-ascii?Q?4d6nZu2OjoTosO8CT9GWoV/j7yyGuCTWQWrYSx6SKc5UzLBUU6EPeuyCf9b0?=
 =?us-ascii?Q?REasI0IyDAnMNAbkCmnlI2eOuFELg0S40de0TisM9mDS9CXsjkBzQRdMqnPW?=
 =?us-ascii?Q?hnOyEsmQxcoBpTHoqjxiIqibUCqeRUfNHvEoZUqh8u80ogiQNDimUsLf85e0?=
 =?us-ascii?Q?25dzVif8dA+sntnYOd9t45PmaWfUc5izYQSA0NnIiFZY+stR7OBLg/nwaBz/?=
 =?us-ascii?Q?Wf7/0xgHEw6jZAynAMMak5J3RiJ4uT8rJs+lyc5qEzm30FzbTD0jB6vtCY9a?=
 =?us-ascii?Q?+GJF2LLSFGNpyGFBANlYjIiIJXJ4ImEzU4YCWcYbSuN6hFUtkVMPo8F1TNqz?=
 =?us-ascii?Q?EJ4V0Aol0cg2DQFjCYiTt2B93j1dmD+ViMN1apzIuH7rMgYGhMnaNH/gxAET?=
 =?us-ascii?Q?QNG/pSwBGmL9813/8DZooIIb46ebGZoyV4x0g90Ud5YGPAKPha2uQWcLbVeP?=
 =?us-ascii?Q?CRmd/3PvU3w40a4eXmkdLo4sEwQOedVPdWhuAv8XJuYE0IzJxWzgh5UC/ekm?=
 =?us-ascii?Q?HwGCxxQu9sU2kOoaF0VcVOAyr56WZlydV8JqKc4RPLZsugM9a/NA6zObEPbx?=
 =?us-ascii?Q?I29j8O6+MiTnV91abUBv/zx2vd5LzumJM7dY+LAUmVk4iDU4uR9VwlH4HyMm?=
 =?us-ascii?Q?fjhL3g/Iq6fGrMPs+eINj3ByW0bcirjX2WcX+3XmqIL99COgYnzZqSd5L3Wj?=
 =?us-ascii?Q?wH4wvjysactygLb4Hz4DKttNGs4nwF5JteJmYsuwWH979nUZqFuFnEemVn0O?=
 =?us-ascii?Q?WZ40RkK2FbegJgbd+vQYVpvpFf97z85q053FA1W4QbB4w00ANd+23kkxHroV?=
 =?us-ascii?Q?haFAeWNomi4ak/8oCZFUQljT0LdhcNiOh2YCFQb1HUUFb7b4M2VC+9CajwB8?=
 =?us-ascii?Q?AtsKtKvtqsuCFMucQcWJOFCzSV8qTKHh4VGiLNDOGh/fiVo3bJLfL5yGlxu4?=
 =?us-ascii?Q?Aus3/kSU0QVv9hf1UnDkiOPGCPqadS7MYr3zjI0+XJYBiIT5/+QfOkHmDD4s?=
 =?us-ascii?Q?hIrz8++elimysIkpb/nPZnue62oU/64lHs6mG9a6Oat14z5RaBSiuaGrx+wG?=
 =?us-ascii?Q?wUHh7orvhjvHPW0jSjpxo/d0k6OoE4OUAPQX607YeCPaHz/lxbWzkQpC/8rg?=
 =?us-ascii?Q?xlPTVKIkgxk+Sd+GfEXbd+iynENh6/rHdpX7ofVVAp/ZZTlJfnrzL1yEySQ0?=
 =?us-ascii?Q?h0ScDVvnvTP6wWOGm4T2uEo=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fd0cdfe-a982-4611-0de8-08dbd389f5e6
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2023 05:36:09.3601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q9cTpNSmK3/qp0IO9R77M98cjH9b5v8kQqUd1GoCyRTh6SdrGS6T4YmgpmJjM1eMFV7CoUqbXCvdGxn+Ip86WndQ5tuN41juAIywM5UImNPqIbbEbsG5ZUDfu/gYWpEw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB8242

This patch adds ch-maps property to enable handling CPU:Codec = N:M
connection.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml        | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 60b5e3fd1115..47f04cdd6670 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -19,7 +19,12 @@ definitions:
     properties:
       mclk-fs:
         $ref: simple-card.yaml#/definitions/mclk-fs
-
+      ch-map-idx:
+        description: It indicates index of ch_maps array for CPU / Codec if number of
+          CPU(N) / Codec(M) DAIs were not same in one dai-link. ch-map-idx is not needed if the
+          numbers were 1:M or N:1 or N=M. see soc.h::[dai_link->ch_maps Image sample] and
+          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dtsi. It is good sample.
+        $ref: /schemas/types.yaml#/definitions/uint32-array
   endpoint-base:
     allOf:
       - $ref: /schemas/graph.yaml#/$defs/endpoint-base
-- 
2.25.1


