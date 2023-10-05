Return-Path: <devicetree+bounces-6196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1DA7BA374
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 86A6E1C20927
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A015631A9E;
	Thu,  5 Oct 2023 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AbQZamJf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D3030FB8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:31 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D3186811
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:28 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40537481094so10222105e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521446; x=1697126246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xm1Xoms6oZd6xtVAii0x+Ehd7QscBFZjC7N/3rM4L+E=;
        b=AbQZamJfp1IPbiUPXSmmAsLLQmEA3T1t7xh+w7asSiyjfiE0qjoH4Fs3u1UeeohUq9
         Czuk9yuTlYjzysGOe1Dv2pJJDCwqk+bnkU3KxitfjpRolhLh96/upJYn0QjqTaI2UT+0
         yNWNKTIeVxp+JvfjMGhxjyWY7+kXbXJmNejWwM5ScUD3Ac3fhRSW6hz4HN6C7bmIMpsa
         A9LaTEeTK2NEMwyD0SGk0BaVHaKFygv/QObVt5C8Ck4GObzbPCFw9fKvNtPHprgOfZ6j
         mmDCpjq1nQE6DpAsz4oGQ64JH9DbjDx8MBEvMw+xWQ9y6oX8d3dmsqm3d3MMKWaA7MFg
         uA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521446; x=1697126246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xm1Xoms6oZd6xtVAii0x+Ehd7QscBFZjC7N/3rM4L+E=;
        b=WkhCzzP6yjtezKXLl9THRW95flHB8rpO/qlYmvDkbvYLHIb7LC9PVFr1Yy3vezrNYZ
         LqmFyWjEOOyFh9s/TigYIGUMjxWDmKlPCUse2e+vj4G5Kh7A6BfhxNGX3s92HVT9WExh
         lTYmMKFhao0U48X0ErB9pL6je4PbJ5kU7rYV+Ef+7ARGM3fQaJqTLBern6FSO3xNC8zE
         cSYwd7VT6FMOa8VikgsxTFmodPM5lftVKAQLyyrDsdA1wh6Pn8P49EW3Qci5qup9J8T3
         0L550OXgfoj1TT1c53b1UZprSeOoPZniUPlmpqUN+u/dwfhljtnuKXvzdyKoiiRANjJF
         PZNQ==
X-Gm-Message-State: AOJu0Yxj0o9dZzPwt5CKpGWfDpsPd0EvZD31Z4wYdvEv0R+edNJwfIgD
	4+qQ4QLVkMlTtP6xGM4nTyelmw==
X-Google-Smtp-Source: AGHT+IEMvnjwfd4IeLtIJsxbXTd4pMr2IsgDm+E4xxpemwktFFHqJeH+cuxPlOWDyzgeNbQFbEBaMA==
X-Received: by 2002:a5d:4c4a:0:b0:322:478b:2be9 with SMTP id n10-20020a5d4c4a000000b00322478b2be9mr5294165wrt.25.1696521446692;
        Thu, 05 Oct 2023 08:57:26 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:26 -0700 (PDT)
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
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 05/21] dt-bindings: watchdog: Document Google gs101 & gs201 watchdog bindings
Date: Thu,  5 Oct 2023 16:56:02 +0100
Message-ID: <20231005155618.700312-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20231005155618.700312-1-peter.griffin@linaro.org>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the "google,gs101-wdt" and "google,gs201-wdt" compatibles to the
dt-schema documentation.

gs101 SoC has two CPU clusters and each cluster has its own dedicated
watchdog timer (similar to exynos850 and exynosautov9 SoCs).

These WDT instances are controlled using different bits in PMU
registers.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../devicetree/bindings/watchdog/samsung-wdt.yaml      | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index 8fb6656ba0c2..30f5949037fc 100644
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -24,6 +24,8 @@ properties:
       - samsung,exynos7-wdt                   # for Exynos7
       - samsung,exynos850-wdt                 # for Exynos850
       - samsung,exynosautov9-wdt              # for Exynosautov9
+      - google,gs101-wdt                      # for Google gs101
+      - google,gs201-wdt                      # for Google gs101
 
   reg:
     maxItems: 1
@@ -42,13 +44,13 @@ properties:
   samsung,cluster-index:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-      Index of CPU cluster on which watchdog is running (in case of Exynos850)
+      Index of CPU cluster on which watchdog is running (in case of Exynos850 or Google gsx01)
 
   samsung,syscon-phandle:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to the PMU system controller node (in case of Exynos5250,
-      Exynos5420, Exynos7 and Exynos850).
+      Exynos5420, Exynos7, Exynos850 and gsx01).
 
 required:
   - compatible
@@ -69,6 +71,8 @@ allOf:
               - samsung,exynos7-wdt
               - samsung,exynos850-wdt
               - samsung,exynosautov9-wdt
+              - google,gs101-wdt
+              - google,gs201-wdt
     then:
       required:
         - samsung,syscon-phandle
@@ -79,6 +83,8 @@ allOf:
             enum:
               - samsung,exynos850-wdt
               - samsung,exynosautov9-wdt
+              - google,gs101-wdt
+              - google,gs201-wdt
     then:
       properties:
         clocks:
-- 
2.42.0.582.g8ccd20d70d-goog


