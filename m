Return-Path: <devicetree+bounces-98796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0DF9674C3
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 06:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3D8D284AC0
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 04:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB7013FD99;
	Sun,  1 Sep 2024 04:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S8zuDPVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AB413D51E
	for <devicetree@vger.kernel.org>; Sun,  1 Sep 2024 04:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725163644; cv=none; b=euiIWtOwT+9FzLRah1SyF2t7OcBseoDZ2Fnm23v05Wjwof6gt3M03y1q1IknBp8CZQtlijJvLPdfqYAKWP2kDCCpi/bOk9CvgPHoRIUAibMwMBgJm2LOk2KCTctVTKOdEfLYJWyBgbBqod9epi2Qf5C7qMBzHJxZhF7RYo6AM5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725163644; c=relaxed/simple;
	bh=gQLHbxZ7YqvGpXB1p1t8XiyRzrvBZDrPBVB81RgQmGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wc9pSC7MIFGvWf+3f8Hrln6E2uAq3EqZmwoJaeCfsRDodbTdYXZ+7iS4m/v5yb6RlmAMOw4W9efx9nJ9YAZZR5Rxdzo11zlmkpgCmSEoX9E4HgSAbYAhTdlCvkYmcAAJJ37VMyPJTLWq8aj1psw0NXs5p42TtA1OgSIqTKri4KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=S8zuDPVT; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2d87f34a650so1081904a91.1
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 21:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725163641; x=1725768441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7B0A+gjnynDK46J7Z91Ni0fcqv7iZd2DyUsBegaNPWE=;
        b=S8zuDPVTyNgTPBT5xmfI7JnkR2MPpsEBl2aSzyDE28ke/BJctB9C+R3KUIzEUoWGUt
         XI0UJIUY3OyfFvoCmNKyUgywIoKuAtPmfSetjKg7LNCcoCbLbPqmy4v2Q6g87Z/gahH0
         innRoIpzlwKiIR7BfhtrYZgB5dxmVQ7rQ0EDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725163641; x=1725768441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7B0A+gjnynDK46J7Z91Ni0fcqv7iZd2DyUsBegaNPWE=;
        b=mLgKcN310OeSTRZXTWbZqWnEMRZ+7EvYl1diWn4G0MxhEfIIKtlss+Uelv4Rdn0AlO
         SkZWYbQudTfRKr8Y2Sz6NctKjCfcKRCIJ1JyKX3rGn500O6DDz8ukwWrHmb4pS5i1HUc
         0cPOH7wK39rDIEES3r6BcWH/I1JfAfqf5EaK6ZFtsGJ5t5Cy2ijvO3wh4TBgkpqykgTf
         qTDALTvLP9KzAEYNB1z+RKY1di+/R5/+4y4N+YbCguwW0hMjzAeXyGpRCJYbMxuBGCSG
         WNpxqWnMmQvB+4+aCnKLup/DaURdMRz0itmxaYyQIhHY2GSk785XDKIzHvY1NwvqLaua
         7Nyg==
X-Forwarded-Encrypted: i=1; AJvYcCXZq3l/YXB2fRXS6UoB8QUybkQ6p+El8ydFqZ77RK1TEK9kWDUTWl603i752QKx214EP0t4/pNUfrJV@vger.kernel.org
X-Gm-Message-State: AOJu0YxeCovqmi0asPPu+1qqGmSMq6k7gJxtBbD+2CwutTGmud4nm4nc
	jNZ9q3Mf1Hh56VxyJi9zGO+dmTWwEmJp+iRTdm0wxnQAFPUXd6OUWjlF9lXsvg==
X-Google-Smtp-Source: AGHT+IGSmH/wnxTJNBBOPKMZLyVY9PSbNYj6DYaZsk5ViTxQvzorla6wmYK6YTGx9bSlm2MFyUGXzg==
X-Received: by 2002:a17:90a:d310:b0:2cf:f860:f13b with SMTP id 98e67ed59e1d1-2d86b04e9eemr10621245a91.17.1725163641373;
        Sat, 31 Aug 2024 21:07:21 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d844611384sm8985683a91.27.2024.08.31.21.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 21:07:21 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v4 09/18] drm/bridge: dp_typec: Allow users to hook hpd notify path
Date: Sat, 31 Aug 2024 21:06:47 -0700
Message-ID: <20240901040658.157425-10-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240901040658.157425-1-swboyd@chromium.org>
References: <20240901040658.157425-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The previous patch added support for no-hpd to drm_dp_typec_bridge code.
Allow users of this bridge to hook the HPD notification path of the
bridge chain so that they can be made aware of the connector status
changing. This helps HPD-less users of the bridge inject the HPD state
into their code by using the connector status as a proxy for HPD being
asserted or deasserted.

In particular, this will help Trogdor/Strongbad boards that need to read
the EC's analog mux which steers the DP signal to one or the other USB
type-c ports to figure out which type-c port has HPD asserted.

Cc: Prashant Malani <pmalani@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/gpu/drm/bridge/aux-hpd-bridge.c | 31 +++++++++++++++++++++++++
 include/drm/bridge/aux-bridge.h         |  9 +++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
index 52db36aa190b..8ff8716b2630 100644
--- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -93,6 +93,8 @@ struct drm_dp_typec_bridge_dev {
 	struct auxiliary_device adev;
 	size_t max_lanes;
 	size_t num_typec_ports;
+	void (*hpd_notify)(void *data, enum drm_connector_status status);
+	void *hpd_data;
 };
 
 static inline struct drm_dp_typec_bridge_dev *
@@ -324,6 +326,21 @@ devm_drm_dp_typec_bridge_alloc(struct device *parent, struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(devm_drm_dp_typec_bridge_alloc);
 
+/**
+ * drm_dp_typec_bridge_add_hpd_notify: Register a callback called when the
+ * bridge chain hpd state changes
+ * @typec_bridge_dev: USB type-c DisplayPort bridge
+ * @hpd_notify: callback for bridge hot plug detect events
+ * @hpd_data: data passed to @hpd_notify callback
+ */
+void drm_dp_typec_bridge_add_hpd_notify(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
+					hpd_notify_fn_t hpd_notify, void *hpd_data)
+{
+	typec_bridge_dev->hpd_notify = hpd_notify;
+	typec_bridge_dev->hpd_data = hpd_data;
+}
+EXPORT_SYMBOL_GPL(drm_dp_typec_bridge_add_hpd_notify);
+
 /**
  * devm_drm_dp_typec_bridge_add - register a USB type-c DisplayPort bridge
  * @dev: struct device to tie registration lifetime to
@@ -363,6 +380,19 @@ void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status sta
 }
 EXPORT_SYMBOL_GPL(drm_aux_hpd_bridge_notify);
 
+static void drm_dp_typec_bridge_hpd_notify(struct drm_bridge *bridge,
+					    enum drm_connector_status status)
+{
+	struct drm_dp_typec_bridge_data *data;
+	struct drm_dp_typec_bridge_dev *typec_bridge_dev;
+
+	data = to_drm_dp_typec_bridge_data(bridge);
+	typec_bridge_dev = to_drm_dp_typec_bridge_dev(data->hpd_bridge.dev);
+
+	if (typec_bridge_dev->hpd_notify)
+		typec_bridge_dev->hpd_notify(typec_bridge_dev->hpd_data, status);
+}
+
 static int drm_aux_hpd_bridge_attach(struct drm_bridge *bridge,
 				     enum drm_bridge_attach_flags flags)
 {
@@ -520,6 +550,7 @@ static const struct drm_bridge_funcs drm_dp_typec_bridge_funcs = {
 	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.hpd_notify = drm_dp_typec_bridge_hpd_notify,
 };
 
 static int drm_dp_typec_bridge_orientation_set(struct typec_switch_dev *sw,
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index 73fc8582ec07..300f4a203a9b 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -22,6 +22,8 @@ static inline int drm_aux_bridge_register(struct device *parent)
 
 struct drm_dp_typec_bridge_dev;
 
+typedef void (*hpd_notify_fn_t)(void *data, enum drm_connector_status status);
+
 #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
 struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np);
 int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev);
@@ -30,6 +32,8 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
 void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
 struct drm_dp_typec_bridge_dev *devm_drm_dp_typec_bridge_alloc(struct device *parent,
 							       struct device_node *np);
+void drm_dp_typec_bridge_add_hpd_notify(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
+					hpd_notify_fn_t hpd_notify, void *hpd_data);
 int devm_drm_dp_typec_bridge_add(struct device *dev, struct drm_dp_typec_bridge_dev *typec_bridge_dev);
 #else
 static inline struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent,
@@ -55,6 +59,11 @@ devm_drm_dp_typec_bridge_alloc(struct device *parent, struct device_node *np)
 	return NULL;
 }
 
+static inline void drm_dp_typec_bridge_add_hpd_notify(struct drm_dp_typec_bridge_dev *typec_bridge_dev,
+						      hpd_notify_fn_t hpd_notify, void *hpd_data)
+{
+}
+
 static inline int devm_drm_dp_typec_bridge_add(struct device *dev,
 					       struct drm_dp_typec_bridge_dev *typec_bridge_dev)
 {
-- 
https://chromeos.dev


