Return-Path: <devicetree+bounces-136756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E8BA06183
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49D9F1887A30
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69EEE1FFC50;
	Wed,  8 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ioTuLL2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692FA1FF7B8
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352953; cv=none; b=mGUS4zwzn8sHGxaaddvADf5Ke/rFwJyGcTXt1Wpa09sY6LxgxPu/0QCnkrm3+8a524bbH3LBnQSj6lwkMSPXok6C+qfcW76gggdm3EWmd0vIGzxoj0D+VC1e5WPOVG/yeTDQS6A+aJbQCsC4WUD28Mmlav81YLqGTFTSvKD8E+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352953; c=relaxed/simple;
	bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OZ+MyxldNgFYhRUDpd3g/mb/7uv8Q9oq9B4U5LAqYNRXfWF01J7KVKTPStdq926c2oFzuN2kfRY6+NuGJIeEGKn1zFgoA/0H0Uh2r4xTX+AukwVApYM6JMxmBUw45/brLMvHIOKr1UFWUAL4SZ8FZqkQyk2ecGWdl3ubNwlb60Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ioTuLL2R; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso113395e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352950; x=1736957750; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=ioTuLL2Rm9LHL7wQG9zYXlJWIL8v3r6WBZ8jF8IU2FOFKfVnX0SG9eyG4wxeo6oDKP
         QpcQg8AMtejGdLk1FBDS2h6vbsC8uacK8uQWI7OPICWJLbIHX9Fw0Iae6rKFeFQa7Ikr
         +rqSOa5ykuCaYVpyS/hu0UiOr/0z3t+V1FN3t4KSeiYilml+FhHZdDyYQm7yu91O59DO
         aryBp+o3onAnDXJbSTVg4Qjf3rQBGYWsN4+mcYKPt6582V5bz5nLlcg3jUqIuNp3McOb
         zuAFTcf8762zyotr7UGnL3YI0b3uwCJhrfAi1SxU1WQqNIxBUPJv2aziU22QJDaFUK9G
         +2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352950; x=1736957750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy/DbTIkkOlFt9RUb5dJSds3N2C+4xTIp3gr3Wl8Gls=;
        b=tTU+uDP/JHzgDQ5hYx8Xurh/jzn35wc0Un19ISpEiuKCsQvNLXWs2mRNB7c3tv7g6u
         9upjDKICg9fXWvZrOKm3vTz5N1/mztt0XtpOKsrkArjz/mVnuHEbClsyqbMsjFzGC6l2
         +i3vHMxiauxLjK2VCvfkEntpipmhxNG7Rx2OBfMB8c4G63TTTfir3vIJJrMYPacexJPm
         /dYGOVi+j6U2nnEIDwhBKMUfr/C/sUl2S+h3jU53T3gVspXmYSKIuJURkP7hcs7a+2c0
         2ueMWW2k79mwd9Rorc3eT/KR3nu0M1Xx+snOY4qCDSZi9Mbyb20Dhd+sxGYJ8vW6NoeN
         B82w==
X-Forwarded-Encrypted: i=1; AJvYcCVtXC9RGRaycHBOvf32Jn56GxRrG8wHHG70hvOtLAc3kEaP9EtV4xyv4J4eOCr9DVrp35RA3TzGtx8m@vger.kernel.org
X-Gm-Message-State: AOJu0YyXOVe54YAiRTbbobXaGH7hPy+JxiFRY98R7v2dbDyH9ab5aLCA
	Mm52CsWKFRMImfDB3517OeXsKNO91DjuLcDWlP2nC4iAXcSXHgNtoDeIHSc9tzc=
X-Gm-Gg: ASbGncvn/6V3LfZH+8hg0kEvh5/2kSM58xoXubEZabCzo3gjOTCkUJKNL2pZUDO+DNb
	K5H3PrEY3JJubIpt/ifHbjrmZIXp4w8JrPMO8qADQuIgeEqXtIH84UmBSpUvzJHqHSWhTRUIJT/
	Aycb/BKe42c9PeIK59RabduJperbuMm0d96DCRFEgZedvCJRuhDxFo3HWhJVtdX+HJeufIXuue6
	oaPnuIegnh6zw9WL2DRyReeRcEDj18Kh1TCT8YFbCYzNWz6xaxTGx/RZnzn
X-Google-Smtp-Source: AGHT+IErwM3j92JVYdrvJX3rbay8OfkvXx94igFMozvvvB4mQLpq0RzpMVuPEGWSZVlYGy9bvneCfQ==
X-Received: by 2002:a05:600c:1d9c:b0:436:1af4:5e07 with SMTP id 5b1f17b1804b1-436e2696d35mr27681225e9.1.1736352949654;
        Wed, 08 Jan 2025 08:15:49 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:49 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 08 Jan 2025 17:15:44 +0100
Subject: [PATCH v5 2/7] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-2-3905f1e4b835@baylibre.com>
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
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Yn0yDiaGCUYQbX+kBDNWi7Wqy2+4x3TU5RubErw6Doo=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSx5htXrZ1ekJrvaqOwSRFlMwld/dEfa0QLcinc
 YbzjdD6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksQAKCRArRkmdfjHURXnkD/
 4+h/AOARecYGq4oShtmb2NW0jX93mfDG2xklUJT2F6zBdbeNzF6+Hf9vpfH4IpJ8qCOhzaDAiccTsL
 n/F91FRgA3NhV9vLIweMBfpouNgCAJqDxu2pVQ8JyFArTbNkI6MaA6tXhjHbSFdkiZkH8YSC72VtwM
 bodY/gV06hSkUUimxNUXCx4v1YuSI8QENLLVyMHqubbw2PAm0ROJpZKngxxzQF9Rq9bqENCWWiJNRY
 Ytvo7Bx4FGwzHo57pskqyQ1mAmfje/TeJfv7GuFhUpZ61PaoWaCK0/2ewIrMg9c62/X2ZOR3VY1ci/
 /+m09ncl6oqERlR2m9zs7k7q9b9jHAEVeeKaCcHuSjYP9kRyfI9jygs7XOJCnpMlcLDLNDRra8gR5X
 FvhyaNTLwPHtRkcueY6llSeCx569I6CL3vY6Kctoc76+wJN/ZYGXnIRbu977CDV4r/PvTP9njiTJ84
 ADMCGK3XcaIRppY8TNSWvsCyP0JBEQSt8lWNXtGem2TkJJePfcXNdp8Dca76q9L7/t6XheWKjOl/CT
 eO3iTUH5b0ZhjfF7Vbbq8kHA7F82w79IHNou2cAvQaKO3Yx6ExoIWkcvl76WWSaY+eikcL3TgEVN2J
 keKvH3T/7q8YjxVodQBfIsjyfX9ikYrJJ/UquoQr3Hl0ZXEosxA3at8BhiRA==
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


