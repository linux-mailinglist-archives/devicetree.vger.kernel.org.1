Return-Path: <devicetree+bounces-93136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB094FD31
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 07:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCB5F1F22E2F
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 05:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B925249E5;
	Tue, 13 Aug 2024 05:26:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEVP216CU002.outbound.protection.outlook.com (mail-koreacentralazon11022115.outbound.protection.outlook.com [40.107.43.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775E2374E;
	Tue, 13 Aug 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.43.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723526785; cv=fail; b=uQDJjtFRjEaSVpxonpVTWGpOpqiW4sYAYakgigdwccMAbMnMHBrB/ys84zKfXl6/5ZSmDhZ3mHnHZ/UyfvS6u8mYo763SZmibK1l/4a8+6iZ+VeqC4cgJvg4UmUpS30z6xbDU67BcrrL8UBNLBc+x9hHePTqfk0qNQoUsFKzPro=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723526785; c=relaxed/simple;
	bh=3Tj1w4ooku83Mesl3Okf5kYq+yLizpm9hJiF6PY/N1Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=d/p8XwONiJO1T1EFykzVGjXQlnYbai+B4nmJziieXXZmEn37mrFhp4030E5wuzhn008PtytEpzmbg8zAUf1uLkyujVZB+5MLiloY9IF1oRcsGRT7zS1IDmw81d+ZA+L5lU6yz+cnMZPAzhvbpgYDga3U4CD49YY7wKNtEGGQmYA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.43.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pqhWIoF0YwRGy+WbggFBx2TjrSDTrIYl4VhboEpm1Rfy/KAO7Lp+uwa1OCU80zMo/A16dRYyHzttA0f7tfHYQPm63tiDe9ourI7UDPBB6JBO7iZhNJjZSYmw8FSj5c1C4O1SSvbL3tlQFg5nN0DiorNR6lud3UkXJrgQaz5xq82L9ResBmq00zX0ymKPnbsvPAIWGU210+zf4ZvHRhwlWaboVRh1EIGBEfUSg+7V0qJ7qZSJBuhy40LT0HYoUWjlW/BV2wopmwxcQhmhXWF/d357MStSuHGnz+fmr75gP5HS1w7bsSIG6l5mjr/roqMgPt+HaDqsd4LmgtSu65t2FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmANMxRQwiDw7QLnQpNfsZnLU6cS/HUSvpCH8WxpXYU=;
 b=wEXEgfnxvC3VztH8O/97cuKscQ7UQ9zuLLTCSM+KP5MOWMu3iioER/NfwKzJ8etr9Y5Zl0JAYDRK6+y0HE+YV4ZFo8opRRFjGKo2LZLOx3ATfaXB7jS5NOBcfQf33aEfM61RHSymntk0yWi9b0mLFx/RRUSVr16URFBNOjr0e4Ej0tD8jN+fkaEsgWHiivK75UV4MGBW4peBlNItxwwqMNO/S0eUxy4/kB2Fs0MJL+Brl8S+jVEGazukr7yis7/X2dYBVlyyYd87NbLoXAVLAHssG6Sk2pZ6cORz/KU++fUCvYbcZvoEhtJfKnSBNaVig6MtCXMWusK3dMWsHLz1pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by PU4P216MB2027.KORP216.PROD.OUTLOOK.COM (2603:1096:301:130::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 05:26:20 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7849.021; Tue, 13 Aug 2024
 05:26:20 +0000
From: Kiseok Jo <kiseok.jo@irondevice.com>
To: Kiseok Jo <kiseok.jo@irondevice.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] ASoC: sma1307: Add bindings for Iron Device SMA1307 amplifier
Date: Tue, 13 Aug 2024 14:26:09 +0900
Message-Id: <20240813052609.56527-3-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813052609.56527-1-kiseok.jo@irondevice.com>
References: <20240813052609.56527-1-kiseok.jo@irondevice.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0078.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:2::11) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|PU4P216MB2027:EE_
X-MS-Office365-Filtering-Correlation-Id: c382f4b2-6de8-467c-6c97-08dcbb5876a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|376014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3CEVacfMS+JcyoC+NViogENevBuDz4iduQo+/fIMC+YZY3xJv3UCeWbUDjbV?=
 =?us-ascii?Q?eupcA9gUlwdw/93SZfbsnerILVrPhkkf2Cl1h8WTFx4SrkqFKyyym4W98bfM?=
 =?us-ascii?Q?nSvIkNL2E5Rve1oLDzTwhaMiv/CGVhVt/7YtcrLZw9Pk0tRUCKotV6Ng25Xq?=
 =?us-ascii?Q?LM4HyR7loYymb7AFyh1V0a2p3uOsfj/o5SnwhM/CgCD/1t0isffRZKqQxa5K?=
 =?us-ascii?Q?R9CiTXwXO9wPVaaAnv3HrWK6wh9dlo6Ui6ikDfDoe0snJY8hbV3+Eo/fwUvR?=
 =?us-ascii?Q?r94c+S7SKdQmheQH+hoRxFGmGSM6BJFIPp7V/MaVhFiKNBahTBjUrtOpjP4T?=
 =?us-ascii?Q?MoOYuTAguB+v6Ui3mtmZmhzqPFfNiiBz55b74cLrsQsRELazX6JWX+lMbHf1?=
 =?us-ascii?Q?t0DAbYopDBnvmqYPoa5aEslPL2G9G6/rLQ3KiMkfCK5GgCq/crlUTM2iMfcG?=
 =?us-ascii?Q?PG7isyvSUUaC3TmJ7iwVFSfuONLGsEGd2XwCU4Y+/ss9veDTnk8HsGzOAQSK?=
 =?us-ascii?Q?Hi3qS8cpMoUBU85diek8jv7zirKck7l19L3qXVWXwbLb7da01bAxtNnY4g7R?=
 =?us-ascii?Q?G3JYf1blgGrUoZ2TbvNQg/2qmGKM1DUnrMKoVoIgGXzxN9Isp6SAYxnj5FTo?=
 =?us-ascii?Q?Eyjr4SbFxyHeZ2B/GZ0Tl2SDl1LsnG7fGPyyKOnrlQ2k7JfA1BW/RQ7BilXQ?=
 =?us-ascii?Q?tQECb9fskkRZgzyJlUYnpx/IHFJHW1E8n1CSzY9ZoXqdKNL1vz1pveg12q1m?=
 =?us-ascii?Q?3YuqXdwWu0WrRciPSg5ym3RjZItq+34Z1fAChV2Iif1GozHeriClFK2thNK1?=
 =?us-ascii?Q?7oKfFh7wd6rsPwHVJwFNmTJnApmwGIdY16xjGBaFsBvQgIzzK+SeAdv4Obkp?=
 =?us-ascii?Q?45QSsPpY516Q5ViNGOe3wNl5Oq/sDAlr9bVBt/BJPwo1KfgXZUlf4KNrSPaf?=
 =?us-ascii?Q?zdjybBeH7eiZ3LMuUA+YpJDHdRvs3sqXkJXfSGK4mjidnC5UbVQczD/Nlqkg?=
 =?us-ascii?Q?YoIgCmSSMkCApyIBJcmvYNZOagWii0eUrLiyv9mLFiJWgn89iOwQpALq0cjy?=
 =?us-ascii?Q?UlaY0YbjZk9C7KWfIwdf6SyqRsq4z6wHjvI6H5Pz62PqltUhEOz+He706hme?=
 =?us-ascii?Q?wuxTal3dKd88VCTia4+WorAIldqT1+hJfjLYIyEOs4DuvoE4V9ERAHRA7jtj?=
 =?us-ascii?Q?6b3b/4KX0IFaWc0Hsy7S9L6YvAlXheKUsBeIcMHDK/xTKrSsQxEojX87+cVD?=
 =?us-ascii?Q?yLD4g26VlYVhri6QW/QiltnuTTeHB26LYqkZN/G9R9qR/ynEpWlpMSVNBrRz?=
 =?us-ascii?Q?02tjgz8Q844KykeOLNgRu+PWEzivYiY9grJ5HXK3npxkVeUZ9WNtH9rSnWfM?=
 =?us-ascii?Q?FnbOCq4=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?2XSmHjFpnXuq9TzD/oJXQJ/At977oDJ25JQ/ovZgjtRoGCcok7gfccVHjMR2?=
 =?us-ascii?Q?TmiObsxkzzIc2gDYaDgXg47mI3ZjKW5xW0cd6zXceZScWbA/UX7udyXHtw1f?=
 =?us-ascii?Q?uVhEWkYaYm2XtIaXvCOmIoYZyh6CSig4JbdnIJtsrRxt1FQCjtfRWSz5UXTx?=
 =?us-ascii?Q?zIfNE87Qe4Bd2fKKqAlgKOdMqWU2D6KcVSO8nJkCIV9umDkcwx59jWHib32Z?=
 =?us-ascii?Q?IgHXf6JRXTTYDgR5+SMe18XtcJaVbzLAXGDcsE8b2eT+2iAdlbRUiDF1AAhn?=
 =?us-ascii?Q?bPn+GTEMdNQrwqNzT26VOUgllbaZsA4/I1vP7nhxlicHy/laLn0mvLsBC3Nw?=
 =?us-ascii?Q?BOaE7RhGIc2iOUqYSmbkki/DDLnmjsZIQmajQh2A8l456L1xUaECgYZnF1LY?=
 =?us-ascii?Q?FW3eMpeNLmmUQEfH2Pr2cvDdicXAP9JksgMsLNUF2hwu+uw+nR2Fau5A3fGW?=
 =?us-ascii?Q?ZItKbfBe7puveycKZWfsUg3Y3FYlOTHC8BrUHIzzrKlELFQybIXOCno3oD5a?=
 =?us-ascii?Q?458ACT1ef9uAbtPOW4wePZZFnEGCZ6uy5Slj/pRp9MgUQFOUBV8MKLSe+Q4y?=
 =?us-ascii?Q?IzYpKJM6hnbYCqd6k1fZAiAaGCpoF4yN2u4jILtDIWdfmrfvaX9j4ve7V9kp?=
 =?us-ascii?Q?5EEqoNArbZuem9lDx9p+SASF56AEgWbwrz4t8X0rQxxccHOgM4n68Bl/s4GY?=
 =?us-ascii?Q?Ndfr/jgCQCs/B4KQ0ZJd/drcbf+SAsj1yN3f8/ypfyqqE+fiiuMqIjNXCk3r?=
 =?us-ascii?Q?IItXaUgYEl33zMDSuJE2C57gz0EvlQ+v/ShJ/RfCf5oaEvpN7Oeoq95odEmn?=
 =?us-ascii?Q?/Dyiz38chRu+q0AGImFVb23RmaYvuio6K7Bb9yJL8lMxIJ+PaSMTatOj7ZRu?=
 =?us-ascii?Q?TaX0IKCpseZ2uOzLV913uAbKvbx0bBQx2+97xEGdUr6CTSUE4rcP+6LgJF7A?=
 =?us-ascii?Q?bZoZX21Va0v8IIRH55cq5Mf3tA/U6pxmPgkWS4GibtonBKam1pIljRDD6JF0?=
 =?us-ascii?Q?C1zs13kQNxUNT5w0uBgpt2rtmbJ3e2mFAtDSzw3xN7EHNPL6pJbnIOmcslO1?=
 =?us-ascii?Q?8LUYj2Th/4m4tYkW1Hz33WBzeTWSGiVmwJ/7SP6hP9Rkg2b8ErNSvjJsqZCn?=
 =?us-ascii?Q?uqK5L+QjxfbXwvFIGe59f3DQiNhZOdb/piC8GLvQgwYaf41SEu2UguHneGPK?=
 =?us-ascii?Q?nnA54SA6UZUVHspnU/J8rTAD1NdGNzsJJYk33kpNgkroOcmok7ek2anYrt/q?=
 =?us-ascii?Q?3QO65j4TKVJ7sFMTyPmkO2cnZdIRaCdTfpHYYbQ+mOYrklU40eGTDej60yvr?=
 =?us-ascii?Q?bUvOJy/xekAeu6s5iCoAORAFQaThgBkv0XpxaVvZ6BXYhjrq85GzxTSvgZ5N?=
 =?us-ascii?Q?tNAl5TrZEFfYph4tk8T8gsPZ8j2efHauk/ssmCxBJ9yPUsUkxNYMcpHABGZp?=
 =?us-ascii?Q?IvB1h6DpUEZfv871Vacv8T9woeK9RalVhvVs6yS79/rZMiDTAVzCToNjg4Hn?=
 =?us-ascii?Q?FKSFVrchvCe4NeZm3tWcYdqJXFlbsWVqz64AzuevyXxfcqZACvrUiL6/3LhX?=
 =?us-ascii?Q?rkFDrZuWQesQMWoAwQIsUO8eEhecUVGL0a7Ds+tO?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c382f4b2-6de8-467c-6c97-08dcbb5876a9
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 05:26:20.2752
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ePY8b3qSBPNSlY01bD4GHdHe/Rln8tZEaJT15JOJ1VnDBOl7omu7G2Qe61XXna6uJRapPJSWBW+rC6Y0ysS7jBmV9lWcYWFgRMLEgSEfo44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU4P216MB2027

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
---
 .../bindings/sound/irondevice,sma1307.yaml    | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml

diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
new file mode 100644
index 000000000000..62625cf35c2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
@@ -0,0 +1,67 @@
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
+  SMA1307 boosted digital speaker amplifier
+  with feedback-loop.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - irondevice,sma1307a-w
+      - irondevice,sma1307a-f
+      - irondevice,sma1307aq-f
+    description:
+      It is divided according to the package.
+      The WLCSP packages are denoted with 'w', and the QFN packages are denoted
+      with 'f'. If a 'q' is added, it indicated the product is AEC-Q100
+      qualified for automotive applications.
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description:
+      only in sma1307
+
+  '#sound-dai-cells':
+    const: 1
+
+  use-binary:
+    type: boolean
+    description:
+      whether to use binary files for device settings.
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
+            compatible = "irondevice,sma1307a-w";
+            reg = <0x1e>;
+            #sound-dai-cells = <1>;
+            interrupt-parent = <&gpio>;
+            interrupts = <4 0>;
+        };
+    };
-- 
2.39.2


