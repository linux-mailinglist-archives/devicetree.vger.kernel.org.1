Return-Path: <devicetree+bounces-65661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E2F8BF72E
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 09:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B8C61C22822
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 07:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361092BD00;
	Wed,  8 May 2024 07:38:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2138.outbound.protection.partner.outlook.cn [139.219.146.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45073B798;
	Wed,  8 May 2024 07:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715153915; cv=fail; b=hRK8Aql/KJ4eMrbVaEJsXespIUW5ELGqz676jOmY1ig/HrIBKfpUFsX719KmtM4Ul3kbnEUjnYFo3k4MfASTdWu+ANk92r/SWleiijKPQWybaRBW2vOxChbpQxDBh0IKmk7p+6RrBnjWlwJ1D/AlYbSatq/i+IKZBa+P+Yzm5WA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715153915; c=relaxed/simple;
	bh=Gu0CI08elGj0ImgAkfj91Xam8JKIeFrGOVF7drRLhs0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BaNsdaJhINvVZz1cFq8rVzKklGdUUURvDlUT7SveeLF7oPDTto6NnwMKciHNrH1iM0lXBu5G/vuoEKiP8zJEJJ2UW/7dkm+TI/DJQT3/AUFC5MfPADQaNbot0w7KEfjN52WjoqYlc3ea2F4C1tk8l4b1ajocxqWCqFtbKeuzVTk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nnpEgwkQy8lKqh0lSx4aoxJQwVnUxkuSEwE0XxvlXqa8i/hTrZccNFnO141LnF/KRmYEB0Zil/Ar19hDz2Ll+olcN3zEv2L0dFdH1IurlemPbLq+FDozerVCmTwKphmyJWf9Te4lOFw2vvhIZwO4/Ia7IvXW7eICxjMoMt1ITvM1xPaR3FJluMMAneKaKmOnmdugqko8Zk9+9E6xu2EfbPcXnIiIrXwjHXyMnoXrn7B39CRsGRHH9vqwi0R5lNXmi6ebuFHxKvzQ/SvFpX50Ibee3z1j4G4ZCAlrub/auV+urYTChjUCLT0xmGgFkThFJmOAq7Y+xkI51ybT8BXBTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QrTJrhwncdjERrb7Sj+9vU3YqE+Od88PV0ZY1Uazd6Q=;
 b=HRlEnLXYAtP4v/qcxuZNxkT1k19/1540jQuvCHW6sLifvXizh4QRvrY6VjUIA66SMV9JRMHp8G42WQ02EhaFWsa9Gmo8UQcNaEcC7E189cfQv9MSPRDpzQNhgVQ0pjAdSeh7SEHr2CAL30/EgMH6KRQ1oNdeNU7RLW4+OB1FHYr8sLemuXJXqaG+9NWTdlVBoYUV6nW2S3/iOT9fir3CD1Ni+FT8FuM/KCugLUr+K4O7qEzkyWHOkLvE1EtNh1NLHBMLSoMOaGbGsQePXhSJUlmQ5iGJ88WEaUCzbuz5elDnVVtwuFVy9ekCMzuaUjbRj2FGkJXRgwupzlFVUjolrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::10) by NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.43; Wed, 8 May
 2024 07:04:15 +0000
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 ([fe80::e903:99a6:10b7:304d]) by
 NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn ([fe80::e903:99a6:10b7:304d%6])
 with mapi id 15.20.7472.044; Wed, 8 May 2024 07:04:15 +0000
From: Xingyu Wu <xingyu.wu@starfivetech.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Claudiu Beznea <Claudiu.Beznea@microchip.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Cc: Xingyu Wu <xingyu.wu@starfivetech.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org
Subject: [PATCH v3 1/2] ASoC: dt-bindings: Add bindings for Cadence I2S-MC controller
Date: Wed,  8 May 2024 15:04:05 +0800
Message-Id: <20240508070406.286159-2-xingyu.wu@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240508070406.286159-1-xingyu.wu@starfivetech.com>
References: <20240508070406.286159-1-xingyu.wu@starfivetech.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BJSPR01CA0003.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:c::15) To NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NTZPR01MB0956:EE_|NTZPR01MB1050:EE_
X-MS-Office365-Filtering-Correlation-Id: 68868c55-acb7-4114-5930-08dc6f2d1258
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	rLrFxrfHBbvdH/TPJm7jKS7QlT8Yb4DdOnEGkjrMenCwGx4cDb7aA6qMe4mJgeJdTtTKyCd5eZ36l5MHVpipHgFrGCuEpHWviu5EnhikAi3imiNXK0nj1bpyeyhUuVuTuGR53lgIbL1P6Ai1p9CbXbWZ7tUUMSG1zn8XhOod3VRdPbtgpNsrtRfyp2Vf5iHTxb7PFHLCMYPHVUekVdZVLwmQcHNY4Ci2cqjDbXRYaRsDxaxcgKGk07jjWIGkEOd6TeVVPR0lgzJSlwnUV6NeQKMcuqQjj3uYvnSI8cPaWe3poloqjjOfgRtUhLn/3MxADvWP+CKxAYQOVxDxgS0/+QfINkQhFtPto0LpVFzuJF9bP8zHgXC/xwQvhNDX5xvgZin4k7HJSSZsgUPEgkTcd0CanPaHZRJfbdoaFOp+Bdv2xfXVF/GcrJIHYph3gjvpuyd4x2EPp8LFMzXS8P4gbOM+6J18LE3evrbYLFxYKbSDaZwTZ4hYlWYeb5yFv5xv9+SHLXYIxly6WRx4fcS9E6BuNRsQ40aBc77Zl23iNxsuNn0fPV1N7cG4Kqbox8Wz2t9F6OErqUQwZdk1YCd0J2FkpYnPdgMalQpxlTJf2eyXS0swJpQcjkhLeEtEh68F
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(52116005)(41320700004)(366007)(7416005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Bjzmyas6rdWELXnz+bpxhGjuO5ugXTmkf9BpI1PenHwpC7mp2hOAiQUkupHE?=
 =?us-ascii?Q?FPbW/PM96COq1AeY3cQnUuy4AjsIX0QgGr5tFkFp9b4Dh1pvbkDGklv+2wSu?=
 =?us-ascii?Q?QD7R8eU94XMgpGCAO1+glxj6Nsqxz26cXP3JQpQwsKZZTfHa8mqOwme6+gA+?=
 =?us-ascii?Q?snlby+BAeA0Ipwn2ZERO69GkR+OHxr++8+l+X7tNsiJwx213wptofZmHul94?=
 =?us-ascii?Q?KVcoKMVetaA2PGj8h2RS/x36uSYk486sb7vAHC6A7b4gOv9ycbM8Vno52L1L?=
 =?us-ascii?Q?PL/7ME2ZGnQJQxA7zzDM5NRnZXkszAgDz1mM9rtYRwJV1TAUvbBAJ9ZkrXLB?=
 =?us-ascii?Q?7CjTQdhgdpdtY1g18mXJi1TVmSjFTd9Z4BRtMh2SuU7OwU8nc10NEO5VCMOJ?=
 =?us-ascii?Q?tY3Qj4j1sLQ7EFFdwOY5wp5KdFFNThCuOKVZBcqKQHEvStrRghqR3g7kNGsv?=
 =?us-ascii?Q?jEGvkIEFpTLhUsatou29BOkkLOFnVXYbPV4MdJZdHJQq9qKpXA69SGyMskX8?=
 =?us-ascii?Q?2OhidnRsoZ5ABtukluD3Bm1EmYZiNJFsUOt9TGr/lOxuDi4++Ru+5Zy+XaM0?=
 =?us-ascii?Q?mNtinomX/NnQmDgOoov3DHCn8Mmh6UmiqaYM7kVWhHQ3ssLpZlL+4fjDr4pw?=
 =?us-ascii?Q?yupyzTEo8K4kAsxeo1B5baMnHgCL1H554IgXmYjBrYReboQ2P2+lZBL5q3tk?=
 =?us-ascii?Q?EaibEYuhcYiJSgp/b7bop4T988rp5L64HV8CI5xi7KcPp81fQOYW/x6cxnBY?=
 =?us-ascii?Q?ytvl2lXicpPnscDPuHMcmKpOyOQ1sjDn5m2GFmfqv8fB5RZE/WW3Gs7VtuIy?=
 =?us-ascii?Q?TN1HWjPIHW9SXKP97107yEOEqdViAs9bbkKTpQ5dPc+ZaptXKCNdGaftkPQO?=
 =?us-ascii?Q?eDeyZrIi9TEqWG3v0HwleCnBmxYfkyEBv1SsYOVuLkTqFwIqG4YRVXMfbw9+?=
 =?us-ascii?Q?ycqf2mQ7NQg5g8owVBbYNEIifPnfyLPZyuli82/F+CqoUdfeXxFyg6QCxLcG?=
 =?us-ascii?Q?fI54/BFcc8+/eOAq79N9y5kH+ubXTFvatfDgzMhoNrBZtiYaCX57cpZC5HfP?=
 =?us-ascii?Q?fI6Qn1qL6En0QoXaOpkT/kBGVE2nTWDhkZr9o8wykK7iR7O5MHfGA1nGaY7U?=
 =?us-ascii?Q?7K5FIbUjC7Rl/uZfBXtvsVPVmiJUOjOIMz8Jorr2h/6B6TpSoxz+LkYyuSAx?=
 =?us-ascii?Q?+z1FnO2VIxAkdws46hx+lwkUuq0yJ4bZSpUHW+mocPJdPoLy2PM4NmFRq4cn?=
 =?us-ascii?Q?9HOsuSDU+TPi8G+Nbi0OBNiJjQe24j8/z2jNXBcEITJPKIDhYIhTBkwaH1M6?=
 =?us-ascii?Q?0xbICFfu176cbbkCYmzP1zEhxcpnsmg8Q7AT3WC8XjuLA3hU+dOklSegi+Lr?=
 =?us-ascii?Q?LKnuSSnezNPEYtgBXNpIQunbgnLdhBDQ0ZfI+tR6xsFggj94u47ITi4gJ9qp?=
 =?us-ascii?Q?5UnX0iMi9YDSeeWVk9yNNrugrv5pisgSUC6YgHzvZ/FdNGHc+0f4Tl3seIrn?=
 =?us-ascii?Q?btlEZx6Qz3bx3mF1c+LVy2Wo7uOjuIcKlwEh5w5pRLPHyc3AwCVsgj9ZB0UI?=
 =?us-ascii?Q?VYYBH79y+ayau1MfIAS39+dCvZPtS2Oyem8rRP99eFYxkdmonxTRJpNpwwMH?=
 =?us-ascii?Q?Uw=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68868c55-acb7-4114-5930-08dc6f2d1258
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 07:04:15.3057
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gIJEPzTj8L2k0WkQfQk4dxGxt/NFJ3afMwGJLFKha2wCe0vQOwGAvXkGTgVNV7ZbdInPiDNboQSGkzqradBWkKT+C7eIG8uCU27Us7k7viI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1050

Add bindings for the Multi-Channel I2S controller of Cadence.

The Multi-Channel I2S (I2S-MC) implements a function of the
8-channel I2S bus interfasce. Each channel can become receiver
or transmitter. Four I2S instances are used on the StarFive
JH8100 SoC. One instance of them is limited to 2 channels, two
instance are limited to 4 channels, and the other one can use
most 8 channels. Add a unique property about
'starfive,i2s-max-channels' to distinguish each instance.

Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
---
 .../bindings/sound/cdns,i2s-mc.yaml           | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/cdns,i2s-mc.yaml

diff --git a/Documentation/devicetree/bindings/sound/cdns,i2s-mc.yaml b/Documentation/devicetree/bindings/sound/cdns,i2s-mc.yaml
new file mode 100644
index 000000000000..94ebce7fd5e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/cdns,i2s-mc.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/cdns,i2s-mc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence multi-channel I2S controller
+
+description:
+  The Cadence I2S Controller implements a function of the multi-channel
+  (up to 8-channel) bus. It combines functions of a transmitter and a receiver.
+
+maintainers:
+  - Xingyu Wu <xingyu.wu@starfivetech.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - starfive,jh8100-i2s
+      - const: cdns,i2s-mc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bit clock
+      - description: Main ICG clock
+      - description: Inner master clock
+
+  clock-names:
+    items:
+      - const: bclk
+      - const: icg
+      - const: mclk_inner
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+      - description: RX DMA Channel
+    minItems: 1
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+    minItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  starfive,i2s-max-channels:
+    description:
+      Number of I2S max stereo channels supported on the StarFive
+      JH8100 SoC.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [2, 4, 8]
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: starfive,jh8100-i2s
+    then:
+      required:
+        - starfive,i2s-max-channels
+    else:
+      properties:
+        starfive,i2s-max-channels: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - dmas
+  - dma-names
+  - interrupts
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2s@122b0000 {
+      compatible = "starfive,jh8100-i2s", "cdns,i2s-mc";
+      reg = <0x122b0000 0x1000>;
+      clocks = <&syscrg_ne 133>,
+               <&syscrg_ne 170>,
+               <&syscrg 50>;
+      clock-names = "bclk", "icg",
+                    "mclk_inner";
+      resets = <&syscrg_ne 43>;
+      dmas = <&dma 7>, <&dma 6>;
+      dma-names = "tx", "rx";
+      interrupts = <59>;
+      #sound-dai-cells = <0>;
+      starfive,i2s-max-channels = <4>;
+    };
-- 
2.25.1


