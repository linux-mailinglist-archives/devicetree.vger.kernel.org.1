Return-Path: <devicetree+bounces-14522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A27577E53C7
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EA2BB20F3B
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9BEC12E60;
	Wed,  8 Nov 2023 10:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EhaNtd0b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570F612E56
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:44:24 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 722A32121
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 02:44:23 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso94769051fa.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 02:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699440262; x=1700045062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=932+POzuiCpVd1FMO8emES7304xq1CZHsFhbsNym7D8=;
        b=EhaNtd0bfrAm6px/3RYUsAwCR4nSvu+SAtQY7zQxmXwMSDX3RxmwPOJxfDWG+rHUtq
         ZR0WGiK5hakg8RqL7b1HXhHvryvlQrjQMmdE7HM9F3hx4jjJpMHfuuD7wbjN4OxPv1JW
         VBxOYeByEVZOUu+DLYfGVEwqXx/Wvx9rEo1SEXNC3xQUlGZfnwfWhI0AsoZJUraZrt0Q
         Q3zTvDhpnSP9qeC27LQ7+8HgM+LBMMjoDpLH7xCbf7x6+NZmboPp5VC6ilUHP7VDlr9h
         bFTWvu7Jh07B5vQBaZ5YrDrLU3OX2QfVKO/K0jOm+uMx3qscz7WuCgoFRGyqWsR/oNyf
         K6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699440262; x=1700045062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=932+POzuiCpVd1FMO8emES7304xq1CZHsFhbsNym7D8=;
        b=lmzEu5b1EozUP+9/cgjr5HIzq1vB43AnkLCXkmphl/fDghY0L8Q9k/ESxrvYWnkW0C
         EJITO8r7kFGaUsemUkHC25qpBLzDFwRXjGn5f5rGbGF+mJ37QijCQ2tubDvO7IufYd97
         QoGb0Pa1BpyVx2oLnVFzzeaXfD8qb6t0pIjhO30Lp/HYuGmdsUtCxzDl3EfBZHvu/0t8
         s6HdB2ScR9hZ15EBLNmpDhlUNojceAnksZ7LhAjSG7spnspKZj30zdNS/PKwgI7Pvc3u
         mdB9AyWe0BPtMFyapwtVSkb+83Lim3KOIiwUAiu9zrr4VbFiG+vSQRW5veqCLu/EgBDs
         sTXg==
X-Gm-Message-State: AOJu0YxfSWxJcv7rsRRjXlb6tPu1SQsEn97v41pN24xRjp/GaBnWzCZs
	sB/2D1nW+fJDtRPleT9TxcS4aA==
X-Google-Smtp-Source: AGHT+IGCpSGI0CR0667rdoPAw+/9BwGIOQ5vf5WLNiqXBsw+h3xPKE36aRvV/bSi7NnLY3zOJHYzOg==
X-Received: by 2002:a05:651c:504:b0:2c5:14e3:f1b8 with SMTP id o4-20020a05651c050400b002c514e3f1b8mr1507701ljp.7.1699440261813;
        Wed, 08 Nov 2023 02:44:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id fj12-20020a05600c0c8c00b004094c5d92bdsm19377377wmb.31.2023.11.08.02.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 02:44:21 -0800 (PST)
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
Subject: [PATCH 07/17] dt-bindings: serial: samsung: add specific compatibles for existing SoC
Date: Wed,  8 Nov 2023 11:43:33 +0100
Message-Id: <20231108104343.24192-8-krzysztof.kozlowski@linaro.org>
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

Re-shuffle also the entries in compatibles, so the one-compatible-enum
is the first.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I propose to take the patch through Samsung SoC (me). See cover letter
for explanation.
---
 .../devicetree/bindings/serial/samsung_uart.yaml   | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index ac60ab1e35e3..0d0215b23ab7 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -18,9 +18,6 @@ description: |+
 properties:
   compatible:
     oneOf:
-      - items:
-          - const: samsung,exynosautov9-uart
-          - const: samsung,exynos850-uart
       - enum:
           - apple,s5l-uart
           - axis,artpec8-uart
@@ -29,6 +26,17 @@ properties:
           - samsung,exynos4210-uart
           - samsung,exynos5433-uart
           - samsung,exynos850-uart
+      - items:
+          - enum:
+              - samsung,exynos7-uart
+          - const: samsung,exynos4210-uart
+      - items:
+          - enum:
+              - samsung,exynos7885-uart
+          - const: samsung,exynos5433-uart
+      - items:
+          - const: samsung,exynosautov9-uart
+          - const: samsung,exynos850-uart
 
   reg:
     maxItems: 1
-- 
2.34.1


