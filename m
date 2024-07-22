Return-Path: <devicetree+bounces-87115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4543E938964
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D003B22468
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 06:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8B784D37;
	Mon, 22 Jul 2024 06:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a1ADw+x/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AC4208B6
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 06:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721631255; cv=none; b=Q1euqCbYhU4K9eKMie2sIOHaxNZRC0I/myV1P4MuIpn/00I14h2/plbD8FalNE+Wqmv2KJV1zxyr9Aeh5OfFvEsWzFA7LR71vU578umIrqxJWRG5Z4z/iE1f/+sT1eQpDUkS8JoyNAlYdtGFe0a2dqI7zSgqJm+h6W1bu9bw7ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721631255; c=relaxed/simple;
	bh=L/X5S7kQaZX7wsv4CHwCmLD31FcTik1b6cbELb3AlwY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dwpg5glhisZXPbCLmxlOf7hzjnwY3wAS1lXNoOLYyDT5Yn4yJrux7R073t1jyvReFAr1XJMu/DUn1HErQGLO/ZDX32iuobW+5ae3YJaKdQ7lSNU8JlstURPaGjexk4i+kCjymEnqcGLyjtMqjJNR5q2f1xezTVZsoaIzV7FqTxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a1ADw+x/; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5a167b9df7eso3396495a12.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 23:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721631250; x=1722236050; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKdTgT3KsHBdg4+GhO78bEt6cew1IEq5DPVjepzwO8s=;
        b=a1ADw+x/3WfGjMDF9AfsU+Vqoz53ZVGFUTh3N0EbWMLbmPNEbkBxwphLLFQtOwL1fj
         082XMeOmrIrwJEz1l0TO5RPFoRcC2skwFiAvRSgnHemfsHhlwXMM2WDPHH+qUQq9yv1t
         OcoHXS4F6qpKqJ70r9WvT2YO+UITZebqTpW4JMZr26whhkyq8t0gXoutDQCfy1ZrxnzW
         37M71T44ftgNJsmQZ2C7rRHq4csJMrKK6SSaDE9mdanVKPSsUXxYvmiGhT7GJdtwzCaH
         ikPRQRNZmEaVKxA5NumR/TIx6rvkWQdFqNwtKj3BzFps9UNpgMr8UXcUlkDdhcQjZDRu
         YETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721631250; x=1722236050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKdTgT3KsHBdg4+GhO78bEt6cew1IEq5DPVjepzwO8s=;
        b=p23xA62mmlenR/YDGaCYouVHqGyfW1lKz+pXtNuPib7M8nUuuMar2u01jsHkCYxYZl
         XDzuKyVrNf80zJUqUV5oN1O/vwoxuoBA6yq5L9z5OOIld/pmeRTYD+Y4bgpxT9PY593W
         D9S7fSE7ibm96uTFMyl5M4n0qH1kXsC7ywnPwxaXEwFTjvTEf4JbbXkkKOiqFAxSJMI6
         wUuMbLPkNPYXvcPUb2rNgv8O+EGXnGGjL+ZF0wP3C6pIGhtj6jsS/nh8+a9qdGGoQotc
         Y+uJSa6hWkil+qQnmcP1R6VFMSdpOhg/W9AtanybS7ZpTTc3OgJZh+AV3RyLXszkJDt7
         NAVg==
X-Forwarded-Encrypted: i=1; AJvYcCV/7DylvvztL/dO6h3syAcGyDZR1xW0o1rKWuOaLnKENJ/bnOUE2XhM6aSE+yxCErEsb5raTpeA4mEjnnvJTnyd5zLU6qW4zRA6ug==
X-Gm-Message-State: AOJu0Yw1Cyj9h/M0ATYJ1cjjT1QGEOv23vDgzCoFqTrmUD65/YepU0fr
	VacjN3Bhuca0BXutfwyJCtZB4UcjQAdw3YZVQSnaI9u7qnUdk8G+NTr5XjKSFLE=
X-Google-Smtp-Source: AGHT+IGRHDZ6lSTNR+Vp8mSLIwOqZwh/cysql+g6CZ2J+sqcY5BXIe7wCvGbMFi/JpenhRewq7wJKA==
X-Received: by 2002:a50:ccdb:0:b0:5a1:b7a1:eac2 with SMTP id 4fb4d7f45d1cf-5a477695253mr4183158a12.4.1721631250729;
        Sun, 21 Jul 2024 23:54:10 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5a69c1f56a0sm1982126a12.64.2024.07.21.23.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 23:54:10 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 22 Jul 2024 08:53:44 +0200
Subject: [PATCH v7 15/16] arm64: dts: mediatek: add afe support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240226-audio-i350-v7-15-6518d953a141@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
In-Reply-To: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
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
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2440; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=L/X5S7kQaZX7wsv4CHwCmLD31FcTik1b6cbELb3AlwY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmngHxE1HtH/8qPYOuuuGIA0Xv1sscguHP6j0t+Bmr
 r0dNh/uJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZp4B8QAKCRArRkmdfjHURZ2YD/
 wO7fnA1dxytSYvoi35ZwJmadZ/OrYFAc4n46a2FX+ViBQbtzaSE1yd/STWveNJ/kq4pIjHmKhktcup
 wixJB1hR/XsxpLr18Q7+vj7NyjU3Hn/I47JdWiYqqujwhurqImVEoLM1q07WD37uVmkwANLGNT5H1X
 BOergCnj81apnFS3jhVK9VpydIY68xCm/DK9fkPjpRNlqrv16JHr7IkWzFU/O9V7b1qd7rbdnAVscm
 +03WYA8IuWc5ThAzR5Vao5cgVLMJUxInueGiIZgRu4X7LX1mFjR0/0RjWMcBP5vjg+lf9Z/EnFuOGW
 NwlZ+OQPryGJmuYSZyM6nC34/ddFpwIi+TGrEy/3beIS1QPs2hYCRg+hzHLRMfh70ryrl7cG2SxsYb
 HMi2D9FLSVy631bzON1kmMLcF32y0S+75pwBgwHt9F8tolEr2rQLVnlZgiB5nPNueUdvbs7ybiEdjm
 7v/WvLnRQFxaEoxw7Sh73tDjbVPcRMrOweQA1dbOXhlefRfuE7vaOuphdq6KGr6FpK8kPD6NcCCIX5
 9CabJhJiRQyeeniYuaEjOi9XJA9y5TKA4/e1drZwLAqGgeP+mbIX8X32PdcJPMWHMH1a4LAL9DjxO8
 9JRSriB8/P3QJkS7IXbBFfQym0Wd4SU3K6zXMTiu8+FnpAdZUa3akY/2OnBQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add audio front end support of MT8365 SoC.
Update the file header.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 43 ++++++++++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 24581f7410aa..0051d5613bcb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -2,9 +2,11 @@
 /*
  * (C) 2018 MediaTek Inc.
  * Copyright (C) 2022 BayLibre SAS
- * Fabien Parent <fparent@baylibre.com>
- * Bernhard Rosenkränzer <bero@baylibre.com>
+ * Authors: Fabien Parent <fparent@baylibre.com>
+ *	    Bernhard Rosenkränzer <bero@baylibre.com>
+ *	    Alexandre Mergnat <amergnat@baylibre.com>
  */
+
 #include <dt-bindings/clock/mediatek,mt8365-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -813,6 +815,43 @@ apu: syscon@19020000 {
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
+			status = "disabled";
+		};
 	};
 
 	timer {

-- 
2.25.1


