Return-Path: <devicetree+bounces-180157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7D8AC2D6D
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 321834E110E
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 05:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0C51DB154;
	Sat, 24 May 2025 05:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRQWQYmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1071C2335
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 05:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064104; cv=none; b=fYnaimrhoxlrD+Sek6jxLZD8P013xg1XR/vSfD39qDXFtXZPQUHUR20jF7mWGW3Cx9nX1UDuUoVwqjhOSmiuUSMXw3Md2L8Uwr/hpXdkosL5pDRs+aizbJlsaRBG1KhQcMG4UPfKuRMfLuOE4qlzsrUhdLcCSvhDxtOVzCo3XJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064104; c=relaxed/simple;
	bh=PafZNXLcYRiHf+o5MJ5tQ/BrZltamGkt95RFIeu+RTk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rS3b42NmS503W6ZJzuHG6TqR5x2LSyCE4zjk5zepxhFazvp5M1zkJ2xkyCQwG2aelwwMm6+Y1K/dU3IyFZJmgL4U5jnKvSm36bRCDtxJSu4XxMXbMB3lJdCrf9gic5AAx3rw4q3UrRUC2PywVgc9IDty64dGM0fOnbOplWO0+48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRQWQYmZ; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ad51ba0af48so295089566b.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 22:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748064100; x=1748668900; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enzMbJYQFdAK3zJGU0fX+4958E9SfYdaxnw49zMJcLw=;
        b=NRQWQYmZ6pK3aW8ludIfZf43XFMfeSP34AGs+p3R1WwWmyY57EKhdNPdmQM575qNiE
         huC6UoERyhxpWl75Kx4gG7PKJ4QRpCccdpJud7Yr1nRN/fADip7iou0rWWQafk05OC1G
         TZzkLKM8t0kknUxLF3ssfd2d4gzbCURMGltKWM4IjHjPumY5LwMROiHKUa0E/R/aQqPU
         KJ0h6npXrOHJViu5Cdk1Df7Wml1+Qis3FjpK08rfyqb2RS28bWwx1zK9YoqBdxrQCWAx
         9+3n0hb5MevSHMSNgXAVP8ryGK+qIVNPESNX3UI0LveP9J0wooY1avoiACb0HTU3IT87
         TPQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748064100; x=1748668900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enzMbJYQFdAK3zJGU0fX+4958E9SfYdaxnw49zMJcLw=;
        b=hVfrEcQJp3NWdB23LXcNFNvN92j6G/CwkuvePm83Qkgf+nYGGZPym6M5EPKx4y1T0X
         S/jqrd7Tz2iCXgM3XIGMlKemBYYz7fTdvQntJ8YNTJQzGs+WWTpWvfe1zhq8aluJvJUX
         viJm4kXkmWuCaI/G07ZXbNQ8OymI3hWmlAIjWkFo1znqbxesOqg90Dab7/00yerE4Nqv
         cAMjbMBdPenk+E02hL6KBiDYLMtBM9AZfW7giu2Xz6kpEnuAhFCFjZqzDDQC5k3jm1/H
         Zf/duqJTTtAKZiggsQzLeyQA2GnQL79wbtbEt91tvG/wu4LHc3qL1WHnhOL0e2B2dZ/M
         p6og==
X-Forwarded-Encrypted: i=1; AJvYcCV1q2cduJLn/fb9O33/7wvqzfddVx4E+xXmYuv7LPAjxdoU2qZ03OZQ8TW6v9hT1x6aUTOaOq2S/kgN@vger.kernel.org
X-Gm-Message-State: AOJu0YxpemWUWDjb7qNwr+NsZjVLlBdOXnWnwsXo/goQIBrPyNxhTnVw
	in1dTkJ/le6EYt6b0D+EXCNgTqKFl0VLEaK26VqL+x99X1dhpRk5AvaIQrDEhYC5otI=
X-Gm-Gg: ASbGncth8P2cNcq9cdWbSBpJkBEkG2jWckFMuLJZrTSqJntM/SaS6Qe+XE2mCTbBz99
	wajRxjMXIm6PGIyQvDVBHr0jHb3SXgA9MseaQ2nnLLM3g+Xwg/2RnsrR3powYk3N53eJmgV3sq3
	GRmbRcCUyg9mjiG/ApCvz7ppTrvE59J11pz7zToGtqI+TM+0ouSKwHt/KpzOax029A5i/GNRkJy
	VQ/nEw0CYbZ1KboE0CRatmOGvXbya4RZ51Jw+6Q9+AEUwl9vNhG22okW06vIXyWuivXyJ9Pxic+
	hQJ6j5CfrEfpsn5qBLqLvFAIwFiH49hheqgoZCX+mMqvMTiw0bfEOFWLbTnw/A+TkF2IuO97i7n
	kEr6dcrpmrMqPgKu7vJdDYju7WC4PdwTjx7k=
X-Google-Smtp-Source: AGHT+IHTF8pgma55Bi8QUeu7CaUoHTKr21qBvP+LgCFCuUXyRbc9PZ/eQ2lz09LALMtTfl3r4Nz/Yw==
X-Received: by 2002:a17:907:a088:b0:ad5:4737:f030 with SMTP id a640c23a62f3a-ad8596d8befmr167307266b.1.1748064100011;
        Fri, 23 May 2025 22:21:40 -0700 (PDT)
Received: from puffmais.c.googlers.com (68.57.204.35.bc.googleusercontent.com. [35.204.57.68])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f6402sm1106778066b.178.2025.05.23.22.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 22:21:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 24 May 2025 06:21:31 +0100
Subject: [PATCH v2 4/4] arm64: dts: exynos: gs101: add
 dm-verity-device-corrupted syscon-reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250524-b4-max77759-mfd-dts-v2-4-b479542eb97d@linaro.org>
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
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

On gs101, the boot mode is stored both in a syscon register, and in
nvmem.

Add the dm-verity-device-corrupted reboot mode to the syscon-reboot-
based boot mode as well, as both (nvmem & syscon) modes should be in
sync.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 48c691fd0a3ae430b5d66b402610d23b72b144d7..88e491b2befc463789651a4cc7f3a658999ee808 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1426,6 +1426,7 @@ reboot-mode {
 				offset = <0x0810>; /* EXYNOS_PMU_SYSIP_DAT0 */
 				mode-bootloader = <0xfc>;
 				mode-charge = <0x0a>;
+				mode-dm-verity-device-corrupted = <0x50>;
 				mode-fastboot = <0xfa>;
 				mode-reboot-ab-update = <0x52>;
 				mode-recovery = <0xff>;

-- 
2.49.0.1151.ga128411c76-goog


