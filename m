Return-Path: <devicetree+bounces-114843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFE29AD1D8
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2CAF1C24E4E
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4CC205E32;
	Wed, 23 Oct 2024 16:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="ooSlda9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FA9204F7B
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702255; cv=none; b=QjHz+WPX8OFLYpgNG67g68uAEeIxzOHfx/qPxzXCRDP7pqMep6AKz5oNhcK/Pl+chbC1XkUUzRlEE0/GF2rX4ZaUwcBTZ111s1iMiLXJ2GLOzoiMZTZi5TcH4zqZqu7nHxob1MrfdvojRpacXwvaTcy4K4mHsVZ0SRnyLRQnbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702255; c=relaxed/simple;
	bh=C3Ok8sm57eKmxRqqzCgHPYhgz8IPwYz2HCnF7cfbcRM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bJlO9YNrjuWO5+VBXgginaeibayPwqISx+uyOds8hIWVZOHF86dKeUz45ZvR4bIpGIjkw7v1oVGL4EvonAfTzJn+vjqC0V6rRc5hir6T3cRDJe+R2ZYNiQdPzTRXipCwxiTWk6iC7OpWzBjV9/Px4mHVDBx6AWBSdA76DTMQW28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=ooSlda9d; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so51276415e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702252; x=1730307052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rM/PLpT0bJIFrHHYZG7pNuWN750b4ZOA/oUy8wRZ+s0=;
        b=ooSlda9dznT3V1h6pRhzcmXf2OIQ/8DdepYFfOKmKomRwvpIn9TM2VEPX19NPd4SX4
         DS74dtSoNnBVguNHi1bFa2tp7XbemkP/gN4tRbzMcX3io1YhHjYHIb8309JxiNPGN/73
         3GX3Wm2qVRjdJ3CAmWkd49Z/tiqfLvvMY2Zl1r5dcbk0KrAn2IEgvtRqCCOEWErZ2LmC
         8f2nXcR63by6M3v82SJdq+EiGDwLhgcNQTu1cNgjHy2N1Lq1Z4A/2O0kIFXGsCvLXad+
         a1ciJJqoTbS/V7pqURaG1LOAOlCU2t7YzwXgILidEQJYG0DdxXQrXZYRCzY1nyH3HIUH
         aROQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702252; x=1730307052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rM/PLpT0bJIFrHHYZG7pNuWN750b4ZOA/oUy8wRZ+s0=;
        b=s7WOmq0zKKYQBE39FDlmAWf6grfCn2KC7RMYmgeIr+zbf6PQ9ayd+mqGLGsXw5QCeZ
         kMKmExjF28gzYX5vel5+3FiUySeu2vDklZNufz4bK5V367t0liLQybvNRTcoKziB6V7+
         M66g+ggjDzyzgF12ibH5fVfOG6bAuD233oaWrkeH6k4B/jgJ+Chj4szJgiw3lA57DPse
         lL/e6rZjTLgX3xYH1W5Cw7XZ/xR57lBKnbqm8uRJwlFSznKbiW/DiCqcFgT5rbuhB13f
         T0EbVLjs7ffI8yTCwfYh163j13LZrbJ9ttEe81Mkrc1wQvJYGI3KeenNEvTiBR6hGdiO
         E9gg==
X-Forwarded-Encrypted: i=1; AJvYcCUx46amxuVZsIKtAuoGmCxlLs9iUp14+PHPeKJzbvdLm4a5gGJvYZ1164NawuRPr3GN7W4hJ+8WNHx/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz34K/F7Rgs/9qfFvjb7BA0fbrLA+NAH3peobT0KwQpwS2eW+O3
	TzzcJyJ/oWVBBoUGkO3eFhRTCkLUWLjKLfA8Gyzq7BjMnKB1D2dDaBVALNiiyRk=
X-Google-Smtp-Source: AGHT+IHztOCCr87oR87Z3+JBdAivrEgxHT4i0hywZWr6jUvTWMEc0lm3QWh2DVlbarj1WpyyJN12PQ==
X-Received: by 2002:adf:e009:0:b0:37c:cc60:2c68 with SMTP id ffacd0b85a97d-37efcef190cmr2044356f8f.5.1729702250772;
        Wed, 23 Oct 2024 09:50:50 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:50 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:28 +0100
Subject: [PATCH 31/37] clk: bcm: rpi: Allow cpufreq driver to also adjust
 gpu clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-31-1cc2d5594907@raspberrypi.com>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dom Cobley <popcornmix@gmail.com>
X-Mailer: b4 0.14.1

From: Dom Cobley <popcornmix@gmail.com>

For performance/power it is beneficial to adjust gpu clocks with arm clock.
This is how the downstream cpufreq driver works

Signed-off-by: Dom Cobley <popcornmix@gmail.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/clk/bcm/clk-raspberrypi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 6d5ee1cddded..274176a938c6 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -156,7 +156,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	struct raspberrypi_firmware_prop msg = {
 		.id = cpu_to_le32(data->id),
 		.val = cpu_to_le32(*val),
-		.disable_turbo = cpu_to_le32(1),
+		.disable_turbo = cpu_to_le32(0),
 	};
 	int ret;
 

-- 
2.34.1


