Return-Path: <devicetree+bounces-77297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E581D90E107
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 03:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AEB61C22489
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 01:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A4413C0B;
	Wed, 19 Jun 2024 01:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="hnB7HATA"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2064.outbound.protection.outlook.com [40.107.113.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1C181
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 01:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718758828; cv=fail; b=BfS4E+a1fHcySTR0s2qxAI6pgJvfSbMmx6N6Ln9ckfoE1eJ9rKEsK6L4Wx1zXig5pb7MTLWnFNoWmoC9SaWhXL960I2ClpM7SCh6ecKryUQd3o68dC9Fu6mmcGgsJLI3F0tCONkULu8zTPeEh50l6T6nDHwoXB6SHJdyxWDYESo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718758828; c=relaxed/simple;
	bh=wPZJ7FVG9ShAMHs3IuE5g+iJeWZ1nGNz8dSATNavqJg=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=rk5JWgh6z5PYqhOvyhP4wS7OBpzVARHibthn8Z/LfgaZQI6oCVvzBu987KIpMoFOxxOufHCh1s8l5tyj6ZdsHwJZNgYvq42ESajTpLi2G4OIMI4m+iVF3mmGSuIS4Me4Af9n5H8aXkNb/f5XACKTD/HJFVPpgk5UxvO9BIwBSgA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=hnB7HATA; arc=fail smtp.client-ip=40.107.113.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmDo5CFT+k33gKdBWMJXeqNf/+xwPxh34XY1MufVC4Ppm4tLNDlPCoOHMAv6jswmRohG1TKmaG5vtmiAqr0Gob6YRxvcqIvC89fCje1kWnVrIZW4NJ+fIJ4R+HwS5ZOrMzf4O2lSpXM7gb0UoDHx/UZF/qmpTxd6j4RZTV1O2UTNfDkh1QqsWccvpm5EEdKvh+FFXv0qk/IZGnAFz9lJPRoZQHXPp8OkpTyCa52WOJTIBzUj7prFKoTR941bJYpPWK4sbdz9G3Y2BMZFstMCDzdVV57mBVNqsoKZDnuAluyVrwQ+S+39fw2iI/3KJfYF0XbxU91BGwqP+4cOyux15Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92zGtLGdDV20C9USpgWhqXF1Ykh4YW2ib7BXqLkd4gg=;
 b=i3wyCKN517bHi70/CT+J5QJwzwSFdetvYHrTtYXl8W2bNHwLxH1DSTFjJiJ9J9+Czs/i8C/3ROTJeZ4n65SMXgA2BZ0kJl8FudhG5Jq6/1WEIQp1yE7/qn7azVwjGHYavGkxDQCjvXp0TegPVFSL0tiAQpL6pJX0BIKh0k68jcNCM0AYP1mXu4xg1jK824thCcj3tFGIZkP2Cl4OirNkhiabyYgLfckLcz237DdyEm5pXQs9JMq2zJ+yd2LGCekXymzqTsU4wBvFmGe+ajYeoL46OmFSLADPrzY80UgSTesUnFPox69XUnXUivr3Vvhx+8no8c9S7f3sNBNIYrAjpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=92zGtLGdDV20C9USpgWhqXF1Ykh4YW2ib7BXqLkd4gg=;
 b=hnB7HATA89ry6G9swIuVy83aCcHzhgtITlnWUm7GEtZhaUBfu4EZwS9MDoKdc6H2CT1JZSNDxBTQoSOYZPq22ti0aYCgCz7IRnnvWQOZrWs+sFTwk+ynTeEEffNaMuLGzJgzIF4nwtVm9xXAKq6IWN45lWfoTS0xlL1LynQAeqs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11207.jpnprd01.prod.outlook.com
 (2603:1096:400:3bf::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 01:00:23 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 01:00:23 +0000
Message-ID: <87h6dpwxug.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v3 2/2] ASoC: dt-bindings: ak4619: Add initial DT binding
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Khanh Le <khanh.le.xr@renesas.com>
In-Reply-To: <87jzilwxxd.wl-kuninori.morimoto.gx@renesas.com>
References: <87jzilwxxd.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 19 Jun 2024 01:00:23 +0000
X-ClientProxiedBy: TYWPR01CA0036.jpnprd01.prod.outlook.com
 (2603:1096:400:aa::23) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11207:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c36ee1-95df-4833-7aaf-08dc8ffb3324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|52116011|376011|366013|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ACpTfYPjZldbN08zOGdbdcxNhBMjUGXoVJgPM8VgHzd9WfPnLwid2Lk4lGyh?=
 =?us-ascii?Q?/YP0w+uIL2usB8iH2tCafVKECQfyNbjSi/YBg/HTIYMorfnnb5k53Q56eLRg?=
 =?us-ascii?Q?/QYMITzx9d7OP/j6xy5BR3VTI+dPMrfaoOlkNTBPNyjki0jS6zfvCvwfUByt?=
 =?us-ascii?Q?kWWCwZqdcXvKFnYLe8/WNDC6tBY9IDUFE5LYZ3ktjI3MNUP9/FxI0mCjZeIO?=
 =?us-ascii?Q?uEQckvsAi4PUqoXPbyf2HQlpq3yWQGSl30od8mXYcIkYHJOj92g/4MQueBCg?=
 =?us-ascii?Q?beKTQncF9Tk5k4VghLpuyjX3dIkP0jKG/9WEef212ccFhxAMNKQyMdCc8w94?=
 =?us-ascii?Q?fJP1n/yTcEEtRuO3J7QRGvttKqCd/39B3A/AKoq43Ob1XcPz/tLwWooypYMW?=
 =?us-ascii?Q?7v4T4TMdRFXWwNhDfe0HdtjzdVqLARmC8NuvfxICC+IX3GGnVDTLdYmh91lq?=
 =?us-ascii?Q?kMI7067FaspGD32KDTCfjnNPtM9DhhgSNUOqmmn34/8ruSL0BxvrIjbdW6GM?=
 =?us-ascii?Q?LtdxC+M7u4VJQhSk8cRIWOEjDLtkAvrq/9ufi/lR7Ssp95qdHJNOw+IGhb4B?=
 =?us-ascii?Q?AZiBuGfVZ/RSZaWdwB94rWvsRNSx5O/eyAElrHqyXznuLkfiHjMXsY++OS5y?=
 =?us-ascii?Q?jmKIoFws2V+gWhyk+1J2oXX/b7is8KYGmdwhB6LxMdCSh99jjtmXL5uJmRNp?=
 =?us-ascii?Q?1HhBuq2CZUah/JYuVC4+MR5D/wPtmesNAPk0DDoz0yr2rDMEki82mYDXpZwe?=
 =?us-ascii?Q?cPsmYQISMv1R19PBCHimYHFGwaCWaZAGPUqW/NrcgPzh7ATZ62M/UVwnsj1V?=
 =?us-ascii?Q?VBed6evrvD41hMbD6QZYydLqBNuM+CGNjoZte7L+I8KqBr1l7uW+dCqdkAfd?=
 =?us-ascii?Q?E30wtRDyYV+IfWw+aQsc9vr7yqiF1GqtLIuLP18PGlArBwyWMo17juXTnBS2?=
 =?us-ascii?Q?C92pNkEkDfyWaWJzuplv91inQjqYpI2aswUX4asQtK3naafTuhc15gIBmQSi?=
 =?us-ascii?Q?0QDiEEZVqwr9J29UWfU8v9c1+3pVKT+8iM599Zp75VKCy0yMqG46v4obJPNp?=
 =?us-ascii?Q?GsiUucWbjsC0+svaviATjh2n3d6Y8D4JgoqZXYyHiCiSaRZ431wld7joJVLZ?=
 =?us-ascii?Q?1R8vU4QIujaMbF5gG4hsiWaQ4x7LyC+9ViAeXhEsoYQeHeA3EXepZe4vgUQk?=
 =?us-ascii?Q?LXR+398RtiJjeS0fs/WKkIdxCcjlQ1K9SZETegPrxCceDck9doseKmTE1feY?=
 =?us-ascii?Q?L8S3yxIHDbMDAF4YtSm2qGMwZeCuvMtpspvZs84+KBxAuWz+JjYc788Y9B7G?=
 =?us-ascii?Q?TqB6aG4fdzp3ejVLSh2zlTem?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(52116011)(376011)(366013)(1800799021)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?iGhC3vYCZHG37NMECOv5U3488AcW5xvN/cNnWjbXz/LUz5CNeV41YG+0+HKP?=
 =?us-ascii?Q?jomZtaJQuiv1l7YzxeZ7s6a43UPLrvd0Kiyc8lz83WYQco0dI3uhDc5dp12i?=
 =?us-ascii?Q?kbGL6uQXRXowlesnqu8kh/Nb/qq09sRZgMvp962QL+CpmB63Sj8uXNhGIkaq?=
 =?us-ascii?Q?Y8Y6dymZG5jRHYNYi4znD43SBdCiy08Knojetmw6CE2LZ8ktZUuuzTnRqsqF?=
 =?us-ascii?Q?GToBCbBa5Hkkyz7ZRKJT5/AlNk5KxeDbZBtIrBjrcyh34Wn9jZS4wOMkcQ3n?=
 =?us-ascii?Q?TBHg/Uoe2Ezz4ZMM0V/M6UFpZ05smqF+z+QSkq+n7KFq9DTUaMofVg/M9itH?=
 =?us-ascii?Q?2LH9ZlOiKfprqTulmfWb4+PDjpWnTK7UDBWBAIRP2ANvLACRCNF2Bicw/fOt?=
 =?us-ascii?Q?abf5QAdhsq0bQ1fMB2p7TTmaM4cdgIIxWkxBXcnMqv91GoEdrphmfPz2bjzb?=
 =?us-ascii?Q?PR3C5UKRZ/WO8rr217xJhkyl3FEchJlhWzBAHP6DBBsLg4X+H8UbkKAyADrf?=
 =?us-ascii?Q?B8EQCCf1w7cgI75N22N0aTORJsbe+BHWAXaM7P4jp+3KIE9Z/DuN+Mt73Y3x?=
 =?us-ascii?Q?v7JTdW9ckxbnJJoArEIBXG1Eg6I53VsO6aRf8KhGXFVWHy/WCdeAT3q+/uID?=
 =?us-ascii?Q?oxDJUkVG6W0EswchSojj1aG8zCjfDW7iKXD1vT8TEmZVESedUA6QppMuAfcK?=
 =?us-ascii?Q?fNYXeebRe2gttgrgWfYLLAhch4eNcmbXsj3GS9Kv+q2BU/rjvc54DyIxl+Lh?=
 =?us-ascii?Q?OBc4oqRhTmV9cOS9nl1T0Rr1Xggss1u0wndPe6G8k8bq3mrKKRwkzEW5t94V?=
 =?us-ascii?Q?M8mXlvjRf6N0pMsg1TFrQd+qEo720LZCh84a2cD2KG52PC/IJ8Fx6sFKG5w5?=
 =?us-ascii?Q?0Wijysvxf+OImgyp88OXz7ihhXFm9QLQcdp2V2MT6dCYNzVTMeXEX/bOuC5d?=
 =?us-ascii?Q?nnpx2hXN+gA6D5ZL8T9XsC6S/3WAsmkf8vcWceV95YjVVVNGVQWLArd/XZHs?=
 =?us-ascii?Q?gSCR9GBgLPTHyeM5jsbaubg997Z+4hT16n7t2ip6VWLWE3XKF9x/o2JaG+wV?=
 =?us-ascii?Q?ZiNUGHNiZd38NGjXavGQ2S1qOBrHTuU65gSl0j99RSRmlPU9/1kehuqjV7Pd?=
 =?us-ascii?Q?lqFBWmR8LSFPJyXd7B0CMrBSrXiUsN+v/PRjdXlgDpmePO219Sentbpn7rof?=
 =?us-ascii?Q?W9V/jtEHdudIZbXtk/xcoP/Jiqcn8QzaKTlzCppZpu6dyJLUerz5zQcIL6I0?=
 =?us-ascii?Q?48SvgarLC7Q9fWiEcdFISjqQzD0drz4mO0hxJK3P9H6ZzZIcvj6Tou10d2r8?=
 =?us-ascii?Q?ZuJoJaYhCCm0xoXwKVWY+V7sMj7qWli8d3u75O1b107Y7v/zS9xI8anZb56j?=
 =?us-ascii?Q?jndmQNNnEvatWmOR2zMRbFQZCrOhIlpD034fwmEcJxH1zEgf3fd4RDJd0cs2?=
 =?us-ascii?Q?CidiEZdCPk1mIqbafUchwgtFgTaw8hRu7Xe9I2zzXXSbLMQof1HDVMm7EhHS?=
 =?us-ascii?Q?+eMl6J6Aw9a70uCV7WhD8u3bxW2MYnD+KgWSUOhBleZf67p43Is23h7FSc3O?=
 =?us-ascii?Q?XGSzgFhjICXp8SelwLjjJ1Ji3N8Rm7tbCmVLTNN8zXHnmETdIVm957vWUADR?=
 =?us-ascii?Q?lvwTDt5687COVjuTgyCfyJ4=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c36ee1-95df-4833-7aaf-08dc8ffb3324
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 01:00:23.8414
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: McwGp0gvuNhRUJnrnflOHHA38alJsEAwCuN76s4Kq7x+kiyhv2m5KvEpCHn2/Oo7R8SsA9aef7dr8ZsQRv9hVGHiLWlRRJq9pGlRrwtG+KLxXRGDjzF0Dw1eDHpAbLA3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11207

Add Asahi Kasei ak4619 audio codec bindings.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/asahi-kasei,ak4619.yaml    | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml

diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml
new file mode 100644
index 000000000000..d412531ef9a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/asahi-kasei,ak4619.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AK4619 I2C transmitter
+
+maintainers:
+  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
+  - Khanh Le <khanh.le.xr@renesas.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: asahi-kasei,ak4619
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#sound-dai-cells":
+    const: 0
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        codec@10 {
+            compatible = "asahi-kasei,ak4619";
+            reg = <0x10>;
+
+            clocks = <&rcar_sound>;
+            clock-names = "mclk";
+
+            #sound-dai-cells = <0>;
+            port {
+                 ak4619_endpoint: endpoint {
+                       remote-endpoint = <&rsnd_endpoint>;
+                  };
+            };
+        };
+    };
-- 
2.43.0


