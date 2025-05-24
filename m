Return-Path: <devicetree+bounces-180156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5418AC2D6B
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40E1A4E027E
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 05:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C2B1CAA96;
	Sat, 24 May 2025 05:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TXHOLTY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6322E1BEF87
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064103; cv=none; b=gZVefNF69xGz8YkkqGOZ2fnKQLXuS0scE20iFrL3lGSTcGE5lEMDptWQaAlhvnZMsQwnAcKjEV57ZLlXkLV1fxwuDk/r7Zy5N8B9Gn9ROQZQHIqgTmr8ahLpOqq3FuTg2LmbwbPGWxjjY5L8jLCrt9HR8uHlEEZCNlPvGHTgR1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064103; c=relaxed/simple;
	bh=TpC6PkRugx4epgip2T3sTO52PlSZ3ufOTy2Swc8UlBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PJWDGA/+ZxwPg0E5dWCyTAyBER/D2+64/Cl0gFoVZJcJwxD1o48BCbbnDCPTaMztlRdNfdjZW7nBDU5rkN/2jqLqR4Elak1xugwyDLK2ktSMqwt4P+9ulHdKjO3fmqHDMIZ+ncUkbxYWjLRs4CZ3Qf3E5+MMLMRZ5/N6mxm+s3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TXHOLTY+; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso79256566b.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 22:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748064098; x=1748668898; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PQMgvnHl/e3juDL0qxGSaY3LA5gtsGQ7YiUwPKjqwnE=;
        b=TXHOLTY+SoJgQrYJyEJAq0VeIldAcBhFyk8BkplsRSFZyVx3nfnKjKoaRbAbomb0AU
         ONd/0ulOJ4c+jyDAJbEup4Bu07DIlUuRswtu3sC6/jJAQq+u4NrJPI+TO2sq/1bPhuwP
         Im+riDpmxx+R6Ur0DKq/osdxG6ltQqXZjhYHTjx/R+0bMML3Bo1KPv+3y99MrlCc4U5V
         yDninXyZsUwmjEf4PZ9v1zN5O0mc5uHZYA+XYHk9Z61dAw0X8RzAQGwb3c8gfU3v7bUj
         G31qmH+d5G1Fejt3zEqpf/fT006q50VqHVauLzqvSC+bR7szhWHaF6aP8f4A6sfx5rg4
         +UCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748064098; x=1748668898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQMgvnHl/e3juDL0qxGSaY3LA5gtsGQ7YiUwPKjqwnE=;
        b=Y5INyyx60GYBY2Ev7yVfMuOJyqVnAdQ8vwopefWmPAmEVMDJesQqyirzZAxRXm7LTA
         JJUpVOoAIvD6skReFnFu4OOzsQlMFUZ4ZJuM+krEIGbPWyBIv7lBg5yrNcJD5o0Mq19u
         GfyHFjx7wCMOOIGZavKwQW2OBDCka3ANaIe2Z9OdfvG3PZUZJ8/sDNabDtV6QAEjQxPD
         b+uoZd4fMgkqAjsZuS0o9r/mXR17UlAQn1zl3b5a5TdwfgjCmF2TmUnKCeqUKEUJHkgj
         IkaZdzqpcuZT0PPDFooiLqbrPKcw8zoUgSPTgnFO5P1Abav36hdtmY0aMz9aEQzC9N1V
         VkGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRyJMfwoZDlaAgxL8suBIxyZEl32eBOwnQbgIqs++C2kGDlcSqxDYeJrA5jtBZCRaQqSGQueGb1cYT@vger.kernel.org
X-Gm-Message-State: AOJu0YyAYoqj1LXKxlLbnD83dkBZiJxy2hzhhlixTCT5pNJkfyoKxihn
	gm6xs/E8qQVlOY16qhjMBhbPqI189CrxHnCZny+84Tx6b7z/MbhjYUatZA8DgbGy7T4=
X-Gm-Gg: ASbGncsG0klZXD82tim3+1o92JB7A++5FQLzwWa2iO2CcmGiylTkhiphEcLhNV28cCY
	KbbTqyJJsLHPzGucVveWcxewBSLkB5kg2z6NqD6yUJ8sA13BOv20EOiZOZvb/cmHhc/Gfj0Y5fr
	x42HUCzw+yCLgLWUDloByIZxPiiEnfjNxEg0inRg2GNYp1PuCctzPz3rQksSq760+bsO/ymeG3z
	biXoE0SI1q6HX8nsaaZ6YYkLvcpvv7FXTE4rhWaG5SjLC6KE6aO8gVlNIeywcNOtLPvjtUjywXl
	yoVkd4gjNUZIrdurjcgTW3zL5+nAzxbGoIFX07T7yTFUyGBMUhKcBQnVXwIKuliE/M7E3GwWry3
	SquJs7eIN27JvTEvEZUjak/9+/GCCptDVL77nuDy+ZvaeWg==
X-Google-Smtp-Source: AGHT+IHXaAPaMnNiBFZlXKcRr+qFufWpMyOC01eMRk+Jpj8a7drQ0LfzI9zmQlfsyWsV8hXXiHulVQ==
X-Received: by 2002:a17:906:6a29:b0:ad5:3055:784d with SMTP id a640c23a62f3a-ad85b1300dbmr126184266b.34.1748064098471;
        Fri, 23 May 2025 22:21:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (68.57.204.35.bc.googleusercontent.com. [35.204.57.68])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f6402sm1106778066b.178.2025.05.23.22.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 22:21:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 24 May 2025 06:21:28 +0100
Subject: [PATCH v2 1/4] arm64: defconfig: enable Maxim max77759 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250524-b4-max77759-mfd-dts-v2-1-b479542eb97d@linaro.org>
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Enable the Maxim max77759 as this is used by the gs101-oriole and
gs101-raven (Google Pixel 6 and Pixel 6 Pro) boards,

The child devices' defaults are based on this MFD driver's state, so
this commit enables those implicitly as well.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 1f3fd474911b7ab1aa75dc72d42614f12b2dfc54..07e5e76edcbd3fcc4358d08663f51cca00acd49c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -769,6 +769,7 @@ CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI6421_PMIC=y
 CONFIG_MFD_HI655X_PMIC=y
 CONFIG_MFD_MAX77620=y
+CONFIG_MFD_MAX77759=m
 CONFIG_MFD_MT6360=y
 CONFIG_MFD_MT6397=y
 CONFIG_MFD_SPMI_PMIC=y

-- 
2.49.0.1151.ga128411c76-goog


