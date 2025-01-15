Return-Path: <devicetree+bounces-138841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B29A12861
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 17:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F8D21655E9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925BB1C5F0E;
	Wed, 15 Jan 2025 16:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="No61yaQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C121A8F61
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 16:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957475; cv=none; b=HGEvcA62TUheZW9PlUmII7xlieGCgUgUqvEwK5Etc01hsi1ngBJPKPwLMO4qmdZE7JV+6iHfhDdbppGQg5sErdpnhaJI09pPVmmOyIGtF491c2BPXM2voy9wN0bR+Mshl8TjOjNLVEECWpWkcV4nLm4O49QOgCIJ48oRhV6IPW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957475; c=relaxed/simple;
	bh=rQoO8RKg4WTsMiIUSVBxqtIekUiWXYwM6p1WeORMqYA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HuBod5Z7ibXzS9IifoX74FQXUOzX9u7uTK3rswaYPuoXvsldEWa5euGL8yeJCqfZGMKkv8nW2WjTSx3bECRUKTnDZMilCNL29ax1XiJrwd8LRlXYJdE8HgePvkDSthQ0b0PzCfCHSDybyPBFlXiuv39/ylWTVjdk9W3zqxHXueE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=No61yaQe; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3d14336f0so11834050a12.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 08:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736957472; x=1737562272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mvgaOsWInJVnUwy76tgQ13g6HWxVD9Bi2miL5uycY0=;
        b=No61yaQeiA/rkAoz/lkyU2ARY/ZOBtawzRBawrmj50NlyhGynY3a/5pVCGpFvxTc0S
         4aDJ25bMv4JCI6hMbZniRGZsTyjkjcN3OaB1ztIhJ6aCxBMlmI20og09gGFVrGUCZddu
         QfzeCQHdDT/ZiwfHNLZV7ua3xvqqA2v6s1h9uyFF7C/zaZpmHTwCyl7esmiSURFgT1Zx
         vFXCRkPyiMCMffs3XhLrtpIWEdNxqyIvaJ7/53DQ7I8K8AiNopXgWVi3pcoZpu5GDDyl
         WkRhvr20bhxJ9Sr/vMhekqUlPKmtkd3vajqA1ixvmoV/Auvtc0gV8nkdoeYJP28j3BDJ
         pEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736957472; x=1737562272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mvgaOsWInJVnUwy76tgQ13g6HWxVD9Bi2miL5uycY0=;
        b=RueH8E0d6Q96VPQXdGsL6O3rPJm8kxxIoGeXLdzwW61RIM1Tgt/3Bi/hm/4ETt7wC5
         TrKujjraKaVudF4GQJLG51rNsHjqfXoC+tPA8h8R9nxed6tMZ8EHNU817b1d5oD6kt15
         0LrpOm0es1f/dry8ODzvRib2MO7YyA40gpJgYO5/JFfQs8CR3uABwNVxx3OEFNfJ3hBG
         c6MrgJatQUM+fu5ao9gppXGsDgZmnixco9TMj8U3MHIOIgIwbkS8oTLKXqUmoG8SUPOJ
         WdAWLL2xYRmZomVKJdhqD1E06kudxp4dDStIpj74cowHKw2brdj9EgPx20TSX12jzO5p
         +PPg==
X-Forwarded-Encrypted: i=1; AJvYcCUODFx+3AXZxQG6aH7Zil4SSiqlBYfOgiiBI21ZChc8CHf8PKhKKbMA5/jvC7+Qwadq3AynIDjVwQ7M@vger.kernel.org
X-Gm-Message-State: AOJu0YwEOS9B0vd7f/vow/7Vm0eEKd2AWssJoK6X5cWq2wJ9pbXNz0K6
	tGPTNjW4Ayj+DpsBw9jJz3JnM5CTs/d+q0BrWFQwfjUvQdUE1Q7K35d3SHeLRs4=
X-Gm-Gg: ASbGncvaU0G92N+tdCCJ9CrlbZPtcxExoH2xv3BgaU/vW8uKKuPzM9J50HYUq0kOzcN
	gQyln7/bCrJ5ZJZ8I6rQnENAQyZSCbWmzsL6BMSvMwXXTwRd5Xpf3VFi7yjJVgUSupqHbwfrNCP
	mGUFAxciVNUASIbIftXERWLSxx33mAkC+ZZQ7DwvB4ttfTS2XUbRVqzU/5SpRteFL4Rhd/TwZis
	PcqXHd0u0zWhDUPZEbWP5NEylcxXiY0YCyGL1hWAXuJm+jVWYOJqVjWAxtYxkdmXLCDVhYtdZD/
	1xrllewXulbbApGkR4X3l1eeODyqyhF6uVUG2Oxa
X-Google-Smtp-Source: AGHT+IHgfs3nHvUsKFbEdimSg9mYcz0DubOQSD9PHYFogk2sgQni7lRdfrILTgiNEdYBT68xnxgvQQ==
X-Received: by 2002:a05:6402:84f:b0:5d0:d330:c965 with SMTP id 4fb4d7f45d1cf-5d972d28da9mr27957675a12.0.1736957471733;
        Wed, 15 Jan 2025 08:11:11 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9904a55f9sm7416232a12.81.2025.01.15.08.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 08:11:11 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 15 Jan 2025 16:11:10 +0000
Subject: [PATCH v3 2/4] arm64: dts: exynos: gs101-oriole: configure
 simple-framebuffer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250115-gs101-simplefb-v3-2-52eca3a582b7@linaro.org>
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

The bootloader configures the display hardware for a framebuffer at the
given address, let's add a simple-framebuffer node here until we get a
proper DRM driver.

This has several benefits since it's an OLED display:
* energy consumption goes down significantly, as it changes from white
  (as left by bootloader) to black (linux console), and we generally
  don't run out of battery anymore when plugged into a USB port
* less of a burn-in effect I assume
* phone stays cooler due to reduced energy consumption by display

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
- replace property 'reg' with 'memory-region' and related properties to
  reduce churn in preparation for Pixel 6Pro support
- drop tags due to that
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index e58881c61d53..d3dd411c9bd0 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -26,6 +26,16 @@ chosen {
 		/* Bootloader expects bootargs specified otherwise it crashes */
 		bootargs = "";
 		stdout-path = &serial_0;
+
+		/* Use display framebuffer as setup by bootloader */
+		framebuffer0: framebuffer-0 {
+			compatible = "simple-framebuffer";
+			memory-region = <&cont_splash_mem>;
+			width = <1080>;
+			height = <2400>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+		};
 	};
 
 	gpio-keys {
@@ -69,6 +79,13 @@ ufs_0_fixed_vcc_reg: regulator-1 {
 		regulator-boot-on;
 		enable-active-high;
 	};
+
+	reserved-memory {
+		cont_splash_mem: splash@fac00000 {
+			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			no-map;
+		};
+	};
 };
 
 &ext_24_5m {

-- 
2.48.0.rc2.279.g1de40edade-goog


