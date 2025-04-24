Return-Path: <devicetree+bounces-170374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C419A9AA29
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C543B466AEA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6356233153;
	Thu, 24 Apr 2025 10:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jebe452A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACF623236D
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490341; cv=none; b=SlLsImp2yWygBhaSsTPOpBCVsM+X1u2iSMPKL9O+b4UtVbEa5EJ5WzidTca4MfEbui5oBcbMkPwJCLVImKCC0YSKAjdrZ2nGCMbinmQNit9fPACGIyfxKfbyh7XsHRsbw+/376xPYproEjeG4oB9vxDK80xc2+S0yzQm4ok2CZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490341; c=relaxed/simple;
	bh=h81QwlW+y5jejd+U3IpRD8yw0U0CSxtyIhPIe9+m1d4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bzk0SzgqEHm94kG8nEXw/E6bXWWEcp618MCuvOfQbon/9a/itXXuUb333qsx8AtM2Xhe2dn+cGNjMVwdJnWjukb+NpY5q9hBRxCA8Nf4HFtOmBaMLQBXZGFVI427ZHKTQINyEt4/UVu1wNqV36gvSAG6l3vdHzBME3a9NZd7Sjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jebe452A; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-224341bbc1dso9311185ad.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490339; x=1746095139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+dIyzL01cgo+crKLDEZdPmeuX1TlRguSNO13pBQrU7o=;
        b=jebe452AACQtLmGeFmpH9wWCAZZgxZfSZ1PMWHqG9Ji0bipFwn0/a1wIc8dot1GPje
         K+G0+PKk3lbwPxUenicrFGenx7Cf8Imotv/oEIz5gocQ1p7Ie5g2DpXCWol4GkeLXAG5
         f2+swXbFCjyAsg6gxE9xW1S2NCtEs6EcYUnHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490339; x=1746095139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+dIyzL01cgo+crKLDEZdPmeuX1TlRguSNO13pBQrU7o=;
        b=p5daql3AliSUvynvN5re6N9PoMzZXi2K98Lhbp0Lv1Xp/Hb8mOKSxbnWE/7AF6djmP
         FMafLjV8L4K5zgyHvqGdFIXmm8oZMFOE9YZxZ58pnj89AFhmni0yU3OhLY3jcCJYUiYC
         7ySA6cyQc9qCthonPgbz17hLcHrKeEmBiBGqBCFJe1ZM3wlZiQqMt8KIlnsYPOa3CMRY
         dAPZeR3AZ4qUzgp8Ux3E0y15I/69yR5cxfTfoixy4UTm0dywuveHE8W0nEDtRYrAT+rk
         tuue5XHYLhg3wHG/Qw3eaSiuNtk1i0NrUsg2D8kMfmhaiptw3l7s5pj38tNBLX00QXoQ
         SG8w==
X-Forwarded-Encrypted: i=1; AJvYcCXMPpvsimUXC91Wt3SEYjjdjul6e6sYcVgl1+3sPQB+Y1hvDLW9W7yilI1fg/fnrZZHoLLv3TuTIaBs@vger.kernel.org
X-Gm-Message-State: AOJu0YzaddKZZpjMFD2NIiiQu20cfYfires4QwiNHWf4cisPEBqvgxB9
	TCJJAGoz21p916gOJwWgRQpYLEVPjQzj/o9TE0ZYvxdzd1W9+OUhPn40Dodmsg==
X-Gm-Gg: ASbGncvkbq1fN/nUyZ6QiSBmePG7ssvoVs0maSf4BB54Ojxjc38wrF5/at1debp5lUs
	p/oxveIBklqjo8G8tInTqyAaePSLupg3R5RA8EjEYZB7PE2M6JDTiMBs6mj/2S9hQXqrhTMTUPf
	oGVVohTW6DV/w7K0MVgS7lcTEiC58xfd0pZSmPR17+H/oy837mcPjL3EzxRvqkE2nwkHlb81s7P
	JC9Bw/sQoAVTkig5ZmJjQ3iTfkbnCDT27um15rS4g+m3cqZAxi8TkxkN/wHLbLlklTeAn0DM9/9
	TZ769JLE3jwswI8gCjyvtPFUiF5FyakzZHImcVK2U8Irub+UZDdz1UXJnQ==
X-Google-Smtp-Source: AGHT+IGDFNqCsjcE5GSWvAg3se5R8IwE/tOMMO7jOQeDrhg6ysHM8d1FMTBh96EPdCO+C4822gNnlw==
X-Received: by 2002:a17:902:cacc:b0:220:ff3f:6cc0 with SMTP id d9443c01a7336-22db3d777dbmr28370545ad.38.1745490339232;
        Thu, 24 Apr 2025 03:25:39 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:38 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/13] ASoC: mediatek: use reserved memory or enable buffer pre-allocation
Date: Thu, 24 Apr 2025 18:25:00 +0800
Message-ID: <20250424102509.1083185-7-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In commit 32c9c06adb5b ("ASoC: mediatek: disable buffer pre-allocation")
buffer pre-allocation was disabled to accommodate newer platforms that
have a limited reserved memory region for the audio frontend.

Turns out disabling pre-allocation across the board impacts platforms
that don't have this reserved memory region. Buffer allocation failures
have been observed on MT8173 and MT8183 based Chromebooks under low
memory conditions, which results in no audio playback for the user.

Since some MediaTek platforms already have dedicated reserved memory
pools for the audio frontend, the plan is to enable this for all of
them. This requires device tree changes. As a fallback, reinstate the
original policy of pre-allocating audio buffers at probe time of the
reserved memory pool cannot be found or used.

This patch covers the MT8173, MT8183, MT8186 and MT8192 platforms for
now, the reason being that existing MediaTek platform drivers that
supported reserved memory were all platforms that mainly supported
ChromeOS, and is also the set of devices that I can verify.

Fixes: 32c9c06adb5b ("ASoC: mediatek: disable buffer pre-allocation")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 sound/soc/mediatek/common/mtk-afe-platform-driver.c | 4 +++-
 sound/soc/mediatek/common/mtk-base-afe.h            | 1 +
 sound/soc/mediatek/mt8173/mt8173-afe-pcm.c          | 7 +++++++
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c          | 7 +++++++
 sound/soc/mediatek/mt8186/mt8186-afe-pcm.c          | 7 +++++++
 sound/soc/mediatek/mt8192/mt8192-afe-pcm.c          | 7 +++++++
 6 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-platform-driver.c b/sound/soc/mediatek/common/mtk-afe-platform-driver.c
index 6b6330583941..70fd05d5ff48 100644
--- a/sound/soc/mediatek/common/mtk-afe-platform-driver.c
+++ b/sound/soc/mediatek/common/mtk-afe-platform-driver.c
@@ -120,7 +120,9 @@ int mtk_afe_pcm_new(struct snd_soc_component *component,
 	struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);
 
 	size = afe->mtk_afe_hardware->buffer_bytes_max;
-	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV, afe->dev, 0, size);
+	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV, afe->dev,
+				       afe->preallocate_buffers ? size : 0,
+				       size);
 
 	return 0;
 }
diff --git a/sound/soc/mediatek/common/mtk-base-afe.h b/sound/soc/mediatek/common/mtk-base-afe.h
index f51578b6c50a..a406f2e3e7a8 100644
--- a/sound/soc/mediatek/common/mtk-base-afe.h
+++ b/sound/soc/mediatek/common/mtk-base-afe.h
@@ -117,6 +117,7 @@ struct mtk_base_afe {
 	struct mtk_base_afe_irq *irqs;
 	int irqs_size;
 	int memif_32bit_supported;
+	bool preallocate_buffers;
 
 	struct list_head sub_dais;
 	struct snd_soc_dai_driver *dai_drivers;
diff --git a/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c b/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
index 04ed0cfec174..f93d6348fdf8 100644
--- a/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
+++ b/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/dma-mapping.h>
 #include <linux/pm_runtime.h>
 #include <sound/soc.h>
@@ -1070,6 +1071,12 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	afe->dev = &pdev->dev;
 
+	ret = of_reserved_mem_device_init(&pdev->dev);
+	if (ret) {
+		dev_info(&pdev->dev, "no reserved memory found, pre-allocating buffers instead\n");
+		afe->preallocate_buffers = true;
+	}
+
 	irq_id = platform_get_irq(pdev, 0);
 	if (irq_id <= 0)
 		return irq_id < 0 ? irq_id : -ENXIO;
diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index d083b4bf0f95..e7378bee8e50 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 
@@ -1094,6 +1095,12 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	afe->dev = &pdev->dev;
 	dev = afe->dev;
 
+	ret = of_reserved_mem_device_init(dev);
+	if (ret) {
+		dev_info(dev, "no reserved memory found, pre-allocating buffers instead\n");
+		afe->preallocate_buffers = true;
+	}
+
 	/* initial audio related clock */
 	ret = mt8183_init_clock(afe);
 	if (ret) {
diff --git a/sound/soc/mediatek/mt8186/mt8186-afe-pcm.c b/sound/soc/mediatek/mt8186/mt8186-afe-pcm.c
index db7c93401bee..c73b4664e53e 100644
--- a/sound/soc/mediatek/mt8186/mt8186-afe-pcm.c
+++ b/sound/soc/mediatek/mt8186/mt8186-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <sound/soc.h>
@@ -2835,6 +2836,12 @@ static int mt8186_afe_pcm_dev_probe(struct platform_device *pdev)
 	afe_priv = afe->platform_priv;
 	afe->dev = &pdev->dev;
 
+	ret = of_reserved_mem_device_init(dev);
+	if (ret) {
+		dev_info(dev, "no reserved memory found, pre-allocating buffers instead\n");
+		afe->preallocate_buffers = true;
+	}
+
 	afe->base_addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(afe->base_addr))
 		return PTR_ERR(afe->base_addr);
diff --git a/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c b/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
index fd6af74d7995..3d32fe46118e 100644
--- a/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
+++ b/sound/soc/mediatek/mt8192/mt8192-afe-pcm.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <sound/soc.h>
@@ -2179,6 +2180,12 @@ static int mt8192_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	afe->dev = dev;
 
+	ret = of_reserved_mem_device_init(dev);
+	if (ret) {
+		dev_info(dev, "no reserved memory found, pre-allocating buffers instead\n");
+		afe->preallocate_buffers = true;
+	}
+
 	/* init audio related clock */
 	ret = mt8192_init_clock(afe);
 	if (ret) {
-- 
2.49.0.805.g082f7c87e0-goog


