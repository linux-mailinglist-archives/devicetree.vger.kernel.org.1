Return-Path: <devicetree+bounces-14520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C38CE7E53BE
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FAD9B20F08
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6034512E5C;
	Wed,  8 Nov 2023 10:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C86cKyLV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFF312B7C
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:44:16 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD86C1FD0
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 02:44:15 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40859c46447so42265945e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 02:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699440254; x=1700045054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jaIBx0Az35AgmK0hmQ6KD07E3PCcuw+SeUDmsLqHS7Q=;
        b=C86cKyLVHMSNiuARVDdTsIhu1bikbR/K1axeSIn64CBcsOV6oZ9hWoWYAsdIiPpkS+
         Z0DLTluUmrh1z+pMUaBkjq7hyFpay3hOY0VPQ/18fdo325HM9C2w9Gwy7HSKLt4m4pTo
         qF2nZ7uzCWxOMQ2biHutk5630xWet8r9pfJbIxQu+bpsqt4o5f9HmoKh7rlJLqVzRDuC
         NeITvbCKWryfQwiptv3HSRi7QBxdfpqSqzFuLCUKdAUCnY0TP/EPL89G8f41PpP6GVKo
         khymXT1hegSPib2gx0eij2q5kBEyKssjAKQeuJvGUD+yNNy26SL74sCuizOzeMtOdkPV
         NCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699440254; x=1700045054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jaIBx0Az35AgmK0hmQ6KD07E3PCcuw+SeUDmsLqHS7Q=;
        b=d/PaNIedyFG4U04y/uTGlsYuz/N8Vq495229xtdsISdyhQrbuz8sILF10HOOq+m53p
         AaKQTGONhb610z8ZEeEuXNjQ1V5GAKAw33QDiwiZP3rSLouIS3kwyy4INZKjmmZwCpwV
         LkDWjZDAirKJh8v7Zsl4vHY3psfq3aV1/IKKFY1/ZYdUt5SyVCf4hb4r53f1HQSkLh7r
         wsV7COZW4u2oB40GMmYgOG605av87rKi/Yw7FVq2nSSqgp6G/6DkscDq6dr9vXy7i4aU
         +3JIMU3NyBVRfYTivZ06TwTki3Q5Br+61w3LPVbrNe8uQ0fQKLpBkN4cePsGUeF1N/u8
         vsVA==
X-Gm-Message-State: AOJu0Ywz4DKOnbribUkF09tE7Rp9sYqKZE0cPjuPp6p2zqw+G62X/QW6
	Z2d5OP3nQCTeEDOrvsqpODyvrg==
X-Google-Smtp-Source: AGHT+IGJlG/0ZP5DkScPVOMejPSATBvkrEgkimXiOn6arKw3sdBhLlR3KhZAKEWBPjharUEFMBueGw==
X-Received: by 2002:a05:600c:4f11:b0:406:5344:4212 with SMTP id l17-20020a05600c4f1100b0040653444212mr1447121wmq.41.1699440254278;
        Wed, 08 Nov 2023 02:44:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id fj12-20020a05600c0c8c00b004094c5d92bdsm19377377wmb.31.2023.11.08.02.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 02:44:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-serial@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/17] dt-bindings: pinctrl: samsung: add specific compatibles for existing SoC
Date: Wed,  8 Nov 2023 11:43:31 +0100
Message-Id: <20231108104343.24192-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231108104343.24192-1-krzysztof.kozlowski@linaro.org>
References: <20231108104343.24192-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung Exynos SoC reuses several devices from older designs, thus
historically we kept the old (block's) compatible only.  This works fine
and there is no bug here, however guidelines expressed in
Documentation/devicetree/bindings/writing-bindings.rst state that:
1. Compatibles should be specific.
2. We should add new compatibles in case of bugs or features.

Add compatibles specific to each SoC in front of all old-SoC-like
compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I propose to take the patch through Samsung SoC (me). See cover letter
for explanation.
---
 .../samsung,pinctrl-wakeup-interrupt.yaml     | 24 ++++++++++++-------
 .../bindings/pinctrl/samsung,pinctrl.yaml     |  3 ++-
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 1de91a51234d..1c07af24d6cf 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -28,15 +28,21 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - samsung,s3c2410-wakeup-eint
-      - samsung,s3c2412-wakeup-eint
-      - samsung,s3c64xx-wakeup-eint
-      - samsung,s5pv210-wakeup-eint
-      - samsung,exynos4210-wakeup-eint
-      - samsung,exynos7-wakeup-eint
-      - samsung,exynos850-wakeup-eint
-      - samsung,exynosautov9-wakeup-eint
+    oneOf:
+      - enum:
+          - samsung,s3c2410-wakeup-eint
+          - samsung,s3c2412-wakeup-eint
+          - samsung,s3c64xx-wakeup-eint
+          - samsung,s5pv210-wakeup-eint
+          - samsung,exynos4210-wakeup-eint
+          - samsung,exynos7-wakeup-eint
+          - samsung,exynos850-wakeup-eint
+          - samsung,exynosautov9-wakeup-eint
+      - items:
+          - enum:
+              - samsung,exynos5433-wakeup-eint
+              - samsung,exynos7885-wakeup-eint
+          - const: samsung,exynos7-wakeup-eint
 
   interrupts:
     description:
diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 26614621774a..7509dc36af93 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -313,7 +313,8 @@ examples:
         pinctrl-0 = <&initial_alive>;
 
         wakeup-interrupt-controller {
-            compatible = "samsung,exynos7-wakeup-eint";
+            compatible = "samsung,exynos5433-wakeup-eint",
+                         "samsung,exynos7-wakeup-eint";
             interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
         };
 
-- 
2.34.1


