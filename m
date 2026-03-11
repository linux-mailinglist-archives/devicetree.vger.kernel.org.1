Return-Path: <devicetree+bounces-274350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YF+FBsPvsWkgHQAAu9opvQ
	(envelope-from <devicetree+bounces-274350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:42:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 717AF26AF35
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 167563055DF4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93A3395266;
	Wed, 11 Mar 2026 22:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F1E394478
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 22:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773268924; cv=none; b=N2SUowwUTm//8ePC3kdn/gxq1PCda622+g/AQH8K3mL46M7QnTCaf0JaZY2ZjwnlOqWkm3cNTQbySxBbN7FWCRB5o+9Uk9YtbDR9UpoRU93EkK6XCp1V42uVdrw/GQAwu+4OWbrttyljUdg1ceNmy3efb4X7NMEQbSnvKhZ+05A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773268924; c=relaxed/simple;
	bh=2j1cpITxnYiUxed8qCEHQ/UCint47S1M4TXHNtCpqOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VFBfx0c/vl8Jsp09ZqyziN14tJFIQAD4vtumlMKbn0Y8jT8PyvAP792S4oi9vbQmO09P9CsaGxs+cYoA1K08C+DhlSqgGaAdQwDqJRGiRl58cS41FbamALNfh0YmW19Ec0W5YhLuxEIE5qO7kBJ+jiUs2tGx5exlngAxaz9XAYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c738d327336so203274a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773268923; x=1773873723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wCi4OyQ+FJJiiBErv6cFAwHqHFdsy9nwyy/hORJpyfc=;
        b=Mi4UEVPAilqm+oGRMMgbKBpwBP1GVHopqWgkctoq6hLUvGs30SN2mE5e50U76rOcdl
         5PZZu93iUNz3VSaTxVnGrUEU51i1jfzl5NgvzH2rlhjSHQiwpGDdl2v8D3IwIJcjO7Y1
         u5TrWwyOUzKAQWCugU6Mje/pGIQuy+O5/MW/qX0if+UE7/gSpGezUpME0+jB9nW5vnKm
         39EHqVyuuc+7j47aHKdzrB7HPj3uRKSPcZMIZUEK5t90G1eDeSGA+lVhfYM4JFeNtlLj
         o5Iz/KYHgQHUlWwyDzKdbuTn+nTmKExRpv/OS66/TvrxXG40P8ADOcDXVgosFu6oYsvB
         S0+w==
X-Forwarded-Encrypted: i=1; AJvYcCVb0BhbjiY5uDc8uHIt8ZnkJkd45jeokZ5BwWaVUxrg2N9oF5IwlsFMUDzJX5ycNIQt9Ok7nX1zLgQH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3i881uQa2fmRNL44aD6ITN0BoobGA1t/6lWP2uAxsnjIchN0K
	D6nyKcTEWJyjIJT//UA0VzSsTbezKMpzDR/2VdB5euSo+yIgQlstbB9K
X-Gm-Gg: ATEYQzy2/5jbKWx5B4Q3h25IC44YWTngLsHn7eL/+aR1+ZTMoPJrhNC/MFGZ9dRGnlL
	ucArw2p+IBYv0v8NRoo06tAsL5Q618iGkXrSB7OWwnH1WNoswPES2nOL06jEh7i6QCT30ZW8bIh
	3g+cblu66Z7e1Dxth+fHMyPjitd3I9kYgJBZr16+u4rtOIK3gMAeTB3sAOZ87ZAx2VGR2U7gptb
	PvrCrjQ7WKrXSyG4gHSb6BivhMHcHWI/7jhExXYuSQZpGC51p/AX1GozlYxkN5wsDEx1Fmjvzci
	pgYp45G1whtBNlHLRU//Y9YH2K2KPAaq69zZygNf8OSbwxrN1QIBsXwyM4iUkws/5RB5/yof8Jr
	FjsNqFarewcWQMDObNEmRYkyKEHuFhvhXRR+lLWbgxMHnpje0tFZIdRqGlazN48Y5FuYJPYoSw1
	7/zteRnw+O+FeO/87WAlT5O6krOfVQ9tLWla8GM6I=
X-Received: by 2002:a17:902:ea0e:b0:2a9:622e:fd46 with SMTP id d9443c01a7336-2aeae65194dmr44250475ad.0.1773268922415;
        Wed, 11 Mar 2026 15:42:02 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.26])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae35ef5asm32854975ad.65.2026.03.11.15.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 15:42:02 -0700 (PDT)
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
Subject: [PATCH v3 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Thu, 12 Mar 2026 04:40:35 +0600
Message-ID: <20260311224044.21480-1-email@sirat.me>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274350-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirat.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 717AF26AF35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the STMicroelectronics VL53L1X
Time-of-Flight ranging sensor.

The VL53L1X is a ToF laser-ranging sensor with I2C interface,
capable of measuring distances up to 4 meters. The driver
supports both interrupt-driven and polled operation.

Why a separate driver is needed (instead of extending vl53l0x-i2c.c):
The VL53L1X is fundamentally different from the VL53L0X despite the
similar naming. Extending the existing driver would require rewriting
the majority of it.

Key differences include:
- A different register map (16-bit addresses vs. 8-bit addresses).
- Requires a 91-byte firmware configuration blob to be loaded at boot.
- Requires a VHV calibration cycle.
- Has distance mode and timing budget configurations.
- Uses the regmap API rather than raw i2c_smbus calls.

I also reviewed other drivers in drivers/iio/proximity/ and can
confirm this IP block does not appear to be shared by any other
existing driver.

Tested on Raspberry Pi 5 with a VL53L1X breakout board.

Note on vdd-supply:
In v2, I added vdd-supply as required. Since I'm using the
shared st,vl53l0x.yaml binding now, I had to drop that requirement
to avoid breaking backward compatibility for existing st,vl53l0x
devicetrees. The driver itself still uses non-optional
devm_regulator_get() so no change there.

---
Changes in v3:
- Merge DT binding into existing st,vl53l0x.yaml (per Krzysztof).
- Use "reset-gpios" in the binding but xshut_gpio in the driver since that's the actual pin name.
- Replace manual polling loops in chip_init and read_proximity with regmap_read_poll_timeout().
- Remove irq_get_trigger_type() and pass IRQF_NO_THREAD directly (per Andy).
- Drop struct i2c_client from private data and store irq as int instead. Derive struct device from regmap where needed.
- Add dev_err_probe() to first devm_request_irq() error path.
- Replace linux/device.h with linux/dev_printk.h, add linux/array_size.h, linux/err.h, linux/types.h (per Andy).
- Use USEC_PER_MSEC for poll timeouts.
- Remove unnecessary casts.
- Divide long config blob to 8 values per line.
- Rename goto label to notify_and_clear_irq and drop unused dev_dbg.
- Add datasheet section reference for boot delay comment.
- vdd-supply no longer required in shared binding to avoid breaking existing st,vl53l0x devicetrees.


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

Link to v2: https://lore.kernel.org/linux-iio/20260308113728.40860-1-email@sirat.me
Link to v1: https://lore.kernel.org/linux-iio/20260303090253.42076-1-email@sirat.me

Siratul Islam (2):
  dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
  iio: proximity: add driver for ST VL53L1X ToF sensor

 .../bindings/iio/proximity/st,vl53l0x.yaml    |   7 +-
 MAINTAINERS                                   |   7 +
 drivers/iio/proximity/Kconfig                 |  14 +
 drivers/iio/proximity/Makefile                |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c           | 782 ++++++++++++++++++
 5 files changed, 809 insertions(+), 2 deletions(-)
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c

--
2.53.0


