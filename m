Return-Path: <devicetree+bounces-133045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9537E9F914E
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D93AC16C60F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985891D9320;
	Fri, 20 Dec 2024 11:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oESDOgvD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685E1C5F23
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734694084; cv=none; b=DkhjDBSZ3a6T3qDzP5hSbMYDcrNm29Dbg0gpOqSpFcnl6Zp/BfD8A70nIp1nCZC30rplwlO/PI/VCK1X8YCkifIlHLIdTd8xSZ2VEjOW1YeDxQ5Q3RLA/9JOy7S4zdcYXh25uhK8o0b/BnjXYlBaEYAIDzLDnGLvVVQhWw00Cb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734694084; c=relaxed/simple;
	bh=Ogb/1mVfXjgSl3012IjHSDdTUbfzCGrf/7rJAJaPIUs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GFKq5uzPjp9AZYq8zZmyU3Nx9h/POMnDdri3Y6KGJCUMhiQzlsa5l6CxBCTqkZWVzi9T7KmzjNxYSO4UqBxF2Uu5/jpuf4nz7M/jaHKpgjXgt/+9G4PTPO6q0gfxNmLhcU6DtrIdptbo+EjRvp27q0EgsXk3s0FOoWoBIvR765g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oESDOgvD; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cecbddb574so2895463a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 03:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734694079; x=1735298879; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h557sfpCD6pzztMbKFx7XhfpV8rTpdinmEFFBb6Jmvw=;
        b=oESDOgvDa4LF0qR61Tv+EmKNOgTg8MOVjk/Q71/eOTYhacC6IiMkgsxvrSxVsNSd4y
         RhKPw1A5j+4vPu2XYZZb1ZTMUxKugRRufwI0r0CvbS9+w6oJhx/hel0oFWSopOE5k/t+
         Nnwh4fGoj30n0k2sBPzDWpLDSafAXZI2CfRaAp2CK/LI9ZKb0GTTEMBWIinspvmVfars
         HB9In3CB71z56s5WaiGneyiDBAdcIKnPs/bvKLi0XfSykF+dmcGdvaXP5E6eCxdHD76J
         YbxooVwjF87p9m9qVKeA/EPKzd/u6I2JSHccPnvxVibL/7hJFdj2VzG+mPgWjjwSo/2V
         MhaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734694079; x=1735298879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h557sfpCD6pzztMbKFx7XhfpV8rTpdinmEFFBb6Jmvw=;
        b=G9XQahS5chmmlMuCyC0SDQIcs4Oc7RUu7PC1n+vuLhQpO8qQ3L/+I6Nje9yomY1EQE
         GwzRrWjIw1CDlbXUvqGG7+Fi2lj7Awv0VwCdPsCie4bc4EAnXurLCzpHqUQBt/uPMMrJ
         k9OO0W63u3pa8dG/k0D2e531ELWZ/5GlDb32sA0jB45B8Qr5U/y2wtcySPiCC0wP+9hW
         Dx3BTgewQesEkaAmWyw4CJahJIP68mWrFl2JXPA2a9UEW3sxXFyRS3hRfZBlm2o+Ynhr
         tRSS7dHZ3OsEtzzwxkmkh+60oD5yzh5Z67h0HGIrUizGvXQmlFQHUBDgCYn12kXVYmOM
         zoNw==
X-Forwarded-Encrypted: i=1; AJvYcCUWBXUJNRK+eyCPFk7ledZeWxHKbF6UIvuqW8B5V/J74LB570o56Ung03E4lPrwJza4Qs46dUfDvuUc@vger.kernel.org
X-Gm-Message-State: AOJu0YwMzwcLxayWhRS9EpX+AiYNMk4JvaxRP0q9EiDiPMg+kSgibo2n
	7lAkTECVAOwZbjGGrPn8zqtP8ont3Pw50h1THZqigjyCUnft1e6EOvYex1nDvWc=
X-Gm-Gg: ASbGncv0co0EbNiJustVx/smhLZUIsyJ+7gGTooxfGdDwLKmmZF8x2pjmWaD7IcIYdI
	ffCyqC19R1b3jajHpFMXUYvmFX1WcxbWxmaKKkAdDcZyUSDvDkMz7jjgr0RMpKMkEO8h2tUbeo5
	JmX76dKKZItHaeoIKyS6/KvjktgnN6US2wiGTeL8WuQNaD9z4Cv7Gkv81KF7f12WP4S1BXvYZ2V
	l1u217+QDLmcqN/QzJM8Gymq0KvtWcoDM2FFTkYM/2dbM9LhsJUMlMfFCbok8RbyxmsULZHr/9b
	SkE2ZybbgnDjaWMWbPuHsX3EallXl3QMvkH2lRu1
X-Google-Smtp-Source: AGHT+IHjmMU/3zmiS3Zl2m5JwsXhRMD8ZylySaBxTKE5pjFRxO1xqf1fl9ZBq0GagyZwjvHpy9be8Q==
X-Received: by 2002:a05:6402:2794:b0:5d3:d8bb:3c5c with SMTP id 4fb4d7f45d1cf-5d81ddf3bd5mr2035503a12.12.1734694079483;
        Fri, 20 Dec 2024 03:27:59 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701abd1sm1632634a12.76.2024.12.20.03.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 03:27:58 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 20 Dec 2024 11:27:25 +0000
Subject: [PATCH v2 2/3] arm64: dts: exynos: gs101-pixel: add generic
 gs101-based Pixel support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241220-gs101-simplefb-v2-2-c10a8f9e490b@linaro.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
In-Reply-To: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
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

In order to support Pixel 6 (Oriole), Pixel 6 Pro (Raven), and Pixel 6a
(Bluejay) correctly, we have to be able to distinguish them properly as
we add support for more features.

For example, Raven has a larger display. There are other differences,
like battery design capacity, etc.

To facilitate this, we create a generic gs101-based Pixel DT that can
work on any such gs101-based device. At the same time, we move the
Oriole specific parts that we have at the moment (display) into an
overlay, making it easy to add support for Raven and Bluejay in a
similar way.

Note1:
Despite being an overlay, we instruct kbuild to create a merged
gs101-oriole.dtb and a gs101-oriole.dtbo. This way existing scripts can
keep working, but it also gives the option to just apply the overlay
before boot (e.g. by the bootloader).

Note2:
I've changed the simple-framebuffer node to specify the memory via
memory-region instead of reg, as that avoids unnecessary duplication
(of the size), and it avoids having to specify #address-cells
and #size-cells in the chosen node (and duplicating this in the DTSO),
which is otherwise necessary to keep dt_binding_check happy and DT
validation working in general.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Note: MAINTAINERS doesn't need updating, it covers this whole directory
---
 arch/arm64/boot/dts/exynos/google/Makefile         |  6 ++--
 .../arm64/boot/dts/exynos/google/gs101-oriole.dtso | 33 ++++++++++++++++++++++
 .../{gs101-oriole.dts => gs101-pixel-generic.dts}  | 24 +++++++---------
 3 files changed, 47 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/Makefile b/arch/arm64/boot/dts/exynos/google/Makefile
index 0a6d5e1fe4ee..6e6b5319212a 100644
--- a/arch/arm64/boot/dts/exynos/google/Makefile
+++ b/arch/arm64/boot/dts/exynos/google/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
-dtb-$(CONFIG_ARCH_EXYNOS) += \
-	gs101-oriole.dtb \
+dtb-$(CONFIG_ARCH_EXYNOS) += gs101-pixel-generic.dtb
+
+gs101-oriole-dtbs := gs101-pixel-generic.dtb gs101-oriole.dtbo
+dtb-$(CONFIG_ARCH_EXYNOS) += gs101-oriole.dtb
diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dtso b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dtso
new file mode 100644
index 000000000000..43572039cd07
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dtso
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Oriole Device Tree
+ *
+ * Copyright 2021-2023 Google LLC
+ * Copyright 2023-2024 Linaro Ltd
+ */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Oriole";
+	compatible = "google,gs101-oriole", "google,gs101-pixel", "google,gs101";
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <1>;
+
+		splash@fac00000 {
+			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			status = "okay";
+		};
+	};
+};
+
+&framebuffer0 {
+	width = <1080>;
+	height = <2400>;
+	stride = <(1080 * 4)>;
+	format = "a8r8g8b8";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-pixel-generic.dts
similarity index 93%
rename from arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
rename to arch/arm64/boot/dts/exynos/google/gs101-pixel-generic.dts
index 4e1625e3fbb4..48dc37afcb86 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-generic.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Oriole Device Tree
+ * generic gs101-based Pixel Device Tree
  *
  * Copyright 2021-2023 Google LLC
  * Copyright 2023 Linaro Ltd - <peter.griffin@linaro.org>
@@ -15,30 +15,24 @@
 #include "gs101.dtsi"
 
 / {
-	model = "Oriole";
-	compatible = "google,gs101-oriole", "google,gs101";
+	model = "GS101-based Pixel or derivative";
+	compatible = "google,gs101-pixel", "google,gs101";
 
 	aliases {
 		serial0 = &serial_0;
 	};
 
 	chosen {
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges;
-
 		/* Bootloader expects bootargs specified otherwise it crashes */
 		bootargs = "";
 		stdout-path = &serial_0;
 
 		/* Use display framebuffer as setup by bootloader */
-		framebuffer0: framebuffer@fac00000 {
+		framebuffer0: framebuffer-0 {
 			compatible = "simple-framebuffer";
-			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
-			width = <1080>;
-			height = <2400>;
-			stride = <(1080 * 4)>;
-			format = "a8r8g8b8";
+			memory-region = <&cont_splash_mem>;
+			/* format properties to be added by board overlay */
+			status = "disabled";
 		};
 	};
 
@@ -86,8 +80,10 @@ ufs_0_fixed_vcc_reg: regulator-1 {
 
 	reserved-memory {
 		cont_splash_mem: splash@fac00000 {
-			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			/* size to be updated by board overlay */
+			reg = <0x0 0xfac00000 0x0>;
 			no-map;
+			status = "disabled";
 		};
 	};
 };

-- 
2.47.1.613.gc27f4b7a9f-goog


