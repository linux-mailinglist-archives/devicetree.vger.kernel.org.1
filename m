Return-Path: <devicetree+bounces-187999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7375AE2211
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 20:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A91D16135B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425142ED85B;
	Fri, 20 Jun 2025 18:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="s+a/oUsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC502ED841
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 18:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750443477; cv=none; b=bGMD9cYXCizveLqIiOsZpdmoYFJgF6bYRKScq873OetFWWubDVfJYyHWzIkRkJ9pou6p6/zdwWN+rGeR9doRCbaLgE/N4bZuFb6K/lgPCNxW2Mmn+jGTBqS3P6AzXB5RuDib4Q05CHrk/glwahp3z6HZbsW+XR3WuQ0taV6Wp0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750443477; c=relaxed/simple;
	bh=FXb5Ooh1SoKLFB+GF1YDuF7hepy8ALKLUWQZf6h1mvk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=tVORXoATKcRbmepcOeysLAV8v7Q1zY10UeXR7RdDKx+gzyyF7ZNZdkrCbBkfOFPMDOPWe3tCiAORuV9GEXFoEEJON3YUivCnSPHFw+HppyEkuSOSDs2AKpi6V3o0Vz+F+jC+zB8Ubgy2ZldtGR41fcZ4wMsNdMNtILo3LXUIjz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=s+a/oUsk; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b115383fcecso1452882a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 11:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750443475; x=1751048275; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qsGE8lw3KH/D0SLaONE7VxsA+KaDyJNSSOZHiKLjPmQ=;
        b=s+a/oUskKmcHuRT2SSVKgz62vOwzlPIDfpB2UmecpycwElDkDzMHteeJ7S/IPoihGS
         HYsbDLMELB4M2PSQyLSY+joLpN8OlXQ5RRw9+GZGvseZr4jXVEDXt5aXgc+wDoxygoO7
         KxZUmmCAM2exo89e2d4g1DF77yiGQw4g2ZaIS0vCiLaazsGaP/qDU9k7ajMa1NhTAcgq
         JrDSd7/VwjfyF2zqKMWK+rLUz+hW+MvoHZkLZPlGUBg8jk2Bnj0yd4XKKUCXaTpSHgP4
         m7e8CMSj5K0gghN0QcA1BQfqBfd+gh0VHXJPPJO0LdMIQf8XXDzhH4JOzJxgZObQ8pIH
         1NbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750443475; x=1751048275;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qsGE8lw3KH/D0SLaONE7VxsA+KaDyJNSSOZHiKLjPmQ=;
        b=VLVpTf1Rn/ZbA/5hKOJZXzg4ReUh0JEQJg26XKMZDZn1PL3imWqZHZ+XW1JlxASK4Y
         ZJFgom6Gq5Ar4fTHPedSyNy1vw2GeIf0fsdwq4Szk1TQaEQcrEQSgR7wm6hPfaf/CCRb
         w48YfoKcvHHg164fUUJsB1PDR1sxOXVGMhzCfcKgfXxBSXqtZ11Ny67/6pK0qhjtxaYw
         NzK+6ZwWEVGqehU3GkS922yjHSOqAi2vrflG97/RjJxsZ5TQaNYTr65N209Eu+jgysLR
         n0RLH9rMftSK2blRc/t05IYCM6nlBUomVQxH80YdhQSpREJNOzpMthwGsQz5YQ9OiSzr
         /Fqw==
X-Forwarded-Encrypted: i=1; AJvYcCV0FDutxa4sgbCr5qeJEpHODBAUuZxRHFm/lA0HB1E5KI6xdA7OZLKld3lt8EZWpR4EamcgCzVGI96A@vger.kernel.org
X-Gm-Message-State: AOJu0YzIzuFEOq/NrhmyWhzuyRcgy1JJeVkgAZKsoEv3hEUGiTjOmuIF
	Whc5WsbEMdYvZdkUjLU9pj3nSxiypB2e1+VCUah1apU2cYBBCwsjJqZ4aFbgLGFVZnHgbdVk/Lq
	YD24RoUTnO49ZWcbHcXnpw0amIsming==
X-Google-Smtp-Source: AGHT+IHypcBEXCfetti6ZSKrWADvOCJp2Q3YDfRe9x9eHf0/IU91QwPfM1r/wCQjgAiUHhCtBoksoPLTGqQX3VT8HmY=
X-Received: from pfiv28.prod.google.com ([2002:aa7:99dc:0:b0:746:2ceb:2ec0])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:7f8a:b0:220:eef:e8f0 with SMTP id adf61e73a8af0-22026e479cdmr6696633637.23.1750443475053;
 Fri, 20 Jun 2025 11:17:55 -0700 (PDT)
Date: Fri, 20 Jun 2025 11:17:09 -0700
In-Reply-To: <20250620181719.1399856-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250620181719.1399856-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.50.0.rc2.761.g2dc52ea45b-goog
Message-ID: <20250620181719.1399856-7-willmcvicker@google.com>
Subject: [PATCH v4 6/6] arm64: exynos: Drop select CLKSRC_EXYNOS_MCT
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


