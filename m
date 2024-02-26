Return-Path: <devicetree+bounces-45974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3812B8677B1
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD56E1F274D3
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 14:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E398112EBDD;
	Mon, 26 Feb 2024 14:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CHvpZawQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13FD12DD8A
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 14:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708956151; cv=none; b=Md2kDIG5vL52RvDZQaz2hwoHTyyGQYQp8EVYJIN6ouBxRLYfZY99zDwe8P2rqw8Wqej4dAOPAgzw2DfJ+RGxOyKsxqb9S0Rc0DHSugNjvsXW7yaJf9yGolzrH7fJ+5kcHjn7qUHxTB4dpW4zUAEYKfX3QXkqFB7ggKogf6pBXbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708956151; c=relaxed/simple;
	bh=7gKtKZ96mpebE4/UyNGtTbO/tF9O5foCSjcP2W5e+6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hv06aY2/4P5M+EZkGpFb3EH/2uEs28IvaCiml7stf4FpUBiSwWuGNv+CaqM1SxANEa9iTll9L03lc5F5XzuZAVZvBdJdZPPz/xOgSYKprbwdTQrh3kAr+PLaDTtr5k4Zl9rpXFUQQArvoNpjpVnJ1JXSkUoQzCYHvhCknery67A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CHvpZawQ; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-512fd840142so1168066e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 06:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708956146; x=1709560946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zA6Y8WaWiyVxJ/xYCh7GUPTM71b4HBf0Ymw0AKthDEc=;
        b=CHvpZawQ/AkJeA9oiqBnUcpASxOCV5HJeiHpmAmHapogfO1vKGNRsO2yIt9nQAdoNJ
         A7a+IuS4Jr9tSxrgvLM35qQ61rbjWBfKBfQUxecJQ0x14QuxCPVaJ/pnzp5BHlE0/LpT
         /SFA1jOgVEpCSu/9CGFHJFnvVGfB/JEdm4UkDQW8LyzY4WNDUkiY1HfqbSFHEjZQIAu6
         dzzIVD2Sz4AxtFjeu+KsxVN+CJwD+Jh7R8IdNJOQSWlg0MLNjm8UXxtidaWkLJJBMck5
         GjTIlGDO8qRfPw1SKlMdiuRJ4cHybR3DT/+yc28pqDNj5OA/Use8n0R/arhoMmlGSppz
         KYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708956146; x=1709560946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zA6Y8WaWiyVxJ/xYCh7GUPTM71b4HBf0Ymw0AKthDEc=;
        b=rykK6o8qDy9B82V4B8rqVZSpnszHCXB79bajEBL99EERZ1SI+9s9oo2hPNtMAO2A/Q
         ICZmHGjQZoh9W5IAiwS9azT5LmeJwbzz/jFQ/7PyxPo+d1V0hf3/6Ee+JFn5ATNPOP78
         0qlfijuflLSrxC8lTp1gSZn6LQrHNb/8qi1wU5zCZB/+2TolLQrxdame4FGWpReH8HU5
         Psz10qGLjMeLmVcrA6Ge7C/yDBTm3cnabZsnOJzAzBurO27uG+FvC2q8nn31Nu+iYp+t
         zugPHRO5E28vUu1Xup0Ir/grA9PoebTSCtSMJSNjJ8DzEuK8V+DkxuErmlND3wvOOrxe
         3ZZw==
X-Forwarded-Encrypted: i=1; AJvYcCV52lMpRRAjNf9PMuCX72ocAaPEhBbHSMYH7ljhw6WW1xy0n5LyCwXvUQzyJtUi4/QknxgMoAn3COowIehP7/JVT2oHAPAa6x+w5Q==
X-Gm-Message-State: AOJu0Yx315RcH5gRrOeq6ChHxd67+5IW4j28HRPN2JTHeYOw7G4lm4jL
	jCXabniL40U55S6uVoSVzP4KTNOqCT0oMfxdDZVgnx6C5YjN1wptCwZKn/4z/D0=
X-Google-Smtp-Source: AGHT+IFZTYGnkejti+WCUV0bUYklgWDkRIQ3OpYZLpgocYTsWqEZ09TnWQAenfEV9LOzKDtQuB6hbw==
X-Received: by 2002:a05:6512:3da9:b0:512:aa52:5cce with SMTP id k41-20020a0565123da900b00512aa525ccemr5583650lfv.12.1708956146625;
        Mon, 26 Feb 2024 06:02:26 -0800 (PST)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d33-20020a05600c4c2100b004129f87a2c6sm2838475wmp.1.2024.02.26.06.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 06:02:26 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 26 Feb 2024 15:01:52 +0100
Subject: [PATCH 14/18] ASoC: mediatek: Add MT8365 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v1-14-4fa1cea1667f@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
In-Reply-To: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2430; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=7gKtKZ96mpebE4/UyNGtTbO/tF9O5foCSjcP2W5e+6o=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBl3JncDRU2NBAq5rld4NoSuR28KwMZlIfGU8IBQSkN
 SNQJ2tqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZdyZ3AAKCRArRkmdfjHURfDGD/
 9m97Nzpk6hOjVqK3PFbQax0+QGFlRuqovyHNa4EU9vmGuGO8caLPUuugYcx559tE8h+O1jkQCrwNWX
 Q/XOJ1FDmQ6RI9Q+XZF3AxpJllFfCjLhgqxMDYasFUG3w/1ZZ+ENS9Nl1WonR/58W3CFvWLABh6fqV
 N3JD01coH9rYNalJvFiv512AS5tFcJFWbfHDgxPE9yPGue60swyFLkrzI5+2j3X4SrKoM6Dgzqq4wc
 eojs5yS/ONSWbcY0vq3o5QMLyQkPdZBm5BLautmVV3Jy3SHMqvwmuve/casoFCf5K/J3MBxJDDVhqs
 OxpWXaazPI1cPcWxo3B3pVoK6YuwDtZb6QH3dWTgiJlmdorv3ErELXiBUZy6Sua5s3+zvVJS8RPz8Y
 VKeco0kB7OYIYUWEs0BT0TVeGj4sUqqyV99af0vY4kP21ygqowS6nN+yioba0wVhvNidAcRHZB/qoL
 lkBf9JDhphrOQl8xUhvVGCAmMxegJ6est/k6fJZ7hCb1UE3biVtE/p7RAeYSlt8/nMBrXK+2SO58XW
 AC5zcWZnuO6QzvwI29ZugDYm0/gxJx+tHTdzK7IqfeloT5QeH3QDzvxl0JQBbP3FUXC1vKm59Or25T
 LhPQU64Udhs7slsra/bjBBFsekuxfIFzBMn9iRPU7SDoam+8QkzwtjU02C5A==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

- Add specific config to enable:
  - MT8365 sound support
  - MT6357 audio codec support
- Add the mt8365 directory and all drivers under it.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 sound/soc/mediatek/Kconfig         | 20 ++++++++++++++++++++
 sound/soc/mediatek/Makefile        |  1 +
 sound/soc/mediatek/mt8365/Makefile | 15 +++++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 296b434caf81..671020037a99 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -314,3 +314,23 @@ config SND_SOC_MT8195_MT6359
 	  boards with the MT6359 and other I2S audio codecs.
 	  Select Y if you have such device.
 	  If unsure select "N".
+
+config SND_SOC_MT8365
+	tristate "ASoC support for Mediatek MT8365 chip"
+	depends on ARCH_MEDIATEK
+	select SND_SOC_MEDIATEK
+	help
+	  This adds ASoC platform driver support for Mediatek MT8365 chip
+	  that can be used with other codecs.
+	  Select Y if you have such device.
+	  If unsure select "N".
+
+config SND_SOC_MT8365_MT6357
+	tristate "ASoC Audio driver for MT8365 with MT6357 codec"
+	depends on SND_SOC_MT8365 && MTK_PMIC_WRAP
+	select SND_SOC_MT6357
+	help
+	  This adds support for ASoC machine driver for Mediatek MT8365
+	  boards with the MT6357 codec.
+	  Select Y if you have such device.
+	  If unsure select "N".
diff --git a/sound/soc/mediatek/Makefile b/sound/soc/mediatek/Makefile
index 3938e7f75c2e..4b55434f2168 100644
--- a/sound/soc/mediatek/Makefile
+++ b/sound/soc/mediatek/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_SND_SOC_MT8186) += mt8186/
 obj-$(CONFIG_SND_SOC_MT8188) += mt8188/
 obj-$(CONFIG_SND_SOC_MT8192) += mt8192/
 obj-$(CONFIG_SND_SOC_MT8195) += mt8195/
+obj-$(CONFIG_SND_SOC_MT8365) += mt8365/
diff --git a/sound/soc/mediatek/mt8365/Makefile b/sound/soc/mediatek/mt8365/Makefile
new file mode 100644
index 000000000000..52ba45a8498a
--- /dev/null
+++ b/sound/soc/mediatek/mt8365/Makefile
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+
+# MTK Platform driver
+snd-soc-mt8365-pcm-objs := \
+	mt8365-afe-clk.o \
+	mt8365-afe-pcm.o \
+	mt8365-dai-adda.o \
+	mt8365-dai-dmic.o \
+	mt8365-dai-i2s.o \
+	mt8365-dai-pcm.o
+
+obj-$(CONFIG_SND_SOC_MT8365) += snd-soc-mt8365-pcm.o
+
+# Machine driver
+obj-$(CONFIG_SND_SOC_MT8365_MT6357) += mt8365-mt6357.o

-- 
2.25.1


