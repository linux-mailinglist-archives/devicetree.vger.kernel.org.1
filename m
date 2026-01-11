Return-Path: <devicetree+bounces-253594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADD8D0F01A
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0487B300D408
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 13:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FED33D6CE;
	Sun, 11 Jan 2026 13:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JdmL6Rc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD86321421
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 13:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768139752; cv=none; b=m0rmdHCoMPkt5A2jzls265wE2bw3MTj9FvmoQ5lmyELHL1hh9Qjj3WHyBMSqU/cPcUeg5yq2my2QO1GhvJLaQW+rpU8fG8jHd4dS1pqUvb+9zxSFpRtL6RCL/BmFftQbtzUOGWxBlugx1d24MqWREbXGPgpYrmQslIwdvQsMzYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768139752; c=relaxed/simple;
	bh=+AKIQEO5dyvqn5KjRP9Jxh30Gb6KBj2JRPEssHMpZoI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FsmEjaR6l9LN4iOHAzKWPsekpk1FFPQAVO7p6EQPWxFNOKS1WyuD3tIyFtSj+i/c+mSo5uf/EgY4rPwlzdbOcYJ+O9HIJTidKItBDI9w3a5LVw1O8hTQn7bQC31GCshSChDDpPXR+4twwFGnqgPJaZckKMx1D1/QW9L4kmAipNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JdmL6Rc7; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-81f4a1a3181so218015b3a.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 05:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768139749; x=1768744549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vP5elSGqt6TeZcpkFEgYpafr6UqzCjp3j6oPYRYzstk=;
        b=JdmL6Rc7IB417V7qExEpEX0dSnjAGdPIEAodUoDs2bRM71V/xLrg43+u5Fx6S7laAw
         QqW/bPKGIOSlf7ab5vZ4PLx2BZ7hi+RUg83vXCyrlerSLdEtWnLZFBO5oPV23fcHqbk6
         4MSN3ElhqYskrgHOT4DqLysvu50pQAHae0+KbrdvD4tcClrSK0VBB6lBKcKS52jvFdfb
         wpPm7fHpoSJBbJMDJdzlI8V3+ce99GpxaVH33Qokm6dAeTttBFm+Uj3pqMbU+m45XUjc
         0zIojXULzOP+5q/y1HnmyM7BNUmMMc6ByifMdW46nIRdUUSqzSeRsQvVDIRoTUW3q5kr
         3GDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768139749; x=1768744549;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vP5elSGqt6TeZcpkFEgYpafr6UqzCjp3j6oPYRYzstk=;
        b=tPc2mLdF+MlZ9RPYWp30QsGpADsrkjlLxHmenIND36tRYKdbapWHN3U0PY9dDcgQ4x
         xL+I1DFvMRo8KCUxkaA237COrM72wE9mpaQy43WwO/oSpkKVjx2B+wjzDb50zsdat3kU
         f53dwOLQJ3Jk8L6wNsug9+2dIQIdGW2Fpew9W/0jF4whC+aF+0xoVG8iKk+D1amNxPio
         pvZ5fbQ8ndRbat+jVlz+5bwdfLksWYQAsgN0PSCaCVwt7AbpqnKMBqvITWwIUrHYnV5d
         gyr9sCxkDIK2gjOhawy+GnxYYcTSF9YcKM8kzQ0ZwUi9NmdgwrigltAim05QS392LazI
         S48Q==
X-Forwarded-Encrypted: i=1; AJvYcCVf8P8KJ0+8ZMcvJr0XOuvp7k4ROsxyFD7Otf+1l6YZdt6tZVw4zCNReISK1DGIuE9u+hCo8M/X2Rzh@vger.kernel.org
X-Gm-Message-State: AOJu0YzqrCj6P6u2gtqYhb1zyaAoEiertQcB9T0CH9T5yarAYkNFZkOu
	/FRZXUlipZzppD1wBSI/ukgQ7tWk0mDyh+3yuf/8en7IItcVLhYw/nhE
X-Gm-Gg: AY/fxX7huLE7ir010XxeDEgi1yLlZwyZhdVc/7rGUjzmMJNLIXIyed7J13vr2zZcNjL
	XNL1r7HN/Gr8z+1uof8R2iTGIZnQMlGSwYcj3u2KN1IOJHyhvSLMfqpP/rYC9gE2oEesiJIfxBy
	D3zC/nyS56y8vnxpryADgk62jG/al46ETuppR+T9oNiWkSUhrAbKvCbABu0IpWeVKeXpoT0oGz6
	uMs1ad6fZSuqhgk3YsLrsH8fRsYSWB3WGBxyROfsi0eY9Y+NBZlhdVNFotVBunDSgONQeYNlmtJ
	lDmmJ1feR1xt80Dq7Jw6qvjdUyTM4fYsYbWjBVCvtkao8rA/4U9BV5F4nTmH0QRQRz/L93MrXfP
	o2XJ7ULrSx9SEd2zjeEeIOmBzCD1AAWKPOvQ/PhSxHPgd5UbAiDBW7S87kVjwgoLR+J7csrH2XR
	yeLon/KUvGGdWcbBfX3VwfaZHI
X-Google-Smtp-Source: AGHT+IG7l1AtroJ4vtHhwuouBkO/kZ7CsAcG4nQomIHeGtpM3HDKv03O8zL3Ot3znp9Xs4XUP6+DyQ==
X-Received: by 2002:a05:6300:218a:b0:37b:992f:8764 with SMTP id adf61e73a8af0-3898f96bfe3mr13543517637.34.1768139749196;
        Sun, 11 Jan 2026 05:55:49 -0800 (PST)
Received: from localhost.localdomain ([113.164.155.57])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f6b88d984sm5742345a91.3.2026.01.11.05.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 05:55:48 -0800 (PST)
From: Nam Tran <trannamatk@gmail.com>
To: lee@kernel.org
Cc: pavel@kernel.org,
	gregkh@linuxfoundation.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Nam Tran <trannamatk@gmail.com>
Subject: [PATCH v21 0/3] leds: add new LED driver for TI LP5812
Date: Sun, 11 Jan 2026 20:55:16 +0700
Message-Id: <20260111135519.28112-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds initial support for the TI LP5812,
a 4x3 matrix RGB LED driver with autonomous engine control.
This version provides a minimal, clean implementation focused
on core functionality only. The goal is to upstream a solid
foundation, with the expectation that additional features can
be added incrementally in future patches.

The driver integrates with the LED multicolor framework and
supports a set of basic sysfs interfaces for LED control and
chip management.

Signed-off-by: Nam Tran <trannamatk@gmail.com>
---
Changes in v21:
- Rebased onto Linux Next. No functional changes.
- Link to v20: https://lore.kernel.org/linux-leds/20251221041950.4631-1-trannamatk@gmail.com/

Changes in v20:
- Rebase on v6.19-rc1
- Link to v19: https://lore.kernel.org/linux-leds/20251130153956.241375-1-trannamatk@gmail.com/

Changes in v19:
- DT bindings: Reverted to v17, as making `label` required in v18 was incorrect.
- Driver: Drop validation code enforcing parsing of the optional `label` property.
- Driver: Renamed unions for clarity: replaced u_scan_order { s_scan_order, scan_order_val} with
  lp5812_scan_order { bits, val }. Applied the same pattern to the drive-mode union.
- Driver: Updated all code to use the new `bits` and `val` fields.
- Documentation: Fix links (remove backticks, add `.rst`) and make attribute formatting consistent.
- Link to v18: https://lore.kernel.org/linux-leds/20251123191042.116917-1-trannamatk@gmail.com/

Changes in v18:
- Mark `label` as required for all LED nodes for proper sysfs naming, including single-color
  (led@[0-3]) and multi-color parent nodes (multi-led@[4-7]); remove previous Reviewed-by tag.
- Simplified parse_drive_mode() logic: replaced nested if checks with continue to reduce indentation.
- Use leds[i] instead of each in lp5812_register_leds() for clarity.
- Remove wrapper function lp5812_auto_dc()
- Define all magic numbers.
- Handle parsing properties safely and removed unnecessary pre-initialization.
- Rename lp5812_of_populate_pdata() to lp5812_of_probe().
- Save chip in i2c_set_clientdata(), not led; use leds instead of led for the array in lp5812_probe().
- Remove chip register map structure; use register addresses directly.
- Minor formatting, blank line, comment clean-ups, and add email to MODULE_AUTHOR().
- Link to v17: https://lore.kernel.org/linux-leds/20251021155927.140929-1-trannamatk@gmail.com/

Changes in v17:
- Dropped direct_mode from ti,scan-mode property.
- Updated logic so that omitting ti,scan-mode now implies direct-drive mode by default.
- Refactor lp5812_parse_led_channel() to simplify function arguments.
- Mark lp5812_cfg as const since it contains only static configuration data.
- Link to v16: https://lore.kernel.org/linux-leds/20251013173551.108205-1-trannamatk@gmail.com/

Changes in v16:
- Renamed property 'ti,operation-mode' to 'ti,scan-mode'.
- Simplified allowed values using regex pattern instead of long enum list.
- Updated description accordingly and noted 'direct_mode' as default.
- Updated core driver to match the binding change.
- Link to v15: https://lore.kernel.org/linux-leds/20251005153337.94025-1-trannamatk@gmail.com/

Changes in v15:
- Removed all custom sysfs attributes; driver now fully relies on standard LED multicolor class interfaces.
- Added new device tree property `ti,operation-mode` to configure direct, TCM, and mix scan modes.
- Dropped previous Reviewed-by tag from the binding patch due to property addition.
- Removed ABI documentation since no new sysfs entries are created.
- Updated lp5812.rst documentation accordingly.
- Link to v14: https://lore.kernel.org/linux-leds/20250907160944.149104-1-trannamatk@gmail.com/

Changes in v14:
- Replaced inline constants with proper macros for readability and maintainability.
- Refactored lp5812_read() and lp5812_write() to simplify logic and improve clarity.
- Updated lp5812_fault_clear() to use switch() instead of if/else chain.
- Refactored parse_drive_mode() for cleaner logic, removed string parsing of concatenated data.
- Updated activate_store() and led_current_store() to replace strsep()/kstrtoint() parsing with sscanf().
- Removed redundant comments and renamed variables for better clarity.
- Link to v13: https://lore.kernel.org/lkml/20250818012654.143058-1-trannamatk@gmail.com/

Changes in v13:
- Fixes build warnings reported by kernel test robot:
  - Inconsistent indent in lp5812_probe()
  - Uninitialized variable 'ret' in lp5812_multicolor_brightness()
- Drop of_match_ptr() and directly assign of_match_table, as the driver is DT-only.
- Link to v12: https://lore.kernel.org/lkml/20250728065814.120769-1-trannamatk@gmail.com/

Changes in v12:
- Reordered helper functions above lp5812_probe() for better structure.
- Clarified DT-only support by removing fallback paths and i2c_device_id table.
- Directly assign platform_data to the correct pointer instead of relying on
  string comparisons (LP5812_SC_LED, LP5812_MC_LED) and container_of() casting.
  This simplifies the logic and avoids unnecessary type checks.
- Removed redundant messages.
- Update ABI documentation to reflect reduced feature set.
- Link to v11: https://lore.kernel.org/lkml/20250714172355.84609-1-trannamatk@gmail.com/

Changes in v11:
- Drop autonomous animation and other advanced features; reduce driver to core functionality only.
- Simplify LED parsing to use a unified path.
- Clean up and streamline code
  - Use alphabetically ordered includes
  - Remove redundant comments
  - Fix style issues (e.g., comment capitalization, code placement)
- Update ABI documentation to reflect reduced feature set.
- Link to v10: https://lore.kernel.org/lkml/20250618183205.113344-1-trannamatk@gmail.com/

Changes in v10:
- Address feedback on v9 regarding missing Reviewed-by tag
- Added explanation: binding structure changed significantly to integrate
  with the standard leds-class-multicolor.yaml schema and support multi-led@
  nodes with nested led@ subnodes. This change introduced a new patternProperties
  hierarchy and removed the previous flat led@ layout used in the earlier versions.
  So the Reviewed-by tag was dropped out of caution.
- Address binding document feedback
  - Use consistent quotes
  - Replace 'max-cur' with the standard 'led-max-microamp'
  - Remove 'led-cur' property
  - Fix mixed indentation
- Updated core driver to align with the updated binding schema.
- Address core driver feedback
  - Use for_each_available_child_of_node_scoped() to simplify the code
  - Add a return checks for lp5812_write() and lp5812_read()
  - Remove unneeded trailing commas
  - Fix unsafe usage of stack-allocated strings
- Link to v9: https://lore.kernel.org/lkml/20250617154020.7785-1-trannamatk@gmail.com/

Changes in v9:
- Move driver back to drivers/leds/rgb/
- Integrate with LED multicolor framework
- Refactor and simplify custom sysfs handling
- Extend Device Tree binding to support multi-led@ nodes using leds-class-multicolor.yaml
- Update documentation to reflect the updated sysfs.
- Link to v8: https://lore.kernel.org/lkml/20250427082447.138359-1-trannamatk@gmail.com/

Changes in v8:
- Move driver to drivers/auxdisplay/ instead of drivers/leds/.
- Rename files from leds-lp5812.c/.h to lp5812.c/.h.
- Move ti,lp5812.yaml binding to auxdisplay/ directory,
  and update the title and $id to match new path.
- No functional changes to the binding itself (keep Reviewed-by).
- Update commit messages and patch titles to reflect the move.
- Link to v7: https://lore.kernel.org/linux-leds/20250422190121.46839-1-trannamatk@gmail.com/

Changes in v7:
- Mark `chip_leds_map` as const.
- Use consistent `ret` initialization.
- Simplify the function `set_mix_sel_led()`.
- Refactor `dev_config_show()` and `led_auto_animation_show()` to avoid temp buffer, malloc/free.
- Simplify the code and ensure consistent use of mutex lock/unlock in show/store functions.
- Remove `total_leds` and `total_aeu`.
- Link to v6: https://lore.kernel.org/linux-leds/20250419184333.56617-1-trannamatk@gmail.com/

Changes in v6:
- Add `vcc-supply` property to describe the LP5812 power supply.
- Remove `chan-name` property and entire LED subnodes, as they are not needed.
- Update LP5812 LED driver node to Raspberry Pi 4 B Device Tree, based on updated binding.
- Link to v5: https://lore.kernel.org/linux-leds/20250414145742.35713-1-trannamatk@gmail.com/

Changes in v5:
- Rebase on v6.15-rc2
- Removed unused functions (lp5812_dump_regs, lp5812_update_bit).
- Address Krzysztof's review comments
- Link to v4: https://lore.kernel.org/linux-leds/20250405183246.198568-1-trannamatk@gmail.com/
---

Nam Tran (3):
  dt-bindings: leds: add TI/National Semiconductor LP5812 LED Driver
  leds: add basic support for TI/National Semiconductor LP5812 LED
    Driver
  docs: leds: Document TI LP5812 LED driver

 .../devicetree/bindings/leds/ti,lp5812.yaml   | 246 +++++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-lp5812.rst            |  50 ++
 MAINTAINERS                                   |  11 +
 drivers/leds/rgb/Kconfig                      |  13 +
 drivers/leds/rgb/Makefile                     |   1 +
 drivers/leds/rgb/leds-lp5812.c                | 642 ++++++++++++++++++
 drivers/leds/rgb/leds-lp5812.h                | 172 +++++
 8 files changed, 1136 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/ti,lp5812.yaml
 create mode 100644 Documentation/leds/leds-lp5812.rst
 create mode 100644 drivers/leds/rgb/leds-lp5812.c
 create mode 100644 drivers/leds/rgb/leds-lp5812.h


base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
-- 
2.25.1


