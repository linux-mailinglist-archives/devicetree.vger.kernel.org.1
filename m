Return-Path: <devicetree+bounces-246670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E44CBECC7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6D4AF3000968
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7812F069E;
	Mon, 15 Dec 2025 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kfdy+ywe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E815A274641
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814296; cv=none; b=CqlEa+cIHU/dETpwqKq8Z/dwlcwgf1z5t02PBJQWFT2hjY+YrpcSTEzq5e3Y+8BNIYIHWB3CTrOlrR7/IARSUO34w0kSZT/59+Hh9Do3WR+Bis8nN0wGUByCfWFXD5uh2qsCDRV2XnFYfDVMN8bp4PvOP66MgCf6CwDERHtBHFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814296; c=relaxed/simple;
	bh=+svGj6pFkAtz4dM95xDLbyRTS6AppM7IzjkE8gz/HiM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=deEebkamBKswqSu76qjs3eQjGgk4XSOuMNJ7NnVUJ+W/Q8Q+NSb3LE3trDNR2Qj6z2KZJ6d7qBpfYYD0wzMGSDJ1FMa7JBASwdhxPPf6H70YVSuK6UelDjw68eOAXZgOD1pUZZqNmfLlM/Wvs2Mzve3GpWynbM07cMJ3XcV2W7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kfdy+ywe; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so38269145e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765814293; x=1766419093; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1Fqs4gkhlm9HacWvv6Nl3LN/FruXH1vnc3nJyMT+NI=;
        b=kfdy+yweyvsY6+Rh/to3x49DBnjBgmDJRAmk3gEkJmoylFYEbA6OsQ8z4elp/q6Clb
         GLh++NM/iMTxC0YrjoTgAY/WkSA4VT8+T7ErOpW1HK837N1OpAM0Pm0Z6Fhl8T/bnXk+
         4QU5F/CSlGXAUO2bjDezBfM3kvPuTqNbjvFYl2dxELTFUVafVNhbL2s+OdF3nM1UXw0Q
         vQOtqVk8RDLMao55v8xSbUIyptSqu9iQKTgN+2uEx3vYQopwagaTZGGO3gZ74O+mcHbV
         wVO67PJ8VNqJ7ZowNN/Y2lmo3d9gSaUnbruVx8yJVcdqCJ1ClqGM4n1OuVTrkoJI4feu
         fvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814293; x=1766419093;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1Fqs4gkhlm9HacWvv6Nl3LN/FruXH1vnc3nJyMT+NI=;
        b=fNsVkqVtoYm5KfFpViWt6GtGG4qXv/DpjZ/uSWqVNFkhJQGEpnqPBoXvvN0XVBsP6d
         0QcJ8SfB4iTXiSnP4YEG2DmhF3b+KZ6nNH9ADq0q1OfQTVhZyInbnzP45F9MuaKb6ZTr
         R41nKRRh5JMBDIyGPWX82Cv5E085XqL0PYghda9St7/B5ofVC1U0lhsy3+vmK/sQLbor
         J7Ixvl2gXy3uucK/2QyedjOQDi+A5J/P2MDh8PjuFovBN2XvdUu46+IfY0lkNAWRCOX9
         cA1rMyN6oiOWbknMTZRyMDSMaj9b5cUTxbjfZSum64OGhwGWFDdbp5EtOfOQUMXuiFS2
         27gw==
X-Forwarded-Encrypted: i=1; AJvYcCV1gv9Xe8O+O+7xzxQVlUSym8wrT2tVAgAOf95lkrroJ2vkpDn126MKZh+15IEndpq9BcUAVH4snNHi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9pvJS1IJUk1IpEQazz9I4Lo4UfaReFj6rQ9OT6ncbyPqY1tCj
	q6Z0eQ1ck6SNk+U3Q72OuS5x0bny8FgJwC3HuhiZ6cyyfxDQpRv8tIRI
X-Gm-Gg: AY/fxX6G1zRT5+2CwxU5Tmt/t1LaNQ3Dj6PD3fyliL5zv9mYK4iEB4j0Z1o5lhV4T4G
	kGRz7POO7/NB/hFb21eiostEq9XBAqwSPuVbdc2KlKpctu8OcoR8srnWDSrnR71hh0NUa5sMjpR
	gsb/PPFSTOk4S7j59I432QgTLUMf7Dre5GStdTTi7ZZ2U3CJ8dT4ZtRTIRmWnhMnthGvwz+6cIb
	FcXtwJLf3zUECYEEzVXXnZo5FFIXf9RCilKiqJrYBP3U102htSNjOPVjNQYwoHF/05KjzEXC44B
	y1LjiPpgAnGMWwhnJhIfThWeR7Pum7MON9eFswCrPacdjNFLimY/HIieAAf9pnz81CtAT8urmP1
	BGfY4i2sHrrBFqVZaSjAB1rsjqNgKYxpqS9r7ntFreeBKcDWA5Z4HptJuf3vB1PZcqvWJv+dzth
	Lzx/1iK1yeJg5r5EgDysHwKYViGKKK7I7YejrgD4ZR2jROuY8OAqaBCg==
X-Google-Smtp-Source: AGHT+IGMVgIhuKcVBb92cS2zOyKL0niLxMLFcAQ59Q2GrSDsIf5GQWuh/rUzbLpSm7T2OqLF9CUksw==
X-Received: by 2002:a05:600d:13:b0:471:9da:5248 with SMTP id 5b1f17b1804b1-47a9327dc50mr92637315e9.26.1765814292949;
        Mon, 15 Dec 2025 07:58:12 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.238.173])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f3a1be5sm70209665e9.1.2025.12.15.07.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 07:58:12 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v7 0/3] drm/sitronix/st7920: Add support for the ST7920
 controller
Date: Mon, 15 Dec 2025 16:57:53 +0100
Message-Id: <20251215-st7920-v7-0-36771009ec01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2XPTW7DIBAF4KtErEs1zPBjuuo9qi6GAAlSE0cms
 lpFvnuxF3bqLh/iew8eoqahpCreDg8xpLHU0l9bcC8HcTzz9ZRkiS0LBDTQgZX17jyCTI4DEwb
 iYEW7fBtSLt9L0cdny+dS7/3ws/SOaj79VzEqCdJqDoZJZ8/wfrpw+Xo99hcxV4y4MQ9+ZdiYB
 p915yEHk/eMVqbgaY1mljsfrbGZgfZMPzFSK9ONkUGvcgfOBtwzszGF25pZ/pYiG7QuktkzuzF
 UuDI7PzISWGew7f1Zm6bpF8oFp42vAQAA
X-Change-ID: 20250806-st7920-e7aba32b3ab6
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

This patch-series adds support for the Sitronix ST7920 controller, which
is a monochrome dot-matrix graphical LCD controller that has SPI and
parallel interfaces.

The st7920 driver only has support for SPI so displays using other
transport protocols are currently not supported.

* Patch #1 adds the driver.
* Patch #2 adds the DT binding schema.
* Patch #3 adds the MAINTAINERS information.

---
Changes in v7:
- Fix Makefile typo and checkpatch --strict warnings.
- Update header paths and add missing includes.
- Remove unused DRIVER_DATE.
- Link to v6: https://lore.kernel.org/r/20251212-st7920-v6-0-4d3067528072@gmail.com

Changes in v6:
- Initialize spi7920_error structure.
- Call drm_dev_exit() when appropriate.
- Link to v5: https://lore.kernel.org/r/20251126-st7920-v5-0-64eda5267d35@gmail.com

Changes in v5:
- Remove unused device variant structures and hard-code display
  resolution.
- Fix GPIO reset logic to correctly handle logical levels.
- Use kzalloc() instead of kmemdup() for atomic state duplication.
- Refactor atomic update to integrate cpu access with the damage loop.
- Rename macros to avoid the reserved DRM_ prefix.
- Use DRM logging helpers instead of generic device logging.
- Link to v4: https://lore.kernel.org/r/20251031-st7920-v4-0-35291f8076b2@gmail.com

Changes in v4:
- Added definitions for the VDD power supply and the XRESET GPIO line,
  which were identified as minimum requirements from the datasheet.
- The error handling strategy has been refactored to propagate an
  error-tracking struct from the caller.
- The atomic enable/disable logic has been correctly moved from
  drm_encoder_helper_funcs to drm_crtc_helper_funcs, as the
  functionality is bound to the CRTC.
- Added drm_dev_enter() and drm_dev_exit() calls to the atomic_enable
  and atomic_disable helpers to correctly manage the device's runtime
  power state.
- Renamed macro definitions to match the correct terminology.
- Link to v3: https://lore.kernel.org/r/20251006-st7920-v3-0-4f89d656fa03@gmail.com

Changes in v3:
- Reorganize the patch documenting compatible (DT bindings) before their
  use.
- Drop reduntant information from DT bindings.
- Use a goto label to ensure drm_dev_exit() is called in the error path
  of drm_gem_fb_begin_cpu_access().
- Link to v2: https://lore.kernel.org/r/20250909-st7920-v2-0-409f4890fb5f@gmail.com

Changes in v2:
- Refactor SPI communication:
  * Internalize error handling and delays within the st7920_spi_write()
    helper.
  * Split the main SPI write function into smaller, command-specific
    helpers for clarity.
- Improve DRM/KMS logic:
  * Relocate CPU access calls (drm_gem_fb...) to the atomic_update hook.
  * Use standard DRM helpers (drm_crtc_helper_mode_valid_fixed and
    drm_connector_helper_get_modes_fixed) for mode validation and
    creation.
- General code cleanup:
  * Remove dead code related to ST7920_FAMILY.
  * Replace WARN_ON() with drm_WARN_ON_ONCE().
  * Ensure single variable assignments per line.
- Fix probe initialization order:
  * Move spi_set_drvdata() and st7920_init() to occur before device
    registration.
- Devicetree:
  * Update bindings to address feedback from review (e.g., reference
    common SPI properties).
- MAINTAINERS:
  * Add a proper commit message to the patch.
- Link to v1: https://lore.kernel.org/r/20250806-st7920-v1-0-64ab5a34f9a0@gmail.com
---

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>

---
Iker Pedrosa (3):
      dt-bindings: display: sitronix,st7920: Add DT schema
      drm: Add driver for Sitronix ST7920 LCD displays
      MAINTAINERS: Add entry for Sitronix ST7920 driver

 .../bindings/display/sitronix,st7920.yaml          |  58 ++
 MAINTAINERS                                        |   7 +
 drivers/gpu/drm/sitronix/Kconfig                   |  10 +
 drivers/gpu/drm/sitronix/Makefile                  |   1 +
 drivers/gpu/drm/sitronix/st7920.c                  | 867 +++++++++++++++++++++
 5 files changed, 943 insertions(+)
---
base-commit: c571cb70e1ed43ee543c70151e61a001ab2eefa2
change-id: 20250806-st7920-e7aba32b3ab6

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


