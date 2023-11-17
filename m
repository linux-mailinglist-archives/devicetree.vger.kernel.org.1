Return-Path: <devicetree+bounces-16661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBBD7EF329
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F1D21C20829
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF6630CEE;
	Fri, 17 Nov 2023 12:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hkZSVSLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394C7D5B
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:35 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40859c466efso15199005e9.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700225973; x=1700830773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EpQ8hiJaDwq9w2ctJl9hSiwcGPI9BQbencVo58l6Ffo=;
        b=hkZSVSLk9vm/BJg1ZK/nOc3elcDwaEJodkH1j0R5cbc1vajcWQSM+/ZsT9twraX5+f
         h6AcYzGNN6aoWMgmPin5ji0UIMbq2VUV8SiKiVdNN+qQTR6i6KfmTzUHxEGyqqSrPv4V
         IZ1m2zYc4aoegIFxtEvv/RyxE7n0++f4Ub51WlfYPgJ/rztXYzR1iDvOkfIMhcxgnXl7
         RcR3dTWxn0NuH1ntLO92Dm52tb0jPGspOVkOiqZQQEYyjGTUFdgJq9mOGbO+oUJfTg7K
         a3YibMdkfgZ2w6yKa3dxuDt/9GXpTXUhrBoy0F1m6LiJF7f4ovLNNS+Q1fkCKKvJQGOt
         VG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700225973; x=1700830773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EpQ8hiJaDwq9w2ctJl9hSiwcGPI9BQbencVo58l6Ffo=;
        b=tTFe2jBxQu8hfTtRlv9sPt7Y+sskPAns6q+XV7O33kXQWWlvInp95BvEcAJlqbWsLy
         S6gUV9r/CBpDgSmmpF3LmJKpn5l9oIkYDqk4d4rBQkwDpaxOIF2WhDjWU+9lgec6UKTV
         3k2KYv03TXHPFrm4isr0mu2M+NW48UDGJBfMFycZpOWTXI1EuSd6LzZcIknBL18ny8dm
         e7w4CrDuMAjqUYcH8/QvrlHWrqPp5gYqZi4DB/vb6eEYkzjCbi3iuTW6uL8htdHABhQ0
         wnw/cxnMmmT2Z7RWYjAPpT8KTGjwmBY2xd7VFh1nfID/dyZglwqvN/LabABgZHQh8jX2
         pEcQ==
X-Gm-Message-State: AOJu0YyBsuR8NHBAjduHORZ4nM6jN07vSaCiehwDXrOyCvyB1gp5ncWd
	dXxqMnRxsxs+9n7uDj9fFeUDWw==
X-Google-Smtp-Source: AGHT+IE8NQpxkxGP+Ey2DyBhnqgtsrj1QQ626K6i6p8nLGIjozX1JAbKiKLiLg0yOX3km2RtZ5pLDA==
X-Received: by 2002:a05:600c:3591:b0:409:295:9c6e with SMTP id p17-20020a05600c359100b0040902959c6emr14085626wmq.30.1700225973659;
        Fri, 17 Nov 2023 04:59:33 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8196:e423:38cb:9a09])
        by smtp.googlemail.com with ESMTPSA id k21-20020a05600c1c9500b0040a487758dcsm2671343wms.6.2023.11.17.04.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 04:59:33 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH v2 2/6] dt-bindings: pwm: amlogic: add new compatible for meson8 pwm type
Date: Fri, 17 Nov 2023 13:59:12 +0100
Message-ID: <20231117125919.1696980-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117125919.1696980-1-jbrunet@baylibre.com>
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Add a new compatible for the pwm found in the meson8 to sm1 Amlogic SoCs.

The previous clock bindings for these SoCs described the driver and not the
HW itself. The clock provided was used to set the parent of the input clock
mux among the possible parents hard-coded in the driver.

The new bindings allows to describe the actual clock inputs of the PWM in
DT, like most bindings do, instead of relying of hard-coded data.

The new bindings make the old one deprecated.

There is enough experience on this HW to know that the PWM is exactly the
same all the supported SoCs. There is no need for a per-SoC compatible.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
index 387976ed36d5..48b11b7d5df6 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
@@ -22,6 +22,7 @@ properties:
           - amlogic,meson-g12a-ao-pwm-ab
           - amlogic,meson-g12a-ao-pwm-cd
           - amlogic,meson-s4-pwm
+          - amlogic,meson8-pwm-v2
       - items:
           - const: amlogic,meson-gx-pwm
           - const: amlogic,meson-gxbb-pwm
@@ -37,7 +38,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   clock-names:
     minItems: 1
@@ -70,11 +71,14 @@ allOf:
               - amlogic,meson-gx-pwm
               - amlogic,meson-gx-ao-pwm
     then:
-      # Historic bindings tied to the driver implementation
+      # Obsolete historic bindings tied to the driver implementation
       # The clocks provided here are meant to be matched with the input
       # known (hard-coded) in the driver and used to select pwm clock
       # source. Currently, the linux driver ignores this.
+      deprecated: true
       properties:
+        clocks:
+          maxItems: 2
         clock-names:
           oneOf:
             - items:
@@ -83,6 +87,27 @@ allOf:
                 - const: clkin0
                 - const: clkin1
 
+  # Newer binding where clock describe the actual clock inputs of the pwm
+  # block. These are necessary but some inputs may be grounded.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson8-pwm-v2
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          items:
+            - description: input clock 0 of the pwm block
+            - description: input clock 1 of the pwm block
+            - description: input clock 2 of the pwm block
+            - description: input clock 3 of the pwm block
+        clock-names: false
+      required:
+        - clocks
+
   # Newer IP block take a single input per channel, instead of 4 inputs
   # for both channels
   - if:
@@ -112,6 +137,13 @@ examples:
       clock-names = "clkin0", "clkin1";
       #pwm-cells = <3>;
     };
+  - |
+    pwm@2000 {
+      compatible = "amlogic,meson8-pwm-v2";
+      reg = <0x1000 0x10>;
+      clocks = <&xtal>, <0>, <&fdiv4>, <&fdiv5>;
+      #pwm-cells = <3>;
+    };
   - |
     pwm@1000 {
       compatible = "amlogic,meson-s4-pwm";
-- 
2.42.0


