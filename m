Return-Path: <devicetree+bounces-25020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA57811F5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A849A1C2095B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA8B78E83;
	Wed, 13 Dec 2023 19:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mrd6M3Pt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0D61B7;
	Wed, 13 Dec 2023 11:51:29 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c38de1ee4so51156695e9.0;
        Wed, 13 Dec 2023 11:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497088; x=1703101888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FrtW0qmKYRNQLQV31syGJ5EsohgiI927CfneGFLgIjg=;
        b=Mrd6M3PtKXTd0ng8eiCEMBUxMQUmPVZ/y8nUgKWJenZd2PzXe4LYGK8S9HyKnwF8pR
         c6kUp3E3iUtCd6NqpAE4jUNJ/cZ7xy3SRj31sheg3T9LERQhNW6DAjeayk3YOYjaxA21
         Yr+GzmSupmRMyVcXUmac0GqPn0dByfgTvgJdH2ycBoS0J+sc1J+YJVucnX5hw9Zc69iD
         fvf2BA8ss3KlNZ9ZjcwRf7r+E+3SNq/ffY+dCyv7QhqYI5OAF5d2QCRW6JCO3xaOzKon
         tq46AQQq4QRfVHy8av5gV0whXaF4QCA95xywVVIg9uPcSJXPyAEDnd8RJohn23jx9EtG
         Y6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497088; x=1703101888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrtW0qmKYRNQLQV31syGJ5EsohgiI927CfneGFLgIjg=;
        b=jCJZmMN4QUBrFPfasECXaY3pA8l8RF8h6xxjk6tDbxhfMSGFp4k1CwUYSO01TvsUYQ
         opv+Sm6v2NWNv6U6he8V/eAS9a7Dhm3MvOFz+zLizGAhoVaRokGS3LsT/D8EXi7tOdnW
         Rhy+7MOHuihRpXyAjOez85Z9dzcUrTsrUC0/mq8r++4tQXe3sVs5ZywPzDYjvi32vdO4
         EfqqDQggTMC8GtbnsoNsZMCAPCLNmfL/rMYkXPEj1ADjCApFN93dNEc4tWHzaqf5DLvW
         k+yz0P/qrjd10qAP6KyWg0dPvXf+HlFHzhInZkdWSl+FVm+iNkxp3fOh3WYcyKq4SIkS
         bPVQ==
X-Gm-Message-State: AOJu0YyuaGtbw0VKjOqEpnXJ8pkxtBQs61PYctSIBm8xgSjEdHs7xVkD
	RMI3hVOlELLH8cAXaRL5nQ==
X-Google-Smtp-Source: AGHT+IHR1mhbvtfmEHVnytGHmx53+I43r/Hf1Na5JA56piJCh0CXRoRhmTkjC+PLrRTxjaxT4a38fQ==
X-Received: by 2002:a05:600c:3b29:b0:40c:3290:7b80 with SMTP id m41-20020a05600c3b2900b0040c32907b80mr4610268wms.138.1702497088224;
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:27 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 02/11] drm/rockchip: vop: Add output selection registers for RK312x
Date: Wed, 13 Dec 2023 20:51:16 +0100
Message-ID: <20231213195125.212923-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In contrast to RK3036, RK312x SoCs have multiple output channels such as
RGB (i.e. LVDS TTL), LVDS, DSI and HDMI.

In order to support that, this adds a new vop_output struct for rk3126_vop
with the registers required to enable the appropriate output and setup the
correct polarity.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 13 ++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  3 +++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index c51ca82320cb..b9ee02061d5b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -227,11 +227,22 @@ static const struct vop_win_data rk3126_vop_win_data[] = {
 	  .type = DRM_PLANE_TYPE_CURSOR },
 };
 
+static const struct vop_output rk3126_output = {
+	.pin_pol = VOP_REG(RK3036_DSP_CTRL0, 0xf, 4),
+	.hdmi_pin_pol = VOP_REG(RK3126_INT_SCALER, 0x7, 4),
+	.hdmi_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 22),
+	.hdmi_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 23),
+	.rgb_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 24),
+	.rgb_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 25),
+	.mipi_en = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 28),
+	.mipi_dclk_pol = VOP_REG(RK3036_AXI_BUS_CTRL, 0x1, 29),
+};
+
 static const struct vop_data rk3126_vop = {
 	.intr = &rk3036_intr,
 	.common = &rk3036_common,
 	.modeset = &rk3036_modeset,
-	.output = &rk3036_output,
+	.output = &rk3126_output,
 	.win = rk3126_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3126_vop_win_data),
 	.max_output = { 1920, 1080 },
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
index 406e981c75bd..fbf1bcc68625 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
@@ -872,6 +872,9 @@
 /* rk3036 register definition end */
 
 /* rk3126 register definition */
+#define RK3126_INT_SCALER		0x0c
+
+/* win1 register */
 #define RK3126_WIN1_MST			0x4c
 #define RK3126_WIN1_DSP_INFO		0x50
 #define RK3126_WIN1_DSP_ST		0x54
-- 
2.43.0


