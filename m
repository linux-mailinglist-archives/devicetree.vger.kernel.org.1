Return-Path: <devicetree+bounces-123222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1951D9D3B22
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 13:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EBD81F26632
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5E91A2C0E;
	Wed, 20 Nov 2024 12:53:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2099.outbound.protection.partner.outlook.cn [139.219.17.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C402915853A;
	Wed, 20 Nov 2024 12:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732107220; cv=fail; b=ClXum2sPX/QPbiwY9kQnJIB4cwBKChfFIdkbBionvJENTD1pwV+kQyJe3c58DXINWCB78b6l9O58gImjKgE87+aFIMTEFQRzf1lbtaXBRim+baBOwzOASjaYpwBAF+cjiH1+5h5kpY0LjSVhQMkiWs1hPhN3l6edlowbfG1p1Jw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732107220; c=relaxed/simple;
	bh=q0lLqCuUeRmu1SM4AYOpt4E/d7PbaOFasgfrJ9Dj0K4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZnTS3Gdc7Pb8+KEWUBAl6fbBO56/Ig0UEO4VcVg6a1HZZnDkl2UiIEqo5xTMHPWTeZMsdb4pBoQJIU5nLRw7tUVLOd/MZ53ApT8yugWzo6OPLzn1pdPgOk53oYYY5rDAsb7+WS7sCUxhNRC7LnYiw/CmYuxkdNGvpNQN+8VGUnE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kinAfiI8fGvD9cfOblmhgewvzqj+pof91DzV+DwV6NTJvb9TsVBsMFP7OsRaps1CG1g1Qh/JtIadbMNZsFjrLsQyAY4iNFdmhnxGO8jgVr1PKwiLIiLppM6kvaSxNgSoGcp95IY1f5HbY3w4ZILVyRPCxat7CYRjIveCwfME+sXHOd8p5pfBrsv8wN3bKNrlqpg7EdEslkPPdxoidU/PYtmc/N/2B1AZpef71x6KOPVgyLSI9zKB0pxe+T8Qmjwct7OzQo8dNw/WOcTusjJNkPFZWIdCcCXiROaA1gvfumlGzJte96k3tkjMPK++qT86HtE4zx9wKdIHGqsHRaJ9MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MT3wJmu7YPckPVwsjfnY3TF92LMnmOsSyLBy5WsNTlU=;
 b=jcRLLrbJhreMB11mDEaiEXNPRyuy0NhC2dRdmNw2dMLhlHh7wH+vIij2LQOZcVffxpxVNKhj7vr3iMg4uAHNPNMslawV5ATZ3CzVabZWk1pvvTLYMF5Bz0Sgd/OMZAqkj5wFQ2ziIDtU6PtLKQCCp3NHWY8p7dIYCEOGwApIeH49YOLsYqe7qimLuXiJ6FV7c8GJWvmetFd82E5OXBjFUzAJqrX00XEr0Nxtj6Kz8sDMCt+Vtblm4FIXjArOZ6BbWWfFkzg2ku1lPXJoDoRtX+ft4E2/1A1eaVVvhvxkCfQGu0+Rupk+mA0OZ6/41EI9HzjT6S91yz/FrJ8V8Ll6jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) by NTZPR01MB1100.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 06:20:19 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::512d:38d7:ed9f:dfbe]) by
 NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn ([fe80::512d:38d7:ed9f:dfbe%4])
 with mapi id 15.20.8158.023; Wed, 20 Nov 2024 06:20:18 +0000
From: keith zhao <keith.zhao@starfivetech.com>
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
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	william.qiu@starfivetech.com,
	xingyu.wu@starfivetech.com,
	kernel@esmil.dk,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	p.zabel@pengutronix.de,
	changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com,
	jack.zhu@starfivetech.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/9] dt-bindings: display: bindings for starfive,JH7110 display pipeline
Date: Wed, 20 Nov 2024 14:18:40 +0800
Message-Id: <20241120061848.196754-2-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241120061848.196754-1-keith.zhao@starfivetech.com>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BJXPR01CA0059.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:12::26) To NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NTZPR01MB1050:EE_|NTZPR01MB1100:EE_
X-MS-Office365-Filtering-Correlation-Id: 07b8dc07-832b-40b9-9d6c-08dd092b67e1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|52116014|1800799024|41320700013|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	tcOBndM0Ik/226nvs0bpyjFPhlsa8lBQZZzzvo+gDLYLXz6Gvf/G++PbfAv7UUfmceqOXw2vp6TbIjnL2Zx4WZdzuGvOIVREeBLk++lVvmLTjclvymHIPUdm63dh0VVCm5g686oqFr2yvOnXDNZcBuAK7CCHR2ivA8e6FcRTrjsNrGcyVeYSr8XaS6ih0Lo1S2rCSp5sE8B9vTD78b1cHeCkP45nlW5WvWZeE5aUjz7NJPXDdtRdXt6LDc7o750c/TDRUvoz0cuGTbLNbZ7zuuPbzYS5WhWH6azthoDRJGzXoRxQ3ims5ZZc63tvIDXytb17tqRxm3N7PzahtTSUGGoXI2IxEAXstk3RNsvtkkj7RrAjrclNuLORziRM4DYrltLVDanuJL3pETaMuALnM6l7skyD8oANxpfxxZqnf2RlvMKISEEbmquAvw7p9yt2kpU++QifduCYjm4MkiRp0xGVs5FKhkXwr9ihd9ypp8eJaixToy2mz+doAyKG2XJUDt3tBwSDiYMyVewmJPpqzqEVMgG0AsP7GXyKP5XxvWZdbuizc9TPXDOCFitL3khPh6MG4ljwBsYOnZwAKXjyBRprFHFYZgn6voTsDHhABK27dhDGzdXkmKuf6VH0F18D
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(1800799024)(41320700013)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ba5M6O3OJi7MJ//Mh8/VTUoWgeKsS6+7Crtz07mMgS92Gt5TXwcl1/75qfO1?=
 =?us-ascii?Q?bGjKwp56uI9LexIHZrlkgt796uAjZmkRYtvn2mimWydvMkHvGz0yarz2zMa5?=
 =?us-ascii?Q?c6F7zzFSt+k2HBuNDl+6kmOUJ/+VWDE5rpykoUV3mBzvMVudFlfAsvQkwM8x?=
 =?us-ascii?Q?SIovpWoX8PwwMHTKfUXMKeJwi+O2DRtnW7TNBbb7HVhSicLLWocJKlRGlCyI?=
 =?us-ascii?Q?DU2w+eujmOFSuiRrLkzZx+swO3Uuz50r+uqpPGIfsOl24RKRKYftH3tNo9TP?=
 =?us-ascii?Q?L2uueeVcmIUfhDKAT+KvvxZNb5K0qR3LwLxtlrGf5jO5CrSnpx6Hi16m+qte?=
 =?us-ascii?Q?iIbPKrcSa6gimvT5T3ey2CcPDcskvixMaHMKieOZiA8otgrjabbKKDWvEHVO?=
 =?us-ascii?Q?8Nr45KfTEP/9usp0zJvKpewHKW64p1k1nZYUjssmtlnuQqcdxrsXikGOI7ZO?=
 =?us-ascii?Q?H6Ft/krVRK7IgNfrd2+VvsUi7wvA/6fHaThU5YnSBHZAN+fsFP0M5jnR/lKF?=
 =?us-ascii?Q?d22XqWjLBBDbAYQfwG1FaEp+NHy2soPjpWps2KiPY03Shr5sfnepfJCBLRfD?=
 =?us-ascii?Q?3Bc6QRM5h48nk5AXfRxX6nIEjNX0m1EDTA9KUHAVNgXsOiJGMzw9lRP5rUG7?=
 =?us-ascii?Q?BmxlgMzbUfFvbKgG8N7dRhfOW5Ss504ChVvLVBL7ZRhSq/D+Uk7pz3xs9OxE?=
 =?us-ascii?Q?slOOpJoDDHhTG87/TzZktE2y1wC9cgwSCoMul4GKHQ1A1gZm8t2HqQqgnqZp?=
 =?us-ascii?Q?m7Jf/zgpxT9UiurlkDmWHiM+jlxP4Jj0KtBWPlGE3SQy+nFXzaVnV0G449TO?=
 =?us-ascii?Q?po1v6mR7+/hu3v7mw+RdZo9/UhDxKndQL4E6ZnDXPB92Was/4pubvpYHJ+z0?=
 =?us-ascii?Q?wBe4++DhAOtKdz0DLa1v6GuETwvgiHVVcE6SOCM4H4EjSeQ4Km3dHn1fhyvN?=
 =?us-ascii?Q?jE5t41PyH1UzI70sYl78g+KLBdQEdpi5WUTUjBbvGDyt0kXDwSDrorsvWXmJ?=
 =?us-ascii?Q?pR3kOIDBs3f2iEC+qGwY9QLxq+x0uWEiqy9vULvCaFrm9qkC4CWaJMkk2PoL?=
 =?us-ascii?Q?KwhQzGLq3ZjHj5crz70q9L9M7bg8Y+x2dKbMnMGWpix4MpoNBC/GhW3BBLmV?=
 =?us-ascii?Q?piGYZEXrGF/1XC3XIHApwZDJgj9W7K9Pp3ucBI29aFxovfFOSCyLMebOFWFS?=
 =?us-ascii?Q?1PEVUq/aqymp+7+0Ukl2zum9gn/hnocalLw0ZePNLRIbVFMDXeTr0ovH92Vi?=
 =?us-ascii?Q?1nVfyiKVC5IL2n2yJMVlPhp7ba1prt/ZWc3CXxNXuUwyD1E+7yR+bPm4NvUz?=
 =?us-ascii?Q?tkCbH7i27V328f3QR2WvZgcUa8npK85NiOKuO5lj9su6Yqt2Jo1mvtLK1k1M?=
 =?us-ascii?Q?unmmvZg6ePNoBFHiK4NP9CiRRhj7vPELARo+KVc+IfQDqviTiNZ3oK5bFU87?=
 =?us-ascii?Q?wByYsQexbtLDeyHuFMEsDBadP5pOzMlig5RXmFYr+vTeQSKQdNS4G5SsmO8G?=
 =?us-ascii?Q?pKguohfP/MQnABPzj7e33yyOj6h695KbcYvR3Yuq1j9b4uyyOFg21qgHuuxG?=
 =?us-ascii?Q?cFIprkneg6j+HjIF+xYzFU7U4JZs6noatK/CNgABaaVt5LGKMWPg9h7l7o+h?=
 =?us-ascii?Q?MA=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07b8dc07-832b-40b9-9d6c-08dd092b67e1
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 06:20:18.8949
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xF5fnYDU1FV4f2bdGrkJET5bnI1rVwaRZ8V94L3j05qum8CYP8JdfUeFpUEL/K66nJ7+e6xg0gOT2mowI6xYwMl2DyEUPGKcMFdyhMjDweU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1100

- Added bindings to support the display subsystem on the JH7110 SoC.

- Included the DC8200 display controller and Inno HDMI controller.

- Created innosilicon,inno-hdmi.yaml schema containing common properties
  for the Inno DesignWare HDMI TX controller.
  This isn't a full device tree binding specification,
  but is intended to be referenced by platform-specific bindings
  for the IP core.

Signed-off-by: keith zhao <keith.zhao@starfivetech.com>
---
 .../display/bridge/innosilicon,inno-hdmi.yaml |  45 +++++
 .../display/rockchip/rockchip,inno-hdmi.yaml  |  27 +--
 .../starfive/starfive,jh7110-dc8200.yaml      | 176 ++++++++++++++++++
 .../starfive/starfive,jh7110-inno-hdmi.yaml   |  91 +++++++++
 .../soc/starfive/starfive,jh7110-syscon.yaml  |   1 +
 MAINTAINERS                                   |   8 +
 6 files changed, 323 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
 create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
new file mode 100644
index 000000000000..f2543aebc312
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/innosilicon,inno-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Innosilicon HDMI TX IP
+
+maintainers:
+  - keith zhao <keith.zhao@starfivetech.com>
+
+description: |
+  Innosilicon HDMI TX is an HDMI transmission device integrated into the zap SoC.
+  This document specifies the device tree properties for the INNO HDMI IP core.
+  It is intended to be referenced by platform-specific device tree bindings,
+  which will determine the necessity of each property.
+
+properties:
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a display controller node.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a hdmi-connector node.
+
+    required:
+      - port@0
+      - port@1
+
+additionalProperties: true
+
+...
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 5b87b0f1963e..589dedfcbee0 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -16,12 +16,6 @@ properties:
       - rockchip,rk3036-inno-hdmi
       - rockchip,rk3128-inno-hdmi
 
-  reg:
-    maxItems: 1
-
-  interrupts:
-    maxItems: 1
-
   clocks:
     minItems: 1
     items:
@@ -40,24 +34,6 @@ properties:
   "#sound-dai-cells":
     const: 0
 
-  ports:
-    $ref: /schemas/graph.yaml#/properties/ports
-
-    properties:
-      port@0:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Port node with one endpoint connected to a vop node.
-
-      port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Port node with one endpoint connected to a hdmi-connector node.
-
-    required:
-      - port@0
-      - port@1
-
 required:
   - compatible
   - reg
@@ -69,6 +45,7 @@ required:
   - ports
 
 allOf:
+  - $ref: ../bridge/innosilicon,inno-hdmi.yaml#
   - $ref: /schemas/sound/dai-common.yaml#
   - if:
       properties:
@@ -95,7 +72,7 @@ allOf:
       required:
         - power-domains
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
new file mode 100644
index 000000000000..5f57c405e857
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
@@ -0,0 +1,176 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-dc8200.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starfive JH7110 SoC Display Controller (DC8200)
+
+description:
+  The STARFIVE JH7110 SoC uses the display controller based on Verisilicon
+  IP(DC8200) to transfer the image data from a video memory buffer to an
+  external LCD interface.
+
+  pipe0 binds HDMI for primary display,
+  pipe1 binds DSI for external display.
+
+          +------------------------------+
+          |                              |
+          |                              |
+  +----+  |   +-------------------+      |   +-------+   +------+   +------+
+  |    +----->+  dc controller 0  +--->----->+HDMICtl| ->+ PHY  +-->+PANEL0+
+  |AXI |  |   +-------------------+      |   +-------+   +------+   +------+
+  |    |  |                              |
+  |    |  |                              |
+  |    |  |                              |
+  |    |  |                              |
+  |APB |  |   +-------------------+         +---------+    +------+  +-------+
+  |    +----->+  dc controller 1  +--->---->+ dsiTx   +--->+DPHY  +->+ PANEL1+
+  |    |  |   +-------------------+         +---------+    +------+  +-------+
+  +----+  |                              |
+          +------------------------------+
+
+maintainers:
+  - keith zhao <keith.zhao@starfivetech.com>
+
+properties:
+  compatible:
+    const: starfive,jh7110-dc8200
+
+  reg:
+    items:
+      - description: host interface
+      - description: display physical base
+
+  reg-names:
+    items:
+      - const: host
+      - const: base
+
+  clocks:
+    items:
+      - description: Clock for display system noc bus.
+      - description: Core clock for display controller.
+      - description: Clock for axi bus to access ddr.
+      - description: Clock for ahb bus to R/W the phy regs.
+      - description: Pixel clock for display channel 0.
+      - description: Pixel clock for display channel 1.
+      - description: Pixel clock from hdmi.
+      - description: Pixel clock for soc .
+
+  clock-names:
+    items:
+      - const: noc_bus
+      - const: dc_core
+      - const: axi_core
+      - const: ahb
+      - const: channel0
+      - const: channel1
+      - const: hdmi_tx
+      - const: dc_parent
+
+  resets:
+    items:
+      - description: Reset for axi bus.
+      - description: Reset for ahb bus.
+      - description: Core reset of display controller.
+
+  reset-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: core
+
+  interrupts:
+    items:
+      - description: The interrupt will be generated when DC finish one frame
+
+  starfive,syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the general register files syscon
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          channel 0 output
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          channel 1 output
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/starfive,jh7110-crg.h>
+    #include <dt-bindings/reset/starfive,jh7110-crg.h>
+    dc8200: lcd-controller@29400000 {
+        compatible = "starfive,jh7110-dc8200";
+        reg = <0x29400000 0x100>,
+              <0x29400800 0x2000>;
+        reg-names = "host", "base";
+
+        interrupts = <95>;
+        clocks = <&syscrg JH7110_SYSCLK_NOC_BUS_DISP_AXI>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_CORE>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_AXI>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_AHB>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_PIX0>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_PIX1>,
+                 <&hdmitx0_pixelclk>,
+                 <&voutcrg JH7110_VOUTCLK_DC8200_PIX>;
+        clock-names = "noc_bus", "dc_core", "axi_core", "ahb",
+                      "channel0", "channel1", "hdmi_tx", "dc_parent";
+        resets = <&voutcrg JH7110_VOUTRST_DC8200_AXI>,
+                 <&voutcrg JH7110_VOUTRST_DC8200_AHB>,
+                 <&voutcrg JH7110_VOUTRST_DC8200_CORE>;
+        reset-names = "axi", "ahb", "core";
+
+        starfive,syscon = <&vout_syscon>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            dc_out0: port@0 {
+                reg = <0>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                dc_out_dpi0: endpoint@0 {
+                    reg = <0>;
+                    remote-endpoint = <&hdmi_enc>;
+                };
+
+            };
+
+            dc_out1: port@1 {
+                reg = <1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                dc_out_dpi1: endpoint@1 {
+                    reg = <1>;
+                    remote-endpoint = <&dsi_enc>;
+                };
+
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
new file mode 100644
index 000000000000..62cb62885d71
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-inno-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starfive JH7110 Innosilicon HDMI controller
+
+maintainers:
+  - keith zhao <keith.zhao@starfivetech.com>
+
+description: |
+  Innosilicon HDMI TX IP is designed for transmitting video and audio data
+  from a video source device to a display device.
+  It contains a digital controller and a physical layer.
+
+allOf:
+  - $ref: ../bridge/innosilicon,inno-hdmi.yaml#
+
+properties:
+  compatible:
+    const: "starfive,jh7110-inno-hdmi"
+
+  clocks:
+    items:
+      - description: System clock of HDMI module.
+      - description: Mclk clock of HDMI audio.
+      - description: Bclk clock of HDMI audio.
+
+  clock-names:
+    items:
+      - const: sysclk
+      - const: mclk
+      - const: bclk
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    hdmi: hdmi@29590000 {
+        compatible = "starfive,jh7110-inno-hdmi";
+        reg = <0x29590000 0x4000>;
+        interrupts = <99>;
+        clocks = <&voutcrg 17>, <&voutcrg 15>, <&voutcrg 16>;
+        clock-names = "sysclk", "mclk","bclk";
+        resets = <&voutcrg 9>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            hdmi_in: port@0 {
+                reg = <0>;
+                hdmi_in_vop: endpoint {
+                    remote-endpoint = <&dc_out_dpi0>;
+                };
+            };
+
+            hdmi_out: port@1 {
+                reg = <1>;
+                hdmi_out_con: endpoint {
+                    remote-endpoint = <&hdmi_con_in>;
+                };
+            };
+        };
+    };
+
+    hdmi-out {
+        compatible = "hdmi-connector";
+        type = "a";
+
+        port {
+            hdmi_con_in: endpoint {
+                remote-endpoint = <&hdmi_out_con>;
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
index 0039319e91fe..cf9b657d0e8a 100644
--- a/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
@@ -24,6 +24,7 @@ properties:
           - enum:
               - starfive,jh7110-aon-syscon
               - starfive,jh7110-stg-syscon
+              - starfive,jh7110-vout-syscon
           - const: syscon
 
   reg:
diff --git a/MAINTAINERS b/MAINTAINERS
index 84086d47db69..f787dd625497 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7432,6 +7432,14 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/ste,mcde.yaml
 F:	drivers/gpu/drm/mcde/
 
+DRM DRIVERS FOR STARFIVE
+M:	Keith Zhao <keith.zhao@starfivetech.com>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
+F:	Documentation/devicetree/bindings/display/starfive/
+
 DRM DRIVER FOR SYNAPTICS R63353 PANELS
 M:	Michael Trimarchi <michael@amarulasolutions.com>
 S:	Maintained
-- 
2.34.1


