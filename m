Return-Path: <devicetree+bounces-242496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB23C8B1F1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 24DB34E5D74
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2006130504A;
	Wed, 26 Nov 2025 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfKZL6ap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1D31D364
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764176674; cv=none; b=hNX0FkKwX1zvdz2G3D3QXrfN19K4w/bRMFHm54bGFL/7k35cNzRy01LybGMAewKdsPp4DAad0RXLllnVv5CbyYeW8+4js3F+QDtJKLyPEDfLrglL0du8x7ZiZsquQlPMU2IlxM5g8XCCT/qbycIuwRkwza70wBi3JVJzhFxABNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764176674; c=relaxed/simple;
	bh=C4L2v7dDKBJ+5LXa1LPOItAppvcn7m6Y+B8EHIxN0q8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z/azRWlTofGO6A2hEcbFfIcV2a+Z6vMpCFSsDyx9yG5aA/iq2FTn71tBkAmoaYNJZ70rbtz3QsgxLNedkNrkZxWHNCl1FBVFMixRODUpSoqUik1sD6shkx0+Wm93WMfb5N3BMmTzDNk9+nh48wHC85gVyPaYVjKY9ycpMRm5E/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfKZL6ap; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so42860f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764176670; x=1764781470; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5eqx4+S00UCrDQU63RvPAcNH3X7qUV1/VG2Dh4jqWGI=;
        b=hfKZL6apmmSHGu5XK/iL09+O/o0AITxDCwZz/k1uyQALPLP+B8uhxB2MUjQAgTCDuU
         gfMJvw/LSKcdOEuZN6hSGH76qz7PmdNleyc7ZaSqTV95lTMPDHfePfD/oLXl8mm7BmQd
         RFXI8GML08qMIHb8sQwIyPUokz2rDOqZjaGjbG8L+W26kT5fJtNr7w+EiauGSnhwn4yf
         9DLiSiF8N/jIVk4NBQby7mJmbo95oY13HVOQQxNT2CC/5R9DT86rm5A+VOUWSc+eW9gN
         Vl/C4ikWeALA0znMez91Cl2gF6QyA6fGaTN8j8Xf9TWl5BIcC1gxftG29iIeqZjEMx1n
         nSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764176670; x=1764781470;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5eqx4+S00UCrDQU63RvPAcNH3X7qUV1/VG2Dh4jqWGI=;
        b=PmocGWBORIPm80GLRhUaDZzHgzq3UWTQ1PVe+hXQUTJIC35S55Cop5ztgJaixQuFS1
         xECnMRLtYCWHMQMINDk1LwbZBS4juSEjWYA43drjsOEN2GOe6v+i+yz+04UAHh+vlE/0
         nr8md7xxp/qzrqXV/j1yBt7woEPIwrzci8tBzk4L4wIXRApGug2hAZPilnCtC7E3L9IF
         Dg43DmEKq4I4OU3JwzCjROncI0DjpsysrjphOt2nyd3aNaKGjFNdJVwMAHgAXDJpjNQb
         c/albfeviOXtsu7zzQXI7qoDRM4MbT6LIpbc8u1vKejbTGLN8vuuSMgFnpKSmWt9r4bO
         XRJA==
X-Forwarded-Encrypted: i=1; AJvYcCUcPvF7adBEpm2Uv7TAJSW2+YLwcU9Mcy02XUU3BtTMLuwdC430vhgDeJ+oVz13wAyuIZZdVMHqEWHd@vger.kernel.org
X-Gm-Message-State: AOJu0YzhEb9NLjCEINLZ78unZujEt53GpKa2dw0fhsCLQ8u8fDLJS1HN
	YBFvbajSEFZvwqaxaf2WkPdc072AaESvxdTRGQTX1MCtKYgKhDmlAnu+
X-Gm-Gg: ASbGncsMJ/8pbEdNLi5SA95ocyy/tQun1S7WXAqVa8qrzQ2j62CrO3Zxh+Ms13YiBII
	BVKiOZK7qYy9jmQgQRzr3omYWNTklP8vjeE3OU8kEAyyrKTBHTq3vpKR0w3h+WZPfc5m4ImKdwS
	fHoQQtZ+wFZxQJDcz7PXxO0z7gXpSXjWZprTvvz7Zo6Q1G/T0QAvXtJ2oBT58oUcZMIg6VCFlRk
	rr/dlLZr6qP7Lv8wSHKr/5Sc1pbRO6GVjNrVrNvvBqNjRCq6B8uxm0Zi89dfwg0kI9bDc5ChYkX
	udkFGxEoH2TgLFgxtXGMuiEvKOa4k35YH18wzCvwliXJ8apqMXYDbs9yJWEcihVX2c8aPdQrDnd
	lktRu1XI4pWjswOSrJnfD8vyOLigKKP7WkoFpAM1Tb7aq/+7f91Ffz/NYCTXA1gKHl7kAUfjAfU
	6VTmTA7tTzjsaB9yw0//Me9IYSEwQOF9rhle1GyuMdvnScdjOBorbl
X-Google-Smtp-Source: AGHT+IFdqkWsh+2nr9ILp76fRWiW/aU2Px9HNs0aUX0aYdlBQkkkQ1tWgSr6ACM24wCTMWLrMxsEUw==
X-Received: by 2002:a05:6000:1447:b0:42b:36f4:cd21 with SMTP id ffacd0b85a97d-42cc1d0cfa2mr21131627f8f.40.1764176670137;
        Wed, 26 Nov 2025 09:04:30 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([5.225.141.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e574sm41252799f8f.3.2025.11.26.09.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 09:04:29 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v5 0/3] drm/sitronix/st7920: Add support for the ST7920
 controller
Date: Wed, 26 Nov 2025 18:03:48 +0100
Message-Id: <20251126-st7920-v5-0-64eda5267d35@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2XNTQ6CMBCG4auYrq2Z/kJdeQ/jYgotNBEwlBAN4
 e4WFkhw+U36vJ1IdH1wkVxPE+ndGGLo2jTU+USKGtvK0VCmTThwBTloGofMcKAuQ4uCW4FWk/T
 41Tsf3mvo/ki7DnHo+s/aHdly/UuMjALVEq1CIb1BuFUNhuel6BqyJEb+YwbMxnhiEoyXuQFvl
 T8ysTEGu9/EwnxuSq20RxBHJndMsI3JxITihvkcMm35ns3z/AXdlL/7QQEAAA==
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
 drivers/gpu/drm/sitronix/st7920.c                  | 866 +++++++++++++++++++++
 5 files changed, 942 insertions(+)
---
base-commit: c571cb70e1ed43ee543c70151e61a001ab2eefa2
change-id: 20250806-st7920-e7aba32b3ab6

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


