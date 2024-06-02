Return-Path: <devicetree+bounces-71584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCC58D752B
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B3F51F21D35
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A349F3B28F;
	Sun,  2 Jun 2024 12:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CsP6pAEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D983839C
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329897; cv=none; b=KwLYwx75cgqRFa06rDhDAed15ATUJcgPWAXJEeHl+TPURlgadbCjwIJe36QLa6RTbjRPc2nIzb+MEiSViLxeMXr454cJ7ci4e+5bGccCihF/tQbjn+lBBvVFyuIkpiITjiyoaEN7vD6lZO1+HVktJmMTvdMbHENRwdwIAt3JTTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329897; c=relaxed/simple;
	bh=5qwH6l5MO1K0SbjK3RylTsbBZG/ntitWTbJUNUocDzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XLkBJOwAmMtV2NBxXK9H8DMBPyHeoS7MYQah1NqxGYS+Ki99Td0y7p6Y3taXy+Juuo8WnlzRtr7n0UN8iQnNRcc+AhrMohPlBUJqA223wu9IUZWNoGN3ZXLVZCgoFUrqXtZMlutcKkeWVQep/YMuNEahnPX9ACFAa1+n0Jh1Cl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CsP6pAEm; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52b894021cbso2608372e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329894; x=1717934694; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YwLGlhS8c4MSDhZlnMfqrMoYx9jr0+buWOu6Q2vrZUo=;
        b=CsP6pAEm/U+TQX8GbLD8zBfvC0oifmN9l7a3PM1wWahafA0llMY6PPqnGEWp3BBTyg
         2JHYYafh13Weu1+2vRdyhRw3QoMe4AFDKcnPl19m34aRMxyA6Vu9ZQyDeNAceb3qzxsu
         n1m5xICaylrYgkaDc/eHF77ykK1NIeWvvZmauInN2b4SXeuuYf4dKSCWKFheBtMQ5H1e
         Ln43JOcx3WHjxTO2LPBTRTcYJZGPZpi8odk5YhwYrORD3Urjrpf7mSH8vLaie2EUoVdD
         8A4yeXeFIkGp9EB9bnrNRkNKXQWVAdAup3JPlwNewD8dFs5/SYQfaRfTtghMfUBXFndC
         M0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329894; x=1717934694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YwLGlhS8c4MSDhZlnMfqrMoYx9jr0+buWOu6Q2vrZUo=;
        b=omu0vIBvym2n/iXynj0DsygLDQzvluZCqiqTlKuKlGys/E6/z6KpNFkNm0v42SZ0HN
         1wk177SUdMgzLeWfipjzoxYOiLY4ejrrJsMaJTZEMFRmLd2SNMfwlNwSNCCmFlbjG3bu
         8/Lcb2ZWqzCda8C7XRbCW1l7OULayXFMcgnYts1PpTOeuc+uWzoB5xjYCh7AipNxR6p7
         VNpO50umNbh2KQPfa/sBx1STvrVU3l2AC9HjXcx9ctmAPsTByvBzbq13iGTa8w53GuJK
         IKBEFgGqOQBfz9SUMpnDQNcjRymWvO/SNCLZYjEFPYjuklR4pPCS9lgvO/ngGOSUDDp6
         MVCg==
X-Forwarded-Encrypted: i=1; AJvYcCVz34PdROcUTIq88V/oOh36A3XBdrdPOqnk7Ok7dgMi0VXh92XhzWSFTHD0S5u/kESTnNZvz9hNaWB1Nr9I/xyZWffy75VEPWdmoA==
X-Gm-Message-State: AOJu0Yw/OiyvWrdFHw35imNhqmC+ocLnqFFRB4YSwYAGytxF/z0dfd11
	Y/3xhwf8AMR8KZvYHzi/ItRSTh+SsKWIB/6+wGEVZQKwg9iEA/nngjqEGsDzZ8Q=
X-Google-Smtp-Source: AGHT+IHQTqu9po4Q58mn5dmh/iNF52AD9wdFkQoRIF/Qt4N/Ulzqw4wOqZkzdJsVft3tRiPNgYeHdg==
X-Received: by 2002:ac2:4556:0:b0:526:81ab:191 with SMTP id 2adb3069b0e04-52b8970078fmr3604279e87.60.1717329894052;
        Sun, 02 Jun 2024 05:04:54 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:49 +0300
Subject: [PATCH v3 09/12] drm/imx: add internal bridge handling
 display-timings DT node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-9-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4905;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5qwH6l5MO1K0SbjK3RylTsbBZG/ntitWTbJUNUocDzw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/d/Fah3CGztXwsM4kY3CMDCT+cEaYdiMGWa
 3/3qeABMJSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3QAKCRCLPIo+Aiko
 1YFGCACQRurwdwe8yveOmxw8xeQgho8g6nkzyJ3kQ+gCq9JB2tSgAze+ZI4VDVW41MZ5u77trMB
 jfxDeC7F4oSTGz0+cvoLiqd5iFxLg7fOsLjLaW0XsFp5HqR2Ujgj69oLKtl3eCZwW93VtLwVjCV
 QF20Qc398qLsZoCWU/DUtwvUYH2kchX/mmQ/gLK9qeM+b8/FuKCix3CWW+BrLY3dWXAy5bxKdFS
 vUdTre5Ulmcdhsz8hpehTUDFyUjcRd3913TosViZUGou2j6GgO3dytGOOZ4mZIuzqodgchDtXBv
 Ma13/Sp4iomIpGUDn+j9HQWTADrjoZgk42vPGI3UD63QZZHP
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
index 8dd89efa8ea7..9a480c6abb85 100644
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


