Return-Path: <devicetree+bounces-87112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA15493895C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA4C91C218A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 06:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3E3224EA;
	Mon, 22 Jul 2024 06:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="j+kuqRxH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4403F73501
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 06:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721631251; cv=none; b=VGkBX7wOWh4AUE4dgWuQoJP8hNRlLcWf7VzVVO8ucr6FA7n0FI2dcq+SH8cuBS5h15JIHGCXP9eJsrORqhGyyoxv906fdbS63teeC9dk04t+MfHSXwv3QyHL+XTyNtHz9vJ2Saq9YJobYjYenEJwANPOIyHSjY0ZhcvRXo0IQTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721631251; c=relaxed/simple;
	bh=vnmd2mVApxPLc2R6K6xVxS7OxGsZNFmbe/RXhcwO8AY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=osehdUoPHq98DXKWbQYFP7LfxKZMK1wtgB3uzP4Sjxq2ZjnMelka4xQXc1C8egbeUGwee1tEWpP+FAC/ljbUy3UAbBmPVQEzc86CnM4vPCg7iWgEoAoY6rinjr1vPbJR+0JxfEJzCCrQcvl+AQV5XBrp/MxgUIVGpld+uuIkwbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=j+kuqRxH; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5a1f9bc80e3so1285800a12.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 23:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721631247; x=1722236047; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PtNAnqgNG24R8NK/m4hXcoIVXnpKbw66g/FsBrMA5y0=;
        b=j+kuqRxHal55V/icNlrwgO57+sOC0DcaQZoZ1xVGnMicQiHDW5S2oHEwpQ1pj7RkgG
         SqpLupERckbYaP06Fh1WDklYH6140Yrbobwdmm52Tzf2pHr7MXtDmk6tDytn51FHqWu0
         FM/XIkohL3FUmAlRlzT2S0LoiHJeZzE8lSYtTwsfO4OXvGo/M26Fgz4P2/DEcPN12hMG
         Y7/Zgba7ZgcKmkpmYG6uFu0Io4G7nih5srvgmFqNdGWyezxQJXze5xeTNCBfQq/uRgup
         7/Xwo93HnG6mVBwVHgu5TzzkWtAKdcx33Xf7zYzT5R77fCp5/yqXfNXtb7P2YNZG/dMd
         nsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721631247; x=1722236047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PtNAnqgNG24R8NK/m4hXcoIVXnpKbw66g/FsBrMA5y0=;
        b=P2og69eYgZI6LETfsWx5tmtmWjEPhSpG5WTxNMnNntttKRuogslacjvFprZGf2MIAh
         PdiwE7XrbKA7peSHVA+UrGYn8HmOFPAtGgd/+gq96+chpm8KaJeYJqG4WmzFe2J+AoFo
         1rzZCZKhtzR64KFecQGIclhb/igT0tt0gfJaQIOSdVGDu5r67k2daCJDjvuiqCY5TRO/
         jdBpEHTPZ1y3PkAd7JsgXat/C9a2zOGFzH/ho8ftlgdbexIfo6QZ9Tw7Z9DU3y+Go/sj
         wNhpDc31xuOQs7h87ZOYyx+fUtI7J/3RIqD64fpMtT4dtpn6wC0j4OPmL7Senqa/2Mnd
         jB4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMRmPmIYmY7dNfOTzHkMDQaPSgpVhISHT7ZFcvghqnmTv5eyd0cVbDwxfW4oL3FJGx9TUdaJCJJ/I5To6g4qCzNmCQfzMOOgBHKA==
X-Gm-Message-State: AOJu0YxvFghfIg6ab+qsfSADKHV28nZJ6aeqnZBsPn5LohexX0fMLDTv
	9/oZhiWSG4Sm+tUEWWBFO7bj4MvGBoog0/GQK8qAjug00A8O2Jma9BXGUSLKtdo=
X-Google-Smtp-Source: AGHT+IFbwYRzzUmRf/OoPJE+V2otzxTtur4mA5CfELlQGEzRRvmmijhQKr10TxEyvnGIljPrOtFCEA==
X-Received: by 2002:a50:d713:0:b0:5a1:4f76:1a1b with SMTP id 4fb4d7f45d1cf-5a47996fdb2mr4097864a12.15.1721631247621;
        Sun, 21 Jul 2024 23:54:07 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5a69c1f56a0sm1982126a12.64.2024.07.21.23.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 23:54:07 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 22 Jul 2024 08:53:42 +0200
Subject: [PATCH v7 13/16] ASoC: mediatek: Add MT8365 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v7-13-6518d953a141@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2518; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=vnmd2mVApxPLc2R6K6xVxS7OxGsZNFmbe/RXhcwO8AY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmngHxLhHwx66j1rggHVESaKaFcYr3S1EhfXZdoGR6
 Rje7IXqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZp4B8QAKCRArRkmdfjHURZUhD/
 94ddsu8PR09DqcBVj41J3lBi/flpiU7BnukO+LFefq9P8A/V0ybcL+/l3vy2J8Fr0PK7h9p4tTMOE+
 j1zsP3RErNYgP7Q2+L+0LMrg7Te8Ai/xFx164rRqHYwxf71gxCWi9YG8yNzsDIkdW1bl8Bea1sxE3g
 /SIgZKsXyw1IKNjdj7somThkysldLNB/zACUS00m2sAjG0tlnKqGeB2JHhsA4nbNRSJE2aFwvyDgKC
 W2N8LPXQD/WMNqIafA9d0zsw7459q1bgUConXMUZqW6MlIOpTIUfNwnt/xGIGjgAcBfvYxRvcPJSIU
 e67LH9WdVjsLjNlFNSqZjkbwbcqmRMssvRSxA+e9oS2MIFM+BNQFJlCgZMytwsgCM3GXZb3sLFskCN
 vQArUtPx+ICBnOGpiMQouk+Q654mNDX8yXoPw0V32Kk4VoZFaaO8fba3BGzVwOkHbvJRpPYk5TPwTp
 p560UcHJoMWJaiIHNHqCEl8BiXReWOxgMF2dgEUFuWWJtrhE+lY+lO6Ct8qVpAJbm/R+DSmYcDEvC/
 N/O4ELUTJ+89rMER+930ldJ20FzHOkeedGw5ne3p0nWwWAl6gCtsuZxFpuEYmKsUDrOV9ZqWFlnx/I
 /KRMDy6+A9IAbMjHF59JlZJJbh7B53Au/+Jcjeuo3cWnF1sh5oNIfRAPbemA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

- Add specific config to enable:
  - MT8365 sound support
  - MT6357 audio codec support
- Add the mt8365 directory and all drivers under it.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 sound/soc/mediatek/Kconfig         | 20 ++++++++++++++++++++
 sound/soc/mediatek/Makefile        |  1 +
 sound/soc/mediatek/mt8365/Makefile | 15 +++++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 5a8476e1ecca..e6f7a5a49794 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -298,3 +298,23 @@ config SND_SOC_MT8195_MT6359
 	  boards with the MT6359 and other I2S audio codecs.
 	  Select Y if you have such device.
 	  If unsure select "N".
+
+config SND_SOC_MT8365
+	tristate "ASoC support for MediaTek MT8365 chip"
+	depends on ARCH_MEDIATEK
+	select SND_SOC_MEDIATEK
+	help
+	  This adds ASoC platform driver support for MediaTek MT8365 chip
+	  that can be used with other codecs.
+	  Select Y if you have such device.
+	  If unsure select "N".
+
+config SND_SOC_MT8365_MT6357
+	tristate "ASoC Audio driver for MT8365 with MT6357 codec"
+	depends on SND_SOC_MT8365 && MTK_PMIC_WRAP
+	select SND_SOC_MT6357
+	help
+	  This adds support for ASoC machine driver for MediaTek MT8365
+	  boards with the MT6357 PMIC codec.
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


