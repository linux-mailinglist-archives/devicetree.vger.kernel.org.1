Return-Path: <devicetree+bounces-136757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F5A06186
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BAAB3A3473
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC29E200112;
	Wed,  8 Jan 2025 16:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bMfGXzxZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8F91FF7DC
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352954; cv=none; b=WPSjVs7eNgXQjKnadO5UzpMyPO+XxS5y6GzCrqcVDJMYgazI+xGvO0Edu8YaP8x4OTDTO0zeS7/lvYGFa2BJ0gmdAbn4PejCk58zOix4CJ/y7uwzLGDOWg0t9/UrqpnkyDAZeymXD9s5uufP6yKhR3vkaFawPrci5qgGTo/PH2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352954; c=relaxed/simple;
	bh=27bElByFZ0xMrSU7/Zvj6pVqqNy308V3/BYUONyW0CQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gJ0TdOyR89UjwM2fKH96eVTiX1noeXYE3bD/DNm22mI8y3dkFajuJEdAGAGN0BnIKM6a19H2+O2ljQUAgIhqKWlb5GkKMz2LpZpOPjWTfQN7kbQyB9r4H8HFQx8YibuQ6232vcPw2HCaxvnVTIg+iCjzXPLOoM6qudX5Wa1iY6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bMfGXzxZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso113635e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352951; x=1736957751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=bMfGXzxZfosyZ7i3YUQO64uxvAyPqRH1j+33qjii2+xUmibsyDTGNs/tnfc33/eyOS
         ZR6ZFuNTrBvHUbtpOk4KRaN4m95YC9jkCiuVArG8YNZDqaf8gxr0aLwOqgDvaBgS3rEf
         1Opzxep0NpBIUpINNtStC1EubeUgGLnt1jb/8/kGgqtT4prM2hBBP0/7o4oIwsSS2py6
         FhQKJl7YFg/0QlZ1fKV/aKbV0RSVWPaeqiFfDzgig7nefpyYQl2thMIrbjrqkpY32AC1
         8Txnt7KHFHbBWAdtmHNRra/ghlCbSvQoSgDsgRsn7Cc/78diKA2BdUOl2ccOa4Mndw2B
         nisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352951; x=1736957751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z//BQnV3/BLX4Mqa0cv4eDxMczGWbcxFqozmONQlohE=;
        b=Zd5pmKKfzlWo83ilBIpsFKPM4Qi6RAPqWU2grI9Zb4+CyJMZfbdPa56Vl25kft91um
         swGxvtsWrG8unatWebiBNspA9xU5E64cn5zLLoAyZmAKNdRDmEghhprWuepd0mCge8vj
         5FxkWQKrdqVC8qzNRdL/8qyL4JffH6EyVXeIeChhcPSxKU68TqvKu9AHPIgBFfhPMMzd
         WyIp7kk7ZGJFZNFIieNGkxNPIw790HGNbRpVH4l62EVeNNfE82UBvp8/jajISvwKqJWW
         ASRLPV11OfRDQYlZzA0F6WGExqbcK694E7WmLPDYGpbsBPI1YYi4SjBtbflnAs4K0dwR
         wmpA==
X-Forwarded-Encrypted: i=1; AJvYcCW4d79E1D8NLcPFGMmotlrCN0U/hFhLphkoDGABtnlObNbf1svk6emkq894OcG+ybz6xEKz6Fnp2VTT@vger.kernel.org
X-Gm-Message-State: AOJu0YwOVDx/3q+Q59CDkMPZx/NtT8/1QdmFJvye0fRAmWhxl7MpfPkJ
	iJ064Wsxy0qnl76EhB/gwNGdVJEloNNiIcDlftzWut9t0x1yjXoIlwnJSw4i/1M=
X-Gm-Gg: ASbGncvDI0HEQuO0DJB0RdJcrfhj9qYkJUqRSg/sxO03+aPphm7kdNVbxKV1EvNxhIQ
	jhYgTQEHjITFHd0ohsbQqRNOiXZicYaK3flnOAO2sxv/tqEjmhvbcrYI9FzPqgvtKxa58CmuUlN
	YBKVJygXRVMWRVDcnpJuvDQsi1y1QLWNqH89+rRZzu/Psc/da2sDvutQn9TTz2Q0wyuGcv0Pwlo
	43MJ05R38a2CPenbFtd3KcqkADbgrB+TXcxWrzjmv/CjG+mBIZaZeEqb8gH
X-Google-Smtp-Source: AGHT+IEzYCyDPtmZet9IESJnJcczVG0Tz2UFufCK02FKKCMdlBUnSYYfqsvJZPILRHP2VNY2oh9nIA==
X-Received: by 2002:a05:600c:3b91:b0:434:a802:e9b2 with SMTP id 5b1f17b1804b1-436e2696d2amr29002085e9.4.1736352950886;
        Wed, 08 Jan 2025 08:15:50 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:50 -0800 (PST)
From: amergnat@baylibre.com
Date: Wed, 08 Jan 2025 17:15:45 +0100
Subject: [PATCH v5 3/7] drm/mediatek: add MT8365 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-3-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
In-Reply-To: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
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
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSye5kt3J6GYi+bZ8GcSkKlLUWKEFFC6cY1vbKW
 7FFURcmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksgAKCRArRkmdfjHURdA4D/
 9fiHHB6Wig9ZucEqwujLgch53Y1WqqZBYFfo6+SJTqGQsJJxWsrL06N+Xh2s0Eih4DivhcJD3H3w5E
 vhNiI6SW4lRDX6kTOTkriOjx+f5tsRIBynsVgNOz5fC/roAhy7ImU0A62IX++/X21xaHz9ap56xPDn
 eZgWAgqHrQQlfWbUkOU0C+nl/x7y4a8FPt5WR4zoL5YS+BbNIYycp6+zDrDIbd6DGzGwY6jwY6muVW
 +9OGsqqZ5JPf/dTVMdmzckiZBEwNQ+h6vTaWAgecDiVrYwo9/WwNKKkwUXxFyytLulD7OsT/hrVCGk
 fsAymQJIqWOvIb0W4zQq9hsyQ0AFHW8Ysftb5WoP1ZUbSjRj9MKd7TFqt9m7KNCIyJK5JHkwPvX5gV
 aOOP7KpQmGphVNvHCZyFbqCMZIU+n5wplNAIhO9hVJs65K5ZCWm6vgVASULRYPfiBPUznGAUaKH/t0
 Cri9iX59+4+6nwmIu4pht4zfuyzuwclMd6LPPKx7J+KXJ3hn07Hl1Ov8656J6xqeoF/eNbQTI4gaX1
 Hj3jlTXUX0K9HOeHj8S3RrB/0BBBewC2bx1dmfa8nZErOgUxLsTnuh7y72F5rbVCmrPcZv3vsFsbJ2
 ySpGwkBYjXPGRZZV2QY37k73SRPyon4NdLo/fiuBV9NcOy34ce0V4vezotuw==
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


