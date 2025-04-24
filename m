Return-Path: <devicetree+bounces-170376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0086DA9AA2E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E94A4188CB31
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DA72367A0;
	Thu, 24 Apr 2025 10:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gOt2aRst"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CBD226CFD
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490346; cv=none; b=ZKlwv/AemzS33zMu+FJulVp5Tsk0Y4HpjrJ7AZNHEVWZnPXHok6zubAGpmRIR8ufaI6j2wauLlKl8z1kvUf7fB/w0OD72VOvC2xJjyCPSz72P4nYNe33gQjJQFVV1oi+zOdGDj1uhfo3tmhOHoxceDXw8ed+zh8wo/RXcSB+0Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490346; c=relaxed/simple;
	bh=hCepBdzhR3imrEAzE78ikW1DLTohY4AHQ4vBGIcHc+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWtZELj5FT5wu09gSQef8a7w0MU4/roEN5AymKX96yoItkAn2is/05YXhxiM3UvoEl8K4JM/NVO/9UAiINmYMDAfBJk/Zuzhybu85xfwWaRgbFloWPD1v9N30RmMBNSka4wE2ON65E61lA6olWaqFd/neNxpyZ9Y4lWhfy04AsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gOt2aRst; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-227cf12df27so7736905ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490342; x=1746095142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUBFebUvWCybPC7Gr0qjTf4RweTwPSwS4K+KvmFiZN4=;
        b=gOt2aRstLpgCHD8VX9jseKV3qfm1ja16UJMv5wCmcG4vFJ9kVjoCNF/uh3KndU14u4
         1kBkkuyGe5IfnBO3kyJNIa7FiRTAAVxWEXEVuqW4o7SO7Yds739k2J0MgkQX/d3Y/IKX
         w7U9QLRNH0HCcb1uBHhgbAczwIngCON4aeNN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490342; x=1746095142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XUBFebUvWCybPC7Gr0qjTf4RweTwPSwS4K+KvmFiZN4=;
        b=c5d9H0bLLKPWy9TAKx118kiI7HciRz0SWzZsuX2NJJ/cK6fbg8Ek3jU+P+tuOq/nxq
         w3X0NIzeaS2hyz9S6sqUgVXHVimfqA2snlHrGOEQmLtQ7cu4REk5JwcnWKtIgKnJlS2i
         YRK5puUQwndkRoRHar+H8A/3pY5nsjD1I8b8DO/Zp8+RzOx1sGw7Lry17YZpEPG+AyNx
         pdR0tuhEotmLk9cUYOM+j70LcV5PMgMX7Vc3pyU0sFLaK3MEZVtenjMJVWTf0NDKhzy2
         adxDtzppMoUhCNn+OBJFiLGVo1RmKVvYkDKuRwB2axfE2w90jNIDy5OSpaKjCwpEYc1m
         5//w==
X-Forwarded-Encrypted: i=1; AJvYcCVEu3ztcTy7yW394J+C5xpzvuf7CLT5wCsHMMSdaVcMTdmy+3zM9fNkpZjEWFtYwEio07KzFXWfM8ed@vger.kernel.org
X-Gm-Message-State: AOJu0YwqqVlA4H7pWlwowJ4b5Dy2A8nUZnMBqAJmuPpFehI03dTnc+q7
	XlMIfcgivi0wbAInynnDz3aIWdoIItNtcCOm9w5EU7iUTiShgaK+CpHTk5nEVA==
X-Gm-Gg: ASbGncuHFbHPykyvaHIuFmBa4Y/K2FX78TXyCDRVs5RC/4n9M3UOnomvNmT+2jZVQvJ
	Ses/yKnT+6QvwDFVtkrjfGJL1YdADECMHKntf5sgGm4cL9BcRLsVYg5WLAxL9cxlNYXkPINQfeI
	UED3bG8CbmWdUyWt/lxSva5apOqnKwg4V6FqMzTC2MwasZJG+Wr73JBj3b7UZ2LADqk/noQKIZ2
	abPoEty/acIn1mBJYvJY768szytA/AxhezG3CVhNOJWGk0SlRMg5j1suZff4oxqpExAzVVEhyVl
	Tc0Voo2dp4orcngZIpf5cKaizD+AzB9XRLkaM2JdgZ3M2aow4UxRF0MYXg==
X-Google-Smtp-Source: AGHT+IElSoZ8SalHQQZjQTWtW0X8U3PTH+55sn5jfmyk6HGUSjVHCZyjfyjm0AvfmBvEv7DCr/VZOA==
X-Received: by 2002:a17:902:f544:b0:221:1356:10c5 with SMTP id d9443c01a7336-22db47f4dd0mr24547855ad.9.1745490342486;
        Thu, 24 Apr 2025 03:25:42 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:41 -0700 (PDT)
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
Subject: [PATCH v2 07/13] ASoC: mediatek: mt8183-afe-pcm: Support >32 bit DMA addresses
Date: Thu, 24 Apr 2025 18:25:01 +0800
Message-ID: <20250424102509.1083185-8-wenst@chromium.org>
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

The AFE DMA hardware supports up to 34 bits for DMA addresses. This is
missing from the driver and prevents reserved memory regions from
working properly when the allocated region is above the 4GB line.

Fill in the related register offsets for each DAI, and also set the
DMA mask. Also fill in the LSB end register offsets for completeness.

Fixes: a94aec035a12 ("ASoC: mediatek: mt8183: add platform driver")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index e7378bee8e50..a3c8054a434f 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -6,6 +6,7 @@
 // Author: KaiChieh Chuang <kaichieh.chuang@mediatek.com>
 
 #include <linux/delay.h>
+#include <linux/dma-mapping.h>
 #include <linux/module.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
@@ -431,6 +432,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_DL1,
 		.reg_ofs_base = AFE_DL1_BASE,
 		.reg_ofs_cur = AFE_DL1_CUR,
+		.reg_ofs_end = AFE_DL1_END,
+		.reg_ofs_base_msb = AFE_DL1_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_DL1_CUR_MSB,
+		.reg_ofs_end_msb = AFE_DL1_END_MSB,
 		.fs_reg = AFE_DAC_CON1,
 		.fs_shift = DL1_MODE_SFT,
 		.fs_maskbit = DL1_MODE_MASK,
@@ -452,6 +457,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_DL2,
 		.reg_ofs_base = AFE_DL2_BASE,
 		.reg_ofs_cur = AFE_DL2_CUR,
+		.reg_ofs_end = AFE_DL2_END,
+		.reg_ofs_base_msb = AFE_DL2_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_DL2_CUR_MSB,
+		.reg_ofs_end_msb = AFE_DL2_END_MSB,
 		.fs_reg = AFE_DAC_CON1,
 		.fs_shift = DL2_MODE_SFT,
 		.fs_maskbit = DL2_MODE_MASK,
@@ -473,6 +482,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_DL3,
 		.reg_ofs_base = AFE_DL3_BASE,
 		.reg_ofs_cur = AFE_DL3_CUR,
+		.reg_ofs_end = AFE_DL3_END,
+		.reg_ofs_base_msb = AFE_DL3_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_DL3_CUR_MSB,
+		.reg_ofs_end_msb = AFE_DL3_END_MSB,
 		.fs_reg = AFE_DAC_CON2,
 		.fs_shift = DL3_MODE_SFT,
 		.fs_maskbit = DL3_MODE_MASK,
@@ -494,6 +507,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_VUL2,
 		.reg_ofs_base = AFE_VUL2_BASE,
 		.reg_ofs_cur = AFE_VUL2_CUR,
+		.reg_ofs_end = AFE_VUL2_END,
+		.reg_ofs_base_msb = AFE_VUL2_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_VUL2_CUR_MSB,
+		.reg_ofs_end_msb = AFE_VUL2_END_MSB,
 		.fs_reg = AFE_DAC_CON2,
 		.fs_shift = VUL2_MODE_SFT,
 		.fs_maskbit = VUL2_MODE_MASK,
@@ -515,6 +532,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_AWB,
 		.reg_ofs_base = AFE_AWB_BASE,
 		.reg_ofs_cur = AFE_AWB_CUR,
+		.reg_ofs_end = AFE_AWB_END,
+		.reg_ofs_base_msb = AFE_AWB_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_AWB_CUR_MSB,
+		.reg_ofs_end_msb = AFE_AWB_END_MSB,
 		.fs_reg = AFE_DAC_CON1,
 		.fs_shift = AWB_MODE_SFT,
 		.fs_maskbit = AWB_MODE_MASK,
@@ -536,6 +557,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_AWB2,
 		.reg_ofs_base = AFE_AWB2_BASE,
 		.reg_ofs_cur = AFE_AWB2_CUR,
+		.reg_ofs_end = AFE_AWB2_END,
+		.reg_ofs_base_msb = AFE_AWB2_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_AWB2_CUR_MSB,
+		.reg_ofs_end_msb = AFE_AWB2_END_MSB,
 		.fs_reg = AFE_DAC_CON2,
 		.fs_shift = AWB2_MODE_SFT,
 		.fs_maskbit = AWB2_MODE_MASK,
@@ -557,6 +582,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_VUL12,
 		.reg_ofs_base = AFE_VUL_D2_BASE,
 		.reg_ofs_cur = AFE_VUL_D2_CUR,
+		.reg_ofs_end = AFE_VUL_D2_END,
+		.reg_ofs_base_msb = AFE_VUL_D2_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_VUL_D2_CUR_MSB,
+		.reg_ofs_end_msb = AFE_VUL_D2_END_MSB,
 		.fs_reg = AFE_DAC_CON0,
 		.fs_shift = VUL12_MODE_SFT,
 		.fs_maskbit = VUL12_MODE_MASK,
@@ -578,6 +607,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_MOD_DAI,
 		.reg_ofs_base = AFE_MOD_DAI_BASE,
 		.reg_ofs_cur = AFE_MOD_DAI_CUR,
+		.reg_ofs_end = AFE_MOD_DAI_END,
+		.reg_ofs_base_msb = AFE_MOD_DAI_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_MOD_DAI_CUR_MSB,
+		.reg_ofs_end_msb = AFE_MOD_DAI_END_MSB,
 		.fs_reg = AFE_DAC_CON1,
 		.fs_shift = MOD_DAI_MODE_SFT,
 		.fs_maskbit = MOD_DAI_MODE_MASK,
@@ -599,6 +632,10 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.id = MT8183_MEMIF_HDMI,
 		.reg_ofs_base = AFE_HDMI_OUT_BASE,
 		.reg_ofs_cur = AFE_HDMI_OUT_CUR,
+		.reg_ofs_end = AFE_HDMI_OUT_END,
+		.reg_ofs_base_msb = AFE_HDMI_OUT_BASE_MSB,
+		.reg_ofs_cur_msb = AFE_HDMI_OUT_CUR_MSB,
+		.reg_ofs_end_msb = AFE_HDMI_OUT_END_MSB,
 		.fs_reg = -1,
 		.fs_shift = -1,
 		.fs_maskbit = -1,
@@ -1081,6 +1118,10 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	struct reset_control *rstc;
 	int i, irq_id, ret;
 
+	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(34));
+	if (ret)
+		return ret;
+
 	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
 	if (!afe)
 		return -ENOMEM;
-- 
2.49.0.805.g082f7c87e0-goog


