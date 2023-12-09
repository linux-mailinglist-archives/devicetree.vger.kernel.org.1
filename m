Return-Path: <devicetree+bounces-23525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 861EA80B7D7
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41AFB280F19
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9141622060;
	Sat,  9 Dec 2023 23:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTdh+x3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ACDD172A
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:31:30 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c0a0d068bso35368965e9.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164689; x=1702769489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8u+KNC2QWJAni+OUMFkynao6EoRKHV0N4H89jPXatR0=;
        b=yTdh+x3rVhWjndIVa6bkI1NPrGiFRpFZZLJEWO0yJ7isixhJZmQUKAcUBmvC1PAMI7
         XTW2d6RGynX41m5GfV+gCyL6BzRZ6kIlUeauhqWKW9EF7+oDm44VTExbTNUsMrFNZtQv
         Um90M+059Dl/ehrgQ560pD8OPfUcG0voeZDrV6AvARjTAKIMpqRfo4Qkn5yXz2ygM6au
         e6nEGG9XaZHtSj2wFbBrRZGanPqCVF/VJ0mz5JcJ++X39FrVXX0Wz+oS/cwWbo0HzD4K
         I5B4uleaFUmrytsP7G6IWecQ0sYp1PyaBDQZY9pjVpNWg/b3A+Udv3ZcqMUlsKrNBfnW
         8LAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164689; x=1702769489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8u+KNC2QWJAni+OUMFkynao6EoRKHV0N4H89jPXatR0=;
        b=TPA6KbQxKiHGTruG4qTKUS2epY6WVrXD3o8Bv2aDwFN34LbdwN2va5eaJM25yffPfF
         2U1B2IVxcd/xhOsKawWLME97hGMhBV79YxQYzYUfxeisKKtFx1hUl0T0HYijYFaUDAKB
         3zp1yimjgy9Aq9V+i70oZXrEIbL0NSxTOkm1lKpVuMemQVWkg/ZXYTFiaY3EzP1NkFzh
         SltknzVDiOf0voQRnX5FzNnCxRZTdG4AwsMZ9XIsr/ZHclrELQTN/s+1Iq3ChxIWaeXx
         reVherHU2gzlrPbSGaAkhndUiF2nA6V3DEnfg1197xSXx+lY27hTaRpOZbj68UM42W+M
         FRBQ==
X-Gm-Message-State: AOJu0YyXODT6CiXtjCi0V+/Ct3HuTQrO2dyfsqHa+ss94aNmYnBTVGxE
	OgQKczEoEprEWhQHMBmd5fzAAQ==
X-Google-Smtp-Source: AGHT+IFmkK/l3otAQWLZWdNOPyi0qyQR3FBPQnZvyIYfPqpwLPwcPYijtpqVYqcbP5kWNiX+fFjhdQ==
X-Received: by 2002:a05:600c:3784:b0:40b:5e1b:54a8 with SMTP id o4-20020a05600c378400b0040b5e1b54a8mr1211640wmr.52.1702164688813;
        Sat, 09 Dec 2023 15:31:28 -0800 (PST)
Received: from gpeter-l.lan (host-92-23-61-173.as13285.net. [92.23.61.173])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c4f8900b0040c41846923sm1875277wmq.26.2023.12.09.15.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:31:28 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v6 10/20] dt-bindings: soc: samsung: usi: add google,gs101-usi compatible
Date: Sat,  9 Dec 2023 23:30:56 +0000
Message-ID: <20231209233106.147416-11-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231209233106.147416-1-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Tudor Ambarus <tudor.ambarus@linaro.org>

Add google,gs101-usi dedicated compatible for representing USI of Google
GS101 SoC.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
index 61be1f2ddbe7..8b478d6cdc30 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
@@ -25,6 +25,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - google,gs101-usi
               - samsung,exynosautov9-usi
               - samsung,exynosautov920-usi
           - const: samsung,exynos850-usi
-- 
2.43.0.472.g3155946c3a-goog


