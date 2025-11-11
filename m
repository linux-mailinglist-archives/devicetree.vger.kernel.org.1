Return-Path: <devicetree+bounces-237345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB54BC4F9A7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 20:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9D98A4EE124
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 19:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043D7328626;
	Tue, 11 Nov 2025 19:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i1cBkiZt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB07325708
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 19:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762889207; cv=none; b=mjCBmd6mRO3L8W8Z3qHBjhS/Yug3u93jZyCWwuxPvtl9nvD4zySFVEkCeQH1OtT60XprwZjnndYsTd79VC893Upik4ffutlgJGj3Xw3bAJl4fzInXFJg0zeLcWvgqUE/MLNZbinw+kLbllbCVpnbMQovuimM/+U+6A47pQwlfxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762889207; c=relaxed/simple;
	bh=fwml7KgkE1J3Ai4MZr/kpN1tNeDhuCSqy9eCyYXxwZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ISSTr3wdxHWY3WyMbuTYlABVjTht/4mruVMosYhzDQM+KWrNei9vfj3QdUSuil9kpmAgam7lXdHvhUzKzr7CFRuRNqAuwf8aL859byN10vXJCa5o4lOrBOqCto7w6oBIvGEVJH3DtsQLkQwaTzamMlgl6KAyWorkb1owKgbAKfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i1cBkiZt; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bbbc58451a3so46746a12.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762889205; x=1763494005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=imIwJUQw0bI9H7QFTurPbNC+Bd5DwsLxwxGR/tUh3uE=;
        b=i1cBkiZtj4ACKpZgXrCK8MXtMksxE0MitPhMh2HvBM1yS0G2Phu8TuEgf65aw/W1fp
         WfcvIe1o7HsyKjzXa4E8OkelO1nC5JkyccOOuCYx+r0A3K/tPblUj0i5aeV0TE5gfW7m
         7obQszC6ve+2NbSc8NYcHZMtacc9wgh9egSLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762889205; x=1763494005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=imIwJUQw0bI9H7QFTurPbNC+Bd5DwsLxwxGR/tUh3uE=;
        b=uUbZRII93CNOfAfSF6zJGVbWUsdEkxotjZ1anlo+m0tThczAijG+LK6FOLRnf65Gwp
         RdeLL4xycFxzKS+fEsHQXGbo55Aq3RTMzMZlnvyc7bEnJSgkxxeC7qNlOnCkCmGDDe//
         whreroea5A56M0Y9Reieqpl2f/OJdRRIp72Wl3suLXPhYHCcmTwMLtqe6AkyFBzZAQzH
         7PqAgrwUB7/UQXLLWz3IDBsxZ+NnkknyBPrYWMywK3HM4M1JXr1NesbgzR65Usx4O07Q
         ugx6+Iangi4Cv5Vx6N5EtUlgpzmUoCXqA5NVY5+XVcEXZtgPRELF22rpK0Dk973QgNgx
         7p5g==
X-Forwarded-Encrypted: i=1; AJvYcCUBN2I/2bC1aCizpTnkYAV1Ak6giMPW1S+sm3QdZuxOpjXXLet0YYCq9cPgK6xzlIaM2P8gfPnyqDgl@vger.kernel.org
X-Gm-Message-State: AOJu0YzfBfob6mQauhfCQBzCe70YI8ZZ2PUAwPAcAbzPY8OQ1h6gbvD0
	ov+NqPdeDG40qjmntXuQE+tXAITzMbua0rH69Ne1RIz1shty3u1j6LS+pl63B3N/tA==
X-Gm-Gg: ASbGncuhVviku3DIqn00nwfLtFeytdGVk5NOSilAWHlYJ4iFm8Rs3F2xEVABipLZIh1
	dndcgCZ7w085+NEPWGrnoCfShKPGNBKHqSmvQGCLmZsDO1x7Yd0v5I8GWQEEdiK1mSZM/gsAqwD
	H6LcaunBD9vX0gWqsTGzYqUlIy90JupykCtkIoM8jtMdqDGXZsaKkfth6PuuMYlQMK6xzS4Votp
	OqPqiBpzHR/oTGmTtrquX/tIfwXSWf2RYRW6nDrOfbz3qbZQWlavt7EPjmhFADAAFK/z3+FPWhW
	HzT14RW50zpDAkDgaEnpYQa2HTnskxutQZQqjZxG8GLAzt4bm9hf153Ux9DK5lzs5t5XyDlha7X
	WiCn/q0DA+hB0GXW/KckXuXtdNytWtBz4CtYMIsZnY1YHHfLdaQHDoYg45B9UOSSXnQwsgyM+si
	B7VTpDRg8+ve85DUZaeo88KKupdaYeDL5hIaExUzAIEBEuY835O5XPym+/YAH+SmPIwESSBQ==
X-Google-Smtp-Source: AGHT+IGjCOd+4ejNkIaM3IgSSrfNJ+dmBJ/8y2etg+UINkDzARyyHRj4mxQVKfiW2P/glN4METLcKw==
X-Received: by 2002:a17:902:e88c:b0:297:d697:41e with SMTP id d9443c01a7336-2984edaab98mr5869605ad.37.1762889205543;
        Tue, 11 Nov 2025 11:26:45 -0800 (PST)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:ba9f:d4c6:9323:4864])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dcd0974sm4861075ad.90.2025.11.11.11.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 11:26:43 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-samsung-soc@vger.kernel.org,
	Roy Luo <royluo@google.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Julius Werner <jwerner@chromium.org>,
	William McVicker <willmcvicker@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Drew Fustini <fustini@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Will Deacon <will@kernel.org>,
	linux-kernel@vger.kernel.org,
	soc@lists.linux.dev
Subject: [PATCH 3/4] arm64: dts: google: Add dts directory for Google-designed silicon
Date: Tue, 11 Nov 2025 11:22:06 -0800
Message-ID: <20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid>
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
In-Reply-To: <20251111192422.4180216-1-dianders@chromium.org>
References: <20251111192422.4180216-1-dianders@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first four Google Tensor SoCs were offshoots of Samsung Exynos
SoCs and their device trees were organized under the "exynos/google"
directory. Starting with the Google Tensor G5 SoC in Pixel 10 phones,
Google Tensor SoCs are now of Google's own design. Add a location in
the tree to store these device tree files.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 MAINTAINERS                         | 1 +
 arch/arm64/Kconfig.platforms        | 6 ++++++
 arch/arm64/boot/dts/Makefile        | 1 +
 arch/arm64/boot/dts/google/Makefile | 1 +
 4 files changed, 9 insertions(+)
 create mode 100644 arch/arm64/boot/dts/google/Makefile

diff --git a/MAINTAINERS b/MAINTAINERS
index ddecf1ef3bed..f73a247ec61c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10606,6 +10606,7 @@ C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	arch/arm64/boot/dts/exynos/google/
+F:	arch/arm64/boot/dts/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/phy/samsung/phy-gs101-ufs.c
 F:	include/dt-bindings/clock/google,gs101.h
diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 13173795c43d..044af9a3b45f 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -138,6 +138,12 @@ config ARCH_EXYNOS
 	help
 	  This enables support for ARMv8 based Samsung Exynos SoC family.
 
+config ARCH_GOOGLE
+	bool "Google-Designed SoC family"
+	help
+	  This enables support for Google Tensor chips starting at the
+	  Google Tensor G5.
+
 config ARCH_K3
 	bool "Texas Instruments Inc. K3 multicore SoC architecture"
 	select SOC_TI
diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index b0844404eda1..b4b5023d61d2 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -17,6 +17,7 @@ subdir-y += cavium
 subdir-y += cix
 subdir-y += exynos
 subdir-y += freescale
+subdir-y += google
 subdir-y += hisilicon
 subdir-y += intel
 subdir-y += lg
diff --git a/arch/arm64/boot/dts/google/Makefile b/arch/arm64/boot/dts/google/Makefile
new file mode 100644
index 000000000000..a6b187e2d631
--- /dev/null
+++ b/arch/arm64/boot/dts/google/Makefile
@@ -0,0 +1 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-- 
2.51.2.1041.gc1ab5b90ca-goog


