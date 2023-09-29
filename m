Return-Path: <devicetree+bounces-4632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7E27B3513
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7F4AE283D68
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737D55122A;
	Fri, 29 Sep 2023 14:31:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45DE513A1;
	Fri, 29 Sep 2023 14:31:23 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AF701B1;
	Fri, 29 Sep 2023 07:31:19 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38TAOfjm029808;
	Fri, 29 Sep 2023 16:30:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=apmR9NexQ/8WbLPgYVyxeXpYfq/o9RQRCXymLFPMQxI=; b=iN
	B/hU4VJJMZ6ThUdLl9cICPc8C1QE/QGarir/cUgnwcREDSS5FTzWsVv2pcPGYsr2
	ljKXfU3ijPtlZlJUZgpAHoTzp1/wNTZOwm3ak5TcpdjNAiDTwqcC8qjPH8HdZ49R
	U+KdApy+oBLND5C3ItdvnVLHpju3coa3PH+7WKuYHHNVPBiCZzVSDbzV8bckvB5L
	tlgwp3P1SdoM67y9uZRfzBqeoh4RyN8RUGP5RmOm23AkJjJ7U/4654kchSdYjsXy
	iD/gIiU6c4LrdQI4u8CimZM2bgxZdxIgLRrMrfOJBnBGZqU5vPbni6areTz7mVqF
	aNkAnqvWq83J1K9Ui3dA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tcq63h6m5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 16:30:37 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8823510005D;
	Fri, 29 Sep 2023 16:30:36 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 78B1625AF10;
	Fri, 29 Sep 2023 16:30:36 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 29 Sep
 2023 16:30:36 +0200
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Gatien Chevallier
	<gatien.chevallier@foss.st.com>
Subject: [PATCH v5 02/11] dt-bindings: treewide: add access-controller description
Date: Fri, 29 Sep 2023 16:28:43 +0200
Message-ID: <20230929142852.578394-3-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230929142852.578394-1-gatien.chevallier@foss.st.com>
References: <20230929142852.578394-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_13,2023-09-28_03,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

access-controller is an optional property that allows a peripheral to
refer to one or more domain access controller(s).

Description of this property is added to all peripheral binding files of
the peripheral under the STM32 firewall controllers. It allows an accurate
representation of the hardware, where various peripherals are connected
to this firewall bus. The firewall can then check the peripheral accesses
before allowing it to probe.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V5:
	- Discarded review tags as the content has changed
	- Renamed feature-domains to access-controller
	- Removed extra blank line in st,stm32-timers.yaml

Changes in V4:
	- Added Jonathan's tag for IIO

Changes in V2:
	- Add missing "feature-domains" property declaration
	  in bosch,m_can.yaml and st,stm32-cryp.yaml files

 Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml   | 4 ++++
 Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml   | 4 ++++
 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml       | 4 ++++
 Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml    | 4 ++++
 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml       | 4 ++++
 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml   | 4 ++++
 .../devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml       | 4 ++++
 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml   | 4 ++++
 Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml | 4 ++++
 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml    | 4 ++++
 .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml        | 4 ++++
 Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml   | 4 ++++
 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml    | 4 ++++
 Documentation/devicetree/bindings/mmc/arm,pl18x.yaml          | 4 ++++
 Documentation/devicetree/bindings/net/can/bosch,m_can.yaml    | 4 ++++
 Documentation/devicetree/bindings/net/stm32-dwmac.yaml        | 4 ++++
 Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml  | 4 ++++
 .../devicetree/bindings/regulator/st,stm32-vrefbuf.yaml       | 4 ++++
 Documentation/devicetree/bindings/rng/st,stm32-rng.yaml       | 4 ++++
 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml   | 4 ++++
 Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml     | 4 ++++
 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml     | 4 ++++
 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml | 4 ++++
 Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml      | 4 ++++
 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml       | 4 ++++
 Documentation/devicetree/bindings/usb/dwc2.yaml               | 4 ++++
 26 files changed, 104 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
index 0ddeb8a9a7a0..509f446163d7 100644
--- a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
+++ b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
@@ -46,6 +46,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
index ac480765cde0..65f6d66a67f8 100644
--- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
+++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
@@ -51,6 +51,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
index 329847ef096a..3fbdef2f44e1 100644
--- a/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
@@ -82,6 +82,10 @@ properties:
     description: if defined, it indicates that the controller
       supports memory-to-memory transfer
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml b/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
index e722fbcd8a5f..d9d50d06117d 100644
--- a/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
+++ b/Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
@@ -28,6 +28,10 @@ properties:
   resets:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
index 94b75d9f66cd..a5b487e597ba 100644
--- a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
@@ -99,6 +99,10 @@ properties:
 
   wakeup-source: true
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
index 995cbf8cefc6..f6990267b7ef 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
@@ -93,6 +93,10 @@ properties:
   '#size-cells':
     const: 0
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 allOf:
   - if:
       properties:
diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
index 1970503389aa..f23b43531dbb 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
@@ -59,6 +59,10 @@ properties:
       If not, SPI CLKOUT frequency will not be accurate.
     maximum: 20000000
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml b/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
index 04045b932bd2..de76b4d168e3 100644
--- a/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
@@ -45,6 +45,10 @@ properties:
   '#size-cells':
     const: 0
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 additionalProperties: false
 
 required:
diff --git a/Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml b/Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml
index 2314a9a14650..91614846f062 100644
--- a/Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml
+++ b/Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml
@@ -29,6 +29,10 @@ properties:
       - const: cec
       - const: hdmi-cec
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
index 6b3e413cedb2..1d0d10a80417 100644
--- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
+++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
@@ -36,6 +36,10 @@ properties:
   resets:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
     unevaluatedProperties: false
diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
index 14f1833d37c9..96544f58e52f 100644
--- a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
@@ -45,6 +45,10 @@ properties:
       Reflects the memory layout with four integer values per bank. Format:
       <bank-number> 0 <address of the bank> <size>
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 patternProperties:
   "^.*@[0-4],[a-f0-9]+$":
     additionalProperties: true
diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
index 27329c5dc38e..3de122231e4c 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
@@ -44,6 +44,10 @@ properties:
 
   wakeup-source: true
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
   pwm:
     type: object
     additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
index f84e09a5743b..36718087b894 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
@@ -67,6 +67,10 @@ properties:
   "#size-cells":
     const: 0
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
   pwm:
     type: object
     additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
index 2459a55ed540..abd61e1e79ff 100644
--- a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
+++ b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
@@ -79,6 +79,10 @@ properties:
           - const: rx
           - const: tx
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
   power-domains: true
 
   resets:
diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index f9ffb963d6b1..9b7d2757f257 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -118,6 +118,10 @@ properties:
   phys:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
index fc8c96b08d7d..7a9c46228fb0 100644
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -93,6 +93,10 @@ properties:
       select RCC clock instead of ETH_REF_CLK.
     type: boolean
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index 24a3dbde223b..07c698030c4a 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -55,6 +55,10 @@ properties:
     description: number of clock cells for ck_usbo_48m consumer
     const: 0
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 # Required child nodes:
 
 patternProperties:
diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
index 05f4ad2c7d3a..76ad07daac3c 100644
--- a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
+++ b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
@@ -30,6 +30,10 @@ properties:
   vdda-supply:
     description: phandle to the vdda input analog voltage.
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
index 187b172d0cca..0a73731bab16 100644
--- a/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
@@ -30,6 +30,10 @@ properties:
     type: boolean
     description: If set enable the clock detection management
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
index 1df8ffe95fc6..6d8d58e81088 100644
--- a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
@@ -70,6 +70,10 @@ properties:
     enum: [1, 2, 4, 8, 12, 14, 16]
     default: 8
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 allOf:
   - $ref: rs485.yaml#
   - $ref: serial.yaml#
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml b/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
index b9111d375b93..eb0daa776870 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
@@ -65,6 +65,10 @@ properties:
     $ref: audio-graph-port.yaml#
     unevaluatedProperties: false
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - "#sound-dai-cells"
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
index 59df8a832310..b92a08cbce35 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
+++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
@@ -48,6 +48,10 @@ properties:
   clock-names:
     maxItems: 3
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
index bc48151b9adb..0b364d07d693 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
+++ b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
@@ -50,6 +50,10 @@ properties:
   resets:
     maxItems: 1
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - "#sound-dai-cells"
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
index 8bba965a9ae6..1216341e7cc9 100644
--- a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
@@ -46,6 +46,10 @@ properties:
       - const: tx
       - const: rx
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
index 9ca1a843c820..9cf6768d475d 100644
--- a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
@@ -59,6 +59,10 @@ properties:
       - const: rx
       - const: tx
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 patternProperties:
   "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-f]+$":
     type: object
diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 0a5c98ea711d..56962d0d26fb 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -172,6 +172,10 @@ properties:
 
   tpl-support: true
 
+  access-controller:
+    minItems: 1
+    maxItems: 2
+
 dependencies:
   port: [ usb-role-switch ]
   role-switch-default-mode: [ usb-role-switch ]
-- 
2.25.1


