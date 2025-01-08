Return-Path: <devicetree+bounces-136535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A45A057E8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA7E218869F0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC051F8670;
	Wed,  8 Jan 2025 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="U0xpEIy0"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5491B3938;
	Wed,  8 Jan 2025 10:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736331567; cv=none; b=SjUZg4SYnM8zqdPZ+B7WxwL+1fuSu4nNKGL+n4PYKpINcft/SP2kAHnVXCpxAertgX6fPyqRCKHuvRiIE9VHuziJ7LL70CUJZbqs1bpIbdTii277XuMj3nPwwm9dr/KDnDnt8H9/YWMltlvpFB4rDw1j/RoxkaeW18Jt/z2fBq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736331567; c=relaxed/simple;
	bh=NxenpbW71x7OH6i+kNYGagbL8btyj/ql1HoLl2PnT/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JYwkmDQNQvbI/Kx3sBWq2Ihk0YAx+HPysiSHD0vz0Zgy73PbLWGMIj14UsqC+Hu2PWZ/WM6kDRepzO5EtDX5fvObDWWVu24YtM/xfJVy3TGKRCOB8TySjHVqEIRVQTzP8WahIbEK4t/NbWeW2WTJL3casqakzK3Ee/gCOGt7DMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=U0xpEIy0; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 8B88BFF812;
	Wed,  8 Jan 2025 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736331563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kh3U5m3wgK1XtUfGpSG9EzD3sFoAQ0yf6CZ/vPhNOfc=;
	b=U0xpEIy0IvTo7jyCszT8zlGUXTfYiGZeypKc2E/C4cSDyQzgYpxYb3KMZtN7PZ8hbAc3Kf
	tLWR1W/EJSCfn1wrUY8lnOQQTwhROTFckSw7cJUHDGtlTNYz5dE35zwBTa5kEXQ2FtJ/cM
	SlgY5dG0DLfNiAwacgDHC0qtBMQxx/Lxl/5wp/FYa1V2kx92ReYDrG149BkgO8R/CnZACP
	Aee4MJSJzJI++JXWaIeVWwc80ieWAjHgMsvWAyDiTj+2ef3L7yyhYNi3ZnKHVp09mxjBMA
	xjx+oxYfnAlBcB7X06TyRgIfRZ1vbbn4W4ZYo/m+20GUr4plfcKc27ZgTzy+DA==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v3 2/3] drm/vc4: Move reset_pipe() to an atomic helper
Date: Wed,  8 Jan 2025 11:19:01 +0100
Message-ID: <20250108101907.410456-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250108101907.410456-1-herve.codina@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

reset_pipe() allows to reset the CRTC active outputs.

In order to use it from other drivers without code duplication, move it
to an atomic helper without any functional changes.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/gpu/drm/drm_atomic_helper.c | 41 +++++++++++++++++++++++++++++
 drivers/gpu/drm/vc4/vc4_hdmi.c      | 30 +--------------------
 include/drm/drm_atomic_helper.h     |  2 ++
 3 files changed, 44 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 8ed186ddaeaf..4225b814ea35 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -3363,6 +3363,47 @@ int drm_atomic_helper_disable_all(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_atomic_helper_disable_all);
 
+/**
+ * drm_atomic_helper_reset_pipe - reset the active outputs of a CRTC
+ * @crtc: DRM CRTC
+ * @ctx: lock acquisition context
+ *
+ * Reset the active outputs by indicating that connectors have changed.
+ * This implies a reset of all active components available between the CRTC and
+ * connectors.
+ *
+ * Returns:
+ * 0 on success or a negative error code on failure.
+ */
+int drm_atomic_helper_reset_pipe(struct drm_crtc *crtc,
+				 struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_atomic_state *state;
+	struct drm_crtc_state *crtc_state;
+	int ret;
+
+	state = drm_atomic_state_alloc(crtc->dev);
+	if (!state)
+		return -ENOMEM;
+
+	state->acquire_ctx = ctx;
+
+	crtc_state = drm_atomic_get_crtc_state(state, crtc);
+	if (IS_ERR(crtc_state)) {
+		ret = PTR_ERR(crtc_state);
+		goto out;
+	}
+
+	crtc_state->connectors_changed = true;
+
+	ret = drm_atomic_commit(state);
+out:
+	drm_atomic_state_put(state);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_atomic_helper_reset_pipe);
+
 /**
  * drm_atomic_helper_shutdown - shutdown all CRTC
  * @dev: DRM device
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index e3818c48c9b8..19f6592a8cc5 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -269,34 +269,6 @@ static void vc4_hdmi_cec_update_clk_div(struct vc4_hdmi *vc4_hdmi)
 static void vc4_hdmi_cec_update_clk_div(struct vc4_hdmi *vc4_hdmi) {}
 #endif
 
-static int reset_pipe(struct drm_crtc *crtc,
-			struct drm_modeset_acquire_ctx *ctx)
-{
-	struct drm_atomic_state *state;
-	struct drm_crtc_state *crtc_state;
-	int ret;
-
-	state = drm_atomic_state_alloc(crtc->dev);
-	if (!state)
-		return -ENOMEM;
-
-	state->acquire_ctx = ctx;
-
-	crtc_state = drm_atomic_get_crtc_state(state, crtc);
-	if (IS_ERR(crtc_state)) {
-		ret = PTR_ERR(crtc_state);
-		goto out;
-	}
-
-	crtc_state->connectors_changed = true;
-
-	ret = drm_atomic_commit(state);
-out:
-	drm_atomic_state_put(state);
-
-	return ret;
-}
-
 static int vc4_hdmi_reset_link(struct drm_connector *connector,
 			       struct drm_modeset_acquire_ctx *ctx)
 {
@@ -375,7 +347,7 @@ static int vc4_hdmi_reset_link(struct drm_connector *connector,
 	 * would be perfectly happy if were to just reconfigure
 	 * the SCDC settings on the fly.
 	 */
-	return reset_pipe(crtc, ctx);
+	return drm_atomic_helper_reset_pipe(crtc, ctx);
 }
 
 static void vc4_hdmi_handle_hotplug(struct vc4_hdmi *vc4_hdmi,
diff --git a/include/drm/drm_atomic_helper.h b/include/drm/drm_atomic_helper.h
index 9aa0a05aa072..56eb6881cfb2 100644
--- a/include/drm/drm_atomic_helper.h
+++ b/include/drm/drm_atomic_helper.h
@@ -139,6 +139,8 @@ int drm_atomic_helper_set_config(struct drm_mode_set *set,
 
 int drm_atomic_helper_disable_all(struct drm_device *dev,
 				  struct drm_modeset_acquire_ctx *ctx);
+int drm_atomic_helper_reset_pipe(struct drm_crtc *crtc,
+				 struct drm_modeset_acquire_ctx *ctx);
 void drm_atomic_helper_shutdown(struct drm_device *dev);
 struct drm_atomic_state *
 drm_atomic_helper_duplicate_state(struct drm_device *dev,
-- 
2.47.1


