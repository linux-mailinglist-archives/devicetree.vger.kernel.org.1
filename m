Return-Path: <devicetree+bounces-195149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66916B00ABD
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:52:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4244C1C811DC
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847CD2F1FF1;
	Thu, 10 Jul 2025 17:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="3QaHc0T8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E57D2F0E28
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169875; cv=none; b=B9jYfq1Wnvte9Zqzs4+mZMBWxGQfb7nKRMu3sta5Q8U589aBcrRkcAmybD7CMAzmFkJgbo5LceKgzxpSNf67WGCZp7IQhe1Fw83SZ1J3Wz9D0suaAJ/gfhsZXx2lKRK1V3xUhvAHb1nK14ilCi3iHVufSLfBNlR4E9plWgVpTQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169875; c=relaxed/simple;
	bh=W2j6rcWF6RbIU1CU28XWFfVkhL/GZ6rbaJ6hA12lgXs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n2/lBRWyzAjuCpMVk7txktlkUzLzvXQiXkLxjKp2C9Xayy9uvJ2lmoJO12moPjnTEgAARvqBL4ynYyTv/yuWXhsprFfO1jZrW3ueJrNvmFnpVGHcBuX25aS4pRPT2EYKS+8vhwmDVc5qhLz55eiCVdt977CUq2p7Op66pZUK11E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=3QaHc0T8; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4a43d2d5569so15516171cf.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169871; x=1752774671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JNMqoqzDLeOgTO7xvZUUvwlywxm/pgloUgJcLaLBW1w=;
        b=3QaHc0T8RzMkCW4cfr/4MhDV1k1JmpW1HAVqO2zYH0UWug5s7KbBoj9Fg3kYzVDPqY
         WcN6GxSNbAGP/Sa4XlS7OAa5DYrUKpQ+RNb4k4lTNO2oxmJBqujIpjqve+k+Y9+MT4Wo
         dGsQpeIsWWvbVeWEgCEC6CZOiPwSrnwbHhvEJmw5WO+5DJ7k6ZzOpf7VJGcfkEjHLGUU
         Sg/FbBZEi4Rps5RKy9FpbHnKrGiWio53J97FhEWq4TK39SxaMMgooa8JRJ5I2T/8Y1i8
         4YwcFVaMZVWdvpZXO+WqBcLcnYx6KO28qfHELwjClPd12Wx6i38uJm+0qjcOZ5l9eIIZ
         fr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169871; x=1752774671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JNMqoqzDLeOgTO7xvZUUvwlywxm/pgloUgJcLaLBW1w=;
        b=dwI/wgXu3TGmZw2TYqrncei2d22ADOoyYyXYD5qOgaTiGvOcnuoqstNr9FObUDwqiL
         Ezm+B8wieclU9Ovq9sP+hPSwcp+dgFsH++4qJmPZAwl0zXKkAdZJKr4g5y3Dcs8Pf024
         QMZh9UnGbh29tkdoo/2G28B9p9CRe2avt9aS5KfbICBU7P91c9QUS7Vl1RhQk6ME225v
         JfsZswF0KPjI1G2NFCd32IJ1MXCcLcgU9upjhPD2w13DUJO2ItzoSpxTBjU9qNl52HFX
         ERLS8uidAktAHmdbJYW5rJfxPtJZpqUwLWcFGu8S4xeEsiXxyR3vCGTq8n5tcLN4HyLj
         F2vA==
X-Forwarded-Encrypted: i=1; AJvYcCVqo8jQL6y1sg+GFuTQP5cjQzjT/l2dSTU79uzReNTEPUeqtn5vTFHJb3H0Frj6pdqHIFrZnysImy9p@vger.kernel.org
X-Gm-Message-State: AOJu0YzV9lq5vb4T1/ABq2VuTFfk7QF6YPk2vS7XHMn7QGV33gRIo5gB
	tYWf+v/cah3WDw2yP/9ZB0bgw6SZwAre609LgU3nufW3J/Xqw5s0clWX7yIN4jmUNKk=
X-Gm-Gg: ASbGncsKCbziRHM8rU9khUU3U0/Fqn7yRXhMhCtMrhIwUvcQm1vPChCxyw8sVoczCxh
	Cjxm4L5LLzggbhNvEx8J9Ib5vBCrg+OcMDZ5gWaBPS+/bsXh7cUiNWDT8KfQ6ps3ycVrclraRxe
	nOTikBW05EmToIMW863vZ8G7nalBY2NfKYlwdlACojEL2VksONGC7YP4R5eqCd965EIjkmy/VXM
	CHkCa/pem71foUOQGOSKLQHR/tLVA70Z1eaD3wElbRVJpnKLvn0Y7/ECr7P0Ldn8mZWfFAqR5lb
	qJ22iNzMXdEKCbZ+u1u5Qr1/QNYkyzC8vP0CPBzIXAjWgWCuBwQJlebmXSQKaU5Jbh/6u6Vdyay
	3fvdCH6O5ptm9dyOtoJls9G4wm4p6HzWzKQk=
X-Google-Smtp-Source: AGHT+IFI/jmo2fMFePpFAuOhqVGzgvVfNMFnzvNUuKjn8MCsLC2IQtc9MHCE70TXETEly/c6N52yZg==
X-Received: by 2002:a05:622a:28e:b0:477:c04:b512 with SMTP id d75a77b69052e-4a9fb89853amr5290841cf.16.1752169870948;
        Thu, 10 Jul 2025 10:51:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:10 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/8] spacemit: introduce P1 PMIC support
Date: Thu, 10 Jul 2025 12:50:58 -0500
Message-ID: <20250710175107.1280221-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements 6 buck
converters and 12 LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as drivers for its regulators and RTC.

Version 7 provided the ability in "simple-mfd-i2c.c" to specify the
max_register value for the regmap configuration as an alternative
to providing a "full" regmap structure.  The max_register value is
ignored if a regmap_config is also supplied in simple_mfd_data.

Lee Jones felt the logic in v7 was more complex than it needed to
be, and suggested removing the const qualifier from the global
regmap_config structure used by default.

This version does what Lee suggested, and the logic is indeed
simpler.  However in order to avoid compile warnings the const
qualifier was removed from other places as well.  (Checkpatch
even complains about this.)

Frankly I think my original solution--which simply used the
existing ability to provide a regmap_config structure--was the
best (version 5 of the series is done this way).  I don't think
adding simple_mfd_data->max_register provides real benefit.
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v8

Between version 7 and version 8:
  - Change the global regmap_config to not be const in patch 2.

Here is version 7 of this series:
  https://lore.kernel.org/lkml/20250702213658.545163-1-elder@riscstar.com/
  
Between version 6 and version 7:
  - Revise patch 2 to preserve the option to provide a full regmap config

Here is version 6 of this series:
  https://lore.kernel.org/lkml/20250627142309.1444135-1-elder@riscstar.com/

Between version 5 and version 6:
  - Added Rob Herring's reviewed-by to patch 1
  - Add the simple MFD functionality suggested by Lee Jones
  - Update patch 3 (previously 2) accordingly

Here is version 5 of this series:
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

Between version 4 and version 5:
  - Only check the seconds register for change when looping on read
  - Return without re-enabling the RTC if writing registers fails
  - If the RTC is disabled when reading, return an error

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

More complete history is available at that link.


Alex Elder (8):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: specify max_register
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  20 ++-
 drivers/mfd/simple-mfd-i2c.h                  |   3 +-
 drivers/regulator/Kconfig                     |  12 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 167 ++++++++++++++++++
 13 files changed, 621 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: b551c4e2a98a177a06148cf16505643cd2108386
-- 
2.45.2


