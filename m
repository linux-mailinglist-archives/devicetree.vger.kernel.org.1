Return-Path: <devicetree+bounces-4999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EE47B4ABF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 04:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 222F2281752
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 02:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B0239E;
	Mon,  2 Oct 2023 02:17:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0F764D
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:17:32 +0000 (UTC)
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1C29E6
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 19:17:30 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1dd2e4f744dso1203290fac.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 19:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696213050; x=1696817850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RPOWcZHTqmoq/zqsh7e1DQOIHdOfQaJNQbue+Ak7Pz4=;
        b=gSI3n4hZCnR9n2j5PCWBmvhDXs4AUWsWvoh+NFIyVSdyWn1CQLufb7Rd9JG1h1mffj
         J1HrBFw5yWvDEn+t8ZKM/g78GpVgJtwvA6zYkMSbl4S3LFyy0XCictm/a/Xk+ig92LHV
         sDuzkGd//PF1LaQcJ5Qgh6JbQ6/YowtyviSoYZ4d5WxdykHdH/bQ045ABHKs+EijAlZU
         Mo++6IJxtxfSndNy8HYj70ca0Fpwvco6fkk9YWieSMfTy0HA0vQY4iC767+Gq9GyyOyu
         HoZGz6NwAodBGZSF9KnfwH8iTtb7EsCaCKEZwEy/GEFumuEMtw8tUyXkPwVyWXz+LsVT
         5iWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696213050; x=1696817850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RPOWcZHTqmoq/zqsh7e1DQOIHdOfQaJNQbue+Ak7Pz4=;
        b=BJv8TdxfjNcE90o5VassXNXfibGpB7TWt49Yk3B2MyqQdnZHnxKvuIakodY0nn2onC
         C5VavBpzN2oBtlFxutmmpFG+N9MHhFQX5CGxTykSx08oP1LyJUhptB5Uuh4J32/t+UyD
         wTMhD8OK4iBWqQjnX9kXPzipGpR3zuMAGn5ORla8QiQ+xF64O/kU9XJijt90gPkkQUaP
         NMZClEZfPogqm1yvUgJTXMRqSET35mzkuHcamM7rpbnsG511zbrkbHq6ahneK486EowP
         NA4lsW9iciS9dLBfE/1+UUn3RHUEA48DnTbHrdwBNgs6ZFnuo/0fbHKFnv8r3CCv8We6
         3oMQ==
X-Gm-Message-State: AOJu0Yxnl7fngi8ZL/hlak/mlRaLDFlZh3d3pESNhW6b8ypOzGfDc+cj
	wxRlzO5IGwdUrZt9No+oT79USg==
X-Google-Smtp-Source: AGHT+IGpOuQGzvtGHKgSr/mxvP55UKAmUGYnrFTePhofwASv4SkD/NQd9nZ9IBhVQqqOhXeqb9otNw==
X-Received: by 2002:a05:6808:2123:b0:3a9:f25d:d917 with SMTP id r35-20020a056808212300b003a9f25dd917mr13656079oiw.4.1696213049725;
        Sun, 01 Oct 2023 19:17:29 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:7ab1:199:d138:f054])
        by smtp.gmail.com with ESMTPSA id mg11-20020a17090b370b00b002609cadc56esm5278319pjb.11.2023.10.01.19.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 19:17:29 -0700 (PDT)
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
Subject: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based gpio
Date: Mon,  2 Oct 2023 11:16:02 +0900
Message-Id: <20231002021602.260100-5-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231002021602.260100-1-takahiro.akashi@linaro.org>
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

A dt binding for SCMI pinctrl based gpio driver is defined in this
commit. It basically conforms to generic pinctrl-gpio mapping framework.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
 .../bindings/gpio/arm,scmi-gpio.yaml          | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
new file mode 100644
index 000000000000..2601c5594567
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/arm,scmi-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SCMI pinctrl based generic GPIO controller
+
+maintainers:
+  - AKASHI Takahiro <akashi.takahiro@linaro.org>
+
+properties:
+  $nodename:
+    pattern: "^scmi_gpio(@[0-9a-f]+)$"
+
+  compatible:
+    const: arm,scmi-gpio-generic
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
+    properties:
+      gpio-hog: true
+      gpios: true
+      input: true
+      output-high: true
+      output-low: true
+      line-name: true
+
+    required:
+      - gpio-hog
+      - gpios
+
+    additionalProperties: false
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
+    #include <dt-bindings/gpio/gpio.h>
+
+    scmi_gpio_0: scmi_gpio@0 {
+        compatible = "arm,scmi-gpio";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&scmi_pinctrl 0 10 5>,
+                      <&scmi_pinctrl 5 0 0>;
+        gpio-ranges-group-names = "",
+                                  "pinmux_gpio";
+    };
+
+    // Consumer:
+    sdhci0_pwrseq {
+        compatible = "mmc-pwrseq-emmc";
+        reset-gpios = <&scmi_gpio_0 0 GPIO_ACTIVE_LOW>;
+    };
-- 
2.34.1


