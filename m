Return-Path: <devicetree+bounces-115785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9102C9B0B39
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C09AD28A2CA
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D80216DE5;
	Fri, 25 Oct 2024 17:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="f9CD0WTz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22314224DA7
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876580; cv=none; b=Y4TkV6Kk6Ms4F3ZHe9hJLfNQOZZnTDB0Zu8KhCED5mV0MvPHzpVN+r5psfXFHfmZyUCX04P3n+7IlS1vjdF4M/xy+g1PfjTR6shbQgIpFAmDaU3E1R2LwSRNkWXaohGNz0JGbIYNg49N/LkrvXUcsToX0RnTDELK6GQVU+G9H50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876580; c=relaxed/simple;
	bh=WV/UFQyvWXojwAqHvOtHxgMXrfRl7lw3BEm8g+qz5Yo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PRr9/0PfuDSIdoQdyRwKERQ1PUArdhXsOhHbieXihxnNPdqWqEkBxNiRakIF/NlBULrjyYNJAVsM0JEhE/+B4ssgXUun5J/A71kAtB6tRS0by81M3OECgc/WM4SX5/OStAm65VnQSumKqmUe7W2YRaPl4u/THdKQXw3cYsCi6SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=f9CD0WTz; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d4ac91d97so1772097f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876575; x=1730481375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xZSl/F4a59d6cGzaQ8UBGb7tAkWNLG3z9Ozwy3jDhoY=;
        b=f9CD0WTzvGO49lrQw333IymYW+nanWfJp+vvAhUi9bwAfgrFeG1nrBUEkak7l1HBK4
         MGojIt1LP2vIGUR2E1UwIYCbHLgKXxH/XZSsmdMIC3ITeuIDMie6m++59oac7Fy9km0L
         1y3wTGGvwja9cdfmp+ORo2dMIcARj0uAmHO0zlI/6O6TisopvwEOs6GcVJijmybHa+9T
         bl4Y4u+zW/LQrurvUZcrMgHW14TAZRacfQ9tRsvi4GDBmmTdXCqvQNO5VzSy+WZ5uWz8
         k2PeiWktYT4PlFBIcgcm27kB8e1aNjn1gykRFhVlKl3I+5BMV0E4QRCein+xtlCvz1gf
         OCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876575; x=1730481375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZSl/F4a59d6cGzaQ8UBGb7tAkWNLG3z9Ozwy3jDhoY=;
        b=XrxxGS5gmecldLZjv47cNnzwL1/I0K6Sk4aOGbm38/uV3cqDLdRYJj9pMeAWtkbY6J
         t1CbG3SRyC9RDMERv671qbSOyOvzZ4IW6DMl1K1AtAfELOMiZjIGV0hE1zo3SqDQfXTI
         m0CFfSktCoCTbEf3qN0XtxNn0/P+Dp0H8NmflaHb8dK/W3tFUQ8Izm3gRThd5NdgW1pn
         byqstYH4M9df3XwnayK6seedDr8rMhM2Crtbe51VTmsvU9pZG5VBvp6gQV2veo6lgRVa
         zvTJOhHSbMIE1P+A/DQME0Yp/wt8LYYfGkGPXpFTvK84eMYkgs65DVAVMlrgF8Cvb61Q
         UJyg==
X-Forwarded-Encrypted: i=1; AJvYcCU4lzVxJp9F+G5fwAAbRemn8tMhHjThFosZWpCqyMymk/TBVY+JH9MS7y+e9KdpFdy3OKyJirPRHgXC@vger.kernel.org
X-Gm-Message-State: AOJu0YxFDYjwIT5Qm0fM3W9OrgHBH5AFxsCvzqRPcabfgH/ZcfXkp3sK
	EKFq/etorMOJ6gag3mBqQokWT6Piz2gE9LtpKhQFXE5LTeMWGonvtZftQgS/i00=
X-Google-Smtp-Source: AGHT+IGYCJwSrz9ld715UfDoH5XKNaydjNgYU5P9irKdws9FIn39XqxjXFv+TI0I/O8NtYhIy9aKqg==
X-Received: by 2002:adf:f850:0:b0:37e:d2b8:883a with SMTP id ffacd0b85a97d-380611409c4mr151148f8f.12.1729876574029;
        Fri, 25 Oct 2024 10:16:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:13 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:44 +0100
Subject: [PATCH v2 13/36] drm/vc4: txp: Introduce structure to deal with
 revision differences
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-13-35efa83c8fc0@raspberrypi.com>
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

The BCM2712 will have several TXP with small differences. Let's add a
structure tied to the compatible to deal with those differences.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/tests/vc4_mock.c |  4 ++--
 drivers/gpu/drm/vc4/vc4_drv.h        |  6 +++++-
 drivers/gpu/drm/vc4/vc4_txp.c        | 23 ++++++++++++++++-------
 3 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock.c b/drivers/gpu/drm/vc4/tests/vc4_mock.c
index 6527fb1db71e..c7b91c87f1bc 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock.c
@@ -51,7 +51,7 @@ struct vc4_mock_desc {
 
 static const struct vc4_mock_desc vc4_mock =
 	VC4_MOCK_DESC(
-		VC4_MOCK_CRTC_DESC(&vc4_txp_crtc_data,
+		VC4_MOCK_CRTC_DESC(&vc4_txp_data.base,
 				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP,
 							DRM_MODE_ENCODER_VIRTUAL,
 							DRM_MODE_CONNECTOR_WRITEBACK)),
@@ -77,7 +77,7 @@ static const struct vc4_mock_desc vc4_mock =
 
 static const struct vc4_mock_desc vc5_mock =
 	VC4_MOCK_DESC(
-		VC4_MOCK_CRTC_DESC(&vc4_txp_crtc_data,
+		VC4_MOCK_CRTC_DESC(&vc4_txp_data.base,
 				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP,
 							DRM_MODE_ENCODER_VIRTUAL,
 							DRM_MODE_CONNECTOR_WRITEBACK)),
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index a68cea921c11..1ed1fb5aa7e8 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -536,7 +536,11 @@ struct vc4_crtc_data {
 	int hvs_output;
 };
 
-extern const struct vc4_crtc_data vc4_txp_crtc_data;
+struct vc4_txp_data {
+	struct vc4_crtc_data	base;
+};
+
+extern const struct vc4_txp_data vc4_txp_data;
 
 struct vc4_pv_data {
 	struct vc4_crtc_data	base;
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index ffe1f7d1b911..dcb1b3fd37de 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -159,6 +159,7 @@
 
 struct vc4_txp {
 	struct vc4_crtc	base;
+	const struct vc4_txp_data *data;
 
 	struct platform_device *pdev;
 
@@ -484,17 +485,20 @@ static irqreturn_t vc4_txp_interrupt(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-const struct vc4_crtc_data vc4_txp_crtc_data = {
-	.name = "txp",
-	.debugfs_name = "txp_regs",
-	.hvs_available_channels = BIT(2),
-	.hvs_output = 2,
+const struct vc4_txp_data vc4_txp_data = {
+	.base = {
+		.name = "txp",
+		.debugfs_name = "txp_regs",
+		.hvs_available_channels = BIT(2),
+		.hvs_output = 2,
+	},
 };
 
 static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
+	const struct vc4_txp_data *txp_data;
 	struct vc4_encoder *vc4_encoder;
 	struct drm_encoder *encoder;
 	struct vc4_crtc *vc4_crtc;
@@ -509,6 +513,11 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	if (!txp)
 		return -ENOMEM;
 
+	txp_data = of_device_get_match_data(dev);
+	if (!txp_data)
+		return -ENODEV;
+
+	txp->data = txp_data;
 	txp->pdev = pdev;
 	txp->regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(txp->regs))
@@ -519,7 +528,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	vc4_crtc->regset.regs = txp_regs;
 	vc4_crtc->regset.nregs = ARRAY_SIZE(txp_regs);
 
-	ret = vc4_crtc_init(drm, pdev, vc4_crtc, &vc4_txp_crtc_data,
+	ret = vc4_crtc_init(drm, pdev, vc4_crtc, &txp_data->base,
 			    &vc4_txp_crtc_funcs, &vc4_txp_crtc_helper_funcs, true);
 	if (ret)
 		return ret;
@@ -579,7 +588,7 @@ static void vc4_txp_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id vc4_txp_dt_match[] = {
-	{ .compatible = "brcm,bcm2835-txp" },
+	{ .compatible = "brcm,bcm2835-txp", .data = &vc4_txp_data },
 	{ /* sentinel */ },
 };
 

-- 
2.34.1


