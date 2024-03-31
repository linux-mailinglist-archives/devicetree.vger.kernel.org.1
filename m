Return-Path: <devicetree+bounces-54962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D758F8935D5
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05EF01C216B0
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D32B1487F8;
	Sun, 31 Mar 2024 20:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qIgZDXgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093551482F0
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916957; cv=none; b=Cq1ivhWG1jCnkqOgTfjloyOoL/hiqHku+qXfTQNDpwzNH8q4gx4xfLe79pDNn7x9sudhVVqtDwlyOe0pZ/G2mf/M94TpopL/DBZg5fjEjxtAFDqWzarbhI2N8BqQyH9QwWzNxXzMg9hTfHWxmJakUZOBLt0uZdHq000gukOIz0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916957; c=relaxed/simple;
	bh=hxbKkqcQVL6lamyV1sJxDUeKsmUL5K/DPfRJzqUHXP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SvjH2XXIAHNDdzHgbDJtlFmqt9kX5iUztUe0k1BQAm1RI74bK867x8cIust3ALamjApSO5TE5Igma6mexBH31LX/NPluusoYMrOfM4FCLadz/8dI2nGyio8/EWYw8cH01+QqNhI9uEIFNRKB3KKQ1QNbj+a+ajLzvy6myTPfkYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qIgZDXgx; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-515a68d45faso3585700e87.3
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916953; x=1712521753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R1A7wX6hNUy8P/zQgxOCI5nxQ7K8DEqd4NjplmpDLtE=;
        b=qIgZDXgxw4URnqx8LlZbTPWdzJwKNQ4KMJ9SHeJxojjLfFN3iO47x6ez7JfhQ5FO3o
         k+P465Hwl19OpxASz6uYHJvSd9ibg+qC2Y8xtddAFz47HUVCVuFOscQzx2hIFvs1CfYv
         A/n13DrHoZg8eGf559OyFYR0K7WxDWQxftpnBRy7oyTA9cEBmEYkAZg4QNNskSpvermx
         wHHps+W865LE9CB9iEFo8oDbY5yrRCmgaD5n4q1FHqk6QXZnh+DLfKg2HGXxuJ02Tzam
         s05aaG9tZAp/9j6FAA8TGkHFo4eeE/RnEy4hCdwt31bPRDMsRFyezhtY+PbYX0LN3Z6I
         hJ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916953; x=1712521753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1A7wX6hNUy8P/zQgxOCI5nxQ7K8DEqd4NjplmpDLtE=;
        b=d9DV/M/RWR45ZCchhrsArcQyH2B0nnAleJ4DnuqR+8IKpvU3huDefTFYHIbVJnxbyE
         r8vGlqJfzO8wNBF19ZkST9OKUp554V1KGoh2MUbC/IMKx+J4Gw5H6KkFgCCOl9b+1C9z
         G6CoToUvOCR2yFfOgR23ImP5uAdzPmFbgyBjfVmx6/1uLin3vnlGANSBJqNHZizQCvP9
         krQ21aqjPODtN1QT0uG8eSEjBZp9RfoxCMoytVyb3VlxgGUV+3RY6TZWXuGl+Bd7BcDj
         G21Bi5IkYAtZTQLPzk8f3hvRwDJhxVo0ScuA7KT5vKZqjqBWqWIy2GtqJavDj5sRri+7
         HgfA==
X-Forwarded-Encrypted: i=1; AJvYcCXt2MdQ9Oqvlb7SgkHQ/8cq/WewVsNWClnn5g1lqVguPipLCwi6iXiqMXTBQYzMQ4pINcQurOf0479romsGButoDl2S8PzJYb3n6A==
X-Gm-Message-State: AOJu0Yzb/lJXAcyJY5W2dbtFtQX5vmAjsFDbLOv8PKb1ymsZrq7U7sy0
	9YpAbVv0aPU3rt0NS7a2WaXHN/kTvCOz6ZAmAMzRKLJElZVaxYUXXz6iDwc/vUpMqzm/1kc/RYN
	9
X-Google-Smtp-Source: AGHT+IFeEoM8GV8Dslk18QS96m4eggtkhs8tlJAqZBtQtN8yS93vJNhUK8FsHkm5EtHKM8q5pMJXzA==
X-Received: by 2002:a05:6512:526:b0:515:d5c6:16ec with SMTP id o6-20020a056512052600b00515d5c616ecmr3266515lfc.10.1711916953132;
        Sun, 31 Mar 2024 13:29:13 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:06 +0300
Subject: [PATCH v2 09/12] drm/imx: add internal bridge handling
 display-timings DT node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-9-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4905;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=hxbKkqcQVL6lamyV1sJxDUeKsmUL5K/DPfRJzqUHXP0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceP1c/UajzRsbpS3x8XnHVlfzmTQvPuCd3+5
 jTxebl4Y0iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjwAKCRCLPIo+Aiko
 1ZLgCACeDb8Bblu2K94cHFSwyB441Rf7xL7iwtjmzImMhrnu5em43wI2ZsuNUoFKqlPSidDaw1b
 lL5kPJ553MBXYYTUEgb+fFpDyeyC8eSJ7qow+lfpz0LyOz5pUWiDgD6cTMilL8GHjAf/3MfBR1n
 lQ+wavMGNVI/w174nh9+DLZmD2Ff+D5348JS8pFCDKUY+P64euq1jT2rLpcSd4d47so1cFRLIa7
 b3WJKksgA9RE6X/bdihxEzh4LRSu4a5AKHdQYajyGSZytA4d4ghiOmDnNkb7bjRmNYCK3S34bvb
 +fTqx1fpv0rbNJVSm9Xi7z8M+kC5w3NWp8W9qfyyfOo76GSc
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

i.MX DRM DT bindings allow using either a proper panel / bridge graph to
provide information about connected panels, or just a display-timings DT
node, describing just the timings and the flags. Add helper bridge
driver supporting the latter usecase. It will be used by both LDB and
parallel-display drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/imx/Kconfig             | 10 +++
 drivers/gpu/drm/bridge/imx/Makefile            |  1 +
 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c | 85 ++++++++++++++++++++++++++
 include/drm/bridge/imx.h                       | 13 ++++
 4 files changed, 109 insertions(+)

diff --git a/drivers/gpu/drm/bridge/imx/Kconfig b/drivers/gpu/drm/bridge/imx/Kconfig
index 5965e8027529..708faf0b75ae 100644
--- a/drivers/gpu/drm/bridge/imx/Kconfig
+++ b/drivers/gpu/drm/bridge/imx/Kconfig
@@ -3,6 +3,16 @@ if ARCH_MXC || COMPILE_TEST
 config DRM_IMX_LDB_HELPER
 	tristate
 
+config DRM_IMX_LEGACY_BRIDGE
+	tristate
+	depends on DRM_IMX
+	help
+	  This is a DRM bridge implementation for the DRM i.MX IPUv3 driver,
+	  that uses of_get_drm_display_mode to acquire display mode.
+
+	  Newer designs should not use this bridge and should use proper panel
+	  driver instead.
+
 config DRM_IMX8MP_DW_HDMI_BRIDGE
 	tristate "Freescale i.MX8MP HDMI-TX bridge support"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/imx/Makefile b/drivers/gpu/drm/bridge/imx/Makefile
index edb0a7b71b30..dd5d48584806 100644
--- a/drivers/gpu/drm/bridge/imx/Makefile
+++ b/drivers/gpu/drm/bridge/imx/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_DRM_IMX_LDB_HELPER) += imx-ldb-helper.o
+obj-$(CONFIG_DRM_IMX_LEGACY_BRIDGE) += imx-legacy-bridge.o
 obj-$(CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE) += imx8mp-hdmi-tx.o
 obj-$(CONFIG_DRM_IMX8MP_HDMI_PVI) += imx8mp-hdmi-pvi.o
 obj-$(CONFIG_DRM_IMX8QM_LDB) += imx8qm-ldb.o
diff --git a/drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c b/drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
new file mode 100644
index 000000000000..fb3a030928f0
--- /dev/null
+++ b/drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
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
+#include <drm/bridge/imx.h>
+
+#include <video/of_display_timing.h>
+#include <video/of_videomode.h>
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
+       ret = devm_drm_bridge_add(dev, &imx_bridge->base);
+       if (ret)
+               return ERR_PTR(ret);
+
+	return &imx_bridge->base;
+}
+EXPORT_SYMBOL_GPL(devm_imx_drm_legacy_bridge);
diff --git a/include/drm/bridge/imx.h b/include/drm/bridge/imx.h
new file mode 100644
index 000000000000..e14f429a9ca2
--- /dev/null
+++ b/include/drm/bridge/imx.h
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2012 Sascha Hauer, Pengutronix
+ */
+
+#ifndef DRM_IMX_BRIDGE_H
+#define DRM_IMX_BRIDGE_H
+
+struct drm_bridge *devm_imx_drm_legacy_bridge(struct device *dev,
+					      struct device_node *np,
+					      int type);
+
+#endif

-- 
2.39.2


