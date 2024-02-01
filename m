Return-Path: <devicetree+bounces-37662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A66845CBF
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:14:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 674B41C2CABA
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4519B160891;
	Thu,  1 Feb 2024 16:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="euL6l5+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD942158D73
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 16:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706804001; cv=none; b=ZYM2wd3QKAA9X5mhKzhmRcHF0WQxruD/Z4etaUJVXqWL0i3EhVGLv18H8Ha4IIXdYUzWHy5FmoVdIfILDsxS5K3QTJXFxwk00ZbCdsdh6z4BAykBceBgzk10ZLPGnmbxWcdTwplMRibhaeO3kB7HoeNIZxYQHXWGz2RiAIwX2Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706804001; c=relaxed/simple;
	bh=lqt1lCinKT/6Bz0l8OYqY+WKnZD37pGrFPkLkld2/6g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LINsoGMLXaGXiaVsvIj+cQq7A1u/GDEL9DdFhM+BIyq1NtE8cOEWFi1wR3YFptaoKiSA2B2W/z8GnR4/gu183jwYIkw7J9uTNLN8rqow9FtCNktTZzpS6I4g+n9XhYVwRSJlsnUVz9FjJAwUi2CBhG6U+/6Z7JNi9Lh+XEnjDZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=euL6l5+V; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3122b70439so154856466b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 08:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706803995; x=1707408795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EpZ12j8tjDF3BMguhXg1xYt1jbI/E1mfWhCgLTmaX0=;
        b=euL6l5+V2wLCkhAVLodAfh1PMGyl9wjd2v6yk4LzB+OkrHB7WnDqnwpOV6uEAGMfBY
         07aL+IXIY7YKIG6Pc99TB7Ww6T1MZ6L5NA0BpKyJM+q68zUPQwe+dAkcOc4crWXjCxzR
         GS4t41khpQK0qCZseVzLJtF0QHZP86KdYqrGLEskTAFLRFXkW2Zns32P9CuFQIU7Ecbg
         FS7GRfskj/qhfG2R0TPRRlagzWorajBlMJXofnXPCgWhqhQrfIw2fo62NeOqaJu96TJE
         2qs2Y6sARDY/Nimw1e7zbXIG2ClTkDjJc2oKb6Cu2wMky6AQuCiIYFihXBDI6NhK4rVE
         UqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706803995; x=1707408795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7EpZ12j8tjDF3BMguhXg1xYt1jbI/E1mfWhCgLTmaX0=;
        b=t9HpQRW1Ec3sX6aiGdTYsEiSxOGgSUZ7VbribLhQlP/9/Q66llVSTqqdXDYd+LyqgZ
         S7Tf0Th67mxgAYbbb//2LNzdlZziBNJwaZNnLGBDDgZuf1mbO3tZ1MpEfxrfoWI+M1PR
         E/EKWoJ3Rzjg2e6YgTf8qdYw8zdpsxNa+GUsqRxjoxJIeBnwEhZgGN+ZTu2tBpLvT0sL
         PLRlH242YvFmKjzw7mi/Bq4/tELk1M7ls8CNaErzrqigT/YUDqGIlGXrK6H7cPGfyroS
         P3KH/g6PDGr+xt2Ydf4OE3Rj9TTJc8zG9v3l2pFEBUY8HMD+2h3z6hTrXBNKFHQh73cZ
         nzFQ==
X-Gm-Message-State: AOJu0YxomLkhjsR8Cl4yRPa6DBmpUj/4jxhp1WMvoOPhPmxzkHONYZM9
	RnB3soXYzLnEPFnOW6z+jFQiy3wcKfIBuCnMp3+4YCjPKUYtCllbtiGorEvXQBI=
X-Google-Smtp-Source: AGHT+IESYZWvzIAWv7aHDmug5+0rIBosWYEr3LAR0lNV8jLkJMi3K518fhVPN/+f0VUDngVvX2IKFQ==
X-Received: by 2002:a17:906:2dd2:b0:a36:e12a:1019 with SMTP id h18-20020a1709062dd200b00a36e12a1019mr771353eji.47.1706803994762;
        Thu, 01 Feb 2024 08:13:14 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUbH3uLiJg/CuUBTi3Kqqop8Ik0K3tVy4ljLA9CFwfKsTzPVi51rmZRIG2xJcTXhqzymdWi2xngvmI3XCrQ5ImvfUji+BeoMUqk98C+qtqRvspO/22wiL7Lg9t52/L1Y5z+ahDTLPl2+4L87pMG8X5myfPdbrDcpdqYmiSRG6rVEZ3L6Ry7Bkwbyd755/ObfDJuz9BnIGlLChGwIu5KavMPhZHMfOUSBU5z0CCA6EvQEBc68yRxB6E9LvAFLiUS6MG53aYLKmfeX8gEH/HicJBby2XQdbc84jAGMwpvaLs8nXL6Tl0F/Xy+Au7Pbdwkjg8FYzTyLDGOhrmZHmx9X+joE0O5YI27gdiqKDwPdcfXxvoYmXCAlWflaMqsJW0aqUoDG7lj9rMA4bAGt8ekIxB93pBH8A5QMLKsZLttE71FBL11Lbz20xMtA7tEC5a8om4NTWb972wSW5HcegWE1/ikLUC3HPIGMMXzO5BJhYPOM6I+W4ieP0Dg/Y4LLjLKfqE21fdK5+S9fPmWA884gLxUp24QvMG0jr6zymHa2BK1rLWy0G4G7A3jiXVy2lKLX3GSPdV0hNFkYC5mYbZFvm5j/EUrdiSEp26AyHow+xZ4HFKfL4WVRP5upF/s4q4IJzEXgwNkPf5VY7LPyc66Q8IjU0K6ltYVW5mW/W4WJ0ep3f+/3MbP0Q==
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a3600d7c2fbsm3449288ejc.176.2024.02.01.08.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 08:13:14 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 6/7] arm64: dts: exynos: gs101: define USI12 with I2C configuration
Date: Thu,  1 Feb 2024 16:11:42 +0000
Message-ID: <20240201161258.1013664-7-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240201161258.1013664-1-andre.draszik@linaro.org>
References: <20240201161258.1013664-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On the gs101-oriole board, i2c bus 12 has various USB-related
controllers attached to it.

Note the selection of the USI protocol is intentionally left for the
board dts file.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
v3:
* drop samsung,mode = <USI_V2_NONE> default assignment
* collect Reviewed-by: tags

v2:
* reorder pinctrl-0 & pinctrl-names
* collect Reviewed-by: tags
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 29 ++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e1bcf490309a..55481916fd1f 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -451,6 +451,35 @@ pinctrl_peric1: pinctrl@10c40000 {
 			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		usi12: usi@10d500c0 {
+			compatible = "google,gs101-usi",
+				     "samsung,exynos850-usi";
+			reg = <0x10d500c0 0x20>;
+			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>,
+				 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>;
+			clock-names = "pclk", "ipclk";
+			samsung,sysreg = <&sysreg_peric1 0x1010>;
+			status = "disabled";
+
+			hsi2c_12: i2c@10d50000 {
+				compatible = "google,gs101-hsi2c",
+					     "samsung,exynosautov9-hsi2c";
+				reg = <0x10d50000 0xc0>;
+				interrupts = <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH 0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				pinctrl-0 = <&hsi2c12_bus>;
+				pinctrl-names = "default";
+				clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>,
+					 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>;
+				clock-names = "hsi2c", "hsi2c_pclk";
+				status = "disabled";
+			};
+		};
+
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;
-- 
2.43.0.594.gd9cf4e227d-goog


