Return-Path: <devicetree+bounces-115794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BE29B0B51
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E254A1F223C5
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DCA922802C;
	Fri, 25 Oct 2024 17:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="gZxP74nX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5D92161E7
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876587; cv=none; b=GRSvInKgYxFpZUvcqvQ5R0LC+S/C2UytuUIgwwOP59EtkSjBBVirE9Z2KsNl0ViGyktUNYC2iqvSufuSnfRYsTvPYWlKJD0ymSYLHEDTT6V+FiwTXg1rTnDcyXSSSFm8iLC3NL73z6SIMTM9ioRGfgckSP58Uhs7NFGX7XCR9oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876587; c=relaxed/simple;
	bh=F0XAo5mz5eUCdJ+Qp7hebNYu4JuOVVuD+OJwvRorfLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NYBS+UW2yb/kICmKqpaRl4rg2GUGCcn1/qQuiE55iiZpuAQXWw5Ru9gv1OpwC8TaB/hgPQ42gmZWckZtwKa7AThfeeXOfmqB+qktXfWzxBpsAfeTYdYKLXE6117nN6kT9rIeOg52y0hFvOzNL6n9pj1cwjS7lghmdYn+r9ZGuAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=gZxP74nX; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4315eac969aso15930625e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876582; x=1730481382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xU//JPSDEyUFE1ZFqfKvgV23VREouvKrVYoOcahlOXU=;
        b=gZxP74nXhgSkHewcRkTkJ7WbuoBNnobywlAlcWcbyGnAqsywOBrarRVJFBwrh2bvYQ
         xsd4+J4Zrsx9+f7JQJmVRIRGvrA9mYWbiq9CBxZTOBxYZ63ny52dlgGXDnWjAnqIxksM
         SsxFU/vhgA9x0ajzGqMfrwecaukSXcHMK3W5bKFXWXxi9IIpDehSQt2MvDltC0DcpoU6
         eGFZSsPyi9yN9yBcJFR2st77Z0AX0DLyoOaeZvJbr1iOAX198NQKxRvqZti+AysKhc+Q
         4rw3QhqpQK03bM7JDBs6AbA6ULY0+VrM2x2mIlhCG+Q59CurEquO9f7NPBadtndyosUm
         4bhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876582; x=1730481382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xU//JPSDEyUFE1ZFqfKvgV23VREouvKrVYoOcahlOXU=;
        b=TMFLrI/FNmMhuBKbEQDPNqXDT6DEoP+56uwkcreVgDVcr7Z9JmV7XWnwfx1U7z9FlK
         rDVbvKXxvKAowcm81rqMa5auAcq0e6sxDyfHhIOszQtTaoU+pPIBFxCFq9DNw+ork7DE
         Rt5w0xfiH8grnu13pxnknei8RUwCP8+H77dgi4P7jZd+X69v+coNN1t5A65H//AJsvob
         MYCNIVZS3+J80H8GxVEmxY2/c2jYltnvo+7+aA4xJOh09QKWKMxAjuPK2ttxlDgDSfBw
         hnITUEnZZJjtfO52CErkW4VI0Lw5FZbg38v/8jLYmxPNdqiSdvDDp1BbdSMCfIolDUlc
         ZU9A==
X-Forwarded-Encrypted: i=1; AJvYcCVr7msZRt5u1jFsfWZEvWncDUkvqpdPDOJ/a9+hXZSGPSjRCfhIt22UGbbofyr+lxrYZhLDS91I6eQr@vger.kernel.org
X-Gm-Message-State: AOJu0YyOsHgq4kREk4hyktTmOc5fQz4/GOFueq0eco3rtb6uEOibgH66
	PPG2bXn+f4iUOMWyjBdSA+UzUuii8tUlccUS7XJUJYNl5p1QcZHDPs4YJjoA7AY=
X-Google-Smtp-Source: AGHT+IHAWpLHmHwxEQ7ZVCnrScJ+3akRtweGAEi8Ve0sUsAzGKfVQQMDJC1MG28sgbwB6TwBnzAs5Q==
X-Received: by 2002:a05:600c:1e1e:b0:431:5226:1633 with SMTP id 5b1f17b1804b1-4319a576ba8mr2501215e9.6.1729876581722;
        Fri, 25 Oct 2024 10:16:21 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:21 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:52 +0100
Subject: [PATCH v2 21/36] drm/vc4: txp: Add BCM2712 MOPLET support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-21-35efa83c8fc0@raspberrypi.com>
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

The BCM2712 features a simpler TXP called MOPLET. Let's add support for
it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_txp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 0fb8a57652b5..f6b6f8627f61 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -524,6 +524,19 @@ static const struct vc4_txp_data bcm2712_mop_data = {
 	.supports_40bit_addresses = true,
 };
 
+static const struct vc4_txp_data bcm2712_moplet_data = {
+	.base = {
+		.name = "moplet",
+		.debugfs_name = "moplet_regs",
+		.hvs_available_channels = BIT(1),
+		.hvs_output = 4,
+	},
+	.encoder_type = VC4_ENCODER_TYPE_TXP1,
+	.high_addr_ptr_reg = TXP_DST_PTR_HIGH_MOPLET,
+	.size_minus_one = true,
+	.supports_40bit_addresses = true,
+};
+
 const struct vc4_txp_data bcm2835_txp_data = {
 	.base = {
 		.name = "txp",
@@ -630,6 +643,7 @@ static void vc4_txp_remove(struct platform_device *pdev)
 
 static const struct of_device_id vc4_txp_dt_match[] = {
 	{ .compatible = "brcm,bcm2712-mop", .data = &bcm2712_mop_data },
+	{ .compatible = "brcm,bcm2712-moplet", .data = &bcm2712_moplet_data },
 	{ .compatible = "brcm,bcm2835-txp", .data = &bcm2835_txp_data },
 	{ /* sentinel */ },
 };

-- 
2.34.1


