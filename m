Return-Path: <devicetree+bounces-150289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 891A1A41A62
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F6FA188AEDB
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F95B241690;
	Mon, 24 Feb 2025 10:10:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-8fa9.mail.infomaniak.ch (smtp-8fa9.mail.infomaniak.ch [83.166.143.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D755A24A044
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740391814; cv=none; b=VjfJUPs+M+CHGi6I9eZ7pjfslTguG9lYOD4zHnbQHyVGx7UL87zGm4SlZ5MIu/63huUfTgvrGqguj7oijb3uNDAU7Kclc+N+xlfUgJQwjzSxWEH7VEv3C1eFN+7eymKkIn7YsT9rmiMM5rPMRel5TmGmThn/uBu/jVYw+4B1ZPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740391814; c=relaxed/simple;
	bh=8hA1pc5M55QlmWKkVrcEHKEe8AcgBBvC20RbeGf0ld8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EmcRsV4L+Nf6VYFG54RGfBOEMsegVtw89nlqQOf+Z6dOlURSO7uB+OvMLA28GYxjrOHoBC4PDmlrUGtVHSMqA7QqKR99Z9Z6z9L6GIIMXmUH1rxE5Tt1pCe0mAJNXwJB40TZoHxVrJYOssGzC/WI+U23wpp2GH/BBYk/FI1UPgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=83.166.143.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Z1bsc1ktqzKy4;
	Mon, 24 Feb 2025 11:03:32 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Z1bsb3hkPzQ2b;
	Mon, 24 Feb 2025 11:03:31 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 24 Feb 2025 11:03:21 +0100
Subject: [PATCH v3 1/2] dt-bindings: gpio: nxp,pcf8575: add reset GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250224-pca976x-reset-driver-v3-1-58370ef405be@cherry.de>
References: <20250224-pca976x-reset-driver-v3-0-58370ef405be@cherry.de>
In-Reply-To: <20250224-pca976x-reset-driver-v3-0-58370ef405be@cherry.de>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

A few of the I2C GPIO expander chips supported by this binding have a
RESETN pin to be able to reset the chip. The chip is held in reset while
the pin is low, therefore the polarity of reset-gpios is expected to
reflect that, i.e. a GPIO_ACTIVE_HIGH means the GPIO will be driven high
for reset and then driven low, GPIO_ACTIVE_LOW means the GPIO will be
driven low for reset and then driven high. If a GPIO is directly routed
to RESETN pin on the IC without any inverter, GPIO_ACTIVE_LOW is thus
expected.

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

Tested-by: Heiko Stuebner <heiko@sntech.de> # exclusion logic
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 .../devicetree/bindings/gpio/nxp,pcf8575.yaml      | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml b/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
index 3718103e966a13e1d77f73335ff73c18a3199469..8bca574bb66d491d984cb1b1665743048bcf4566 100644
--- a/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
+++ b/Documentation/devicetree/bindings/gpio/nxp,pcf8575.yaml
@@ -73,6 +73,43 @@ properties:
 
   wakeup-source: true
 
+  reset-gpios:
+    maxItems: 1
+    description:
+      GPIO controlling the (reset active LOW) RESET# pin.
+
+      The active polarity of the GPIO must translate to the low state of the
+      RESET# pin on the IC, i.e. if a GPIO is directly routed to the RESET# pin
+      without any inverter, GPIO_ACTIVE_LOW is expected.
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


