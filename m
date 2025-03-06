Return-Path: <devicetree+bounces-154773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27505A5477B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7E6B3A991E
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CA32045AE;
	Thu,  6 Mar 2025 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XVZ3ZZcg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B295817B50B
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 10:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741256094; cv=none; b=IPS/8H2W4sx7EQ+GJIVu4VCqkda5MqFLzegsH9/aysG680qrkHAyWpIAOS4VMPA4NINPbLPfLup/5WIvwPWtE0lBTy4WaM8WJ1IyGp63jzE6D1mvn+iSbHEhkr0xpdTmkmkuMTdO/dqiMIIngAe36CYzVV+QHAQTLAGivBUWm4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741256094; c=relaxed/simple;
	bh=HrF03on0qzdxjsULol9VxljBccJbl3EpYmHoNX4Y8BY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XEOJzqti4kLckh8XVTfit2rz09i4lmLIyTjwJ6EHSFGOTfDdyFbM86eWZXPUZ+yMCVYFc/gAGXf7lrYYsBcHo3ykuYvoZvDOe/FKcQgxp6dryjEODF2bUm/lZ1sT6Nasr7gVnaA7MZo2ZuDK00dAToMkMJVULfQy6EPSSbw8Hlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XVZ3ZZcg; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e5c9662131so664914a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 02:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741256091; x=1741860891; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=77LEyUB5P/fKu/IBcJvd+QCzhbabA9R1jqKDuYpByGA=;
        b=XVZ3ZZcgHJM7GAfaLtEgCz83tZFIU9buYn8uk42N0WTVso0gW59GaOAy88NMmjXYyz
         L3Y+WXX0uHkopC7eQ/NVJXsJaxkEYnFe5w3453ipybcjuoaVr1kXPmY3/+z0zPUB8BZg
         PpxVEGYyQPsF8r6Q7Penz63QOjp3tfeIFOwE0q74I+mYDE6xZVnnEAfHdy7KohHzybV5
         M1Px/dVNmLKs8o+SSg814oBtSwj4VHUe8OXMcrBZBl9N3s5yH+7pi7hSYjCR2h7PTWvK
         d/ivbbZywbhlfLC4THokMREi43jQWEpLJOEbEMsAHIbGn99257OV7MpCrH4GX/2ZlFS2
         e5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741256091; x=1741860891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77LEyUB5P/fKu/IBcJvd+QCzhbabA9R1jqKDuYpByGA=;
        b=U+xHDjkUoGXyXCAsdUMpHlkong7tIkgSoAGfm5Ik4ab2WIuJivPtSQJU2zoT1mBdcl
         qAV7c19Ny6k1T2IBvw3qz8PORHzOlW0Rd+gtaRDn2wvAQGOrpIu+zPvCWXSS6W9MjWIx
         FU8z2jaA2Wy+iBi+RdLLe00boI/YSf9oqPx9ClfdC2ncSlPydjsAWoOZw52oVRgEVUgk
         WExtVSgs8z2rQ3iQB8KAiTl9qp8ZuKCWsb9yH3p8vJJoDJDjk+HBJ7/DSP6qsI1dqnDL
         n99oCcpEgLKdr9TvpZSHufi9Fdi4UyaPOHLueM5OA6JLrQGt8tqZ2QPg5WbKyyeNUBq0
         07FQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+0xxxfw2FeLDzyfigHz6b+ZV61ZibcBblJbW6JZmBWna1vJacVUZsq+VA45KZsUKAhmJ2dGqHVCd/@vger.kernel.org
X-Gm-Message-State: AOJu0YzTCVch6541o/YnxP/qZb0sOMshUT3YSXaBrzkTRY+9JDX0BjPM
	NOSc00Fdkt8celsoKOUZ2Cajvj62HrjYMmYtRrhX4cWaOleTAvvUbacND+3JvLk=
X-Gm-Gg: ASbGncuZ/8Svdp97NEVhCY9aTpiRvaT7eifDcgcI60R8O8db2j5umsaVdkEumZumL5Y
	4P/KWznVV8zQRmbBrjujhUlDm9ZvAVB5/r7q/L3qo16EzGIiHAPx5SRbNltU9hCXXTKUeCdPaEb
	nBmtDV9TedDRaQmE8Q9r4DgnC3Abuulvw7+vls7shjg/Cg6E1R9HQa+WFdWZBhDyiMXJCq5royg
	B7Vtuk962ofZAiqqgZ1fJqhQEtNC7UPsV0yX7wT3nMHAj6iq4fZifhUG4ApLJ90YcGJ62ZzDmC0
	OirpEfUIXCA4Wlmb+mINPdfhEmqv+405zffX8ekxMjAonv0mpxDzjL4KsJRQoxueSfRRLlLr5b6
	4YvPI7h9aRkYD2uBDYu9VwOCvyAcG
X-Google-Smtp-Source: AGHT+IEjMRlKCm5Pe5LA1PCEOatZDZ7Iaa7e1nWD8ZdLZ5E256EnJO/N5BK7eyefycBEa/h/RFzPqQ==
X-Received: by 2002:a05:6402:210b:b0:5e4:d602:70ae with SMTP id 4fb4d7f45d1cf-5e59f4a3f33mr6101870a12.29.1741256090912;
        Thu, 06 Mar 2025 02:14:50 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a6af7sm708972a12.33.2025.03.06.02.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 02:14:50 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 06 Mar 2025 10:14:48 +0000
Subject: [PATCH 3/3] arm64: dts: exynos: gs101-pixel-common: add
 nvmem-reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250306-b4-max77759-mfd-dts-v1-3-9fe8b0eb8123@linaro.org>
References: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
In-Reply-To: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
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

Now that we have the NVMEM, we can also hook-in the nvmem-reboot-mode,
so as to have Linux communicate the requested boot mode to the boot
loader via it.

The two remarks regarding missing reboot modes from commit ae32b65c9359
("arm64: dts: exynos: gs101: add reboot-mode support (SYSIP_DAT0)")
apply to this commit as well.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index f67fa1e84d994de4d40f29a2d437ab6401ac133d..41f63b4d93fd34e1c955d1f47039cc0d9fb4813a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -60,6 +60,20 @@ button-power {
 		};
 	};
 
+	reboot-mode {
+		compatible = "nvmem-reboot-mode";
+		nvmem-cells = <&nvmem_reboot_mode>;
+		nvmem-cell-names = "reboot-mode";
+		mode-bootloader = <0x800000fc>;
+		mode-charge = <0x8000000a>;
+		mode-fastboot = <0x800000fa>;
+		mode-reboot-ab-update = <0x80000052>;
+		mode-recovery = <0x800000ff>;
+		mode-rescue = <0x800000f9>;
+		mode-shutdown-thermal = <0x80000051>;
+		mode-shutdown-thermal-battery = <0x80000051>;
+	};
+
 	/* TODO: Remove this once PMIC is implemented  */
 	reg_placeholder: regulator-0 {
 		compatible = "regulator-fixed";
@@ -224,7 +238,7 @@ nvmem-layout {
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				reboot-mode@0 {
+				nvmem_reboot_mode: reboot-mode@0 {
 					reg = <0x0 0x4>;
 				};
 

-- 
2.49.0.rc0.332.g42c0ae87b1-goog


