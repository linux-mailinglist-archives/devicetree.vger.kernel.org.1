Return-Path: <devicetree+bounces-14523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD157E53CD
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE3D81C20AF1
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E864712E5A;
	Wed,  8 Nov 2023 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q/fFqIm1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A2D12E59
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:44:28 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD51258F
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 02:44:27 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso57051585e9.2
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 02:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699440265; x=1700045065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PV5diolHzkDYNZO8WufyA3F1OzLH/Kn/j0r7E3RxmpI=;
        b=q/fFqIm1pNWVw9RWz0hbxrB8zEjHFyWAKjlSgQkEKbcncTumbpZOBQQjgsLCqeB9c2
         TYScirxbqaQUEk4FyO/Ks0dAaRAy5TzlbXdoDJ6IVa331XbRyxRhp1Ovm+r+FMq1G9Ij
         zf5nwCYKSu+EZmS+Rs2A56cUEvdpopnia26x/aEuSm8Pn0rFXM0GhRyR1JwR4DEOl5g1
         elzgD1tNrCv99tR7Y1/YCOAOSO/0h9PrS6g25YzPImrF2kvQQ9XDXuVWrdb0s5+PvSHf
         7kNC+eNgqcm8ctHaQ64i5dbvCyYRsi92XdRVJN5zfjoEPYQnjyOS0wTZ2Sn3n40Rd0AQ
         MvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699440265; x=1700045065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PV5diolHzkDYNZO8WufyA3F1OzLH/Kn/j0r7E3RxmpI=;
        b=FrqD+K7kXxG+mgGWwgBexnn4fX1qeWondZZmi3WtlWtlRXRpByH5JClQKnX3EW3BoK
         dnVIEsBiEdVBG9snjU57/VElTaknZ2Ipjh610YdBzV2TM4+XCDVmMNbFX7kcH1PXGph5
         lwAj0thx9OG4zQZrOmk5M1O96ET7pB1yoOsjZsdubQQw2w5PAKNstlHqWNZbpJdnMVp0
         8NhhH8tEOFLa5o048u67Ouds3pH/ciVPeJ7WGgNZ2VwXW2suvWMpNNEKGY7ep8hvKdN7
         kp9SmuS4/ufSD7oY1BrpG8+o6GTv9swlAGWMjLRfBM1XN0rfoOYzH/ap7VA7N/Jyq7tQ
         F+eA==
X-Gm-Message-State: AOJu0YzZi1Hylc/vQSjp7+cLv8y2Mf+PQen7EANeey1Qt5HBqqAci8D+
	Cmu9v5VF7ofL0yM9oBLssh1SDA==
X-Google-Smtp-Source: AGHT+IE6LA57XGwizIDEYldEFclmufoWGtfeboQZQs5v6tX5jMVi5UnfB4CCXBaPubn6aW9Tzqj6ag==
X-Received: by 2002:a05:600c:1f8f:b0:406:81e9:ad0c with SMTP id je15-20020a05600c1f8f00b0040681e9ad0cmr1347385wmb.41.1699440265563;
        Wed, 08 Nov 2023 02:44:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id fj12-20020a05600c0c8c00b004094c5d92bdsm19377377wmb.31.2023.11.08.02.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 02:44:25 -0800 (PST)
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
Subject: [PATCH 08/17] dt-bindings: samsung: exynos-pmu: add specific compatibles for existing SoC
Date: Wed,  8 Nov 2023 11:43:34 +0100
Message-Id: <20231108104343.24192-9-krzysztof.kozlowski@linaro.org>
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
 .../devicetree/bindings/soc/samsung/exynos-pmu.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index e1d716df5dfa..6492e92586d9 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -48,6 +48,12 @@ properties:
               - samsung,exynos850-pmu
               - samsung-s5pv210-pmu
           - const: syscon
+      - items:
+          - enum:
+              - samsung,exynos7885-pmu
+              - samsung,exynosautov9-pmu
+          - const: samsung,exynos7-pmu
+          - const: syscon
       - items:
           - enum:
               - samsung,exynos3250-pmu
-- 
2.34.1


