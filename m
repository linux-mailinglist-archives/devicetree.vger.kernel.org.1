Return-Path: <devicetree+bounces-119239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B539BDA84
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 01:47:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 945511F2422F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 00:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54ADC13D52B;
	Wed,  6 Nov 2024 00:47:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from PUWP216CU001.outbound.protection.outlook.com (mail-koreasouthazon11020112.outbound.protection.outlook.com [52.101.156.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16BD13A26F;
	Wed,  6 Nov 2024 00:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.156.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730854025; cv=fail; b=WnSJBhZqENrxhx/D5IBDr3eIGaNZsY93XV/84nhcRFbR3URxiYfXdh9yfcCbswqZMTiMlG7TxQHz1sYAIsELHjm8TYLeynI6Yhkp2w69yftM1pmJKHOryecs6ALEhXnPcqJmtTXvvMJf+kL66dUvFzZ2gqA6QtcrEaeKGceVNUY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730854025; c=relaxed/simple;
	bh=WFMDWfOt0EMb/3fsmlfMaqhE5vv9WE6sXUzqAMfZ3zc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UyBGvFiNfbKGPTIf/m1zltHKVqzEwMpkH4QbDZHnQkNDhCgcHofnmGZy/N/6mbBNPvl18s8hggrgEe+5SQne9yhfEe81v+DqoiezneI9Hmqfm4zlM62K9q1ryFo8ttMi44bpQHB4EV3Jox2wH5TpxPs2dy/Lt8HiduUY52SkEPk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=52.101.156.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AUuApikSLeTpRzypyapYWCfXluv4DKwnXauZuYCztUMo+M47Bc5sC0gvwK+oGVOYjXlbNCYPrOu2ipnhhG9cWJBm9wMi0KOZLrWlmKyq6noPpJ8yKfsVChHPqkRE4oogLQNEiIRMPgvHlasROp3WhJEETyEz6ioYVdgb+4kgpgGN3Zy2EymRIozUhYhFQdixQSMPMwyDl1zlCo3fJMOXHJqQntPFB5G1D10gkKLuGEXIYH35xZjTbpkWtzXXpTkWqnpVE12frZZrhUSWpSxL+tHJCN2YNunaC3KHr1O+XBf3SOMuekynN02B8i417EmYyfJhm7QVaO2id44dWkp7zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o8nA7sqPIkQh/pTeKZrft/rO8oquEEI0lZrzPLU278M=;
 b=AtEP+2SFoR8qoJ+OQcl+2bV4jAaVZD0pQ9lV5ulx1vDYuPNaOdlNfgHCoTc+P9jmYZgw2GUIVdJiHLKWordowxQZ88AgtmiBr8KW7fHiUOfGs7orqhAl5j/MKmCFhF/7vpvwk6VXL/kAeP3A2qvGhK7UYkIJNA63LcZio+TcqsQPYK8WbAAjnp6SFFsk4E00yR7pNPHLD0eK1qqCeUt5nf6kEzxlhNRUPiGPpdbJhnfl9xJG5cXSwIRwd93ur5Kv9swxaOa/XoyLk3GQyjWthqTj3xZrBQFS/mD1FhZThSaCspKNyIQbhUtUz1F84+TeTOAmZXLgITOSfoIYCDbs1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE2P216MB1932.KORP216.PROD.OUTLOOK.COM (2603:1096:101:fa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 00:47:00 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%4]) with mapi id 15.20.8114.031; Wed, 6 Nov 2024
 00:47:00 +0000
From: Kiseok Jo <kiseok.jo@irondevice.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>
Cc: alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kiseok Jo <kiseok.jo@irondevice.com>
Subject: [PATCH v4 1/2] This adds the schema binding for the Iron Device SMA1307 Amp
Date: Wed,  6 Nov 2024 09:46:20 +0900
Message-Id: <20241106004621.7069-2-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106004621.7069-1-kiseok.jo@irondevice.com>
References: <20241106004621.7069-1-kiseok.jo@irondevice.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0139.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:1::18) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|SE2P216MB1932:EE_
X-MS-Office365-Filtering-Correlation-Id: 177a9034-0758-4ca9-44d6-08dcfdfc85f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ENZNeC0d3M9YUZuWpaoC5+CfBQKUABFVjG1ykQf+SmMiXUUjVcZx2It7Rpll?=
 =?us-ascii?Q?2mgMQNsMXuejU5Pi7Tz3w8rmhuGatqZ2cbnaROxRTPn/6EryQopaSpVf1AOP?=
 =?us-ascii?Q?ci5lEH2QPxyWSJJJebtkct1w8mh/Sy1ukfpbUWUgoRQo5By0kB11HXBP04dS?=
 =?us-ascii?Q?4n1ZL5CwIy6p+MVvT043FLcmr+wPp1LsMdGBtRAMv8meFnDxWbWsNHf6cGGx?=
 =?us-ascii?Q?A0FK1b4DrQfRPkWTHt82dsooaWiiEOuOOaVcpgFVsI+GSJybOB9oyxoKF8IS?=
 =?us-ascii?Q?oTjRZhqvtsH7+4XXPaRtJ1JJVaWtK+hXuRyhyNoD0cMeRCeXrrO+IAKLFZsk?=
 =?us-ascii?Q?OJvgeuzShXIWAd2iWP3rcaIG3QD05tRMU08sWhR+CZjOrPhGDX0cpE/mvZ1d?=
 =?us-ascii?Q?BxVbfIilJgTuwRa078GbJbMjXi4NQTC2/tgmXfWYY3leymo+q78kERTB6/4U?=
 =?us-ascii?Q?9eCKMWuosflfTGPDVo9v7TUf5mS7WNCHffA+JEZGXF4dB296DwV47MgiTBnz?=
 =?us-ascii?Q?UjsfM0j4LAgnSTw06PzjfeICdHibqdxmdJ2VnxuFFBJsCrvxv5NlorCB7koz?=
 =?us-ascii?Q?J7SQM8JJNj6vfruecYExNNN7NfkII+nNqvSq94QkbaN2Sluw/PzmX8Y976Lp?=
 =?us-ascii?Q?6O94kH/w4S1jBsz2YFnwefUWoChKLmhwVJNz/wv25BqCSXJf2/3QEovuk+zG?=
 =?us-ascii?Q?e9OyHT+MOiSa5IdcLJeSkt3v/07Or6m5ckLGMqaq65TaRp9s6kZt+QnxSbZz?=
 =?us-ascii?Q?Fse/WSSH/y/m8EXIPLwCmJxs0RRuAqdSyExV6mT6DYhWsasWrHOkicpBhrIb?=
 =?us-ascii?Q?PPrcrewxmrzLCJW/taorGKPldBTJOpPvXvwvr8uIN0QwLesf5FGnqvNBFtUE?=
 =?us-ascii?Q?Y6hJXe1amwOuJznzuW1E6eZxzdFD6NPzx5Qh/50j5Ltnc02FzHaCj666M9W/?=
 =?us-ascii?Q?WfrDJ9IGOksx+xCLfzQss3fbYsdliCj9XdYs5qaPztFTRZ5AcR/P+wGZuHLK?=
 =?us-ascii?Q?abzhmMtoA1Jp5jAFHSfICp0sIJcS59a1gfH2tbmZEAx/qHdIz9q8pLBq0WgX?=
 =?us-ascii?Q?BMad9Gf5zYDfDfukBaL5RQyfhKt/gmdjtyVa04VuClgTVNM/HC013WMaMNP9?=
 =?us-ascii?Q?/XzafMJqhdeTtO8jdfBJJGOtlSe/DS7TcEjHhK6KkVTrxiwC4gVI7Od7+lFV?=
 =?us-ascii?Q?3DND/7o/TocPATbuRXFYhciMx1p4GNVqlRZN/YRe+PxjmZOw0V8+GsDYjLEd?=
 =?us-ascii?Q?IUN2ZiBCr59F1c/xnJaV38WgRbydjEbACSYwQrHF6BmJ9IBtBttMVWQiIQPD?=
 =?us-ascii?Q?FotbNsiW4DjR3XxjmTOpwUnE?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Ur2lZGe7gbbGFTNX8h0CnhzmaQhQB/F2Gd4JtptgxgPk0XellArpvbbzL1d3?=
 =?us-ascii?Q?NWLk5SJm86u5O/z30PnHEFU8uvdiB67L6MQavK1elxUEPBlgVwFCy1XgcwZc?=
 =?us-ascii?Q?wpxw9n1/azuKxgUMA/g6Az/gKeuqWMcMN1YOcDuAd6TWSAUQsKizkFrXvH+7?=
 =?us-ascii?Q?1kWoxYYbwk0we6PJMJk3/B9cuqgsfLCxerVDItXVDW7dF97iZirB7xt6kQwm?=
 =?us-ascii?Q?OfS7XgCLRCx6eErIi3sAE1OFdd7G8I6qFUIZlpyWfOAceVezSjk9JD8iyWBq?=
 =?us-ascii?Q?e0s/2bUwCs5CFMvpFGfsKJnXpAtTDpIqIe0pJT2z0fv9aJzcP7wjIcKZXO92?=
 =?us-ascii?Q?Uh7IFSoafa/+vfQ/uSBgPH1ECglG0MNC1mk6Q28khtbgNMqwTa7dPeYvYOHz?=
 =?us-ascii?Q?jsvowmaU3DOooeqf4yUOe1TtIve2tSGmjYMfJBe+d4G/UtZCCCiHTNvWiaI2?=
 =?us-ascii?Q?d7OpwOzef8QDSFYTE905rcoCrjV7K4yZdM8+ctO9UFi5r+8mmz6fZw8CJ7fk?=
 =?us-ascii?Q?kCtG8wT8qq1jIjQE/lrdXCzK5zCIEtqkO5tbt1onGkbQ9gHh/noAuwCBKNhF?=
 =?us-ascii?Q?+dqvp22uhipyjlWDcpoc76IQsXS3YVYkUxlgpu/5J4+g6uQ8Ed/tHB2mo6L1?=
 =?us-ascii?Q?eg3p8in1+nhooD09trI3OowJYJjvyvRAevr+3KtgZy1cO2i6x0EMor9yzLK0?=
 =?us-ascii?Q?1csYGzHzV9Cm+vx9VQLgr7O0EpZ987bj4djqoQXVoZeAWBO07ejn9v5HKxcc?=
 =?us-ascii?Q?z24OIvIeJAjuKTFBF2sRS+KGOkh3HbwR34drntAjZz/VyV/F7NHL6RKkyDXs?=
 =?us-ascii?Q?h2Sjkp6hNcxTcByMlNiTVHc9wjyYjLgVeK2CvNA24xA/Z2DmTWI20NpVGN3U?=
 =?us-ascii?Q?c8+b07hnjL8IA+vRMvIG0zGh6jkaVndDa428saLpL7bqVXk2w8in61QS0+V+?=
 =?us-ascii?Q?WmybtnFp3HP3r1EDifVbhV8RVpL4e9uhdeFVSLaSaUd9MYRdkmnk36HiyeRL?=
 =?us-ascii?Q?WX8y2gllGVo9RBkuDbd1FcVHy9NtknNb8rgI+xtY/nDFvXaO232fwrHtod+v?=
 =?us-ascii?Q?Hhg/26MWoVAAYvWtpFYvU5lkgXE+/T0r5tcTwdAh4qjHwf43eJ55R6YGqhVn?=
 =?us-ascii?Q?vWkpxaqECKE3UdHE81Sr8x41kpbpuB2QOzk+lPaw3EbbH7GBLvQgMafEZkgd?=
 =?us-ascii?Q?jOIPqi+0NNq+ZtcooJ7gYdWzYvacjwQoPVhsh8xaB+9o0Vum/9gNB9psYup9?=
 =?us-ascii?Q?v0WfAoqCBWHuVzmaY3jNKJNqc9tw1idZL3c6d58CJ67OWm5PgaKKLEXfJRvh?=
 =?us-ascii?Q?z8UHDBke+qjNEpJbsDp8VrTjwSGWaM9BNTYWttHaQaW5dFd2qbRrVLCQVhdf?=
 =?us-ascii?Q?w2mm6jV98Zikt+ImBzVDLtTc9NFie4/tkSNx0jlWpylFO9FnmPNAqm9WL/pV?=
 =?us-ascii?Q?aamRVii3Ol3UJr+m/YKClJVRyzAi74citK6EUSPLUV8VaVccksghc1AMY0fS?=
 =?us-ascii?Q?7VI+HvKrtLgTAVrGOhGfTKZlzIBg5Y2wJ4yuOQ4OU1vbARGcqnNVtBURIGEc?=
 =?us-ascii?Q?1y1HouD2lfg3lNO6mBtMCCE3NJxjurgxDDaI4hgO?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 177a9034-0758-4ca9-44d6-08dcfdfc85f1
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 00:47:00.1579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LRA+CSMdp4nLb9xwf2nDjp7iEJ8xJo2AKW5B0nVUxwIn1ewbN9IW3ChNeB5MN4Vh8xGVxM9iN1oH+wHBoNTQW1uGPtnbbhSqHjFL7tNCugY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE2P216MB1932

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
---
v3 -> v4
 - Modify to fit the character-per-line format
v2 -> v3
 - Remove ABI documents due to the removal of sysfs in the driver
v1 -> v2
 - Add ABI documents for sysfs
 - Remove the interrupt property as it is no longer used

 .../bindings/sound/irondevice,sma1307.yaml    | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml

diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
new file mode 100644
index 000000000..1e2a038d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/irondevice,sma1307.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Iron Device SMA1307 Audio Amplifier
+
+maintainers:
+  - Kiseok Jo <kiseok.jo@irondevice.com>
+
+description:
+  SMA1307 boosted digital speaker amplifier with feedback-loop.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - irondevice,sma1307a
+      - irondevice,sma1307aq
+    description:
+      If a 'q' is added, it indicated the product is AEC-Q100
+      qualified for automotive applications. SMA1307A supports
+      both WLCSP and QFN packages. However, SMA1307AQ only
+      supports the QFN package.
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        amplifier@1e {
+            compatible = "irondevice,sma1307a";
+            reg = <0x1e>;
+            #sound-dai-cells = <1>;
+        };
+    };
-- 
2.39.2


