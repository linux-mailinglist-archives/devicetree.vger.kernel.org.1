Return-Path: <devicetree+bounces-63905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4597E8B6EC6
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68B90B20EE0
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7861129A7D;
	Tue, 30 Apr 2024 09:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gwKHOIhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B38C1292E1
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714470591; cv=none; b=YMFSPR7Zvy2HTnCZZoifHD5w0IPC6Vy3knh8bUlL9w7sX4WTF35onx6KpcC0OoOpeihd1PuzqePgDAu2ltFM6QVHzvBeDikKdf6j/E1G3ahOwEPjjut/4NU7x5JFsPJtWLmKhg7rXVsJiAuJPBrbR3BaShzM1G9gKlE9Bfvzr/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714470591; c=relaxed/simple;
	bh=13Fr4UEwIC36RkZaWaqe5teByY2xo8qLUQtGfXoOolQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FeDsY2ZLo77UP8opbq/ySZ2/oHHe/dMbABU0ChVhNSy8LeD2uIIZDB1aEkGQZJ6EzmxG5uPxVOUh03Tm5PysHqvoWcXg0Xrwbt86rdwHDdNVB7+GoOE7yAm5/kfLAIO/IwFsGvxGAqwYf7PyxSOFEqww3Wi49NQ9ifj8lHAEFFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gwKHOIhy; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a58872c07d8so1129815666b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714470588; x=1715075388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IW2Cb8PzWQGoPtLIM4Yb+ZUUwep8epdxp3AM6wmQKqM=;
        b=gwKHOIhyHbizNTw+NHNdmzGT3t/3AZSnodRJCJD8uKqS1yC/F9G+j0j/UmaETndhGi
         jxU0daVwONVXxqJ0z/QIkWAR6S88Wo0NaPro8i68jjmjV4+VLqUdrwfOpuGLERMXzfU9
         9CPXUjC6SMf4e3hsu23WGHQRIikfDFulfGYJimTpb6okLYz0XHEbdwOOvHgc9S966yPT
         l0BreJxm6HSra4mRklVy3gx54/i4mCws4Kt7tb7ncDKL3EX+hj1ylHWMZtz3XW1kD/JC
         iycBSMJ02og09ePtQpnCkyGjQ12RngVmIs9qgIPo2xdj7RsDIqw9SZrrfrrvsxurphvx
         m9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714470588; x=1715075388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IW2Cb8PzWQGoPtLIM4Yb+ZUUwep8epdxp3AM6wmQKqM=;
        b=TW2RTHcCy6JfU3+aP4hkcNtmcdSpAy3A4gYxfyR7QAM7TBnHEb9LMJrY3qf+jg0gFb
         2sIPWCd+Cv1yr6lGvWZKK0ZqrygUDajpnQV4/jRkQPMMbo0Lco9i2beeIn5KaBPZmP2A
         F4sCNxslT5mFWDueJCVghfJucabaweJuPs9TnBaeVq7kL4suzTHJVGlN/bydCTG9wDh+
         MJxgyMBS32IPv3PE+P5yEPxWu65PFy/mThHd4VaYrLdLk1tSJq4Sirl3+NmDMtUVk1++
         sk5A+HNvPNKMKtGW4EVTscwp+V0pbvspUEZQp1S7PEDjUElsRBG2f3hIEE6HJ9elkanr
         i6Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUHcOHGSRQtoUq8BQ7vIBDFcg5a1zYoyahO3kMS5tE5vL8mI9D4EaX0nBU4uwbH5tuG9YgAiB4nGZ8XJ1w5h/nIQRHT/TqULqm1zQ==
X-Gm-Message-State: AOJu0YybFTjFeC9y8bl1aN9LsI4NwSMT9+FQD+2Ouv1AUzMWxdlsZY/E
	23u9AkDXWyL8ubBoFGvwd/zAwDXaslY5HZqSa6duDlWaez8Xg39Mlacaq171zS8=
X-Google-Smtp-Source: AGHT+IGHfVUxz3QjTYfKVaZf1Fxq987xn6bX0DNIr56yMvAIWMlxJqcTpnRu05tSTpmhmv4zQ9O09Q==
X-Received: by 2002:a17:907:1ca4:b0:a58:e4df:4d1 with SMTP id nb36-20020a1709071ca400b00a58e4df04d1mr2642701ejc.13.1714470588413;
        Tue, 30 Apr 2024 02:49:48 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id dk21-20020a170907941500b00a55aee4bf74sm10981024ejc.79.2024.04.30.02.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 02:49:48 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 30 Apr 2024 10:49:47 +0100
Subject: [PATCH v2 2/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl_peric[01]
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240430-samsung-pinctrl-busclock-dts-v2-2-14fc988139dd@linaro.org>
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This bus clock is needed for pinctrl register access to work. Add it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index f2c7c2a4ce1c..8d4216cbab2e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -370,6 +370,8 @@ sysreg_peric0: syscon@10820000 {
 		pinctrl_peric0: pinctrl@10840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x10840000 0x00001000>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_GPIO_PERIC0_PCLK>;
+			clock-names = "pclk";
 			interrupts = <GIC_SPI 625 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
@@ -914,6 +916,8 @@ sysreg_peric1: syscon@10c20000 {
 		pinctrl_peric1: pinctrl@10c40000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x10c40000 0x00001000>;
+			clocks = <&cmu_peric1 CLK_GOUT_PERIC1_GPIO_PERIC1_PCLK>;
+			clock-names = "pclk";
 			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 

-- 
2.44.0.769.g3c40516874-goog


