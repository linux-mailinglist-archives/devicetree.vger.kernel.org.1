Return-Path: <devicetree+bounces-131892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C069F4DD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 15:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D92D167482
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26991F7568;
	Tue, 17 Dec 2024 14:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ImKvhuDn"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317741F5436;
	Tue, 17 Dec 2024 14:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734445948; cv=none; b=nkmfSIzVKvxrLgByTRxerxwqmgYkB0Y9v8fg3taEKNS//FjYy761ujMw+ahS0cckueDZ13aFn6vqlQFihrwJGguwJFy3OxkL3h96PlZZklOiJQdSW+503HR5awqiLA0M+XZ1hhq44oxXXm7WnWD/jDTVLJcgcx/wnZVGRKZAu8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734445948; c=relaxed/simple;
	bh=gnF2nWFXUzaKb3LUJagx/pjltPQyV0xRQbJCY4AOqPk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p1ZjBDDEIyfZAirrL+TD0zovbQEwp7CPXzO2EyI6lYqtsF2SNxXFnXdPsOUv72cvYJpLeJKSiVNrNB24bPyAPEwa+puzVfYaxG6hwg0MYohTsWyS+c3qeIqtRsNjhRRzq31RCIDFZkENNu7jWtC1wutcDJyHFFxGF8IMl9brFa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ImKvhuDn; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 49B4E1C0006;
	Tue, 17 Dec 2024 14:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1734445944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rOl01A0J4zS7bD55OnoODRpUmSiylYagae5vOcM5HKw=;
	b=ImKvhuDnPDoKcXobBysVBrEa9VgE2Nf6ioyie6UIkaxC/XIFP46oYDbB2lvvdNMSs6p4YX
	4vFvmyXI1ukivifVU/TkscmfGoLsyPBoaEmP9qyGT0kBvbfT8nIHyPIubr+mobE0MHSrhD
	ffQbpngYAQ0o1Ev2c+D+tS8rasnTB51lVKEeWZ6WWcAADbrRJyBQZ4/OWhKwirJPiaigKX
	k5g8g6hDqfZOGYsS1OW1g24mL+STytWnzPz2gcrW8BGcQHtLGRrsYt6uSjjj4FqjODUB7/
	pYuMyQw/P0VbiEIYIjQ8fmEm6nkKXp9Q+H4uC7zoY2mttZAFaHclOS0mDMtQ4g==
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
Subject: [PATCH v2 2/3] drm/atomic-helpers: Introduce drm_atomic_helper_disable_connector()
Date: Tue, 17 Dec 2024 15:32:14 +0100
Message-ID: <20241217143216.658461-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241217143216.658461-1-herve.codina@bootlin.com>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

drm_atomic_helper_disable_connector() disables a connector taking care
of disabling the CRTC as well if the disabled connector was the only one
connector connected to the CRTC.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/gpu/drm/drm_atomic_helper.c | 67 +++++++++++++++++++++++++++++
 include/drm/drm_atomic_helper.h     |  2 +
 2 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 8ed186ddaeaf..1d691cbb047e 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -3279,6 +3279,73 @@ int drm_atomic_helper_set_config(struct drm_mode_set *set,
 }
 EXPORT_SYMBOL(drm_atomic_helper_set_config);
 
+/**
+ * drm_atomic_helper_disable_connector - disable connector
+ * @connector: connector to disable
+ * @ctx: lock acquisition context
+ *
+ * Turn off the given connector by setting its DPMS mode to off.
+ * Also deactivate the CRTC is this connector was the only one connected to the
+ * CRTC.
+ *
+ * Note that if callers haven't already acquired all modeset locks this might
+ * return -EDEADLK, which must be handled by calling drm_modeset_backoff().
+ *
+ * Returns:
+ * 0 on success or a negative error code on failure.
+ */
+int drm_atomic_helper_disable_connector(struct drm_connector *connector,
+					struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_connector_state *connector_state;
+	struct drm_crtc_state *crtc_state;
+	struct drm_atomic_state *state;
+	struct drm_crtc *crtc;
+	int ret;
+
+	state = drm_atomic_state_alloc(connector->dev);
+	if (!state)
+		return -ENOMEM;
+
+	state->acquire_ctx = ctx;
+
+	connector_state = drm_atomic_get_connector_state(state, connector);
+	if (IS_ERR(connector_state)) {
+		ret = PTR_ERR(connector_state);
+		goto end;
+	}
+
+	crtc = connector_state->crtc;
+
+	ret = drm_atomic_set_crtc_for_connector(connector_state, NULL);
+	if (ret < 0)
+		goto end;
+
+	crtc_state = drm_atomic_get_crtc_state(state, crtc);
+	if (IS_ERR(crtc_state)) {
+		ret = PTR_ERR(crtc_state);
+		goto end;
+	}
+
+	if (!crtc_state->connector_mask) {
+		/*
+		 * The only one connector from the crtc has
+		 * been disabled -> Disable the CRTC too
+		 */
+		ret = drm_atomic_set_mode_prop_for_crtc(crtc_state, NULL);
+		if (ret < 0)
+			goto end;
+
+		crtc_state->active = false;
+	}
+
+	ret = drm_atomic_commit(state);
+end:
+	drm_atomic_state_put(state);
+	return ret;
+}
+EXPORT_SYMBOL(drm_atomic_helper_disable_connector);
+
 /**
  * drm_atomic_helper_disable_all - disable all currently active outputs
  * @dev: DRM device
diff --git a/include/drm/drm_atomic_helper.h b/include/drm/drm_atomic_helper.h
index 9aa0a05aa072..923a354577a3 100644
--- a/include/drm/drm_atomic_helper.h
+++ b/include/drm/drm_atomic_helper.h
@@ -137,6 +137,8 @@ int drm_atomic_helper_disable_plane(struct drm_plane *plane,
 int drm_atomic_helper_set_config(struct drm_mode_set *set,
 				 struct drm_modeset_acquire_ctx *ctx);
 
+int drm_atomic_helper_disable_connector(struct drm_connector *connector,
+					struct drm_modeset_acquire_ctx *ctx);
 int drm_atomic_helper_disable_all(struct drm_device *dev,
 				  struct drm_modeset_acquire_ctx *ctx);
 void drm_atomic_helper_shutdown(struct drm_device *dev);
-- 
2.47.0


