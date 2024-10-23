Return-Path: <devicetree+bounces-114833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 638849AD1B9
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEA22B23BB4
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD761FF025;
	Wed, 23 Oct 2024 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="pfFaTwNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAC41FBC99
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702233; cv=none; b=NZu+66jzD4r9ll3NL6M9mkkI+hDyjVtblYkP1GqYfT5ldist8z6dFOnf6Ze9bmH+m1g3vLnau1t18wTL9yNfIuLVJEAZ7UNYxDFhhhaDu+C0QZhJ+2qCiTHNAWTO/qwv46KVpmZegkWzjtnpw35sqex8vhxQKOVB0wlQutmx4EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702233; c=relaxed/simple;
	bh=hZp2dsgRak+DBUpRPMdUqcENCDOCbZSvFgD7/5lYk1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h0FIr0Ksi2qMSimOs5H3aSzuy+KYW5pK8Y9UaOzXK0J6qJ+DgVyrjsrERiRXeNanMbFKSG5N0WKzCCY/JwoKsgIj7NkqX39Fx2PM9fybTpk2czdNgP/Io2ajZb76lvqdVqUne6Ou2gmG7FBpL5OKMcPQxyZNXeSoKGH9IHZl25A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=pfFaTwNh; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43158625112so69898885e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702229; x=1730307029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7edjMwM9R4r+Uxc3cqOP0qRuD6L2fQT2FKa6L1QAhs0=;
        b=pfFaTwNhsfRAQUzwML/A9daIQ0TMLS6LVKojlN1B0+qkb2jJNKIl7O0v/cgFOdjgdt
         vYDzyD3eyN3rapyV2XN5R/sQSfCOhBYyRNvIO08bGpH0YOM1lNyntbfGPbpLLxkOroiZ
         rBwy+1xjSuyd+f1MYAhYVVR9E7HCjwjcdaKduc11isaH9muOe4dSt40vavtPVg3/zp0x
         e/GSalyUmYa4iPeoU5yC5YwopDJdq85v4SNKHmHVWPcFqFmEXIxvl4BMXTLg3kdCT2y1
         cv/HSgfL7Ai6TCN7/yiyfOJlOmLvJaiJDGcWjN3uwBpS2xVp/kIFznU8reCJhxqyHb3g
         el9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702229; x=1730307029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7edjMwM9R4r+Uxc3cqOP0qRuD6L2fQT2FKa6L1QAhs0=;
        b=IU06EsGBoz2lIF+xRaIWKOd0E7Ds5UjH6JoyLQb/xpLSiy8LpuxruymyQyX0+WFDbw
         veoGadmnsFTtkw9z5Kq/J1OwvI8U92skiv8AuHLC4oja5xp7gR9PQGv23oTdB3ihvZXA
         fXWSzBKlbEaddvMvhZkJ2HxHwl+ZcL5xAxzNmNI60F+lC17j6PfBb5VXrJuyTuQlaWzX
         6A2HEneH2Qe7SAGA5dYBsW+meREnNr9q+FU8u5Z9YGTFGcus8IRkrB4M8L+P8T8gHoaV
         Cy8HgmRA8glTRTfdk9hFHUFwGvDBrbCnP7fPYIFx6ybv1KAFkDRLgaBdfg7UR3xPeNr2
         25Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWDQ1RLkc2gpSiPppo6Dufrq8ezu+rJp6vmNgGre0WN3wwyj4cFwFIdOixMm+aGf1DtXE8/fcptSTMg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu4MiD8yTJDDY9qtP3CzVpScFyOpBV85G9M1aOu2336Gt5mj2+
	nH/IsyUdOqOnquisrp4uX8VdxbFPUIYMAW9pMVpRf3L6AezCc8UlvuMvAqtvA5w=
X-Google-Smtp-Source: AGHT+IHmnnBF1XbicsZZSX63ufvz1Ey37usN3AVArfITs1P5URFwomZVlyoIAXXLcYHQj75m7dMF0g==
X-Received: by 2002:a05:600c:5802:b0:431:5f8c:ccbd with SMTP id 5b1f17b1804b1-431841ee182mr25601835e9.4.1729702229220;
        Wed, 23 Oct 2024 09:50:29 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:28 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:18 +0100
Subject: [PATCH 21/37] drm/vc4: txp: Add support for BCM2712 MOP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-21-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
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

The BCM2712 has an evolution of what used to be called TXP in the
earlier SoCs, but is now called MOP.

There's a few differences still, so we can add a new compatible to deal
with them easily.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_txp.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 2979d141f3bb..befb99c9b5bb 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -386,6 +386,7 @@ static const struct drm_connector_funcs vc4_txp_connector_funcs = {
 static void vc4_txp_encoder_disable(struct drm_encoder *encoder)
 {
 	struct drm_device *drm = encoder->dev;
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	struct vc4_txp *txp = encoder_to_vc4_txp(encoder);
 	int idx;
 
@@ -404,7 +405,8 @@ static void vc4_txp_encoder_disable(struct drm_encoder *encoder)
 		WARN_ON(TXP_READ(TXP_DST_CTRL) & TXP_BUSY);
 	}
 
-	TXP_WRITE(TXP_DST_CTRL, TXP_POWERDOWN);
+	if (vc4->gen < VC4_GEN_6_C)
+		TXP_WRITE(TXP_DST_CTRL, TXP_POWERDOWN);
 
 	drm_dev_exit(idx);
 }
@@ -508,6 +510,20 @@ static irqreturn_t vc4_txp_interrupt(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+const struct vc4_txp_data bcm2712_mop_data = {
+	.base = {
+		.name = "mop",
+		.debugfs_name = "mop_regs",
+		.hvs_available_channels = BIT(2),
+		.hvs_output = 2,
+	},
+	.encoder_type = VC4_ENCODER_TYPE_TXP0,
+	.high_addr_ptr_reg = TXP_DST_PTR_HIGH_MOP,
+	.has_byte_enable = true,
+	.size_minus_one = true,
+	.supports_40bit_addresses = true,
+};
+
 const struct vc4_txp_data bcm2835_txp_data = {
 	.base = {
 		.name = "txp",
@@ -613,6 +629,7 @@ static void vc4_txp_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id vc4_txp_dt_match[] = {
+	{ .compatible = "brcm,bcm2712-mop", .data = &bcm2712_mop_data },
 	{ .compatible = "brcm,bcm2835-txp", .data = &bcm2835_txp_data },
 	{ /* sentinel */ },
 };

-- 
2.34.1


