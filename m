Return-Path: <devicetree+bounces-54959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 479AB8935D1
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0C7A284639
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB6B1487E5;
	Sun, 31 Mar 2024 20:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dwbAx0uH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A65145B24
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916954; cv=none; b=X2ZVCwjGoSd1GiFkjXUk9PRIkMKzzUG25wsiK2iDF6ZKJ4PwrJ/EeY6aPtkvffaXDiPf/Anr5DFuCr1lQilEw2Kw+I2b5GdKUk6ER3dYKZZuQk4w29DFDd0PbFQ2EpI6zkVUmzHRg4uTaYg8amnRAJvhtmJz0o84tOjf2DcY11E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916954; c=relaxed/simple;
	bh=m11CFuEduJHyQCwHyCLs0Yco+X7++CQ3XEHXdiz1Oro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OSF4kHQwM7BNQZxJuRlvTESL6hDtzjEu6vk7r9EPgn3Fe9zoV6v/R1MAf2hs9jVFZONQB0WFYaY2nBc8yRcJTKjMArV5Qx/NDr0OOu9zYHqyjEcYkS1aLKzn6eXC6Rj3pC5dAYv18WRCgPmqRhHuMQ/J1H74oUZ/altg53RAAw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dwbAx0uH; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-513e89d0816so3967793e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916951; x=1712521751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hSjZJV2J4iFvn9E2c3TLDDuj0HnPcaUsZUNdMjQiU+w=;
        b=dwbAx0uHbf3cesZheqg4nrnYWJBaM8RSDA2ZJEn2b+Gp0d5uvkuiJS4XeQ9I8EiwO2
         sF4EERT1VDlqLkCJypMJuiVsuHVroyg9IAhEYNpM02IhbriFczHIlP0x5etSv/HKRieS
         D+pak4LJ6jA41gLbwFuBLR9EHtkxcxBXsaKijK0i/ZuDhRKVorAsIEcyQuHkJjnnY/7x
         ked1r/njR31OCUtf3hp77bhFOoBgAWf3BrOqABxz3XrqdmfADA+gNehF5/n+VhHcJWtx
         B50I5Z60IkjFzdNmEhTqYf1qo6HHiJ2hzNLz7b6biKChAZZ4Hmn96/UYwvS9SiLKrAOK
         UNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916951; x=1712521751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hSjZJV2J4iFvn9E2c3TLDDuj0HnPcaUsZUNdMjQiU+w=;
        b=VuHOLsa8lDXBEEAQyhRga2OAIZ0Woo6RnJUpJxxTdU/SZawVajHZhquWqzL3VutqSK
         saQP6yi23mFouQeQEbg9iTz0kYvhCjRf7/nHmEUs9r4wzmVJuSMzO3Lk4NOKYRNMWiic
         U0aAN7Yd3jx4xapgAs2Cu6y8Nro0k/BFaADGK192d1UNFuFUFhQsMe+RKJ+9gHouH3u3
         cEpza6Hsx7az8dtDllWBNGeb/EO1ca85kdCWzJ6vsUaItAW0fUdgCLxjRad275sfCzUO
         36nrtV534OUzFKYplyIcXvEXbMD30FjNoVCdSJDp37uzGSrGidAEfw6ZjJMDJ1I1y9PU
         OWng==
X-Forwarded-Encrypted: i=1; AJvYcCXIjuYMDMFqgRIm7+dNH2QZ80gH/VHF+QrFZ3Au6ErtJjI5N8iKTa6j49mvHp5cGGKelxz1+655dClAEwDgvFJYmg+IOvTzz6Efzw==
X-Gm-Message-State: AOJu0Yz6qGtKLhsx5Zz9CmkY0GYalVg6uXCv6/CVyCUgT+651JGSf1B9
	7o1QIncSfiuwPlwwTgixFgjHRFVQReRZXGgeEfun3ALoxFEqVVjkra5p4+ZeSJY=
X-Google-Smtp-Source: AGHT+IGqWCIntvZiDosEJKnaReDexnGbEOGV3zzmMDNnyKgFK5V75oXRqdmj5ESqD0OGA1YI49V6rg==
X-Received: by 2002:ac2:4145:0:b0:516:9f4d:1fc4 with SMTP id c5-20020ac24145000000b005169f4d1fc4mr2503140lfi.49.1711916950855;
        Sun, 31 Mar 2024 13:29:10 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:03 +0300
Subject: [PATCH v2 06/12] drm/imx: ldb: drop custom DDC bus support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-6-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3942;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=m11CFuEduJHyQCwHyCLs0Yco+X7++CQ3XEHXdiz1Oro=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceP6jh5TC7QL9R2rkAKAR3NbgOh5kblFwSSO
 NB3cIuFeTOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjwAKCRCLPIo+Aiko
 1Sn/B/4rtFlV/3QWDuIppX9zgfbSNwSC+NhwTRudvbiadZy5sknecwH7XCIyNEg3mhrf1G12oXq
 aIiyOr0cJBSMYa7TfCGSTN5CESr+cKDJ1WqKhLVAh5KalY6304ITWgCQnCnvnS/5j+cm8cZuoFz
 2rdF0h073DMilAaoCko5laOPnvkuot3ZG1KYLPy3BZQWn+mTL0NT9/O1xZOnBKXb2rJyv9XR3gP
 ZU8zMokbcM4DF22m1TahdWnyO9AnKVtk+96WHD9XGwORBorkXnTRb1svaVfzizSVaHcPBEdmHVP
 EHyhHEt16GVtCxcctL3wZ2DCfiHjttm/DLtmibsaCllST2ce
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the boards ever supported by the upstream kernel used the custom
DDC bus support with the LDB connector. If a need arises to do so, one
should use panel-simple and its DDC bus code. Drop ddc-i2c-bus support
from the imx-ldb driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 72 ++++++-------------------------------
 1 file changed, 10 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 1924d8921c62..380edc1c4507 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -70,7 +70,6 @@ struct imx_ldb_channel {
 	struct drm_bridge *bridge;
 
 	struct device_node *child;
-	struct i2c_adapter *ddc;
 	int chno;
 	struct drm_display_mode mode;
 	int mode_valid;
@@ -141,18 +140,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (imx_ldb_ch->ddc) {
-		const struct drm_edid *edid = drm_edid_read_ddc(connector,
-								imx_ldb_ch->ddc);
-
-		if (edid) {
-			drm_edid_connector_update(connector, edid);
-			drm_edid_free(edid);
-
-			return drm_edid_connector_add_modes(connector);
-		}
-	}
-
 	if (imx_ldb_ch->mode_valid) {
 		struct drm_display_mode *mode;
 
@@ -481,10 +468,9 @@ static int imx_ldb_register(struct drm_device *drm,
 		 */
 		drm_connector_helper_add(connector,
 					 &imx_ldb_connector_helper_funcs);
-		drm_connector_init_with_ddc(drm, connector,
-					    &imx_ldb_connector_funcs,
-					    DRM_MODE_CONNECTOR_LVDS,
-					    imx_ldb_ch->ddc);
+		drm_connector_init(drm, connector,
+				   &imx_ldb_connector_funcs,
+				   DRM_MODE_CONNECTOR_LVDS);
 		drm_connector_attach_encoder(connector, encoder);
 	}
 
@@ -551,39 +537,6 @@ static const struct of_device_id imx_ldb_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, imx_ldb_dt_ids);
 
-static int imx_ldb_panel_ddc(struct device *dev,
-		struct imx_ldb_channel *channel, struct device_node *child)
-{
-	struct device_node *ddc_node;
-	int ret;
-
-	ddc_node = of_parse_phandle(child, "ddc-i2c-bus", 0);
-	if (ddc_node) {
-		channel->ddc = of_find_i2c_adapter_by_node(ddc_node);
-		of_node_put(ddc_node);
-		if (!channel->ddc) {
-			dev_warn(dev, "failed to get ddc i2c adapter\n");
-			return -EPROBE_DEFER;
-		}
-	}
-
-	if (!channel->ddc) {
-		/* if no DDC available, fallback to hardcoded EDID */
-		dev_dbg(dev, "no ddc available\n");
-
-		if (!channel->panel) {
-			/* fallback to display-timings node */
-			ret = of_get_drm_display_mode(child,
-						      &channel->mode,
-						      &channel->bus_flags,
-						      OF_USE_NATIVE_MODE);
-			if (!ret)
-				channel->mode_valid = 1;
-		}
-	}
-	return 0;
-}
-
 static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 {
 	struct drm_device *drm = data;
@@ -694,11 +647,15 @@ static int imx_ldb_probe(struct platform_device *pdev)
 		if (ret && ret != -ENODEV)
 			goto free_child;
 
-		/* panel ddc only if there is no bridge */
-		if (!channel->bridge) {
-			ret = imx_ldb_panel_ddc(dev, channel, child);
+		if (!channel->bridge && !channel->panel) {
+			ret = of_get_drm_display_mode(child,
+						      &channel->mode,
+						      &channel->bus_flags,
+						      OF_USE_NATIVE_MODE);
 			if (ret)
 				goto free_child;
+
+			channel->mode_valid = 1;
 		}
 
 		bus_format = of_get_bus_format(dev, child);
@@ -732,15 +689,6 @@ static int imx_ldb_probe(struct platform_device *pdev)
 
 static void imx_ldb_remove(struct platform_device *pdev)
 {
-	struct imx_ldb *imx_ldb = platform_get_drvdata(pdev);
-	int i;
-
-	for (i = 0; i < 2; i++) {
-		struct imx_ldb_channel *channel = &imx_ldb->channel[i];
-
-		i2c_put_adapter(channel->ddc);
-	}
-
 	component_del(&pdev->dev, &imx_ldb_ops);
 }
 

-- 
2.39.2


