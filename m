Return-Path: <devicetree+bounces-255172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8055D20702
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 913FD304EBD6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E842F3621;
	Wed, 14 Jan 2026 17:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Kwuv6bZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8049B2EBBB8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410565; cv=none; b=IXfAh/CnP65CzA2oK13j4+HcKGceJ4Th+exVkP/roinRbnRwrFnrFWC99JxetLZTGQ8RoKdySy7z3j/D572gkD+Pq1Gvo1FVhq5iQWxBH4kwkFikK6PyRyC8DRY+MSRxGT24nhgR/Kh5YGENxMrv3qcERxR+wZ0sV3T1rQfZ/60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410565; c=relaxed/simple;
	bh=/OqmpzZXJV31wCuaWL4zZxA1iGG4vjBprzgfZD+QnSs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tHr68e2N0npWadaM1bXA7jb7cUAtO8sqpfC0iTJoY5AX3/NoB/rfRiU3gdqL00PHoKdEq5SWDYa2enGCv0CGMhJkz0PuMVg1D6YQ7BVzmrgcVO7b2G8jxYCsE97eTww8yWdc8FXLYsZzfryWECCUb4Wxb9zgp4fECfZCYzQvyLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Kwuv6bZ+; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so673455e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410562; x=1769015362; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWPhJNVbobU6XSfH2Kesr7hZ+g/ZJF12G4xvyrhHF3c=;
        b=Kwuv6bZ+PfVLMIipMoX4O9iL5GCesbB+99C1+MEkp8BQxTpokuIjsvugYuZXsC+q86
         Cbf4RyF3c7V4yaKI9q9jdhzu6rvReszFdTBsbE4iDviOhHuKn+cAFLIYvFHrNSB4qpZ/
         kCq8F69C2Vni97zkpk827JYRq5mfiv5ncaQpaOsOCs59wu31S4msaRB9vL3HbSyAAugC
         SbCOfwnu/9gDNs5DtYSXieFUp2WZ6VsX1DtY4M4XkYkH3kAnfm52epOdv7aF3kJykI1Y
         FxQDdwzix0u3TFzBg7F8tEw/ONPEecRrA1Dwkkrbq+aSuWUXDimAZtE0I3xiFfy+hFSJ
         tLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410562; x=1769015362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IWPhJNVbobU6XSfH2Kesr7hZ+g/ZJF12G4xvyrhHF3c=;
        b=Bti8grPFJyEPJs7nmwotZgYg3CGTNTXHd7pbs0pLX4pSUf2QJWarEoo2OV9VzchNU2
         gruoZghTxnGuEZ9DxX7s9keB83aBX90fXZv1eYHVkGabc7/BfYA2oYLJvq17ZZyIdTx7
         tju+ot70YEmIzjYyWhinOSDWKMFaPMj47PZZX8xgn4zCQBEZ2ArdwRjr5RTHn4ZKzazI
         WKU1J161Ua/hBhoB0kpF/3dw0+4mM0JpXp6G0g5GoRePHsDNfixSxG4AXXTynxUujo99
         Zoi9Nep5Vv76igu33fXX3pKqENm8czHumnDLuS7WCDVF5xg/J4aAM5kpfU0+omCnztKk
         83VQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4YqyiOo4kTGZDtKrfbH7rtxvabyXW64Cen2k3PPGu3HHVcnuzo/k1VCmW0fJgD3Z/Wx9RpI9NG+Pa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+5wyhiZSNKvYWVHOp3jTnilMpw0IzlYuQUeYEmzHC/MT2VjcB
	XM04uD+1nWWMw7UvOoQX62W/cfiFQYUytx/3RXP8WIa5ucWRsV0+YT6yv+QBruQiaJs=
X-Gm-Gg: AY/fxX623lmsByilZt5AG1hZEiA+t3VyI6jbLU1yudwhrmmoCdtfTf9TnA549/Ihbws
	nfHVr3BtnGlwQiLAxf00njbdDcyv0xWA2NhIdv1jvRn/81dpf4exsL3rQgVxaEGBTF+CZIrpYfq
	+f7sJR7g7AfdstFxzD0Duv+WxhkynZW2YpffIOf3CTAosoQgIhxvn2D4m49IZoxOvVMkYCkKKTV
	2MxZSKFZ7v3BJ7m1DA5wwmvGwr9+xrLKXW9/k24LQHitZYfVc0ER4+lknVbKoAHFehyKVXx8yvi
	8tg7vFDa5FAoQ3WZK0+Khhq0yGb16rGkpbpCPWiwdHt9XClyBsq6F88+ahOicJqKEbojYB6yztg
	i/uBWd61kDcOQadKOHBeM0Lcp5FI3a1gk2S6NM6CHMcsHOInTkc6KbwrOC85xaL5E8eDOLFMc+K
	JJEFBLGpJuPQ==
X-Received: by 2002:a05:600c:6612:b0:477:af07:dd1c with SMTP id 5b1f17b1804b1-47ee484e6d3mr37626455e9.35.1768410561853;
        Wed, 14 Jan 2026 09:09:21 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee11c64b6sm24952125e9.7.2026.01.14.09.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:21 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:49 +0100
Subject: [PATCH 2/6] arm64: dts: amlogic: a1: align the mmc clock setup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-2-a999fafbe0aa@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1263; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=/OqmpzZXJV31wCuaWL4zZxA1iGG4vjBprzgfZD+QnSs=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ823laBGoAyYB45m7xphCzW8RDiFqXRoJedCi
 vZezmsjY1aJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNtwAKCRDm/A8cN/La
 ha6GEACW+UFslpIgSl2ZSJ0YTSFO3huyz+l+EbM/Mo66HPWaFC7/W6xzW5b/FkXTfmkhlHad7M2
 4mrukXJLVO29UzZLx7T5/Ugu5P6xHrNaV11EiH1d0j0NQ61PPg6/WhKaG7fTsviZHdraVoonfxs
 XWorhdNO/0mrctyN/4yegZEqCf2eyMjV7cU6duesOHSUE2k7nfCeN7vuwk2C9qYp3xL8y30Yezn
 YXU91zYrAC2+n4hSKE70fZsINRwzXTjI8+NYVa/uMiRilQuxNbDnlOfbwME0q+4qqXmZWvwZASB
 CnHpT2DI6NI3z2ZgNUBP0N9eFCi9a+RdDhfG2TqzMTfLERKDOOcIzAYzTKKLAVCoJUgxeOjtDIa
 4G0oar/1XlO8nB2iH/sTY5KEuLKRpsRLwAHqreSTJGZP91ed42skyoweRdNvNAZ6kIrx4rLX9Xx
 yUfgUoVlbToTCqgb/VHcHpbcUpPBO27hFMHo7XmVCZK7uaLde7GQzrakdFsYxqVO8o5yjexFX1d
 D6H4y69AYFRpcA7niabcJnQ4NseN4hEaTLbGniKR3jxzr2zCaYRHFhFzEYPXVTaw7hNq1bCAnCt
 jsxfQaeKbOf4bFUO2mz/CjJUaZwxmmjj5sHAfadg+jCxjCFn3+kqBtmfO6YnRzSiJrtZ8/UVIaJ
 Cf4muIfR/grqQ4A==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

A1 is particular in the way that is already has the mmc clock set
to 24MHz by forcing the mux to select the board crystal. It works
too, it is just slightly less readable.

Align with what is being done with the other Amlogic platforms.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 27b68ed85c4c..348411411f3d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -674,11 +674,12 @@ sd_emmc: mmc@10000 {
 				clock-names = "core",
 					      "clkin0",
 					      "clkin1";
-				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_SEL2>;
-				assigned-clock-parents = <&xtal>;
 				resets = <&reset RESET_SD_EMMC_A>;
 				power-domains = <&pwrc PWRC_SD_EMMC_ID>;
 				status = "disabled";
+
+				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC>;
+				assigned-clock-rates = <24000000>;
 			};
 		};
 

-- 
2.47.3


