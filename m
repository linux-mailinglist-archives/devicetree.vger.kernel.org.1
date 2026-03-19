Return-Path: <devicetree+bounces-278003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BR5JKJJvGknwgIAu9opvQ
	(envelope-from <devicetree+bounces-278003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:08:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C98D2D183E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 91FB83006807
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7E835BDBC;
	Thu, 19 Mar 2026 19:08:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146CF21ABC9
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947294; cv=none; b=rVeDRRdQbV4WhFR26exh0pyHhWPnXrla+VZezPAwUkicWeZnXvcbVA9aig44y7lsUo70TdTPrV3tTtCwVWD0oroVkFaLL7JWmNYpAH0Sv6/YrZhtt2NvwZOmtsOQayNGM0OAaWQOOncsG9GuwqQrJGQg7m2Kb4vcBlYheB1qTYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947294; c=relaxed/simple;
	bh=JrtkPabg5qRXMNb7b8TTMESGTuhXIyjlnOmXliDdUCg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FOe6TqTPMU8Hyews/Jzj7nxxw/ukPthsLXybQO17Gh5HNSyYdXwWSUw4lI8xfDNIqFv9uaQ2boz5ZRn0PxTVN+BfnApRHSnuPIEy56ZbjhxlFIXsnpQQLJxwfckMuaa5I6+oGy3cPbfpDP5SuzZHS+Ylhh2SJ/BbI3sr2Td4K/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ad617d5b80so8413375ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773947292; x=1774552092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTSBQ37exNchnpndmYARHtt6/gb7fr1HX5RwBesYqUk=;
        b=ra58c95RjJxWGWCMPK1+01D+szosPHh/idzXnqKuYUbI4EERDaG8MAbZqPy6/cJbFm
         2ONV8GDI+29P972HDIjO+OipKAbhJ1qLgT3SrJI/R+PNkoutxNjpSDvRPSrLVZNp5D10
         EcWrrmezExySilYjGnqrLY1WqFkyNCUCARlVUesJbDVbig5NxMpfnKo7D/9Vw6GwpD3k
         Lxt/LE2FV5QcYBmobvZcyA/gTnL4idZLQC3epDaP4QfdKy+wnLR/LYnX0D4Mcu1O4lq5
         45QxaWUZILs1oFp+9IDyySwJbA29T2+UMx2equTHbslnS4D7KLk903f4SfFmQK7bhiGg
         +bfA==
X-Forwarded-Encrypted: i=1; AJvYcCViMLVEQCc/9Q7o5zcYL5+H1NoVqlF69csyT8hcSyHC3PxGXNavKlEcIJele9R3x46x8hDn1nq3BgyK@vger.kernel.org
X-Gm-Message-State: AOJu0YyxYZ4WbWDZQDlh/xIt7fjrAg2lCbhybxGh+pqqyW1HAFIDAwL+
	AW7Um+YsjV5B+6E6/fdgQbmBV5vx1KE8vlwpRFZVowZnL+S9r7suEet6
X-Gm-Gg: ATEYQzzuovzaK/gvNtQJgArv3F41GoF6dmKeVbCtwRljKjuUmrlnxQS4QBYx57W1LgJ
	OT+LDQ722sTMZL/TEVSLwQp54qmZRvxuE3JD3/9cnGPILAzuyfRBcXwwxH2YSDr/V6It4YRkCrz
	Lr+72y2IwwiCUVFVH9a0bEHLIJiwnv8xyHtxFYcpfzhe3D2zMZr5rBcX+g+EwqaLzuqiGg/x2jN
	C79XLYvbiA9Ejz4VH5Lm4b3+vKdijaBRSzmk7EDkBWRtvF20i6loMZFwBmyjd4njDVc/o3vovgr
	mZCwwf4cR2sLw6+3SLrl2wjqII7pQhqetFzj+HWzzNMRWEbtTX1NmyQoUL9/NjjftN03vzkF8Zd
	Kt1Cvzr7AxawXh9yLE5hzKjsXEIYEe2G+4Ux88ykKVNY+Xkiv2sTaiCHiZqL45scfhUCWKt+o1u
	OMupkkQKUrxm4xQuLuo3A1j3f1CIEDOuuev3R6yfiPH/Esz6BtoZERsY9wXJQ32BUXJLnueKCvT
	/xBmcmojPpLEJcpSCNVBYsf4Dep
X-Received: by 2002:a17:902:f605:b0:2b0:5990:cf1e with SMTP id d9443c01a7336-2b0827d60cbmr3117265ad.33.1773947292120;
        Thu, 19 Mar 2026 12:08:12 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e603b2asm68665345ad.55.2026.03.19.12.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:08:11 -0700 (PDT)
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
Subject: [PATCH v6 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Fri, 20 Mar 2026 01:07:12 +0600
Message-ID: <20260319190738.151614-1-email@sirat.me>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278003-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[sirat.me];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_SPAM(0.00)[0.206];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C98D2D183E
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
Changes in v6:
- Make vdd-supply required. Add descriptions to vdd-supply and reset-gpios (per Jonathan).
- Check reset_control_deassert() return value (per Andy).
- Use volatile table for result registers and caching for the rest. Also mark write-only registers.


Changes in v5:
- Patch 1: No changes. Collected Reviewed-by tag from Krzysztof Kozlowski.
- Switch XSHUT pin handling from the GPIO consumer API to the Reset controller API.
- Drop <linux/gpio/consumer.h> and include <linux/reset.h>.


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

Link to v5: https://lore.kernel.org/linux-iio/20260313113737.151881-1-email@sirat.me
Link to v4: https://lore.kernel.org/linux-iio/20260312183721.40482-1-email@sirat.me
Link to v3: https://lore.kernel.org/linux-iio/20260311224044.21480-1-email@sirat.me
Link to v2: https://lore.kernel.org/linux-iio/20260308113728.40860-1-email@sirat.me
Link to v1: https://lore.kernel.org/linux-iio/20260303090253.42076-1-email@sirat.me

Siratul Islam (2):
  dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
  iio: proximity: add driver for ST VL53L1X ToF sensor

 .../bindings/iio/proximity/st,vl53l0x.yaml    |  17 +-
 MAINTAINERS                                   |   7 +
 drivers/iio/proximity/Kconfig                 |  15 +
 drivers/iio/proximity/Makefile                |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c           | 820 ++++++++++++++++++
 5 files changed, 856 insertions(+), 4 deletions(-)
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c

--
2.53.0


