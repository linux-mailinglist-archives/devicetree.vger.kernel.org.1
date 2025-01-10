Return-Path: <devicetree+bounces-137467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1670EA0920A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:32:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A1DD165107
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0237F20FA99;
	Fri, 10 Jan 2025 13:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="m5Vx8u2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76EA20E701
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515888; cv=none; b=aCayg5hKj72FbmbIuY0dyBmBzQq4YQ6nGRWFOuZVFH6IMsWgg5+NEF9ytkTZmAFt9wDpQtgCBK2PPAhD4G+6cXrFaB59GkUf08isxrOupzriNixA0DZsMAqh1MTJLfEJU0VfMBHWKsRdg20GWPsET2EjwY4Va/6AtBj4TlE8k9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515888; c=relaxed/simple;
	bh=27bElByFZ0xMrSU7/Zvj6pVqqNy308V3/BYUONyW0CQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GRMThTqQk5hPlExXPnqfrEXfWjd1u4njYGlNYzuqGJz1oVgXAotXMgDGhgQfSUJ7bpJGmhD6+TLDo3AVuWGo0uv3KhbEky/TWEGNiw//MEVo4VzxhLosNDQEp/Zccov7Yoh0KTVH7Vka8syKTIX/2kHQXZ/OtajGmt7Vz48bvso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=m5Vx8u2X; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43618283d48so15599085e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515885; x=1737120685; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=m5Vx8u2X4lQklItNlqZwJLrBRf3SlYXumiGaoZ/zCHMBZadkwpuUfYZfoNUOBWhHRm
         x7Zsmk+dm2p0n7gJT0Zd3pV3Z3ogfigoPoGPDOoLyk85xwVVrh/Aw98NxF3oQuieXfc4
         EuIAhFKp9u4HL1bIcq69JMHXIXja/jWs3BtTWpB60f8/W3UKM2pP6z2FwOUpCZOVzbUB
         Q4NaOtq+SZXtQEgxGUHzGdelB178PPZQfG9XnwG9pYQfrqrYXlx4P7wOzwOpEridG28Q
         cI6I6EKysksBAoOcGIrV3IGl3EgHmkz1isH29AalRpWl07VxtAOyKhqTRiX0Y9HAFpqZ
         +iKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515885; x=1737120685;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=BDJj/elVg4GwWMCI6NFr982AhRnCd68D6/pQXsnt370Hf2xvmyArLTdbOmae3GNHqd
         x1lY09sovwxVFZIO4o6WkxhHl8x5b51zjE4kOCD6hCtalftIOL1QUgJD/MAW2eGbjVD9
         o1Wm/LONvJPJtFUNZZ+MZfpuLRMjy+0JFSGNFmjXpcqt4Adm6djdcbsshcuRdioj16QN
         jQpjXb6hKNQ9jq7DZuXNLRqzIshFnmZd7QmSEEuJNKICdBilIovAm8MPUcpKns5VSS+V
         5HfikoTuAMkiEHIJHWjun2d+wokld4//qgRkuSR4JAZ/r/YY2T3T03gcB4lcX04kteBS
         J5jw==
X-Forwarded-Encrypted: i=1; AJvYcCVy6PFeKtojeKbQosbtoG2NMXKRdOiz9F0/paEv3vA2gTpQC4KXeT5qTpGrrPlGK34D6pBAyO5VPP2r@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn0oQPy/729F8Pq5S38x27ROOMYPXeBjQTn8mDejyIKRd3i049
	PMPteZrNLSdUmpmGAp2DpcRRZzb7w35V5ROhMpx78/r7IwHGzm+ygOkicHkjm+s=
X-Gm-Gg: ASbGncsLtrrBv4MG6n8JD9hVeAby9cvQIaD9tFtnM9axLFv2bJh1HjEMm3eqbO3DE5x
	evyzZf9TzKmg40O6nN3/E8Gxeblyr6BsmDON+wxIwMkOrNcLDW/ZXzwsWzr2MPCeg+Sl+JDiGOO
	BTzFsYBTviqSViP0We5cs0W+/iqwd7HwWalYdXJ45vV0B89MjDKU+grxPw+F93GKP92cGCZrKLJ
	WmlQb0A8oWtHdkRWoXkLmIlhTRXedswMdm1XLckM9LyluejdCotoATeJ9i2
X-Google-Smtp-Source: AGHT+IFx2GC2yPIa0jo0uLSF3wUAfCDb+jHxkY/Jz5/qgDxr5WT9ZW2q5ZSeDjEs2iELnpyG7PPdYw==
X-Received: by 2002:a5d:64ad:0:b0:385:e67d:9e0 with SMTP id ffacd0b85a97d-38a8730d521mr9053765f8f.29.1736515885138;
        Fri, 10 Jan 2025 05:31:25 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:24 -0800 (PST)
From: amergnat@baylibre.com
Date: Fri, 10 Jan 2025 14:31:13 +0100
Subject: [PATCH v7 3/6] drm/mediatek: add MT8365 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v7-3-6703f3e26831@baylibre.com>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
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
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEn6dIUV44F8BjerVW+RaDvB4bQEz+FY+SuSLdC
 zThnaqCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURR7ND/
 9QHUK4fkSZ0JuFIq8kAo9pXcFTRKLN5YRBM6U51ybQaouZrB7uPYUqkPmuHlzNymD7+e1nPAhsjsVA
 fa2fNmQiGduEJhPZZJVQWDOfwizbo7Blgzat5TE946k6xnyscmUl/86A0IcU0T2CaqDN+64RIXbeOh
 tVe4RUUzBFDtrxcOiNUkPTYW6ZeM5t4fyx/Yl+aLItJrrTBsmyne18s3duvddS/5eF/XysLTuDedLN
 JmTG/tFPeUsnaZZkNrkKNvmtvc3bqKKDt+pfcVBsxVlNxcBnw7lSw2L9IHZ1J+So44qRXKJyYitGsP
 epvfvPsHkswsK5VO+hr/K5kHczfxohSGIukWZSJ75GqYqKSM4jDUZWAKo/vQAWfuWG+F206/Jda+wi
 +Gx2TrbfaX2VSSGVtXJc3Va/GDFWFcxA1k3CRdfMklYYmhMLT98eLpSYxY6xT/zXWFHXFSOHtttUkX
 b8vIYKwbVIPi+AO6YUFa5pbFPGeM6z2As/FwyE82JReMRPZpCiVwqro5fZYs8RIZbSYAwZBxMlajcI
 9oZln4Ep0IanTgFreC5xAChZmTxAT07/WJ+Q589eASkEAsPACxQDYDC2vZkUnsYt9Sd6pROxh9P8xf
 RxXuegHE62J2LoezUNJ+7KLyzCwJ1wKDwgFcfeY6c2pPfREbqG+DhICutwKA==
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


