Return-Path: <devicetree+bounces-7846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 741957C5BAF
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C7881C20971
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302FB1D53C;
	Wed, 11 Oct 2023 18:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qIzRaouv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885251F948
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:49:20 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDAC4D6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:17 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40675f06f1fso8502215e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697050156; x=1697654956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S362tpJExSD9AFXVozhsg8w79jdxlBQhALXvNfI38Lo=;
        b=qIzRaouvzI2bI7Ma67wYLbq0PguxxuRA/9z+HPMGps597b7cVUW4iC3z9E4dsMgHhJ
         yvT4itIu+8yJmW3rV9tdEhPPO4i6cLFb4kPpfrLZm5YGWbV+CUWq+Y8fWN4MqXV5/1KK
         DyLlUpB4Z5eb+v7Cgup2sbxu7TvMjlCJgihCguOQoSlNbA7KgeVjTA4bThVf2TCd8Y7F
         QAiUyPAMOtZqgEV0OMqKIyVliIUuQEuTeTpRzlqqofBn8MvGjGACmaHR+OwFGldoS4WI
         P4Xuz09/lNW3vdBJlPdc0pvXAFif1iA0mEKXV5o9UurpKUZjxJJC5vpJSsH1Zu2YDReK
         +gDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697050156; x=1697654956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S362tpJExSD9AFXVozhsg8w79jdxlBQhALXvNfI38Lo=;
        b=XdhtgXQ4bjfjO4GpQ4QOA+vIwfWMQ+9zA8Pf+WwVWzPpM/KVt8K5TxeKvWV63ELzMY
         iS/R55NNoZFcrSVzGQWxKdsRhFK8t+iHWOiuPDcBL8LefH8dUhyNO6dy/ERIV8rHFD0b
         PWRVjTSJZ6klPq6EwaNhI5LCe3hEkRLkHS1rOPaCc+UlCT/paCzuaXDSOj7vjFt4LpPK
         t48wYb2n6DT/H1mqmDAMn4+NVSiUdd9DeIOey454F2z3nRF/UyVX1lU/6cplu8Y5bP98
         /E1yCI+xVH4Xk94sTzsEntvJZMepBv7qnm5YG2cVTMxtegwwSEKtPibXWd0PTlxKUo+t
         nu/w==
X-Gm-Message-State: AOJu0YxOMWDjWqz7pK+nsr02e+/k0ni5oxEa0z3NR6ocaOROWCDKT2PE
	AHAzBwuLP/NETFbmYgl4lGj8PQ==
X-Google-Smtp-Source: AGHT+IGWXJgG8jQ2wZzHbOpholobKcSzj72Q/s7q+IO71JO3r66rxoX1o5QEGkQf6t3ixfI+6Nr3Zw==
X-Received: by 2002:a05:6000:71e:b0:329:2649:ced5 with SMTP id bs30-20020a056000071e00b003292649ced5mr20464742wrb.32.1697050155898;
        Wed, 11 Oct 2023 11:49:15 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id v6-20020adff686000000b0031980294e9fsm16003875wrp.116.2023.10.11.11.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 11:49:15 -0700 (PDT)
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
	cw00.choi@samsung.com
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
Subject: [PATCH v3 03/20] dt-bindings: soc: google: exynos-sysreg: add dedicated SYSREG compatibles to GS101
Date: Wed, 11 Oct 2023 19:48:06 +0100
Message-ID: <20231011184823.443959-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231011184823.443959-1-peter.griffin@linaro.org>
References: <20231011184823.443959-1-peter.griffin@linaro.org>
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

GS101 has three different SYSREG controllers, add dedicated
compatibles for them to the documentation.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index 163e912e9cad..dbd12a97faad 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -30,6 +30,12 @@ properties:
               - samsung,exynos5433-fsys-sysreg
           - const: samsung,exynos5433-sysreg
           - const: syscon
+      - items:
+          - enum:
+              - google,gs101-peric0-sysreg
+              - google,gs101-peric1-sysreg
+              - google,gs101-apm-sysreg
+          - const: syscon
       - items:
           - enum:
               - samsung,exynos5433-sysreg
-- 
2.42.0.655.g421f12c284-goog


