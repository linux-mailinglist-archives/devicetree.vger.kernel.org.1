Return-Path: <devicetree+bounces-77514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4646390F13F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 16:51:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04C22886A7
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645C615884F;
	Wed, 19 Jun 2024 14:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ls2xI788"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D2F15666F
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 14:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718808436; cv=none; b=kJoSfSNPK3hoCqnDttbbPxuZrDYmO8ZPyKnv9eITBZ3Gis8l/SgYt8paTtQiUFZhJO4Cx2L6w1EuaIVRb7Nu+8ZbYLNzmqZKH7R1BQJj8Y8azXq95l6MAxavllDVd2QR9IrzMFRcbUQPGIZxoWLKh4E1+VuWznAe1wttW+woDkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718808436; c=relaxed/simple;
	bh=L/X5S7kQaZX7wsv4CHwCmLD31FcTik1b6cbELb3AlwY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OSNxvhOAQ6ymp5f22qd3JxAAotd3wxHMON/UEr/so/fyjObNRCizJd2hRCtoblCdhb6ofuF4KD7v4/NjRNC4twWOiaaUJAE4ewrdSw94PLRDPH9fQNapWLwpIaWkI55zzECjlpJ5r5QsBF73KfZumQmed9d23uer8FWNQGyzhRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ls2xI788; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6f09b457fdso650454466b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 07:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718808431; x=1719413231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKdTgT3KsHBdg4+GhO78bEt6cew1IEq5DPVjepzwO8s=;
        b=ls2xI788zzIaTfep32ZV+6eWV79wOWVrhVqh1o+2xuZcmLySObpNYOh+yNNhrPIRSz
         f/DoqFAGl4XwaY+9PQYEJY1B5Qvf4mVPzlkgzCenCgzTgW48XUgsS1wsKbVBs2VWT8vD
         tvc5FfWI4m0OjsDJdYiLX4KtYeXmkZSqWI/tAe69WG4NER72On8g2C/2f7WPlJecOgRs
         bV+ZltiIkCnKODiAdHV22HN9nMczr+7peOHXkqTr6KnXNiv4zGiKi+Ep9MUPkqKvpbuR
         FFmINpgOGLPGmQj/39+I/MuR4Fr+P/CNmDwwyH0IiSrYqIwjzaKX0PPV+zfkxbw1SO2h
         GGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718808431; x=1719413231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKdTgT3KsHBdg4+GhO78bEt6cew1IEq5DPVjepzwO8s=;
        b=QlSN9Pb6jplqtIMsM+OAX397k03Lgoogm/rmZucTwWno2YOM6vQvDLZ/XgBPgS4wc0
         SAcaCk5EY675S/uJVQVOppGJ5GaPk90Q8iPp3J1xDp+jkVXmiXLE1lGTqMEgMm0PHycs
         GMYlVM+N6E2iYKESumqvNr+yqXADgIXqIPoT9tf2KwNKvQlDNJREC0nT0mw4Rk5eLljT
         uROs4PFFW8tZ/OB15qFHrDSRrU+Dui3il4pQaoYIQRs54tBBP5+ZmyL/P+Ikys2ERrzC
         zBTsSrOsPUNsFG9zL0/XeerzQBVInmL3WTU58y8GfaIs1yQqsjKm5o38r7M9shJAfkaZ
         ZYkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXup4eeV6PrGZe0hN9F0h+VpIUjCf1660IQoktUsWkijqQthxIWxNq1ylAEfYCyukxiVDxv/7lwhzDN+bu/W4bHwN8v36eKtReELw==
X-Gm-Message-State: AOJu0Yw68WJOkPbLxghgkNzfkuQhF807nwDG+nwBK3JhrZg9O2qA6Mqw
	XrSrdNTDJNutHWyhzZ9Y+WztqJHrkKqEMTCldSmMqrkd1U1qiFwNzgArv2tJItU=
X-Google-Smtp-Source: AGHT+IGCnG2pTThkiqXcOingw3RqWOz7QhNzIa0SDzL44Gp2GhFVFafYQMJmYo6Mrn8IERzv8AqDuw==
X-Received: by 2002:a17:906:d83:b0:a65:7643:3849 with SMTP id a640c23a62f3a-a6fab7d6be4mr159683266b.73.1718808431514;
        Wed, 19 Jun 2024 07:47:11 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a6f56da32c3sm679787566b.13.2024.06.19.07.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 07:47:11 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 19 Jun 2024 16:46:51 +0200
Subject: [PATCH v6 15/16] arm64: dts: mediatek: add afe support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240226-audio-i350-v6-15-f754ec1a7634@baylibre.com>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
In-Reply-To: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
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
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmcu9RsrsWB/A8n6NS3M+CUIPC+mnw1CAbYx2HRgfv
 OENvgSeJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZnLvUQAKCRArRkmdfjHURaw8EA
 CwGU/+3mpi2Q0d7lCiclbZACS5EVpIo5IgyXdSHKCpRs+IiYvjKxgWgF/DnPc62N7OGq9430yeOgGw
 h5PYZvPfVYyOecw8V8eFqsQiEsM8TvNr3PNEAuUkhyuR2sHHMr1+cFVV85CWvBr8VzSKjZxvGAmD+U
 poWAWbKgQTAk4UIfRs00WeveAZH7lfauSf6mMlpehCSxod4uioKGnTiPe5wB8b9yH2M7b61HolsxfG
 J1a1+W0W3hMcglFE2qtKyV5HRpX0o4adOCf8HRN+nC4/GXAeFDd9b1l3vMQyCazPJk5iLBVzFcWpgk
 MbjoDMwfm4FLePT3kZcUF009fClCG6GRuTGOuCRF9WyPf1nP/xqQ7WZD5X87D0vPBE+8vgQHjDoHjD
 RrtfDTdCP0+hYoPgL/T3v8sZRSxrz6hKLc+dX3N64SR1Ymv/q/rVHUofaj99w5AhG8TiTT7ouZnOCX
 WyH0iurf7yuoiRc2fHGAcBLLAT8+1ZaCqLW75z7H+boYKXwIDhXoeP0LQjwg+ZXMzi6FmHwQy/vr91
 kPBEmog0hNFXqGQg1pDWW8BQNtnGpK26p2Mh55weXm4UZ27qkLtuVMZhpEKIbngPdsIOURwnAxOoQz
 v7SL2Hk16lcpt3XFLcRPGclHZtuCBw3WTbFycbXVtYnVp8TzF7oCjMCpaizQ==
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


