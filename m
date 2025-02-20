Return-Path: <devicetree+bounces-148776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD50A3D5EC
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4613F1686CE
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9C91EE7D3;
	Thu, 20 Feb 2025 10:05:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42af.mail.infomaniak.ch (smtp-42af.mail.infomaniak.ch [84.16.66.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57011D7984
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740045920; cv=none; b=b5DDmEi1qQIseaSDHslAiLTt8+jmmXL7wdrNwAnJh2PCeoO3eKlPtJ4YrwRZMnARZebe/w6EQUF2GTuYfMGsGiduw9GNobHOtYYK7e312M9B5A95L8J6g02eyWLRcxn5glbnj8PT/bm7bDtlkXzddOI68H4Xr7d7Uxi2LDBo3SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740045920; c=relaxed/simple;
	bh=bf8g/YXdtx1VUish3C6E+kFkY2PnMDnh+fkHBlxDPfk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TAuHgjFnGlmLgABq3Hi/6HG3Mc3X8cHmuK3g+OGPJVcJ88Aosy+yxRON0Ch6iqcGcN/lG+bwd9uvXPZCvKGB++gNQff2gRU4qKqLnGPhh/JMTcSXVG7fIupUiiP1/b/68HPG2fcPMCxy/gREf0WspSgJa5JV611yPf21aVYSK1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Yz7w86PKwzXcq;
	Thu, 20 Feb 2025 10:57:12 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Yz7w82DM1zcNN;
	Thu, 20 Feb 2025 10:57:12 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 20 Feb 2025 10:56:51 +0100
Subject: [PATCH 1/2] dt-bindings: gpio: nxp,pcf8575: add reset GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-pca976x-reset-driver-v1-1-6abbf043050e@cherry.de>
References: <20250220-pca976x-reset-driver-v1-0-6abbf043050e@cherry.de>
In-Reply-To: <20250220-pca976x-reset-driver-v1-0-6abbf043050e@cherry.de>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

A few of the I2C GPIO expander chips supported by this binding have a
RESETN pin to be able to reset the chip. The chip is held in reset while
the pin is low, therefore the polarity of reset-gpios is expected to
reflect that, i.e. a GPIO_ACTIVE_HIGH means the GPIO will be held low
for reset and released high, GPIO_ACTIVE_LOW means the GPIO will be held
high for reset and released low.

Out of the supported chips, only PCA9670, PCA9671, PCA9672 and PCA9673
show a RESETN pin in their datasheets. They all share the same reset
timings, that is 4+us reset pulse[0] and 100+us reset time[0].

When performing a reset, "The PCA9670 registers and I2C-bus state
machine will be held in their default state until the RESET input is
once again HIGH."[1] meaning we now know the state of each line
controlled by the GPIO expander. Therefore, setting lines-initial-states
and reset-gpios both does not make sense and their presence is XOR'ed.

[0] https://www.nxp.com/docs/en/data-sheet/PCA9670.pdf Fig 22.
[1] https://www.nxp.com/docs/en/data-sheet/PCA9670.pdf 8.5

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 .../devicetree/bindings/gpio/nxp,pcf8575.yaml      | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml b/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
index 3718103e966a13e1d77f73335ff73c18a3199469..d08d3f848f82e74de949da16d26a810dc52a74e5 100644
--- a/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
+++ b/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
@@ -73,6 +73,39 @@ properties:
 
   wakeup-source: true
 
+  reset-gpios:
+    maxItems: 1
+    description:
+      GPIO controlling the (reset active LOW) RESET# pin.
+
+      Performing a reset makes all lines initialized to their input (pulled-up)
+      state.
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              enum:
+                - nxp,pca9670
+                - nxp,pca9671
+                - nxp,pca9672
+                - nxp,pca9673
+    then:
+      properties:
+        reset-gpios: false
+
+  # lines-initial-states XOR reset-gpios
+  # Performing a reset reinitializes all lines to a known state which
+  # may not match passed lines-initial-states
+  - if:
+      required:
+        - lines-initial-states
+    then:
+      properties:
+        reset-gpios: false
+
 patternProperties:
   "^(.+-hog(-[0-9]+)?)$":
     type: object

-- 
2.48.1


