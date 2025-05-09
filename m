Return-Path: <devicetree+bounces-175429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54439AB0E15
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79106506FE8
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1C8277035;
	Fri,  9 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WSxj2V8u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEF1275860
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781193; cv=none; b=ZfRhtTzZxrlLl0MHdFwUHMF45gxq3j1zFvD2+36Mys/LGvId8hW2YkfD4qzCkH2+kcIMhA2WaMm4h/6qphahcp0CZdPAVrkXZ5HtM6Y2DjjX6L6N8YD+3xuXU5qviqGbGMOoiRkTUS4jwjqzm1LJlmzaU7zHvLT86sN7GWeTPv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781193; c=relaxed/simple;
	bh=GPxpgXymGfi30tTTYrQvSmgXs57nzI13TRxUFomOKfg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=il//0OPU9hNBsdFOiz4oYx5QonVdIp1h9hDY5qcW0IbJRf+s+jNmTTanaNRFVaTPlBIsAivm6nE9ctEU6Q7KrkMzi8kMWtbESykIgBQ+KQWPqlWkc9ksukDSDnrrOKZlL2SMD7uMYhBSvhVjtv12UoY3dNt+fUe5fkXwWGQ8euY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WSxj2V8u; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so19904885e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746781189; x=1747385989; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DRBK55taPvQMwljJYM7ckCWG6RHvCfzlKygUDbNUXwo=;
        b=WSxj2V8u/UtwmAmbxFCXAynWlAkDhl9nGxYWs01AxmCZma3dj2VLjyslNeNz/HuQpj
         uA0f5WTNq9Sf5i3iolSXKIKomsnWiLR2z7fSjmeAzgCNeDRXOuvvmURWs2HkcuB+jX7x
         Ku1qHeDJK48+WisGuiwd4TAFaj7eobCkrrRfzsQ6KspXVwTUtaUeiCNfA6MkWdTo4F4M
         jcAcCwdnzUwkvtVmPxhy+WnBTJAu4HeHR9LLVcq+N5nDkD5NdQNBOujMsZIKWm/wFIED
         zF2cO7aYlaudmMlDzz0OQ+bvAB5shEEbCR9/8jPu2Ei5DJ2OY17Uu2ZDLxScs/bxrwn5
         AhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746781189; x=1747385989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DRBK55taPvQMwljJYM7ckCWG6RHvCfzlKygUDbNUXwo=;
        b=peCPhGre6jUzqCOJfA8Vjnek1n7QePBC68xoFGRQZMS+GbvW7bR7DRhmlM3ZTKiiSW
         uB+/yMDTfppzOLZkosVleKZVZQ1WknjUgiJwltBrhq6z5d/PZkflEBfa7q+dN6RI/RuX
         0/XmcgZIPyqm1UKfBOVF8NCizbd9Cfq3jtQCPSss2MsCbn2eL/q3bIMrrgJn4/+elJBA
         okQcCqx62Ex82qdkpzr1yHsCKDzYVs6OcHNDWP3nH6szgkP6uuSyL8sJRuyoJTzRXsWm
         CSLHMipikDrRT4tkXApoFx2Q2D4Lrw9fY7n6T2GNU9GmVAQNbFKcjf/Ykoh9F5Xs8OUD
         lcxA==
X-Forwarded-Encrypted: i=1; AJvYcCW/vpsKpDeD0qMcFj3vOLfNhL38Dsrmp5Cmfx5DfbO9GbdCkl07Zs8R5AOyLunijUwLqSf62AE9NCyC@vger.kernel.org
X-Gm-Message-State: AOJu0YyrSPEhoHMl3jrbTUQAvMq/kvSARMIf9auCpEQK0r6gE6q/xs69
	HhEqHtkDoUvChfM3P8/Rkxe0F2wD+k5I9/YLBAVAzS4BmLgZkcBlwuJ4k98T+BA=
X-Gm-Gg: ASbGnctBmoTavS+kIWJZbEIip4BQPRGENquwdYxQ/w+sccII9PBpuWTvR4ywo9c1J2f
	+pCulJCOgpZrv0BqU+Qyx2QkIPR0C4WXbgcKHKF9AbAs+U7Qjj8urvaf/x+TVp1xrABwOooEg5x
	NIslmk3sttY5X+53RGqQ35+H3rQ9+5tbCXrx+FfTnmL6L8ksg5ILhKgvKTtM/gi3oiAOyNgcNRP
	XO+ZJADt+269PpYPp9/xOrUqtG+sJDfMfiKvdX3T+VbX9jFw5GXMTq5ZPnfynehC27ZdtLetJ+l
	DMAsMGAioZAqIUGQSX7fktB31Z1NA/OXnjZBIARWUVadSNUQybV/bJJCJlnGXA==
X-Google-Smtp-Source: AGHT+IEi4oRGxvf3rarJ4EA34gWNHMfrrN3mGvf0JwgmZirlDAUM4wqDJEk8pEjPJG5QidQ9TfqiKA==
X-Received: by 2002:a05:600c:6819:b0:442:cab1:e092 with SMTP id 5b1f17b1804b1-442d6d1fadamr18291925e9.11.1746781189468;
        Fri, 09 May 2025 01:59:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df639sm22369115e9.13.2025.05.09.01.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:59:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 09 May 2025 10:59:43 +0200
Subject: [PATCH v2 5/6] drm/panel: visionox-rm69299: switch to
 devm_drm_panel_alloc()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-topic-misc-shift6-panel-v2-5-c2c2d52abd51@linaro.org>
References: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
In-Reply-To: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1212;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=GPxpgXymGfi30tTTYrQvSmgXs57nzI13TRxUFomOKfg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoHcP+ecnzg5DmaJYJHRyGNTCk0On8akQmyvH8H1be
 11j4ZFaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaB3D/gAKCRB33NvayMhJ0c3FD/
 90n/oSSx9N6qgcfjfwzf3awcAVX8BUxaNhrnpe4bmiMausPmc3BqGPj87mkqFXAw8/Rfp5oBo/u4Ws
 vPFbeuKBxR/SMNztQWHNFFshE9gbxGFbixJjSEQDWKjyTaMliok2L8aejsXgMIcn8ju46cPMYDb/BE
 YsN9NslV0VKPdtk00S+KnOa2nUjD3P3BSlO8qrmu1XMa69mBdbzDawflXr8cPabkW6x4gQAPHD6ceZ
 O1B00P07Rbkuf3W1mcJ/RjRZ/m5BcvOxicEf9EqW3j9rhbtUC15w/b4HJh7HK7u0riRbJC7Y4Q5f8I
 PKSRM1guQeN9nzrLn3E8Y1k007qRaJH4MAFu0rXjs7fHIWeiyt8Ut3v2t5tJJ2S772qVP08tIPqzbW
 6zu/SaWn+X8AkRFNSUli4LaEJL5PLdg+G4ieM6VPzPHR6i8/T5CN/cdIlZLARbTWmbtGDCJTkpAvvT
 lyElkXPnGjg9CsXUufTmcje9dB8rGchodRfuV+njvMav8v/9g5xyBAmwPsiF2m4ZhmdYcHCLDf4joy
 CEnFXw7GvGbGEyq2ks9+s7TpUC1NzvKSHIywxlyYtXfhlx5RdYdhqFwhHTNS1NZ3mnKiuhGUYw5aZN
 ZayrLHIexYn6NZHRExd2Tj7QBRyLlTbhphll2fAewTprlWnXOFE7//48MJeA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Switch to devm_drm_panel_alloc() to add panel refcounting.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/panel/panel-visionox-rm69299.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-visionox-rm69299.c b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
index fe921d5fb1942c47c5b849e827c244d7fbde25a3..fda1caa9052dd1c61c2dc23934d5faa8a52a6e31 100644
--- a/drivers/gpu/drm/panel/panel-visionox-rm69299.c
+++ b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
@@ -167,7 +167,9 @@ static int visionox_rm69299_probe(struct mipi_dsi_device *dsi)
 	struct visionox_rm69299 *ctx;
 	int ret;
 
-	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	ctx = devm_drm_panel_alloc(dev, struct visionox_rm69299, panel,
+				   &visionox_rm69299_drm_funcs,
+				   DRM_MODE_CONNECTOR_DSI);
 	if (!ctx)
 		return -ENOMEM;
 
@@ -190,8 +192,6 @@ static int visionox_rm69299_probe(struct mipi_dsi_device *dsi)
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
-	drm_panel_init(&ctx->panel, dev, &visionox_rm69299_drm_funcs,
-		       DRM_MODE_CONNECTOR_DSI);
 	drm_panel_add(&ctx->panel);
 
 	dsi->lanes = 4;

-- 
2.34.1


