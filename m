Return-Path: <devicetree+bounces-272566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJldEhdhrWk92AEAu9opvQ
	(envelope-from <devicetree+bounces-272566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:44:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C48B722F917
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:44:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FFEE301A512
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 11:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC7A32692B;
	Sun,  8 Mar 2026 11:39:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91948314B82
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 11:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772969991; cv=none; b=XilPjJL0jniFH6h2ZCNlyLtB65BKEvey9U9XPOkjkzzzf/GP4oelSvjt+QD3cQdC8XLKTo+Kkd0h1/1Lp9xeU6HSMhmM5RFKykVcrXkcxqYpSfmSUMJ0wjwgc0wMC56vq+a63aFFaznfcXDVrUMf0y4s1VoDpw7YkpiET0l/Y3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772969991; c=relaxed/simple;
	bh=yI8bfDMx/Z63T+/yVkbejQlnh7XwP6Hsx4c68fkA1ao=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VD5CGqatLJtbgL+ozDZneFDdi0QcXmoZXk2DedXUF77map3c4fcVtK21eDwkyBYAB0mUDqlJc0nIWArSCM80CGGk41i0+wH36bwixWSZXEcduPQWCx/nvjVW9Kryif8cnhkqrN9EimMtoTDsuN143a3sc/vd23SzLzbIEJ8R3v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-829756f3ee9so3950032b3a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 04:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772969990; x=1773574790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxVDaap99T3jnlrvfxzeEz0s1DNltbeqL5PwkokGy6U=;
        b=Df7IhEfxFf53CMg8xbGnP9jM5XVJdXLllzwUYF8pirPFNUfg8NFL5DxcuaWKHFuYZA
         0UWV+V2gb/RKkPwrAFQO0pg1ZgrEFUARgQhBxUHVntvmwMhIAP5KnCuI57/eboKvg1P5
         H9PlkbmkU1/x6/5u+DYNrFUnILbu+3IUDDQ8WUeyvOs7HAmwS/HWi5wp4NwSbASLpMgh
         TASlle34hLb59bxNv/mfKTwtSveJ3xRMGhEn2pWnbkBgM6iRBFAHiz8mMkC3CG6iQTO3
         uSJfUKB0c66rQObwO5UlriIWdypST5XwFPrOi4PZ9Pij+4GqaNrfNQPkPA9eHRmsHhuS
         anTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMaJlMgvClZzVuK7/Xa0X5YD+hFMQEZP0Mf3vaEbTsb14lKDrFv3oDVn4IirUFJt9oMEisSR4jHf8d@vger.kernel.org
X-Gm-Message-State: AOJu0YyPiOdMcEarFVUdZ/cz10SOsEv5EPCCCpC9xzlUVMnwa7mZhUKL
	NqkSLKUJ3Feqxh8B9sOkx6NIMxZYwWBTVHUTrHxZGXv7TzYGYLiZ6fUZ
X-Gm-Gg: ATEYQzz/vSsQsxRM1xm/ADuh/vrsCXBEgF6VRmj1QkEOrucdjxXHGxgx4vpvqIOKyK9
	M7+/qK0MB+WxUnK+VQqWcjgt9VjDl74z5LSVcRyL+ZddsnD2l1uX0YYmtiRrDOT61Sej7nT4eIX
	KjYZkHiIzMXnLK0nbfbWbiOTpwelIE/aa/e8xQZrMogoh+34y42WKQkrkE3Q1HZP2E7yUTZmUk7
	WrXIkcANwLop5XI+5vk5iGFvgCiuk2IE875+8S66Sn0BhgSouadYmgFdOZDaANuuZjVnisK+5mQ
	972hRnGb1EnW7fKhy7LDEIgSLwmO/kT768G6POGlepqwLv/OidqCRV/CZz+K8TNSB9F6OmyAF/G
	luCI+xArOLjXbsgqXyLJZIXg09WPY9FKlCU3BqPVFpKkwYJFZuYl3ovbbyLYVZ/fLD2fkUr4kS5
	t+Oqk4RjTAuCK8h9wA
X-Received: by 2002:a05:6a00:2d1e:b0:827:2ce5:d762 with SMTP id d2e1a72fcca58-829a2f314d2mr6338259b3a.50.1772969989728;
        Sun, 08 Mar 2026 04:39:49 -0700 (PDT)
Received: from archlinux ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48d372esm7063721b3a.61.2026.03.08.04.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 04:39:49 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v2 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Sun,  8 Mar 2026 17:37:26 +0600
Message-ID: <20260308113728.40860-1-email@sirat.me>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C48B722F917
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-272566-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.717];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

This series adds support for the STMicroelectronics VL53L1X
Time-of-Flight ranging sensor.

The VL53L1X is a ToF laser-ranging sensor with I2C interface,
capable of measuring distances up to 4 meters. The driver
supports both interrupt-driven and polled operation.

Tested on Raspberry Pi 5 with a VL53L1X breakout board.

---
Changes in v2:
- Skip software reset in chip_init when xshut GPIO is available, since the device was already hardware-reset during power-on.
- Rename "reset" GPIO to "xshut" to match the datasheet pin name and updated DT binding accordingly.
- Make vdd-supply required in DT binding.
- Use reg_sequence arrays and regmap_multi_reg_write() for distance mode configuration.
- Switch to a hardirq handler with iio_trigger_poll() and IRQF_NO_THREAD instead of a threaded handler.
- Drop IRQF_TRIGGER_FALLING fallback. Leave trigger type to firmware/DT.
- Use iio_validate_own_trigger() instead of a custom validate_trigger, drop trig pointer from driver data.
- Switch usleep_range() to fsleep() throughout and add comments for sleep values.
- Don't fail probe on unknown model ID, just log with dev_info().
- Split stop_ranging cleanup into its own devm action, separate from power_off.
- Add missing includes: device.h, bitfield.h, completion.h, mod_devicetable.h.
- Use FIELD_GET() for range status checks.
- Move configure_irq() closer to probe(), use dev_err_probe() for its error paths.
- Fix buffer ops symmetry: postdisable -> predisable.
- Drop reg_format_endian from regmap config.
- Various alignment and formatting fixes.

Link to v1: https://lore.kernel.org/linux-iio/20260303090253.42076-1-email@sirat.me

Siratul Islam (2):
  dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
  iio: proximity: add driver for ST VL53L1X ToF sensor

 .../bindings/iio/proximity/st,vl53l1x.yaml    |  50 +
 MAINTAINERS                                   |   7 +
 drivers/iio/proximity/Kconfig                 |  14 +
 drivers/iio/proximity/Makefile                |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c           | 871 ++++++++++++++++++
 5 files changed, 943 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c

--
2.53.0


