Return-Path: <devicetree+bounces-21675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E48804DA0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FCA71C20BE7
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FEAA3FB18;
	Tue,  5 Dec 2023 09:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K6PXrMUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3173C9
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 01:22:46 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c09d62b70so25173215e9.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 01:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701768165; x=1702372965; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KiwDzYyRIlGmD4rq+fT3CJuYXFmHWLQt6YDjPACpru8=;
        b=K6PXrMUJ3ZkAE7taR88Jz0kpQ1o2JPlgeeN+x42fvTmHyaJX/VvwiGoCZFX3jhPyU3
         WeMZVGs4CS+qIRXIoFAX5Oxf7YbZq+0t7c52ckWMbHv2c7x/HaNnQ9K1O2cbyzTBVc5d
         EwhRuBhZKUoJEB4yppFNhfQWqdffZQNsi0rEV2jbTUTqzF3zOMKf0FtWEBlldj5ec+6p
         VOYa35a3flg8C611lOrtaQERRK0UWK2buJqOeHlx7Hsg/6S6NGx/IiPd4V5BWpE4mjRx
         P9g7gJMxAYMDjK61DkTUiDlZUKB9YHDT57jX0OP/krnd/sNCHO3njv2NP7upAgJzEW8P
         DzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701768165; x=1702372965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KiwDzYyRIlGmD4rq+fT3CJuYXFmHWLQt6YDjPACpru8=;
        b=NUARkDlJPYSy9DPZkfbqJjv2MjAhl8LsSYumBvARxZvrnwUbIyij9bOxR0BX8kYk2C
         RKKxREPkKToOVU042JkrvMCz2Y1Yn8w8clCI2dM5Pv8VyzDus7wKQoNPKGMPHinF59cy
         iVUxvdaOhUvJqfD8TnawyJaij8RnbN7TaH2JWwwj3eDGYSxKAhSYysLrF1II+v5Xyx1x
         3peoFBk4lIarL+nsxL3rnwxNkZOIBWUZr3OkNDvkzMSeaNe8WIh8XLJhvB6vxwBLjvEu
         6/nM/7QmNXHTgVyNKoenbG2APB8LvTT+CnC3TxoIOcblIdZ0/wpmXlu4TXuM3Ch1cGxI
         CCnA==
X-Gm-Message-State: AOJu0Yx1n6fkBanwaXBFcsPirpu3KMR1GxYpiQBQGNa8uEosQkDgpL1g
	gYaR1rEWJclyaXv0ixUN2MncGQ==
X-Google-Smtp-Source: AGHT+IE6Nv2mMVcB6u6tOx6vUp8cXe2wfi+WLQNn7IelBgGazYOydaEFJMItf1gzh9HaZcGdX6MMMQ==
X-Received: by 2002:a05:600c:524c:b0:40b:5e59:99e0 with SMTP id fc12-20020a05600c524c00b0040b5e5999e0mr182502wmb.256.1701768164973;
        Tue, 05 Dec 2023 01:22:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id g10-20020a05600c4eca00b0040596352951sm21692287wmq.5.2023.12.05.01.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 01:22:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	linux-fsd@tesla.com,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/6] dt-bindings: samsung: exynos-pmu: add specific compatible for Tesla FSD
Date: Tue,  5 Dec 2023 10:22:27 +0100
Message-Id: <20231205092229.19135-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231205092229.19135-1-krzysztof.kozlowski@linaro.org>
References: <20231205092229.19135-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tesla FSD is a derivative of Samsung Exynos SoC, thus just like the
others it reuses several devices from older designs.  Historically we
kept the old (block's) compatible only.  This works fine and there is no
bug here, however guidelines expressed in
Documentation/devicetree/bindings/writing-bindings.rst state that:
1. Compatibles should be specific.
2. We should add new compatibles in case of bugs or features.

Add Tesla FSD compatible specific to be used with an existing fallback.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I propose to take the patch through Samsung SoC (me). See cover letter
for explanation.
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 28e2cb50d85e..65f77442ff23 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -53,6 +53,7 @@ properties:
               - samsung,exynos7885-pmu
               - samsung,exynosautov9-pmu
               - samsung,exynosautov920-pmu
+              - tesla,fsd-pmu
           - const: samsung,exynos7-pmu
           - const: syscon
       - items:
-- 
2.34.1


