Return-Path: <devicetree+bounces-66576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 625648C3C47
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 09:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 854431C210BC
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 07:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F331E146D5C;
	Mon, 13 May 2024 07:46:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2102.outbound.protection.partner.outlook.cn [139.219.17.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C439146A9D;
	Mon, 13 May 2024 07:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715586393; cv=fail; b=XFM2qzXUobDPLUIhCnaWNyhSiiyJ86+4EXL1nOyLswOZD3oQcDHq8rYJDFc0gJxXwVGnkvzLnnwo0qD+yNmOl/DSxZUKEzm7Dl3E8phhB5r1XdSY+qayivJK8cnVecWWOl/8UXBTVs0vn8wBZSQSctg6LIKoV0usLJwt7+7S9fI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715586393; c=relaxed/simple;
	bh=YwVo/j5oEis0leZTgibuisB0AhAszqBm0vy4AE2Dqcw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=heV7xo1ek0VoHJcEVOl+AVlMaMH8UpM26yI3bqNOmhtZl0GQnZqH3jsgP8LmPUrnwjyXf4prMpSfFaEtruyvXugCPeaUQuFdFIWaJo00/79p+MWtUQv3hSwwF560YRiyZKY94rgKLoYtL0e3M8lUbENUQal9DApjTyxkocfQUvU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwJQD4DFxDJ8p2Jn+C7tcu/QhWmbAUUqH4Y/nkQqVwXE9ul/bZnxu4t3D2/TspgvLA3T15QJSe8/R+vmRNPqub5nHCa31KV9m9c2o0ouSNwnPUtrIIg2VsXcAPOVotRT/RvlRVHiNopByv+CR35qLdFDNnDvATyGjK1DvXYwkd9S4CzpPRE5ZGgVmw5Y0PZbt8Fjj0tQnnI7xx5JA02/i7bYxLrBjqYHkPzl6+an2TQqVC80qkn1HamXJAd7tl88Mm5tdZeu7m8NIrdrMVj+oa8+douyhXWgym4p1be62u62mhQ4gcUEi/cRKi2WcOIFtzwV8H2cYOCqXakNGH066Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CsItaiRtcDrr5m+mPBBE6xQE7X2FghlT3x++laDxxQ=;
 b=XTQal/iRHoJB9oFPn5BWVzgBFJSbc18tGblzczmeKnpDTtysUhQo/ovvrwOzk8WeaHV+F+wfR+3NdmxerNAh/LX/ecvxtI85TEavZzxHI32+i9MOHC8AeQ9VZe17gLYuDMcq/MKvNWbI25ET5nXOZoMR5zmUvxvtd6QSfyFsDK2PmrIA+fcnTsvG+7aVol0IQaa4NUPMTtIJVga6uycTB3zrT1kx9nPkDZkoeK+Qs3G0qDZhj3wq2RmjEPMZI3XUzflMSe7+97e4KXIPx66/x7PbUM7oIaBrEAk05LLM3uKxArJNDNWVf27yHfHxgc5T6MZr7hWDhCqswS/+upiBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::6) by NT0PR01MB0990.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:7::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Mon, 13 May
 2024 07:46:16 +0000
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 ([fe80::2bb1:5ec6:5260:17bd]) by
 NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn ([fe80::2bb1:5ec6:5260:17bd%6])
 with mapi id 15.20.7472.042; Mon, 13 May 2024 07:46:16 +0000
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	aford173@gmail.com,
	agx@sigxcpu.org,
	rdunlap@infradead.org,
	u.kleine-koenig@pengutronix.de,
	sam@ravnborg.org,
	steven.price@arm.com,
	bbrezillon@kernel.org,
	changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com,
	shengyang.chen@starfivetech.com,
	jack.zhu@starfivetech.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: cdns: Add display bridge support for dsi on StarFive JH7110 SoC
Date: Mon, 13 May 2024 15:46:06 +0800
Message-Id: <20240513074607.28271-2-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240513074607.28271-1-shengyang.chen@starfivetech.com>
References: <20240513074607.28271-1-shengyang.chen@starfivetech.com>
Content-Type: text/plain
X-ClientProxiedBy: SHXPR01CA0005.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:1b::14) To NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NT0PR01MB1070:EE_|NT0PR01MB0990:EE_
X-MS-Office365-Filtering-Correlation-Id: 94eb49d0-f322-4c54-1c42-08dc7320c4dc
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	ITxxBpqiiHesnhODYZltn6Ck6C9th33zE4rCyEAogwclGNxXtxWWf1dXRURlb9crB5HbwlN0TsGAo3m9xWDI+QjXc65JtQuJ/hxTdyuYEqWzmqcbaMQPh1idclv101ckVvP724lMHz+D3JJaIGr02X1jj5WB0T1RQBrxCzYdcYnV2amwzzwLr/xAYYeaEy8Gno6hiAzOfOuAalDEXEe/hOgZauDnmzH1r0pYUdrj1yiiOLtU5ERNqs6lDfy41oGthQH0S6EvTea4bbd2ER3m/hKOVXzyguwXjMNFlpSzTyJtP8JewJZefs0FjsP7VTfrnmLd41e/PmmBuXfWVrQsnIjdPAQci7RxhqDgEVnsNlMirILVkbm6xqW/nM2EbAXznztEhocZZVtEDEYzsEexHHx2sjuWnVf8C9oriGN/FD2eYd2L3CcbMd7T59KQqnAKs3qJJyaFkufSKMt+bDazokVl0N8ZZ6KNQGet+rTzP2qxGIBooATaNcjBWxXlxwz59b3dHXLASOm3Alb9TfREit5R2UJg8zcydjlx2BiTGTm+oFq07kmkm25aGwfB1lHvCOSPjciFNzc14YdX1j2donkP0N+9reD2maHMWsr9fgiE3XhV2t2tX1V3ZxYJtUu7
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(41320700004)(7416005)(52116005)(366007)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?k+r2KRJIEFbcqbHSZyMSUsaM3nBoJvbejnLMJHNPjgO7RfquVmAJH6ilhMd8?=
 =?us-ascii?Q?Nqys2jQ1pJKuqvGKoXfJroyLhXgQJTycE6FKxjn0lMHdooo2idVqIjN1dZf9?=
 =?us-ascii?Q?fR+IfQEg1YPTBaVHv6lpH5qH943Aem+nm97SI8f0ZVT/D45wDnhRXYjutTXA?=
 =?us-ascii?Q?NuQu7ruUm99xYOjyqCh5SfXoLHWlMI491fzFn9zfOiBWeBRvK7xvhttklTSq?=
 =?us-ascii?Q?SpDXJ2Xo3JhJbnKS9pjvgeguRx2xn+bQpnJbQqeE2HyIWbOA68A6P6+xSwoX?=
 =?us-ascii?Q?ZArOfBix0VpG1af22gZWrfkllNMkOyzDfgiJZcAXqLnXg3ow7edW1sSWpWCS?=
 =?us-ascii?Q?Ot8hadYaq0cmx9K/sYt03nfuWc7kWoDS5Dxdm3Eb4EJ+KZZFE5MXDUcE0X8a?=
 =?us-ascii?Q?JEkOLVPTAN0DiU+VjxCF1+d+dD3WUY0U7kn3tnPScjdGZcvS2CLqKYwmt/sl?=
 =?us-ascii?Q?8SmDLgOyfkcTe31Zpr6VHuzvMrf5hiOAS92xSjPOpc9dQl9zNlbcd1AvBhaw?=
 =?us-ascii?Q?5mH84LjAKuMU1h8okGtSek5q5YpTBQPOnykX4/oYZ9PAj2v8uKn4tc1fxVuk?=
 =?us-ascii?Q?O0Rg4RXtADeEe4jF2fC3jRV5z6xWcMo5xt4aAnagyr1/wYVSDUroO6UCR+EJ?=
 =?us-ascii?Q?5dEH8lYVulL4u6U+1pm1wVjgno7K105VcA3jFvALNRmEpfPoGrURWWk+ftF1?=
 =?us-ascii?Q?OuM4Ux7FxbR+w9FrOykRWOPzN5KWiUYQG9OyIuQmDcZ2Fr4/0fzY79jOHW99?=
 =?us-ascii?Q?AuG3ieJrKX0Bg9h2DdzRl0YkgMPahViJwf+v7yHmCT2kgMzG3K8+2au1NVFb?=
 =?us-ascii?Q?jSFd2ftpiYcLdArXZqLCF4/8kPksA/GHR1WCyS+WYnkWA3AIkW3Nxbc4/mGv?=
 =?us-ascii?Q?vV5MR1Cm5OSIWPHBCC1bUCzBgIkeGkB7pLcSol4k9axmBS0RtO93zSicVTL5?=
 =?us-ascii?Q?zzbslN/N0DYxikmHAKzz5zcq2oIIxSIj5wIc0us2Bggbnj1q+eU55Dp71RFg?=
 =?us-ascii?Q?vgTi7MxTHnx7HX36ZTubwqR+9XlyYu47WNKGCdvnVGJgkB9NnTuWRqFOEgNv?=
 =?us-ascii?Q?QRYJ9gAKf9ABZ5MqXl6NR0ku44bL5GJw0p4vBu7gF9oU10FoYAp6bgAW+7iK?=
 =?us-ascii?Q?XcqIMNmcSNdpV5yYJUb0N9Ze3s61+/ZTEJ726/rLcQeRooE4QIAtTjOmvidu?=
 =?us-ascii?Q?/CoNKQE1KNkMDRwbt0HQeRkuhqcQmbhvnscXQ8OGw5r9vyk8nJ7dPVaUPRCL?=
 =?us-ascii?Q?VUKpd+7fOYkT0dEjkbbKqryTGETtPGsYoCZDEC25QV4ODBrT0p6kzz31Qe1o?=
 =?us-ascii?Q?OafLW4fHPvnvmRgEutknpWOTY4h1Y1geNQMVw3P+fI1kKRKjFO4Cp2qAAZC6?=
 =?us-ascii?Q?7qseKe50qcoEdc7yUwWTOORfMsYucEqWwSyu4GvvHiXxx/UQhI9y6V1MqTJx?=
 =?us-ascii?Q?R2lm1cUmuWcOppOSFhW5YRlcyiZeVMKWdsDiUsZB38Uwl1vr8/wJGyOiE9G/?=
 =?us-ascii?Q?MIDPQsR4p3ch/al2rs6QWLqjbc0f/+m+kRpUel3eKANBceGmCMFe/N3DXRHq?=
 =?us-ascii?Q?njabgwTXGrhUJFJEYMNRnF7DrVgORIQTBu2SQdK3mQXsPeskRuK/UNDFu2ai?=
 =?us-ascii?Q?6A=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94eb49d0-f322-4c54-1c42-08dc7320c4dc
X-MS-Exchange-CrossTenant-AuthSource: NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2024 07:46:16.0613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IYIR9K0HcCvRCTuZXiTFB9Ga2naE/D70OgHS5/A7a7qlrqSYQblbuyxRBTlPLF4B7eBpnFhFfJczp1cxGxBatXs7pWCD04FgyDAIwwnuo6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NT0PR01MB0990

From: Keith Zhao <keith.zhao@starfivetech.com>

Add compatible to support dsi bridge on StarFive JH7110 SoC

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/display/bridge/cdns,dsi.yaml     | 56 ++++++++++++++++++-
 1 file changed, 54 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
index 23060324d16e..4ad0ecaacaae 100644
--- a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - cdns,dsi
+      - starfive,jh7110-dsi
       - ti,j721e-dsi
 
   reg:
@@ -27,14 +28,20 @@ properties:
           Register block for wrapper settings registers in case of TI J7 SoCs.
 
   clocks:
+    minItems: 2
     items:
       - description: PSM clock, used by the IP
       - description: sys clock, used by the IP
+      - description: dpi clock, used by the IP
+      - description: txesc clock, used by the IP
 
   clock-names:
+    minItems: 2
     items:
       - const: dsi_p_clk
       - const: dsi_sys_clk
+      - const: dpi
+      - const: txesc
 
   phys:
     maxItems: 1
@@ -46,10 +53,22 @@ properties:
     maxItems: 1
 
   resets:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: apb reset, associated to dsi_p_clk
+      - description: sys reset, associated to sys clock
+      - description: dpi reset, associated to dpi clock
+      - description: txesc reset, associated to txesc clock
+      - description: txbytehs reset, associated to txbytehs clock
 
   reset-names:
-    const: dsi_p_rst
+    minItems: 1
+    items:
+      - const: dsi_p_rst
+      - const: sys
+      - const: dpi
+      - const: txesc
+      - const: txbytehs
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -90,6 +109,39 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: starfive,jh7110-dsi
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          minItems: 4
+          maxItems: 4
+        resets:
+          minItems: 5
+          maxItems: 5
+        reset-names:
+          minItems: 5
+          maxItems: 5
+      required:
+        - resets
+        - reset-names
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.17.1


