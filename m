Return-Path: <devicetree+bounces-137000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54582A07378
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E987A188068A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5D0216E00;
	Thu,  9 Jan 2025 10:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FZns/Rt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64FD215F5B
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419085; cv=none; b=pmUqUDSGS3bm2CCm72PVklyv140wt+hgU9sPLjPvoY7tv9cczAiRxb8SQsF9NL8pTmMca1XATQNGXTsl3vts3y6F/xar6cnK2pZgEFHLdSTEcm0Q52gSbow/tTCg2Sx9d+bvMwJMtXcdVwRXPJUmQ9RbcK5QIPIGl8h4nNkJVbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419085; c=relaxed/simple;
	bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rEEPtD4AC089qUJnQd0AGHjYJVAtTDkl8mTWRFYRjyY7cYr1UveTT0FCeQNnGDqzXCUicC6ww3EJRPrbPC/PnnwXw8l7Qm/BTD6gAT/mOB4pwls2VVuvK5oxJBu1Wegq7EIvR33Zztd/QbKuebcrdbXCvXN/FPuMqYHl7xgK7CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FZns/Rt8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436249df846so5626805e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419080; x=1737023880; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=FZns/Rt8mUrJXwVUzbyciWpaS6Bydj6mK7kSVU2LO/76PdYc+cBW9rsUqX88QoJAMZ
         LWJzIYTeM4Qn6AVEBt6gxhU+4Q+TDN4k0qFplSXqurbz0YuN+ec/YCB/JVeZdQkjvadX
         ksk78mT/1SVcjMw147tDp8fOowC0T6JBT/3nwmeypyUDX9omOS2k4WPabC2CE/Kp8eRT
         P9zWhOKYCJnaUKMTfXI0d4qgVE/tKrvloJZT0nPOe33udAs4sPR+Lk5pcSFBug8w8JZt
         hquITNbltFBB0uA7A3DeTj4B9vr2aw6TmJpsmk1GaEHMJnV7JOq5v/1U7NrjvxKV6HJz
         VZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419080; x=1737023880;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=vF9LCCGJWUVKcA0LkOBe9/32gv6sFHzTVL98yuhRr6sxke+yi5pXWVoHRNIuTqDEJx
         h9eMybxrlFwGeF5L5lM30kuKWmMX0Pjv/W4Kw3MPuAzlAxqDjX/UWY1wQYG0tcSDBDx+
         wVpg8CC9t78oVBLodyMNY0Xia/AD/tZYDS4PUBGa+KONWKiTX+NHUERBCxBK5NPxbOv4
         CWvUALBtNNCaqOcjR9yXnoSeoBQ+YzAW800ImI8791AvJWFExG8EVPhXmHkZ8Psz5z3S
         qJcLgdv9cOsZ4fiQNp81PGAJ3agmGQMrOY83XM6LqEwUd41BMJLk7LGS2pP1wAqPAaGo
         U4OA==
X-Forwarded-Encrypted: i=1; AJvYcCVyRk2tiCoxKx9oEnpXUrZLIelFdau9+ojopdbDcKbEXHqST/VyeG8T/XQwlEhbdu2G21zGjHV1eO9T@vger.kernel.org
X-Gm-Message-State: AOJu0YxDOAM7hy2yLRh/W9IK9zYm177fWugMaP8/9bmzo1K4DTaPkZtk
	/eIMGHEoAZgng9xmzH5emsgb63hwwTf5ubhhNq4bJL0f1Y6AdS92D3/jmGcj7J0=
X-Gm-Gg: ASbGnct719DnRNzFdeGdhLKg5u4aAV6pvrr7/vFjsrsMp6fsWiDgNlnTGJYCBhXRvn3
	eD6xnrV6eKDVsXp3KpQaUAPb4p8VPOX1Z02rrlrhkJNZ/h6NiTQLv9jn62NCyDELpc86s7AC2yx
	innnJi1xrAwWBXpbowCxaRCfE4DYzik5rfc9ipZ2vbldz+ersiMrEnyB8SpOnzFXTEl5h/oW63D
	xHU52LC8SjNPH4XnSDxflLFGdF+atub0VI94MJzcg13AuhVpSP4IoMFcEo=
X-Google-Smtp-Source: AGHT+IFqrF9VBaIGIQv342u8nnxcL3grxMu66H5YdF4aKnHXSKZ8sqOEG/h96wNqmjPS/6bRF8WYeA==
X-Received: by 2002:a05:600c:a44:b0:434:a852:ba6d with SMTP id 5b1f17b1804b1-436e2692d98mr53720915e9.9.1736419080138;
        Thu, 09 Jan 2025 02:38:00 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:37:59 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 09 Jan 2025 11:37:55 +0100
Subject: [PATCH v6 2/6] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v6-2-c6af4f34f4d8@baylibre.com>
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
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDwdONFcg4NoVECip2enCTYPobmCH1FlW7pj0f
 vkaE7iSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURSPtD/
 4w4jm96OBg+7I4Hu11Al/9Y0xh9+Oh3kbilSLdnrom4hY3QZ4s7zBD3cCsVUNkid0FLAfkhsMpd4eD
 phj+a50KyeJxdLZ2W9mahlJrExdjQhYo1QuiMNzOwvUhb0setLby8V6aFbs6qcjiHddZZh19gF2OL5
 IJwG0L1WBP48ANNIByya4m067yxpJr+JmuDQbkRVFtWB9oXwzfAkL62i2nYaiyA6tWQNL/q12MGydn
 cNcFzOWckYcGQWzG6MAM1XFekhLlrawheg/eYFMYrHD+gFX9cCU35y0+Go2MnFzYW4y7llOcVjwBOP
 vlLLQFuys/YltGsZ+2K/Mw2hrUO9PFHdQWGvnRfIslGH6jIFVcH1nJ+/FhHrpC6mAc9b/VlTjxjMTF
 5zx0MZ8x4SKVvYp5YpnmmAaryXjax2HWnGX355TxNOb8JQLf0Su+Cb0ZbckN3+9FpOqwmTg2Ga0PbU
 k6uL0C7UZCbj9okzz1bFSMvAlWXvoQn0EicsTdbmucSljHbw4R7nCGRr+h4d/fYL1dkMpVvR5+3F7T
 GaTnq5/w5LziPJ+FE1wRHcGfYi9iTS/vNVfuFKgGNRpBKJBJFnsyNSU1bGpzHXmktkJbLimW1NpxEY
 pxQvTazZz+jDn8BL55TiOGLwoUJr8eBRA2Ioyd7Z2ctupdak/5s9qnWE66lg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Currently, mtk_dsi_lane_ready (which setup the DSI lane) is triggered
before mtk_dsi_poweron. lanes_ready flag toggle to true during
mtk_dsi_lane_ready function, and the DSI module is set up during
mtk_dsi_poweron.

Later, during panel driver init, mtk_dsi_lane_ready is triggered but does
nothing because lanes are considered ready. Unfortunately, when the panel
driver try to communicate, the DSI returns a timeout.

The solution found here is to put lanes_ready flag to false after the DSI
module setup into mtk_dsi_poweron to init the DSI lanes after the power /
setup of the DSI module.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index e61b9bc68e9a..dcf0d93881b5 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -724,6 +724,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_config_vdo_timing(dsi);
 	mtk_dsi_set_interrupt_enable(dsi);
 
+	dsi->lanes_ready = false;
+
 	return 0;
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);

-- 
2.25.1


