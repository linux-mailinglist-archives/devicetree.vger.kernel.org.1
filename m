Return-Path: <devicetree+bounces-49821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A25877EE4
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FEF4B213FE
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56AAF3A8DD;
	Mon, 11 Mar 2024 11:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j9Zv9Dk1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804743984D
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156052; cv=none; b=bqfzkbjiqMPbDKtFn0Bhus6aDof6Td8D64mS4c4iW2hdBuJZ3y0PmalEr4p2QvEyaZi9jtHxafGnKhIUJr/NbeogA1CarY8OO5h2eweL1F3Z4rOND+t2yMciVbeYUKpQmVe2GMjL4t8tmpxsFSzve3pOjCeWZGIMajA3UNbZGGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156052; c=relaxed/simple;
	bh=c/syM85k3g67errNBDbi0QpULM/5w93/bHQAwxlatC0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZTJ/35uaDXosU6YXg6bG557ZJCuyDMpCu8d5dcQq/YJ6TrCUA/8Fo3Va2rVVG6Ty3KH6LN9ypmg1bvHVJr/Dxd6Su4xQ8HZyIm7ksrPTTFpjhhlJsZjzPsIRq2foGuRQug9OsBQP5jq7k/h3ICJSrLAJ5KAqOypcceKMM9Y3Hho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j9Zv9Dk1; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d3fb16f1a9so52680841fa.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156049; x=1710760849; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gCXm2DvB3Yj7Xx92C5Kj2hDALuD84y0JzdGeVmZf4dE=;
        b=j9Zv9Dk1fT7b7BxUyci+5pKbGK8TTKgIq1AVAoke4JDHM3ZZT6VDGRJEyUjRc69LX4
         a9/O9g3uG/CIzb1eWu3qqpQ3njw95pYSb7fWCQ4UEHoHp2YXGxgeSGbL9Iz4C9XeO8RB
         /1dD+53N3K6T34g3drHBEPPeyvgEdS3fKFJNo0j/GYxgwxFOFdWWXG2TJvsflsyG+pSe
         zfzDR97kUl2jn2QYlZXgirQJW6YnSgATXAtkkh7kkZ1/43OwITbnkbP6YcFMQnqyMDxM
         1EHd2jUDnxzy25xsNi8BYk8e4Q65ZNzi/WInm/qP++RHFbsWdr6KDiqmsXHRfUBA+dPg
         br8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156049; x=1710760849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gCXm2DvB3Yj7Xx92C5Kj2hDALuD84y0JzdGeVmZf4dE=;
        b=K5B/e0oNnCoIHaPIsOgclOgxlbg0+ff/hWxDKxp7GHDDld799jIyw7WADkyNr3UIes
         j6MdD5u1Bw+oOyLdyv00mxb6NL132DkWPvubta3Ksd8kTrFnggXqwlQ+i96xMehHW6m8
         PWbEFbRKdPoMbmNzu441fK4jzzbTmMKUIVaB3Z1fQZjfN9UGXTHXColaxiUFMG2xJBNS
         ojVEWzs0jrxmWUM0xynUIXEc1bOaxQqnlSmRor3+WPhlMMo+WBykYPXDQNqrNFXD4S8M
         9BVdT2wo4PgKLDAPF8VtxCWBagu+3uockY9jZ09YI7c9L6gmOkz+4Fhat5IyMCchWEdI
         GC4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVek5sLHLRttasXsT+DHhtFpY7ScuDIjPuQ9X8lmzvQZ/rsJuZlCOEevdmfwI3+bT0LJbUaFwM+3A3etiZ6suNCuCQVYxTLhSV+2w==
X-Gm-Message-State: AOJu0YxwSMoGjk5o1iCKfR3Bbay+p207cptSRWwEr2lNtmaM0u3gDAMe
	DRgpYAZXcM7Dz33OTvhQztSq154N2v5AkzOsSnqL1EwYBuzrmDQ8kdrePC4BFkM=
X-Google-Smtp-Source: AGHT+IHbf4XJ+DXoOulFtxU1Jg17WWBA5XWZO9E7K6YLNf9lvm+H8AQQETB3XuYvtUXahbYyBkzbxA==
X-Received: by 2002:a2e:9f4b:0:b0:2d3:17e6:3b4a with SMTP id v11-20020a2e9f4b000000b002d317e63b4amr2197192ljk.23.1710156048922;
        Mon, 11 Mar 2024 04:20:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:20 +0200
Subject: [PATCH 12/12] drm/imx: move imx_drm_connector_destroy to imx-tve
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-12-e104f05caa51@linaro.org>
References: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
In-Reply-To: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2503;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=c/syM85k3g67errNBDbi0QpULM/5w93/bHQAwxlatC0=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+q7l6xarfPEZ82sD+9dILip7r2zS68yM5uenhHLU0vD3
 Y++6e/rZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEVuWy/1PSWLs97f7Ku+29
 nRGcwvmVcTnhe/8prGHJNv5QbWG3a63a5YoyB6aTqcwGJ9omF7EKP/3xzPnxlPMxwpzqxzzWLvu
 xsTNaa9MdDfcZJ3cdE8kJf6QSUbHOaj1zU53gGeEzhb5OB5e5SpcwdS+zfq7VN9X7XvDM4itHfq
 U4RK+2Z9nKZSuyu054SX9XUFvr48AEEcbt+5f3X+M2DGRcfqRs8rYtfSFfiipat0a9Wxaf9nuP9
 9GZXKfUPsex8KYxPeUrXp9z/cNWVdEVMlHZGcZOjRea7oTMWTU1f4ZOSZfc+esG1/I/bOfr+hn8
 U1lVe6dH9ITMqoQ5TTxtj3lFp14sOjahWDJIadmVnpcpAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The imx-tve driver is the only remaining user of
imx_drm_connector_destroy(). Move the function to imx-tve.c

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c | 7 -------
 drivers/gpu/drm/imx/ipuv3/imx-drm.h      | 2 --
 drivers/gpu/drm/imx/ipuv3/imx-tve.c      | 8 +++++++-
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c b/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
index 4cfabcf7375a..189d395349b8 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm-core.c
@@ -34,13 +34,6 @@ module_param(legacyfb_depth, int, 0444);
 
 DEFINE_DRM_GEM_DMA_FOPS(imx_drm_driver_fops);
 
-void imx_drm_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_unregister(connector);
-	drm_connector_cleanup(connector);
-}
-EXPORT_SYMBOL_GPL(imx_drm_connector_destroy);
-
 static int imx_drm_atomic_check(struct drm_device *dev,
 				struct drm_atomic_state *state)
 {
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm.h b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
index 57a95926c492..509f4c0a2cf0 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm.h
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
@@ -26,8 +26,6 @@ extern struct platform_driver ipu_drm_driver;
 int imx_drm_encoder_parse_of(struct drm_device *drm,
 	struct drm_encoder *encoder, struct device_node *np);
 
-void imx_drm_connector_destroy(struct drm_connector *connector);
-
 int ipu_planes_assign_pre(struct drm_device *dev,
 			  struct drm_atomic_state *state);
 
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-tve.c b/drivers/gpu/drm/imx/ipuv3/imx-tve.c
index b49bddb85535..a5118504b522 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-tve.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-tve.c
@@ -307,9 +307,15 @@ static int imx_tve_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
+static void imx_tve_connector_destroy(struct drm_connector *connector)
+{
+	drm_connector_unregister(connector);
+	drm_connector_cleanup(connector);
+}
+
 static const struct drm_connector_funcs imx_tve_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = imx_drm_connector_destroy,
+	.destroy = imx_tve_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,

-- 
2.39.2


