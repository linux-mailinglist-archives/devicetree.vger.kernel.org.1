Return-Path: <devicetree+bounces-4326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F5C7B20BB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 30297B20D8C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9849D4E271;
	Thu, 28 Sep 2023 15:15:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67D14E282;
	Thu, 28 Sep 2023 15:15:54 +0000 (UTC)
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3041A1;
	Thu, 28 Sep 2023 08:15:51 -0700 (PDT)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38SE3eMV005297;
	Thu, 28 Sep 2023 17:15:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=Murv1XK1UiktKIyTFV+yWE0qG+F/vgc4NPP2uXsTpV0=; b=Pe
	lbzRdq4O0l7J7WTBn3WgEynSid8RFgK1SRFRl+prBNB0hgiWpvCzk1hbVErZ5IV5
	FxeF6GSP4/JGeOW2Nru5hmDF96/X8JCLwh4wEtrUlrshiRi1oIe3a6Q24jpLQyAs
	L+byUzMNfsbbEP/AsqCHtCiWjBuAs2e6cRsTGbQKgL7vBmP+/Er4vw3mU1AHNWF1
	b43zfAx8WS3o/LlTNWdZswGpeRG5FBIB+w04bz+5pKjjFPVZlgMKq1DiJe7HVMLd
	QJaMDa/QmhJbgfq2FyFXEgLYb89ykHUvVSLzctqbvRriYk5VoyqSLzsQlqTDt4WJ
	xP8FGIzDDZ5oPdZdvmMQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3taayhwhk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 17:15:17 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3C43F100058;
	Thu, 28 Sep 2023 17:15:17 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3174B233004;
	Thu, 28 Sep 2023 17:15:17 +0200 (CEST)
Received: from localhost (10.201.21.249) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 28 Sep
 2023 17:15:16 +0200
From: Christophe Roullier <christophe.roullier@foss.st.com>
To: "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark
 Brown <broonie@kernel.org>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>
CC: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 01/12] dt-bindings: net: add STM32MP13 compatible in documentation for stm32
Date: Thu, 28 Sep 2023 17:15:01 +0200
Message-ID: <20230928151512.322016-2-christophe.roullier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230928151512.322016-1-christophe.roullier@foss.st.com>
References: <20230928151512.322016-1-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.21.249]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_14,2023-09-28_02,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

New STM32 SOC have 2 GMACs instances.
GMAC IP version is SNPS 4.20.

Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
---
 .../devicetree/bindings/net/stm32-dwmac.yaml  | 78 +++++++++++++++++--
 1 file changed, 70 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
index fc8c96b08d7dc..ca976281bfc22 100644
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -22,18 +22,17 @@ select:
         enum:
           - st,stm32-dwmac
           - st,stm32mp1-dwmac
+          - st,stm32mp13-dwmac
   required:
     - compatible
 
-allOf:
-  - $ref: snps,dwmac.yaml#
-
 properties:
   compatible:
     oneOf:
       - items:
           - enum:
               - st,stm32mp1-dwmac
+              - st,stm32mp13-dwmac
           - const: snps,dwmac-4.20a
       - items:
           - enum:
@@ -74,13 +73,10 @@ properties:
 
   st,syscon:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-    items:
-      - items:
-          - description: phandle to the syscon node which encompases the glue register
-          - description: offset of the control register
     description:
       Should be phandle/offset pair. The phandle to the syscon node which
-      encompases the glue register, and the offset of the control register
+      encompases the glue register, the offset of the control register and
+      the mask to set bitfield in control register
 
   st,eth-clk-sel:
     description:
@@ -101,6 +97,38 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: snps,dwmac.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,stm32mp1-dwmac
+              - st,stm32-dwmac
+    then:
+      properties:
+        st,syscon:
+          items:
+            items:
+              - description: phandle to the syscon node which encompases the glue register
+              - description: offset of the control register
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,stm32mp13-dwmac
+    then:
+      properties:
+        st,syscon:
+          items:
+            items:
+              - description: phandle to the syscon node which encompases the glue register
+              - description: offset of the control register
+              - description: field to set mask in register
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -161,3 +189,37 @@ examples:
            snps,pbl = <8>;
            phy-mode = "mii";
        };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    #include <dt-bindings/mfd/stm32h7-rcc.h>
+    //Example 4
+     ethernet3: ethernet@5800a000 {
+           compatible = "st,stm32mp13-dwmac", "snps,dwmac-4.20a";
+           reg = <0x5800a000 0x2000>;
+           reg-names = "stmmaceth";
+           interrupts-extended = <&intc GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>,
+                                 <&exti 68 IRQ_TYPE_LEVEL_HIGH>;
+           interrupt-names = "macirq",
+                             "eth_wake_irq";
+           clock-names = "stmmaceth",
+                         "mac-clk-tx",
+                         "mac-clk-rx",
+                         "eth-ck",
+                         "ptp_ref",
+                         "ethstp";
+           clocks = <&rcc ETHMAC>,
+                    <&rcc ETHTX>,
+                    <&rcc ETHRX>,
+                    <&rcc ETHCK_K>,
+                    <&rcc ETHPTP_K>,
+                    <&rcc ETHSTP>;
+           st,syscon = <&syscfg 0x4 0xff0000>;
+           snps,mixed-burst;
+           snps,pbl = <2>;
+           snps,axi-config = <&stmmac_axi_config_1>;
+           snps,tso;
+           phy-mode = "rmii";
+     };
-- 
2.25.1


