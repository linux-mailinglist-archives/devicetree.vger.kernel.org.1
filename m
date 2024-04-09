Return-Path: <devicetree+bounces-57518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F8489DB1A
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:51:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAB2C1C213E4
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 13:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CB413B59A;
	Tue,  9 Apr 2024 13:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qvINR6SS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2110F13AD2D
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 13:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712670163; cv=none; b=LcLvKXdDcV/FpGoEIRb3IMR+TwmL7hoGkztVIZxaEuYKE4iBmp5o8jaa/yN0C0xsXVFlHmRI9yqFr2rypUrtNXhW0Ytqc5jhr8BFxDcD6TOsgKw0J+Fz2ZlJ3++nZmCtlxAVxC1/VSugdf5JGDiwPZOUFOjlVaECRjKHccKqdAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712670163; c=relaxed/simple;
	bh=OGw78hpGmJopJetuhUNzzTWlhmL6j3P+xSZHkHfTIPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B9nN9fDkVug6xO8qeLI3kGUXfkru2696AsGSEE6JEcgB3F+jqOaj4AVxr/SWJlgNOZCR/soRYoozLVgw8EKWJ/7Y8HRG/uWXzz7xO+efXPioJq2BG+k74H16Rvo7gKENrYb+3AzxPgOA4dLAwFeLMvuEgLiX5OQ/umZoqoVQw5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qvINR6SS; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-343e46ec237so3272463f8f.2
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 06:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712670159; x=1713274959; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhS125P+ZQHHlpX+fCGmsJ3MAcYkFtKGP8FooRfGuHY=;
        b=qvINR6SSnPWUgdAqBdbrG35GeRnldZ+LVvRygeXWYAjpqrHHZ8STAjSakFfM4JwwWO
         ysTY8KRYvvtssO88RCzpW/62nPakduurFpyBzGKbuIeGOaMHznugO6kCu6KB/9wt+ZhD
         htn/RsDa8bNXT+qWSCgumMK1wJTynqRFvptqAsOSyC8zwZR8e1x9BOih7G6D5jm4kWE/
         V0nuL7Vhrk23RcZiu0lFaHQEi06xBUgyrYMMiSLWFJyz6IukuMrRutPb4/y3i9gk/c3U
         gPMkXjjodfW5YV/Px+wOz24WRuGCg/c4fSNwcWM9GPZxTN2KkHf8HhFenRfFRRn0Ik6m
         CxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712670159; x=1713274959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qhS125P+ZQHHlpX+fCGmsJ3MAcYkFtKGP8FooRfGuHY=;
        b=C7NrkWtNk8auMEK7zIsNWmmKTbGi0N9ltddI0COk6TsI+usccyrNOC95PGgO/644DB
         r/nAQzkzO92fKQP4K4QvKBw+iqVhkZMuZaKDTC/j/LNRCvVncv33zAr9g/mCe0IrwWZc
         TZQnqu0RKVDT8RDwxjD7bcJnPyIKbZdGHcxkVoK73q3v9puHzMPcIuLbvTkGy470+2B+
         hBQ4apmPWUcyYXyYVPzCoivgQ8a0AKciI85rMpXT7ecOaUnJX8gnFShkb8PjPrJIzpF5
         05LW8QVdGYZ6iiiKm1mZa8xFb8iBmK2xgl7WyZ7DaTx7VzTkEtW6ZuTsdSe5l1TazKfa
         SPiA==
X-Forwarded-Encrypted: i=1; AJvYcCXy1eMZZctCWRG41qa206UdGTYmQ7cB/DukZUNIa8b/7VKV4vPupg+Cd0dCNe4QnseT2pY3d+cL4rHIf/KaGa6NwxbId0X6smvhyQ==
X-Gm-Message-State: AOJu0YyzfSYcboD1hvt9J+x+gxPFm3LlkGWShqkUXGx3mQnCNafSS7Of
	I+IVKZtLatLTBy/T+peu6+rf4Zrm/DXD60jYDv0m/cuNMaHRQSVaKKWI7uykrFg=
X-Google-Smtp-Source: AGHT+IFT/jYxzX0p468amfP5nHBXtig4/DVxbRQhBUZKhrK9R/PHxxzjV5SIG2lyyGfyPgKh/QvY7g==
X-Received: by 2002:adf:e802:0:b0:33b:87fb:7106 with SMTP id o2-20020adfe802000000b0033b87fb7106mr8234539wrm.55.1712670158897;
        Tue, 09 Apr 2024 06:42:38 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j11-20020adff54b000000b003433bf6651dsm10753579wrp.75.2024.04.09.06.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 06:42:38 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 09 Apr 2024 15:42:15 +0200
Subject: [PATCH v3 17/18] arm64: dts: mediatek: add afe support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240226-audio-i350-v3-17-16bb2c974c55@baylibre.com>
References: <20240226-audio-i350-v3-0-16bb2c974c55@baylibre.com>
In-Reply-To: <20240226-audio-i350-v3-0-16bb2c974c55@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2480; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=OGw78hpGmJopJetuhUNzzTWlhmL6j3P+xSZHkHfTIPw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmFUWs9eiR7ZWjiZTdx2007n+FBL0uclOGOm0NNV6o
 UmMlzmqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZhVFrAAKCRArRkmdfjHURcNJEA
 Chxjlb3n+vLAZHqid/+3vD4M6xojFtFRmtMlb9M3yrCHnN8JVfMP+TGc3A9pRZ8iAiuVxTGH0Fc5EE
 iTKV5EcFxZvI2XNRHyFqw7wfe9AIDeSnQ4DAYMErxwACqtmh+kWARRdb12VCL3UZ0apiKLg9xOGAuD
 zqY4xkqyVORgH9vEUDvly8X5bI3HcUw+eGhQ9TsPMgcvKoWaaDh38u4Pg2Hp7ZA0o1Ic+znbXasD7J
 OOJfMrJgXZGkZSgqj57Lxg+JOy6Y4VGCYhQ1Ba/QYbECouEIGxzTTvAhboStntir320jN36L0JPfOd
 5EEGAZAkbRxN6OmUPgXJeNk84zN/zu+sO70shVEIRyS5eQiQrk9ADfuDu+3IorKfo5feipMhYTtUHf
 ykQs/ols7b7AogN3UGBJIQujcVGEGCQK85CaDcFgqy8fYwM4lw9y3D+ZL0gCpG8t4/SfX7Z62X45nN
 nktnf6cuF761LyJbDs/cw1KsqdkdAwurmQZvIiVisn39D/UNsmikAqDRlA0AB/DA+kXOb/0I7nlH91
 Eal2NiCwHeGP/evsHQx6Ma1Hrze+kXJxky2ouqnAjD/pOIG6cCD7KD0WLQ8ZpOACrPwCtxnzeFm2os
 SI/p8jCbTY7ISiOc77/bqm27NYWja6L0CwoKdXwfiJSN+RUH8OWW7XpeJ5tA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add audio front end support of MT8365 SoC.
Update the file header.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 46 +++++++++++++++++++++++++++++---
 1 file changed, 43 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 24581f7410aa..0bb6f6388bb8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -1,10 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * (C) 2018 MediaTek Inc.
- * Copyright (C) 2022 BayLibre SAS
- * Fabien Parent <fparent@baylibre.com>
- * Bernhard Rosenkränzer <bero@baylibre.com>
+ * Copyright (C) 2024 BayLibre SAS
+ * Authors: Fabien Parent <fparent@baylibre.com>
+ *	    Bernhard Rosenkränzer <bero@baylibre.com>
+ *	    Alexandre Mergnat <amergnat@baylibre.com>
  */
+
 #include <dt-bindings/clock/mediatek,mt8365-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -813,6 +815,44 @@ apu: syscon@19020000 {
 			reg = <0 0x19020000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		afe: audio-controller@11220000 {
+			compatible = "mediatek,mt8365-afe-pcm";
+			reg = <0 0x11220000 0 0x1000>;
+			#sound-dai-cells = <0>;
+			clocks = <&clk26m>,
+				 <&topckgen CLK_TOP_AUDIO_SEL>,
+				 <&topckgen CLK_TOP_AUD_I2S0_M>,
+				 <&topckgen CLK_TOP_AUD_I2S1_M>,
+				 <&topckgen CLK_TOP_AUD_I2S2_M>,
+				 <&topckgen CLK_TOP_AUD_I2S3_M>,
+				 <&topckgen CLK_TOP_AUD_ENGEN1_SEL>,
+				 <&topckgen CLK_TOP_AUD_ENGEN2_SEL>,
+				 <&topckgen CLK_TOP_AUD_1_SEL>,
+				 <&topckgen CLK_TOP_AUD_2_SEL>,
+				 <&topckgen CLK_TOP_APLL_I2S0_SEL>,
+				 <&topckgen CLK_TOP_APLL_I2S1_SEL>,
+				 <&topckgen CLK_TOP_APLL_I2S2_SEL>,
+				 <&topckgen CLK_TOP_APLL_I2S3_SEL>;
+			clock-names = "top_clk26m_clk",
+				      "top_audio_sel",
+				      "audio_i2s0_m",
+				      "audio_i2s1_m",
+				      "audio_i2s2_m",
+				      "audio_i2s3_m",
+				      "engen1",
+				      "engen2",
+				      "aud1",
+				      "aud2",
+				      "i2s0_m_sel",
+				      "i2s1_m_sel",
+				      "i2s2_m_sel",
+				      "i2s3_m_sel";
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8365_POWER_DOMAIN_AUDIO>;
+			mediatek,topckgen = <&topckgen>;
+			status = "disabled";
+		};
 	};
 
 	timer {

-- 
2.25.1


