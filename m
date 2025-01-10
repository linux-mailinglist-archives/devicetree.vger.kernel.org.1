Return-Path: <devicetree+bounces-137259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F450A086A5
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 06:40:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F00757A3D1A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF102066F9;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt2U/gjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DB2066D4;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487596; cv=none; b=QRtHBalIe5x4/7fpVE2YOPvDkSCvh84QHCpB8p35CON/PvhCMZjanCiipdUqwKMTuwmVi3odA6AbxffuS+9G5jKhONlLraga5YPJT1v+L2HpNCc6NOR6pi3d3LXpW6UsIz4CmePPw3SsxuNlrPGYlrDQRr+cJYcKcnUfb4tn144=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487596; c=relaxed/simple;
	bh=vop7Xk4LOnjHORnjgplnQTpPFrYm4fLGGxooqg7vOwQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=smtByj4bsUUVcwYch7fCyLeHV/MPhLQ+/hUCltuS9w6exgOo4pL3IKNHsQznJDrNHfpSFFkIeXpTNyuQ9PBebDLP2Id7tgnP364mu91SHLAr+BQDQ8UqlsN8zWSiDfaNI7u0uZpOFfRApEAN7kc2cY5tt7Pk925pepqQO4lHWAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt2U/gjJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE817C4CEEE;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487596;
	bh=vop7Xk4LOnjHORnjgplnQTpPFrYm4fLGGxooqg7vOwQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Xt2U/gjJaLawvPKA4hurTJjhWDDrDtJJfQ4+j9XksJc8rwmwi65SrLY22IJxXv6Ot
	 6jDoTB3PIHH7NmX+2FUlPVCahbrPS1J+ZNzc7AwzdsbeBA1F37/pEe1KAKEEOT8aTI
	 3cpRvB2JAwW+2r/duuSmjAB1V3jZvgwLcEpkoChJuevJYD01ysORary2CJxp+4+0eD
	 o8RRtXtz9XUnJkr6HC6Ov28gSG6ZPAo6m/HJHh3Vz1+69q99KGxOnfP/5wHaka685G
	 lSUCBG/dK0aRNtHoSGNvORLB2PEpqvjo6QAhN3YzriTUC1ATv/xbNem96QkDgCbBTn
	 2iqp2eEBHmlCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EE7E7719D;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
From: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Date: Fri, 10 Jan 2025 13:39:55 +0800
Subject: [PATCH 05/11] drm: meson: update VIU and VPP support for S4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250110-drm-s4-v1-5-cbc2d5edaae8@amlogic.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736487593; l=4836;
 i=ao.xu@amlogic.com; s=20250103; h=from:subject:message-id;
 bh=AGf1FwU4Slf2RT1FJ8w3vm6caQaY7qdQQ+kqeFclowk=;
 b=O03WoOl7ev2tKtABGVQFak9car0stGf1lLLxx+0xHTWkr7gSQ0Z4TdcjEBv8DxNtBz4Q1NHR6
 YEijsRWs97vBmVj6VMlNFSALP2RgaJU3F1fS16/hQn9GjDHiYDW76UN
X-Developer-Key: i=ao.xu@amlogic.com; a=ed25519;
 pk=c0TSXrwQuL4EhPVf3lJ676U27ax2yfFTqmRoseP/fA8=
X-Endpoint-Received: by B4 Relay for ao.xu@amlogic.com/20250103 with
 auth_id=308
X-Original-From: Ao Xu <ao.xu@amlogic.com>
Reply-To: ao.xu@amlogic.com

From: Ao Xu <ao.xu@amlogic.com>

Update VIU and VPP initialization for S4 compatibility.
VPP_MISC register definition was different with G12 SoCs,
so disabled watermark control for S4.

Signed-off-by: Ao Xu <ao.xu@amlogic.com>
---
 drivers/gpu/drm/meson/meson_registers.h |  1 +
 drivers/gpu/drm/meson/meson_viu.c       |  9 ++++++---
 drivers/gpu/drm/meson/meson_vpp.c       | 12 +++++++++---
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index c62ee8bac272be035e92dbc8e743b2d4f864bc55..4017c3344b3f90686d1041eda4ff00a549ba6e54 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -463,6 +463,7 @@
 #define		VPP_OSD2_ALPHA_PREMULT          BIT(8)
 #define		VPP_OSD1_ALPHA_PREMULT          BIT(9)
 #define		VPP_VD1_POSTBLEND               BIT(10)
+#define		VPP_WATER_MARK_10BIT            BIT(10)
 #define		VPP_VD2_POSTBLEND               BIT(11)
 #define		VPP_OSD1_POSTBLEND              BIT(12)
 #define		VPP_OSD2_POSTBLEND              BIT(13)
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index cd399b0b7181499218a8f969c0d320be88fd93c4..cb3646ccae68f3ce35b1148e5b5df98b0116da96 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -425,7 +425,8 @@ void meson_viu_init(struct meson_drm *priv)
 	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
 	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
 		meson_viu_load_matrix(priv);
-	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
+	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+		 meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4)) {
 		meson_viu_set_g12a_osd1_matrix(priv, RGB709_to_YUV709l_coeff,
 					       true);
 		/* fix green/pink color distortion from vendor u-boot */
@@ -440,7 +441,8 @@ void meson_viu_init(struct meson_drm *priv)
 		VIU_OSD_WORDS_PER_BURST(4) | /* 4 words in 1 burst */
 		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
 
-	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
 		reg |= (VIU_OSD_BURST_LENGTH_32 | VIU_OSD_HOLD_FIFO_LINES(31));
 	else
 		reg |= (VIU_OSD_BURST_LENGTH_64 | VIU_OSD_HOLD_FIFO_LINES(4));
@@ -467,7 +469,8 @@ void meson_viu_init(struct meson_drm *priv)
 	writel_relaxed(0x00FF00C0,
 			priv->io_base + _REG(VD2_IF0_LUMA_FIFO_SIZE));
 
-	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4)) {
 		u32 val = (u32)VIU_OSD_BLEND_REORDER(0, 1) |
 			  (u32)VIU_OSD_BLEND_REORDER(1, 0) |
 			  (u32)VIU_OSD_BLEND_REORDER(2, 0) |
diff --git a/drivers/gpu/drm/meson/meson_vpp.c b/drivers/gpu/drm/meson/meson_vpp.c
index 5df1957c8e41f4e438545f91dd9eecb423e53b91..92e7d26abaa8771e5cc99a03e5a5ff32f5a48d30 100644
--- a/drivers/gpu/drm/meson/meson_vpp.c
+++ b/drivers/gpu/drm/meson/meson_vpp.c
@@ -102,11 +102,13 @@ void meson_vpp_init(struct meson_drm *priv)
 				priv->io_base + _REG(VPP_DUMMY_DATA1));
 		writel_relaxed(0x42020,
 				priv->io_base + _REG(VPP_DUMMY_DATA));
-	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
+	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
 		writel_relaxed(0xf, priv->io_base + _REG(DOLBY_PATH_CTRL));
 
 	/* Initialize vpu fifo control registers */
-	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) ||
+	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
 		writel_relaxed(VPP_OFIFO_SIZE_DEFAULT,
 			       priv->io_base + _REG(VPP_OFIFO_SIZE));
 	else
@@ -115,7 +117,8 @@ void meson_vpp_init(struct meson_drm *priv)
 	writel_relaxed(VPP_POSTBLEND_HOLD_LINES(4) | VPP_PREBLEND_HOLD_LINES(4),
 		       priv->io_base + _REG(VPP_HOLD_LINES));
 
-	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
+	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A) &&
+	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4)) {
 		/* Turn off preblend */
 		writel_bits_relaxed(VPP_PREBLEND_ENABLE, 0,
 				    priv->io_base + _REG(VPP_MISC));
@@ -137,6 +140,9 @@ void meson_vpp_init(struct meson_drm *priv)
 				priv->io_base + _REG(VPP_BLEND_VD2_H_START_END));
 	}
 
+	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
+		writel_bits_relaxed(VPP_WATER_MARK_10BIT, 0, priv->io_base + _REG(VPP_MISC));
+
 	/* Disable Scalers */
 	writel_relaxed(0, priv->io_base + _REG(VPP_OSD_SC_CTRL0));
 	writel_relaxed(0, priv->io_base + _REG(VPP_OSD_VSC_CTRL0));

-- 
2.43.0



