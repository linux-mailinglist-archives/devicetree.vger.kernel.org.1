Return-Path: <devicetree+bounces-68733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1D58CD2C4
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9341D1F21422
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F0115098F;
	Thu, 23 May 2024 12:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1emdOe7M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5B414F9DA
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468585; cv=none; b=HpndKjJx0QrNs9AW8bTnuXHR27btRyfoVp5UsLPwpRTR0aQ+z6FzE3T6Deqigsp6PgchND0Q6oc4wNKeGAjo4gf91fWhYUZYB4Dj92d3+wD+YmkzI/1WB88ZkKRp7HC2bn/HerLuBz+Pw5ElgJ+H7vJSoKSbvPEbu+H5Fh6UZMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468585; c=relaxed/simple;
	bh=xvhfA+3alhUTWtLN0sSLdcw9i9/hFws1SfD/85pmVJs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BfC0xIsOlxmX7Xhi8f5mLAZ/mtzMj1t/eNMqhAiunMUGSuOYtpGx9w+OtCuslFl+u8dyaBnwRnuooezsj531Fg3c7IvXMTa+SO3zNj18zRuIfnFJcpvwBuqrz7sVALGfoTkL/2k0UYIBstM0aZlP05ZrvSkO3BaQHfN6knP60hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1emdOe7M; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34f0e55787aso5018144f8f.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468582; x=1717073382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oV7UBZ9+FOaGpy1Hnl2xMvcmGJrrQkTOfJMy4GT33U0=;
        b=1emdOe7MKF3y8+Nly/HJQkCGkeXnpm/A+QN3AC59P53cfWj6dEyVcDYFCivfz09dh8
         FXAolpxR2celuoRc/ji1h4YpCOZFFtdmPMovBg+tV2gwCYIl8fRiulpjG8CQaJuDfj2R
         GufyTVucdGXeK/cdkcHSLlli7bDqbo98LQIFJxx76sJ3cAcaSNtYTsrf3Vvr1gSPSvcw
         NBrgHXBeU3P9GQ8Cb0wP342wMSAync6wKHVuZlbRStBqncdPcl6CfbUV7hrA3rtLD0ZP
         X0n0BpcSTQB3+i6pzg5MtgLUSnkG5zc5Q1e7yfkn0G4hJaQJcjuR2+0qDxhlKZ6/Tr4I
         vIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468582; x=1717073382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oV7UBZ9+FOaGpy1Hnl2xMvcmGJrrQkTOfJMy4GT33U0=;
        b=aJSgXWZWE3tV0uka2Gc2/xjaakEVLN7EJIun3ZyWxSMpTmkXTtNmBXYIWIapEg/YwB
         DO8nxvRMWD4QDXxFCa5gg6Z5+jnRcqgaCSw50hAUEbha9+JnFNr1G/x8P3zJQwfjT8Q7
         HPMaQwWi9OJ/t2BqZVWy/0sdWP6IfdnKKkxmJPPB5gc3aL6+JniYaMsFHfi0MDrdPj/b
         dXnKrH2f71rliO5OtMcBs6a5gMNpGt10a9JL9YICrENHy0TPKeoRXrJVtkpcZbZCvrT9
         Gok06nInFoQWKACIZGQxEzymu/ENQaRyEkuMiqEiFLLUdQJkQffioyFYnP6LyX9O23Oj
         WTIg==
X-Forwarded-Encrypted: i=1; AJvYcCVGrH0kkZnFDyhPX2p2zFvFRDCZzjK4rZed6YdaoxMMCHtnF1L8EvtNyZjptZGaNwHPfAi+CKqKLAnYftXCT2ydGQomBTHxqjVRMw==
X-Gm-Message-State: AOJu0YzmIJ9vu1IQ6eRA8Rt9X2HxjGBszTv8t4qWffN2WDex0YiSSqNf
	BdY6tMVddmqun36URXqlzJoY1KCRoO1iaMypLEIJbXljcyMsxQHAU8LLFy4BYJk=
X-Google-Smtp-Source: AGHT+IHznoqV8aiJ8ieyvNlccfqDAnlHarASle5JQ78h8I9hJnV/p+wU3L9SVwzX72hcSRNDfLxJhA==
X-Received: by 2002:adf:cd11:0:b0:354:f44d:a01b with SMTP id ffacd0b85a97d-354f44da262mr2654995f8f.15.1716468582558;
        Thu, 23 May 2024 05:49:42 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:42 -0700 (PDT)
From: amergnat@baylibre.com
Date: Thu, 23 May 2024 14:49:25 +0200
Subject: [PATCH v4 12/15] drm/mediatek: add MT8365 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-12-ed82eb168fb1@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
In-Reply-To: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1708; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=T02ZuZj0ijmxlVVq8ULLWlzrN07sh07XViJUCnaN+hM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTmiIN+hH5sjsyB9OiMxaQ+PFDyvdz2GQAG3OY
 CSOzjz6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURUisEA
 Cc6FfVzLDHM6GIBiFrX5C8yWAmpB0sfQBWzm2/LiHReGOMzvEj84wrDpQJRaAHErRiZBkTOVNdb8HE
 z+CGacZIQhgv9SbUW3xZipNp/2egvC03hrEzaOmQPN9btFE0hSyy2vnM+C6oNN/NpYgAQdFXk1CNyM
 Kf0xyyH5QH7L8WRbapNjD8A83yMh2cZvoGb7Q2vsCfXWQpK1FwMhi2m4busv8/QNxNn95jSnZKFPHC
 Iqrfq5kV+wkCmSGBhD3/VyrESQlissctczNW0FbMrhk4mMuWYOMUdr+jSpQuw9LsuquvbbYYpBvbdQ
 8Itrnr9R0jaFg2o2LCZ70PuferPP7bBi3BcJjbevQ+H0+wWU8B2MmB0Qm4nvhW6JijGLSS3RRjelak
 gjB8D9PsgqllVBW7ZKiEqwggDK/LCSUmduby2ppRsrCkeSEqmN1N9Dd9zSDbAhscXNZkxKoiJxaAc+
 qn5/l2e1pYlPhmpm8z3+STuZE0OVZrQYSK8RsGHCGDmogWOLpQXKV8mOeThvPc8fiT4eH+QQN+HFL5
 iSVPE+L/1Zr3TpF20aZB9aUESBilPV+qbtUEY+6f2GGjWMhKBpEWRVFL3nUGjOlIlmlFfdflvEP0Ey
 49OgjwmNz5P82LcR+net2PCW5fGe+fHv+3Fe12bq8/wx5L/XuDF8Wvm50Mpw==
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
index ce8f3cc6e853..e1c3281651ae 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -318,6 +318,10 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
 	.mmsys_dev_num = 2,
 };
 
+static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
+	.mmsys_dev_num = 1,
+};
+
 static const struct of_device_id mtk_drm_of_ids[] = {
 	{ .compatible = "mediatek,mt2701-mmsys",
 	  .data = &mt2701_mmsys_driver_data},
@@ -345,6 +349,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys1",
 	  .data = &mt8195_vdosys1_driver_data},
+	{ .compatible = "mediatek,mt8365-mmsys",
+	  .data = &mt8365_mmsys_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
@@ -732,6 +738,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
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


