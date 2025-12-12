Return-Path: <devicetree+bounces-246062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FDACB8570
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3837301EF87
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 08:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588F730F548;
	Fri, 12 Dec 2025 08:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L193YKce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73464304BC6
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 08:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765529806; cv=none; b=KD1PDwRVehWi0Z+fayokTduN7PFvSLQyXsjS1Vu+1FV5ghNX738NzVTE8qTlXLJhb6nIiBJouBGy1NBA/QWChE3qKdUAHgfsQHyLmkDme/JwYuy8K0kjAoNdVJF8OVE+pzrRiNvI6ans05IKiIP//hpa+AQDKINpZUtvCJGAUzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765529806; c=relaxed/simple;
	bh=GKjehjcGwfVnkVj+kZQSHuKoKx+R2XFkPAcidz0dNjQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J5K+xCF682boWYntfSqdtMIT1NL+6z/rNZDcUekJRo+ty40zPV9xMH3/IOqhDe12tO+IE0z+zAkJszQWQou8neiWeAW5Eaad9SqqFSjIYTc2v7/8UTMNJ92OBJRgp+HREwJMvPLf0iqJ41tatSOKBVIxJZ/VOGyaEXxC860bTuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L193YKce; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42e2e167067so446860f8f.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765529803; x=1766134603; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lqc8EwKA/JJN/VhrbE0YGzJvjvxBNq94BX+UyNRbmrw=;
        b=L193YKceZ+05q2sZ2YrAa/an5MgOwBfc6nJRU5BmckJim/JtDk34U9AczMEa7LW4nl
         jLcezzRY4feRe5ludAyQ0fElK9cP7XnlgPXqrNUkSiDDuQ/WRQjnWIwwgnVEggZc2s39
         1eTt3JJPAhNeRwp0crSY2h+FbCGnxQI0uLri13cLMWh+fr5HU+xHwiIrkK9Fp83k7WCd
         rsreYUjrDewKC5ozUcwa3TZfiTaxlteKIdxjYVSrBxwHbKHBmghfce7kBEkWWQeGbLsU
         HR2GL9ngs9wfpmDmIhfspzyhtz6ESvRGIW6d8S03nLl0YXvSQqm7X72P3nrVBeXQxhoj
         CPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765529803; x=1766134603;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lqc8EwKA/JJN/VhrbE0YGzJvjvxBNq94BX+UyNRbmrw=;
        b=pzbw3od+1eR010O3lirYLgNJwpkyeRB39CWxQ60AniAP2o/FDBCJBKY9r7HTOHNHFI
         LtwbH4rTen4wW39giN6RCr0MTLepHI1Ea3pC3XbCL+O3ZQh3jhVQHoURSW02OzGpEWd4
         GLdQK0/2+Ev+EeHiYN9TimcKK04/Od7l392BVk9c5sBR3AyV2RqTnwhbuX48yyfI1nRa
         gDkyhDcJfU/cuEAuyODeCU1dS1DrrGhF93/D/PEWz6mt663JEDZp8uRwT7RMSeUXiwRm
         ogig3woQ6jgT7pR1JU+Po/RqdCVoqOTTBQW7swWJlt7zq4we4DVSz7OfJ0yD8agRCYrV
         xN2g==
X-Forwarded-Encrypted: i=1; AJvYcCWltF8aiVyTMKf6o3NAGx/T1RxUOYQHY7gKa0uOAiRNTSqkCd/EluLEvy3Hu4b1jcsWtEmQGZD1aqDJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwadQNR7KZX5YxUixu83DaJSF9C76LeoT2OHyjJjtTCccQ0kSIJ
	ZE+iesxG4FXu+nKYM20CJrFTW5OizvR69upL1jacF06FtnChQdwR28y9
X-Gm-Gg: AY/fxX5A+zRzwJg/gfLEtbc0CfaRsla65qHy7NQ+c+sSOo8ky9mqQHp7DFp2KwXqn3m
	VXXj4fVJN5cQ9lbdKzzooVYz5UP8zRcqe+vfehWwUScsquffjYWmrausdydaow3afytYWxsXTPk
	xCRkrUBn9wFL8I8uQ3rorlAUJd04pn5bdP4+BvxwEqO3eAZX9tF+Cw7saoOPl6PGmaMaxwN6+dR
	USX6TJX11nN5blZ5NaOZ5g//v6Kx6+OAIRWE8aGc+m9xJSYn6RCpPtu3cjiQBO+yntyCYb/HVxY
	Sgdj28TwO3Hi1Q0lBChyp/SomS9ld7RsbHPxAn11yOds2qsfx7txgRNzaIsypErPuQB9Gm0YJZk
	aZNXvrvoG3M9wJ1wS4c8qsD1ot9r2P3v9k77NQayPCua55lqRKD0ig3nFwXA4SCtQFdVYV4ZMkv
	SVl9hpJWy5edqJ5eFryVTi5tgYdOTT+YjA5GoxM2fLH6oAlIA=
X-Google-Smtp-Source: AGHT+IEL9bvnBJjJsM+/EURopC9+hpKakZ/RbDSwMtZ0R5TZS7Y0WhaB/tevm1jDyxfpkbSEtjOW/g==
X-Received: by 2002:a05:6000:2601:b0:42f:8816:a508 with SMTP id ffacd0b85a97d-42fb48e7989mr1446259f8f.61.1765529802486;
        Fri, 12 Dec 2025 00:56:42 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([89.7.8.79])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8a09fbesm10501696f8f.0.2025.12.12.00.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 00:56:42 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Subject: [PATCH v6 0/3] drm/sitronix/st7920: Add support for the ST7920
 controller
Date: Fri, 12 Dec 2025 09:56:07 +0100
Message-Id: <20251212-st7920-v6-0-4d3067528072@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2XPwWrDMAwG4FcpPs9Dliwn3mnvMXaQG7s1rM2IS
 9goefc5OSQhO/5C3y/0VCUOORb1dnqqIY655P5eg3s5qfNV7peoc1ezQkCGFpwuj8Yj6NhIEMJ
 AEpyqy99DTPlnKfr4rPmay6Mffpfe0czTfxWj0aCdlcBCNnmB98tN8tfrub+puWLEjXnwK8PKL
 PhkWw8pcDoyWpmB3TWaWWp959glAToyu2NkVmYrI0ZvUguNC3hkvDGD2zVefoudMLqmI96zaZr
 +AP0eUHV4AQAA
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
 drivers/gpu/drm/sitronix/st7920.c                  | 868 +++++++++++++++++++++
 5 files changed, 944 insertions(+)
---
base-commit: c571cb70e1ed43ee543c70151e61a001ab2eefa2
change-id: 20250806-st7920-e7aba32b3ab6

Best regards,
-- 
Iker Pedrosa <ikerpedrosam@gmail.com>


