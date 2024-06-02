Return-Path: <devicetree+bounces-71579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D80EC8D7538
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33505B215F3
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D323A1CA;
	Sun,  2 Jun 2024 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U5ASHeLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11243376EC
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329893; cv=none; b=URIcnUpS01ciqkhTwhRTPMzpMKfWbyLb1PD8WsthEzVGta8BYqE1As/IaXE591NTGndRlmAR+3Sx1MY0KMSOqL9doFCjxrW2s8WNIPFvvDpwaWoYNlikM5m0QnqW9k+90yffrCiJMIah4IFGAAaLzRcREYRrgPXdU0zylIp4JX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329893; c=relaxed/simple;
	bh=p3R84UdnZzJNiooJHROp8P8TIKNW8VASKGnwF+31z+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AjVgw6tM7t66uge6PNkVg1EHm0Hy8xZu6EJYdMrlATEONIpO66B4UZ6suI7TDzHCyAaHkkMy2ppPHImz6m66yJXlmPKBOQYh6RIhMaC+FwTyVMPj9Fn53v6qVsbtSNwCwy17Avp0uJt05EhTlEMIDQh2ItKlbnFjMd4shaNzueM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U5ASHeLg; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b912198f1so1553518e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329890; x=1717934690; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qCmMEV20sJhl6q9JP4BtOvE1ThwKifoA/eb2lcmOX/k=;
        b=U5ASHeLgk0N2wfeCKAy74XFJ1nPc7Tx8a5zWHd0XwI3cuoYN/qlqHxjwS5WFDlbv0F
         TzfgBtiBb6GJRTJ5ZMDThmTNfq54iGrCcQYNKRURWPvsAvEvdD4Uey/vm/C+o1kLU/z6
         FNkTxUiZoYgrXVBas5gautEykVBBbE0bB1c82+f3yW7vF7YPyPsd2N2fpAo2loKBI+ol
         W1QSI7lU1d+X4Zf7/WpsaQtcJ/6cr3wxncN7sBsQk/OQryLBJgzqKhY8sQt38TtbSskT
         paWnKt6t93UeKV58+f8fYF5kaQ68CbtH0aL3RqidHPV52+6Bc1I+sEErgdaYSYzc6yuk
         /7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329890; x=1717934690;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qCmMEV20sJhl6q9JP4BtOvE1ThwKifoA/eb2lcmOX/k=;
        b=qI3YG/goc0BwfRz9Rgpg/sFWwNqjC9cW508Ig03aY9HuhYLv/vLvhim7u2tjs5RLl2
         7MCsndfkNpZN5qeoUz2BQ50MPVKKdBstVanVplswzFL31EHUCdzVZpzAmlKbh2Ctm8Uh
         E1AVd7t1ipDv+jVixM5dBzHQSDBdFCa1h1svXj1y+yzGa2RT0BCfaQOkAfi7KM8lMpA2
         gJJyHRmic0WhRELb/3UP0Hg4pakid9mEcJEy4nUf8iu+U8CZC1MSfAMy56e6nuG5YT2A
         /rluYOOSqRfoU3Hut8FBdxtTrrkTq2a8VTzCawkx3epnf/nkyxJ70+L93fm2uXiRVenQ
         1j9g==
X-Forwarded-Encrypted: i=1; AJvYcCW0tYME9Qn1oQP6bfGYZb8ENl85oLLLxpQPqHlLDD16XWndeLCSwB+2evS7VG9tkkxyckQvFZqB1dl25No/nOe8BRij6FUSwH7PFg==
X-Gm-Message-State: AOJu0YyuxIwrBXA0dm0r9ny0y0dCN504OoY9swCgn1gEErHqBsikTJ62
	FPxqAmIePKfxXPg++0DxC8I5IH/c+l81jrJ/G1nUAUy5W42k6dnxQc6ICuVSGuc=
X-Google-Smtp-Source: AGHT+IGCiCd1TG61yPuHP2aBTp9MSL5cxIMjf2EW/NA9zU4V8f7CT49VmAhc+8/OK+n9wpRK9ETuPg==
X-Received: by 2002:ac2:58ed:0:b0:51c:c1a3:a4f9 with SMTP id 2adb3069b0e04-52b896d8790mr3599090e87.64.1717329890158;
        Sun, 02 Jun 2024 05:04:50 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:44 +0300
Subject: [PATCH v3 04/12] drm/imx: parallel-display: drop edid override
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-4-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2329;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=p3R84UdnZzJNiooJHROp8P8TIKNW8VASKGnwF+31z+M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/cNOEQ83ng70X09QmeKaF0NL8z0h92yMj9M
 305afztkWaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3AAKCRCLPIo+Aiko
 1XexCACDSDdz/1zzBjj/fpPm9P74sgM1RPvq3rFuMSGAAgAMTldnUNhsH2r3LcogCivWWmXLeQF
 FqDenyVNvckt6NZDDg6cToyVSWnoY0/ZPbdNrI7al6UeND2y/snsiBo+L3ozuiDfoDdPm9ntfyI
 kBjy+bvMhGTmH9M5MvVwx9D5yk3XRVD6h2WP7dYTK0WpupSnRdq1EMF9Tl4jmYZY5LxwM41oc0h
 xvy5dVsY3tkCZI0dutTeNAPMJ5H4I6LVRLSiqOob7HGMrppHtwBbxjKtIro4Lqr1zr3Co29GKT4
 Kx6xBvRoI1UOucJZYh4Ditfs6oa2OpLJk1rEb2MW/QQnLOZQ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the in-kernel DT files ever used edid override with the
fsl-imx-drm driver. In case the EDID needs to be specified manually, DRM
core allows one to either override it via the debugfs or to load it via
request_firmware by using DRM_LOAD_EDID_FIRMWARE. In all other cases
EDID and/or modes are to be provided as a part of the panel driver.

Drop support for the edid property.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/parallel-display.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/parallel-display.c b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
index 55dedd73f528..4d17fb96e77c 100644
--- a/drivers/gpu/drm/imx/ipuv3/parallel-display.c
+++ b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
@@ -16,7 +16,6 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
-#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -34,7 +33,6 @@ struct imx_parallel_display_encoder {
 
 struct imx_parallel_display {
 	struct device *dev;
-	void *edid;
 	u32 bus_format;
 	u32 bus_flags;
 	struct drm_display_mode mode;
@@ -62,11 +60,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (imxpd->edid) {
-		drm_connector_update_edid_property(connector, imxpd->edid);
-		num_modes = drm_add_edid_modes(connector, imxpd->edid);
-	}
-
 	if (np) {
 		struct drm_display_mode *mode = drm_mode_create(connector->dev);
 		int ret;
@@ -312,9 +305,7 @@ static int imx_pd_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	const u8 *edidp;
 	struct imx_parallel_display *imxpd;
-	int edid_len;
 	int ret;
 	u32 bus_format = 0;
 	const char *fmt;
@@ -329,10 +320,6 @@ static int imx_pd_probe(struct platform_device *pdev)
 	if (ret && ret != -ENODEV)
 		return ret;
 
-	edidp = of_get_property(np, "edid", &edid_len);
-	if (edidp)
-		imxpd->edid = devm_kmemdup(dev, edidp, edid_len, GFP_KERNEL);
-
 	ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 	if (!ret) {
 		if (!strcmp(fmt, "rgb24"))

-- 
2.39.2


