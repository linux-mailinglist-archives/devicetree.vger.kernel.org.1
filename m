Return-Path: <devicetree+bounces-254866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5FAD1D4A3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87023300A2BC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D133D37F8DA;
	Wed, 14 Jan 2026 08:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HTSwrF96"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0AD3803CF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381055; cv=none; b=b8ht4FadF9dYVtY5Go6DuhMqoPfLRsyOWGJXg9VwhAm2+XCTFxQ84Djmu4C0/9sigmb5Br/dQmvYqBnFlZFTTib1X/ZTAN++KWVei9te1iDv29vho74t2/fUtzys69GiUOWXbi5rCPB7cIVVCrnu1JC7wCYJhjxf9n0TB5E0KcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381055; c=relaxed/simple;
	bh=r6xTJIIhs4KBJzOofj3YmS5sCR9M9eszyosDM0nO4jw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kFw1jlnbgElKNZ74nu4112AJwpQzaUJdyHUix7MT5S0g/McmHf8gamv6PN9F+U+HydhTsUBtuymje8Ot2xzLNKFgCEY1Wwr9hp8hyJPhI8+rVav83Q4U0+YTpqtBYToi5CvkuW1lWiw0CzwSoKaSESBOjmpV48NjpOAsYaWDFgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HTSwrF96; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-4327790c4e9so4435434f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768381046; x=1768985846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mbpaa7L+YJuoLVfHbsYDx/DJv0PXVpPmjwlFSpBUWBI=;
        b=HTSwrF963PXV+2QhZ+sePGNUcbH601Oz+JjqY/eR2cOSqxVOnMvYal5udW3tp8DCa0
         WObUPBfwFOCVabicefMFwVPzeCtkscWK5dmWv+/wcIvrelPHoFyQb6dI6mqp3R/BFJUq
         eppZLzsTvLs3C0kUgvW2XCFZyk/LU1v5D6ewPTqDZwgMnPi7Iuql7Tr4VK3Pck87UL8i
         dQVUl0bf1ZGreTYsjkhrdVLJi5N3XqypsnAXNzDf6g2LfDIvefOsF1M2zsgoCg4L5NcT
         hCXvVaTZyU7HHRD56Cct8fpP11liyHPKqmiM51va66/8ZofgM+dwv+Lo64y/ECIQv8E7
         p64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768381046; x=1768985846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mbpaa7L+YJuoLVfHbsYDx/DJv0PXVpPmjwlFSpBUWBI=;
        b=MtIJEp8f/OBeNvaiGocg0k/hhQ+yrMXXM0SnpZNZXYi4UWwT3SaUeCRKhWGZ2LTKP+
         e7rM3Z5qlfD1uFwI2Lim8QjrtjvnaPjGnmevODiOcw5TdeDpFzodMA9nu+8xik1PAZqC
         Gq0DGtRuq5ak9apwhcFlwbjYCTMj8v8B58KRSDVJMMHD5TRzZdqVwwMvfkoCZW7K3hWk
         z+9wKIZmz5s//pnFnV0Tal7og76AStEW0DyyjqBI9yn9uNAFGGbrD/SiIxmm8LdtswBQ
         Qg0Ep/KbxX55DFvCR+zojjUhOlyUFF642mCgigkamirZEelzZNwkIgM5AAVyB/NEwCTY
         cywA==
X-Gm-Message-State: AOJu0YwYvH3hFfrAF+RFGQzKtEeMpqBv/vVMnuHS+4SEQiuSnCro0/RY
	01IvXOrYHIntSA4t5wE2YVP/VA0FKo4SowVUWOA2pEN/UXZLFx9eWyYNsmKxeayOWvI=
X-Gm-Gg: AY/fxX54XiTTJJqhkxVIeVLOeu4s+AlxaMi8vDdo86v1EUtkIO42Npdm2Yjq7MlPvGH
	mTsKDK7F9ibCkru7LrCsovxMtIsXPdAlRC0djM0WGYIEAyR+Eoh2IEnT5T5LLnlsBtub+vi2yui
	wfWjm240/ralK32zaEHADwsYiFmI2QRQNA1eHvX17NEp1dqzAfEcMky/m7lnZylE2mjV5tWk7cx
	4EXJHq+cvtGN9m9R5N851AxFlLS2VyKkoj3IpCMVwfJRCWKuvKXyBI2XDw2Ex4Grze2X2cZt3a+
	jWYsq1Zv+lvLOuBoTZGlmRgVo+L+cOsdUmqb7upaIbSg45HIWg6xNO9g6jMJgkd+2OD8vP6oRv0
	rFQ8RXsS1Gsd6uF3pH6kZFJ5ej3dQg3qsH3ImGRO/R7ZUlvO2OiXzaoZwAjBBfVa3oRujibwAO9
	WNy3ekS8aLKw==
X-Received: by 2002:a05:6000:220e:b0:432:84f9:95f4 with SMTP id ffacd0b85a97d-4342d5ff890mr1552392f8f.31.1768381045966;
        Wed, 14 Jan 2026 00:57:25 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:db84:c9f1:21bc:dca1])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-432bd0dacc5sm48674680f8f.5.2026.01.14.00.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:57:25 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 09:56:54 +0100
Subject: [PATCH v2 2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-s4-mmc-fixup-v2-2-7e9ab5f12286@baylibre.com>
References: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1993; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=r6xTJIIhs4KBJzOofj3YmS5sCR9M9eszyosDM0nO4jw=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ1prUpxsKi9it/0m/bgAZT2A9oFBRfTID+V7Y
 cqqmzLwYT+JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdaawAKCRDm/A8cN/La
 hdljEACH5P/J/ngeUurRcWIgGvlXQgv9J6Z77okYA6+NAN7TREISt7XGVzQHQUysSUKZaetZBBq
 pz0op8r7Ia8KK4DwPhjc1BW/5e3mw4yciOAsZBwK93wMomVOa2ZjnlLjzd9LgU6NUEW9vC5QqsW
 Qw+rM5L0Z8yRL8lOJjAqncw9Od2gR+h7OhdmN6azZNPK97qfOs/V24h4E27tqxPT/i8tuLLQZ8I
 ex7l4CQCfjVby6Ml4qnbRpeSnMLwrghHQ2ovLlX+FsjoDJ7VPtPL6tlQNTY4T5ZPREhvj4D/BrQ
 anoN+mMqhpYOUVoEQS+wJ19eyfnQT0aHoBNTv2tUi55G4NlbZ8XFjJvzDBUEM9FmhQkqiQuzsk+
 414yn2suP/Uu9BuvWU0BtU8xS8hvBxr93mCuSy59opxHI1xBkUHaH5u/MpAumHEb0IxbXhXz4EV
 c0hBwNl7/E+1e1m+LjwHnXiFpDEnBBNnqy7uW9F6paAK0M3/Vi7MEZDHk9qzHWvdy1cQTLjbPhC
 Yw7vV/ydHLmQ2KMz2+xdLOnuNm9Bzw8sCTVOwIniNc/ecySJ5TkgzlJia3m22t5x/Sq3FH8hmbG
 WhGTxxAtzQpxBTaKnnXiCvNhWlUWRZ5mmS/cCDmj4GOfyCeIqyYqSFhzhgEvsAjRiwEg9csI4Ug
 rMMABOA876AxKOw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

MMC A and C are mis-represented as having their "clkin0" input connected to
xtal while it is actually connected to the MMC clock, probably in an
attempt to provide 24MHz to the device on this input.

Fix this and assign the clock to 24MHz to actually provide the required
rate.

Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Tested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 62538fd9db6b..6324d1eb5994 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -819,13 +819,17 @@ sdio: mmc@fe088000 {
 			reg = <0x0 0xfe088000 0x0 0x800>;
 			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clkc_periphs CLKID_SDEMMC_A>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_A>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_A>;
 			cap-sdio-irq;
 			keep-power-in-suspend;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		sd: mmc@fe08a000 {
@@ -849,13 +853,17 @@ emmc: mmc@fe08c000 {
 			reg = <0x0 0xfe08c000 0x0 0x800>;
 			interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&clkc_periphs CLKID_NAND>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_C>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_NAND_EMMC>;
 			no-sdio;
 			no-sd;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_C>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 	};
 };

-- 
2.47.3


