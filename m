Return-Path: <devicetree+bounces-209637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16242B382B9
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 14:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CEA11B65041
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 12:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999A43568FD;
	Wed, 27 Aug 2025 12:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d0n9PSEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B220350D42
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 12:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756298548; cv=none; b=nG38d9lc+pB+dN8vt06+WgW0zQ0gJXdNxBYDMsjQ2X9B5Vi1lBLwxWcbLMtDtJ4AYbUiuGGPc1L1m9YE2NgcvuGfwvsORcTkOLLzA2fYZmfGg1sLVNNl8trV1zC370Y+WLCiCsMYYFwQOVmZ5sqKBJAiVbkG0hqJwh789py1lVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756298548; c=relaxed/simple;
	bh=FUVnP6N7cHQr47dLL4bin/JIRmBbPwyaNW8naNR4SC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sidy0liKVmDiXuoyjzS5BoPVoHOQvcxDWdQcuI9XNFaUhOPf4v3QX9zHb8tShpcbbThgLWbq2snf7LGY2kOsjO1Ld5r5PK83Q4a3vie5FaZDxenn8elG3TMdRUX/sLjOZ/P/M1aYPOqEOGyOwQIvLMydifjcz7qXffektJQV5AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d0n9PSEf; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3c854b644c1so2569827f8f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 05:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756298540; x=1756903340; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u/mZvV9kb0orEkNWMjrJAyvdt/44HABaPUU1+rYsimU=;
        b=d0n9PSEf1iLKn/iLkzzmaAeP2ilekJfZZo3zx8KE9J1GKnmDmLuxn/wtdzSZNYjvK5
         UH+WyFysw1B1+N8pH8Eh+BQCX3qbvjmRYBIOivzyUHdq1mtaHL87suD1MY07Se6bnonQ
         x/Cyf7PC5s55D4/C+g0efqLrzz925C6LsOnJGhAHfjenD4s8s6YiBz5YPJt/+zWdQi9y
         WQKfetJviK/ARGtWi9Pkn3zGzbE9LDVUQABfu09vL9+pfVs1wxNJrXpFTzwAhMc+Dl2c
         kfyhBFPdB0nih99EYc0cZztAv7Ok6vmS01a3wGBvYXTE6esfGQQZB6uD9avFZmx0wxCs
         Ipqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756298540; x=1756903340;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u/mZvV9kb0orEkNWMjrJAyvdt/44HABaPUU1+rYsimU=;
        b=t0sGsMPbUi4c92XU7Hw03dU7SK5AZW0Ul4f7W7X4ZmE4VYn7N3AH+ArwpqwnKfnJqR
         t3V1Gd5L0SrywA5ZNWdSnbQVO5w+XyP8SJW8N+TwxPVYFlQya3+Dt+sOS5eIQd8kZ5uG
         U30nyUqDTdphuU3duG6q3punsuJK3Sj4VrLYG+uVa0qORsoaiuJXyaslybgKSU7jqWb2
         jfK+cop8DVXVLOIpy/Q7gXazbEp+N8ti2ZuJPOS93y3Dxr+/OWRo/wk8uWIqcWpfAf4M
         J4YrnqfJwkHeU5D/mx68drh2K1iZY96oWCB+y7EjrCut9E8QyQEZ3M3deySh+pyb6T/8
         4amw==
X-Forwarded-Encrypted: i=1; AJvYcCWPUx3EyUAUxDB1HuOPREM7aelPQGHPAF0VrsWwtx7k2yjWy9AJXmeBYLGrYbRqCXgHH+ptQSLqK2Tb@vger.kernel.org
X-Gm-Message-State: AOJu0YwZJAsOb8UuVXIP5L+CLDtlQcDWx6IW3OaY+eP3ptBbegIRlU4/
	zYvyscxmte8b5ZnerVF3bg7K53Mm8RMRq8S+nhTYB+TIvzAA1d+ACcr3fjrK5pZjs4I=
X-Gm-Gg: ASbGnctNaitmCZYoU8KiEoub9MPlWTpkfJTfF2opz6bgAOCqZMCNEXX/XKFpioyYwIi
	7tJ7au2ROZRMCV+1myidsynjyhKp5J22wK0OpfaSByyujravsAdUQwvevOjKVaOMgm8SRuBuI21
	p0jBWJqaGiWk3wrjxVIAhHB928K/+2Vobk0iI/JDiiHhx8OzLhLl/5tWU/pgMF083ZdmLPuFgx7
	otlArw4yyAkqrnuoawQeINR6bwBtHjVwaNqhl4gy9ndaYV1g8q8XD72+q0/kGlx75B/GyuXvlpy
	G9hp418OZH5szLCf6ZFiN23fiyQTaV80sG+4JC/+SahkBG4ID/skOag8pcJIT1m5zYysRV2V2KK
	b4LShqs2+PpoKg9cocXpNR1VOafSRxlfH548dO/hUx5orP6zh/SfOupI1TL8/7smeCqgeDUJYde
	Hr1A==
X-Google-Smtp-Source: AGHT+IHDaXwaFMJ9SMq4opGoNcipuyVIDBjCdJ6Q67OG3cP6PVryX0OdauanSBAD0FIphu46Ph59Og==
X-Received: by 2002:a05:6000:26c7:b0:3ca:368b:b816 with SMTP id ffacd0b85a97d-3ca368bb8d4mr6810396f8f.62.1756298539689;
        Wed, 27 Aug 2025 05:42:19 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cbab3ead0dsm6439420f8f.29.2025.08.27.05.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 05:42:19 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 27 Aug 2025 12:42:15 +0000
Subject: [PATCH v2 5/5] arm64: defconfig: enable Exynos ACPM clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250827-acpm-clk-v2-5-de5c86b49b64@linaro.org>
References: <20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org>
In-Reply-To: <20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756298535; l=820;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=FUVnP6N7cHQr47dLL4bin/JIRmBbPwyaNW8naNR4SC8=;
 b=vr4YUS7k2uOJpKSWAUY/kzAsaucmPj03Ajnab4gJvYwF+6XrFjwzDMIGkG2H/vJmrLX4DqF85
 Z56PRG77k/rBpCAlx0bGdbJTtH91a+wz1P3HRfiu3UXboI+aGKI2hkH
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM clocks driver. Samsung Exynos platforms
implement ACPM to provide support for clock configuration, PMIC
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366cd12ae212a1d107660afe8be6c5ef..4255bc885545fb3bb7e9cf02760cac35bf2872fa 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1445,6 +1445,7 @@ CONFIG_CLK_GFM_LPASS_SM8250=m
 CONFIG_SM_VIDEOCC_8450=m
 CONFIG_CLK_RCAR_USB2_CLOCK_SEL=y
 CONFIG_CLK_RENESAS_VBATTB=m
+CONFIG_EXYNOS_ACPM_CLK=m
 CONFIG_CLK_SOPHGO_CV1800=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_OMAP=m

-- 
2.51.0.261.g7ce5a0a67e-goog


