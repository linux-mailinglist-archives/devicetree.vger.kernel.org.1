Return-Path: <devicetree+bounces-255175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B446D206F4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 55A03301332D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1891F3019B2;
	Wed, 14 Jan 2026 17:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AdNfkhw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DB22FF672
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410571; cv=none; b=EbdRUmPGbxTprhEOJpuUWTnRWomtN6rPJBhe0vJXYllwxhdaZT3qoUaE7MvGcR5Z3/tZzIxfY2S6HMOZvXDgSJOi4MDJMH5WWuGap2aeAYRR07vqIswcTnZX2SlFc0JIYwihw++DatIK+58fkQSUGLRGTAjr8IAp+gcg3ZYZeto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410571; c=relaxed/simple;
	bh=6VYRsSlr+k3OtpRissBvC6EiliXJvLY5cMYIo4c8bpg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JtR20Dhkqwlph5ABP15bWkGhBu7SGmDyb5JHiAy+r9ljHe6sHOg4+Gg4KFgCFM7yRzTK0L71UDWDQdssNXQ9HldOxwNk/wT6+mkPIMzyqqJvtCzofO0ugWdLjk3Ht+jEht9Zgntvv8SIE7BRhUnBPiqsutxPzbGwOfgUE6VbHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AdNfkhw9; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso7517305e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410568; x=1769015368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nVTJms2ugVSwB4TUdsv5u4am5qhw9xa03tN0c+1spsY=;
        b=AdNfkhw9rp8xsaa3xczdAkGx7/fE3rs0dggcQB8cy/BBz3z8Rzidm1Lo7iUhFxSD8p
         5yXQ3PLLnupait0VooRM1lP0AwJBLujuvd37+eRjF27gmdT/7YftMqNn17bZvrV5c59c
         8WXF0cElKh1RAIRRKzze8boHCsv26LBKklrpqh3lFrmR1jW8z2IWNB7gOSLqrAdGgKpy
         amOIV2T7ZE6q9cR92KVrAXpkPSFftIZOaJwOSb3m8oSUpXGTvM+/iBeK++ujptqFeDOG
         ze+gLjVwLp4T2oQTJn6eXY/2tekIwndMpX1xZooa3ctWrO+rKTf0PIIAp+rDvUnOKS1Q
         OCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410568; x=1769015368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nVTJms2ugVSwB4TUdsv5u4am5qhw9xa03tN0c+1spsY=;
        b=UJ0Z7wqnkGbpA5W3uldozml2H6fPI+HyIvGt0aUZhctoTz6aqyfKG8HzdxY/8wdlDU
         XLFC95YUHJA8RFFhctchh93j+aCdOslbqXgPWumqRg6dUCW2xunF9vqH1ywOlLFRtJ4Z
         4qYcsCpwcr+IC6KY5fWUP9buQMKpqUzWZSVxzsvSM8bAIq3nJouiZCI71MnQFznwc8EO
         rmwI7XcwqqTPUyQVwyeuUK8e4htUl/VvAlWfuf4jWHrjmBVq8N7pDw3IGZBXn0wyf+1C
         7COiK4hm93ze+y8CzMohHjzdk5EmLorT0PdoREWPRm9q40VpWlQzC2AcTyzsLyvFpAUn
         O6cA==
X-Forwarded-Encrypted: i=1; AJvYcCUpCadWRTZKXU2IC7Xoj1djOplXW/WH8HzurE4qE77V9G606uq92ghRZl11URtYUIjhD2Krgb96tOJ4@vger.kernel.org
X-Gm-Message-State: AOJu0YyMgMB4/r5eC/y8cKmfsBnABPy90i8VSgDqf5zbfHcafv3FoJby
	oSULLx5Jjwyt/N+Jlp1Tt7VXuO1hi56pd7/UvHUlOXHoJS6/hmx3+Le4YI4xdqyfkL4=
X-Gm-Gg: AY/fxX4ypY8Iaaf52HAKrVr4pNc3on71P6lumTW9r7cn3YrfZ5FqnHkyuyY+JPogL/F
	DXf6z/jJh2E+GugXE1ocW6+Pz+EdWi8GmUklQhve1uEgT68Sh6OR2FQWUFNqRIOW8T+0UWcvZ9V
	xE8/ALd2ZM6WP/sj77RdHx89vkCNFrGbS8hf715M31dSuOTETg4f6Dl2u+kZGnmJ+80UF80H5mI
	OyzmWSHb+y9PPv+gt1buR9K3dlzdt/ex0YFcuwNjJyPsPhCsBnV0pZJVU4+RIyzhGjeuZIczOSL
	F1iy558cL9zlR6KiO3u5mSAbffsWO90yq1839klYhXGB9ODTeUVClRekkT8BfM5z/e3PLQf0yyy
	lNvWrmxB2MS4gI4NsSXptPcndRVa9YO0lt1SbAzhgYFX3Xlsmv3CgCRkdoDrOCx7JH0P/rd1b3k
	OrYwGCQAQzPQ==
X-Received: by 2002:a05:6000:18c9:b0:430:fdc8:8bd6 with SMTP id ffacd0b85a97d-434d75be281mr140960f8f.31.1768410567832;
        Wed, 14 Jan 2026 09:09:27 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-434af64a778sm434244f8f.3.2026.01.14.09.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:27 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:52 +0100
Subject: [PATCH 5/6] arm64: dts: amlogic: g12: assign the MMC B and C
 signal clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-5-a999fafbe0aa@baylibre.com>
References: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
In-Reply-To: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=6VYRsSlr+k3OtpRissBvC6EiliXJvLY5cMYIo4c8bpg=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ826pKxtzMYX2hRhOSi+COd2s6Q7mxDZi9skR
 j0dbAR/fPGJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNugAKCRDm/A8cN/La
 he+tD/0aw/vBvgqUMtpCqI5tRIgqz2YnwmpvwR8eyb3iwcXXyT/A7VwGUoVwwXXA9ekryGEAIjA
 3syJdJPHjO2J4xbtU4ipSLSncT5RZWsbYZHKg3Q8vWyYBNF7Te9kYJHGWOo5W6p1lX0zTMY4Atd
 T8oLI0O8pvKnoT7JS0Sav7JLTTMVKyqnf5PaEJUjc1upbaCDENsGoZaHcjEAuzx33DQfzg2/TeS
 ZYYbF66Ine4lwb1k4Du8xWE1eNRIH7cU9EeCBoRPj25/Bj0/hH5UUD1/nC6b0grAnDauEexnTSe
 RXIT1dSuAjAOa2D24qxpsoR6N+sXv9Une7lckZ33wkMD6dpsNchoGbyaYRr5qlVdLF+AawbO9lh
 i76T9uSWg/+XGI0rYTGVEo4zm1v6kqh5FDqTbsDmaeKaTri95GMOXA0lMm0neLs9Il6EuPGDO6v
 kbLST4S/OG/T1aj1YZ680WRWAliAwrTC7tPmb212VKOQwMn4rbINb5CeDsJKvPrZVKJTcI7B8EO
 W/RayeOd1hBCZ/8Z3zC3cAu9jDhbV0gZow76+T2/ThXxAbpkEAMlZK07py7bT38SKUePb5ADKVU
 ONznBg5SIKrwyoxr0Hk+5MjYtDAi+umj9t1TZn7D99KraBVlAXpJvQBTYgpFdxV6xIM1Uhc8hfK
 kQZ2w2qmG7lSGjA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clocks to make sure they are properly configured

Fixes: 4759fd87b928 ("arm64: dts: meson: g12a: add mmc nodes")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index ca455f634834..0085612cf735 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2443,6 +2443,9 @@ sd_emmc_b: mmc@ffe05000 {
 				 <&clkc CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_B>;
+
+			assigned-clocks = <&clkc CLKID_SD_EMMC_B_CLK0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		sd_emmc_c: mmc@ffe07000 {
@@ -2455,6 +2458,9 @@ sd_emmc_c: mmc@ffe07000 {
 				 <&clkc CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_C>;
+
+			assigned-clocks = <&clkc CLKID_SD_EMMC_C_CLK0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		usb: usb@ffe09000 {

-- 
2.47.3


