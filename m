Return-Path: <devicetree+bounces-180154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6299AC2D66
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96C0B4E05B5
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 05:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3F51C701A;
	Sat, 24 May 2025 05:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KzTJ7w7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FFB1A4F1F
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064102; cv=none; b=odD17UPkmM9vVfLThKJflpfrizf1UuF6FJEHdbk7Ot7er8LDE/Rnin7I1ExMx3VmrPI1fLYJsqyZ+vttvIrSVoa08SZOzxh1k99VY51CpF0a5OMJYxXZiavKjL6O9B5FyqhbX1D2AezuBBWFJQQM1hPXu1Mo9j5ulsAzy+NRjes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064102; c=relaxed/simple;
	bh=CxJGVYe9gQWEypwBZmgwMYlPMVvbtIIqNvj32ACzzR0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tRdQDcusiiXAfiNLEcXnwVxzqW6fuy3NuW/4pTsFjpwsVHtAGKmizf1/q5uWU5knD4s/SCjduqRI7OnbY2Y/zmHCi15DLIOENOFGW7kerR/9F8KvpkJYr3vHUdZ0JpSG+DtdZ6VY63q2OE3TzTQ9jYh56OMYelGrWD5/aYw7fs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KzTJ7w7J; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-603fdd728ccso101173a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 22:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748064099; x=1748668899; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p9Vj2sz8u3fgQAY0zH4yjJJsJuXYHYmr/5RzLXpeQpg=;
        b=KzTJ7w7JRU3uBYTnn09a70sQrd+t2FrMKTBGh1Pk9fvJO4MP/n6rM0Ew0dfZLojAFG
         SbLax91wVaPUvRpU50mJEU0MUpKGXwRLyhUlfxO/hFXz+NmEb4jurvsQCx3nAuYMrMaB
         kFWJPl5ohPi3xG9wgKkOC0ia6cnll7XScCDw68S5bwMZ2RFogAOgaVu39mK3cuuKXokN
         Z2lIvUfL8XYH0/j+e3rXrKFSysz8Q5NrbUB/muR303vteLrvMzcfUe//8bf1MZcUP+fL
         ATN/MObBzyv8i0YuR77i1u39YZ4o86M8bV4ScJEQBqtva9kWCoCnRyJt/3jwpzyYZii1
         mVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748064099; x=1748668899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9Vj2sz8u3fgQAY0zH4yjJJsJuXYHYmr/5RzLXpeQpg=;
        b=BDTigfg5qmaNJ4ArGtA9Vgk47rEgK+90kdKKRF84sVd66H21jt+2wagonJIA6VkV8P
         W+OGnkBwrqzh3f/BuZnBeZc9ZDcnOu1rm5YArvK5Renb0de6Najf+h+rdJhE9WgYceTz
         Mj1zP49iJwSyTQIK2OhUwb1F9tDzUhTpeyMOKoDK0e+pURo0QgiR3/2JkhnXGyro/Qa5
         n2TX48i36GVeKMgHtbPaqBbYD1vtf2s/PZHfFALal1P0S6IjKeHexP36M1qZIFshfLi6
         yDqwmMoYk9eK/7+xqsvo8h6k3JF5P0hN97FUYTNKrCQA4zu/Rt9V2e/NxWdyd6TwDsp+
         fuag==
X-Forwarded-Encrypted: i=1; AJvYcCU4sHMrFqJ5Ql/yOo7/drUS8cmRYLcTJJEZkrbx90tKWCOOGFkW/gAJi6qb10s+YVZF6jP/zhrFlCV0@vger.kernel.org
X-Gm-Message-State: AOJu0YwROfr3vedQMMuNmunRzlLLSE4TfcTolwDu/lwudkQsgpmKmC4Y
	dnR6OXGuRZ7z+acmdiYyrChfpj63WFtoXX9p2KcQS9tt+1CLs3uMWZP4FjcqODJfBI0=
X-Gm-Gg: ASbGncuT0l1YvlrRIs0SGH165MJ9r1M52NWWIkmyCxPD6OqI6UOCLWd5o0R7HtBpFUC
	3Ewr7psWqqvh8IcmuE4fIvKp59Y++IveXHYKwv8LyKQjELuabDB+lgd5PdLL3vDpo/17nEe5hIB
	R+Cc7npwv5GjJk6hcGsCaL5H+XteInzZYZ97TXzq9sENAdiq/wO/dQtPPtfC5Ef63RwGh2Mqphh
	JHAc1bMa8l3Mt+E/8B/dmpvHZkM+9HmXfbpdUb9zIdPVmDqMIcCq/qsKw2zNwdA7QAYAnACqrpc
	6Knw1BAPidatLzxk00Uh0uSh81TjEff5SNs11mHry0KSOPygBmW3aeJHHS4ui+nT7WOWsiEOHBK
	MXXBdAYIm8UkG9YjmIyh3jFWBM45/rk4UL0Y=
X-Google-Smtp-Source: AGHT+IF8pgsRiLru+xzCs3/kYK9IFFjLgdgCKETe4qhqLvBb/0iNzUicN2Yb4j1NXVYdjuG8Y5CZ0A==
X-Received: by 2002:a17:907:d06:b0:ad2:2ef3:d487 with SMTP id a640c23a62f3a-ad85b329c74mr142108566b.58.1748064099139;
        Fri, 23 May 2025 22:21:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (68.57.204.35.bc.googleusercontent.com. [35.204.57.68])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f6402sm1106778066b.178.2025.05.23.22.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 22:21:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 24 May 2025 06:21:29 +0100
Subject: [PATCH v2 2/4] arm64: dts: exynos: gs101-pixel-common: add Maxim
 MAX77759 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250524-b4-max77759-mfd-dts-v2-2-b479542eb97d@linaro.org>
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

On Pixel 6 (and Pro), a MAX77759 companion PMIC for USB Type-C
applications is used, which contains four functional blocks (at
distinct I2C addresses):
  * top (including GPIO & NVMEM)
  * charger
  * fuel gauge
  * TCPCi

This change adds the PMIC and the subnodes for the GPIO expander and
NVMEM, and defines the NVMEM layout.

The NVMEM layout is declared such that it matches downstream's
open-coded configuration [1].

Note:
The pinctrl nodes are kept sorted by the 'samsung,pins' property rather
than node name, as I think that makes it easier to look at and to add
new nodes unambiguously in the future. Its label is prefixed with 'if'
(for interface), because there are three PMICs in total in use on
Pixel 6 (Pro).

Link: https://android.googlesource.com/kernel/google-modules/bms/+/96e729a83817/max77759_maxq.c#67 [1]
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
- update commit message slightly
---
 .../boot/dts/exynos/google/gs101-pixel-common.dtsi | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index d6ddcc13f7b20c6dfbe92e86abafe965870d0c78..de5c8d236b705505c0745827c5c6b67d94ba6227 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -188,6 +188,60 @@ usbc0_role_sw: endpoint {
 			};
 		};
 	};
+
+	pmic@66 {
+		compatible = "maxim,max77759";
+		reg = <0x66>;
+
+		pinctrl-0 = <&if_pmic_int>;
+		pinctrl-names = "default";
+		interrupts-extended = <&gpa8 3 IRQ_TYPE_LEVEL_LOW>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		gpio {
+			compatible = "maxim,max77759-gpio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			/*
+			 * "Human-readable name [SIGNAL_LABEL]" where the
+			 * latter comes from the schematic
+			 */
+			gpio-line-names = "OTG boost [OTG_BOOST_EN]",
+					  "max20339 IRQ [MW_OVP_INT_L]";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		nvmem-0 {
+			compatible = "maxim,max77759-nvmem";
+
+			nvmem-layout {
+				compatible = "fixed-layout";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				reboot-mode@0 {
+					reg = <0x0 0x4>;
+				};
+
+				boot-reason@4 {
+					reg = <0x4 0x4>;
+				};
+
+				shutdown-user-flag@8 {
+					reg = <0x8 0x1>;
+				};
+
+				rsoc@a {
+					reg = <0xa 0x2>;
+				};
+			};
+		};
+	};
 };
 
 &pinctrl_far_alive {
@@ -211,6 +265,13 @@ typec_int: typec-int-pins {
 		samsung,pin-pud = <GS101_PIN_PULL_UP>;
 		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
 	};
+
+	if_pmic_int: if-pmic-int-pins {
+		samsung,pins = "gpa8-3";
+		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
+		samsung,pin-pud = <GS101_PIN_PULL_UP>;
+		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
+	};
 };
 
 &pinctrl_gpio_alive {

-- 
2.49.0.1151.ga128411c76-goog


