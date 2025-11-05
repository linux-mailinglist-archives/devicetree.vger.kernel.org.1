Return-Path: <devicetree+bounces-235316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CE1C36C32
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBA69681EB8
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A946A3358C0;
	Wed,  5 Nov 2025 16:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kqc04odJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90427334692
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762360595; cv=none; b=CqQOv2knWVpJG+Y98fCiZJK+JWiJMJz6KblbTi+hDwzjZpUUe8suuHTJzoi4lOOIrsC2Zm3qW/vFKIt0JHq09vb9+qNPlPQHwxWpOqX/B2yszLhJGu2zSVpkEfGpPGIMZUZmiW3y/O7RsFeFr6/KACRMUMAxSt9Y8QbPA15whW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762360595; c=relaxed/simple;
	bh=vfu6o9FHVJ4VDzNtYkoiJcMRZrIdOAy2exAu63XzyUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mgEmVjSMBgshgfynpn2z3ZObjT1utrDK52UIVPbebgV2Uu7mnuUAdhmPeTusXEUJQrummrUsE54NiRrDsUncD66VcCyznx0C+16Pctu07bi/09zlF7FnsvtIcyPKJ1RpPCp9vrM7RX1O8Rps6h7/YjOenSiFCVd5Gk60lTwWoeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kqc04odJ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47756a07b34so10427115e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762360592; x=1762965392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SyN2cVuH6Ij4/l0XiBzPZsewpM0QteHzVTa6BuG8uMQ=;
        b=Kqc04odJNFVZ6Kg6u+BKh/zMe5Nq1JSykuMZOLawMnGZ4dRBhC9u0E8ZUYz3Iuvvt5
         83uruEW2ngl0EKgoKPyX3p5ojT5kO4ZEmz3EIfrxXZdmZ2cBt1uzobXBJXt05UgVBlcG
         jWyb2AOxM5PaiPSNx7ktL1qJdMb2cbtm/Avemk5KNLfL7hOpNHnNxFnhDbr0x6+x6uxe
         dJK0smqOQPnGvC2JvSTRr0PvbE6N9ZD2RiN631zg2SCnzMRPHl5STiqPmUTFjON1Ltsh
         ycLgvdmavO6JG9Wu+3MpMJ3ycl6esUrtrYlO9towlI2ObC8gBYI2ElHeH7VvA+c4S5t0
         YFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762360592; x=1762965392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SyN2cVuH6Ij4/l0XiBzPZsewpM0QteHzVTa6BuG8uMQ=;
        b=qWBXbCNy7BBC8+N6Dw2+BaQdoQsliOjtvr65NjvPiZ1rCh838i/5l5pcPjyOidAqYd
         s17VQPlnCq0zlDjSXtfRxdjztvGcev97lsc73pjaZfwDmDIr/WZdcxMdKCre0nPuRUHQ
         9Uhtf1HimNuzXp26JiyDbc4hZe71weWnQSWqS6kroNgK8tn1m1VNd+CIK6xdDRkh970k
         Fm/bz0JScuOPIKxrdXglwf+M7Ehj7v9cXWlsKQz9/Nd9f6K1XkGUu8fKYlQ9Cc26Mq64
         o+2mjztYrGh82VhsoogNqIBKVrrr8hd/DwSv1RDbRplOTeT82D88Dkvd2x9Ttyr0x89b
         fOLg==
X-Forwarded-Encrypted: i=1; AJvYcCWR8FgenvRZQhZEUs9/m65NFusHKxguDNLG2XPd5dxRfWp+xn/u/onttzvUq5Qll8z8T0gkAH7Lxfpy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0YUl6nt+T+mx1VJn47v4SfnKdJxLtYCTLZCl1qBEVez+wp1t1
	oZTxOvmYvU1Tt4ilsxbbRq5JwNz2fMpDoUJ/Zni8qkeC6BXz4yg/n/Yl
X-Gm-Gg: ASbGncsi1K4V5h5T0OkRVFVCEbpLYpKIQHa2a5MykIlqE113lJjkKe0436kq4TZ1F+e
	vwus9Avbc2fpbiNqMYUlmvx8mSajB8UmviGmv56N/Qt5lh9/N6rQ7ZYZIGy5nwclUMf+qvFK19P
	8EYsHtVytxsiGKWTCswyMZpxC+BeTxcOYagWqRfN/GDYIYojXdG8qmu9YiPiv5Q8ygf5B+Bnva3
	6K1L4cBtYpBem77tnAww5raTpjQK2Yzemk/v1ViPyrJ7NSyc/xpI2LVOqlrbMaLDjUdQgJt6sKG
	++6yB4+5XG5gOsoRoTMp9K+AzN6KRg/2tbFT/dros3NHolIwJUUZPb2rmLY89yBvDjLQn8n9Mzu
	YZI9i5GLG1bNhlO5gSIvlHrHW4xya7NJthvTAQgieMsR6N928amvnQ+wP4PTG+QhhZpV6o2hJhz
	+TIdY8EyzzaG7KrNcq+FQIhEI4
X-Google-Smtp-Source: AGHT+IGCBw9Dy87KEkMt7Df2kUZ9moWp+TlCQ57nJTSYSofiZKmn+TZAqLy7NV/99LZi7xe+WX7gPg==
X-Received: by 2002:a05:600c:8b54:b0:475:dd7f:f6cd with SMTP id 5b1f17b1804b1-4775ce2b845mr45093385e9.35.1762360591623;
        Wed, 05 Nov 2025 08:36:31 -0800 (PST)
Received: from builder.. ([2001:9e8:f106:5b16:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775ce3ef38sm57026755e9.17.2025.11.05.08.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:36:31 -0800 (PST)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Richard <thomas.richard@bootlin.com>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v5 1/2] dt-bindings: gpio: add gpio-line-mux controller
Date: Wed,  5 Nov 2025 16:36:09 +0000
Message-ID: <20251105163610.610793-2-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251105163610.610793-1-jelonek.jonas@gmail.com>
References: <20251105163610.610793-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-schema for a gpio-line-mux controller which exposes virtual
GPIOs for a shared GPIO controlled by a multiplexer, e.g. a gpio-mux.

The gpio-line-mux controller is a gpio-controller, thus has mostly the
same semantics. However, it requires a mux-control to be specified upon
which it will operate.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
---
 .../bindings/gpio/gpio-line-mux.yaml          | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml b/Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
new file mode 100644
index 000000000000..0228e9915b92
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO line mux
+
+maintainers:
+  - Jonas Jelonek <jelonek.jonas@gmail.com>
+
+description: |
+  A GPIO controller to provide virtual GPIOs for a 1-to-many input-only mapping
+  backed by a single shared GPIO and a multiplexer. A simple illustrated
+  example is
+
+            +----- A
+    IN     /
+    <-----o------- B
+        / |\
+        | | +----- C
+        | |  \
+        | |   +--- D
+        | |
+       M1 M0
+
+    MUX CONTROL
+
+     M1 M0   IN
+      0  0   A
+      0  1   B
+      1  0   C
+      1  1   D
+
+  This can be used in case a real GPIO is connected to multiple inputs and
+  controlled by a multiplexer, and another subsystem/driver does not work
+  directly with the multiplexer subsystem.
+
+properties:
+  compatible:
+    const: gpio-line-mux
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-line-mux-states:
+    description: Mux states corresponding to the virtual GPIOs.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  gpio-line-names: true
+
+  mux-controls:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    description:
+      Phandle to the multiplexer to control access to the GPIOs.
+
+  ngpios: false
+
+  muxed-gpios:
+    maxItems: 1
+    description:
+      GPIO which is the '1' in 1-to-many and is shared by the virtual GPIOs
+      and controlled via the mux.
+
+required:
+  - compatible
+  - gpio-controller
+  - gpio-line-mux-states
+  - mux-controls
+  - muxed-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/mux/mux.h>
+
+    sfp_gpio_mux: mux-controller-1 {
+        compatible = "gpio-mux";
+        mux-gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>,
+                    <&gpio0 1 GPIO_ACTIVE_HIGH>;
+        #mux-control-cells = <0>;
+        idle-state = <MUX_IDLE_AS_IS>;
+    };
+
+    sfp1_gpio: sfp-gpio-1 {
+        compatible = "gpio-line-mux";
+        gpio-controller;
+        #gpio-cells = <2>;
+
+        mux-controls = <&sfp_gpio_mux>;
+        muxed-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
+
+        gpio-line-names = "SFP1_LOS", "SFP1_MOD_ABS", "SFP1_TX_FAULT";
+        gpio-line-mux-states = <0>, <1>, <3>;
+    };
+
+    sfp1: sfp-p1 {
+        compatible = "sff,sfp";
+
+        i2c-bus = <&sfp1_i2c>;
+        los-gpios = <&sfp1_gpio 0 GPIO_ACTIVE_HIGH>;
+        mod-def0-gpios = <&sfp1_gpio 1 GPIO_ACTIVE_LOW>;
+        tx-fault-gpios = <&sfp1_gpio 2 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.48.1


