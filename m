Return-Path: <devicetree+bounces-5997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 607567B9A23
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0ED68281982
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D081106;
	Thu,  5 Oct 2023 02:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F0nD+MhF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E9C1847
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:59:40 +0000 (UTC)
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28B61A1
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:59:37 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6c61dd1c229so94873a34.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696474777; x=1697079577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sRZiziU1GNu5avPXv2QF3oc3h3U4ax78pgVXLevlQ+c=;
        b=F0nD+MhFOP6CdU/bsjp3KWBaqAX1turrqx9w+vRy+yGxCK7aBulW1p0MyTZBUIN9GL
         luSC3viHz9AGehtm2QPXn+95Kz+LsSZieC5SVqpvBLjoFwiKG4HoffDxSInYWeVekmxe
         K72mOReleoYh6C84QgXt9NYKT0zPgXhTZTDONIcBFVtVdnL/ybNaq2jVk5IJvfTTB/3S
         TdB2zZu5nXs54di0lhGRdmOMSp58T+rNf7rcuaYdeZHtniqB+9EPJbgHxgI/9ARqJH0F
         hvItKCrYSGBksQeJBapJoEz6Z9ZN+Qq+Y2XVRBUA70DgJDt/jbDlk6m8iYHa2BYVOfIs
         ZQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696474777; x=1697079577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sRZiziU1GNu5avPXv2QF3oc3h3U4ax78pgVXLevlQ+c=;
        b=XgtDMkIWqLM7pCIFDSyB+tiCCacFVQmMOy6PI7aVOXGVGuiKTMMvgynheIzSGSkAdv
         0NJkVll5viSLIwU3f67Uhgcq+nkt98FwSS1u6UDItGIJ10OJJG+KQDYvsVF5RFbc9M8c
         +CpiYwn8nhJTUNxA9S6R5UiUEYTjJRGMr6hYguMiI10XYone3ko4+BJFpyL+VmS1T+gI
         01X8Ovz6EBiTA6KxbJDrj4tA7CbYMZc02EG1zRmSIwmmAYC2Q/8824J36D0xLyjFTWgf
         J/cgVDohBhUns8AuS5DIbeBA8goo2cRBK6RF3s7szFoYfQH5g4xMQACvkHzFLfRF/J5N
         25SA==
X-Gm-Message-State: AOJu0YyDbo6wU7GEXmpQO5x1fE5UZxh3EAMpRJ8wLshzKUQE9RgM8Qzl
	vLT6MkyGPv0GgW7vRE3Q+O3CZg==
X-Google-Smtp-Source: AGHT+IGuF37bJRXm/rwj6uHFmdz4QeyGcUcT5VR8YemY6FCQGga77AWz0oRvrMhJuov669/ftxBMyw==
X-Received: by 2002:a05:6808:138b:b0:3ad:aadd:6cbf with SMTP id c11-20020a056808138b00b003adaadd6cbfmr4953939oiw.0.1696474776920;
        Wed, 04 Oct 2023 19:59:36 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id b18-20020a637152000000b005782ad723casm269265pgn.27.2023.10.04.19.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:59:36 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: sudeep.holla@arm.com,
	cristian.marussi@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org
Cc: Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based generic gpio driver
Date: Thu,  5 Oct 2023 11:58:43 +0900
Message-Id: <20231005025843.508689-6-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005025843.508689-1-takahiro.akashi@linaro.org>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

A dt binding for pin controller based generic gpio driver is defined in
this commit. One usable device is Arm's SCMI.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
RFC v2 (Oct 5, 2023)
* rename the binding to pin-control-gpio
* add the "description"
* remove nodename, hog properties, and a consumer example
RFC (Oct 2, 2023)
---
 .../bindings/gpio/pin-control-gpio.yaml       | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
new file mode 100644
index 000000000000..bc935dbd7edb
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/pin-control-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Pin control based generic GPIO controller
+
+description:
+  The pin control-based GPIO will facilitate a pin controller's ability
+  to drive electric lines high/low and other generic properties of a
+  pin controller to perform general-purpose one-bit binary I/O.
+
+maintainers:
+  - AKASHI Takahiro <akashi.takahiro@linaro.org>
+
+properties:
+  compatible:
+    const: pin-control-gpio
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-ranges: true
+
+  gpio-ranges-group-names: true
+
+patternProperties:
+  "^.+-hog(-[0-9]+)?$":
+    type: object
+
+    required:
+      - gpio-hog
+
+required:
+  - compatible
+  - gpio-controller
+  - "#gpio-cells"
+  - gpio-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    gpio0: gpio@0 {
+        compatible = "pin-control-gpio";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&scmi_pinctrl 0 10 5>,
+                      <&scmi_pinctrl 5 0 0>;
+        gpio-ranges-group-names = "",
+                                  "pinmux_gpio";
+    };
-- 
2.34.1


