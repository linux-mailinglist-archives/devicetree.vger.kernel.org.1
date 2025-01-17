Return-Path: <devicetree+bounces-139369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B50FA15566
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F2F8188B17D
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4181A2C0E;
	Fri, 17 Jan 2025 17:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wAHE1382"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189461A071C
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 17:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737133809; cv=none; b=k2kg7rEU56qBFakolxJzTDuis5SJuFERasttMsGryME150nVTv9a3NGsFqrEarAye5Vh3XuTVbbHyRFjyK+t6RYQfB9Iiw7gEqNRLjr3pjv8wM3JsD1At7XYTnJAny/pMwBVQHjONhFH7cTHKnb/oca0Z5alakCy+KZZQrHWm/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737133809; c=relaxed/simple;
	bh=QcoBk54ADv3E4qGp07gJ7p7VjTjm6Qq94PMxOHGm3FM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W4DatjeKkPFAhZxggWtuNfK/N+S0G/gCWdGBSzEX2c0IYc/bykgGS6exPYB5kTTlBZJ4hwMAbcgFSrm34ILLH3VM/difr9eGGVCjInOkOhmmi+71wKmQT4650E8r8BjjVwa+8WyeyU2CPgzK2Ojv7tsWUntn2CZVBvOGDaouBw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wAHE1382; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aae81f4fdc4so463783666b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737133806; x=1737738606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s85R3yVSuNjwngZj8e21pKm72hiISate8KTU7XoNJnM=;
        b=wAHE1382O6U0c/bain428B5+ZtJlo/ffFxA4na8nGyvS4z0rQ+A4Tt43YyKtIcaI1X
         wc5ohDoZ5V7096YeWpxMf+n+1rg6BFMmZZillo0GO2vM/axwfnkuSGSIOo6zf9/E70Rp
         d7Zc1z8LcxO97M0+1CU68/MxGH7P6igXMnG4fJLgFCV6/QVKp+do2OdapgZU3ozOqNKe
         czvfAoXC9voxgO77/owIAH+DmBZkMvvEYU1B4Ixhlib0Af8eIXkZzJDRxSl4hJVCcwwW
         B06kTP79btZ8PP4LJMYtnZBQ8rZbhFGlhCsXpLMVs+8KcxGCF7qB8viVNV9qZGQTMnjo
         UbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737133806; x=1737738606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s85R3yVSuNjwngZj8e21pKm72hiISate8KTU7XoNJnM=;
        b=gaWkqItG1e0fERKPSVPJeR05vfUuTEogjiAEA6m0NNuiOQKbs1TSm6LJ2ofuEvNhvh
         J4hrmwNRlc96dGLK2iUDcFrO/YVMwR2fSCh/oSv3YgfMwegwvu7njDUK42SCIAcyZaoL
         m1eK8qSxXeun57YgkU013no5jQKTvrrbbKnuwhrfFGbE8K2GVMrdJ/unL7qMaMKO4oPZ
         u3qtNDmuO7YkevWeFwshlQiH+ipgE3/ZAzhlu9IKOz+s+uY8w9PPlSSQsl0Ft6IZ18py
         Q1uT6to3L87aV0UZmL8/TXWMimp5+Cj3XvgF/Vu0WtMgzHfdLEm8QD5fGqX/KxwJL5ky
         cpcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsVjbihucZtMAd77qHotVMwLLT2f3E1YRSnc3LA4FaIrW+TwwcSDgUaBr/J7h3pqQZxIDMGfY4sUkr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5rAr1e5OxiMWBnQw7JMSw6IsIQYyAcJyIR5I2qac/aPPnp1ys
	x+3sNxj1dBvGp6YRzzWFRfgQ7A1xtW1Jr4e9xqfl01s0u+H7SUDK4xYWmtHVO7PADLmlf2F8Nn+
	pGSc=
X-Gm-Gg: ASbGncvoSbRNmojvnLvc4upJ9+cz1g7z48lwfGcjAjexEYspUUYUhV6njm4gI/0q8Jf
	xeFw73NK/3jpdHKhTyUvA6CsVxjyU4LSDf6mP2n/RvaaF/5pHyKRR6b9RysAM8m//NmPMddMvnx
	6rFAEekOpDeOVwL2wr17dYTkbwEB8ZJprNmmme/1twPE3UG5Hg30irKmqpNubvgKWZ/XHS6IaM9
	a09czaYE1DK2qBY28P1SimsqLoHPA7SjtoJlz1Y/x1fzZMXQAnKmI+CPNLGy+AGaD6WdypPVmpv
	vr6o+v81tjYU6vHpAYhJj4I18OF+dF9iuuQ5U4Dv
X-Google-Smtp-Source: AGHT+IF3lyD6ENeo+kfAD9mp5xyQb07iN5gPpJzGtPJfuC6X1w0JFQBCoLxFgjtL2UXjDVhReGYI4w==
X-Received: by 2002:a17:907:7fab:b0:ab2:c1e2:1da9 with SMTP id a640c23a62f3a-ab38b4c6ac9mr362313366b.51.1737133806461;
        Fri, 17 Jan 2025 09:10:06 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f87065sm199197966b.133.2025.01.17.09.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 09:10:06 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 17 Jan 2025 17:09:57 +0000
Subject: [PATCH v4 4/4] arm64: dts: exynos: gs101-raven: add new board file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250117-gs101-simplefb-v4-4-a5b90ca2f917@linaro.org>
References: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
In-Reply-To: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Raven is Google's code name for Pixel 6 Pro. Similar to Pixel 6
(Oriole), this is also based around its Tensor gs101 SoC.

For now, the relevant difference here is the display resolution:
1440 x 3120 instead of 1080 x 2400.

Create a new board file to reflect this difference.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Note: MAINTAINERS doesn't need updating, it covers this whole directory
---
 arch/arm64/boot/dts/exynos/google/Makefile        |  1 +
 arch/arm64/boot/dts/exynos/google/gs101-raven.dts | 29 +++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/Makefile b/arch/arm64/boot/dts/exynos/google/Makefile
index 0a6d5e1fe4ee..7385f82b03c9 100644
--- a/arch/arm64/boot/dts/exynos/google/Makefile
+++ b/arch/arm64/boot/dts/exynos/google/Makefile
@@ -2,3 +2,4 @@
 
 dtb-$(CONFIG_ARCH_EXYNOS) += \
 	gs101-oriole.dtb \
+	gs101-raven.dtb
diff --git a/arch/arm64/boot/dts/exynos/google/gs101-raven.dts b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
new file mode 100644
index 000000000000..1e7e6b34b864
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Raven Device Tree
+ *
+ * Copyright 2021-2023 Google LLC
+ * Copyright 2023-2025 Linaro Ltd
+ */
+
+/dts-v1/;
+
+#include "gs101-pixel-common.dtsi"
+
+/ {
+	model = "Raven";
+	compatible = "google,gs101-raven", "google,gs101";
+};
+
+&cont_splash_mem {
+	reg = <0x0 0xfac00000 (1440 * 3120 * 4)>;
+	status = "okay";
+};
+
+&framebuffer0 {
+	width = <1440>;
+	height = <3120>;
+	stride = <(1440 * 4)>;
+	format = "a8r8g8b8";
+	status = "okay";
+};

-- 
2.48.0.rc2.279.g1de40edade-goog


