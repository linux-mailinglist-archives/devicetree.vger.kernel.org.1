Return-Path: <devicetree+bounces-47901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 762A586F296
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 22:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13DC51F21429
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 21:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2BD141202;
	Sat,  2 Mar 2024 21:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="KKsmLH+h";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b="KKsmLH+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx104.easyname.com (mx104.easyname.com [77.244.243.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E817C69
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 21:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.244.243.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709415889; cv=none; b=h50XqpzV78L0FB+/GYHLVQsx2RKVKwypZmt7jwFXE/sr3eq8f6Uan4W6BaUQsgfBVK1ar5OoomP/OLZc0ZwrNsqWbzdb9/8Lqy9d34g0J6omP5ZGwv4GxY+X4zq4tLR8OWDqls474RMj6Gnpuwgew0T6hirVx1CJrbCK3K4o8vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709415889; c=relaxed/simple;
	bh=wgZdW5nG1/rWtzBQrjZ9gCjyhd7L3q+Nz99GO7PbsM8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R6vLxHy0krVqGKsqv9FnIRtIDKXshJdkypZTbdc2AzRwQVoxMD2Jt8L9rr40P+dRmYvXyGFOr558H4tk+UM6CFx3W+dmKtPJIczh2F3Ty/tySbRkAXJjz2gQZgWdrBdtpVIyx7liw2xPcthVPJ3FTZNvTaJ9O07YVIUjCNzfqHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com; spf=pass smtp.mailfrom=paroga.com; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=KKsmLH+h; dkim=pass (2048-bit key) header.d=paroga.com header.i=@paroga.com header.b=KKsmLH+h; arc=none smtp.client-ip=77.244.243.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=paroga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=paroga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=xW0+iejT2yalW3I7uR9ol2fUym281bnWm2BFQ5PTo00=; b=KKsmLH+hrJ/dLyuvRglF437rQp
	UTuhYPTJmBawJs914abLazYsGvwKPMF1Em12A7ITFtEZzARda/lhMSVxv8eqj+92idr5sTwNhTut5
	CqUrWR7XZQzcnXWU7zuu+rn3W3IgyusTy/koN+8FaoAkNd/N2l51JEYhtaMqVV2ZgaM0hVOztd7x2
	KbN6+2cPwhoFB6iZ6b/pE465GaPpcw/dYQsnqICcVBQjiJxQmUwZdIsnWOuK6S4ygS22nQB2IzGZq
	ZL8c4H3gSqHQwBPxTkT1xZmLuG3fO2i/koYUcwOGQEa6zPDhC/QT/RJO3eVwZ8NoliAKJcOgvIXar
	wDtmQX6w==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=paroga.com;
	 s=easyname; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=xW0+iejT2yalW3I7uR9ol2fUym281bnWm2BFQ5PTo00=; b=KKsmLH+hrJ/dLyuvRglF437rQp
	UTuhYPTJmBawJs914abLazYsGvwKPMF1Em12A7ITFtEZzARda/lhMSVxv8eqj+92idr5sTwNhTut5
	CqUrWR7XZQzcnXWU7zuu+rn3W3IgyusTy/koN+8FaoAkNd/N2l51JEYhtaMqVV2ZgaM0hVOztd7x2
	KbN6+2cPwhoFB6iZ6b/pE465GaPpcw/dYQsnqICcVBQjiJxQmUwZdIsnWOuK6S4ygS22nQB2IzGZq
	ZL8c4H3gSqHQwBPxTkT1xZmLuG3fO2i/koYUcwOGQEa6zPDhC/QT/RJO3eVwZ8NoliAKJcOgvIXar
	wDtmQX6w==;
Received: from 84-115-228-205.cable.dynamic.surfer.at ([84.115.228.205] helo=localhost.localdomain)
	by mx.easyname.com with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <paroga@paroga.com>)
	id 1rgWue-0005aa-Du; Sat, 02 Mar 2024 21:29:00 +0000
From: Patrick Gansterer <paroga@paroga.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Gansterer <paroga@paroga.com>
Subject: [PATCH 1/2] dt-bindings: backlight: Add Texas Instruments LM3509 bindings
Date: Sat,  2 Mar 2024 22:27:56 +0100
Message-ID: <20240302212757.1871164-1-paroga@paroga.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Easy-Autoreply: EN

Add Device Tree bindings for Texas Instruments LM3509 - a
High Efficiency Boost for White LED's and/or OLED Displays

Signed-off-by: Patrick Gansterer <paroga@paroga.com>
---
 .../bindings/leds/backlight/ti,lm3509.yaml    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml

diff --git a/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
new file mode 100644
index 000000000000..8fbb83934e30
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/backlight/ti,lm3509.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/backlight/ti,lm3509.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI LM3509 High Efficiency Boost for White LED's and/or OLED Displays
+
+maintainers:
+  - Patrick Gansterer <paroga@paroga.com>
+
+description: |
+  The LM3509 current mode boost converter offers two separate outputs.
+  https://www.ti.com/product/LM3509
+
+properties:
+  compatible:
+    const: ti,lm3509
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  default-brightness:
+    minimum: 0
+    maximum: 15
+
+  max-brightness:
+    minimum: 0
+    maximum: 15
+
+  ti,brightness-rate-of-change-us:
+    description: Brightness Rate of Change in microseconds.
+    enum: [51, 13000, 26000, 52000]
+
+  ti,oled-mode:
+    description: Enable OLED mode.
+    type: boolean
+
+  ti,unison-mode:
+    description: |
+      Enable unison mode. If disabled, then it will provide two
+      independent controllable LED currents for BMAIN and BSUB.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        backlight@36 {
+            compatible = "ti,lm3509";
+            reg = <0x36>;
+
+            reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+
+            ti,unison-mode;
+        };
+    };
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        backlight@36 {
+            compatible = "ti,lm3509";
+            reg = <0x36>;
+
+            ti,brightness-rate-of-change-us = <52000>;
+        };
+    };
-- 
2.44.0


