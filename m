Return-Path: <devicetree+bounces-255171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D10F0D206F0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B0463047694
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 239572F0689;
	Wed, 14 Jan 2026 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HvLKfdgT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622C62EBBB8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410563; cv=none; b=Mk0R5cWzzVtX0I2UPUca06RMUOVriiMfjeMTXYyRBNszfZl5GTst7rAIAQuxdInqkqB8Cb+loi4/esKwQHdJOGj8N40wAlbH+5K6hOV6gEzyeK9/A/W2MAXJvvGue2G6hf/VQs7cPfSLOdEnLOMykFgd1wWSUEKX2hhH+D4jHVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410563; c=relaxed/simple;
	bh=Ko+xWiQ4lTs8l11VaKdcA5Y4Q0/MGgAgE7QxZSa5HcY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gupsw5KrcZMu9D+xRNjX0mZjp0qG3r4raQg+ZdLHtwXQQDWD5sF3RGD6q8ftYDQCwd16KfpqIn2/SQRJyY86daGtHf+2dfUe1b/N7VPoeJgAgKN7lXdjVcuNzpH3SINqdZn9wW97J5HbB25ISFZJtKDaIeESab/wrATCXzR5zUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HvLKfdgT; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so923355e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410560; x=1769015360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fbaEokaRCynXGgwZAsN2Ldlp+XK1esNZb8TISMcIDhU=;
        b=HvLKfdgTitOdP7hOGZMpf82NTvDHZQJK79y0RGApV/g726V5IVgRNyho1+fc+RPjgw
         L1yg+eodPS+jSdtzzGphcI3M9irRPiajqoKWejq7HXbAsGoSEh664iC2Ajr3oNqCysRj
         eO/+9yyn53ulOGs5Wspg5dNWXfPAY+9Afi8yEG/lF22FXJHUkN2SIdma1awPdEa+n3c/
         agAJe7RaPmvzznMl3xqKAOkIuTVCiIEb1zEQpWYVEHt67mrLFNbaGh6AUAKh+IanvrVQ
         K3JpJxuI4i1yozpoIKvg1g7+F2VL3Jt6NJrSAiFt/heW1LmikFDtaOmuY1HcmtSyT5t1
         npfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410560; x=1769015360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fbaEokaRCynXGgwZAsN2Ldlp+XK1esNZb8TISMcIDhU=;
        b=dVTutEMtQAo0fN8kJYO+Ghm9VQbgft4esmK7OHaw0hnOgyFV2zhC48lsrxcTUMTFYu
         tV2WJ4XW5JQZUFYoCaq5qjOpH4h+5B9ElZBzV4RZp3+tmrMQ4NgkV/hsW6i4GiColF5K
         Hi6sqHlxKM5i288jYlO4aIyEHELtOIVALwmNb1uI5eM9PC21Khgo8PDzNysnwMr3LQiZ
         hFfwdiXx2Qo+V84KxykptQ45mwQVljnhhHIwu7tRvX9qjQwsMvi1PqCoC8iLvJice2/3
         B/Z4uf609WdS0LQI8+R6LFiPw0t26zAhjp+YddqQHFUJUcTdF5+LUpxw1JxaRvs2SILv
         vrBg==
X-Forwarded-Encrypted: i=1; AJvYcCUH5frMGoXHPnGmVHx4vbVr4PBGzWB4SH7qM+b1SVEJw92oskreSe9yzDqqJ6k/k9xSWhJ6xNcG7uCt@vger.kernel.org
X-Gm-Message-State: AOJu0YyrgkDgVxINwQig8XXnCHp7oSun/IwsnaWeeW2a5kjPtwzyWXGg
	8zZCLgVu053T+NyNFvSNRczui3znQq2m8yMaKaBh+PRaa2s0i0mYtoe16SHyly2wb5U=
X-Gm-Gg: AY/fxX5UWeEew4wPA6r/k+7wEHaiOUMnoTG1OTDIRnuh9zyT2CfafqzqHVepXP0eK2P
	zN6ODoZY5GXgaZxsq7skXB3yYKrl01P54hMSrpxBM/sgd0mEDocR9/TpixWOy9c28OZiMQvowOp
	CnMdI5+5sbwZNFiE9fSJo8ogG5OQ75XzSBG9oxEzyQMdRNlvV0ZbN0oWHlBEbiW6aW4l7EY7WYF
	+LuPb35aPJ7T69UtX5OnjrLFdFDN0nN3PcmfPBwPrLPgbB7JFLdL0EOpMk9y8/hHwCguKqZZHew
	FTx1Hg5AJ9Qhc6SahQrIv/wQXbcZueJuhVynpuCaKQptoKq6qTHGfFj/uLsFb6SWlv6+s+wy9jz
	ucc18r5jtMayY8e9DL3gRkFmW9FaciiGTM9IjpgfpU0QyyFv4jy8z0G4726s6SNYO5iTMrjf7ho
	UfwS97KWkWCQptWvp4gu2N
X-Received: by 2002:a05:600c:8719:b0:47d:2093:649f with SMTP id 5b1f17b1804b1-47ee32e5de9mr44996145e9.8.1768410559834;
        Wed, 14 Jan 2026 09:09:19 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47f4b2755absm1854285e9.15.2026.01.14.09.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:19 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:48 +0100
Subject: [PATCH 1/6] arm64: dts: amlogic: c3: assign the MMC signal clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-1-a999fafbe0aa@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1227; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=Ko+xWiQ4lTs8l11VaKdcA5Y4Q0/MGgAgE7QxZSa5HcY=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ822mIZD4uDh1QWbhb+XeSD+xaDGJuZWIH+76
 y3q1/f0cBeJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNtgAKCRDm/A8cN/La
 hTphD/0WD0aIlphz1SaGDEqBNVzGb7WDx4RCAqfyl0NLtxx5eRsEblOhMwPJ8dR82sld65wu4oj
 Wj8WuDXKOfJGZLBAyPLzKTMdWFlqbchT6vrBJmcm1qBOEudHmUUJ56YvMRwV9LZKPbmFGZBWSxL
 XZXK/VKQvBvcEqP3X7C2rOR/hjfF8XqvrzFWMK9NbOko6hMjjKLp1mneoYPcvvR9o2iTgYk7rnd
 CNC5MsAIbIBKWImB1/9Edtw+0rGiju+vDRC0romGpiqht8QeCxgyFkDMVUtUse5OgaC7z9HIl1X
 CNgEE9AQ+KAw2DqQDXwEslUTiVT2tzYFYHJ2v8nB4sFBw6jSKR1Ndq/gSWzwBUKbPw7kZyoRDgc
 GLW+niSGqZlf+PanfKUqt9a84X3j6Ud39iseKNte4gf+Z465wU+fJhyVcj/04ZnB9992uZGuxOf
 YC4PBuI4JVJaiL2noPl10YhfUuL7l3OeF8Irr2I7Y1q4BxKQ6166s3GYvMxd5WGmjoQzihP/zcD
 2qPyxdpYUr46opbtTgo0+6n0sG8wfhjIHkWNFVFDd7NeIJGj+ScVXsa515zep2NLHmrQWYNqAQW
 xFeDf8ljoK4lVw+cdKTaKrteyh96v9k3UqiB9o+DtDLIGPIMVLyWK8Hiop+yd/2Jzn+UVtRKoMj
 ZEJYOG8gbv8ebpQ==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clocks to make sure they are properly configured

Fixes: 520b792e8317 ("arm64: dts: amlogic: add some device nodes for C3")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
index 11e5323f95b7..4e6757a57fb9 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
@@ -969,6 +969,10 @@ sdio: mmc@88000 {
 				no-sd;
 				resets = <&reset RESET_SD_EMMC_A>;
 				status = "disabled";
+
+				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A>;
+				assigned-clock-rates = <24000000>;
+
 			};
 
 			sd: mmc@8a000 {
@@ -984,6 +988,9 @@ sd: mmc@8a000 {
 				no-sdio;
 				resets = <&reset RESET_SD_EMMC_B>;
 				status = "disabled";
+
+				assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
+				assigned-clock-rates = <24000000>;
 			};
 
 			nand: nand-controller@8d000 {

-- 
2.47.3


