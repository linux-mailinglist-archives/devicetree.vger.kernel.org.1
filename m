Return-Path: <devicetree+bounces-14518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 079B77E53AC
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38A351C20B0D
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A55F12E58;
	Wed,  8 Nov 2023 10:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EOetgq+E"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F04E12E54
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:44:09 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E041FC4
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 02:44:08 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c6efcef4eeso81953901fa.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 02:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699440246; x=1700045046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rrZs4emLFc9OjGPQr8NhVrDcx8agcy43Q5wHxC/jdF8=;
        b=EOetgq+EAIJ05W+ev4Wve0IkHGcFdIgWzLuewJbfEdOGqJjFEFe8kcgNE0SuvRUuaQ
         dO/nz8qBrD/EzIaTI59GRsQJdwxl5RvMzWrWOpHF4Z78GkC6qPhNXbCvl/D/YVY7Y3IC
         8Eibq8xaXG7jcEEz5Ry2H13xyrJC8IjBaxTxbS6+0oS7l15n8Xp92jSMOrmktjluwXRp
         o/oRde/0wfDPvjSaVmFeDqrxIlb5wtt8SWBJ55/7nDv8DF7YwxXhvuPvo8ItTGdaWPxJ
         NvJGHqUqwz8unWRDPSNe+2tT6fONv1FsSyN5tVyOnoh13ULf8z1LNIjCObfDuAliGtSI
         P8zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699440246; x=1700045046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rrZs4emLFc9OjGPQr8NhVrDcx8agcy43Q5wHxC/jdF8=;
        b=Qkq8dpjeDD9FRaaEIDBkky45NLEVYD6SBVDFBSA0RLcdtRT1TcyKx9MAbqQhGOfWRy
         QEXwmRWfIksl0QxtlDk0Ggt/RCQGoAVnW/ijEDpjY70sMqbH+u/dDPeh8qhWQR5eDrxH
         2N3tl9V2NDTnZrFOemfJOvwiqs9wpeyG5C3cuDjtoIE6jsxAzokmKIe09KEY4DrIbXtl
         1iaA0+QijQJAp3yAP4VUuKOYXLg7FQLccatkUzAxdIdZQ+DVxF2d1pYww1yHnA2AGUcM
         12eTAitHYWo3rt2weaesc6NwwKQSuNTmfb3JAJAkNJo5si7aTKZlgYG42PjW7HrQwrfe
         3i/g==
X-Gm-Message-State: AOJu0Yyn7ZckeuLIh+FQVkRmyYQdBVruPrw51FG1Gf0Kpqpg0ja+drq/
	wRZTPL+X/uAyBciKhbDrV5/HAw==
X-Google-Smtp-Source: AGHT+IGa+2sMFPnXDCg+/Kp94WpmPGqJxAqZSoI9EBPYbrrl77NmQH95hc0MBEym2E6Wk3ngRYzA3Q==
X-Received: by 2002:a05:651c:19ab:b0:2b6:fa3f:9230 with SMTP id bx43-20020a05651c19ab00b002b6fa3f9230mr1578553ljb.46.1699440246534;
        Wed, 08 Nov 2023 02:44:06 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id fj12-20020a05600c0c8c00b004094c5d92bdsm19377377wmb.31.2023.11.08.02.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 02:44:06 -0800 (PST)
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
Subject: [PATCH 03/17] dt-bindings: i2c: samsung,s3c2410-i2c: add specific compatibles for existing SoC
Date: Wed,  8 Nov 2023 11:43:29 +0100
Message-Id: <20231108104343.24192-4-krzysztof.kozlowski@linaro.org>
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
 .../bindings/i2c/samsung,s3c2410-i2c.yaml     | 22 ++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
index b204e35e4f8d..1303502cf265 100644
--- a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
@@ -11,14 +11,20 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - samsung,s3c2410-i2c
-      - samsung,s3c2440-i2c
-        # For s3c2440-like I2C used inside HDMIPHY block found on several SoCs:
-      - samsung,s3c2440-hdmiphy-i2c
-        # For s3c2440-like I2C used as a host to SATA PHY controller on an
-        # internal bus:
-      - samsung,exynos5-sata-phy-i2c
+    oneOf:
+      - enum:
+          - samsung,s3c2410-i2c
+          - samsung,s3c2440-i2c
+            # For s3c2440-like I2C used inside HDMIPHY block found on several SoCs:
+          - samsung,s3c2440-hdmiphy-i2c
+            # For s3c2440-like I2C used as a host to SATA PHY controller on an
+            # internal bus:
+          - samsung,exynos5-sata-phy-i2c
+      - items:
+          - enum:
+              - samsung,exynos7885-i2c
+              - samsung,exynos850-i2c
+          - const: samsung,s3c2440-i2c
 
   '#address-cells':
     const: 1
-- 
2.34.1


