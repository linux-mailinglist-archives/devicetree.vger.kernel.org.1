Return-Path: <devicetree+bounces-241454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3934FC7E620
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 20:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AAE00346BF5
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 19:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D6521B9D2;
	Sun, 23 Nov 2025 19:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XsJ3wixE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B96719E7D1
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 19:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763925055; cv=none; b=K1QIU9hkMNydz4LYpu0KqnKVrQPPyxavl51MnnAu4mwzpRMerHaUYmqf0ZBY84py7rfjW/oPISH7JCQuSlLNJMQIbAUY/A31ZcEsOvC/s0XqeaNFZiqShDsbdR6TVh+A9ChoAohAEFubELrlTZwvY+sODlfr653XK/wygk6t5Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763925055; c=relaxed/simple;
	bh=5Dk3WWXMaPnrxQkhzmNwe8zAo+cjrw2rB8aZpBmxU5o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=q/WhQtFAXWpufYQPb0XTvARegAPyUlRWRp6WuVpyHmGVl+WRqa5Q/0+q9diy00smeeLfNU0WwP9lEQqCg7BzlKIRhG4bprm+pKBp8Z8woGm90/o8z78+WlzK/wPQMA4SN5+Pmi7YEZiJ0KV8vYIa0TFKDanyD2MVzuz9dYLzyKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XsJ3wixE; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-297e264528aso39261085ad.2
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 11:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763925053; x=1764529853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AIHlhcFDlCZfZMCtwENVXGOj87xc8K+w3IyybVzXSoM=;
        b=XsJ3wixE3nRi9sxoltkEysZkr87M3G29qCdRQCyi5wiEwhqLVd8JhnKY19xnlQV6xN
         1bANAB7YCLNbqBylCjEk8b+DW0/xE8HB+t1xN/sJBRnANc6DWh0KO4QdEhh/U3T+RXPS
         OqN7pZ95Jjz3PjEkDxXet1Z5046yTLUylKPiJLiPFs616Mj7+Mgw604ikOlAWuW7KmP3
         OO0NCaAXHsbNb6goMP3ly7uCZXLc35t3MAMxamYEN7ZTsVLawGxoLfSbqW56azhQy0Zd
         9QH32RRi1ucL6aYEGTYsgjEdbfhkGVpS5DKn14ZEf4ERkjUxY3XVOKxBzDs/CdGCt2Gy
         eFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763925053; x=1764529853;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AIHlhcFDlCZfZMCtwENVXGOj87xc8K+w3IyybVzXSoM=;
        b=NTmKXIy+Qr2532/JHvfYnM4rHz6G8z7E9vC7lOgmmx2CE1lx4xlIBtd/WyhT87mtsb
         epaq1mYby96Emr2krmcJ3oasVyEdBcNdhezavzo5jbfxEHS78Kj2SC3brRljtyEbB5nN
         r2thSoROmTxSAn4wSwsiSwKCOzvaCJotAfkFf65ewQu7AYn/V8sDDFOOPksTEOTL7QDO
         LCxHu3kHY8e6CgkKVTxrm9AvvD0XrClmCPVVUcttOP65ZszzWZP9f/06YJWw31s5Y4um
         DKl7p8H+RuNLIVDjxTkSeKP9X+EHpH8qYLwAv5lcMcJOqL0Myt7KMe46/zGQB81eJ004
         9y6g==
X-Forwarded-Encrypted: i=1; AJvYcCWWnZe1wtZ7jURArWoXdGLLnZgPMpyQzyur2kApq/M3jpL+Txf92mB6e1j15oeJqvgptu/o4l6U0tV1@vger.kernel.org
X-Gm-Message-State: AOJu0YxmZX3vGnLu0G3YWG2ukbaZUn0OO0LzeNib+wQkn/MFpwGceHRk
	OufBsqHFfCXH+u0vEFEN0OKpVVJ8GjdRRuM08AxLOD0vBm3pUbPWB1N9
X-Gm-Gg: ASbGncvoabKDPaHII8ZJZr770MWEguYiYMmfTWwEwvzCoNJVcU/9X+828MO/BVptaCo
	PEPI/PwBIrnsfMqgSPGAa7e2V0KpiC9SGP5rvKxaj4y8C9CxzlwCXIrE2woXM6R/L6Dj2R1sRmy
	vJOErYduS+8BpmCr7x6pBSvSiFUPAbLeJUnTwAVwHqusSw3FwLXGh3hQTM02Byp01L/EXIMCu9P
	kF7SO7SdVqMrZcHkzhL8hcmZKVdLkEOuqMaBExWECbnftwzKp2NS1Tny8CM1iFHiEA2/vy+WdSA
	1W5808rCeJE06avQlEd8BmC/+5jzNdXLPauLUdQ1fG/G2D4oUXvNfLAA1qVIDLZal7NZWUdJUwA
	wV6aJiUGTq8Ha/Yr7yPMGef/9iCz46GoeGfPQDLKeSPsOCL64Ef6yWVvZp/2O/ONalpA3RWBswZ
	sdC5lp81QsKsouoNYvWm/Y+A==
X-Google-Smtp-Source: AGHT+IFtFyoQBGCeygz7rw/XlQLfuLOGX/8UUzwFQ15n+r3y12JiFXj4EZnV2vMgsg6Ji3ClAYlb0Q==
X-Received: by 2002:a17:903:4b0c:b0:297:f8d9:aad7 with SMTP id d9443c01a7336-29b6bf815fbmr100474125ad.50.1763925053254;
        Sun, 23 Nov 2025 11:10:53 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13e720sm109542655ad.42.2025.11.23.11.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 11:10:52 -0800 (PST)
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
Subject: [PATCH v18 0/3] leds: add new LED driver for TI LP5812
Date: Mon, 24 Nov 2025 02:10:39 +0700
Message-Id: <20251123191042.116917-1-trannamatk@gmail.com>
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

 .../devicetree/bindings/leds/ti,lp5812.yaml   | 251 +++++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-lp5812.rst            |  50 ++
 MAINTAINERS                                   |  11 +
 drivers/leds/rgb/Kconfig                      |  13 +
 drivers/leds/rgb/Makefile                     |   1 +
 drivers/leds/rgb/leds-lp5812.c                | 646 ++++++++++++++++++
 drivers/leds/rgb/leds-lp5812.h                | 172 +++++
 8 files changed, 1145 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/ti,lp5812.yaml
 create mode 100644 Documentation/leds/leds-lp5812.rst
 create mode 100644 drivers/leds/rgb/leds-lp5812.c
 create mode 100644 drivers/leds/rgb/leds-lp5812.h


base-commit: 1af5c1d3a90246a15225fc7de0ed7e5f9b2f3f98
-- 
2.25.1


