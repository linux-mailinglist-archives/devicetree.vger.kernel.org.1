Return-Path: <devicetree+bounces-137262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD17A086A4
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 06:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAAD81691D7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C602066FF;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lyzx8Bs0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676AF2066E2;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487596; cv=none; b=Wgiv0FGjzyCGmPVoJ7juEPcU6F9CFEK3/bSADzZORnok8FJ5+uAidBOHseZoq6uDbM+Cez2okkY/GIxxDAfthn8jJs/odlCJxNUxEh/1lY5nwF5JLOwByOenIojq52EyCVsGsAQGwtsC/rY4LvFWn3CT6rKWo966DYYvJdFZ0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487596; c=relaxed/simple;
	bh=Nw1GxRUZam/tq1vSGi+OXpPMqcHfCVLgLJI8d7Bm8Ss=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c3XFYO/KtwjpBOiZYgQw41AEhpQYpkc8FVezhSSXBB4x18zkDIge0tMmnDt9HMVLwd4XGSmWhvgstaLrpLBkY6jySuUveJqoZwcMIAHk6gwtgYfd+Xhm2wQh6aLX9dq5ooyWmaVolnuSoAp1irgD/Z+a4SaCGzJbKz7CVFyte+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lyzx8Bs0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D632C4CEF4;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487596;
	bh=Nw1GxRUZam/tq1vSGi+OXpPMqcHfCVLgLJI8d7Bm8Ss=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Lyzx8Bs0LMkl7ToDa678dSB5Vn2hxa8GDCPwbeBZ6mX5/BYo43fahJC5GKjAk5x1h
	 QRbPEdgQt/bC3XBBkyGXhKHbxjApUI65GChYU+mrol8CUDMJUmP4vyAcinea5tMjD5
	 /P8BP+W2cI7uMDwYolgCKbjol4WGtPgaUMxWu9dYqkFKPSicGm0d6F8u4hClV9uAFI
	 wPo8IlZazFrzNT86KU5mf85lkJ/qIS+7zD4L9QqSx+2iaDTBv9ih4/+fhG4IwYhGS8
	 +Qy8FRQxlcO3a0m3k1npsWkJR1l7eWUFzIuBvBX9BS8EnkXK08/UEkWHaWjd5jphyX
	 AVrPQHCxlQ1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 047C1E7719C;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
From: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Date: Fri, 10 Jan 2025 13:39:57 +0800
Subject: [PATCH 07/11] drm: meson: change api call parameter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250110-drm-s4-v1-7-cbc2d5edaae8@amlogic.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ao Xu <ao.xu@amlogic.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736487593; l=6404;
 i=ao.xu@amlogic.com; s=20250103; h=from:subject:message-id;
 bh=4USay3QtDuRbS8FCpdm9MAw33ZXb1TEINIc05tyQlYM=;
 b=VIGGkrGrVQnJ7yCira+Tj6lvZDk0IICJyvIkw2pXvabnZW9xtixF5K9TEzYjPmA2f2/77B6HH
 qiJXrflCXR7CwEKWaFqO3ADDBw83QA/T5qDaWHC25lkLeHHYbzukJQr
X-Developer-Key: i=ao.xu@amlogic.com; a=ed25519;
 pk=c0TSXrwQuL4EhPVf3lJ676U27ax2yfFTqmRoseP/fA8=
X-Endpoint-Received: by B4 Relay for ao.xu@amlogic.com/20250103 with
 auth_id=308
X-Original-From: Ao Xu <ao.xu@amlogic.com>
Reply-To: ao.xu@amlogic.com

From: Ao Xu <ao.xu@amlogic.com>

Adjust the parameters passed to specific API calls in the
Meson HDMI encoder to align with hardware requirements.
Configure VCLK to use double pixels for
480p and 576p resolutions in the Amlogic S4.

Signed-off-by: Ao Xu <ao.xu@amlogic.com>
---
 drivers/gpu/drm/meson/meson_encoder_hdmi.c | 19 +++++++++++++++----
 drivers/gpu/drm/meson/meson_venc.c         | 12 ++++++------
 drivers/gpu/drm/meson/meson_venc.h         |  4 ++--
 3 files changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_encoder_hdmi.c b/drivers/gpu/drm/meson/meson_encoder_hdmi.c
index 0593a1cde906ffab10c010c40942fb910059b2ab..5fde4cfc79ad66d3bb6c15cedce536f1346fce34 100644
--- a/drivers/gpu/drm/meson/meson_encoder_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_encoder_hdmi.c
@@ -98,7 +98,7 @@ static void meson_encoder_hdmi_set_vclk(struct meson_encoder_hdmi *encoder_hdmi,
 	hdmi_freq = vclk_freq;
 
 	/* VENC double pixels for 1080i, 720p and YUV420 modes */
-	if (meson_venc_hdmi_venc_repeat(vic) ||
+	if (meson_venc_hdmi_venc_repeat(priv, vic) ||
 	    encoder_hdmi->output_bus_fmt == MEDIA_BUS_FMT_UYYVYY8_0_5X24)
 		venc_freq *= 2;
 
@@ -107,6 +107,11 @@ static void meson_encoder_hdmi_set_vclk(struct meson_encoder_hdmi *encoder_hdmi,
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		venc_freq /= 2;
 
+	/* VCLK double pixels for 480p and 576p on S4 */
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
+		if (vic == 2 || vic == 3 || vic == 17 || vic == 18)
+			vclk_freq *= 2;
+
 	dev_dbg(priv->dev, "vclk:%d phy=%d venc=%d hdmi=%d enci=%d\n",
 		phy_freq, vclk_freq, venc_freq, hdmi_freq,
 		priv->venc.hdmi_use_enci);
@@ -146,7 +151,7 @@ static enum drm_mode_status meson_encoder_hdmi_mode_valid(struct drm_bridge *bri
 
 		return meson_vclk_dmt_supported_freq(priv, mode->clock);
 	/* Check against supported VIC modes */
-	} else if (!meson_venc_hdmi_supported_vic(vic))
+	} else if (!meson_venc_hdmi_supported_vic(priv, vic))
 		return MODE_BAD;
 
 	vclk_freq = mode->clock;
@@ -168,7 +173,7 @@ static enum drm_mode_status meson_encoder_hdmi_mode_valid(struct drm_bridge *bri
 	hdmi_freq = vclk_freq;
 
 	/* VENC double pixels for 1080i, 720p and YUV420 modes */
-	if (meson_venc_hdmi_venc_repeat(vic) ||
+	if (meson_venc_hdmi_venc_repeat(priv, vic) ||
 	    drm_mode_is_420_only(display_info, mode) ||
 	    (!is_hdmi2_sink &&
 	     drm_mode_is_420_also(display_info, mode)))
@@ -179,6 +184,11 @@ static enum drm_mode_status meson_encoder_hdmi_mode_valid(struct drm_bridge *bri
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		venc_freq /= 2;
 
+	/* VCLK double pixels for 480p and 576p on S4 */
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
+		if (vic == 2 || vic == 3 || vic == 17 || vic == 18)
+			vclk_freq *= 2;
+
 	dev_dbg(priv->dev, "%s: vclk:%d phy=%d venc=%d hdmi=%d\n",
 		__func__, phy_freq, vclk_freq, venc_freq, hdmi_freq);
 
@@ -444,7 +454,8 @@ int meson_encoder_hdmi_probe(struct meson_drm *priv)
 
 	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL) ||
 	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
-	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
+	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
 		drm_connector_attach_hdr_output_metadata_property(meson_encoder_hdmi->connector);
 
 	drm_connector_attach_max_bpc_property(meson_encoder_hdmi->connector, 8, 8);
diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
index 3bf0d6e4fc30ae1e06f6ba77157325af416c786f..5c461b27ae49317d8f430dc55606c8e11a536240 100644
--- a/drivers/gpu/drm/meson/meson_venc.c
+++ b/drivers/gpu/drm/meson/meson_venc.c
@@ -878,7 +878,7 @@ meson_venc_hdmi_supported_mode(const struct drm_display_mode *mode)
 }
 EXPORT_SYMBOL_GPL(meson_venc_hdmi_supported_mode);
 
-bool meson_venc_hdmi_supported_vic(int vic)
+bool meson_venc_hdmi_supported_vic(struct meson_drm *priv, int vic)
 {
 	struct meson_hdmi_venc_vic_mode *vmode = meson_hdmi_venc_vic_modes;
 
@@ -917,7 +917,7 @@ static void meson_venc_hdmi_get_dmt_vmode(const struct drm_display_mode *mode,
 	dmt_mode->encp.max_lncnt = mode->vtotal - 1;
 }
 
-static union meson_hdmi_venc_mode *meson_venc_hdmi_get_vic_vmode(int vic)
+static union meson_hdmi_venc_mode *meson_venc_hdmi_get_vic_vmode(struct meson_drm *priv, int vic)
 {
 	struct meson_hdmi_venc_vic_mode *vmode = meson_hdmi_venc_vic_modes;
 
@@ -930,7 +930,7 @@ static union meson_hdmi_venc_mode *meson_venc_hdmi_get_vic_vmode(int vic)
 	return NULL;
 }
 
-bool meson_venc_hdmi_venc_repeat(int vic)
+bool meson_venc_hdmi_venc_repeat(struct meson_drm *priv, int vic)
 {
 	/* Repeat VENC pixels for 480/576i/p, 720p50/60 and 1080p50/60 */
 	if (vic == 6 || vic == 7 || /* 480i */
@@ -989,8 +989,8 @@ void meson_venc_hdmi_mode_set(struct meson_drm *priv, int vic,
 		venc_hdmi_latency = 1;
 	}
 
-	if (meson_venc_hdmi_supported_vic(vic)) {
-		vmode = meson_venc_hdmi_get_vic_vmode(vic);
+	if (meson_venc_hdmi_supported_vic(priv, vic)) {
+		vmode = meson_venc_hdmi_get_vic_vmode(priv, vic);
 		if (!vmode) {
 			dev_err(priv->dev, "%s: Fatal Error, unsupported mode "
 				DRM_MODE_FMT "\n", __func__,
@@ -1004,7 +1004,7 @@ void meson_venc_hdmi_mode_set(struct meson_drm *priv, int vic,
 	}
 
 	/* Repeat VENC pixels for 480/576i/p, 720p50/60 and 1080p50/60 */
-	if (meson_venc_hdmi_venc_repeat(vic))
+	if (meson_venc_hdmi_venc_repeat(priv, vic))
 		venc_repeat = true;
 
 	eof_lines = mode->vsync_start - mode->vdisplay;
diff --git a/drivers/gpu/drm/meson/meson_venc.h b/drivers/gpu/drm/meson/meson_venc.h
index 0f59adb1c6db08ca39d0c556875cf5d0d8df430a..7cc6841f633048364c9880f5d1f0e18e3056c9f8 100644
--- a/drivers/gpu/drm/meson/meson_venc.h
+++ b/drivers/gpu/drm/meson/meson_venc.h
@@ -54,8 +54,8 @@ void meson_encl_load_gamma(struct meson_drm *priv);
 /* HDMI Clock parameters */
 enum drm_mode_status
 meson_venc_hdmi_supported_mode(const struct drm_display_mode *mode);
-bool meson_venc_hdmi_supported_vic(int vic);
-bool meson_venc_hdmi_venc_repeat(int vic);
+bool meson_venc_hdmi_supported_vic(struct meson_drm *priv, int vic);
+bool meson_venc_hdmi_venc_repeat(struct meson_drm *priv, int vic);
 
 /* CVBS Timings and Parameters */
 extern struct meson_cvbs_enci_mode meson_cvbs_enci_pal;

-- 
2.43.0



