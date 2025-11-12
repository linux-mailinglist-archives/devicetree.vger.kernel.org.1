Return-Path: <devicetree+bounces-237444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E39C511CA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57BC53AF8C8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 590772F617C;
	Wed, 12 Nov 2025 08:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IW47H+uc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B82B2F532C
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936160; cv=none; b=cGEjFt2+zVTSx0BbgCm9WswfEUyjMBTjdckWDNnx56LYr4n/sO0iUegJIgnfYP1uqeOx9INfB0+e9jT1zAB7ZD3c/Y4o3ty1Zt2Rf9ixRMmRsGtVHVCy9vAzbOw9qBBJaKXMRwmROj8Gc0YJwCy/bNBmj9635OlTgI813fGPeo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936160; c=relaxed/simple;
	bh=Y9wJNseX6YvW31AdnsD3g0WQa/woWSS4h+36pzpwGoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XwrZlpuB5Ha+wVzWMfQ+0gFDukBrdJg43wZCyD6MMyz2NozHKOMBnJ65EOupCGrs/C0VGxpCYlwHEzTZu092DZh47dAGaRBhFWN2Q4/x5rYu52WV+v92nsV+4bq2Xr6iLg9QL7pZF2FTHE29duqgS4ywZpT1anUtseB0z4fyk8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IW47H+uc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4775ae77516so5562985e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762936157; x=1763540957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+OFp+IPnKRa3v3OPLVGWcy+GrbtTT1voW5UO4BoVK5w=;
        b=IW47H+ucpDb3lheQPUYZmLeHQQI27P41LBIURZeI2+YJWkpjPtslCPmUcfV8nfIvON
         /AI1rohhZcIvR81FMrYSHqF+j1FIJ6/dlT8lIzHlT3qtSYiY+cKF6VoI/5p38q99BdR7
         Bc84utXZsaO5LSJMgc+Nmy9sma0bS7qUoz39xTzRtSA4pSZ7wIOM0CNhFxRzCGwXh4ac
         hN26lz+atEDjR50nPf9HEFiZPrZww6Yph2g9PVuQgqRAssJtPVaSIOtdy46IFeYKhsit
         yXu2UFdo5PEnRb/7xiAE1KxJryrkiy7wzazFo4RhB+wLfmCQ4BChIxkaA/0qzMyoS8XF
         bamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762936157; x=1763540957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+OFp+IPnKRa3v3OPLVGWcy+GrbtTT1voW5UO4BoVK5w=;
        b=jlWYo7MNIeoWm5Djo9borwz6+PuZvCq/47A1NSwznvqwV2erqwDXMW2C9lNSpSEpWe
         jSusLqGC3u6TDJMVX4y4u2aKuzUJfhhrbRYfS1pqQ4FpvFDLFxMABpz6po15UwAEA1C/
         XqxEgA8FS014TfdHsvIXRUllVGepugc1IrrvxICxHfB6ymS95eEyjzEu1gGGNJeFdyb0
         GN6OJawTE6ZAe/utHyi8/Z5ZJ8kzsYwMNcJBJVvyV9JFYd6jC1V6ri7WKsILe8Q8Xwcb
         m1C2z8RZ2W9ytPVKzkczNc6MK6vlyWSi81Y/3/cLFW3e25TM6c724uYKD0lczOO9XqMg
         f2dA==
X-Forwarded-Encrypted: i=1; AJvYcCXPEch2R+Y/mcDutV9I+8C8Sg4L49ePlraRmUtA5f7Ekspu7hrAmkdrD6UT2DBI+mC8kZH1hSVz0Fpk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+m5zuIi38SzGPwLyk+iO8TWzcsDAeHpiiuP+hJF98nvZUxq/U
	sEYmSdqgiyUDqQ3KOLD4XpNI45PS8qebzsromxUZHNIPR0Cys5XxHzcQhBL4YVerQ2Q=
X-Gm-Gg: ASbGncuvwEQ1a8lkNYhYMkNkUFpbwqoevdS1YsinEyQzdbKjMB0D9HAUhm3C3135byF
	4RMCwdUD4I3wW4xUGfuWKcCNlRQck3HP+N6naSV5ThGvLnjVyCWdtz7OrqLSXbI63TCUQwdd9Xi
	jq549/rjicBUiTF1OqjhamTs6ka39ZQsy9fLOUcDmApZWC7/9M3/RAjsEaMKSJ83DifjZS14+Qn
	t59Lmyn35GdGiV7wcixYkTDYWW79qQdJkxRbWggI3GIoRPs7AUQf+3ePTIr3fy2mk4yrsPc+GL1
	IDNjojVuO4T3Bnui4FX8sg9KRrbp63lit48eycc6tU4WyIJgDSdz+1o0awnQm4aJY9jPaXADxZN
	PKFhEVgpZhHpRRyWSDv9q4wQDWkPivxPB38KjfYCl6nmq5k1XCT2yL32FLMKvz7kRIxL/v6OHKK
	Vl05f2RgB5b4AlaWIjxLCBx0bxtARtf8O17oZtJpU2dv3FgL6Meo3i5CHS
X-Google-Smtp-Source: AGHT+IHlpapEj7ymskzF3Fjgqueu2gUV8vx50CAtQ/YTQGVKieu5QIoV5IAB8BvhUU3H0SWPp7ULVA==
X-Received: by 2002:a05:600c:1d0a:b0:477:fcb:2267 with SMTP id 5b1f17b1804b1-47787045055mr20227885e9.8.1762936156868;
        Wed, 12 Nov 2025 00:29:16 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac677ab75sm31571428f8f.35.2025.11.12.00.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:29:16 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 12 Nov 2025 08:29:08 +0000
Subject: [PATCH v2 4/5] arm64: defconfig: enable Samsung Exynos OTP
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-gs101-otp-v2-4-bff2eb020c95@linaro.org>
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
In-Reply-To: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762936153; l=1050;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=Y9wJNseX6YvW31AdnsD3g0WQa/woWSS4h+36pzpwGoo=;
 b=Z6fGWT6SoRfFw0zQdHsVBlO/Qbu1DkGHl4MU1QSzryZwNo9dsZbeiZgmfpnXbo2SEuMtYgsTG
 gs+W0LRj75xBnRKyv7cv0ou/7oI7kGsxjbMNCoT1WLvkuXJfdVlP/85
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the exynos-otp nvmem driver. The driver reads the product and
chip IDs from the OTP register space and register the SoC info to the
SoC interface.

The driver can be extended to empower the controller become nvmem
provider. The fuse block stores various system information (TMU, ASV,
etc.) which can be accessed by client drivers.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 646097e94efe7f1a18fb59d5b6dfc6268be91383..6433e3c0f88b892ce6f2ee190f866a6ab4889771 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1682,6 +1682,7 @@ CONFIG_ARM_CORESIGHT_PMU_ARCH_SYSTEM_PMU=m
 CONFIG_NVIDIA_CORESIGHT_PMU_ARCH_SYSTEM_PMU=m
 CONFIG_MESON_DDR_PMU=m
 CONFIG_NVMEM_LAYOUT_SL28_VPD=m
+CONFIG_NVMEM_EXYNOS_OTP=m
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_IMX_OCOTP_ELE=m
 CONFIG_NVMEM_IMX_OCOTP_SCU=y

-- 
2.51.2.1041.gc1ab5b90ca-goog


