Return-Path: <devicetree+bounces-111262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF8099DEF5
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5685928283D
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 07:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CAA11D9685;
	Tue, 15 Oct 2024 06:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F8cgN/9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9995F1ABEDC
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728975539; cv=none; b=RjzrYCpqTFiZoApUdBCvXCLVH927rAIbLTGG1ASj6XH8aQ36CAi4KTEDH+fekM2FSR4NugIhgaiMooRHbCGqKZ3vuk+QhyKucbz8+VqiRsyEcXHXr3i14fhs6pmIhDGANYT0Sa/0csw0i2Lb43GquDJ8MR9tgZarN0yGCqQh6EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728975539; c=relaxed/simple;
	bh=KHk7h72KzrixZPSmY652+q6BP2j77mrUbzaF1O99wYE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nxhQQfdi4zhqdKXzG3Szm/QaZ2xhiVJUGZIaiUQXrfANPNkxdJXFwCfFEjxFsEY9R83NQ1mR5o5IfCW6xINYo4VWc452/6j24EitGOxy9f83YnoA09fs3bSfATELo+zZqC5fS7X0qBxfwWs81efFQckF1cddojKWKSn5z8DJzHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F8cgN/9m; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4304ea60a58so6264165e9.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 23:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728975536; x=1729580336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3HzKXKEZzBQaZD9201Kj/OtZlaySZJuU2J8G51Yt+4=;
        b=F8cgN/9m1dRLH3vLP+O6uolvVePR7dmhc/6wRzV1nmxMciJu0cqsnkn69PFDSbJnb7
         wgPHHwZTm62kQfI5pwqQEVnQfyqfckW7hNTTvGj9IPXRJlLKhGGK2tBQ1BsfZgel2ru7
         kJ7Oc/EYRcj9F7hnjzkzUkRhKhVni1ChMq2e6Z2Q9Mlnb+kagXrn0QQ5e1+N57JBR99N
         cTgKDIjDkXGs2odaNtWsIMISv929S/UmCzEh8BlPESiI6L1AtmpQz6LKmO7Ej3A7rt+z
         c52TD/kLSF66AKTlqId3NriCzP9D18mCeMqe735REoWZ3yMOJc1Rht0J3pSdv8tFFcyG
         eu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728975536; x=1729580336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3HzKXKEZzBQaZD9201Kj/OtZlaySZJuU2J8G51Yt+4=;
        b=IKz72Bk3sY/RlsFJD1E5uMx+4Q1709sFDIC9n7l2uS9L6OtL/IqolLPJGhxWQ1/0DL
         TIUwgMJEQjisD558faEx1Sxm+nXuSC96UhcpAJmjBu7q8khiQOzGXJ/5vHNWcgL/RpUo
         Aj9XWE7dxRJNw6HkPvNhT98274B1/WAe8BgDjT4Lp3/aapWJsHv72qzR1tZ9zEKYHqSY
         R3TY/iZp/PHg15csKJ4SOpdIlMGpm15X9NdTAGUf350UI/MlQqJaWSQh7YEhpZkzIxLJ
         FQvM00Zs2Sz+ZFhVfv3LDYmA4qZ856mku06kWaIiC9dN88bnBrYwHRoeAlotSKmEZAW4
         SPYA==
X-Forwarded-Encrypted: i=1; AJvYcCVXVm83UCJtkr7YcFsLwREA5ESXAIPZg5DkNALkbOtTbem2vB/LM/G4C8t27HJZFvmyzh3bwpSegngs@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBINdl81KdaFhoY7e1Kp8bNxMb4M6EoOqrEWvgfOYu6tU8miI
	nsi58PhV0wkCyHfBsKWxPVnBnYwVAr0IHWLH5DG7+gATYsWkxUcCATZZwRnepUs=
X-Google-Smtp-Source: AGHT+IGX9LHy+IZRCrAjUc2HU360Y7NEiYtO23RbqSiqGuGi0FZJ8xxf+gyIM29W6+C5SNxGLJMF/w==
X-Received: by 2002:a05:600c:1c0b:b0:42c:ba6c:d9a7 with SMTP id 5b1f17b1804b1-4311df3b69dmr51933375e9.4.1728975535898;
        Mon, 14 Oct 2024 23:58:55 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f6c5d22sm8461645e9.40.2024.10.14.23.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 23:58:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Jaewon Kim <jaewon02.kim@samsung.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Igor Belwon <igor.belwon@mentallysanemainliners.org>
Subject: [PATCH 2/2] dt-bindings: pinctrl: samsung: Add missing constraint for Exynos8895 interrupts
Date: Tue, 15 Oct 2024 08:58:48 +0200
Message-ID: <20241015065848.29429-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241015065848.29429-1-krzysztof.kozlowski@linaro.org>
References: <20241015065848.29429-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Expect only one interrupt on Exynos8895 wake-up pin controller.

Fixes: e2d58d1e1c61 ("dt-bindings: pinctrl: samsung: add exynos8895-wakeup-eint compatible")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 49cb2b1a3d28..b7c2692f0ac3 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -103,6 +103,7 @@ allOf:
                 enum:
                   - samsung,exynos5433-wakeup-eint
                   - samsung,exynos7885-wakeup-eint
+                  - samsung,exynos8895-wakeup-eint
     then:
       properties:
         interrupts:
-- 
2.43.0


