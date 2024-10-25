Return-Path: <devicetree+bounces-115790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7E89B0B48
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:24:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D88F3B210C6
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA054226B77;
	Fri, 25 Oct 2024 17:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="HFG+NmJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21C5224419
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876584; cv=none; b=P8ynbUJ3JVRtKnfcTY1LpA2x0hnxeotbVX8eVlXoLMUV8DR9t7jzwNUr2U6GUepn2KVBuRntQ92xBCLm746YNf9LgjLx7pmfs+tYFBkrZYqPjZxk4OzVk8Ju5o9pKhasV8pLq5Y/ngK/c2pC2BO2Ane8a6W/6WFl9l+H/ttLuUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876584; c=relaxed/simple;
	bh=/fZbiJa32QaV9GAfZrCbLMGxOZWrhiFrgBpZ8pW1tyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tSUahSVLqRd3i/YjVjT1ypSyZODrRXb2cWTAjLV5Vy+3VXrVlY4p9LFIcJD4o2W0mnSyPGmSr+kOMMas65LH+kpPVlcMhYcIJw39cXjczUuut5ia0GmsZzNf89ljndrv/I4KZgKtK7gzFaSMsiBASLOSh76svjihV5DEWYNvdt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=HFG+NmJy; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d538fe5f2so1566343f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876573; x=1730481373; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GDWNCHVQarSF1EEwfXlfq36u8DqCBP9Z5agqC+LawY=;
        b=HFG+NmJytEvsXMs9zycu9NAvr6IQzfrlgH8KSGlie/acgGw3fjgkfcKITod1Qdr6Ac
         aolvzMlynhKn0tM36QQfIU1j8xwbjK1d6rqyBFJeEEatFtPgFqn77KVj23G/Kv3btyDe
         WSbho2lIKtK+g5lOnKZRNf855r4G3L/E3SPk7RhMYn0fZxQHKp0oyVS6KGvFLkxqI8iT
         6ZksuE60vgHww+q0CX3Jf1mapxxA0GjG8k8lUk/Q+byn4nzxOsZMcSe4Rm1AypRczxYk
         R6f9B2Ta6Gx7lZgN7xHDKZ/2PfLqiFz/OM1cfL+1ESLUM46IygHh3ORplVU5XhZsgbWT
         ByIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876573; x=1730481373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GDWNCHVQarSF1EEwfXlfq36u8DqCBP9Z5agqC+LawY=;
        b=nCZO94CneoDsIGf4T+NnS9SbRTAKWF+2XZbEFsj0WPgAQ/2wBXq+aUN+PSBqdrY/NV
         kFAIzXvyk5dD0mMpBcBR6ufqldJx6KRzZfXiMyi0eCEG2KIVUi86Jr3S1xNi3oyQOmjO
         4t6LdI2GXuyt4PJohuQTQPgXIJL8iI5AKjW7oconIVDHnh13AHfS9hQ8XaYUUf4nXZdn
         AoxXZWNu9MzctdKpUTcnuy0SGZmzkVmQISda6pHseJgvqxiTpdOinX/96ze2He1/JLHe
         nAGMnsbU1tcaoosIkby1Yv6WC8PgVoFnr0YEqFVXjVeBaxvnqG5hF+ydU/otuyZbVRo7
         D09w==
X-Forwarded-Encrypted: i=1; AJvYcCUiDXAlcqro9+WhjXAyukUIG6MXpkP195YakfxhmWRD8kpkMEBsIiXdfuhPucFLl9h0LoL2AsdN4I7l@vger.kernel.org
X-Gm-Message-State: AOJu0YwQSDhZMmknOPKWspnP5BFKa+EtcjbHibc1NsPkQgLCOlfC4odP
	ElZLeS8dpEH+sDAG3G3N8VFHIkhVVQtpM50ddUSMi9sAnrvegs27NLJCEk/eH34=
X-Google-Smtp-Source: AGHT+IEY2w+9TLfBawykLbvXXppNoMF/sZiP+gnb+g1AcZiAXcJNlN8xeoUfAV01MsYrcLak/HBITg==
X-Received: by 2002:a05:6000:bd0:b0:368:37ac:3f95 with SMTP id ffacd0b85a97d-380611850a0mr133306f8f.31.1729876573071;
        Fri, 25 Oct 2024 10:16:13 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:12 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:43 +0100
Subject: [PATCH v2 12/36] drm/vc4: hdmi: Add support for BCM2712 HDMI
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-12-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The HDMI controllers found in the BCM2712 are largely the ones found in
the BCM2711 with a different PHY.

There's some difference with how timings are split between registers,
and HDMI1 is now able to run at 4k/60Hz.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c      |  88 ++++-
 drivers/gpu/drm/vc4/vc4_hdmi.h      |   4 +
 drivers/gpu/drm/vc4/vc4_hdmi_phy.c  | 640 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/vc4/vc4_hdmi_regs.h | 217 ++++++++++++
 4 files changed, 943 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 62b82b1eeb36..1456966732ec 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -845,6 +845,7 @@ static void vc4_hdmi_encoder_post_crtc_disable(struct drm_encoder *encoder,
 {
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct drm_device *drm = vc4_hdmi->connector.dev;
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	unsigned long flags;
 	int idx;
 
@@ -861,14 +862,25 @@ static void vc4_hdmi_encoder_post_crtc_disable(struct drm_encoder *encoder,
 
 	HDMI_WRITE(HDMI_VID_CTL, HDMI_READ(HDMI_VID_CTL) | VC4_HD_VID_CTL_CLRRGB);
 
+	if (vc4->gen >= VC4_GEN_6_C)
+		HDMI_WRITE(HDMI_VID_CTL, HDMI_READ(HDMI_VID_CTL) |
+			   VC4_HD_VID_CTL_BLANKPIX);
+
 	spin_unlock_irqrestore(&vc4_hdmi->hw_lock, flags);
 
 	mdelay(1);
 
-	spin_lock_irqsave(&vc4_hdmi->hw_lock, flags);
-	HDMI_WRITE(HDMI_VID_CTL,
-		   HDMI_READ(HDMI_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
-	spin_unlock_irqrestore(&vc4_hdmi->hw_lock, flags);
+	/*
+	 * TODO: This should work on BCM2712, but doesn't for some
+	 * reason and result in a system lockup.
+	 */
+	if (vc4->gen < VC4_GEN_6_C) {
+		spin_lock_irqsave(&vc4_hdmi->hw_lock, flags);
+		HDMI_WRITE(HDMI_VID_CTL,
+			   HDMI_READ(HDMI_VID_CTL) &
+			   ~VC4_HD_VID_CTL_ENABLE);
+		spin_unlock_irqrestore(&vc4_hdmi->hw_lock, flags);
+	}
 
 	vc4_hdmi_disable_scrambling(encoder);
 
@@ -1488,7 +1500,6 @@ static void vc4_hdmi_encoder_pre_crtc_configure(struct drm_encoder *encoder,
 		goto err_put_runtime_pm;
 	}
 
-
 	vc4_hdmi_cec_update_clk_div(vc4_hdmi);
 
 	if (tmds_char_rate > 297000000)
@@ -1594,6 +1605,8 @@ static void vc4_hdmi_encoder_post_crtc_enable(struct drm_encoder *encoder,
 	spin_lock_irqsave(&vc4_hdmi->hw_lock, flags);
 
 	HDMI_WRITE(HDMI_VID_CTL,
+		   (HDMI_READ(HDMI_VID_CTL) &
+			~(VC4_HD_VID_CTL_VSYNC_LOW | VC4_HD_VID_CTL_HSYNC_LOW)) |
 		   VC4_HD_VID_CTL_ENABLE |
 		   VC4_HD_VID_CTL_CLRRGB |
 		   VC4_HD_VID_CTL_UNDERFLOW_ENABLE |
@@ -3121,6 +3134,7 @@ static int vc4_hdmi_runtime_suspend(struct device *dev)
 {
 	struct vc4_hdmi *vc4_hdmi = dev_get_drvdata(dev);
 
+	clk_disable_unprepare(vc4_hdmi->audio_clock);
 	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 
 	return 0;
@@ -3153,6 +3167,10 @@ static int vc4_hdmi_runtime_resume(struct device *dev)
 		goto err_disable_clk;
 	}
 
+	ret = clk_prepare_enable(vc4_hdmi->audio_clock);
+	if (ret)
+		goto err_disable_clk;
+
 	if (vc4_hdmi->variant->reset)
 		vc4_hdmi->variant->reset(vc4_hdmi);
 
@@ -3273,7 +3291,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		return ret;
 
 	if ((of_device_is_compatible(dev->of_node, "brcm,bcm2711-hdmi0") ||
-	     of_device_is_compatible(dev->of_node, "brcm,bcm2711-hdmi1")) &&
+	     of_device_is_compatible(dev->of_node, "brcm,bcm2711-hdmi1") ||
+	     of_device_is_compatible(dev->of_node, "brcm,bcm2712-hdmi0") ||
+	     of_device_is_compatible(dev->of_node, "brcm,bcm2712-hdmi1")) &&
 	    HDMI_READ(HDMI_VID_CTL) & VC4_HD_VID_CTL_ENABLE) {
 		clk_prepare_enable(vc4_hdmi->pixel_clock);
 		clk_prepare_enable(vc4_hdmi->hsm_clock);
@@ -3407,10 +3427,66 @@ static const struct vc4_hdmi_variant bcm2711_hdmi1_variant = {
 	.hp_detect		= vc5_hdmi_hp_detect,
 };
 
+static const struct vc4_hdmi_variant bcm2712_hdmi0_variant = {
+	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
+	.debugfs_name		= "hdmi0_regs",
+	.card_name		= "vc4-hdmi-0",
+	.max_pixel_clock	= 600000000,
+	.registers		= vc6_hdmi_hdmi0_fields,
+	.num_registers		= ARRAY_SIZE(vc6_hdmi_hdmi0_fields),
+	.phy_lane_mapping	= {
+		PHY_LANE_0,
+		PHY_LANE_1,
+		PHY_LANE_2,
+		PHY_LANE_CK,
+	},
+	.unsupported_odd_h_timings	= false,
+	.external_irq_controller	= true,
+
+	.init_resources		= vc5_hdmi_init_resources,
+	.csc_setup		= vc5_hdmi_csc_setup,
+	.reset			= vc5_hdmi_reset,
+	.set_timings		= vc5_hdmi_set_timings,
+	.phy_init		= vc6_hdmi_phy_init,
+	.phy_disable		= vc6_hdmi_phy_disable,
+	.channel_map		= vc5_hdmi_channel_map,
+	.supports_hdr		= true,
+	.hp_detect		= vc5_hdmi_hp_detect,
+};
+
+static const struct vc4_hdmi_variant bcm2712_hdmi1_variant = {
+	.encoder_type		= VC4_ENCODER_TYPE_HDMI1,
+	.debugfs_name		= "hdmi1_regs",
+	.card_name		= "vc4-hdmi-1",
+	.max_pixel_clock	= 600000000,
+	.registers		= vc6_hdmi_hdmi1_fields,
+	.num_registers		= ARRAY_SIZE(vc6_hdmi_hdmi1_fields),
+	.phy_lane_mapping	= {
+		PHY_LANE_0,
+		PHY_LANE_1,
+		PHY_LANE_2,
+		PHY_LANE_CK,
+	},
+	.unsupported_odd_h_timings	= false,
+	.external_irq_controller	= true,
+
+	.init_resources		= vc5_hdmi_init_resources,
+	.csc_setup		= vc5_hdmi_csc_setup,
+	.reset			= vc5_hdmi_reset,
+	.set_timings		= vc5_hdmi_set_timings,
+	.phy_init		= vc6_hdmi_phy_init,
+	.phy_disable		= vc6_hdmi_phy_disable,
+	.channel_map		= vc5_hdmi_channel_map,
+	.supports_hdr		= true,
+	.hp_detect		= vc5_hdmi_hp_detect,
+};
+
 static const struct of_device_id vc4_hdmi_dt_match[] = {
 	{ .compatible = "brcm,bcm2835-hdmi", .data = &bcm2835_variant },
 	{ .compatible = "brcm,bcm2711-hdmi0", .data = &bcm2711_hdmi0_variant },
 	{ .compatible = "brcm,bcm2711-hdmi1", .data = &bcm2711_hdmi1_variant },
+	{ .compatible = "brcm,bcm2712-hdmi0", .data = &bcm2712_hdmi0_variant },
+	{ .compatible = "brcm,bcm2712-hdmi1", .data = &bcm2712_hdmi1_variant },
 	{}
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index b37f1d2c3fe5..b2424a21da23 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -237,4 +237,8 @@ void vc5_hdmi_phy_disable(struct vc4_hdmi *vc4_hdmi);
 void vc5_hdmi_phy_rng_enable(struct vc4_hdmi *vc4_hdmi);
 void vc5_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi);
 
+void vc6_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi,
+		       struct drm_connector_state *conn_state);
+void vc6_hdmi_phy_disable(struct vc4_hdmi *vc4_hdmi);
+
 #endif /* _VC4_HDMI_H_ */
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_phy.c b/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
index 1f5507fc7a03..56e6a35da357 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
@@ -125,6 +125,48 @@
 #define VC4_HDMI_RM_FORMAT_SHIFT_SHIFT			24
 #define VC4_HDMI_RM_FORMAT_SHIFT_MASK			VC4_MASK(25, 24)
 
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_BG_PWRUP	BIT(8)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_LDO_PWRUP	BIT(7)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_BIAS_PWRUP	BIT(6)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_RNDGEN_PWRUP	BIT(4)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_CK_PWRUP	BIT(3)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_2_PWRUP	BIT(2)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_1_PWRUP	BIT(1)
+#define VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_0_PWRUP	BIT(0)
+
+#define VC6_HDMI_TX_PHY_PLL_REFCLK_REFCLK_SEL_CMOS	BIT(13)
+#define VC6_HDMI_TX_PHY_PLL_REFCLK_REFFRQ_MASK		VC4_MASK(9, 0)
+
+#define VC6_HDMI_TX_PHY_PLL_POST_KDIV_CLK0_SEL_MASK	VC4_MASK(3, 2)
+#define VC6_HDMI_TX_PHY_PLL_POST_KDIV_KDIV_MASK		VC4_MASK(1, 0)
+
+#define VC6_HDMI_TX_PHY_PLL_VCOCLK_DIV_VCODIV_EN	BIT(10)
+#define VC6_HDMI_TX_PHY_PLL_VCOCLK_DIV_VCODIV_MASK	VC4_MASK(9, 0)
+
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_CTL_MASK	VC4_MASK(31, 28)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_ENABLE_MASK		VC4_MASK(27, 27)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_RATE_CTL_MASK	VC4_MASK(26, 26)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_POST_TAP_EN_MASK	VC4_MASK(25, 25)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_LDMOS_BIAS_CTL_MASK	VC4_MASK(24, 23)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_COM_MODE_LDMOS_EN_MASK	VC4_MASK(22, 22)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EDGE_SEL_MASK		VC4_MASK(21, 21)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_HS_EN_MASK	VC4_MASK(20, 20)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_TERM_CTL_MASK		VC4_MASK(19, 18)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_EN_MASK	VC4_MASK(17, 17)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_EN_MASK	VC4_MASK(16, 16)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_CTL_MASK	VC4_MASK(15, 12)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_HS_EN_MASK	VC4_MASK(11, 11)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_MAIN_TAP_CURRENT_SELECT_MASK	VC4_MASK(10, 8)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_POST_TAP_CURRENT_SELECT_MASK	VC4_MASK(7, 5)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_LOADING_MASK	VC4_MASK(4, 3)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_DRIVING_MASK	VC4_MASK(2, 1)
+#define VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_PRE_TAP_EN_MASK	VC4_MASK(0, 0)
+
+#define VC6_HDMI_TX_PHY_PLL_RESET_CTL_PLL_PLLPOST_RESETB	BIT(1)
+#define VC6_HDMI_TX_PHY_PLL_RESET_CTL_PLL_RESETB	BIT(0)
+
+#define VC6_HDMI_TX_PHY_PLL_POWERUP_CTL_PLL_PWRUP	BIT(0)
+
 #define OSCILLATOR_FREQUENCY	54000000
 
 void vc4_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi,
@@ -558,3 +600,601 @@ void vc5_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi)
 		   VC4_HDMI_TX_PHY_POWERDOWN_CTL_RNDGEN_PWRDN);
 	spin_unlock_irqrestore(&vc4_hdmi->hw_lock, flags);
 }
+
+#define VC6_VCO_MIN_FREQ	(8ULL * 1000 * 1000 * 1000)
+#define VC6_VCO_MAX_FREQ	(12ULL * 1000 * 1000 * 1000)
+
+static unsigned long long
+vc6_phy_get_vco_freq(unsigned long long tmds_rate, unsigned int *vco_div)
+{
+	unsigned int min_div;
+	unsigned int max_div;
+	unsigned int div;
+
+	div = 0;
+	while (tmds_rate * div * 10 < VC6_VCO_MIN_FREQ)
+		div++;
+	min_div = div;
+
+	while (tmds_rate * (div + 1) * 10 < VC6_VCO_MAX_FREQ)
+		div++;
+	max_div = div;
+
+	div = min_div + (max_div - min_div) / 2;
+
+	*vco_div = div;
+	return tmds_rate * div * 10;
+}
+
+struct vc6_phy_lane_settings {
+	unsigned int ext_current_ctl:4;
+	unsigned int ffe_enable:1;
+	unsigned int slew_rate_ctl:1;
+	unsigned int ffe_post_tap_en:1;
+	unsigned int ldmos_bias_ctl:2;
+	unsigned int com_mode_ldmos_en:1;
+	unsigned int edge_sel:1;
+	unsigned int ext_current_src_hs_en:1;
+	unsigned int term_ctl:2;
+	unsigned int ext_current_src_en:1;
+	unsigned int int_current_src_en:1;
+	unsigned int int_current_ctl:4;
+	unsigned int int_current_src_hs_en:1;
+	unsigned int main_tap_current_select:3;
+	unsigned int post_tap_current_select:3;
+	unsigned int slew_ctl_slow_loading:2;
+	unsigned int slew_ctl_slow_driving:2;
+	unsigned int ffe_pre_tap_en:1;
+};
+
+struct vc6_phy_settings {
+	unsigned long long min_rate;
+	unsigned long long max_rate;
+	struct vc6_phy_lane_settings channel[3];
+	struct vc6_phy_lane_settings clock;
+};
+
+static const struct vc6_phy_settings vc6_hdmi_phy_settings[] = {
+	{
+		0, 222000000,
+		{
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+		},
+		{
+			/* 200mA */
+			.ext_current_ctl = 8,
+
+			/* 0.85V */
+			.ldmos_bias_ctl = 1,
+
+			/* Enable External Current Source */
+			.ext_current_src_en = 1,
+
+			/* 200mA */
+			.int_current_ctl = 8,
+
+			/* 17.6 mA */
+			.main_tap_current_select = 7,
+		},
+	},
+	{
+		222000001, 297000000,
+		{
+			{
+				/* 200mA and 180mA ?! */
+				.ext_current_ctl = 12,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 100 Ohm */
+				.term_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+			},
+			{
+				/* 200mA and 180mA ?! */
+				.ext_current_ctl = 12,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 100 Ohm */
+				.term_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+			},
+			{
+				/* 200mA and 180mA ?! */
+				.ext_current_ctl = 12,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 100 Ohm */
+				.term_ctl = 1,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+			},
+		},
+		{
+			/* 200mA and 180mA ?! */
+			.ext_current_ctl = 12,
+
+			/* 0.85V */
+			.ldmos_bias_ctl = 1,
+
+			/* 100 Ohm */
+			.term_ctl = 1,
+
+			/* Enable External Current Source */
+			.ext_current_src_en = 1,
+
+			/* Enable Internal Current Source */
+			.int_current_src_en = 1,
+
+			/* Internal Current Source Half Swing Enable*/
+			.int_current_src_hs_en = 1,
+		},
+	},
+	{
+		297000001, 597000044,
+		{
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* Normal Slew Rate Control */
+				.slew_rate_ctl = 1,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 50 Ohms */
+				.term_ctl = 3,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* Normal Slew Rate Control */
+				.slew_rate_ctl = 1,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 50 Ohms */
+				.term_ctl = 3,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+			{
+				/* 200mA */
+				.ext_current_ctl = 8,
+
+				/* Normal Slew Rate Control */
+				.slew_rate_ctl = 1,
+
+				/* 0.85V */
+				.ldmos_bias_ctl = 1,
+
+				/* 50 Ohms */
+				.term_ctl = 3,
+
+				/* Enable External Current Source */
+				.ext_current_src_en = 1,
+
+				/* Enable Internal Current Source */
+				.int_current_src_en = 1,
+
+				/* 200mA */
+				.int_current_ctl = 8,
+
+				/* 17.6 mA */
+				.main_tap_current_select = 7,
+			},
+		},
+		{
+			/* 200mA */
+			.ext_current_ctl = 8,
+
+			/* Normal Slew Rate Control */
+			.slew_rate_ctl = 1,
+
+			/* 0.85V */
+			.ldmos_bias_ctl = 1,
+
+			/* External Current Source Half Swing Enable*/
+			.ext_current_src_hs_en = 1,
+
+			/* 50 Ohms */
+			.term_ctl = 3,
+
+			/* Enable External Current Source */
+			.ext_current_src_en = 1,
+
+			/* Enable Internal Current Source */
+			.int_current_src_en = 1,
+
+			/* 200mA */
+			.int_current_ctl = 8,
+
+			/* Internal Current Source Half Swing Enable*/
+			.int_current_src_hs_en = 1,
+
+			/* 17.6 mA */
+			.main_tap_current_select = 7,
+		},
+	},
+};
+
+static const struct vc6_phy_settings *
+vc6_phy_get_settings(unsigned long long tmds_rate)
+{
+	unsigned int count = ARRAY_SIZE(vc6_hdmi_phy_settings);
+	unsigned int i;
+
+	for (i = 0; i < count; i++) {
+		const struct vc6_phy_settings *s = &vc6_hdmi_phy_settings[i];
+
+		if (tmds_rate >= s->min_rate && tmds_rate <= s->max_rate)
+			return s;
+	}
+
+	/*
+	 * If the pixel clock exceeds our max setting, try the max
+	 * setting anyway.
+	 */
+	return &vc6_hdmi_phy_settings[count - 1];
+}
+
+static const struct vc6_phy_lane_settings *
+vc6_phy_get_channel_settings(enum vc4_hdmi_phy_channel chan,
+			     unsigned long long tmds_rate)
+{
+	const struct vc6_phy_settings *settings = vc6_phy_get_settings(tmds_rate);
+
+	if (chan == PHY_LANE_CK)
+		return &settings->clock;
+
+	return &settings->channel[chan];
+}
+
+static void vc6_hdmi_reset_phy(struct vc4_hdmi *vc4_hdmi)
+{
+	lockdep_assert_held(&vc4_hdmi->hw_lock);
+
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL, 0);
+	HDMI_WRITE(HDMI_TX_PHY_POWERUP_CTL, 0);
+}
+
+void vc6_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi,
+		       struct drm_connector_state *conn_state)
+{
+	const struct vc6_phy_lane_settings *chan0_settings;
+	const struct vc6_phy_lane_settings *chan1_settings;
+	const struct vc6_phy_lane_settings *chan2_settings;
+	const struct vc6_phy_lane_settings *clock_settings;
+	const struct vc4_hdmi_variant *variant = vc4_hdmi->variant;
+	unsigned long long pixel_freq = conn_state->hdmi.tmds_char_rate;
+	unsigned long long vco_freq;
+	unsigned char word_sel;
+	unsigned long flags;
+	unsigned int vco_div;
+
+	vco_freq = vc6_phy_get_vco_freq(pixel_freq, &vco_div);
+
+	spin_lock_irqsave(&vc4_hdmi->hw_lock, flags);
+
+	vc6_hdmi_reset_phy(vc4_hdmi);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_0, 0x810c6000);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_1, 0x00b8c451);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_2, 0x46402e31);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_3, 0x00b8c005);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_4, 0x42410261);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_5, 0xcc021001);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_6, 0xc8301c80);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_7, 0xb0804444);
+	HDMI_WRITE(HDMI_TX_PHY_PLL_MISC_8, 0xf80f8000);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_REFCLK,
+		   VC6_HDMI_TX_PHY_PLL_REFCLK_REFCLK_SEL_CMOS |
+		   VC4_SET_FIELD(54, VC6_HDMI_TX_PHY_PLL_REFCLK_REFFRQ));
+
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL, 0x7f);
+
+	HDMI_WRITE(HDMI_RM_OFFSET,
+		   VC4_HDMI_RM_OFFSET_ONLY |
+		   VC4_SET_FIELD(phy_get_rm_offset(vco_freq),
+				 VC4_HDMI_RM_OFFSET_OFFSET));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_VCOCLK_DIV,
+		   VC6_HDMI_TX_PHY_PLL_VCOCLK_DIV_VCODIV_EN |
+		   VC4_SET_FIELD(vco_div,
+				 VC6_HDMI_TX_PHY_PLL_VCOCLK_DIV_VCODIV));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CFG,
+		   VC4_SET_FIELD(0, VC4_HDMI_TX_PHY_PLL_CFG_PDIV));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_POST_KDIV,
+		   VC4_SET_FIELD(2, VC6_HDMI_TX_PHY_PLL_POST_KDIV_CLK0_SEL) |
+		   VC4_SET_FIELD(1, VC6_HDMI_TX_PHY_PLL_POST_KDIV_KDIV));
+
+	chan0_settings =
+		vc6_phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_0],
+					     pixel_freq);
+	HDMI_WRITE(HDMI_TX_PHY_CTL_0,
+		   VC4_SET_FIELD(chan0_settings->ext_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan0_settings->ffe_enable,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_ENABLE) |
+		   VC4_SET_FIELD(chan0_settings->slew_rate_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_RATE_CTL) |
+		   VC4_SET_FIELD(chan0_settings->ffe_post_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_POST_TAP_EN) |
+		   VC4_SET_FIELD(chan0_settings->ldmos_bias_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_LDMOS_BIAS_CTL) |
+		   VC4_SET_FIELD(chan0_settings->com_mode_ldmos_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_COM_MODE_LDMOS_EN) |
+		   VC4_SET_FIELD(chan0_settings->edge_sel,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EDGE_SEL) |
+		   VC4_SET_FIELD(chan0_settings->ext_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan0_settings->term_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_TERM_CTL) |
+		   VC4_SET_FIELD(chan0_settings->ext_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan0_settings->int_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan0_settings->int_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan0_settings->int_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan0_settings->main_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_MAIN_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan0_settings->post_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_POST_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan0_settings->slew_ctl_slow_loading,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_LOADING) |
+		   VC4_SET_FIELD(chan0_settings->slew_ctl_slow_driving,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_DRIVING) |
+		   VC4_SET_FIELD(chan0_settings->ffe_pre_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_PRE_TAP_EN));
+
+	chan1_settings =
+		vc6_phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_1],
+					     pixel_freq);
+	HDMI_WRITE(HDMI_TX_PHY_CTL_1,
+		   VC4_SET_FIELD(chan1_settings->ext_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan1_settings->ffe_enable,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_ENABLE) |
+		   VC4_SET_FIELD(chan1_settings->slew_rate_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_RATE_CTL) |
+		   VC4_SET_FIELD(chan1_settings->ffe_post_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_POST_TAP_EN) |
+		   VC4_SET_FIELD(chan1_settings->ldmos_bias_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_LDMOS_BIAS_CTL) |
+		   VC4_SET_FIELD(chan1_settings->com_mode_ldmos_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_COM_MODE_LDMOS_EN) |
+		   VC4_SET_FIELD(chan1_settings->edge_sel,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EDGE_SEL) |
+		   VC4_SET_FIELD(chan1_settings->ext_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan1_settings->term_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_TERM_CTL) |
+		   VC4_SET_FIELD(chan1_settings->ext_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan1_settings->int_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan1_settings->int_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan1_settings->int_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan1_settings->main_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_MAIN_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan1_settings->post_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_POST_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan1_settings->slew_ctl_slow_loading,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_LOADING) |
+		   VC4_SET_FIELD(chan1_settings->slew_ctl_slow_driving,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_DRIVING) |
+		   VC4_SET_FIELD(chan1_settings->ffe_pre_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_PRE_TAP_EN));
+
+	chan2_settings =
+		vc6_phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_2],
+					     pixel_freq);
+	HDMI_WRITE(HDMI_TX_PHY_CTL_2,
+		   VC4_SET_FIELD(chan2_settings->ext_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan2_settings->ffe_enable,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_ENABLE) |
+		   VC4_SET_FIELD(chan2_settings->slew_rate_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_RATE_CTL) |
+		   VC4_SET_FIELD(chan2_settings->ffe_post_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_POST_TAP_EN) |
+		   VC4_SET_FIELD(chan2_settings->ldmos_bias_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_LDMOS_BIAS_CTL) |
+		   VC4_SET_FIELD(chan2_settings->com_mode_ldmos_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_COM_MODE_LDMOS_EN) |
+		   VC4_SET_FIELD(chan2_settings->edge_sel,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EDGE_SEL) |
+		   VC4_SET_FIELD(chan2_settings->ext_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan2_settings->term_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_TERM_CTL) |
+		   VC4_SET_FIELD(chan2_settings->ext_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan2_settings->int_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(chan2_settings->int_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_CTL) |
+		   VC4_SET_FIELD(chan2_settings->int_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(chan2_settings->main_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_MAIN_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan2_settings->post_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_POST_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(chan2_settings->slew_ctl_slow_loading,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_LOADING) |
+		   VC4_SET_FIELD(chan2_settings->slew_ctl_slow_driving,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_DRIVING) |
+		   VC4_SET_FIELD(chan2_settings->ffe_pre_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_PRE_TAP_EN));
+
+	clock_settings =
+		vc6_phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_CK],
+					     pixel_freq);
+	HDMI_WRITE(HDMI_TX_PHY_CTL_CK,
+		   VC4_SET_FIELD(clock_settings->ext_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_CTL) |
+		   VC4_SET_FIELD(clock_settings->ffe_enable,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_ENABLE) |
+		   VC4_SET_FIELD(clock_settings->slew_rate_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_RATE_CTL) |
+		   VC4_SET_FIELD(clock_settings->ffe_post_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_POST_TAP_EN) |
+		   VC4_SET_FIELD(clock_settings->ldmos_bias_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_LDMOS_BIAS_CTL) |
+		   VC4_SET_FIELD(clock_settings->com_mode_ldmos_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_COM_MODE_LDMOS_EN) |
+		   VC4_SET_FIELD(clock_settings->edge_sel,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EDGE_SEL) |
+		   VC4_SET_FIELD(clock_settings->ext_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(clock_settings->term_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_TERM_CTL) |
+		   VC4_SET_FIELD(clock_settings->ext_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_EXT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(clock_settings->int_current_src_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_EN) |
+		   VC4_SET_FIELD(clock_settings->int_current_ctl,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_CTL) |
+		   VC4_SET_FIELD(clock_settings->int_current_src_hs_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_INT_CURRENT_SRC_HS_EN) |
+		   VC4_SET_FIELD(clock_settings->main_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_MAIN_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(clock_settings->post_tap_current_select,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_POST_TAP_CURRENT_SELECT) |
+		   VC4_SET_FIELD(clock_settings->slew_ctl_slow_loading,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_LOADING) |
+		   VC4_SET_FIELD(clock_settings->slew_ctl_slow_driving,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_SLEW_CTL_SLOW_DRIVING) |
+		   VC4_SET_FIELD(clock_settings->ffe_pre_tap_en,
+				 VC6_HDMI_TX_PHY_HDMI_CTRL_CHX_FFE_PRE_TAP_EN));
+
+	if (pixel_freq >= 340000000)
+		word_sel = 3;
+	else
+		word_sel = 0;
+	HDMI_WRITE(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, word_sel);
+
+	HDMI_WRITE(HDMI_TX_PHY_POWERUP_CTL,
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_BG_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_LDO_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_BIAS_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_CK_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_2_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_1_PWRUP |
+		   VC6_HDMI_TX_PHY_HDMI_POWERUP_CTL_TX_0_PWRUP);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_POWERUP_CTL,
+		   VC6_HDMI_TX_PHY_PLL_POWERUP_CTL_PLL_PWRUP);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_RESET_CTL,
+		   HDMI_READ(HDMI_TX_PHY_PLL_RESET_CTL) &
+		   ~VC6_HDMI_TX_PHY_PLL_RESET_CTL_PLL_RESETB);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_RESET_CTL,
+		   HDMI_READ(HDMI_TX_PHY_PLL_RESET_CTL) |
+		   VC6_HDMI_TX_PHY_PLL_RESET_CTL_PLL_RESETB);
+
+	spin_unlock_irqrestore(&vc4_hdmi->hw_lock, flags);
+}
+
+void vc6_hdmi_phy_disable(struct vc4_hdmi *vc4_hdmi)
+{
+}
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
index 68455ce513e7..59bfd69f54d9 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
@@ -111,13 +111,30 @@ enum vc4_hdmi_field {
 	HDMI_TX_PHY_CTL_1,
 	HDMI_TX_PHY_CTL_2,
 	HDMI_TX_PHY_CTL_3,
+	HDMI_TX_PHY_CTL_CK,
 	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1,
 	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2,
 	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4,
 	HDMI_TX_PHY_PLL_CFG,
+	HDMI_TX_PHY_PLL_CFG_PDIV,
 	HDMI_TX_PHY_PLL_CTL_0,
 	HDMI_TX_PHY_PLL_CTL_1,
+	HDMI_TX_PHY_PLL_MISC_0,
+	HDMI_TX_PHY_PLL_MISC_1,
+	HDMI_TX_PHY_PLL_MISC_2,
+	HDMI_TX_PHY_PLL_MISC_3,
+	HDMI_TX_PHY_PLL_MISC_4,
+	HDMI_TX_PHY_PLL_MISC_5,
+	HDMI_TX_PHY_PLL_MISC_6,
+	HDMI_TX_PHY_PLL_MISC_7,
+	HDMI_TX_PHY_PLL_MISC_8,
+	HDMI_TX_PHY_PLL_POST_KDIV,
+	HDMI_TX_PHY_PLL_POWERUP_CTL,
+	HDMI_TX_PHY_PLL_REFCLK,
+	HDMI_TX_PHY_PLL_RESET_CTL,
+	HDMI_TX_PHY_PLL_VCOCLK_DIV,
 	HDMI_TX_PHY_POWERDOWN_CTL,
+	HDMI_TX_PHY_POWERUP_CTL,
 	HDMI_TX_PHY_RESET_CTL,
 	HDMI_TX_PHY_TMDS_CLK_WORD_SEL,
 	HDMI_VEC_INTERFACE_CFG,
@@ -411,6 +428,206 @@ static const struct vc4_hdmi_register __maybe_unused vc5_hdmi_hdmi1_fields[] = {
 	VC5_CSC_REG(HDMI_CSC_CHANNEL_CTL, 0x02c),
 };
 
+static const struct vc4_hdmi_register __maybe_unused vc6_hdmi_hdmi0_fields[] = {
+	VC4_HD_REG(HDMI_DVP_CTL, 0x0000),
+	VC4_HD_REG(HDMI_MAI_CTL, 0x0010),
+	VC4_HD_REG(HDMI_MAI_THR, 0x0014),
+	VC4_HD_REG(HDMI_MAI_FMT, 0x0018),
+	VC4_HD_REG(HDMI_MAI_DATA, 0x001c),
+	VC4_HD_REG(HDMI_MAI_SMP, 0x0020),
+	VC4_HD_REG(HDMI_VID_CTL, 0x0044),
+	VC4_HD_REG(HDMI_FRAME_COUNT, 0x0060),
+
+	VC4_HDMI_REG(HDMI_FIFO_CTL, 0x07c),
+	VC4_HDMI_REG(HDMI_AUDIO_PACKET_CONFIG, 0x0c0),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_CONFIG, 0x0c4),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_STATUS, 0x0cc),
+	VC4_HDMI_REG(HDMI_CRP_CFG, 0x0d0),
+	VC4_HDMI_REG(HDMI_CTS_0, 0x0d4),
+	VC4_HDMI_REG(HDMI_CTS_1, 0x0d8),
+	VC4_HDMI_REG(HDMI_SCHEDULER_CONTROL, 0x0e8),
+	VC4_HDMI_REG(HDMI_HORZA, 0x0ec),
+	VC4_HDMI_REG(HDMI_HORZB, 0x0f0),
+	VC4_HDMI_REG(HDMI_VERTA0, 0x0f4),
+	VC4_HDMI_REG(HDMI_VERTB0, 0x0f8),
+	VC4_HDMI_REG(HDMI_VERTA1, 0x100),
+	VC4_HDMI_REG(HDMI_VERTB1, 0x104),
+	VC4_HDMI_REG(HDMI_MISC_CONTROL, 0x114),
+	VC4_HDMI_REG(HDMI_MAI_CHANNEL_MAP, 0x0a4),
+	VC4_HDMI_REG(HDMI_MAI_CONFIG, 0x0a8),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_1, 0x148),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_2, 0x14c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_3, 0x150),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_4, 0x158),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_5, 0x15c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_6, 0x160),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_7, 0x164),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_8, 0x168),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_9, 0x16c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_10, 0x170),
+	VC4_HDMI_REG(HDMI_DEEP_COLOR_CONFIG_1, 0x18c),
+	VC4_HDMI_REG(HDMI_GCP_CONFIG, 0x194),
+	VC4_HDMI_REG(HDMI_GCP_WORD_1, 0x198),
+	VC4_HDMI_REG(HDMI_HOTPLUG, 0x1c8),
+	VC4_HDMI_REG(HDMI_SCRAMBLER_CTL, 0x1e4),
+
+	VC5_DVP_REG(HDMI_CLOCK_STOP, 0x0bc),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_CFG, 0x0f0),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_XBAR, 0x0f4),
+
+	VC5_PHY_REG(HDMI_TX_PHY_RESET_CTL, 0x000),
+	VC5_PHY_REG(HDMI_TX_PHY_POWERUP_CTL, 0x004),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_0, 0x008),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_1, 0x00c),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_2, 0x010),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_CK, 0x014),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_REFCLK, 0x01c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_POST_KDIV, 0x028),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_VCOCLK_DIV, 0x02c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CFG, 0x044),
+	VC5_PHY_REG(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, 0x054),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_0, 0x060),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_1, 0x064),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_2, 0x068),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_3, 0x06c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_4, 0x070),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_5, 0x074),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_6, 0x078),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_7, 0x07c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_8, 0x080),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_RESET_CTL, 0x190),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_POWERUP_CTL, 0x194),
+
+	VC5_RM_REG(HDMI_RM_CONTROL, 0x000),
+	VC5_RM_REG(HDMI_RM_OFFSET, 0x018),
+	VC5_RM_REG(HDMI_RM_FORMAT, 0x01c),
+
+	VC5_RAM_REG(HDMI_RAM_PACKET_START, 0x000),
+
+	VC5_CEC_REG(HDMI_CEC_CNTRL_1, 0x010),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_2, 0x014),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_3, 0x018),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_4, 0x01c),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_5, 0x020),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_1, 0x028),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_2, 0x02c),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_3, 0x030),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_4, 0x034),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_1, 0x038),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_2, 0x03c),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_3, 0x040),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_4, 0x044),
+
+	VC5_CSC_REG(HDMI_CSC_CTL, 0x000),
+	VC5_CSC_REG(HDMI_CSC_12_11, 0x004),
+	VC5_CSC_REG(HDMI_CSC_14_13, 0x008),
+	VC5_CSC_REG(HDMI_CSC_22_21, 0x00c),
+	VC5_CSC_REG(HDMI_CSC_24_23, 0x010),
+	VC5_CSC_REG(HDMI_CSC_32_31, 0x014),
+	VC5_CSC_REG(HDMI_CSC_34_33, 0x018),
+	VC5_CSC_REG(HDMI_CSC_CHANNEL_CTL, 0x02c),
+};
+
+static const struct vc4_hdmi_register __maybe_unused vc6_hdmi_hdmi1_fields[] = {
+	VC4_HD_REG(HDMI_DVP_CTL, 0x0000),
+	VC4_HD_REG(HDMI_MAI_CTL, 0x0030),
+	VC4_HD_REG(HDMI_MAI_THR, 0x0034),
+	VC4_HD_REG(HDMI_MAI_FMT, 0x0038),
+	VC4_HD_REG(HDMI_MAI_DATA, 0x003c),
+	VC4_HD_REG(HDMI_MAI_SMP, 0x0040),
+	VC4_HD_REG(HDMI_VID_CTL, 0x0048),
+	VC4_HD_REG(HDMI_FRAME_COUNT, 0x0064),
+
+	VC4_HDMI_REG(HDMI_FIFO_CTL, 0x07c),
+	VC4_HDMI_REG(HDMI_AUDIO_PACKET_CONFIG, 0x0c0),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_CONFIG, 0x0c4),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_STATUS, 0x0cc),
+	VC4_HDMI_REG(HDMI_CRP_CFG, 0x0d0),
+	VC4_HDMI_REG(HDMI_CTS_0, 0x0d4),
+	VC4_HDMI_REG(HDMI_CTS_1, 0x0d8),
+	VC4_HDMI_REG(HDMI_SCHEDULER_CONTROL, 0x0e8),
+	VC4_HDMI_REG(HDMI_HORZA, 0x0ec),
+	VC4_HDMI_REG(HDMI_HORZB, 0x0f0),
+	VC4_HDMI_REG(HDMI_VERTA0, 0x0f4),
+	VC4_HDMI_REG(HDMI_VERTB0, 0x0f8),
+	VC4_HDMI_REG(HDMI_VERTA1, 0x100),
+	VC4_HDMI_REG(HDMI_VERTB1, 0x104),
+	VC4_HDMI_REG(HDMI_MISC_CONTROL, 0x114),
+	VC4_HDMI_REG(HDMI_MAI_CHANNEL_MAP, 0x0a4),
+	VC4_HDMI_REG(HDMI_MAI_CONFIG, 0x0a8),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_1, 0x148),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_2, 0x14c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_3, 0x150),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_4, 0x158),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_5, 0x15c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_6, 0x160),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_7, 0x164),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_8, 0x168),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_9, 0x16c),
+	VC4_HDMI_REG(HDMI_FORMAT_DET_10, 0x170),
+	VC4_HDMI_REG(HDMI_DEEP_COLOR_CONFIG_1, 0x18c),
+	VC4_HDMI_REG(HDMI_GCP_CONFIG, 0x194),
+	VC4_HDMI_REG(HDMI_GCP_WORD_1, 0x198),
+	VC4_HDMI_REG(HDMI_HOTPLUG, 0x1c8),
+	VC4_HDMI_REG(HDMI_SCRAMBLER_CTL, 0x1e4),
+
+	VC5_DVP_REG(HDMI_CLOCK_STOP, 0x0bc),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_CFG, 0x0f0),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_XBAR, 0x0f4),
+
+	VC5_PHY_REG(HDMI_TX_PHY_RESET_CTL, 0x000),
+	VC5_PHY_REG(HDMI_TX_PHY_POWERUP_CTL, 0x004),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_0, 0x008),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_1, 0x00c),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_2, 0x010),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_CK, 0x014),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_REFCLK, 0x01c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_POST_KDIV, 0x028),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_VCOCLK_DIV, 0x02c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CFG, 0x044),
+	VC5_PHY_REG(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, 0x054),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_0, 0x060),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_1, 0x064),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_2, 0x068),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_3, 0x06c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_4, 0x070),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_5, 0x074),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_6, 0x078),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_7, 0x07c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_MISC_8, 0x080),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_RESET_CTL, 0x190),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_POWERUP_CTL, 0x194),
+
+	VC5_RM_REG(HDMI_RM_CONTROL, 0x000),
+	VC5_RM_REG(HDMI_RM_OFFSET, 0x018),
+	VC5_RM_REG(HDMI_RM_FORMAT, 0x01c),
+
+	VC5_RAM_REG(HDMI_RAM_PACKET_START, 0x000),
+
+	VC5_CEC_REG(HDMI_CEC_CNTRL_1, 0x010),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_2, 0x014),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_3, 0x018),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_4, 0x01c),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_5, 0x020),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_1, 0x028),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_2, 0x02c),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_3, 0x030),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_4, 0x034),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_1, 0x038),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_2, 0x03c),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_3, 0x040),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_4, 0x044),
+
+	VC5_CSC_REG(HDMI_CSC_CTL, 0x000),
+	VC5_CSC_REG(HDMI_CSC_12_11, 0x004),
+	VC5_CSC_REG(HDMI_CSC_14_13, 0x008),
+	VC5_CSC_REG(HDMI_CSC_22_21, 0x00c),
+	VC5_CSC_REG(HDMI_CSC_24_23, 0x010),
+	VC5_CSC_REG(HDMI_CSC_32_31, 0x014),
+	VC5_CSC_REG(HDMI_CSC_34_33, 0x018),
+	VC5_CSC_REG(HDMI_CSC_CHANNEL_CTL, 0x02c),
+};
+
 static inline
 void __iomem *__vc4_hdmi_get_field_base(struct vc4_hdmi *hdmi,
 					enum vc4_hdmi_regs reg)

-- 
2.34.1


