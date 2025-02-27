Return-Path: <devicetree+bounces-151814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBDBA47312
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:38:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0E48188AA64
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 02:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5E61D63CC;
	Thu, 27 Feb 2025 02:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oio0O6K8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC381D5AA8
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 02:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740623130; cv=none; b=BK+oHoAoORzST6FXdTdrp9eOFsQb5NtCChaeNidP01dO121/ot0wJeOUnR4FApoMOaHB9RE0FF/NvhNBjqhP35X9EwGhc/C0/Tf3hkA5fFXS1fuk/CHyQwvUiq2ElUpH2eisxdAq8sHv7Pv0GFeEspa7WFvVIwtmA3p9e++NRZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740623130; c=relaxed/simple;
	bh=9z1p16IGdhhxiTm15wIHhYzKoRC0TrBbMnzmOx4bB8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W7vjkDqvsA4eCMXoxg/L0KX9Usj3bzLW2UqqxGdjGHEXOTfNv+snaNA5xNxeEOIDWEz3QNLrUQ+KptL+Bc+cDbgRCL8GEMo+12evvSOIzfu/4mNJl3trT93p3nrXOeo7Eq7x6pNEUQYbqXE347M8lLD3X6QpDgjkGnOBhQhgNu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oio0O6K8; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30b83290d39so4075941fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 18:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740623126; x=1741227926; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E18tpw+zq+SBOUnMq7VeJ2wmflhlIp1Qicz+wQlS2Sw=;
        b=oio0O6K8cQOXpBEUS0ld8Ekg+nxugLAcKikUxgfWBrIJw0c8Y5rbW0r6pJ1Kv8aAE8
         xEBKFFGyfRVdLyLsZ36yjFMudTZTUMNnDlJUoZWEUMYy1VHe6RBsmAlXUNNh6g0UdpYW
         RnbBliIbi3Qg0AONKsKT1d71FLFcux0Hx92o1GGICtrWyP+9Bejkcxbq+rgwC/Mo+G+B
         ePazZsV1YUXz8fTvJ7BHF1A2y92fBVuSTF6WKjlkx8vax8FOVEANCXGS80XqWWfFo5P+
         4OB5yNTdsbpWNg6/I5sxQp2i1LDwh1tYFEbGUNTH/vEPjn4/tGAQmdXAzSRM6S0BRrfD
         N54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740623126; x=1741227926;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E18tpw+zq+SBOUnMq7VeJ2wmflhlIp1Qicz+wQlS2Sw=;
        b=MF+E4tXy/0bfW6FxUGmRmSsnkieEOw5JVOQ7QpnK2t7sFai2qjdiPv8XhnDNjVtJgd
         A2h3FEKIaXekS7LopEu3aq+4trQvuOKMBLbuRUVUW5p84O7Z4JT9g4VJlGrRPGpT9tnB
         +4hoUqh5A4vq1uHEr4cwSUXqaAbZul3ZG8cu3y54Wu15HC0nFRP30aeaWM4efU1JNrHu
         rZXaRK1mnRG7Uw6GnYqim1LpTCCr43eKY3RBqAXvf5NBpQ4Vyrtzzs0b10Ef49tasfGM
         gXNZlZFuUR4waoM+VKLl44gkwAu7jaDxNHWWRHxT+ckWIMfdguz4qN2Sedl48LNPbfd+
         s0kw==
X-Forwarded-Encrypted: i=1; AJvYcCXAZeVU1MMbaJRh1OJXvdzBtVSwun7wGSz3ekJ41uQVdbJ08z7ZHYSAWT4/Zg0OAgiC/7gtQi1pMYbF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa4bSEipWn94gcoTnmzGc7l3FKmt29xpw+iUQe0uEOJ3H6lRfj
	+Zx/uqN0sAFYXvWgldYn6yrTusw2SG7sBTv6pbeKOY9A+gj6HIGqVsbo1nXCiPg=
X-Gm-Gg: ASbGncun1rc8WkDw2Vi4D7ZSg1iHckTBM9TaL2uO7eltVRmGwHfCAsVmJR65TRbOoBA
	O6XML96BDEr10fX6sseEFJgSUJzgoc0TJtG+tXW4BEAXPd4m0fy8/BnyIiVopjOqHzFKiJzY6bT
	UIGQ2YeJekQOd5S0b59OvLWMuz2IxwplU5JmxpbFvLhE88Ox8b8Hk27nrTGhLvX3XnvRoEVZtpn
	1BWZRsWAcKMC+Vf18D9yE6TCMTvlI/R5g2Fh2I49dVPHQEbS8h+XYXomOho6LeXNBt7fzu7x+pL
	+A2opLYU1Fi6Ay/j4M0xuMlQxUpdBhXZ0w==
X-Google-Smtp-Source: AGHT+IH6JvW63owJyZ1PeivaBeeBGjJMDrOP0137MVcsa3BSvMkJ++/F3s9OT2J6ygpsST5S+eTgWg==
X-Received: by 2002:a05:6512:3b22:b0:545:60b:f38b with SMTP id 2adb3069b0e04-54838edd919mr10462109e87.8.1740623126477;
        Wed, 26 Feb 2025 18:25:26 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549441742a0sm48067e87.5.2025.02.26.18.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 18:25:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 27 Feb 2025 04:25:13 +0200
Subject: [PATCH v3 5/7] drm/msm/mdp4: move move_valid callback to
 lcdc_encoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-fd-mdp4-lvds-v3-5-c983788987ae@linaro.org>
References: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
In-Reply-To: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4330;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=9z1p16IGdhhxiTm15wIHhYzKoRC0TrBbMnzmOx4bB8I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnv80H9mWNP5xm0U518aEA7MFJlLbfnScNOLNek
 6ngfP55A2CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7/NBwAKCRCLPIo+Aiko
 1TS4B/4jhTAUlM4rgtB8XhTYa1IaFlN4nD5YNisfDQe3RWIPeYXqasBrLgy3wsErfrpwSgbwk9Z
 dqw1eQFoMXtsQY5rCvEBgyDOyUwen61/QK9vPLoCKjkWlZi/9v5zHT3YMX7V2UaqjZb29UTSuNN
 9KdTVUxqtgOYBzGLe7W3IMI5YtBGFuVe+21N2/q3WZ1ddbaFYbYuSCMcbym4iC42bZctMjHTmm7
 wxgXY/Ny8i5fCoeiew39A6P4vYGvzigO2bJDaPFEAFI4yfVw8lpC25+5w1Yi03d2WZv/mmnJMeO
 9y53Z/5Yh/8tu/PRj6tzTwc+b9VtXnp11bYtMffN9wgXQ4eD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

We can check the LCDC clock directly from the LCDC encoder driver, so
remove it from the LVDS connector.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h           |  1 -
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c  | 27 ++++++++++++++++------
 .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    | 21 -----------------
 3 files changed, 20 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
index b8bdc3712c73b14f3547dce3439a895e3d10f193..e0380d3b7e0cee99c4c376bf6369887106f44ede 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
@@ -191,7 +191,6 @@ struct drm_crtc *mdp4_crtc_init(struct drm_device *dev,
 long mdp4_dtv_round_pixclk(struct drm_encoder *encoder, unsigned long rate);
 struct drm_encoder *mdp4_dtv_encoder_init(struct drm_device *dev);
 
-long mdp4_lcdc_round_pixclk(struct drm_encoder *encoder, unsigned long rate);
 struct drm_encoder *mdp4_lcdc_encoder_init(struct drm_device *dev,
 		struct device_node *panel_node);
 
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
index db93795916cdaa87ac8e61d3b44c2dadac10fd9e..cfcedd8a635cf0297365e845ef415a8f0d553183 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
@@ -348,19 +348,32 @@ static void mdp4_lcdc_encoder_enable(struct drm_encoder *encoder)
 	mdp4_lcdc_encoder->enabled = true;
 }
 
+static enum drm_mode_status
+mdp4_lcdc_encoder_mode_valid(struct drm_encoder *encoder,
+		const struct drm_display_mode *mode)
+{
+	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
+			to_mdp4_lcdc_encoder(encoder);
+	long actual, requested;
+
+	requested = 1000 * mode->clock;
+	actual = clk_round_rate(mdp4_lcdc_encoder->lcdc_clk, requested);
+
+	DBG("requested=%ld, actual=%ld", requested, actual);
+
+	if (actual != requested)
+		return MODE_CLOCK_RANGE;
+
+	return MODE_OK;
+}
+
 static const struct drm_encoder_helper_funcs mdp4_lcdc_encoder_helper_funcs = {
 	.mode_set = mdp4_lcdc_encoder_mode_set,
 	.disable = mdp4_lcdc_encoder_disable,
 	.enable = mdp4_lcdc_encoder_enable,
+	.mode_valid = mdp4_lcdc_encoder_mode_valid,
 };
 
-long mdp4_lcdc_round_pixclk(struct drm_encoder *encoder, unsigned long rate)
-{
-	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
-			to_mdp4_lcdc_encoder(encoder);
-	return clk_round_rate(mdp4_lcdc_encoder->lcdc_clk, rate);
-}
-
 /* initialize encoder */
 struct drm_encoder *mdp4_lcdc_encoder_init(struct drm_device *dev,
 		struct device_node *panel_node)
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
index 52e728181b523cc3380d7718b5956e7e2dbd4cad..4755eb13ef79f313d2be088145c8cd2e615226fe 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
@@ -56,26 +56,6 @@ static int mdp4_lvds_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
-static enum drm_mode_status
-mdp4_lvds_connector_mode_valid(struct drm_connector *connector,
-			       const struct drm_display_mode *mode)
-{
-	struct mdp4_lvds_connector *mdp4_lvds_connector =
-			to_mdp4_lvds_connector(connector);
-	struct drm_encoder *encoder = mdp4_lvds_connector->encoder;
-	long actual, requested;
-
-	requested = 1000 * mode->clock;
-	actual = mdp4_lcdc_round_pixclk(encoder, requested);
-
-	DBG("requested=%ld, actual=%ld", requested, actual);
-
-	if (actual != requested)
-		return MODE_CLOCK_RANGE;
-
-	return MODE_OK;
-}
-
 static const struct drm_connector_funcs mdp4_lvds_connector_funcs = {
 	.detect = mdp4_lvds_connector_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
@@ -87,7 +67,6 @@ static const struct drm_connector_funcs mdp4_lvds_connector_funcs = {
 
 static const struct drm_connector_helper_funcs mdp4_lvds_connector_helper_funcs = {
 	.get_modes = mdp4_lvds_connector_get_modes,
-	.mode_valid = mdp4_lvds_connector_mode_valid,
 };
 
 /* initialize connector */

-- 
2.39.5


