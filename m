Return-Path: <devicetree+bounces-7843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FB97C5BA7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E6002821B4
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894D11D53C;
	Wed, 11 Oct 2023 18:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HALuFxuc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1293994E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:49:17 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B367DCF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:14 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3232be274a0so876704f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697050153; x=1697654953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjn+HCp9G7ZHzIyDxbnLCnTHGxIfK36bGHTjBoI+aL0=;
        b=HALuFxuctaoY5FsdXFeK6hiBeTxfgFHGMMfphvzbqafnZcRbBsQXyuuIUHtTvWAqqJ
         zmKU6AQBdyM6cJSHakwxZOQ33XTE0tWM+XWD4VqZR4EOtnymX8GG8kfYWapSYQkAmgDx
         GDAkX5YuwUBsoBIgVduhn3ahqR/0b3Y3IzOk/Kl+7Y0py5f/1V/ae53zA5mOzKGpVkfG
         fm4p4VTO9bwxJUXSzIbvAwnfk4/fY0WRwrR2tfvJ6fQkgHM8vJkY8hjghTjtLhnGSVe8
         p1oZfHRGZsAOoRxjEI773HC8A6M4v5uz7Kep0AiQEH0I0dpooDo6D30evCRMLS/tLFe1
         WDQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697050153; x=1697654953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjn+HCp9G7ZHzIyDxbnLCnTHGxIfK36bGHTjBoI+aL0=;
        b=I0THbQLJBLR6ktDtozoF4UEHDPhtp7RyMXSGZ5Cye4d17Jq0eQaoLCOQx+cPPGevMD
         6e61c3vNb/8Uzp/DzSvCo3DEErDi6j2k1RWZaVaI/ynVPbFLulnt+mL+B5knM5w2qMgY
         s/Gs8h/ctl+GbHdYBuaW2aMZcX/mJc3pc33xWqJj104cIaOHMRnnk67ZTIBunpsVeqps
         1dAZf4Qjx2X/UbTxabjIX2PBWOuPM+l8feYiE6m2l7yQbWusFtPeZjBkB53/fNDevR5J
         JnymXzi+t1ZItKLbRFvwzYV6tVVaTD/5i4TTRWt5Ydg7SHbPB8nMUsbknMNq8VRYtANa
         HX0Q==
X-Gm-Message-State: AOJu0Ywnh85365j4iVVcStdkpx5kHmnwIVX9Mg7WPqKOgvDa7Qb8tilZ
	W+sM7lmPJ6U245I5tRozo1mzIA==
X-Google-Smtp-Source: AGHT+IFOwG6H4bUwl9oYnw/1oaFVA9Ze2qjkasIInOAk9yMIVanltuFWLRsVMEOKeF1K8mucpLtxfA==
X-Received: by 2002:adf:ab0f:0:b0:32d:8113:eda3 with SMTP id q15-20020adfab0f000000b0032d8113eda3mr3616045wrc.10.1697050153044;
        Wed, 11 Oct 2023 11:49:13 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id v6-20020adff686000000b0031980294e9fsm16003875wrp.116.2023.10.11.11.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 11:49:12 -0700 (PDT)
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
Subject: [PATCH v3 01/20] dt-bindings: soc: samsung: exynos-pmu: Add gs101 compatible
Date: Wed, 11 Oct 2023 19:48:04 +0100
Message-ID: <20231011184823.443959-2-peter.griffin@linaro.org>
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

Add gs101-pmu compatible to the bindings documentation.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index e1d716df5dfa..9e497c310532 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - google,gs101-pmu
           - samsung,exynos3250-pmu
           - samsung,exynos4210-pmu
           - samsung,exynos4212-pmu
@@ -35,6 +36,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - google,gs101-pmu
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
               - samsung,exynos4212-pmu
-- 
2.42.0.655.g421f12c284-goog


