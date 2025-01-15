Return-Path: <devicetree+bounces-138844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B80BBA1286D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 17:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D21F4188CCE1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444D31D5175;
	Wed, 15 Jan 2025 16:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qyCWDEfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143661B6CE6
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 16:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957477; cv=none; b=XYqV6fQ/oi3jNFFrW5txKcDqrzjILjoQnlLSfI+g6yweK/DwqojLYYuvFHonqx+clCNmhE4DfDewE+KacrZk62bX0LQLfyj00kTYDwR0GpTIbEoQ//IOx23tavsY8HBA507fHhT9eyCMhiIa7uDZA1gvenl7GmAWPHyJo6qINQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957477; c=relaxed/simple;
	bh=l+s75NW0nEo9AS9gIRHhQuLeK1gPacQ/TcfCbcLQ9N8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dGAvbJ5dycjh3VbCP+/gzXmLYnk7qXSjqXvfoS9C+UFBsdFBgXlRaWAQanNWFmqvQXw+LNz8SHFC5id7RjdArUWjFvR+ZfLGYHKcCyDH/CpCc/PoXZptXU8jSPzDslij5E/adYXQptxloxvcIbgwsaHp5IhuROC+dkEVoS/xtrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qyCWDEfP; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3f28881d6so10023415a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 08:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736957473; x=1737562273; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5pQlUERu30P4Ba0NRUoDkbhX6SQEcjoIl1O/J3MOl8=;
        b=qyCWDEfP6f4lNDOYFI1pS7/QCgB7jBv8Q2oLX/shKdLB/bO4QbpYWRjTx4I9Qj0Ppj
         TWywSWW+eLhT9V8/fculES2x0YOUHssh9LD0IqNhCOfD/QFckaXbkMW5jgg9T/lKvoaX
         rpjPck2edGK8ts/0sEAtlMAYA95zOOIb8ANOnYsyUlcCDFQq+hE3aX2muET4sPjpDzr8
         xTM8yLXENk62Yqy4df7PLM2UX0g1SPeqONO4YgXijKCF7ZrDyBXWz8/oHMCc7OSGHQQk
         WC5LujX9X1iqdKMzW9IiJXGc4ru2iKpFy6CVxZcv55ALlfHqUBOLzNXpgF4qxGmVRrz8
         Dmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736957473; x=1737562273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o5pQlUERu30P4Ba0NRUoDkbhX6SQEcjoIl1O/J3MOl8=;
        b=snvilGvxlHvECxbWOra/XeBBM0pnQzonxXH8m/+tgEE5nZaRRAjNMNuETLvY1CHXLl
         Wbxw1ENNbj1nR73evWL+xO239RkS0Drg8yYyXwQXYmoMTVGx6LzHxgXjwwELrZ4a6oDg
         dDygwjq3EvH1hkbhXra2jvFdZpeqAg9avh+eJ8d2LI7gJAXnBYQxaAAWIshjforsm60f
         yELZIbb7uxoeYSW98pr8G1a0p5J30SgWdoWwLdH1Oz1eNzVMlhT2TRZupAnZ9tD4I2I2
         3fKTQZlF7ITOyjYFMdh0PkGi0Fft2RaM0ESKRcibLvYeb2qY6i4G/+MeReDfUsc5SUth
         tuQw==
X-Forwarded-Encrypted: i=1; AJvYcCWV4AuD4hgAF+KXfJABI0TavvdIv9ILzcgZ5JttpyXoj0RGvxGM2o/t+JabOlW1ESPuSi5eOtVaZmBv@vger.kernel.org
X-Gm-Message-State: AOJu0YzEeo86QkhPjtWeKY1uE7UWo3z+R7XJeuZwscUAv5XjNAEvAtav
	Y4rHhu6XY2eg40Xw45ku2rTOZgeMQL+cayBHW2+RuIPSihLsTN5xepi5OBBalr8=
X-Gm-Gg: ASbGncsKnLFrIs7VQXEw585EAhXogkqDs39OjCxRsxA62hWWNZGPVo/avVQc8RGEbFJ
	6/TFHalwA0AM+foTvBHYk26Zb8OD29j7CV99ipdccSsjA6lFh7MF7Qcbcv/RzKkVXkhDYSLrQHW
	MqyMl214OyVMbdp1i01jljf8WCLNYmid3o0iOyufX8O+Y62NY2ZkOriUmlvYb3q/LhHX1Z9/2OJ
	DIkeBRrcVAOD4DlFy0/OgMfPk9z5YGEOVnPxfwTYHYd+8vYNMW5O3peF21n+VgEsyuUs5V8Zyik
	de/Nkv3EOPOwlb3GyRjabjG6BHuZaCMTTW0TuFwj
X-Google-Smtp-Source: AGHT+IEk9W6AJ1Bfki9sNMYgrASoIkC8McdJI2hZtNgAUOMLE5wTU/s3opZMrauV4el0rFXtouBevg==
X-Received: by 2002:a05:6402:3489:b0:5da:1263:306c with SMTP id 4fb4d7f45d1cf-5da12633426mr4994787a12.10.1736957473227;
        Wed, 15 Jan 2025 08:11:13 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9904a55f9sm7416232a12.81.2025.01.15.08.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 08:11:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 15 Jan 2025 16:11:12 +0000
Subject: [PATCH v3 4/4] arm64: dts: exynos: gs101-raven: add new board file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250115-gs101-simplefb-v3-4-52eca3a582b7@linaro.org>
References: <20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org>
In-Reply-To: <20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org>
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
index 000000000000..e982c87402a8
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
+ 	status = "okay";
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


