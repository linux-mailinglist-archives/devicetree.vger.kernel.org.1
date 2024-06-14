Return-Path: <devicetree+bounces-75675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75096908503
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 606781C260E4
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCA718F2D0;
	Fri, 14 Jun 2024 07:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LR/ErpUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C5418C342
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718350105; cv=none; b=bdV76yJ/8ZX0DULL1+hbHP1eyclJY69YvWDhud08HKV5h9kjN0Nl1jEhM6+uFOtyEOXye8IVBDCRLoZ3XEgAmrIpAPs5ODwC+tCT0xVcVj32JwqOrVdXZKzO9AXz26hdUzJFlVlJooD/gk68jeC4o7JGEJnynKy1jqwIYQ44nFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718350105; c=relaxed/simple;
	bh=A2PASoilqpYSI/+vuK5IOoXc5LlU1gMN/yOVGVWPN5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YXjyYA0E1t5vmKmXdX1Kbb9bweM+T1Eir4VQvNqhTYwPhTXF3eJVtrkxfhzzAhk06T2TRs3sQLw0IPDBPWPfkEts7A2mZQL46Gxh10VeG+NBGyrjYf5e7qL6RHZIpUYVtktOsccWeKQttaZ1nbBzdlVtMKdNgjNr5Zf219XgpJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LR/ErpUP; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-35f1cb7a40fso1675839f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718350101; x=1718954901; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HA5hs8xf/jy+EOJ7+HP5joeg+9+VSnSpeoghvWaVeM=;
        b=LR/ErpUPwqJNVHCenksLKkKuCCYBWBrLw4Hmc/okqoMF8914Kq5G9HqdwmD3jVQMtd
         pj5eloHVV9d4H4FJOzw05G0wbyJqLu5TbKe4afitQWf3jyJ7CmdhEVaWgdqI+k7nwpRc
         daGNKPqdjwjuQoa9AArWSROGWvmaxF0MCf+KCWJytSyndOAO0xBC5hVmtMUT+osjVOb7
         TXXqHl2zBpNVJU5yl97FeJRYQtZVxVy1tZfK07fjxQUWycdLAdnJtNG8b+EewBlPmNux
         Zk5qpqSfnwevafUjUkW/CFT+PQ8z3SycH6JbBfKAQl1oOCQx7qnGeEvOkcueZrC6wogo
         9RDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718350101; x=1718954901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HA5hs8xf/jy+EOJ7+HP5joeg+9+VSnSpeoghvWaVeM=;
        b=GxjRsdpA+AAJt+Qqvizhzjf/4wGqpAlwtouONbflpfL8amYHDXvahBi+UD3umGqOul
         1+/gyN1KrYAawNgFBdjPW36P3aITg4pJvHoi/79Nv+RO9I5jb2PvLIp5lqAJXcNXwKz4
         Vte1CaGU4PucVSnd4MT0oWKkHgj1lAly459C1FakdxYIrw4WZnANORx68Sxj0ZY0DnHF
         GYCoL1bMXgIxCBoKDjb0FgtB8WtCmq70eRRqd547U8IhO+iX+J36tgGtvVh5NNIIMHxW
         IguL0mRMtVJPUbRUw88bI642XbhmVQMA4oJ9wloV4+0ujkfDQPYox7I/cXMyeDCmeiAT
         daHw==
X-Forwarded-Encrypted: i=1; AJvYcCXIWKn6H3h0PEgw1c2E6VgkqNr4DrwdWmJs49SoOeK16M19pCAt9gFs7g/sSTNZwqM7ifpgxxodTnFnI6nT1LoQwTlAyHlNMN9Dcw==
X-Gm-Message-State: AOJu0YyJ9HN6goc7/ywY8AGXs3H+Zofqh9VwwlepOpMPYY+u0WVA+dp0
	/EqqnbxUVYh9FzAQOeSqwIu372jsXslyaRJI7MZXCnAGxpl67k5tUZwdONzlrqk=
X-Google-Smtp-Source: AGHT+IHpHTOl5QY00tqzxh9OhoCQurXEk9QIL2u7zQNMO52wgT/TSDNb/CU/N+DsMPE6NNLY7yq2jQ==
X-Received: by 2002:a5d:58f1:0:b0:360:7a19:4bb with SMTP id ffacd0b85a97d-3607a78237cmr1161501f8f.51.1718350101288;
        Fri, 14 Jun 2024 00:28:21 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-36075104b2esm3535773f8f.101.2024.06.14.00.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:28:20 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 14 Jun 2024 09:27:56 +0200
Subject: [PATCH RESEND v5 13/16] ASoC: mediatek: Add MT8365 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v5-13-54827318b453@baylibre.com>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
In-Reply-To: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2430; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=A2PASoilqpYSI/+vuK5IOoXc5LlU1gMN/yOVGVWPN5c=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBma/D/PHaUW2bvmY9tCiVjihESjYpsC4I7oQKoqwB3
 mHC8l7eJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZmvw/wAKCRArRkmdfjHURbUpEA
 CqbFqWc7ZVeRe0gmWB+Yo6vl14789DYula2eT5S04/NlyciCaGMqNlxwJyxvuDRv1Hjl6NISBksh4c
 pD9tKX6C1RlEy1NP+fsqXkUGXpLp1KJoyaDRhwGr7fo3Xdo8yo+AXmTydOnxaDqksESf92YAtgH8Vv
 ag+9kzYhtIfZN9d3nO+MnJBNhCXET+Din9J8EWqe1Wc+phmLXUBF5CwpsBny9fw5+5JkdJ55iqnQ8l
 NVJDLcmmDD2ErJWdZ7rDaoFLMWmuHfL3OuWvjsYl5j5K593cGaPhLRxCDfmKM3nqGM+mo4MOmDXlk6
 orlvUwUehIxEo4pdlSU0oZ8VdoBLJ67jFlt7Hg+59Ziw1y6tdRlUg4DqmhzarAPMA9PvSCYG7ynbBf
 Uys2U/0V6Qbiw1bmveh8ogCKlDV9lQyYgZQ14QqEgkCX2amkoq1GiIMvcBBoW3PZCvVuS/D8kT4zIW
 5yHt6P0LzRJNNT0REWz4Oq0rdlcsn5lRw/ciN+x/aR2hQQNmWWOSR58YhLGUOKn1dtyQDZm+wXraxs
 j3wGYPF+M0fX3Ktlx77mRdkMeQcnhIcgUWcjjSrzlKKDzDwDBgIRcXPxhMNDHa+tqc1X8M0Qgm5p6a
 qCe5OjUo70Shs8K1eV0v9l8cyyxv3wWJvSJSKo/J0MjWS8trl7OEMDIt4coA==
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


