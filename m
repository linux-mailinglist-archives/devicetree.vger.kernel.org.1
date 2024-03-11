Return-Path: <devicetree+bounces-49818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A142877EDC
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E1171C215C6
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1DD93A1BC;
	Mon, 11 Mar 2024 11:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jec9/QHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6D63984D
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156049; cv=none; b=k2nnQDJ8ZbpjIQCfm2+MFrounEeXN7AqfYOV/KzbKn0G3xyiQGQDO95k/ypBvHQ2iVHWbt0/7GwWEjKV7pIVNH6tkjxCQM2r/U5QTxzVIq78c9TdtoPqXFP6DbLmOXcIaK1f2+kjVEw8FPzHdd8TcClfMGK7A0JDRg3nR7DRqXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156049; c=relaxed/simple;
	bh=3H9fCE7mPj818x+Q1/UwHSmVLPut7h2b14rUQzFEIk8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OtnhvzCoxPNKc2pyvmgEG/0KzqvjnTnR2I0Zi9+LhdL03RviSwWikXTXXRFFOIwsOY+WTgOoqfgKAjvPzDGiyaphespvs3hZDh0aWXx/d9tJcQK58EN6dLE2xTO911iv6TDHgQ7f4ySFx8OVStDUFSoNBQSSlWYki7cb483RPbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jec9/QHN; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d220e39907so69056191fa.1
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156046; x=1710760846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIYz4B8ZOSG+Y7DKuT4sPVVM3JvUfc/5hNpGzRUmXfM=;
        b=Jec9/QHNkXDhiI5R3fRxR6GUihn+Bi2WmMI9tTUNuNGLIt2Ob0p5l3wcfelfsDCirL
         cT+X4tT5StKEoLB8+bjwd6D+fUmUp9/UJuvDoxc61gs34MDskT5gy1GoWUnuVvJOv8tC
         f3+nj9HDD7rDIAd22fLrQHcSfX54P/oD9eALYFaOutrmM/q/V71WMuRQ4dvc8Km2RlPn
         mO3xeIL8UY7GI1D3VbiwnJB9C7N/gfcYFo7oUj41cvobh/k0vniZS9YIf95H0ztTLYpG
         GuMIGKoLeKngqX2Yew9DAZ60oS57OT8+DGVznaoYmmH/nFwzX4bRf/DR6vbdIOJF9xZG
         0C+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156046; x=1710760846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DIYz4B8ZOSG+Y7DKuT4sPVVM3JvUfc/5hNpGzRUmXfM=;
        b=JJ0xA0WLSBh3KJF7MN5KHlYWVmxMLkPrUh29DeynqDZCxCbl2wV7oWVeh0KJZsXgxw
         sAQtgqWVmNKlLu9QGRsnCPPByWMgQIJlK5BtHUHp6ZGVYPstzikOBwwbXSiwLuf0myDS
         NlAsaA7oKGGZATB4Pg/yb2GLnmCWW4Kk6REcXdQY58rEmjbD9dHt29yJw23Eex9E46jG
         1H0EOF3QiXRL41SJO8Bmy3rXVwLb1MZ9xay45VDYYSDhIp9XDVv2/LmLUxORD1il+Pi/
         w39zxCXyxMllLV6+TYCzrXq7oRdDQ1zJb7ZVb0N01Y0WJNoV58wE1akFxWS0QU5VqawW
         N/fA==
X-Forwarded-Encrypted: i=1; AJvYcCUTqjSOwmmOPZGqWppWLJbRmTqrHE/nVyUCTPHDETdxjWeLXZwoW+zAisKj+AJgoJJSz8Ipcm7O5HEsFqtiUr7VXGr0McpKUrqnxg==
X-Gm-Message-State: AOJu0Yylqhb25NGF6PRs99xCz/K4bj03I386DsNfzlexMJsdPu83VuzM
	j3ikBG+MpfzuMd8kn38SuzAM1v1cwKvaArb0gVNOwbT42WuvbxzXtWR2qQ2t9ug=
X-Google-Smtp-Source: AGHT+IGU/7/dwO3YAwA43NYcOB8G8o2RoIjLDiWIgVyxQPGvLLiCKMFIsjTxtWIzaK9CURl38ycFKQ==
X-Received: by 2002:a2e:7c10:0:b0:2d4:24cc:b499 with SMTP id x16-20020a2e7c10000000b002d424ccb499mr110587ljc.15.1710156046254;
        Mon, 11 Mar 2024 04:20:46 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:17 +0200
Subject: [PATCH 09/12] drm/imx: add internal bridge handling
 display-timings DT node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-9-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5036;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=3H9fCE7mPj818x+Q1/UwHSmVLPut7h2b14rUQzFEIk8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukE4AP8YIIr6aZRHLy1srF2zcsnsshABwwfU
 UzNfZKIAweJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pBAAKCRCLPIo+Aiko
 1bcDB/9jr4bSDVP/hHMlo3Q1hfu2LW9AjVffzljxaiUsM+DUqg9thoMTnwySV+eJjTqvqoI+6mt
 LxaeK7GPxnXVK2xLnErJRJtKZptWuUNG9RDeg9yP6IGjB5e00P5FwWVAFSIyikE2lKvVJLu0bZA
 RoCbHEhlqvKOrGF1GoSH7c6QR06zGxgX67Px4UjwlOB6nTSJKJ9+F4lGoEq4NaXQAhF1FjW9zK2
 INz2yDbxUjE1UQuL/rNQIz0j+twJfXxHAmT/NI6Iz6AqUgvrzCcM2S0Pwks+I3cUZdOv//uTfxW
 Y57+PAdwMm8csec7+NcVSt8gO5zI5bXvT0HnGq88WbzGaV3W
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

i.MX DRM DT bindings allow using either a proper panel / bridge graph to
provide information about connected panels, or just a display-timings DT
node, describing just the timings and the flags. Add helper bridge
driver supporting the latter usecase. It will be used by both LDB and
parallel-display drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig             | 10 ++++
 drivers/gpu/drm/imx/ipuv3/Makefile            |  2 +
 drivers/gpu/drm/imx/ipuv3/imx-drm.h           |  5 ++
 drivers/gpu/drm/imx/ipuv3/imx-legacy-bridge.c | 85 +++++++++++++++++++++++++++
 4 files changed, 102 insertions(+)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index 8aaf2441bcef..119e1431177f 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -37,6 +37,16 @@ config DRM_IMX_LDB
 	  Choose this to enable the internal LVDS Display Bridge (LDB)
 	  found on i.MX53 and i.MX6 processors.
 
+config DRM_IMX_LEGACY_BRIDGE
+	tristate
+	depends on DRM_IMX
+	help
+	  This is a DRM bridge implementation for the DRM i.MX driver, which
+	  uses of_get_drm_display_mode to acquire display mode.
+
+	  Newer designs should not use this bridge and should use proper panel
+	  driver instead.
+
 config DRM_IMX_HDMI
 	tristate "Freescale i.MX DRM HDMI"
 	select DRM_DW_HDMI
diff --git a/drivers/gpu/drm/imx/ipuv3/Makefile b/drivers/gpu/drm/imx/ipuv3/Makefile
index 21cdcc2faabc..dfc495e495ec 100644
--- a/drivers/gpu/drm/imx/ipuv3/Makefile
+++ b/drivers/gpu/drm/imx/ipuv3/Makefile
@@ -8,4 +8,6 @@ obj-$(CONFIG_DRM_IMX_PARALLEL_DISPLAY) += parallel-display.o
 obj-$(CONFIG_DRM_IMX_TVE) += imx-tve.o
 obj-$(CONFIG_DRM_IMX_LDB) += imx-ldb.o
 
+obj-$(CONFIG_DRM_IMX_LEGACY_BRIDGE) += imx-legacy-bridge.o
+
 obj-$(CONFIG_DRM_IMX_HDMI) += dw_hdmi-imx.o
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-drm.h b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
index e01f026047de..57a95926c492 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-drm.h
+++ b/drivers/gpu/drm/imx/ipuv3/imx-drm.h
@@ -3,6 +3,7 @@
 #define _IMX_DRM_H_
 
 struct device_node;
+struct drm_bridge;
 struct drm_connector;
 struct drm_device;
 struct drm_encoder;
@@ -30,4 +31,8 @@ void imx_drm_connector_destroy(struct drm_connector *connector);
 int ipu_planes_assign_pre(struct drm_device *dev,
 			  struct drm_atomic_state *state);
 
+struct drm_bridge *devm_imx_drm_legacy_bridge(struct device *dev,
+					      struct device_node *np,
+					      int type);
+
 #endif /* _IMX_DRM_H_ */
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-legacy-bridge.c b/drivers/gpu/drm/imx/ipuv3/imx-legacy-bridge.c
new file mode 100644
index 000000000000..4853e0c41ab2
--- /dev/null
+++ b/drivers/gpu/drm/imx/ipuv3/imx-legacy-bridge.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Freescale i.MX drm driver
+ * 
+ * bridge driver for legacy DT bindings, utilizing display-timings node
+ */
+
+#include <drm/drm_bridge.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_probe_helper.h>
+
+#include <video/of_display_timing.h>
+#include <video/of_videomode.h>
+
+#include "imx-drm.h"
+
+struct imx_legacy_bridge {
+	struct drm_bridge base;
+
+	struct drm_display_mode mode;
+	u32 bus_flags;
+};
+
+#define to_imx_legacy_bridge(bridge)	container_of(bridge, struct imx_legacy_bridge, base)
+
+static int imx_legacy_bridge_attach(struct drm_bridge *bridge,
+				   enum drm_bridge_attach_flags flags)
+{
+	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int imx_legacy_bridge_get_modes(struct drm_bridge *bridge,
+				       struct drm_connector *connector)
+{
+	struct imx_legacy_bridge *imx_bridge = to_imx_legacy_bridge(bridge);
+	int ret;
+
+	ret = drm_connector_helper_get_modes_fixed(connector, &imx_bridge->mode);
+	if (ret)
+		return ret;
+
+	connector->display_info.bus_flags = imx_bridge->bus_flags;
+
+	return 0;
+}
+
+struct drm_bridge_funcs imx_legacy_bridge_funcs = {
+	.attach = imx_legacy_bridge_attach,
+	.get_modes = imx_legacy_bridge_get_modes,
+};
+
+struct drm_bridge *devm_imx_drm_legacy_bridge(struct device *dev,
+					      struct device_node *np,
+					      int type)
+{
+	struct imx_legacy_bridge *imx_bridge;
+	int ret;
+
+	imx_bridge = devm_kzalloc(dev, sizeof(*imx_bridge), GFP_KERNEL);
+	if (!imx_bridge)
+		return ERR_PTR(-ENOMEM);
+
+	ret = of_get_drm_display_mode(np,
+				      &imx_bridge->mode,
+				      &imx_bridge->bus_flags,
+				      OF_USE_NATIVE_MODE);
+	if (ret)
+		return ERR_PTR(ret);
+
+	imx_bridge->mode.type |= DRM_MODE_TYPE_DRIVER;
+
+	imx_bridge->base.funcs = &imx_legacy_bridge_funcs;
+	imx_bridge->base.of_node = np;
+	imx_bridge->base.ops = DRM_BRIDGE_OP_MODES;
+	imx_bridge->base.type = type;
+
+	ret = devm_drm_bridge_add(dev, &imx_bridge->base);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &imx_bridge->base;
+}

-- 
2.39.2


