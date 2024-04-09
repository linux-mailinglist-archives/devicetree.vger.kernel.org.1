Return-Path: <devicetree+bounces-57410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 004D589D6B2
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 12:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BC821F2186C
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 10:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F006B130E2C;
	Tue,  9 Apr 2024 10:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oQyvvHSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A3912FF95
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 10:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712657649; cv=none; b=TMsZ7i4SmefnR8XUEzzTo2CROyA4IvDLIpDhO9srXX6MhjEXIr7HSBK4k4irMUgwUMBKhPXtbGvV75q0aP3REAVtGz/l+psu0arbVzhtpGufWgjmmt/woYRzSkLVGDRtG3w6WU008EO4v7QcEaiIv8Q781TcfNBiP6qiZ8gd+o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712657649; c=relaxed/simple;
	bh=A2PASoilqpYSI/+vuK5IOoXc5LlU1gMN/yOVGVWPN5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=meZI+vLPk1GyQnl97QgrHSayjYA0BDd81nSAPV+KXg9tMNUPh8sgNZkgVH3hyXQ74V5pmJQepKpDmCUXlx+7pSAFYfTcjHRlaa/h0ss0lQpF25/QBhxo5K/SWstqIvG9J+NmprGUiOwErcR0dCQii3yRuuIoP3GRezUB/AcblWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oQyvvHSx; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4155819f710so42371885e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 03:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712657642; x=1713262442; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HA5hs8xf/jy+EOJ7+HP5joeg+9+VSnSpeoghvWaVeM=;
        b=oQyvvHSxDjlHsS3pP6j8itE4QhB2E1c/21BvH4RGoahicPA2r6WbFOOKMY3K13QfAu
         f9Ur8lYwIr61pzR/GfQkNBIa/mTpcc+fzim5hWzvmi08yzmW7GmRpxFScgrP+7Y6pi06
         /kEY+j0Dm3CWl+M1WtrmZYZHUKeEobkKlESZyX1nIouqWBiDn03hTKKh6Fm+MSRLVW4e
         F4vDxnbH5Vyq7YRdw40fH6q80Lkuj1A/SELjs5IN7rYqoFFWujgRKuSaQDaFPUiXsVwB
         qU8EIjLMG1mAGCAgXup/O0wd+6leCP+K7QrGwslAAED49aIdukoRwNQVy3c9udjksje1
         Uayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712657642; x=1713262442;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HA5hs8xf/jy+EOJ7+HP5joeg+9+VSnSpeoghvWaVeM=;
        b=eLmdHq2Nl+ZcpxW75LQsIvSgkIjwlNTx8FaoBSVtOjRXrUmEJPg/55GH8qutyQobeR
         Y9m7I8zbHXniDMwZI6fQZNGPMv862c/RUeGiT3SbOxhcl9hpEnM3/ubpIi97rfWanqlU
         EkrlG2Jl6QDe2FipB0AgevHvdvdw07hlJFUQ6ady/sj2P6M7BwYb/8mc4OmvFBfcCzd4
         Ef+t2E4gPWN1nIl+pYAsSu0o4FDHN1gXLGSIoOT6hl+1o+/sehRhwa1WnLQuixhd7NEw
         TJsI2zqYGVsk9g5yb+yUhS4UrzMuYgRd+6dYKdxtEGoxwuetO55W7DHyPGNY/Mw0jBVs
         w1Bg==
X-Forwarded-Encrypted: i=1; AJvYcCXb4AFAWHxKfa2QjQTgYUHXB7Y7llC4QhTRk3qYxM2WCdECoxCXY36ytBYgJaPH0+6vGlvr95ELPjxDI6w3E5/yMTkQKQVBgCsRFQ==
X-Gm-Message-State: AOJu0YxbUzh3dZw1bfgh+bjlgp5CLCT41md0a2ouTGzMCEWAv0+BksxX
	3n8qq1e3EbJoX5Z6hkUtyjrkS+g/++W7/oK+DHemEOaYwrFKfl2nxsuD+Le/fcg=
X-Google-Smtp-Source: AGHT+IGg+qyK2mz9YWd/JqH50CwAtlrGTRYl+InjvJ2xy4FgfQZKzqEtNGNqbRovXDbYKqTzZPbMLw==
X-Received: by 2002:a05:600c:3108:b0:416:4923:1f2d with SMTP id g8-20020a05600c310800b0041649231f2dmr6513861wmo.30.1712657642630;
        Tue, 09 Apr 2024 03:14:02 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id r7-20020a05600c458700b00416b035c2d8sm1124149wmo.3.2024.04.09.03.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 03:14:02 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 09 Apr 2024 12:13:35 +0200
Subject: [PATCH v2 14/18] ASoC: mediatek: Add MT8365 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v2-14-3043d483de0d@baylibre.com>
References: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
In-Reply-To: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2430; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=A2PASoilqpYSI/+vuK5IOoXc5LlU1gMN/yOVGVWPN5c=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmFRTT2q1kS4mzy/NybWoAbX8cukntMOY4p5dixke5
 /AoCuiWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZhUU0wAKCRArRkmdfjHURctOD/
 4mrGmtiYDjbfFa+U1HcWmqlwWqpw5YBSVzqMwm0HuwtcYbgBYCvy7BsPTIKM9b/Eb0dPNPuvQUEXo+
 +PwIkV1XZOqs+akViaabJZpjcym9VBidjgxZ8HiRJNOD6WnJ3zwAbqkLlb4LJGovQk85OeAGyJRnJo
 VxO4UgINR9o+b5qo1a878IOXYPjgsXw2rQUknZtFUW2SVtDM734Aij/VLxPzHobadPjSqhEGStU1vb
 D0j0KIFFdfdptvwGji4fPqvcA+MzJAmpbQiANyGpdlz7ZK15Lr1Z/QB5bsk5k5jOvNpePCnU8tvUlx
 5mRjbtLL/qf0oMSsz+hAG5KtwJglafv/7bbsA7nBmEYejG9JNX34SrIO9yeRbQ9Br4UZknPO2592Ho
 oilZDSgVzk4yHg9hcqV+YdcY+WyvnHtjasvI9lHyMuuqox6fWkn/zwFrgY/fn+62T4Qe9e4QcPfR6A
 8kBnD2UItlMldFJ9+YMFjzhIPv2KByIxNy7n6Ip0oLZzd3hmkjESst8P5AMocRMdcu7HjmaeodaCZE
 BD12RuC4m5ZXo7RNAo3UoaD5KatuyibL8h/PZT2t6zbc4/2YTLVvfJBz7+XLB23LQqNJoAm3enhBt2
 YyI1mYbn/6r4TCxea0jX4kKyXJpl4p0/TSaUa4PlzBCJ4j1GZTQmnhgoWsow==
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
index 5a8476e1ecca..c1c86ecc0601 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -298,3 +298,23 @@ config SND_SOC_MT8195_MT6359
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


