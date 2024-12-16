Return-Path: <devicetree+bounces-131407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2E59F3130
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B5C2160F53
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA726206275;
	Mon, 16 Dec 2024 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CSJcBO2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFD8205E05
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354393; cv=none; b=iwqyi0bodkX025k0IJ8RPF/tcURSGcspql/2zq9+DKa37Qt/q+AIVZzbp1RHEI04sk98Eav5QumtHyrRGnzmP1NJ8RgQzj+GlkMNleaBTyHXuO1LnPxkXoKWvgXPbnK1NEWtah+wI4xolBY47aMPHHZa1I6XTy3xDt1KBTFNaAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354393; c=relaxed/simple;
	bh=njXkzI6vI1ZYRHwJzVfbeDQKZfu2R961r5TrXKbUMso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=taZX9S1sX7fhHvBvhMwX7dHuJdL/6RtHGUBU0gX7eQ2V/bQFDX7GbVL5ocd9b/j0vuMX2dwCjK3gExIJItCxEXLQ5FiGzGJp6X3tgOeUuPvNqYDXEbRkwo/OcaE6hzStwC/bWd5WPFxYi6jE/ewtHWlyO66ZvzNC4g3m1wTJoVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CSJcBO2a; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30229d5b22fso43306501fa.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734354390; x=1734959190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4jHSn691OHBL23f0kkrBermuRwglSVSSGPFSIcJ/qrU=;
        b=CSJcBO2aN13BbnuFiNhSOnc8qKNAw1+g8ug+cEa60lejkZ2sJCLKAMW7vzSpPaVUzc
         /HeEeWh60nAeoNnuCMdXGa5F4+HhArO8j9B3JNT4ycKTFZudGJ5CqfEDPJcM5dyhC9Cu
         NqB45PxnJnbdXu5qqmsXnZRjm/cnA/J4tiTD3k3siM2hZb7qgRWAgYAegq2ghk21o392
         XFMAyFkFjSx/Ij8EMSbdHXfIKEUxsSFRhRxeV87nnxw52VXsd5KMgk4v3l8dFu1P6YJq
         EelcOSww/bFYLb3feQOA0YHVcTB9CuTlzVTUA1f2b8IbOrfR0wT65JBDxaN1rKfZvZu5
         h2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354390; x=1734959190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jHSn691OHBL23f0kkrBermuRwglSVSSGPFSIcJ/qrU=;
        b=fxn0Rn51AX2SnUjouP4/xqPATIHQcCC45ACSruEeutMgPdGH7em6AgD259hK7MQRvH
         ughh6msnEHgVFBt0Zixu0SQIt8e2a++zkAs8nBsTGw9Hmq2ATKYHmBI7YW+UqZ+6S6Hi
         +o3qDUBmL7+a7FhZZ9jR3yAqtFvR4SqjDlIeGZSYYwV6gyuNPMhs8bSHyJfmJn0w0I4Y
         sq37YTJvrv2Jh6MHV0rb+c7PW+8zlMui6jWglpi2VaJEGmpXco2grtfytxZx0xTPvo4v
         vyy3BgzpmrCtLW5AkBJq2MDsmE8utUBa+Z4YWQXXIgagAKkEA0C65yO7PFMPm44vxAgQ
         QB1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjyQ/QE95R9+WguTbmXMU3aNdUr6BOce4FZrWKzeTxpKuFi+8KxXEfXNKForGLQ+T/v71e+kzdF8oL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz48QplasJox9QMxpreLoMwt4Q+XkD1V8dS/9E6/tLyF4m9diM2
	0l2bv2gtxSlwi/bRV1bAF9xm0P8iC74SSN5RXxc9AxUQCsI2vg2EsHddXreQ7yr1iedsgNMD1nN
	wr5k=
X-Gm-Gg: ASbGncv67sbSaJDEBtMAiSE9Yv9YEcIZJpznnMBxHlbognsEcfcZzYQ5zZKVn9HJzQQ
	K9OA3caxXVBpTNXBmF1jft/x4f0Q0Vpr/0S5SoMwckML6K/O0FQlLxJXxUOgW2k9y2lbpjUE9qO
	FI1nxyNBxAIzI5Z8pSWVOsC2IYIVh4fPm06HLTd+JnizNS5qHTuYWr9iGUhMy4ASWuqVftdGxkv
	Ln2Mr+lKo4HU92lOnWG5HoUQH1DSwqQbCj1mbktL/qz4PG5ci0rh2e5l03c68/CF1rbPQWW1ZpI
	HfvI/d5Io+Ju+AP7oaSPPSfBxOPDPGWD3Kmbu1bR
X-Google-Smtp-Source: AGHT+IHNVHPL9gCv6JsuwH0i+Iexhp279Myp4zBY3rnTq/iQAV9yBxFHBzZcKLky1N6tgEJkpPmDvg==
X-Received: by 2002:a2e:a58e:0:b0:300:ef4b:d820 with SMTP id 38308e7fff4ca-302544e3930mr46051511fa.38.1734354388504;
        Mon, 16 Dec 2024 05:06:28 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab960681dbsm326648666b.52.2024.12.16.05.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 05:06:28 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 16 Dec 2024 13:06:29 +0000
Subject: [PATCH 4/4] arm64: dts: exynos: gs101-raven: add new board file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241216-gs101-simplefb-v1-4-8ccad1830281@linaro.org>
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
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
 arch/arm64/boot/dts/exynos/google/gs101-raven.dts | 27 +++++++++++++++++++++++
 2 files changed, 28 insertions(+)

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
index 000000000000..75fd34797fa9
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/google/gs101-raven.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Raven Device Tree
+ *
+ * Copyright 2021-2023 Google LLC
+ * Copyright 2023-2024 Linaro Ltd
+ */
+
+/dts-v1/;
+
+#include "gs101-raviole.dtsi"
+
+/ {
+	model = "Raven";
+	compatible = "google,gs101-raven", "google,gs101";
+};
+
+&framebuffer0 {
+	reg = <0x0 0xfac00000 (1440 * 3120 * 4)>;
+	width = <1440>;
+	height = <3120>;
+	stride = <(1440 * 4)>;
+};
+
+&cont_splash_mem {
+	reg = <0x0 0xfac00000 (1440 * 3120 * 4)>;
+};

-- 
2.47.1.613.gc27f4b7a9f-goog


