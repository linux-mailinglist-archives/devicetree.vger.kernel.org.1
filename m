Return-Path: <devicetree+bounces-187322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14468ADF87D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 23:10:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CAC33AD045
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC646267B6D;
	Wed, 18 Jun 2025 21:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RdAjw1GQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D9A266EFA
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 21:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280961; cv=none; b=pWXD7RBSHju/TQUnb7Gme8wRSpFVNAZSnb6L3J4hHGky98ujaNUb4/ONTxVL2lAWM+uOYd9fQo1M5ofOwgx5skn/zvISaWms9rKUjapYwrQz8jMuSClWPrUxMWxkAR7z+KoCOueoWyUKmVh7v03WROxVzUTdlvVlwpFuBYFt5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280961; c=relaxed/simple;
	bh=FXb5Ooh1SoKLFB+GF1YDuF7hepy8ALKLUWQZf6h1mvk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Yaq3N8/nDM7sVczv+n4kyZSd72qnor/+8dWT0wjHYshqOv6DJYOuv4lL/smP8OOWWuzFqNln00hStcMbm6H3+wgQWSuWZ3i+VYwi4fnKnUdOK2XpgUZ0koxgKo+GjfYF8HYxR0HV4f0HAIGESbCN9Hedzic2ovd6ZaQRR78jd28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RdAjw1GQ; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b1442e039eeso93970a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750280959; x=1750885759; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qsGE8lw3KH/D0SLaONE7VxsA+KaDyJNSSOZHiKLjPmQ=;
        b=RdAjw1GQmLoiyB5hyBWcoD6R85Y3CXu2kO+sDt4EqJyZ90b2OR1BX4X3L1y/TIzcKy
         AZybyR8UqNGNeSuS6g92UWfkVp8pT3BEVbDdZlNYaBu03cZ1sQYW4P+po4N3CaHZ6lEK
         DhgQyCus9rYpO3BddekEPyvvTbowtR69DzNXjX88kTOr6A1Snk/8OsEnswpmD2bGJR74
         2NSF1udqTKaDhN9exgpRSPgWxo6CL05EhbPj57dztADmLwG91OhHkvo/l03RCjDK0KOs
         xQ6bL9b2cygCvtrURtKTJ9xYcFdp3hHKaifOkoA0FsXWjlObeo6JR/nKDrViEdV+rZS0
         7Sgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750280959; x=1750885759;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qsGE8lw3KH/D0SLaONE7VxsA+KaDyJNSSOZHiKLjPmQ=;
        b=bUftCyCA0TxuHaQKaN0aCpAZfkbKdUIxMFJadIii8mK+6+0ZsUICfnOetAdP/DAywK
         Sx4p7mf5EEJqeNr4OtYWhD4m5+FHNLiqYsDMnKyf9/F6KaZUl6usQ3kiKrwpRhLwvZgV
         zgaJA0FgiThFND+Nx+L10+sHTMMdKDXFzUfsc1AOa29zTnxXVE49hRnfeKYBpf2pCEgY
         FuDQykE0wNmTtpk1LBchXk+m+Lrd0n5esxPx9A26//7iaXIrDAthQpwG9R5KhIsI1Otl
         jqrbfxfqHZAQ1v0U6ItZAWrMw43WYYE3Bv02gwjxPIZkjZ4RyxMXfO9MmskyLA+ruME2
         W3Ew==
X-Forwarded-Encrypted: i=1; AJvYcCWT80xvFX3tzbtipf7BdkJlZAp6n4e+gY/neMu/I/f7GCLSehiqTLjKxCVnkSimW7v26hAQB6x/A8oR@vger.kernel.org
X-Gm-Message-State: AOJu0YyUbt0wHMftYLx68PLWB3H5MgrVRwRmK9IXhnReK7dgvZ5ttsaD
	aiO0pGV+JDWL/MB5ZIPgStc3dfVtq7PEBW4OstyMFyBDxh0rQY8fn8XsMkLNCtW78vki4WH8XKq
	0GSLgJM8A+2DiIZfqAzfVKTbypM3D2w==
X-Google-Smtp-Source: AGHT+IGY3GT0ocfBJmJq08AJGD95U1laah8rswBwXGAH9V+lUNOhBR7Cym5NnrFN413oXgb7BGxavodvCRnnP6tKZZo=
X-Received: from pfbjs2.prod.google.com ([2002:a05:6a00:9182:b0:748:da37:7e37])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a21:790:b0:1f5:7f56:a649 with SMTP id adf61e73a8af0-21fbd57fc15mr29674578637.13.1750280959620;
 Wed, 18 Jun 2025 14:09:19 -0700 (PDT)
Date: Wed, 18 Jun 2025 14:08:43 -0700
In-Reply-To: <20250618210851.661527-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250618210851.661527-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.50.0.rc2.761.g2dc52ea45b-goog
Message-ID: <20250618210851.661527-7-willmcvicker@google.com>
Subject: [PATCH 6/6] arm64: exynos: Drop select CLKSRC_EXYNOS_MCT
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	John Stultz <jstultz@google.com>, Youngmin Nam <youngmin.nam@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Since the Exynos MCT driver can be built as a module for some Arm64 SoCs
like gs101, drop force-selecting it as a built-in driver by ARCH_EXYNOS
and instead depend on `default y if ARCH_EXYNOS` to select it
automatically. This allows platforms like Android to build the driver as
a module if desired.

Reviewed-by: Youngmin Nam <youngmin.nam@samsung.com>
Tested-by: Youngmin Nam <youngmin.nam@samsung.com>
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 arch/arm64/Kconfig.platforms | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index a541bb029aa4..46825b02d099 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -109,7 +109,6 @@ config ARCH_BLAIZE
 config ARCH_EXYNOS
 	bool "Samsung Exynos SoC family"
 	select COMMON_CLK_SAMSUNG
-	select CLKSRC_EXYNOS_MCT
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select EXYNOS_PMU
 	select PINCTRL
-- 
2.50.0.rc2.761.g2dc52ea45b-goog


