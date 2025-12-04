Return-Path: <devicetree+bounces-244488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F8FCA573F
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F7D431AC38E
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3164A3563EF;
	Thu,  4 Dec 2025 21:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="vqA3Apic";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="xSSmmQPu"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4E3563DE;
	Thu,  4 Dec 2025 21:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882191; cv=none; b=r9HmMuHFSlJaLU04xkU4oTC0HwkAQCWhtLE0d2RxqETLC4R7X3Whp+6YifbnyknpK1nsPsWRSdIl1fPGXm7MQfBgNKHRKL5ybvftiCynhSMLuuaNtaG8C6WV4WXg4xJVnyF6mq7tvBhdAqOYZeCWu7xHUMsn6Yw9TfF9HpGR9ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882191; c=relaxed/simple;
	bh=OuTri008ITxnQrm+fjT4tpwQWpTtUQmZUXfz6eakOkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZOU41Xuqh2Jpe6k9Ew4DIntSohtl3CrkjT8TA6EUm5j5OR2Bc6YB5UN4q4FdYfJbAjMQBZvV564jDwmApIxhTvrRSVCA+F/n02+BcdcU6OYaC6tzpE04qYQZBQs/09M51aoYdU53jyuBrdmS1OlLn0OIX7Xp/rF4DOE3EGkQAVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=vqA3Apic; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=xSSmmQPu; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 52F111D00106;
	Thu,  4 Dec 2025 16:03:08 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Thu, 04 Dec 2025 16:03:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1764882188; x=
	1764968588; bh=l1N6mpnuv4jT9RxjXTIrytWINoWTUYc1DLbaGh34myE=; b=v
	qA3ApicXD3sptxLCPbApJNIKXbl0djgjb5oHYWXDg1QaOa9gAhCM9/8c/mLy6F2i
	e/O1aFkLqZ+BxCyQwhS2xBGaouLBktBTAfidC1J6WZs/XzGPBZJIiqPoP8cNdHWV
	iqs3Wbh7dXBS/J9r1313i8gUNYkKMZNArScHA1awR1EKT1bRuM9aHQj4zMqLJd/9
	TPFCBDO7nCVF3DuLIlnPx+F5uosmd+AgVgMYF2HTqMcc+luJl9tlFvpBnbIxWRHI
	+lwhwrUbhPAUZg1ZSb8L39axX7/4dJPe8YHYqHUdCUpqq8xnax2kYsGKxI9yua2a
	+3NtaTTp/qwBxCt9mRasw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1764882188; x=1764968588; bh=l
	1N6mpnuv4jT9RxjXTIrytWINoWTUYc1DLbaGh34myE=; b=xSSmmQPu5TsLWiffQ
	daUJbtEUGdwxthMzdYoVsm5SnRF79SqB7MXZBq7FaGrYJTL5iOpr22ijF8o59UwD
	FvJpPd0FgLlfBVCf7V6pI9oCXyXU3ZFdrpigRd8m1Smvh0aMo+/NhMRFyhCG+n/p
	+MHFrG7TARxztvS6nWKPlXD6FiJ34C93ruZsXtWIY/yIo2lrIxjMo7YrE0i6P2MG
	JkqPp+GheAWeVvB5VVpAVwD4hDDuVEwIjq7mPGwrEpHxnl2MpTJcmx8CId7Vp/VN
	ID0/oSgMsY8lTeQu0j2xBPRgo6PEMeL3kEFQkdZkRb6uVu5cnxIOmJ3//5syyflh
	JeVCQ==
X-ME-Sender: <xms:C_cxaT-uT95DfiBUP_3ItJN3U5SIAOHN2U2FrtJyITQqREDcuy9Smw>
    <xme:C_cxaX2cjK1-OhyiLPde76zHUfuYKi7JqHeKns43d72eRwsKeS70EUvNSFlxt0Ifw
    -9ZOZXeI_Z-RRp200wU7Dp9aaAI-8XCbhFb4s092k1i0fegwYqyYrQ>
X-ME-Received: <xmr:C_cxaQj9S6xKpPnOJ8Pi1eehOWIzj8XTJ4SUaLAA6UkA_K1apYqu1kcYFpgC03r_KDpKTYpXKmij77BM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeiiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    ephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfgvsggvtggtrgcu
    vehrrghnuceorhgvsggvtggtrgessghsughiohdrtghomheqnecuggftrfgrthhtvghrnh
    epheelhfetiedvvdffgfdttdduudejiefhgfefjeevffeuhffgudehheegjeevtdejnecu
    ffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrvggsvggttggrsegsshguihhordgtohhm
    pdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprh
    hosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgv
    lhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtg
    hpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpthhtoheprghnughrvgifsegt
    ohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtthhopeguvghvihgtvghtrh
    gvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhm
    qdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhope
    hlihhnuhigqdgrshhpvggvugeslhhishhtshdrohiilhgrsghsrdhorhhgpdhrtghpthht
    oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:C_cxafZqeic20YghDPmoQbDUL_gZopWebpGiUsIP404RpNxJRRcGOQ>
    <xmx:C_cxaUWw8DaQOCYeoGwrUvmWoal-NobPuTykg7yfzqMY-gyiRcSKVQ>
    <xmx:C_cxafGq4l2BJO23umWWhXzXWNtfv7LxZbTaiU1o3GmHec7SdxJeGQ>
    <xmx:C_cxaWZZLcwkzX64e6z0kKSi9_eDerJ0lfNDaUYKaECMAfJh2n9P2Q>
    <xmx:DPcxaZPzVRajnjvf9d3z1vKj-lZEH-jUjwYoHIDB1-uAuYKdwnEne9SW>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Dec 2025 16:03:06 -0500 (EST)
From: Rebecca Cran <rebecca@bsdio.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Rebecca Cran <rebecca@bsdio.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>
Subject: [PATCH v3 3/3] dt-bindings: hwmon: (aspeed,g5-pwm-tacho) Move info from txt to yaml
Date: Thu,  4 Dec 2025 14:02:36 -0700
Message-ID: <20251204210238.40742-4-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251204210238.40742-1-rebecca@bsdio.com>
References: <20251204210238.40742-1-rebecca@bsdio.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the documentation for the aspeed,ast2400-pwm-tacho and
aspeed,ast2500-pwm-tacho devices from a text file to yaml file.

This allows for dts files containing these devices to be validated.

Where the text file documenation of required properties differ from the
implementation, prefer the implementation and update the schema to
match.

"#size-cells" was 1 but implementation is 0.
"#cooling-cells" was marked as required but appears optional.

In the fan subnode, "cooling-levels" is optional according to the code
in drivers/hwmon/aspeed-pwm-tacho.c.

Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
---
 Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml | 91 ++++++++++++++++++++
 Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt  | 73 ----------------
 2 files changed, 91 insertions(+), 73 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
new file mode 100644
index 000000000000..b23c3519604b
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2023 Aspeed, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2400/AST2500 PWM and Fan Tacho controller
+
+maintainers:
+  - Billy Tsai <billy_tsai@aspeedtech.com>
+
+description: |
+  The ASPEED PWM controller can support up to 8 PWM outputs. The ASPEED Fan
+  Tacho controller can support up to 16 Fan tachometer inputs.
+
+  There can be up to 8 fans supported. Each fan can have one PWM output and
+  one/two Fan tach inputs.
+
+properties:
+  compatible:
+    enum:
+      - aspeed,ast2400-pwm-tacho
+      - aspeed,ast2500-pwm-tacho
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+patternProperties:
+  "^fan@[0-9]+$":
+    $ref: fan-common.yaml#
+    unevaluatedProperties: false
+    properties:
+      aspeed,fan-tach-ch:
+        description:
+          The tach channel used for the fan.
+        $ref: /schemas/types.yaml#/definitions/uint8-array
+
+    required:
+      - reg
+      - aspeed,fan-tach-ch
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+  - reg
+  - pinctrl-names
+  - pinctrl-0
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/aspeed-clock.h>
+    pwm_tacho: pwmtachocontroller@1e786000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #cooling-cells = <2>;
+        reg = <0x1E786000 0x1000>;
+        compatible = "aspeed,ast2500-pwm-tacho";
+        clocks = <&syscon ASPEED_CLK_APB>;
+        resets = <&syscon ASPEED_RESET_PWM>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_pwm0_default &pinctrl_pwm1_default>;
+
+        fan@0 {
+                reg = <0x00>;
+                cooling-levels = /bits/ 8 <125 151 177 203 229 255>;
+                aspeed,fan-tach-ch = /bits/ 8 <0x00>;
+        };
+
+        fan@1 {
+                reg = <0x01>;
+                aspeed,fan-tach-ch = /bits/ 8 <0x01 0x02>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt b/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
deleted file mode 100644
index 8645cd3b867a..000000000000
--- a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
+++ /dev/null
@@ -1,73 +0,0 @@
-ASPEED AST2400/AST2500 PWM and Fan Tacho controller device driver
-
-The ASPEED PWM controller can support upto 8 PWM outputs. The ASPEED Fan Tacho
-controller can support upto 16 Fan tachometer inputs.
-
-There can be upto 8 fans supported. Each fan can have one PWM output and
-one/two Fan tach inputs.
-
-Required properties for pwm-tacho node:
-- #address-cells : should be 1.
-
-- #size-cells : should be 1.
-
-- #cooling-cells: should be 2.
-
-- reg : address and length of the register set for the device.
-
-- pinctrl-names : a pinctrl state named "default" must be defined.
-
-- pinctrl-0 : phandle referencing pin configuration of the PWM ports.
-
-- compatible : should be "aspeed,ast2400-pwm-tacho" for AST2400 and
-	       "aspeed,ast2500-pwm-tacho" for AST2500.
-
-- clocks : phandle to clock provider with the clock number in the second cell
-
-- resets : phandle to reset controller with the reset number in the second cell
-
-fan subnode format:
-===================
-Under fan subnode there can upto 8 child nodes, with each child node
-representing a fan. If there are 8 fans each fan can have one PWM port and
-one/two Fan tach inputs.
-For PWM port can be configured cooling-levels to create cooling device.
-Cooling device could be bound to a thermal zone for the thermal control.
-
-Required properties for each child node:
-- reg : should specify PWM source port.
-	integer value in the range 0 to 7 with 0 indicating PWM port A and
-	7 indicating PWM port H.
-
-- cooling-levels: PWM duty cycle values in a range from 0 to 255
-                  which correspond to thermal cooling states.
-
-- aspeed,fan-tach-ch : should specify the Fan tach input channel.
-                integer value in the range 0 through 15, with 0 indicating
-		Fan tach channel 0 and 15 indicating Fan tach channel 15.
-		At least one Fan tach input channel is required.
-
-Examples:
-
-pwm_tacho: pwmtachocontroller@1e786000 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	#cooling-cells = <2>;
-	reg = <0x1E786000 0x1000>;
-	compatible = "aspeed,ast2500-pwm-tacho";
-	clocks = <&syscon ASPEED_CLK_APB>;
-	resets = <&syscon ASPEED_RESET_PWM>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pwm0_default &pinctrl_pwm1_default>;
-
-	fan@0 {
-		reg = <0x00>;
-		cooling-levels = /bits/ 8 <125 151 177 203 229 255>;
-		aspeed,fan-tach-ch = /bits/ 8 <0x00>;
-	};
-
-	fan@1 {
-		reg = <0x01>;
-		aspeed,fan-tach-ch = /bits/ 8 <0x01 0x02>;
-	};
-};
-- 
2.47.3


