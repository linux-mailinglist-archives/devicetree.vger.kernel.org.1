Return-Path: <devicetree+bounces-43667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E8585B14E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 04:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC15AB2084F
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 03:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F4E482C8;
	Tue, 20 Feb 2024 03:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="C+d/h1PU"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2088.outbound.protection.outlook.com [40.107.15.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7D856760;
	Tue, 20 Feb 2024 03:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.15.88
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708399528; cv=fail; b=SYs264YEToe6QpvFQHbKqVz31pSTpPPKyfOWHxSQ9mJyZgVlXmtxHUomoTts8RC/MP364GjHuyhrKVX761xvU6dCrNZXCZILAFcBydmKu7Zc/XRRvE1s0mP8R06m5xTYiCMIIj2sWhQ/Ok8Vdjgy0xHqFqw3I+4ap7ak1icbtcc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708399528; c=relaxed/simple;
	bh=m0wd0o10oZNo3gwn/6zti3qVq5qBA1IOV5F//Q+R8qk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=seu/L1HNC21Obp/dZED4y8ipzwiQhFPsqEWHQkKup1udr13D10R4QKWELVToLqJ/jS5zjt4ealqpyvKKj2Mc0U4oI2wDOgtF+7ZZA17yxz5RbV7LoqPl4HpoH13vLa8PvjmsNi6j/XeB02tykD+nkM11NNmK70IVYJolmQgQKik=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=C+d/h1PU; arc=fail smtp.client-ip=40.107.15.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NU5QYx8lfYXuBYJpOM3EXYBAQ5SHlQOH0pRU59VhzW5SrxzEXgOhrmQS/AKSKT7DYWhiLCy5mvDmxxJNq5IJAsrtpvk7329C2S2kjueZ+HsoW76BszLoi3ECx3Dv89+fPr8U/8sl27/m/H5QdfL3t+424JcfIL4V9izA+KoNshUrPLmwC+w4ct+lbEPvdkzlQMvlcL5wjqo4UQAQQQR3xK7bBvP46INUrOJ4wp9X+b5rf9jma7N7N8hBpIqZwnmrnZOY+0TnJLPmph1WrWKIChntk3pfi/MFiS8pcU0qlNzM1sm9ESPi2WdEuxeho9lhNVbmO/eGGIvix8zTrLAO3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tUlBDMyhDnXg+HJWojsqcMlGuL17qjYosk5UEtQsF/E=;
 b=nAw1ghsAse6yaRpwkqAXTtbKH1W0w4sLZj6f3n2bimvgy2eSaaa6jBeEgcYavO7AvXyCx6WgoiH3qcY03T2rCpMW57AOfKH5gz4m2EgKXctEAfJsObZn5sl/HMVB1Z3JS9fjy2VY/KxHFiDD1jN/haQ7Dn1EtqfANT88w7K66DbT6H9xq4rE5M8l/xswWiPHB9nmZpZVY78YrzvdV5/Gqg2PIEOL/4Fw3d66c+I6Tcdlc9nDGrncvBvDGeoT6jIK0On1YnEE4EQyQfUgLZmRW4vcVcOJHKw33krW3YB1fLpdwIW3Mb8U9tMGh5dB42hJ6IMyBqS9Vz2EoEgf3O22pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUlBDMyhDnXg+HJWojsqcMlGuL17qjYosk5UEtQsF/E=;
 b=C+d/h1PUiPoX03EInPMDRSD64/qK4kQebIL4KpL/xn9qE1znp7Oz+TT88WplzSN3ToyTC2qewJCo59OClO2KbkxOmgl3t81O/eh20Ya7g10ZE/DfJVLiZzE2n1rbfm9nWPSP7Lk0hQFyuPD0wrQIe8ZkwAO+nil996ElX+5YEo4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB9452.eurprd04.prod.outlook.com (2603:10a6:10:367::13)
 by AM8PR04MB7268.eurprd04.prod.outlook.com (2603:10a6:20b:1de::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 03:25:23 +0000
Received: from DB9PR04MB9452.eurprd04.prod.outlook.com
 ([fe80::4272:e277:dda3:2446]) by DB9PR04MB9452.eurprd04.prod.outlook.com
 ([fe80::4272:e277:dda3:2446%2]) with mapi id 15.20.7292.029; Tue, 20 Feb 2024
 03:25:23 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dmitry.baryshkov@linaro.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v14 3/7] dt-bindings: display: bridge: Add Cadence MHDP8501
Date: Tue, 20 Feb 2024 11:23:51 +0800
Message-Id: <d9cb461b0de2aed1a38520aa7b754f081a0f85cf.1708395604.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1708395604.git.Sandor.yu@nxp.com>
References: <cover.1708395604.git.Sandor.yu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0029.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::16) To DB9PR04MB9452.eurprd04.prod.outlook.com
 (2603:10a6:10:367::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR04MB9452:EE_|AM8PR04MB7268:EE_
X-MS-Office365-Filtering-Correlation-Id: 055c888e-5a33-4496-8d42-08dc31c39324
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 hOezVlKu5CEAlRNprAANOoyWDflbosIT/diti3kwajudNZ34QMR21HclLhY36MY8woHONK3Ec3cT+Kni8vpK+J/ggHYbBeA61JDBgsaYNeguuG5GC7GsmyIIaJnpQT232VuFIGUb66WEaC2IkMwTc7h6HY/B9RUHils2w+Ss1IKyf2xObuizmuEBM3sizy/Da/o2jDxOjwn+fyKNHuMSNiCaEe75521dZ/7FpSGRZyMonPnk2aAqEnABeqEyDgtrQA0oUuw55lyIMQMyJhAmDHR5U3PNCY76bNKB7JT3MqeVlPxHRIoF+rQnTwVKt+5ObrZ5vwQzkOy3ndOoEEMNPH5l1oPQXmT9lFERDxeDRgJM++kcS+I5u4BYQ/X5f6CgLJ1JyZ07z34ZzizIjV6t/2YA+ckX/fijeCDqH9etSgiuQmFxYlbLc8QtWlWkz8od6hJ99DlRkEBoItdRDJO19Z5n0GmbyUOUUIIn22M6VPMUAFr3bFE/moFksdmN+G0sua25VHgulHCF+00beOu93K71r+Jtsfm94SEbOWPelgpGHHk7uH2nB/era02zkaOZMgzlHNJoHKy0MMO96kHpPEwGsxTInnuv5CvxQ7reCZFY4GVMTjqNlic++Sbed7xW
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?1Jb8hyncVXGj8D9pb3yBr6+bVIDir4B+ZbCAGPrQTbVXTQq0mVVR0NCvKGNe?=
 =?us-ascii?Q?NRdrNH6HO6Ac/mzuJ27TvvUH3PBUZ3sIjqQ7t0MPDJhTU087Krm74/coVhTQ?=
 =?us-ascii?Q?mry94PS53K+yHJsiBqUBC1QaRemrAKAkDZT7eaPBR92Q9PASpb2iMeIprJzN?=
 =?us-ascii?Q?ohhzzhBeMRqVSGXnIipOslwEhjvuObzxRP3rUUVNqNxEW9FeLWsCEIXMcC5I?=
 =?us-ascii?Q?xiWaz+JCJtgCLz0Nv8f36Dw541QHO/mHqA4aFr77Mj6L7AVuws2xDp/A4vuP?=
 =?us-ascii?Q?gcBN+njtAnY7L6MXTcJnVx/WbBvGSf7+i4DF1PtXjr0DamEazTDL0+kwPz8S?=
 =?us-ascii?Q?nsAQbTwvdVv+FMCw0mD4Zk9/o+h9AFKG2S3VNOKmi3Ehi/1vi3qqBc5nrWJD?=
 =?us-ascii?Q?MiZon6n0lt81NAncbn17TzQsvgKDUgOe68jAHgZDGGnYw8/bUWuXuKU0io2G?=
 =?us-ascii?Q?O/zpqdumHA/WV25o/sH7bjAQol8ECUrN03kVEVkpnJDgykqYBpFFgWeYnKRg?=
 =?us-ascii?Q?mUMUAm3imJob+TxyYPvNejuKh40xz0WzT76TMUdL0/dgsM2m7GSJdPrjv9tI?=
 =?us-ascii?Q?TxapViMtx1SmrrQ6k3cewHH8X2uS2qtg0mfbgkg311d/uUR6P/TY/kTu11R3?=
 =?us-ascii?Q?B1rC1KNm/9GaQi1OFxyakEv+sBrt1y3MDGeOuaQ7dlMb38GHwJI4eCZDe6tC?=
 =?us-ascii?Q?5Jo0pqnzDf+duyLSE8+17xfV9OeA4Ye38hfCemixNjfNLDSPXtunV/YQJfYj?=
 =?us-ascii?Q?R/LNz0ezsmctI/uBCN0IcZTnygPWAjW9xyjdDlwMxWSk7vfkHiFKZE1uNIEv?=
 =?us-ascii?Q?R+Zi7uPaNnywQPJoFWjAVCXlEkD3Nzd46yIl6vgFXpU7A76O5kEr6twDbC6S?=
 =?us-ascii?Q?TOiOVgXMIh5dhaYir1QL0+dVk7EsOKnN9SOl40m4KG30NUEA5gegNlxchOgh?=
 =?us-ascii?Q?88svyTDw2FcPzyq4e8X8r1P1Pjr+Tu9aK+rVht1NdjbWtQVcib6hRyDFY04X?=
 =?us-ascii?Q?SyDRXEb/Z0Al2jz6rAnIe5pghnoGE+avFzZmEX94/5JqJZ84juU42crZVlHf?=
 =?us-ascii?Q?QSboLx4D73edoIw/dMlDmolPqusyJ65WX01ph9H60lBDmG2GeOh0xbBkrvCU?=
 =?us-ascii?Q?Zcd7W85GwnMVsRem0JUTl+BkozvB0LOglVzQAX+gZ15SJN+O0QCsFv7eUXbH?=
 =?us-ascii?Q?k8EsLgB1mc7x6YUsx3NzcE7groIT5ND5qr4niQeSAw39T9hHbvCKPxRNwkpJ?=
 =?us-ascii?Q?x+aLPD2VGl9tQZ2c7GPSZIRwSmjBvukbEn6WC1GGHeQ89EkqwLydjMCaiGj3?=
 =?us-ascii?Q?+O3BiYS7NClvj1n/9lnvGBNNPWGbMTnXkQJZ4jh38v6maTACU5g4Mwv59go/?=
 =?us-ascii?Q?R90+323c6PCgrpeaXppZiVj4w+OPhN+o0bobR3OF4I6U2MZTm2N9j44iS+Ww?=
 =?us-ascii?Q?YFeHV9pNqDyCqAHtdFB0Vpy1FgRic8UvAacv/0G3BOV96w441pdJJWWAbDuV?=
 =?us-ascii?Q?/g2w7irMXdLzzK1eQLI37FNVAQAJD8GsvboXL9ugoXGxWU/SvOfXjwB4U1VZ?=
 =?us-ascii?Q?ZdgVvkheuC4lLOk0RL+6h6UtjHwY1311giL0xyx+?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 055c888e-5a33-4496-8d42-08dc31c39324
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 03:25:23.8306
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5GgRLg61y9Pe5iG5sZXAMbGPgX9xtBMYIU+5P7rkAqu0fPf9Nr2HNI6zB+C2plI2cGBBK0QkZr7RIMy3JqfzXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7268

Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v9->v14:
 *No change.

 .../display/bridge/cdns,mhdp8501.yaml         | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
new file mode 100644
index 0000000000000..3ae643845cfee
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP8501 DP/HDMI bridge
+
+maintainers:
+  - Sandor Yu <Sandor.yu@nxp.com>
+
+description:
+  Cadence MHDP8501 DisplayPort/HDMI interface.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mq-mhdp8501
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: MHDP8501 DP/HDMI APB clock.
+
+  phys:
+    maxItems: 1
+    description:
+      phandle to the DisplayPort or HDMI PHY
+
+  interrupts:
+    items:
+      - description: Hotplug cable plugin.
+      - description: Hotplug cable plugout.
+
+  interrupt-names:
+    items:
+      - const: plug_in
+      - const: plug_out
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Input port from display controller output.
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output port to DisplayPort or HDMI connector.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - interrupt-names
+  - phys
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mhdp: display-bridge@32c00000 {
+        compatible = "fsl,imx8mq-mhdp8501";
+        reg = <0x32c00000 0x100000>;
+        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "plug_in", "plug_out";
+        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+        phys = <&dp_phy>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                mhdp_in: endpoint {
+                    remote-endpoint = <&dcss_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                mhdp_out: endpoint {
+                    remote-endpoint = <&dp_connector>;
+                };
+            };
+        };
+    };
-- 
2.34.1


