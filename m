Return-Path: <devicetree+bounces-18492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6214E7F6E8F
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAA0BB21170
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE413D9F;
	Fri, 24 Nov 2023 08:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hKBcvpEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84B3F10E0
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:37 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3316d3d11e1so938830f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815296; x=1701420096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CvmOEb1ckbbB9zBBB0o82fMDjd1uz7C5pNwKHHdJSYY=;
        b=hKBcvpEQGY5dj84onNJW3M5lRLVx85hcOU1ROO+wExdfWUGOHQNcdobB9rC9OeH1pd
         8QmcfTyR+eTWumNV3HJH+UjBznUgHcT/zfQSk6CZK+B1DC75FcOcP3vpC06+w7mMMSPl
         wjY9jX7YfijCzdoR56184mry/+qTHuIamN/7rsz9pvppKg8h1GIGUnNjauhRx4Cp3WCA
         6sUt0isjCe4e/lwwHhBrDDpql/OJNspcxAhmtVOp+J4kVisD2VbQ2dLFjxVvE5Q+zB2g
         hF+k8FnNxApqYoV53z8UkyNC0gZw2bOmviRCP7cHj3ZXnn0rQRxzFPVW/4kSd8mMxiQT
         72og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815296; x=1701420096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvmOEb1ckbbB9zBBB0o82fMDjd1uz7C5pNwKHHdJSYY=;
        b=utasG42FjYus5Wcl0F0257T5ww4Wa6wuSf7fauONhHH17EzAk14n+XJsQ/39LHv6AS
         QxpDzE9ZSBZ29B5iNvUb3bTrb3afVsxJRq1oA1pxReH4o0bHBdfVqY6PyI3UY9CL0E5t
         ES0/WpNc8zn+q7ucM5OakczFHGiMzDvkVKPQJ3aa92QH4c/RWcCq1kZ1xeoruBZTr+wt
         g42c1fQ0uWgF/xaGT5SUWVsbl3aFZnMpleLY03p3WR57rTERJEWFdSf1AGlGIMgngV/S
         FCvdFDZiFjq5sPUpvrz4eEPjod97saflCay74Reut72QjJHoTuWFt7t/ykYkCc91bsW5
         fKtg==
X-Gm-Message-State: AOJu0YycSfxbYFBvC6TYJXmxSFx+2Sb2wocPVDEZRpM7imWxnqZ9msAb
	3EXT/xYdyRgM/ERl3uFaicE4jQ==
X-Google-Smtp-Source: AGHT+IG8oV5vR52wvy6RDc5unbTyrdle+A+ZJEr+VxtPQs/QhVcyXpGgV/X216xPtP580nNksVLMHg==
X-Received: by 2002:adf:e90d:0:b0:332:c585:4005 with SMTP id f13-20020adfe90d000000b00332c5854005mr1606864wrm.13.1700815296061;
        Fri, 24 Nov 2023 00:41:36 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:35 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:20 +0100
Subject: [PATCH v9 09/12] drm/meson: gate px_clk when setting rate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-9-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6wj78w5SzMRVYfTnHYpi/keB3/pw6jAwnhprIG9LUDw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGx2k+lycVMXd4CGKdFmLLkeE1cSxXUGJmEH5Nt
 WyqAnCOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhsQAKCRB33NvayMhJ0XmHD/
 0a1u9pKRgdiqiNPEVgNnpvsoHZQCkWeGDJUhl/1pzTgkKKwI42m+N0fYEJSu+tGjebpr24UosgSDpb
 Hdwxq8/ts9nxnJrpXxDKUQgCs66lF/JOr3TntrVHMUh+z9IoiZheukKo7E9q9hXdTrqIJDNJ6MBrCr
 M6N8VZAuqfRdGbaEpd7FEX5mQCaN6lUruEfC/rV7D1PF/jSc1UDjGevThxuJC3ngOF08pchl00bddm
 Tl6iBVLDDzjvwipVuSd0y53J7R3+yvUhONC4GYqZKlYAQ+lamPVJjDCzLqhkxSbSn71KeYkm8g5keW
 e33PL7GAouKsNVgsiK2a32ZBG/N/MEH4IGTvqZq8Bwi/zy1O2K3zixX8Dm1NV/2CjgF1gFU2MSdMCd
 fTAQjiTQX2Sui2sTWsMRP5rhM75Thas4AAr7DC/2g4HCUNiYNlpJPLrPRDSeI9wEYBFezagPZ7HOIY
 3gueBoeolSSLsKEeZWRckNUMmjLChDMtdCh7qdEAwP01Ir5DHxrQZFHyRgShFyj10HMjIRjiPF0svt
 /rjcJszqh8GJBUduVrIMd2hdP+4KWKXqmPCam/JWTZn2V40nReclE42GEEi53eFlaETzHcQuRz6uIp
 F/Up8XwbOiSWancRcIvIDmtt5uDD7vWHX6/nM/NUWEKJQtVjLKuxBwhIILpQ==
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
index e5fe4e994f43..72abe2057ec3 100644
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


