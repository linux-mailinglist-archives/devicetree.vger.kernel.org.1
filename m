Return-Path: <devicetree+bounces-223906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E4BBED85
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 19:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 589D64E2539
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 17:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCDC242D69;
	Mon,  6 Oct 2025 17:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mlq58Lnz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0B199237
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 17:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759772952; cv=none; b=PzN9ldeOv6VMSZ/uvBWWvkKkoV4k6JAKTFo8WKNLlzbyHGZlI0Z2K9/osxCWr0fHGym5i28151WGy3cJM5/qlMwkJk/W3/Hhfv0NfipySIg3SE+9SB6oxrfWky0SSdP5r6JIZ9/GrE+HYdFswNTHsfLgaU53yJf/tMe7BsEBDf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759772952; c=relaxed/simple;
	bh=nQoaKh0+iG4YyKUnAkYuu5p0DJ2aHhG3jPXqYWGllGQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=o4I3oO/xlMUbNU99mKEqj/zcdazP6823epwCr8eLUz56wHbqZr9D9msmPVFCInnvHiAQbqOsG8QbwQeKWK5C3pXDOhJyMrR07ru0mP6qd1m89kn5ov5ssdRiNK5JphVNCaz4KPNK51Z0yeBXZEz//XqwP6zgdM6Ub/fqoBe1Yes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mlq58Lnz; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e4473d7f6so32384825e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759772949; x=1760377749; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OwPjYDue993F4kdSpEJug+JsTugVch4hbG5zN8v6Sko=;
        b=mlq58Lnzm/E7pKrHZPOQUUN8nAZQB35MP6xwoUkCHIvS9aJsTmtqFMoIdjBAELS7CE
         Ca7AeN2AYYjtGNODwZV+0LTQpSGyUqxf9F4Nzf8SkdDlxKGPiZj/6btWJlrkERlCunGe
         HgTu3++wDGGgw1uZ1qBizoRbfD7a1Lu4L5f0+zOzZzcM4UT7zp2V4+wlE7pasQwKqIIq
         R6joTr1TMUVOCWXVRcizjI+jrrZvU2Nsiaypt0ORHVZKeb/CTnqGJJvtsBUt0RMqGycF
         Nu8f1NJvclQ0TGxEajvdFp0KkrZCAPMV+URUdc/j9k9Zr5PL3R4u82XVdaEHdemUq4NG
         n3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759772949; x=1760377749;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OwPjYDue993F4kdSpEJug+JsTugVch4hbG5zN8v6Sko=;
        b=rpKAo8tYCKXXbnDSsNhbU8UMHi7m740IirWFFNWBQztVFeluZi+uiWoSZ2PlvMcFkz
         mlgxDckWskqYEk6JxMStP3BUeVQg4WTEhdDoc8e8swmfXsm6q4BPJM3LC+gaw480IFUS
         ebgUHhAkbEgc/enfkggfLSvd1KTvglBbaBE2tsinK15Vbbmhg4DMX5QnPUvwlS7JaL8u
         c8ZGRNVTf+iXxXqv2R8TfuBHfVBOIN7GtbGp4KeOfLXXW2JM9/ShEwvkm7SBTXA5u0ip
         GwgL6i+EoPU+YX6Y/bl3BjT0T/hdkPLyRxKVpTWSMWs3FgInKasQzt9Yba3Of1tqF8wZ
         hfLw==
X-Forwarded-Encrypted: i=1; AJvYcCWB5GH+Jc9hsklP6lw8BO9pnw2wI0fYscYYWBJrHBnsxk4O2wmyvHqn6PLbQe9O60nrM/ZG6nBF6PIr@vger.kernel.org
X-Gm-Message-State: AOJu0YwFQpHCy+XULQZsyFG+sGdOCy37JNY65WzdpDzubUrq3fKzZD3+
	2vNO2qIFpjZs3QDD0HX0k+E92RKYVmfl8A4TuL/MVtR1K64MxwdsTNDN
X-Gm-Gg: ASbGnctn3z73ezNprXtvEZRzmpDqX4HlHLv6b+j19q9nt5vBko7wTvEMzVmk1+3il2L
	KWSiWAaPakjjjsaWSB4cqDppIh28ZJ7Hb1NMf+JSw8RSJ4caWa2qz1tQFn2LYm96TZU2M96awiz
	MIkXkSAVS2AeX9/0FAQ8N+VO3PEfh3ALYlsQmQY46HLyR+6C6cJBOMRqO+B2Gan1yv64olpBwu3
	wRnXZdmrRqnF/3ECC3lXsqD5+4pdG7TwhaqI3xRGg+7PSHJYflAn4ViRU8/6IOxTRhF1B6+YVHZ
	Afj0U0pdKhpymZtFz8yRJl813DhjP3/oZNtkEJUKj4tfxZogO9NNOYLr/xbB85ua4RqhszLQrgQ
	rSnXKHIWKTwLppd6iyAveedtAXsFjx5GDPkE0weiCdYmzshbDkp76uAX4VudinfrCUIZWi6dEaY
	p6fJiLJ+qd0GGKszHa9znxXA2mRf/+tJj4jw==
X-Google-Smtp-Source: AGHT+IGoQmqa08yh2oAWYFi0h/YVWQM5hhY6UDRLPAIKA3rUms7L/IUnK3x7/0LeBb8VrVVo34J77Q==
X-Received: by 2002:a05:600c:46d1:b0:46e:4c02:c2f9 with SMTP id 5b1f17b1804b1-46e71157990mr93102665e9.36.1759772949081;
        Mon, 06 Oct 2025 10:49:09 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([5.225.139.156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723431f5sm165583805e9.2.2025.10.06.10.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 10:49:08 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v3 0/3] drm/sitronix/st7920: Add support for the ST7920
 controller
Date: Mon, 06 Oct 2025 19:48:52 +0200
Message-Id: <20251006-st7920-v3-0-4f89d656fa03@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAQB5GgC/2WMyw7CIBBFf6VhLWYK9IEr/8O4GCq0k9hioCGap
 v8u7UJNXJ6be87Cog1kIzsVCws2USQ/ZZCHgnUDTr3ldMvMBIgKWqh5nBstgNsGDUphJJqa5fM
 jWEfPPXS5Zh4ozj689m4qt/UvkUoOvFZoKpTKaYRzPyLdj50f2ZZI4qtp0B9NZE2BdqrV4Ezlf
 rV1Xd/Krf2s0wAAAA==
X-Change-ID: 20250806-st7920-e7aba32b3ab6
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org
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

 .../bindings/display/sitronix,st7920.yaml          |  50 ++
 MAINTAINERS                                        |   7 +
 drivers/gpu/drm/sitronix/Kconfig                   |  10 +
 drivers/gpu/drm/sitronix/Makefile                  |   1 +
 drivers/gpu/drm/sitronix/st7920.c                  | 892 +++++++++++++++++++++
 5 files changed, 960 insertions(+)
---
base-commit: c571cb70e1ed43ee543c70151e61a001ab2eefa2
change-id: 20250806-st7920-e7aba32b3ab6

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


