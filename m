Return-Path: <devicetree+bounces-254428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BF6D18190
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 718103013983
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016BB346E4A;
	Tue, 13 Jan 2026 10:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RKmNJsrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D36425783C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300818; cv=none; b=oDHAkxGNbGL/SXfX/JPtSsqN47TFy3mOyzfl9GikgUjLmFibcPStQhvQKkE2JcMWrg8WSAwDw5Mtg9mQ6JPjZhO48f3gkS8GpT1UcYgyalD26QRUNhnbGt3FInMbA34A3M8WzCfk6tbfLJdSBgYso4y4hQPYhpNDXBPGXsD6Tic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300818; c=relaxed/simple;
	bh=+3Sp0zoClYxRTJMrmAOllqTcq4LFk/dhcZRRSjC5SpQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Au2kY7Nf0NXj1IbA9HXnC02MliNK/2PjgfLbcVplwHsLQZ1opcXsS4aq48bdefmbgvUxW3wXa4g2fifIDRw2Ruaf4uwCaD2hWjTIzCW2b7oETAdwfGoPKwD4+jd0cRy4S88SLADy0crpGQJnry2gSp0ZWGjkr4rCEG2Gqlitpkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RKmNJsrV; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47d3ffb0f44so50965235e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768300815; x=1768905615; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UnLZop3FdYjsHUUgl29dM+sZjq07g9wAgMcy0IQcJ/Q=;
        b=RKmNJsrVr+1VfgdiRSj6met8M4+p7TNejA9gZwI4+8vmhAufZQDx0CgcEcyrzJZ8sC
         bqBWBnTiSJ76uehA+Nht49HPuQ6N8B1bn9Vu+FyvatUxOjyFaS4CGmvpMitpUdEcv+dw
         TVmzKgPU6ACT7gonBzwr1OcZrqGndLYdY6eXxOW5FMRGBH5Y3rP0jqI2pnvwVLsmG9l3
         Lq7F3+UBA82UaWvA4dLiA9VslVSNFWjO5bi50hZnr5Kwk6cFAZV8RNvEx1s2N98p0H45
         GEZDnz/BaCxirPKoqeu69A08ubL6r0YxMvxdhnhHzLzOIx2VQW+8xtYYb43QaccPQZ3S
         1NGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300815; x=1768905615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UnLZop3FdYjsHUUgl29dM+sZjq07g9wAgMcy0IQcJ/Q=;
        b=LLUg7O3AM4WO8ZW7Bdd6Ch1WSNHC9TE2lMcWy4CdyOHMiMcdkSnKLhmV7pEWXQo/Os
         X1TjABuB5GAvcaX0xARx2Xs8n7UEYSaCm4llcEiq690L7oITSa1y4AQfp5yQ+5N6F8V8
         J+zgjBX7GzA0j/7zP5cKykDJpiLs10DeQlJoP3ov0WwsdIF5tz5ZubYXsKE7EZaKSo6F
         LO6Rsk/fDnv+NwKWoAJJwscGNz6AOetPjN851O4v6Uj9NexBX+Mg1I7KOFPkhUEbOtL3
         iejonoNHr8xvmZ1q8oZMBR4aeVtz0aqLvdRAtYcFGfcvWpXH6fQkxCgECLQypCX+J8gD
         kw6Q==
X-Gm-Message-State: AOJu0Yy2DP3oiIL/pLeDMZFf7iOooMGQQfO+RLFJr+tJ68e/fBk31qjM
	jbW25eEPW7JRrp0XDNz+GVwJeIgMN7U2JbFPuvYA8QOzy3Kb0qVc9nYSUho54AozITM=
X-Gm-Gg: AY/fxX7sikDMAVYaxVTOx7QGqUwWGj5QxXkqeDtY0XbeOh905vdetAOVTGO/J2cw3my
	f9sY11uxiOV3tPcV5ayyT3chEwVjfk/HnKrH9jCImNbyB8kWlL2uXNVS8jY6Sa3j3w4ggTzoHMp
	lVa5KFheDNEUIY0JXJoIU9MEl/swbZTrkwvFz/55UM4bqU79sxm7TbBPC9JoI4Zm5W9gM7PIXlB
	YG/TC4bNX40CkSZQIi5u6W1y7i8UFf5mvvUKk9JYrbYITYj1UggkSwirFaMPxgmFuRiZfU5OI0v
	sYxerdA0iULZQtJN4W9jfyZWI5ZQB1jsh9Rgwr6zRZXjjxhm9aYLYBTni2R+Tmj61jRi+o2pk6Q
	askSaL0DOgeEDegdrWrvN8epxxl5wj8H5dkPw+pv7nNtrHcZfYkNgyiMOVYDMFvn7l4f1/p/Mes
	GZ+TLgfYsr
X-Google-Smtp-Source: AGHT+IGPW2vs+GEXonUOGv6IM7v2Be6/k/u4eUy0hFfz4rHgAx/35xxKSfsgLIvsYF9dTnC+mseAhQ==
X-Received: by 2002:a05:600c:8289:b0:47e:dddc:3369 with SMTP id 5b1f17b1804b1-47edddc38e7mr10052165e9.35.1768300815540;
        Tue, 13 Jan 2026 02:40:15 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:982f:38af:1a7a:b10])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47d7f7035f2sm382339935e9.12.2026.01.13.02.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:40:15 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Tue, 13 Jan 2026 11:39:52 +0100
Subject: [PATCH 1/2] arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-amlogic-s4-mmc-fixup-v1-1-1ab1fca0fb2f@baylibre.com>
References: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
In-Reply-To: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1508; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=+3Sp0zoClYxRTJMrmAOllqTcq4LFk/dhcZRRSjC5SpQ=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZiEKtOxqTFOKtX2+9jhMdJerLKLuTs5VFZGTk
 cPNMF0bHRSJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWYhCgAKCRDm/A8cN/La
 hRIzD/4mJQr5r7TZXJ32gzQCCYrYb5YK0a4YhVLdtqKQDJiPDf0PyI2ITBQGfu0xCZWp7ZVPD0w
 bp2WXD7mUAqfTUzGCveK8P+yDdyR/p6a67TB5irkz/C5shmNChWJ2NspvzzEF+wBcnG3TcxQyZ8
 4gEnlB0xZyxa68Y9GIQXoaRB/iI/nc7HgG9A6ZaQ5Aq0wSOJypS9GMxx4ZPZHh8fyphWr4SRda5
 Dq+l5Ek5fNEqKvntPg0et74VwQ5/Rq8CPIcZ23TaEpcas/Atp8tzvIglNr1WaN5kYKf7pgNGOON
 kQ6vowX4CItMnyV/DEdr8qTkt8t3gFXfk0mhNmtn7G4LC+ft6NTM5/MywvTQlneoeYstrhAWccH
 7STGYsWmk8p5CFpVfIqUnM4NVb+U0YXYNQFchlu4nAi/lAoJBQj/h1iDwHYpcwnDCorJGafvZ/4
 hjPajnClilfVGhhPElJ00frSkXNrZfePckikDbPjGYTzUhv7rkYMUYgZM/BOnisHUC8yg/B8/KL
 qbjVJjd2oWc7ld4BX+dK21fypfTRwN/xgxGzNKHcE/0R7GC3x1kfoSu7X0K9WhCEV22INB09wCx
 oRlr/oW0DozchjrgRZLRRkKb2/HI3twqffyaJSwjhDLiLnPCZH7pARuIl/Ds+K7BkDtGCSe4ASp
 W52bQeCytbUNNWw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC operate with the assumption that MMC clock
is configured to provide 24MHz. It uses that path for low
rates such as 400kHz.

This assumption did hold true until but it now, but it apparently
not the case with s4. The clock has been reported to provide 1GHz
instead. This is most likely due to how the bootloader is using the MMC
clock on this platform.

Regardless of why the MMC clock is set to 1GHz, if the MMC driver expects
24MHz, we should make sure it does get that, so assign the clock.

Reported-by: Nick Xie <nick@khadas.com>
Closes: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 9d99ed2994dfa27ca5808da7ae0825e9af255417..62538fd9db6b1ffb33a88e12628aadefbaa453ec 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -838,6 +838,10 @@ sd: mmc@fe08a000 {
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_B>;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		emmc: mmc@fe08c000 {

-- 
2.47.3


