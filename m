Return-Path: <devicetree+bounces-114813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA749AD15D
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A30AA1F242AE
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EEEB1CEE8D;
	Wed, 23 Oct 2024 16:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="AZrphAs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D2F1CC899
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702213; cv=none; b=Rg3Yi1SjydH7blGrs96mizvKrECSUVKPd/JE9LBICHAxE4owZqIhzWUOWeCvK9CIYQt2cQob7XOYmqOcH0DLz9/WSV5198KGyzLTtZ4eqA6vfeemtdZRI+UEvcI6E4vHzfDZexI/Nb6d9+EKbNu32RVoyQQsYLLR4BvApkRq9ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702213; c=relaxed/simple;
	bh=n8bCyA0yap3ro/SF3zsfgPSSj1Oh1UzSF38O4Gl7AJA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pEWHPkxOR8Epnne4/F6CDDY2TW1EHx++XlrqtK53WQWhRfCIh8aaidpm0PdSfKQ/Ze3TL4QUNmglFFNTofWNsLEE8caNvhGksSMRE9qbjzJYBhNqb5RH/EMPZpFUKQZ0hHB26nzYc99qnlJp5itgV46MEZVWMF0xsMGdo7hqYYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=AZrphAs1; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so70593245e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702208; x=1730307008; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fv/1Z9tzison0vWkaRfplbCiwMhfJrTY+JcjjLZ4bRI=;
        b=AZrphAs1OYqQUe8rTUCGBFA91j6vMb88UZ1FJ38WUmyqukjgkaJc1Kz/uLGwCbY0sa
         0dUsESKZRpLp1ywDw7jHjpDw8j5mbv1tdywCk+EAtSzgGdzOhBpMwcDQwTT4GYk8ipSE
         17cxHl0nTFcl2ybq8dLgYb4iYpg61B/Txpwf3jlo7LXE44stjeWSjjk4Xpkbr3C7Yswl
         jO6Q43J8qV4W9KTd0pRUkN3yi1WWnn/Wb/UpJsBWqdN8+loKIQSVzCt5WMls4PrmdMwf
         8YGR/N4/ExenjT7Folq/EA0OWQMqyPJwimFjx6pdbJkel4fYNrsDba1QzTbRIaVdDfrt
         EFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702208; x=1730307008;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fv/1Z9tzison0vWkaRfplbCiwMhfJrTY+JcjjLZ4bRI=;
        b=IlFZ6GqRn/Kfhm6IRdqqyKvK8aIz+2q4N4CNacGu93rF5KYLj7sQgGwoOteoF3SQLE
         czf+YmAgZNjOjAn7Io2v1VJMuwOhhTJh5EYSpGLD3mOdlghBpXzhJDu53cn/e3pgQko8
         OC8haOKrbk4gunzRxOJSPScWDNP/dtP4BQsGK/3PI9E/v01qvPTtce0H5zjXJHFU7AJA
         P1q8qeNlfBfC2v97PUdFkbUL0/qjOJmO0oP9mcdDDEPa/T5kTmPVVYT/s/qW00GP82zb
         3XrOY0YL52FZC0p1+5Tp0rW6kjV8b9kP0YOHb07qjYeijTEkw005RSfpiC6DdyHUkLMW
         so5g==
X-Forwarded-Encrypted: i=1; AJvYcCV7Dafc8H/nRxWoZCJS7j7oEAHkO2k3BdQ+MW1jwrDuDWB2TeUKHUGl2laND9sMElZcgQox+k3A2jjs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4UgcP/vjAT97qJ12DevjZRKz2oR4wuGFo/nFJ6LyhMxP1Y0fn
	nbBybvCI/dBnHuq99S/dd7R8XgfFWt/KOlUud6I+NFRJNUDZ0os/9/Mm8o5zlV8=
X-Google-Smtp-Source: AGHT+IFEi6issFTDuLur88QJO6Dp39hCaYAaxys3/Dw/x3s1p+bY6a0qlFbuGvX7ja9zZJDtSqTNRQ==
X-Received: by 2002:a05:600c:1d99:b0:431:5f1c:8359 with SMTP id 5b1f17b1804b1-4318415f41fmr26199455e9.15.1729702208135;
        Wed, 23 Oct 2024 09:50:08 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:07 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 00/37] drm/vc4: Add support for BCM2712 / Pi5 display
 hardware
Date: Wed, 23 Oct 2024 17:49:57 +0100
Message-Id: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADUpGWcC/x3MQQqEMAxA0atI1gbaVJTxKuKitFGzGC2pFkG8+
 5RZvsX/D2RW4Qxj84BykSzHXmHbBsLm95VRYjWQoc4aQxj1iyV0SIMlzFdKh5748dGR69kFv0B
 Nk/Ii9387ze/7A33lS+JmAAAA
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

This series adds the required DRM, clock, and DT changes
required to support the display hardware on Pi5.
There are a couple of minor fixes first before the main patches.

Many of the patches were authored by Maxime whilst working
for us, however there have been a number of fixes squashed
into his original patches as issues have been found. I also
reworked the way UBM allocations are done to avoid double
buffering of the handles as they are quite a limited resource.

There are 2 variants of the IP. Most Pi5's released to date
have used the C1 step of the SoC, whilst the 2GB Pi5 released
in August is using the D0 step, as will other boards in future.

Due to various reasons the register map got reworked between
the steps, so there is extra code to handle the differences.
Which step is in use is read out of the hardware, so they
share a compatible string.

Thanks!

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
Dave Stevenson (12):
      drm/vc4: Limit max_bpc to 8 on Pi0-3
      drm/vc4: Use of_device_get_match_data to set generation
      drm/vc4: Fix reading of frame count on GEN5 / Pi4
      drm/vc4: drv: Add support for 2712 D-step
      drm/vc4: hvs: Add in support for 2712 D-step.
      drm/vc4: plane: Add support for 2712 D-step.
      drm/vc4: hdmi: Support 2712 D-step register map
      drm/vc4: Enable bg_fill if there are no planes enabled
      drm/vc4: Drop planes that are completely off-screen or 0 crtc size
      arm64: dts: broadcom: Add firmware clocks and power nodes to Pi5 DT
      arm64: dts: broadcom: Add display pipeline support to BCM2712
      arm64: dts: broadcom: Add DT for D-step version of BCM2712

Dom Cobley (3):
      clk: bcm: rpi: Add ISP to exported clocks
      clk: bcm: rpi: Allow cpufreq driver to also adjust gpu clocks
      clk: bcm: rpi: Enable minimize for all firmware clocks

Maxime Ripard (22):
      dt-bindings: display: Add BCM2712 HDMI bindings
      dt-bindings: display: Add BCM2712 HVS bindings
      dt-bindings: display: Add BCM2712 PixelValve bindings
      dt-bindings: display: Add BCM2712 MOP bindings
      dt-bindings: display: Add BCM2712 MOPLET bindings
      dt-bindings: display: Add BCM2712 KMS driver bindings
      drm/vc4: drv: Support BCM2712
      drm/vc4: hvs: Add support for BCM2712 HVS
      drm/vc4: crtc: Add support for BCM2712 PixelValves
      drm/vc4: hdmi: Add support for BCM2712 HDMI controllers
      drm/vc4: txp: Introduce structure to deal with revision differences
      drm/vc4: txp: Rename TXP data structure
      drm/vc4: txp: Add byte enable toggle bit
      drm/vc4: txp: Add horizontal and vertical size offset toggle bit
      drm/vc4: txp: Handle 40-bits DMA Addresses
      drm/vc4: txp: Move the encoder type in the variant structure
      drm/vc4: txp: Add a new TXP encoder type
      drm/vc4: txp: Add support for BCM2712 MOP
      drm/vc4: txp: Add BCM2712 MOPLET support
      drm/vc4: Add additional warn_on for incorrect revisions
      clk: bcm: rpi: Create helper to retrieve private data
      clk: bcm: rpi: Add disp clock

 .../bindings/display/brcm,bcm2711-hdmi.yaml        |   2 +
 .../bindings/display/brcm,bcm2835-hvs.yaml         |   5 +-
 .../bindings/display/brcm,bcm2835-pixelvalve0.yaml |   3 +
 .../bindings/display/brcm,bcm2835-txp.yaml         |   5 +-
 .../bindings/display/brcm,bcm2835-vc4.yaml         |   1 +
 arch/arm64/boot/dts/broadcom/Makefile              |   1 +
 arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts |  37 +
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts   |  42 +
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 188 +++++
 drivers/clk/bcm/clk-raspberrypi.c                  |  34 +-
 drivers/gpu/drm/vc4/tests/vc4_mock.c               |   8 +-
 drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c     | 106 +--
 drivers/gpu/drm/vc4/vc4_crtc.c                     |  96 ++-
 drivers/gpu/drm/vc4/vc4_drv.c                      |  19 +-
 drivers/gpu/drm/vc4/vc4_drv.h                      |  54 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     | 112 ++-
 drivers/gpu/drm/vc4/vc4_hdmi.h                     |   4 +
 drivers/gpu/drm/vc4/vc4_hdmi_phy.c                 | 640 +++++++++++++++
 drivers/gpu/drm/vc4/vc4_hdmi_regs.h                | 217 ++++++
 drivers/gpu/drm/vc4/vc4_hvs.c                      | 737 ++++++++++++++++--
 drivers/gpu/drm/vc4/vc4_kms.c                      | 102 ++-
 drivers/gpu/drm/vc4/vc4_plane.c                    | 866 ++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_regs.h                     | 297 +++++++
 drivers/gpu/drm/vc4/vc4_txp.c                      |  91 ++-
 include/soc/bcm2835/raspberrypi-firmware.h         |   1 +
 25 files changed, 3464 insertions(+), 204 deletions(-)
---
base-commit: 91e21479c81dd4e9e22a78d7446f92f6b96a7284
change-id: 20241002-drm-vc4-2712-support-9ad3236e3caf

Best regards,
-- 
Dave Stevenson <dave.stevenson@raspberrypi.com>


