Return-Path: <devicetree+bounces-4854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5327B41A5
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F2E7E28346D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41A0171AD;
	Sat, 30 Sep 2023 15:32:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACC7168B5
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:32:43 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C49EE6;
	Sat, 30 Sep 2023 08:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696087943; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=PO+IflfTAql3V+GGvnVr1MW4fk7Y2EOLB+yXPCfXGaKY9llJNy19YW5fwJrMVyqD7B
    lmNSvHM7a3vyFGy21auCz70rBVOmHfcrV/tJfhPQNGKtcoQu3cYqTLaXBZbaHtIAgSwq
    cuW/2d8I81hJJhtW8CAukcNuRqRroq2WLsHYLCHXS7TvNFMdhOcUfArpt4K4OgNlm2G2
    7iQXYgohTgnkgeGq2TLAlyPHyXZMLePG5SYOZCgY/uK4DC2edvqNbxuzTHUcNy5LQhIY
    4+qXe4C7eossLhmG6KZTSUPzQXb5AUYotL5peFi21MJu7jAoQ99/o6ylTCdu0aMBpsgZ
    JnOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696087943;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=lUzNzqc8pnjA19u06jBcBi2HrnJlfBUjIE0lrHSoBuU=;
    b=SZovMR2J3GFg4ZaEGZmVEiIfFsn2wxDD8NUZncXW5L1XKnpbnsPgvP02FhUwaY5PRE
    1/GplIw4hoRTjWuAaTmtAkMmctx9thT06Q6IgS43VBbRvON+il6zojGUs5yvWU+Xxdtr
    2gbJ+EP2d2O/IGKzpMejm43kkJM5blQBlwvPIT6JRg6iHqWq5IX29jDy0xamx4GNX7h1
    J7945RaHJORoXAxuO+95u3P3JGOVFUB/B4uwn7+PFbAu8BVjRsiaDuCayFFBUd3gjmpU
    DgpNZyQ3sUR5XnA2SfCDU6Fpjbt+W/Mk+I4PazJJ3y15R/LPwrZkYYKSUxuOVVQdFgQ6
    wDOw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696087943;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=lUzNzqc8pnjA19u06jBcBi2HrnJlfBUjIE0lrHSoBuU=;
    b=N8aOspzkomxdBHfCJb2xiJMnBdmQx9U5aTQLhkn1s/VgFNH5h+hTJKS+BzRjeOS5Z4
    QCbRQH8AHFWPeM6th/UqMLcFUjsOesZvpzrMwvadEw3bYGAbd8kzEy0rWgIogimaB9dg
    bMUFgBJFCQylwhcsvS8yeRwMfkgcIDvxOchf/MBDRh/bilEHtlOcBsUHwC9Gz1I4GNFV
    izi+Y24bCY8a6Y8HpGKexwh2WCTPSBQMUE/2MA1e6Rhqm67f40mtx8ojhWkylolR+QrR
    VXtRIU8a5b4oCPnJHZ5VP64sRsl/fxd6m1Jgq4jbE4RjzzWvJkpZEdAxZCK2jFNWZA+d
    yuXA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696087943;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:In-Reply-To:References:Message-Id:Subject:Date:From:Cc:Date:
    From:Subject:Sender;
    bh=lUzNzqc8pnjA19u06jBcBi2HrnJlfBUjIE0lrHSoBuU=;
    b=tODsa4OMuslrCCAI7bwyow0oV2U6K2H4jvO3P9G1ANXSgo9ANz/ITGn/cXWjPbSGoZ
    5Yb6gPcdfH21Jcwe22CQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn8u4l+/zY="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z8UFWNtXR
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sat, 30 Sep 2023 17:32:23 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Date: Sat, 30 Sep 2023 17:32:00 +0200
Subject: [PATCH v2 1/2] dt-bindings: input: touchscreen: document Himax
 HX852x(ES)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230930-hx852x-v2-1-c5821947b225@gerhold.net>
References: <20230930-hx852x-v2-0-c5821947b225@gerhold.net>
In-Reply-To: <20230930-hx852x-v2-0-c5821947b225@gerhold.net>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Henrik Rydberg <rydberg@bitmath.org>, 
 linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jeff LaBundy <jeff@labundy.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Jonathan Albrieux <jonathan.albrieux@gmail.com>, 
 Stephan Gerhold <stephan@gerhold.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Himax HX852x(ES) is a touch panel controller with optional support
for capacitive touch keys.

Unfortunately, the model naming is quite unclear and confusing. There
seems to be a distinction between models (e.g. HX8526) and the "series"
suffix (e.g. -A, -B, -C, -D, -E, -ES). But this doesn't seem to be
applied very consistently because e.g. HX8527-E(44) actually seems to
belong to the -ES series.

The compatible consists of the actual part number followed by the
"series" as fallback compatible. Typically only the latter will be
interesting for drivers as there is no relevant difference on the
driver side.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../bindings/input/touchscreen/himax,hx852es.yaml  | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/himax,hx852es.yaml b/Documentation/devicetree/bindings/input/touchscreen/himax,hx852es.yaml
new file mode 100644
index 000000000000..40a60880111d
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/himax,hx852es.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/himax,hx852es.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX852x(ES) touch panel controller
+
+maintainers:
+  - Stephan Gerhold <stephan@gerhold.net>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - himax,hx8525e
+          - himax,hx8526e
+          - himax,hx8527e
+      - const: himax,hx852es
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description: Touch Screen Interrupt (TSIX), active low
+
+  reset-gpios:
+    maxItems: 1
+    description: External Reset (XRES), active low
+
+  vcca-supply:
+    description: Analog power supply (VCCA)
+
+  vccd-supply:
+    description: Digital power supply (VCCD)
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+  linux,keycodes:
+    minItems: 1
+    maxItems: 4
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/input/input.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen@48 {
+        compatible = "himax,hx8527e", "himax,hx852es";
+        reg = <0x48>;
+        interrupt-parent = <&tlmm>;
+        interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&tlmm 12 GPIO_ACTIVE_LOW>;
+        vcca-supply = <&reg_ts_vcca>;
+        vccd-supply = <&pm8916_l6>;
+        linux,keycodes = <KEY_BACK KEY_HOMEPAGE KEY_APPSELECT>;
+      };
+    };
+
+...

-- 
2.42.0


