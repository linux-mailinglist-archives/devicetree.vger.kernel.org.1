Return-Path: <devicetree+bounces-52886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D97988A502
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECC9E1F3B7CB
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9147913173E;
	Mon, 25 Mar 2024 11:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jWtycFXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B40156972
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711365002; cv=none; b=OiGv9teGuqizLgcygmQrNur2+86mG9BvS1sZj44lfsVpW/9HjTvuUGVK659oz01slJtUSj4GbhlM7LsPljkk6DTk1objDPXH3nBZZ+WRfZkn/1Z6+Reh2nOdNigG7IadryJg3rQV9YPnIh6ayogtMNsJaqeOsJ8XSMBd65e8bj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711365002; c=relaxed/simple;
	bh=IE7LBQJSwmFpro9NRvngqeq31VcV/n9f72AsydUqbws=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KSNf/E9+PhqDyxyJAMAotytneluXUW1pVtKUbF9YOXv6tUnygaxyS95/Qh/TZdlFx5LFAo9XW/tc7b+md/tYZq9w+HZyxQqiyns0O/uWg/IghfAmoLEwcxwswLI7tBsW8ksM1xSyGXjisv4DVtBPRKqhkTGujxHOQMDAQTJTB5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jWtycFXT; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a468004667aso572184266b.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364998; x=1711969798; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/kTGO29vezq1Gc7J5O9OI72ko2OnA3sM69gX9LY6c8Y=;
        b=jWtycFXTyi34MnZP/tXHD0kcYVD8pw3CgtnQd8+PqcjdqYEvb5rn69OEz7t5URqlX4
         bPWNeJtScSuKqdXv/zBP7OZTuehsz+FLjiJCBh5nmmfzRRZl9csbPjtrq9z/qOmd7Kqg
         uy7/l0HKJYZk5aAdrPArtYRgjKW7zJaTKoquJxQlfvhu074mbo+edDzTL65lk2SKIFI7
         lvQQMt0EzPy99l5o5klceHiBSVF8gKroqIQJWkcmXflgW5JHQfYIs9dCPDabXZoc83Iw
         KIUJFK5t1pDf4sj9hx5DAqHquK3R6sB4en9GtxjRrO0wBEbyXBgOnKkqycJ7MouOVnsL
         c/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364998; x=1711969798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/kTGO29vezq1Gc7J5O9OI72ko2OnA3sM69gX9LY6c8Y=;
        b=q11+y1N+1TxjQn6/PcNuGHRJRWsmVCph/9W4EeLI2RCwewis+krEMLYro2RF4hCZN5
         8LROGudn7d5BqiD/QwuHzhYjOMV1TfzRyzu4woH1kDhs5ewoVezU/2xFkJzyf/pRC5l0
         3j5dznBBCe5Twgig7DOsIiWNXtw8WJipBSj2Q2eFF83tb2uFoJz7kIxb8gl3oSy0MAjV
         ljPgBDWkKxvi7juY7wkMtXrCoQaCKfFgMY7ORoVxpL2XUt4LSiCvKOhRv52PJ6dajdh0
         ABwL33vBRqF1SFGPxXuQsttZxY2gm2Ko5XBQVvJ9oSn85jEoRTskkMAXHwnpNSu6Dy+j
         y1Ig==
X-Gm-Message-State: AOJu0YxlJh+NpqO9JkXjie8rCVx/02GITj4J7sAG3LRw//iJvNttESXE
	KWLViU5eXioa9QgB/RtTgGITDpv+fUhVr2yzWQABicSGPr37XiowovkS3hIWRIY=
X-Google-Smtp-Source: AGHT+IHd2loUo9esvRyCMJmbLmzeubWwPmclSwwr5gWi/CXFBjKiq/1gx79j0VlUc5MnXrG6uSfvvg==
X-Received: by 2002:a17:906:ae8e:b0:a47:52ff:194d with SMTP id md14-20020a170906ae8e00b00a4752ff194dmr2271273ejb.35.1711364998404;
        Mon, 25 Mar 2024 04:09:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id bw26-20020a170906c1da00b00a4650ec48d0sm2972367ejb.140.2024.03.25.04.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:09:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 25 Mar 2024 12:09:50 +0100
Subject: [PATCH v11 4/7] drm/meson: gate px_clk when setting rate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-4-04f55de44604@linaro.org>
References: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-0-04f55de44604@linaro.org>
In-Reply-To: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-0-04f55de44604@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Nicolas Belin <nbelin@baylibre.com>, 
 Jagan Teki <jagan@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IE7LBQJSwmFpro9NRvngqeq31VcV/n9f72AsydUqbws=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmAVt9++1oPrnjR7tTQa1Ol0n8wYjRZy17oMVcXzVP
 cqgFiMeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZgFbfQAKCRB33NvayMhJ0WMUEA
 CXRnTt7k4f4HAGknmsHODxGaAF/HThv+ptZ8CFtkMmHBbZzN4J3Gk11mdKg/k9ZWwRokrDvuupCdwO
 f8NLV62azMhLxpsx1FsDjVqVgUhV04e7OcSzfYkpWjloXO7V3G1r7g1d1mANLIomYCi2uW7R9gF21R
 qJGaGaVLkmPUBy5VYkOQSPSCjd4PkRFqQ1ZwiiCP23DNRdICPkIPfy8MUqZtlJlMaSHm/bIMxlFJGO
 DayCAnXbINnd4HFG8DOOsnLi936dtQwF39hAZf+PAygwBV/0ctv0pAmQdLcQw3ySQqb2gam9S6YTMH
 ixSV0Iro8prstkZZU4TdtBSzF9iMsk0eLHGyxBBPWEig8Qb+3fYlZ2zv4YJqrz26X1B7Edv75W0oBP
 0wH4a7+UKe5aGkcTJ8/aOipwnV0EDf6suxY0b3WsTpOSLmUJ12PjCFUxJkpDIlcA2rP+bnZSMzwCwS
 y2QCfsbvlYWQje9Q6YwJiBIOcbsJJCcpgb8XmMtE9HiH2S8yNMmBUTSZPYYqb8vHGEwHOuhMO65B9l
 zSNqFchB8ORbgObxgDfKOe4T9Ngu1ZPAiIMY7GlofBfzu0bpVMeonZ16WymC86Y0WLYqQjBy3fsjZ1
 DlekGujVu8UOStOHsh5Gwvp10BAJs4tb10Zxs+P2Nk/3dz/wXVipm/M/hONA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Disable the px_clk when setting the rate to recover a fully
configured and correctly reset VCLK clock tree after the rate
is set.

Fixes: 77d9e1e6b846 ("drm/meson: add support for MIPI-DSI transceiver")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/meson/meson_dw_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
index a6bc1bdb3d0d..a10cff3ca1fe 100644
--- a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
+++ b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
@@ -95,6 +95,7 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 		return ret;
 	}
 
+	clk_disable_unprepare(mipi_dsi->px_clk);
 	ret = clk_set_rate(mipi_dsi->px_clk, mipi_dsi->mode->clock * 1000);
 
 	if (ret) {
@@ -103,6 +104,12 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(mipi_dsi->px_clk);
+	if (ret) {
+		dev_err(mipi_dsi->dev, "Failed to enable DSI Pixel clock (ret %d)\n", ret);
+		return ret;
+	}
+
 	switch (mipi_dsi->dsi_device->format) {
 	case MIPI_DSI_FMT_RGB888:
 		dpi_data_format = DPI_COLOR_24BIT;

-- 
2.34.1


