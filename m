Return-Path: <devicetree+bounces-28143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1F781CDFA
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 18:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 683FE1F21549
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7232C33077;
	Fri, 22 Dec 2023 17:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YAFRndZi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A936E381CF;
	Fri, 22 Dec 2023 17:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33621d443a7so2019738f8f.3;
        Fri, 22 Dec 2023 09:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266956; x=1703871756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTJLdrH0LrbSbPhi76eSCJAOBnRdB++mitsqsoondcw=;
        b=YAFRndZi0g13Jf1g2/ncQ66LWlkNdnlNYu9ecbT3C/YTjPFjpZ9UX06V/9mLMi52jL
         cXLEPpI6FG31C3TX2cl3a65TMycowe7orBPtnZaDBtZGYBfjwzBQmDgp8GlPkg+wZnP1
         wxHvf5hDzrLijHOC9K2VsGH3Zy51F4cMrtrRJdh+pjovzYNIaoCIVUx25bbh8XEs7llG
         IjQxMp+RZGwtcOINMVkXuEynoQ9XiPrznHhAvXPQwBO0+rITmWfcpAtZlscOQFazwLgk
         5HswGgPKNBWfnMR7xkFRBndUSWMlnMeOXvwpNLj+eiunoHBbMy0Nz5zpZoWjt84JH0YN
         ZblQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266956; x=1703871756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nTJLdrH0LrbSbPhi76eSCJAOBnRdB++mitsqsoondcw=;
        b=HEBNz5R9Pua7PYym2XWG7zHJCfkjcmd/ntbhd+MSvL+gis3dtB9ywWnQdS4N3Zj7ao
         c1O6U3YIoGPmpw/ZPr+vglik5kpvIiq+kUtc7oMsmfo6eaN5ASwlJfwEOE1tD9tM2RdR
         nsTGBjqnLj8YGZ6u0XzeaCAaMCHxpP7K53rDW0Pa9q2WXok9jowidPBcXRtDRKQLg/JE
         Ft1tk0ms4tRY3SzRwcOui2NsHmVPkDPgK7Zb0g7y4YNm5QLv/ZWBtR230fEN2S0uKSe9
         j7P41qsxLIbQuY0p/MfZ0qdBo+2gac7qabY/dnJNtOPg9E7qyy6YzCsMVeVVvHA0zzSW
         pQmA==
X-Gm-Message-State: AOJu0YyM7wOuteVQrGeR8Lcgg+lUGle7feYgF4AAdeWHTiNo+otr6Hfl
	evJAzzaDS0rXIdc0cgUmGA==
X-Google-Smtp-Source: AGHT+IH/eqhhQrbQNb9jDPPXogkNUwK+iKCCinjmR4Spd1WlqPNxfwU5vXPt4aNHH23pnHO1bk0eYA==
X-Received: by 2002:adf:b318:0:b0:336:7a35:4115 with SMTP id j24-20020adfb318000000b003367a354115mr868279wrd.0.1703266955745;
        Fri, 22 Dec 2023 09:42:35 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:35 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 19/29] drm/rockchip: inno_hdmi: Subclass connector state
Date: Fri, 22 Dec 2023 18:42:10 +0100
Message-ID: <20231222174220.55249-20-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The data which is currently hold in hdmi_data should not be part of device
itself but of the connector state.
Introduce a connector state subclass and move the data from hdmi_data in
there.

Suggested-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

changes in v3:
 - added missing customizations of reset and atomic_destroy_state connector hooks
 - moved inno_conn_state member assignments to atomic_check

changes in v4:
 - added missing state destroy in reset hook

 drivers/gpu/drm/rockchip/inno_hdmi.c | 117 ++++++++++++++++++++-------
 1 file changed, 90 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index c306db90832a..e43fce968310 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -26,11 +26,6 @@
 
 #include "inno_hdmi.h"
 
-struct hdmi_data_info {
-	unsigned int enc_out_format;
-	unsigned int colorimetry;
-};
-
 struct inno_hdmi_i2c {
 	struct i2c_adapter adap;
 
@@ -52,8 +47,12 @@ struct inno_hdmi {
 
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
+};
 
-	struct hdmi_data_info	hdmi_data;
+struct inno_hdmi_connector_state {
+	struct drm_connector_state	base;
+	unsigned int			enc_out_format;
+	unsigned int			colorimetry;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -68,6 +67,9 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 	return container_of(connector, struct inno_hdmi, connector);
 }
 
+#define to_inno_hdmi_conn_state(conn_state) \
+	container_of_const(conn_state, struct inno_hdmi_connector_state, base)
+
 enum {
 	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
 	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
@@ -246,6 +248,10 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 				      struct drm_display_mode *mode)
 {
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 	union hdmi_infoframe frame;
 	int rc;
 
@@ -257,9 +263,9 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 		return rc;
 	}
 
-	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444)
 		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
-	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
+	else if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV422)
 		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
@@ -269,7 +275,10 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 {
-	struct hdmi_data_info *data = &hdmi->hdmi_data;
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 	int c0_c2_change = 0;
 	int csc_enable = 0;
 	int csc_mode = 0;
@@ -287,7 +296,7 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		v_VIDEO_INPUT_CSP(0);
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
-	if (data->enc_out_format == HDMI_COLORSPACE_RGB) {
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
 		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
 		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
 
@@ -298,15 +307,15 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		return 0;
 	}
 
-	if (data->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
+	if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
+		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
 		}
 	} else {
-		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
+		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
@@ -383,17 +392,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-	u8 vic = drm_match_cea_mode(mode);
-
-	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
-
-	if (vic == 6 || vic == 7 ||
-	    vic == 21 || vic == 22 ||
-	    vic == 2 || vic == 3 ||
-	    vic == 17 || vic == 18)
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -458,10 +456,24 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_connector_state *conn_state)
 {
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
+	u8 vic = drm_match_cea_mode(mode);
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 
 	s->output_mode = ROCKCHIP_OUT_MODE_P888;
 	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
 
+	if (vic == 6 || vic == 7 ||
+	    vic == 21 || vic == 22 ||
+	    vic == 2 || vic == 3 ||
+	    vic == 17 || vic == 18)
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_601;
+	else
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
+
+	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+
 	return 0;
 }
 
@@ -519,13 +531,63 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 	drm_connector_cleanup(connector);
 }
 
+static void
+inno_hdmi_connector_destroy_state(struct drm_connector *connector,
+				  struct drm_connector_state *state)
+{
+	struct inno_hdmi_connector_state *inno_conn_state =
+						to_inno_hdmi_conn_state(state);
+
+	__drm_atomic_helper_connector_destroy_state(&inno_conn_state->base);
+	kfree(inno_conn_state);
+}
+
+static void inno_hdmi_connector_reset(struct drm_connector *connector)
+{
+	struct inno_hdmi_connector_state *inno_conn_state;
+
+	if (connector->state) {
+		inno_hdmi_connector_destroy_state(connector, connector->state);
+		connector->state = NULL;
+	}
+
+	inno_conn_state = kzalloc(sizeof(*inno_conn_state), GFP_KERNEL);
+	if (!inno_conn_state)
+		return;
+
+	__drm_atomic_helper_connector_reset(connector, &inno_conn_state->base);
+
+	inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
+	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+}
+
+static struct drm_connector_state *
+inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
+{
+	struct inno_hdmi_connector_state *inno_conn_state;
+
+	if (WARN_ON(!connector->state))
+		return NULL;
+
+	inno_conn_state = kmemdup(to_inno_hdmi_conn_state(connector->state),
+				  sizeof(*inno_conn_state), GFP_KERNEL);
+
+	if (!inno_conn_state)
+		return NULL;
+
+	__drm_atomic_helper_connector_duplicate_state(connector,
+						      &inno_conn_state->base);
+
+	return &inno_conn_state->base;
+}
+
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 	.fill_modes = inno_hdmi_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.reset = inno_hdmi_connector_reset,
+	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
+	.atomic_destroy_state = inno_hdmi_connector_destroy_state,
 };
 
 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
-- 
2.43.0


