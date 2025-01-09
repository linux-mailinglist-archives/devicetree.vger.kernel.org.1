Return-Path: <devicetree+bounces-137002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEC4A07382
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE709188700A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA8D216E2B;
	Thu,  9 Jan 2025 10:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QsgM1nFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2722165EE
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419086; cv=none; b=T5dO8/8Qtt7ednnY/noX2R36jez3KYjx69pZs0A/6eigRRC7ebhKSWWqNwosb5FgUx9Xz/BEBxUzyQoXdn9LVWS9wT290mC7ilnvMS6Yc4xaHDV7edNY4wW3J4YJtcLdqZGFi50Km1OQrCbU/NhNWSm7aAIIsy727IOIDVoFImY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419086; c=relaxed/simple;
	bh=27bElByFZ0xMrSU7/Zvj6pVqqNy308V3/BYUONyW0CQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L/T99F5c+94N6qnAAyBjkXUep00bgfYFywmXzRNr6SjeGIYVXSq9qmaRFfozzjErbsSm5ycNbK63h6oxVrHslD8fkDahqtxDKWcVY8wNYHtj2mzVABR3z4rHg8xYvGv0pUXIyNkui+5uba4lUrcrHtNEbCiTk90qrZ8hOzunT3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QsgM1nFd; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3862d161947so375040f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419081; x=1737023881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=QsgM1nFdxeqzvItsrqY3DLRoKDL1EKxOo5MiQ7aPy2hi1lFNui7jj/t5IjyGnVhaWY
         NiW0FYZZSS9xLk9yqmfIQVP3zrtJ/cxQOype698K7HiC0a8W0LhRB6uqeDJFEkCogaFy
         mD/JMEOVgjXZLKTB65pAiwzORm8fAV4POZ9fYLFe1NWnnF7RhI1Tnyp3UT5o2C8GcHQB
         siAHFMurBfKujhM1A+g0eA3a43wXkMy8+QxgdxhUm+gjnCsSlJkCfzpyZ8ZSef1uWF1u
         F/Sol1qLBJMFX9xTEYVN8xQbaeLqrb5qHNXpVXvnOOaVWKjSmuF8Z3aO8LI+IQhBuQwV
         ETCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419081; x=1737023881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=O3xuE+/fxwQLPnGPP2UR67Zjsj3K0QuNXTGPOsWqY1Mjfedvn8cL5rZa0PdkofZu/T
         ZV57C5/G/SkDuXjyhAqmtVceF3dXg3CSMESa2/KXtG73LvzucWPGR0UhI+CdfgsQGahA
         XnmFDzzreIxVLcmYjdvwt3gn7DPqeriWAoWNm95hrQY/Ng/J04s5UYPsDEYcKsOk4gk5
         5IQF5ETIX48nYJS5zfc7CLkBa7gY0G3mIcR8+4QIZkww+zOrrGkbesXl0ytH8WmD++xG
         77dqjkMPJzMnOs9+5b5xkSIMDa9gORPK8Ztr5nZymzxKO/NEuDpjvNS+c9uRLMeLTaJc
         Ph/w==
X-Forwarded-Encrypted: i=1; AJvYcCUQYsddw1ezF5Fdow1NfTxiU+Bapivhz0PMOwvEre5bf3KU69aeick0f+7yvFPEq8W3/5fbO8I30mT1@vger.kernel.org
X-Gm-Message-State: AOJu0YzxhfSgLuORaoZjl+1q6Ggbw6EncLyRf54p08n0nFWtI0rnjOS8
	piFizvUnzrMPJBO6XM9IOpJGWxP1JC8QZ+sOi2oMKWSYBI4DozPIOe36vpmvVoI=
X-Gm-Gg: ASbGncuCFHbfDZkZa+GM6GUZ3jX2FG+RV2ov4sFiXXZBKQTIWi//cj10dpUT8hz9G1B
	xwJaqMqYuCPlaQBWpfQDukoDnwNyBZLw6DjgMj8UKZiZ3zvSuuNx4eaM5HBixUU+VVUw0Pk/RBC
	D8EoaHi8HSfBHdR0DMQM+uq8xdC27suecr1EDW+tfegjYp9c1Vq0I1bmWKZ2yHR2nBkKznM2sMZ
	SDZLierGy+xtBZub3eRwFz++dDsg0WAMs5waNmd4+IkB3HF2p9LszeU1Mw=
X-Google-Smtp-Source: AGHT+IFCYv4uf2yFMNDeWwu8dxDCALmnbFIR9ZT4+Lxq9xNx5WM2hH8pnTeOj9g7LOIfFfGA1HWa3g==
X-Received: by 2002:a5d:6d09:0:b0:386:1c13:30d5 with SMTP id ffacd0b85a97d-38a872f6ebfmr5116576f8f.7.1736419081275;
        Thu, 09 Jan 2025 02:38:01 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:38:00 -0800 (PST)
From: amergnat@baylibre.com
Date: Thu, 09 Jan 2025 11:37:56 +0100
Subject: [PATCH v6 3/6] drm/mediatek: add MT8365 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v6-3-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
In-Reply-To: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1705; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=wfidoNqLEIpqSK6RG2PAlzWtAyJfTIKDPdldVFKf2ag=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDp6kGOPVCiEv8hl9KLU8i+wGPmqu2FquHDK5H
 Q2R0yViJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURc8XEA
 Cu3Qoq4Wqg3WdgXcnvmUQIYev871ySwkgvnV7At88mMQ+GkL66NFNsB4PSred1m+OtwjUlWXQe0ryv
 SGBXNcYk4OPx5tyI8k2cJIGhIlQQNxAdQ0gG5CIntqQ6Q5OeliwrbiIm7kekFMGlRBeHMSE88+Fjs9
 BtxhIUR7SoG/WRJCiuaPp1V+NZu0akJj9bmUb+BbRjtcnYzZDapTE3nVYP7JcuI6sVHGTM2KLKnGkT
 gxPGwTXWvM87+FNMlCHcOGxmuIsYzt3Ug3X07f/pPlA5p1HLiIUKnBmyEel1Qh3f578e/bc96J3B4z
 Sz6YAbXC5d4wlRvQIkggqXZAgpYjuJXh0pcXJyQ4x39eF484WQjmKvvN100KMbpVX3anhTXG82vHr0
 VGb/u2fh0BgIzC2cpTbr/Mh60SGd8YiLWpeEdefIZANN0Z4eA1d+qKkQF+MGNIRZWlvVoMQpsalqFD
 1XyoCmR52dau4RmPhyUZ53FyhI3+1mh9FujyIwXqH7x5EhAn5lmmCPthg+Fysw2uU+vZWV4AZxzu/Y
 xEVF6zf+m0E3Go6wioVEbC9bq+FOr+5WQPqQmTRS0L8C8gGxXEgRnr6/6enaWGE7+nGdnIuOGCe734
 i4fZcUhVa5gefRq9qlSz6xBlUTS1Ra82yv1i4o8bKF+ukc1tLLU0fkbK2IpQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

Add DRM support for MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 0829ceb9967c..5471ef744cc1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -328,6 +328,10 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
 	.min_height = 1,
 };
 
+static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
+	.mmsys_dev_num = 1,
+};
+
 static const struct of_device_id mtk_drm_of_ids[] = {
 	{ .compatible = "mediatek,mt2701-mmsys",
 	  .data = &mt2701_mmsys_driver_data},
@@ -355,6 +359,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys1",
 	  .data = &mt8195_vdosys1_driver_data},
+	{ .compatible = "mediatek,mt8365-mmsys",
+	  .data = &mt8365_mmsys_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
@@ -751,6 +757,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8195-disp-mutex",
 	  .data = (void *)MTK_DISP_MUTEX },
+	{ .compatible = "mediatek,mt8365-disp-mutex",
+	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8173-disp-od",
 	  .data = (void *)MTK_DISP_OD },
 	{ .compatible = "mediatek,mt2701-disp-ovl",

-- 
2.25.1


