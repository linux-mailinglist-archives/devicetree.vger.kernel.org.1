Return-Path: <devicetree+bounces-274751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDA4I/sHs2kMRwAAu9opvQ
	(envelope-from <devicetree+bounces-274751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:37:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E95277325
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 990F6305DA7E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB223FEB3D;
	Thu, 12 Mar 2026 18:37:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9A22F39C2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773340664; cv=none; b=H3n8aeD8r1ddCg8LIizh3FvTLs54738mlMPa4M0f3C7NoLB+MqMTyLNpSlP0ZstqsQ39jipyIjyE1ry1qmD5BIryYm+RVrmycYX2l8+THwhX+f+tNnwQjlIeAU7xWEhdyJLMz3KlQjsGRc8YY7dzwQmMcHxiHZQsvRnpGeU1Tg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773340664; c=relaxed/simple;
	bh=Xw0WVoosWLYpbM1/x8e92YC5jyk7O2KzJM+Ej989dU0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dMkGGk6rP0mP5VDxpkJLLFQeydUNynL2H/MlG01qOgKd5xdMVMELaFNNHM/pYg6Kq1va8uUpMNtENW9dI8rxK8pz8NA662IVG7f45viFmZPltCG62Yn59iB7//Es0tF9ZSWYE0D893UzsxqeVO1oR+pjLlgFBsxsXSc0SgFGjbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-354bc7c2c46so884786a91.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773340662; x=1773945462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MmEeYUDMPwe+39ZrokxzR6qEPglt+cTqXM1Wv6voWxA=;
        b=lELyHj2jNRmYqj815bkWhO5KaGT3p6ZiAO4lf9AteRaQlGkb/j3ezbRMo7MCm4t80f
         gOgMZd9By+gpzpQdSOmYKAm/JOmKfWofgVc+TJVEFLzVAK2oSrAh0HyvYaqpQZGi0x0a
         3eoA0mqX87T3xFMNhLRToR/j8bFlxGLEKYfKv9YbkLxcDGF9MlM3Z/EE+tgIu9brbGBk
         sxOB33c46UHMq3v9CHMmnP+Ai4gOlBaW9jxFK7Qefh0OYRdu/INT0zL/pvvjrjd8q2E1
         vefX4yIMjFyW+I73mOABrCIsDFsYDFsrfBY1PW8wOIxNR7+oRevHzJjo98H1/8yLuaBM
         IWuw==
X-Forwarded-Encrypted: i=1; AJvYcCXcHxF2KGlvexJeJquYAcsiYNeGEJ253vhAPhmllc5t7QZLK2enB7CREcDbBtXl502eAdZ9Xt/+jKYS@vger.kernel.org
X-Gm-Message-State: AOJu0YyucjiCgIlhfpplCKAXSwskfNfH8dG6lnIkhcwCsdv2Wo7yNQwj
	oI3ejab9hmqCSekbyTwgzUNFm1T6dIYCI/ClE9XYeresjYz4q+vy5ku5
X-Gm-Gg: ATEYQzz8doDHyYgbsXLKBiAEK7T48b6v4NO/Clhx2rzalYaIwNwcMkptU1nGimsPk93
	09NgGOHPTyrJRtrNyudsiYZoz/x9690mAJzJP29hOO4ggXsj73KZcBdmwbCuG8GR+bpLWCbKl6T
	6/mR4UpgV+vWL2wcfSEUMwB9VAbLBYTDdzmE0j0X9OQc35+SBj0i8mmVfD+wEjk2tGWP14R5aIk
	rSG+f13gCrMsb6tAWOyGBAlJLaFlKcoca4Ia3c2hqkOVY+NbLWzIaYbhtcwilBCVITvPBFUyVlH
	8LlFFVG86ndN66467Yx/RcNKENBKT6TLowAxKGAw6dCnE4xPeiuJ46e7EY0eq5cRNMBBqYCObPD
	UDk9O9IldyR4CV9ZD2dX50X8o5NFxxJmbEjZxxT+O0RR5SI/Hbo/quOje6eCdldl9dn8UaxaCIH
	9Y6/yJ8T//MYEiQw==
X-Received: by 2002:a17:90b:1c0b:b0:359:f5f4:773a with SMTP id 98e67ed59e1d1-35a21f339b3mr610906a91.8.1773340662179;
        Thu, 12 Mar 2026 11:37:42 -0700 (PDT)
Received: from archlinux ([103.135.252.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a11b42ce4sm3645612a91.6.2026.03.12.11.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 11:37:41 -0700 (PDT)
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
Subject: [PATCH v4 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Fri, 13 Mar 2026 00:37:16 +0600
Message-ID: <20260312183721.40482-1-email@sirat.me>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5E95277325
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
Changes in v4:
- Move i2c_check_functionality() to the top of probe before allocations.
- Use struct u32_fract for oscillator correction math.
- Explicitly set .cache_type = REGCACHE_NONE.
- Document intentional predisable drain
- Use dev_err_probe() for firmware boot timeout and remove duplicate IRQ request error message.
- Use sizeof() in regmap bulk read/writes instead of hardcoded lengths.
- Add missing headers (<linux/math.h>, <linux/time.h>, <asm/byteorder.h>).
- Various formatting cleanups per Andy's review.


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

Link to v3: https://lore.kernel.org/linux-iio/20260311224044.21480-1-email@sirat.me
Link to v2: https://lore.kernel.org/linux-iio/20260308113728.40860-1-email@sirat.me
Link to v1: https://lore.kernel.org/linux-iio/20260303090253.42076-1-email@sirat.me

Siratul Islam (2):
  dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
  iio: proximity: add driver for ST VL53L1X ToF sensor

 .../bindings/iio/proximity/st,vl53l0x.yaml    |   7 +-
 MAINTAINERS                                   |   7 +
 drivers/iio/proximity/Kconfig                 |  14 +
 drivers/iio/proximity/Makefile                |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c           | 774 ++++++++++++++++++
 5 files changed, 801 insertions(+), 2 deletions(-)
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c

--
2.53.0


