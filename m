Return-Path: <devicetree+bounces-100109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AAA96C355
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 18:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD7A31C22B0A
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C611DB55E;
	Wed,  4 Sep 2024 16:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AhDVqQ/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE5286A8;
	Wed,  4 Sep 2024 16:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725465822; cv=none; b=bDabBMcp9mcmP3DwO2pGFcANGZ4jHpWf16iVO2Aj3//petaCvD7gmRgShkxLlhboGqlVxSBnmDF5H8F55R0pztLfbNtQgCbRT1jT7pznxoRrBhvMY6U3GIU3Ij7L/AShVDOdeAmPyjaAQgyXaW8mDNVjiQNuZp8t5ZlA+U/Th9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725465822; c=relaxed/simple;
	bh=mDVeSNxG4rNu3lNSkzbizKhxtvzRMwvgrSJSR2oDMl8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OlIt8Vvw+21wNW7C9VAwGMTA9xOhNU4/qm0Nlj4v/KYKl9e4Q0kZIlUbwfxaeFQ+MZpanSuvFczUQq3YiUaUmRW2NQ36KdL+KLqW02Jl978PAOKrChbjOkw82UT4GBhScTxpDaVfoFeF4W9bSo1U71JNWrMhdQW7FPZpJFllW3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AhDVqQ/T; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2d873dc644dso3711058a91.3;
        Wed, 04 Sep 2024 09:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725465819; x=1726070619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iXvjxywx0ZOOfozqUhkAA5VX8qpuKIVMgfiBbRLyu0g=;
        b=AhDVqQ/TeKg+BtnO8knRj9yNbrrvhwZ4yaOlnZAfYn3F4iUf3xM+RTyNIGaxbOexUh
         DbI6VbcEj+A48n0zmyQIosRU1/g5AQv+KYo7NMmlAVc7zvrnrwAKKfFqD9t3GeGimfyv
         c1YikKKHfhqzwJYGWP7JqZhL2k6Pi/j2ceDs6awvn5LGkIfgmrQ+OKyP7Xa9BFFCiFAl
         ZK6PQfniQ6GfreDdsQB9yW5yBerkGB6Z9j7LeUD6NFwbwXpmhawR1TjFRcHAEnG7d4k7
         2MPQL+kVo6XHLP6Wbct2Qy94OpUi6GEKvFHayENoiYWBDm+pgr5O/cb7eZSN3x6I4vph
         pPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725465819; x=1726070619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iXvjxywx0ZOOfozqUhkAA5VX8qpuKIVMgfiBbRLyu0g=;
        b=rtNEDFTTRTILi5sULTRYAprf4bfv1tTjxPiMStEPDam41OvPisBB4ab05G2019HwXy
         xGZZMy/myVce2+gz7r0O3o5Ioauek8/jdAlybXfxgOQOtgQrwwjBFppAv3pypBptCssx
         ZYtJmYBvBdvv92EK4VW5u3GHhA4oh3qgcS18CLNV6vdHkJfwzB7Su5uzNJQ6iXje0gMg
         BAHa0FKy3bVwQjrF9PAF5/NudPUPQ7Z6AEzUIS6x1fyy7WY9GiBWuV9klgNP29RlJwP2
         98L76tIi7De7GZ/j728WsOnGjkzirEnKCexhZle3i+riC7jlO16QTVYZUW2Z426gcLr3
         snbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHvDdQej9k6/vNcX27wIq3wrDH/Z0OODrsT7vPKgDtCbSqrB5q6fOVSucs+TtpFNop6KjSImJokk5Qptt8@vger.kernel.org, AJvYcCWIdlz83ne1gg5A8JEoArfqO4q6dsIUU8/nIpQnpOPpXF+pxC0JyqzjQCtmsnsTM1piDPm3Pkmvq07a@vger.kernel.org
X-Gm-Message-State: AOJu0YwGLWL4epy0N9Vsm/CtKyPilnyECTeWugOfZawQXR7U7cMX1JE3
	RjHULYJOyeE5mbENj6SWod44YjQ0PCQ561hd64+zB8hP/wlOsTR/
X-Google-Smtp-Source: AGHT+IGj7Bv+k8+EZXPtT/kCKKJIViV8gPascMHaMz4rNaqnZjYmloqXY2EkNoyF5YShiUELZ0MY9A==
X-Received: by 2002:a17:90b:c12:b0:2d3:b49f:ace3 with SMTP id 98e67ed59e1d1-2d85638576dmr21056666a91.28.1725465818653;
        Wed, 04 Sep 2024 09:03:38 -0700 (PDT)
Received: from eleanor-wkdl.. ([140.116.96.203])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8445d5ba3sm16208359a91.11.2024.09.04.09.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 09:03:37 -0700 (PDT)
From: Yu-Chun Lin <eleanor15x@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	laurent.pinchart@ideasonboard.com,
	visitorckw@gmail.com
Cc: Yu-Chun Lin <eleanor15x@gmail.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Subject: [PATCH v4] dt-bindings: Fix various typos
Date: Thu,  5 Sep 2024 00:01:18 +0800
Message-ID: <20240904160118.2773055-1-eleanor15x@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Corrected several typos in Documentatin/devicetree/bindings files.

Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>
Signed-off-by: Yu-Chun Lin <eleanor15x@gmail.com>
---
v3->v4
I squashed all previous version commits. 

v2->v3
Corrected "interlaved" to "interleaved"

v1->v2
Fixed more typos in dt-bindings files

I've dropped reviewed tags in v1 due to significant
changes in v2. So it would be helpful if Laurent Pinchart
and Kuan-Wei Chiu could review with the version.

v3
Link: https://lore.kernel.org/lkml/20240904125812.2761993-1-eleanor15x@gmail.com/

v2
Link: https://lore.kernel.org/lkml/20240903164242.2188895-1-eleanor15x@gmail.com/

v1
Link: https://lore.kernel.org/lkml/20240901133046.962263-1-eleanor15x@gmail.com/

 .../devicetree/bindings/arm/arm,coresight-dummy-source.yaml   | 2 +-
 Documentation/devicetree/bindings/cpu/idle-states.yaml        | 2 +-
 Documentation/devicetree/bindings/display/lvds.yaml           | 2 +-
 Documentation/devicetree/bindings/dma/ti-dma-crossbar.txt     | 2 +-
 Documentation/devicetree/bindings/iio/accel/lis302.txt        | 2 +-
 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml  | 2 +-
 Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml    | 2 +-
 .../devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt    | 2 +-
 .../devicetree/bindings/media/i2c/thine,thp7312.yaml          | 2 +-
 .../devicetree/bindings/media/samsung,exynos4210-fimc.yaml    | 2 +-
 Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml  | 2 +-
 Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml    | 2 +-
 Documentation/devicetree/bindings/mfd/twl6040.txt             | 2 +-
 .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 2 +-
 Documentation/devicetree/bindings/phy/apm-xgene-phy.txt       | 2 +-
 .../devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml     | 2 +-
 Documentation/devicetree/bindings/phy/mediatek,tphy.yaml      | 2 +-
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml     | 2 +-
 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml         | 4 ++--
 Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml     | 2 +-
 .../devicetree/bindings/serial/nvidia,tegra20-hsuart.yaml     | 2 +-
 Documentation/devicetree/bindings/sound/everest,es8326.yaml   | 2 +-
 Documentation/devicetree/bindings/sound/st,sta350.txt         | 2 +-
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml     | 2 +-
 24 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
index d50a60368e27..04a8c37b4aff 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
@@ -17,7 +17,7 @@ description: |
   The Coresight dummy source component is for the specific coresight source
   devices kernel don't have permission to access or configure. For some SOCs,
   there would be Coresight source trace components on sub-processor which
-  are conneted to AP processor via debug bus. For these devices, a dummy driver
+  are connected to AP processor via debug bus. For these devices, a dummy driver
   is needed to register them as Coresight source devices, so that paths can be
   created in the driver. It provides Coresight API for operations on dummy
   source devices, such as enabling and disabling them. It also provides the
diff --git a/Documentation/devicetree/bindings/cpu/idle-states.yaml b/Documentation/devicetree/bindings/cpu/idle-states.yaml
index 239480ef7c30..385b0a511652 100644
--- a/Documentation/devicetree/bindings/cpu/idle-states.yaml
+++ b/Documentation/devicetree/bindings/cpu/idle-states.yaml
@@ -385,7 +385,7 @@ patternProperties:
 
           This property is required in idle state nodes of device tree meant
           for RISC-V systems. For more details on the suspend_type parameter
-          refer the SBI specifiation v0.3 (or higher) [7].
+          refer the SBI specification v0.3 (or higher) [7].
 
       local-timer-stop:
         description:
diff --git a/Documentation/devicetree/bindings/display/lvds.yaml b/Documentation/devicetree/bindings/display/lvds.yaml
index 224db4932011..b74efbea3be2 100644
--- a/Documentation/devicetree/bindings/display/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/lvds.yaml
@@ -16,7 +16,7 @@ maintainers:
 description:
   This binding extends the data mapping defined in lvds-data-mapping.yaml.
   It supports reversing the bit order on the formats defined there in order
-  to accomodate for even more specialized data formats, since a variety of
+  to accommodate for even more specialized data formats, since a variety of
   data formats and layouts is used to drive LVDS displays.
 
 properties:
diff --git a/Documentation/devicetree/bindings/dma/ti-dma-crossbar.txt b/Documentation/devicetree/bindings/dma/ti-dma-crossbar.txt
index 47e477cce6d2..1f9831540c97 100644
--- a/Documentation/devicetree/bindings/dma/ti-dma-crossbar.txt
+++ b/Documentation/devicetree/bindings/dma/ti-dma-crossbar.txt
@@ -20,7 +20,7 @@ Optional properties:
 		memcpy channels in eDMA.
 
 Notes:
-When requesting channel via ti,dra7-dma-crossbar, the DMA clinet must request
+When requesting channel via ti,dra7-dma-crossbar, the DMA client must request
 the DMA event number as crossbar ID (input to the DMA crossbar).
 
 For ti,am335x-edma-crossbar: the meaning of parameters of dmas for clients:
diff --git a/Documentation/devicetree/bindings/iio/accel/lis302.txt b/Documentation/devicetree/bindings/iio/accel/lis302.txt
index 764e28ec1a0a..457539647f36 100644
--- a/Documentation/devicetree/bindings/iio/accel/lis302.txt
+++ b/Documentation/devicetree/bindings/iio/accel/lis302.txt
@@ -36,7 +36,7 @@ Optional properties for all bus drivers:
  - st,irq{1,2}-disable:		disable IRQ 1/2
  - st,irq{1,2}-ff-wu-1:		raise IRQ 1/2 on FF_WU_1 condition
  - st,irq{1,2}-ff-wu-2:		raise IRQ 1/2 on FF_WU_2 condition
- - st,irq{1,2}-data-ready:	raise IRQ 1/2 on data ready contition
+ - st,irq{1,2}-data-ready:	raise IRQ 1/2 on data ready condition
  - st,irq{1,2}-click:		raise IRQ 1/2 on click condition
  - st,irq-open-drain:		consider IRQ lines open-drain
  - st,irq-active-low:		make IRQ lines active low
diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index 0f4a062c9d6f..5f051c666cbe 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -60,7 +60,7 @@ properties:
       The 4th cell is a phandle to a node describing a set of CPUs this
       interrupt is affine to. The interrupt must be a PPI, and the node
       pointed must be a subnode of the "ppi-partitions" subnode. For
-      interrupt types other than PPI or PPIs that are not partitionned,
+      interrupt types other than PPI or PPIs that are not partitioned,
       this cell must be zero. See the "ppi-partitions" node description
       below.
 
diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
index 54d6d1f08e24..17e971903ee9 100644
--- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
+++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
@@ -66,7 +66,7 @@ patternProperties:
             IMAXled = 160000 * (592 / 600.5) * (1 / max-current-switch-number)
           And the minimum output current formula:
             IMINled = 3300 * (592 / 600.5) * (1 / max-current-switch-number)
-          where max-current-switch-number is determinated by led configuration
+          where max-current-switch-number is determined by led configuration
           and depends on how leds are physically connected to the led driver.
 
 allOf:
diff --git a/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt b/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
index c80065a1eb97..bf0c998b8603 100644
--- a/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
+++ b/Documentation/devicetree/bindings/mailbox/brcm,iproc-flexrm-mbox.txt
@@ -24,7 +24,7 @@ Required properties:
 		number of completion messages for which FlexRM will inject
 		one MSI interrupt to CPU.
 
-		The 3nd cell contains MSI timer value representing time for
+		The 3rd cell contains MSI timer value representing time for
 		which FlexRM will wait to accumulate N completion messages
 		where N is the value specified by 2nd cell above. If FlexRM
 		does not get required number of completion messages in time
diff --git a/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml b/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
index 1978fbb77a6c..535acf2b88a9 100644
--- a/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
@@ -16,7 +16,7 @@ description:
   can be connected to CMOS image sensors from various vendors, supporting both
   MIPI CSI-2 and parallel interfaces. It can also output on either MIPI CSI-2
   or parallel. The hardware is capable of transmitting and receiving MIPI
-  interlaved data strams with data types or multiple virtual channel
+  interleaved data streams with data types or multiple virtual channel
   identifiers.
 
 allOf:
diff --git a/Documentation/devicetree/bindings/media/samsung,exynos4210-fimc.yaml b/Documentation/devicetree/bindings/media/samsung,exynos4210-fimc.yaml
index 271d0577a83c..2ba27b230559 100644
--- a/Documentation/devicetree/bindings/media/samsung,exynos4210-fimc.yaml
+++ b/Documentation/devicetree/bindings/media/samsung,exynos4210-fimc.yaml
@@ -77,7 +77,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     maxItems: 2
     description: |
-      An array specyfing minimum image size in pixels at the FIMC input and
+      An array specifying minimum image size in pixels at the FIMC input and
       output DMA, in the first and second cell respectively.  Default value
       is <16 16>.
 
diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
index d381125a0a15..efee3de0d9ad 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
@@ -25,7 +25,7 @@ properties:
     description:
       The PMIC provides intb and errb IRQ lines. The errb IRQ line is used
       for fatal IRQs which will cause the PMIC to shut down power outputs.
-      In many systems this will shut down the SoC contolling the PMIC and
+      In many systems this will shut down the SoC controlling the PMIC and
       connecting/handling the errb can be omitted. However, there are cases
       where the SoC is not powered by the PMIC or has a short time backup
       energy to handle shutdown of critical hardware. In that case it may be
diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
index bc8b5940b1c5..a4be642de33c 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
@@ -53,7 +53,7 @@ properties:
   samsung,s2mps11-wrstbi-ground:
     description: |
       Indicates that WRSTBI pin of PMIC is pulled down. When the system is
-      suspended it will always go down thus triggerring unwanted buck warm
+      suspended it will always go down thus triggering unwanted buck warm
       reset (setting buck voltages to default values).
     type: boolean
 
diff --git a/Documentation/devicetree/bindings/mfd/twl6040.txt b/Documentation/devicetree/bindings/mfd/twl6040.txt
index 06e9dd7a0d96..dfd8683ede0c 100644
--- a/Documentation/devicetree/bindings/mfd/twl6040.txt
+++ b/Documentation/devicetree/bindings/mfd/twl6040.txt
@@ -2,7 +2,7 @@ Texas Instruments TWL6040 family
 
 The TWL6040s are 8-channel high quality low-power audio codecs providing audio,
 vibra and GPO functionality on OMAP4+ platforms.
-They are connected ot the host processor via i2c for commands, McPDM for audio
+They are connected to the host processor via i2c for commands, McPDM for audio
 data and commands.
 
 Required properties:
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 68c5ed111417..693ac91c5e05 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -72,7 +72,7 @@ properties:
     description: VDD_RFA_CMN supply regulator handle
 
   vddrfa0p8-supply:
-    description: VDD_RFA_0P8 suppply regulator handle
+    description: VDD_RFA_0P8 supply regulator handle
 
   vddrfa1p7-supply:
     description: VDD_RFA_1P7 supply regulator handle
diff --git a/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt b/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt
index e1bb12711fbf..602cf952b92b 100644
--- a/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt
+++ b/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt
@@ -36,7 +36,7 @@ Optional properties:
 			  3-tuple setting for each (up to 3) supported link
 			  speed on the host. Range is 0 to 273000 in unit of
 			  uV. Default is 0.
-- apm,tx-pre-cursor2	: 2st pre-cursor emphasis taps control. Two set of
+- apm,tx-pre-cursor2	: 2nd pre-cursor emphasis taps control. Two set of
 			  3-tuple setting for each (up to 3) supported link
 			  speed on the host. Range is 0 to 127400 in unit uV.
 			  Default is 0x0.
diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml
index cfb3ca97f87c..cc9d0d4eeeeb 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml
@@ -41,7 +41,7 @@ properties:
     description:
       One instance of the T-PHY on MT7988 suffers from a performance
       problem in 10GBase-R mode which needs a work-around in the driver.
-      This flag enables a work-around ajusting an analog phy setting and
+      This flag enables a work-around adjusting an analog phy setting and
       is required for XFI Port0 of the MT7988 SoC to be in compliance with
       the SFP specification.
 
diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index acba0720125d..423b7c4e62f2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -240,7 +240,7 @@ patternProperties:
           The force mode is used to manually switch the shared phy mode between
           USB3 and PCIe, when USB3 phy type is selected by the consumer, and
           force-mode is set, will cause phy's power and pipe toggled and force
-          phy as USB3 mode which switched from default PCIe mode. But perfer to
+          phy as USB3 mode which switched from default PCIe mode. But prefer to
           use the property "mediatek,syscon-type" for newer SoCs that support it.
         type: boolean
 
diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 90d79491e281..d16a543a7848 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -43,7 +43,7 @@ properties:
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
-    description: High-Speed trasmit amplitude
+    description: High-Speed transmit amplitude
     minimum: 0
     maximum: 15
     default: 8
diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index e1eb45a9eda4..a28d77748095 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Alexandre TORGUE <alexandre.torgue@foss.st.com>
 
 description: |
-  STMicroelectronics's STM32 MCUs intregrate a GPIO and Pin mux/config hardware
+  STMicroelectronics's STM32 MCUs integrate a GPIO and Pin mux/config hardware
   controller. It controls the input/output settings on the available pins and
   also provides ability to multiplex and configure the output of various
   on-chip controllers onto these pads.
@@ -164,7 +164,7 @@ patternProperties:
               This macro is available here:
                 - include/dt-bindings/pinctrl/stm32-pinfunc.h
               Some examples of using macro:
-               /* GPIO A9 set as alernate function 2 */
+               /* GPIO A9 set as alternate function 2 */
                ... {
                           pinmux = <STM32_PINMUX('A', 9, AF2)>;
                };
diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
index c5dc3c2820d7..adc6b3f36fde 100644
--- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
@@ -93,7 +93,7 @@ patternProperties:
       Each SCP core has own cache memory. The SRAM and L1TCM are shared by
       cores. The power of cache, SRAM and L1TCM power should be enabled
       before booting SCP cores. The size of cache, SRAM, and L1TCM are varied
-      on differnt SoCs.
+      on different SoCs.
 
       The SCP cores do not use an MMU, but has a set of registers to
       control the translations between 32-bit CPU addresses into system bus
diff --git a/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.yaml b/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.yaml
index a5d67563cd53..29d48da81531 100644
--- a/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.yaml
+++ b/Documentation/devicetree/bindings/serial/nvidia,tegra20-hsuart.yaml
@@ -78,7 +78,7 @@ properties:
       we use nvidia,adjust-baud-rates.
 
       As an example, consider there is deviation observed in TX for baud rates as listed below. 0
-      to 9600 has 1% deviation 9600 to 115200 2% deviation. This slight deviation is expcted and
+      to 9600 has 1% deviation 9600 to 115200 2% deviation. This slight deviation is expected and
       Tegra UART is expected to handle it. Due to the issue stated above, baud rate on Tegra UART
       should be set equal to or above deviation observed for avoiding frame errors. Property
       should be set like this:
diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
index 8c82d47375ec..d51431df7acf 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8326.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
@@ -32,7 +32,7 @@ properties:
     description: |
       just the value of reg 57. Bit(3) decides whether the jack polarity is inverted.
       Bit(2) decides whether the button on the headset is inverted.
-      Bit(1)/(0) decides the mic properity to be OMTP/CTIA or auto.
+      Bit(1)/(0) decides the mic property to be OMTP/CTIA or auto.
     minimum: 0x00
     maximum: 0x0f
     default: 0x0f
diff --git a/Documentation/devicetree/bindings/sound/st,sta350.txt b/Documentation/devicetree/bindings/sound/st,sta350.txt
index 307398ef2317..e3d84864e0e4 100644
--- a/Documentation/devicetree/bindings/sound/st,sta350.txt
+++ b/Documentation/devicetree/bindings/sound/st,sta350.txt
@@ -77,7 +77,7 @@ Optional properties:
 
   -  st,odd-pwm-speed-mode:
 	If present, PWM speed mode run on odd speed mode (341.3 kHz) on all
-	channels. If not present, normal PWM spped mode (384 kHz) will be used.
+	channels. If not present, normal PWM speed mode (384 kHz) will be used.
 
   -  st,distortion-compensation:
 	If present, distortion compensation variable uses DCC coefficient.
diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 72048c5a0412..f188fd6b6fbf 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -310,7 +310,7 @@ examples:
 
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    // Example 1 (new calbiration data: for pre v1 IP):
+    // Example 1 (new calibration data: for pre v1 IP):
     thermal-sensor@4a9000 {
         compatible = "qcom,msm8916-tsens", "qcom,tsens-v0_1";
         reg = <0x4a9000 0x1000>, /* TM */
-- 
2.43.0


