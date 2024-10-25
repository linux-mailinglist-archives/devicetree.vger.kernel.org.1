Return-Path: <devicetree+bounces-115526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6619AFEE1
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 11:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F38C81C21E6A
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 09:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2156C1D5159;
	Fri, 25 Oct 2024 09:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yG4skuaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C635B1C7B79
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729849859; cv=none; b=NLigq29IJPpSa4aAZsIPYta6AwMyyANgLBbmic48bPhfrN+Qd4F1qzVqUB7Gi9AaY7lGz/TFg2O05lU1cPIuJnKxbl0UqgMlllEjoffZ+LS0sTq+M6h7UPqmkBvfpG/va41MsrwO0REGY+212N0Rqt313DrWVHd6UurfIma0W8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729849859; c=relaxed/simple;
	bh=A40y4htmzKBDANTW4yjcMjj0ZSsaTWlleDbs+sthGDo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XGRpZLHjxfj+1IKStlfnLD/upJeQHdoNOuqHFOQgwm6tUwwu5zg6Z/QF5dONHCTNCUYMaZ5buKUhJhj3Avvaaey27iVi2dfmn3C8gpYkNMATTJ1ILrugDKBoU6VtTtiUVRdD6H6taxyprYz/2nEe9N4Zn7nKuSE3V+fuWl2IKRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yG4skuaV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so18274495e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 02:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729849854; x=1730454654; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9DFwVpV2ssHllVZI1XNNl5tJpB3O7/dhYVtOqlpIGUA=;
        b=yG4skuaVFh43B7C+2gX6JxYYpahQh8asNmTC/dCT7NNztvBLir8TK9eOEvKrOZYSWx
         zxdSysHmOaGbkKxFuz8yLR0J1qB2UM/9wC+BUcACCdc0J0gwzmoRs4Aa6g0mjNtDCcPQ
         EjO4g7VGinuZAIieAwcnK/RvtQHZI1w2ZK7ofyNwv6BKAMUKGZzUbbcR15N2js4qo1A7
         s1uU1PrFHwq/uSa3DYhez/QGSkfO+Eeat1J5AoRfckPcYDTj/1NWOzSC4HafL4gHS6II
         M2R53Gbp8zPG3vo/c+SDQw4yIJBxWNp1rvH1jZtjNujw+79u0VGOy4IKh4L7NM0B8phw
         njRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729849854; x=1730454654;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9DFwVpV2ssHllVZI1XNNl5tJpB3O7/dhYVtOqlpIGUA=;
        b=e+SgZRFJUEfuP4GFCW5uyfo/MwPoqRjeKasq5ZbgrSUXid3Z3WjwQHvxY7ZQmC3E4m
         1wC/iknpgO8H6l7kGcRNL2td2hZsN9nWwNjWSALo7drIfW1oIGYS4RjiVg9L7eLPWev2
         4MFoUSQovzG2Wrs3KcxbKGbWjOkBUMN9ocM7Lf9ktSIZl/sBor0i+hrvzUBKSGUlm5xR
         ZuhOKJgwXMIt0nSfUr9EN0X5TG9o0PLLrzR1BCVYamtMT2Jb5YzMfsqILsijAX+jtVQb
         bYcPJNaP36WZ1oYE/wu4apfilY34gGEC6TdG133rFlN5VKncYp6ZjqXbCJkGRbG4IPNC
         knJg==
X-Forwarded-Encrypted: i=1; AJvYcCXzsGBlp6MhBeaPi5Iy2qjnbuW3/Rt4ux9tRjlSkown9Xn1vcvyO1draunU5cVso4aF0rISz3uga26l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2eJbKmk5AGxjXEDRSEvFcZjGtk4U3vEwgq4LdgZTzSo4LzWQO
	Nc+J4VDguxlCRiFDNu2Td7ySEin8Au9b4MrY2rD0UbkZDtGwc0MKipoIlPIU9oa2AZkp0WJTPK6
	xSTuc0g==
X-Google-Smtp-Source: AGHT+IE8Bjm3O80lBBSQZ8AJMhZdvTDYo2T/BOoxWRh71E982zFhFIVy3vlZGi+soNtwv7Fd7wvgpA==
X-Received: by 2002:a05:600c:1ca4:b0:42c:b63e:fe91 with SMTP id 5b1f17b1804b1-4318418aec5mr83386895e9.24.1729849854046;
        Fri, 25 Oct 2024 02:50:54 -0700 (PDT)
Received: from [127.0.1.1] (host-79-41-194-153.retail.telecomitalia.it. [79.41.194.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431935f6df1sm12895085e9.35.2024.10.25.02.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 02:50:53 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v8 0/8] iio: add support for the ad3552r AXI DAC IP
Date: Fri, 25 Oct 2024 11:49:33 +0200
Message-Id: <20241025-wip-bl-ad3552r-axi-v0-iio-testing-v8-0-74ca7dd60567@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK1pG2cC/x3NQQqDMBBG4avIrDsQJ02svYq4SOtUfyhRElFBv
 HtDl9/mvZOyJmimZ3VS0g0Zcyx43Cp6TyGOyhiKSYzcayOOdyz8+nIYrHOSOBzgzTAw86p5RRz
 ZG229NG1tvaXSWZJ+cPwfXX9dP1c3O7ZzAAAA
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
 dlechner@baylibre.com, Angelo Dureghello <adureghello@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.1

Purpose is to add ad3552r AXI DAC (fpga-based) support.

The "ad3552r" AXI IP, a variant of the generic "DAC" AXI IP,
has been created to reach the maximum speed (33MUPS) supported
from the ad3552r. To obtain the maximum transfer rate, a custom
IP core module has been implemented with a QSPI interface with
DDR (Double Data Rate) mode.

The design is actually using the DAC backend since the register
map is the same of the generic DAC IP, except for some customized
bitfields. For this reason, a new "compatible" has been added
in adi-axi-dac.c.

Also, backend has been extended with all the needed functions
for this use case, keeping the names gneric.

The following patch is actually applying to linux-iio/testing.

---
Changes in v2:
- use unsigned int on bus_reg_read/write
- add a compatible in axi-dac backend for the ad3552r DAC IP
- minor code alignment fixes
- fix a return value not checked
- change devicetree structure setting ad3552r-axi as a backend
  subnode
- add synchronous_mode_available in the ABI doc

Changes in v3:
- changing AXI backend approach using a dac ip compatible
- fdt bindings updates accordingly
- fdt, ad3552r device must be a subnode of the backend
- allow probe of child devices
- passing QSPI bus access function by platform data
- move synchronous mode as a fdt parameter
- reorganizing defines in proper patches
- fix make dt_binding_check errors
- fix ad3552r maximum SPI speed
- fix samplerate calulcation
- minor code style fixes

Changes in v4:
- fix Kconfig
- fix backend documentation
- driver renamed to a more gneric "high speed" (ad3552r-hs)
- restyled axi-dac register names
- removed synchronous support, dead code
  (could be added in the future with David sugestions if needed)
- renaming backend buffer enable/disable calls
- using model_data in common code
- using devm_add_action_or_reset
- minor code style fixes

Changes in v5:
- patch 2/11 set before fix of ADI_DAC_R1_MODE patch
- fix dt binding check error
- patch 4/11 removed
- fix stream enable/disable call names
- fix axi-dac clock names
- fix axi-dac platform device unregistering
- minor code style fixes

Changes in v6:
- remove patches (fixes) already accepted
- move platform data include in drivers/iio/dac dir
- minor notes added to commit description
- fix axi-dac platform child-device creation
- minor code style fixes

Changes in v7:
- add per channel offset and scale
- change dac clock rate considering always buffering and DDR 
- fix axi-dac fdt property conditionals 
- fix getting clocks from high-speed driver, with a NULL as fallback
- fix missing dma buffer free callback
- minor code style fixes

Changes in v8:
- getting sclk from platform data
- fix axi-dac yaml bindings
- fix reset logic to active-low
- remove dev_err_probe messages from gain/offset calc
- minor code style fixes

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>

---
Angelo Dureghello (8):
      dt-bindings: iio: dac: ad3552r: add iio backend support
      dt-bindings: iio: dac: adi-axi-dac: add ad3552r axi variant
      iio: backend: extend features
      iio: dac: adi-axi-dac: extend features
      iio: dac: ad3552r: changes to use FIELD_PREP
      iio: dac: ad3552r: extract common code (no changes in behavior intended)
      iio: dac: ad3552r: add high-speed platform driver
      iio: dac: adi-axi-dac: add registering of child fdt node

 .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   |   7 +
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   |  69 ++-
 drivers/iio/dac/Kconfig                            |  14 +
 drivers/iio/dac/Makefile                           |   3 +-
 drivers/iio/dac/ad3552r-common.c                   | 248 +++++++++
 drivers/iio/dac/ad3552r-hs.c                       | 530 ++++++++++++++++++++
 drivers/iio/dac/ad3552r-hs.h                       |  19 +
 drivers/iio/dac/ad3552r.c                          | 556 +++------------------
 drivers/iio/dac/ad3552r.h                          | 230 +++++++++
 drivers/iio/dac/adi-axi-dac.c                      | 300 ++++++++++-
 drivers/iio/industrialio-backend.c                 |  78 +++
 include/linux/iio/backend.h                        |  17 +
 12 files changed, 1569 insertions(+), 502 deletions(-)
---
base-commit: d224a276b9dab9221898875d312b263205373327
change-id: 20241025-wip-bl-ad3552r-axi-v0-iio-testing-60e962791363

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


