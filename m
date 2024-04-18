Return-Path: <devicetree+bounces-60619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 936648A9CC1
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44161287B81
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1502C16F85A;
	Thu, 18 Apr 2024 14:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wMVdYQ2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F077116F835
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713449855; cv=none; b=giuFJxh1eAwJn0btjqc/4Xxz+a2m9G3iEfZR5dSEZkiPIvWZ+GTZtoca+W931g49GBKcIyozEJkNP/6tFr9XsDBzCDCTWr6h2cTcBM4dQozy7VPFIEJsdLcDNXEk3xowdS+Y46rCChXSkdqsww08GFik0ySAwyfqW/74SXn3PcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713449855; c=relaxed/simple;
	bh=2MnuLxaHZbaJPVARTKFt1rzwpEZuIuXZwcM1ZfvOkrE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yl+ZEIw3/Nnnpcahn8dWbGISOJpYd7oGHE2JN2Pgv3TOSH2V8Du5rkEokv4etd+Dk1dWTkTjVllIpgE0rjvKgA1D9U5Yg9Uszo7njp/Gz3r0kubRsGR+UXtndYRfEqQbpM8ntbnjicRFqzVqOqyrDnQRkbOB+Pkcn/nmYpXW4ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wMVdYQ2B; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41551639550so6571435e9.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 07:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713449851; x=1714054651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFmw2QUwgoo6nZ5hxL4W4XLY0gvCpX+AxZ6V2ssaQtQ=;
        b=wMVdYQ2BkdB4DxIdK1YpFDp5lXClN+xfQjtQLVGrHYxAFmNMFDhbzCjvQUUfBPLW1I
         okABs5PV5cxgHimp2gsLHZLz2m7D3CfU4/ORwfeRK6evTv6+EZHk+jqS9IMQvckUih7e
         YoL1y6NFOqCStRlLGyebZ67jQJucix/igORPAtFIclPeIesoUxmLWMyjuJzsDWkRZWTH
         nAjSnissmLvL/qcjwyKrdhaY1QUP2rnXHIo02GJa3GDFvQZuRFmJesmU38ftkwBDjPHK
         4oOKDWxmg25qRTXYHI1/BoJzFA6u35XICYz+8HlyhXJ34X7koJGA37hbMFZmqdNWsa+e
         UdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713449851; x=1714054651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFmw2QUwgoo6nZ5hxL4W4XLY0gvCpX+AxZ6V2ssaQtQ=;
        b=Ff+aZINPSVYP0Rmtc8a6vV4IG3Wjc+aFFRIxiEltkRh2gcwko0pIy67i8K8s68wxqP
         o8xGzfnHupAhQYTDpAHea1qKpRhqgEwOi9RmWmZQG4j/+4NC3jtj2wRlj7o0FOKAeA/W
         YexRACcLnJSr3oc1fYs08R4ENWLZOr+5hS10I4s9hrtMPC2f++2h12fSloYFI79Zfg1v
         ISXvX0tnZ14/bA4fhyejz17lrPeC7IJgt17w6Jx/My+8fRiaSg9B7cr5RrkVdBf5PxH5
         ZOYC5u5KobiFRxWZ/HbLzALnTNT/nY3MUisLx5JNiGbSnyolyhs0XXLTFMev63m9SYOl
         NU5w==
X-Forwarded-Encrypted: i=1; AJvYcCV4g5DspKYWV7J6L3tmWHzatAH5AI5h19gwWcz5nGKbfDezzUiwOpiVCRwaz5brhkFwj3OHxXU5+yx5mmbS9aK9r84KBtzSV521Jg==
X-Gm-Message-State: AOJu0YxLKLYIdzzWdxWyhO8PAy6tOxC9YABCTLyQ9AAWIDyUPp0lg7ZC
	+IKudC3IBwS7t5mWCuSWCZqyKmtlD64AmDnYGRzYWJmK7xy/GMpzJYEYwjEd0pM=
X-Google-Smtp-Source: AGHT+IHtNCO0sT/PuF83nF5pCjl0HM21KlAZ3i4WM1ZCheFdqhUBy0/ydJhAL6oh54QPdztAbJgG4Q==
X-Received: by 2002:a05:600c:45d0:b0:416:902e:51ac with SMTP id s16-20020a05600c45d000b00416902e51acmr2889189wmo.39.1713449851402;
        Thu, 18 Apr 2024 07:17:31 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i9-20020a05600c354900b004180c6a26b4sm6267510wmq.1.2024.04.18.07.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 07:17:30 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 18 Apr 2024 16:17:01 +0200
Subject: [PATCH v3 13/17] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v3-13-53388f3ed34b@baylibre.com>
References: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
In-Reply-To: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=2MnuLxaHZbaJPVARTKFt1rzwpEZuIuXZwcM1ZfvOkrE=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmIStjyt1Phgb317q5nDWLxlAExPeDpj0mMTjN61F/
 BDu61hiJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZiErYwAKCRArRkmdfjHURaLPEA
 DD28UlYK6wanAEBb+/8HdIb9cDlvSkVu3mDiWADx1o/swuPpU9jbjySikAfXKlWCxzTgzT6lutDaj4
 vIwXpt9XbpZrbPOG+Tget6ptvQdD56G/OEcCbmm1YcvFVbkzXPdJ3vVQFPqVXskpbigxF5lnTntCAa
 FJQBnbFS30JMcTpBUpIq4SqW3JtxAioMKYcOfbpuv0JJjDgMImsgZ2NqsTPUUgXkgHU9pqUicDNziB
 tACcMWlHs8PPuZS6x2RqA7e0/EfBHs34gTsyTqkpHBRT73N831a+A5oE9kND+dcMxjwlmefeXMOww6
 4gQ1U2T7DSkeS9yTVYR8AsbEM2cBnbhFXUw2c8v3kCwjdrNxllliUSuR1dZnhNMUbd3rmtslBJPuIn
 PEUcsmJemYKuYCBtvx1P/a46vhGIOLSpJnjVsfnpC7jR7i/JQnirmYHsrdfDs2mG/tXihgWSq+4pMq
 7dyFGV0egvh21DBo2c4YFPzgoOhrGzEqsqStXbC4VLcRpewhHVww3ZPEqrx+WEby4Cyxl/W/VCSRnU
 rYMfrRhVr8zR2tUwjXad+n2EMdD7qeI/xHaJHhfjOEkhi2VDhj0pA9qUpXhWYd4XxabIlQYtF0gP2+
 44HrHaDC6UD1n4NL298nlac7LHpz0tj5kGjXtmURjGBcutBuiak9qpaBctZw==
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
index 9501f4019199..b3f33d4d3d5c 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -642,6 +642,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_config_vdo_timing(dsi);
 	mtk_dsi_set_interrupt_enable(dsi);
 
+	dsi->lanes_ready = false;
+
 	return 0;
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);

-- 
2.25.1


