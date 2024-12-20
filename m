Return-Path: <devicetree+bounces-133025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5FB9F904D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFF5F164C01
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A1A71BD017;
	Fri, 20 Dec 2024 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vPXm/m2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700B91ABEB7
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734690774; cv=none; b=ZoxmyAxRuCNyWjQYaUhoSQG1swe4sPxeyjDCu3aacj6kD2lPuFpLMWwUeXCgBtwzNxUIgSru6CfTRM8Ps+i1cHEfDEeVmQbwGEoZEKvD5mXyMDkiCa+aSvUnkBFVU6wI60nM0T+nYJGFXlrm9N920lpKC4/AlwgQBtjbn0mmThI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734690774; c=relaxed/simple;
	bh=AhRBht02RHZ29E7oO4jKae+4/7Omd+mmnzz7/jvmNsg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Q2W34dwn+QQuXNxILQWH0nzo2cC2JKLRVY9D4g9WYmw+8cZ03UnMd9MtOR+KISm8y/+pKEakuX/jhQaSMXlwe/EwWa8wOTMikZBDcTWpS7rVa6oFlRCHwEWQTi9SQa5wg8Y4nkDS5QsvZmZuBHeQhojEHzTN8ozn3KRgresQP8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vPXm/m2s; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa6997f33e4so291723866b.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734690771; x=1735295571; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cnPh/juyVOiTzWCImlW3ZTqxEo/ZPE8pe0CN7AE6LjQ=;
        b=vPXm/m2sS6RTlk3xmPJt6upRYxk+DiVQo3RLl7wszesahugNAKH0NEgX7SqzItMn3U
         0njMmuvrl3OoH+iSfQL9sCaI96mwfUPuKFiXvFGYgSj1FXlNg9gJuuy0fDOa/Sccjqyf
         GRJs3/0UT2a1Jv1zpAtpu8jOAnhDSnzBYlmnchQQ6TapIDaojjfSK3TCplL0jCoEKhed
         nXGM1fuQPxO7zx1C7giCi3/GSpTRk4C/mFV5ym1vZqbvmWcrQzzWLR4OEH5mv6Jf9yYb
         WFrpnc457U4hMfoqKQNilNbJkkSjrNhQHUzOY2qGUBvpVCTcp3XS5A1iR66xS/SBM850
         Yvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734690771; x=1735295571;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cnPh/juyVOiTzWCImlW3ZTqxEo/ZPE8pe0CN7AE6LjQ=;
        b=rwGM305BrmzdNc/hUwYmANQX8V9PCtUE2+Z1CnYiv4brkqARwXQhZQo8NE0SHcOK4A
         GKheo5EG8TGvhGuG/2yn6eduYs4to358T967zpcRDBReRGRbdQxoy3rkgLHNSvkjz2EI
         Nt+Yg6CXJbQbLQQgIdGfA1d7lQsOjlAvUyfzjHVMEOjrgDqfWZ6BnZd6Uu99w7ToUVb8
         igcSuAFPyAauNz0Z7GS4TvG0CW2+2diBdlk6G0+BvBmEsRzOy5A1lC6cPitRjbS3RMbH
         C8ZjTjUJujtCDK0dyifBlbRQ6G2I9k7mE90hNMVmMBktCITXy0DxdpXu5iGqcp/dXKCn
         /oxw==
X-Forwarded-Encrypted: i=1; AJvYcCVjrsUMTYmHGQ20pR0x/j7i5Rq5ErFfwoM6CzTzQ2n7C6q4cDUKySxaCJRdPQAXndJe+BAYTwLTfZwH@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhnyxV1VjqpdBOQ/dVWPNjET64GFqjcXkTrs6vywmGbmH4zoL
	AJ8IzM/jk+C2756UjrNZt4+nj0AcAEg04EWDf6Lb+Tg2HpepE0mOGcetghJRbK4=
X-Gm-Gg: ASbGncsu9uvJ82OMZ8rKPyul/b6qRH0EcZUKFuRPzgSeklcx6631CuBpCFrYEomRBKj
	8v4hCffEOGzqYspMK8h6bDhWAgjNlWigmqmo4MSQkuMJ8l59HvnvyGNVDlZD8e1bXB8vISMGx6S
	+a8aGB9zEVVc+3hrZB9l1Pb4zsSYEZSSXR80AI3XnSMIeg6ygPz1jkyrLxnehCrxgGJ/TD74voJ
	sn/Da6GOlvOst70iV5zZv3KmdVoahQ3+hM2xguMuf/uBpIPQlr4G9g8vrtTf/Ukf0BWXE87rNZl
	/dUYU65VoqqakUaBSPxgh4IxXk6by/GNG5QX7q0H
X-Google-Smtp-Source: AGHT+IExwMGLFo9EP9y/Egh+BLh+KfOHOoPkz6X1qvfx7pdCFx5WJHmb12wq7ReFv0+A2rj/5cCZNQ==
X-Received: by 2002:a17:907:5c3:b0:aa6:8a1b:8b74 with SMTP id a640c23a62f3a-aac342179f3mr160475866b.53.1734690770668;
        Fri, 20 Dec 2024 02:32:50 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06543asm161604566b.175.2024.12.20.02.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 02:32:50 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 20 Dec 2024 10:32:50 +0000
Subject: [PATCH v2] arm64: dts: exynos: gs101-oriole: configure
 simple-framebuffer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241220-gs101-simplefb-oriole-v2-1-df60e566932a@linaro.org>
X-B4-Tracking: v=1; b=H4sIANFHZWcC/x3MMQqAMAxA0atIZgNNVVCvIg5q0xpQKw2IIN7d4
 viG/x9QTsIKffFA4ktU4pFhywKWdToCo7hssMbWZKnDoGQIVfZzYz9jTBI3Rlf5yZFv5rprIbd
 nYi/3/x3G9/0A2QmCsGcAAAA=
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
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

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
This is marked as v2, because it has been split out from my original
series in [1] to make it independent, for two reasons:
* drop the dependency on other patches touching the same file
* no need to mingle this one with adding Pixel 6 Pro support

Other than that, there are no changes and I kept the existing trailers.

For those who want to try this out:
The stock bootloader disables the decon hardware trigger before jumping
to Linux, preventing framebuffer updates from reaching the display. We
have added a work-around in our Yocto BSP layer for the time being
(until a proper display exists upstream). An alternative might be to
port and use uniLoader from https://github.com/ivoszbg/uniLoader, as
seems to be done for some other Exynos platforms.
---
Changes in v2:
- split out of original series
- Link to v1 series: https://lore.kernel.org/r/20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 387fb779bd29..a00cb27e167e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -22,9 +22,23 @@ aliases {
 	};
 
 	chosen {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
 		/* Bootloader expects bootargs specified otherwise it crashes */
 		bootargs = "";
 		stdout-path = &serial_0;
+
+		/* Use display framebuffer as setup by bootloader */
+		framebuffer0: framebuffer@fac00000 {
+			compatible = "simple-framebuffer";
+			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			width = <1080>;
+			height = <2400>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+		};
 	};
 
 	gpio-keys {
@@ -68,6 +82,13 @@ ufs_0_fixed_vcc_reg: regulator-1 {
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

---
base-commit: 8503810115fbff903f626adc0788daa048302bc0
change-id: 20241219-gs101-simplefb-oriole-d3fad1f5b498

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


