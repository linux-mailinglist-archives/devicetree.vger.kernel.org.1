Return-Path: <devicetree+bounces-244432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6952CA4ED9
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79D7E305B644
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E56E3570B4;
	Thu,  4 Dec 2025 17:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QCu7ivXu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D02335580E
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 17:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764870981; cv=none; b=XH+/qb1jeFp56qyAItXBCL5HYG9F81HSUL4vh9lp72HUwvDQhcTllg98GRvkdG6BTqoVdSRnG92vejrMMPYYPlZaqcf0A5k9aDDEXvgD9wBsbc2WRrmuLjVtfl36TbVEqxC+yFZXBJ/VcwiigAphyom/29ksDEhhLG1fnwOFIGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764870981; c=relaxed/simple;
	bh=toCAtMbb9dvmvUAxCi9F5GpeYSTPf4S9mvbIIOdUFt0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UZYo1bOor8iuiPFWgaCu+8v4BcOTmfBaAv8BcKdYnZ+cm0nLL4yXYILJFTDYHPIlVjuBm/hpIvNISfjHzoCV6BQK5xqtRbm+1QPw/CVAh8UVsp+JYL4B/DWzztKVJ4MfgL7OpeWNWMxhBGP95UmA7K8DVEDzj6TdCO12RnxJwAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QCu7ivXu; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55ae07cf627so388501e0c.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764870978; x=1765475778; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P5qXGQ3d6vUwfw8y14uywQ9Ao0RCcJQgq7BGQ+6ZV2c=;
        b=QCu7ivXuNVi/3CDWByWZ4FMtQ3Js5lPnoNdNpc87io1QgifUbJF14lf0/rr/rV9XTd
         9FuzVchetsARkRNF3LqeGkkxF2gb65aq0LnbkggS/e5lhCDX302faoO1ui6oq/jsuYLu
         C/jwzhhWRaw+s+nTAjw+b5NIWzm3gzvM8COjSxE4vdf8GU1aAzz9kDZXKa0/BrpK544G
         JPXK65ujzxkA+7S2XvFnE/7jVTfu7xs2sxt3FtdHO/1DuzF6f1kD7yw+bwDxUYGPxRhD
         d4NP7mq4Odu8izBsFefFGNYriSAQh/2xcGPxQVyMxZ1rLky9Bi/p6Otjee3dwtdKNUlu
         R28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764870978; x=1765475778;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5qXGQ3d6vUwfw8y14uywQ9Ao0RCcJQgq7BGQ+6ZV2c=;
        b=bIs+H0La3e2M00AAtHxH8Tm4+0Jt/VSQoFMACyNWQpes4oWwQr+FV1hiT6N+ie9SjC
         sbDeIGGOqwyZlkXndc2M5CFsYiIsonwFZf+C7epScN7nIVbmF5HGHm0HwUb2lZ7fGAyD
         OfnQDle00DgOqe3bboIqJXetlBz2zjzBwG6zIeyeZbwuSZGzqX1zwyRSwYPQLiOBuFX/
         SSS9iHURnMYPx4uIkWYrRIWQyrv8/p00m3J55je3OZ+18G7FgspvzBAZR+8Ocy4d39Q5
         fY1flYTmTP48pPOEp1evCeHoSAPxm1EmbPXGxEsgTDn7c+PBJL7XJkhDVeykYgSkObLK
         sKFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBDuAUxZUQiQGdiFaggUSIHrphWc3//5PrKR4V1MNsuC4MuNot2FQhU7z7xDScmhvdQfaSmNQP/3Hs@vger.kernel.org
X-Gm-Message-State: AOJu0YxoD6GiboZn9aouR07Y/uc3LlAqy+vzhnHcPM0Yc2psyy+GGSml
	V5Pm2Ibz/csL0yuZxnVjm2bFjIvzZJPlaR80VGSy9l7nk7R23PXzPugz
X-Gm-Gg: ASbGnctcnIRIol8+uY5aVavmvPdRPqwLKScWkYGHjpRaE5U3RpyOHH8PlmUWmtXyx+m
	TQF+Eh3L++nt/UQgvxC0LUWk4TVblY4VrkNFgx9dNidMVuWp9k9x0iLBJeFegVAd6RVnxeKQI54
	VWA83UXwGGH4TcyZArCuAsQp0OR+mk02HSSDSuaEIfropzgKWPuXZw3SvI4P4zrVOKFSlkRV5be
	pFB37nHtgjgW521hCKu+0N74ELUoKzXBP8YLZNz0Clf4mnKrBbJ5ZUoO+V5tUayCd8IsqbasMcj
	QqOxYPQJB6tbcQD93hvART/mhwKfz6W8FYcHuwTTu5BQVB5wqbY+IAfbu5bpzgbXR6O8kq4oaVk
	AS52Mk8D2Wxa13m9JbwM/27c9SCA9OAo9HcfteIjAHGnC/EXigA7Ob6HwxV1DLC31TD2f/CA7K1
	i7AQoHv3NX9S1ydRg=
X-Google-Smtp-Source: AGHT+IFmLfTuS3C83WmvTkpTwhuJJeE8MEruporZI+EdkuasoF3+qH+YSM+an1eizxQNM+JfLzuicQ==
X-Received: by 2002:a05:6122:2a53:b0:55b:9c1c:85f2 with SMTP id 71dfb90a1353d-55e5beb9cf8mr2987898e0c.1.1764870977913;
        Thu, 04 Dec 2025 09:56:17 -0800 (PST)
Received: from [192.168.100.61] ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55e6c97cea1sm921105e0c.17.2025.12.04.09.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 09:56:17 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Subject: [PATCH v5 0/2] iio: Add support for TI ADS1X18 ADCs
Date: Thu, 04 Dec 2025 12:55:40 -0500
Message-Id: <20251204-ads1x18-v5-0-b6243de766d1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABzLMWkC/13OTQrCMBAF4KtI1kZmJm2SuvIe4iJ/1YBtpZFSK
 b27qYItbgIvzPdmJpZCH0Nix93E+jDEFLs2h3K/Y+5m2mvg0efMCKhEQOLGJxxRc/CgVOVBygp
 Ynn70oY7jp+l8yfkW07PrX5/iAZffbwcS/joG5MC19BY01K4yxenamHg/uK5hS8dAW6dWR9lRs
 LVXGqwU4t+JrdOrE9kZGayxGktL/t8Vq8vP6orlTifKvM2REvXWzfP8BoP2MdlGAQAA
X-Change-ID: 20251012-ads1x18-0d0779d06690
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4866; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=toCAtMbb9dvmvUAxCi9F5GpeYSTPf4S9mvbIIOdUFt0=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJmGp7WnnFvi4VB+VmSHwKJD62dc3reT/4ufkDBzjOilz
 VraRy8+7yhlYRDjYpAVU2RpT1j07VFU3lu/A6H3YeawMoEMYeDiFICJ5G1h+O87v2lni4/QE9/1
 mdelf3Ae7tRgU7sv2hN2+8Iy/kU9nEsYGSaY7VSST6+2fi/lefZ4qfFEyemZDwT56zfut3Bvvns
 lkAsA
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Hi,

This series adds a new driver for TI ADS1X18 SPI devices.

This is my first time contributing to the IIO subsystem and making
dt-bindings documentation, so (don't) go easy on me :p.

As explained in Patch 2 changelog, the DRDY interrupt line is shared
with the MOSI pin. This awkward quirk is also found on some Analog
Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
inspired by those.

Thank you in advance for your reviews.

Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
v2:
  - [Patch 1]:
    - Move MAINTAINERS change here
    - Use generic node names: ads1118@0 -> adc@0
    - Rename file to ti,ads1118.yaml -> ti,ads1018.yaml
    - Drop ti,gain and ti,datarate
    - Add spi-cpha and spi-max-frecuency properties as they are fixed in
      all models
    - Add vdd-supply
    - Make interrupts and drdy-gpios optional properties

  - [Patch 2]:
    - Update probe based on dt-bindings changes
    - Rename file to ti-ads1x18.c -> ti-ads1018.c
    - Rework ads1018_oneshot(), instead of waiting for IRQ wait an
      appropriate delay before reading again
    - Only alloc and register a trigger if we have an IRQ line
    - Drop ads1x18->msg_lock in favor of IIO API locks
    - Read conver before enabling and after disabling IRQ to ensure CS
      state is correct
    - Add ads1018_read_locked() which takes an additional argument
      `hold_cs` to explicitly control CS state in trigger and buffer
    - Fix ADS1X18_CHANNELS_MAX limit 9 -> 10
    - Call iio_trigger_notify_done() in all IRQ handler paths
    - Drop unused includes
    - Drop BIT_U16 and GENMASK_U16 macros
    - Drop unnecessary named defines
    - Use u8 types in ads1018_chan_data
    - Rename some struct members for clarity
    - Move tx_buf and rx_buf to the end of struct ads1018
    - Rework channel handling to just make everything visible and add
      ADS1018_VOLT_DIFF_CHAN
    - Use .scan_index instead of .address in IIO channels
    
  - v1: https://lore.kernel.org/r/20251121-ads1x18-v1-0-86db080fc9a4@gmail.com

---
v3:
  - [Patch 1]:
    - Use unevaluatedProperties: false
    - Drop #address-cells and #size-cells

  - [Patch 2]:
    - Add kernel-doc to internal API
    - Drop bits.h and bitops.h includes
    - Add types.h include
    - Use unsigned type for data_rate_mode_to_hz
    - Rename __ads1018_read_raw() -> ads1018_read_raw_unlocked()
    - Rename __ads1018_write_raw() -> ads1018_write_raw_unlocked()
    - Rename ads1018_read_locked -> ads1018_read_unlocked() for
      consistency
    - Let ads1018_read_unlocked() take NULL cnv pointers
    - Add ads1018_set_trigger_{enable,disable}()
    - Refactor ads1018_write_raw_unlocked() loop matching
    - Invert ads1018_trigger_handler() logic to follow traditional error
      handling pattern
    - Refactor ads1018_trigger_setup() cleaner
    - Make ADS1018_FSR_TO_SCALE() calculation be 32-bit compatible
    - Some additionall minor cleanups

  - Link to v2: https://lore.kernel.org/r/20251127-ads1x18-v2-0-2ebfd780b633@gmail.com

---
v4:
  - [Patch 2]:
    - Replaced <linux/byteorder/generic.h> -> <asm/byteorder.h>
    - Dropped ADS1018_CFG_DEFAULT
    - Fixed long lines
    - Added Andy's remark on ADS1018_FSR_TO_SCALE() kernel-doc
      description.
    - Fixed wrong argument on iio_trigger_notify_done():
      ads1018->indio_trig -> indio_dev->trig
    - Renamed argument in channel macros _addr -> _index
    - Changed return type of ads1018_calc_delay() to u32
    - Mention @cnv is optional in ads1018_read_unlocked()
    - Use 16-bit transmission cycle in ads1018_oneshot()
    - Dropped spi_set_drvdata()
    - Use full resolution in ADS1018_FSR_TO_SCALE() and subtract 1
      inside macro
    - Rename ads1018_read_locked() -> ads1018_spi_read_exclusive() for
      clarity
    - Minor style changes

  - Link to v3: https://lore.kernel.org/r/20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com

---
v5:
  - [Patch 2]:
    - Fix ADS1018_FSR_TO_SCALE() long description
    - In ADS1018_FSR_TO_SCALE() subtract 6 from BIT() argument instead
      of shifting the value

  - Link to v4: https://lore.kernel.org/r/20251202-ads1x18-v4-0-8c3580bc273f@gmail.com

---
Kurt Borja (2):
      dt-bindings: iio: adc: Add TI ADS1018/ADS1118
      iio: adc: Add ti-ads1018 driver

 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    |  82 ++
 MAINTAINERS                                        |   7 +
 drivers/iio/adc/Kconfig                            |  12 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ti-ads1018.c                       | 826 +++++++++++++++++++++
 5 files changed, 928 insertions(+)
---
base-commit: f9e05791642810a0cf6237d39fafd6fec5e0b4bb
change-id: 20251012-ads1x18-0d0779d06690

-- 
 ~ Kurt


