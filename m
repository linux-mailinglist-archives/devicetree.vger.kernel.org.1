Return-Path: <devicetree+bounces-243076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4358EC9375D
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 04:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0D923A8FD8
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 03:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4727D199252;
	Sat, 29 Nov 2025 03:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TIOvKzlc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890B15733E
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 03:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764388059; cv=none; b=hOAV7q01TXUFC3slcz9Dw5LVimKaNBLnKwuurQ8sug6Wzu4+v7amPUdvg/iI/ESscXJ8aKRe6cBn8shtXIoKvqzA9PnVw++5UddVDbNL9Tq8IvXHKX9OmNMkMFH0UXotu6ArYWrhAZT48zUVIJbVXO59IRJVUQ5HTdRRrpeG5TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764388059; c=relaxed/simple;
	bh=yvuiPhp54wO6JJ8+rqOVUCDwrN2fpqtAXT2pT5bMb+E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jNkEHgSBfUtsk9ounVUPAUt52GOi2r7N1J/OEFfuJEq6/UsSrwWfIbU98JDfgcgXDNWyhmfcfsITk+X4BPOtqM+TJYl+IMcXBDvPvplzyCkS7Eh9G4vFDgQpN07rCS/RpkONfFv2t4g3xkAuYqkm7ieDdKbagMW0vqfTiu29BdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TIOvKzlc; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so783757137.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 19:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764388056; x=1764992856; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o+WemKR66A2jsYlrCntI/kxVeNaQ2VT5vDEXnzsmvfI=;
        b=TIOvKzlcVgtUyU3mqVy1pWDfN3RMiNILg8/rp7Kr3HfWIGX8kkuCaZU8iFlf3l7i4K
         QoosmPeYl9BjIeDXrWy2sWCUH9r+K8u/J6vAwzkTGpQKXsiK9kmMCVUDkD35vVQ7eJGK
         bDek1kRWNvEHr2JrIAlN7pGJIyFqz4jDU+Xl9iLIld9RW2Wrzu9A+XX79l8AtXJSJcjS
         4ZZ9wFhOTGlMSUGgoXNYRdOFWqusdaP7az0syumZ4Sad+ONR3qNjPhcrZTSNmsjsSras
         s7KTQNqy9CL28R8BrKgOnyUfXopGE6T6xIdCrLxmIn5Gg7OvH6Cz4rr5El2N1WoSHc+r
         0LEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764388056; x=1764992856;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+WemKR66A2jsYlrCntI/kxVeNaQ2VT5vDEXnzsmvfI=;
        b=UXR8KyM4XJ2jrrcpQQ6Kuw1aOvqgMkkLoqG9ZWW0HEdQ+cXaCCw+rF+kakcOJEq2fN
         wX4JKnQeXf9/rolc9QfbLLZZDQ/llAoK5ydLvdQLXKEUhhcS9nnE5nTsFl4uxASEkbls
         1TBX5YK3EDuLK5DjonqAnnPzv0254vZmJ2zLzdneCt2uASAZuUHi718MNZKmbiOawzzF
         kYWfB4gMb+r7E1b7nd0N42urheCXX+iug+AGOHLaklwB6ZdENqgrHryYIji6kN1D3lkg
         DeCTwlHDoFXA9iE0sD7rOELvWkN3Xy/rKkSXQO+ReG2ifXugpL2swDP2NDMs6HIRJNKW
         FfRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD/mh2NfMAujVEwwFaKCGdBqzbatM7HmZsk6j2qo6zxB8LTbbVrogwPm+l2x3YjyVMpThnlq9NMNQN@vger.kernel.org
X-Gm-Message-State: AOJu0YyrE6LbHJ7kRs/s8BXDyqLm4zEC+OmT9yNhU0udOfwwOVcQXA3f
	KbQTHovtZ3XA5dpHgW+NFf6fZP/ppaIPd6Akr4/SMD5JGLjxPjsFntZF
X-Gm-Gg: ASbGncv37eB8HxXwDeIc2wk7KIygOzbBlf52pn0JkwPzFIy/IIvweTYOv+1V3Z+Rugz
	hcmjBqstF55zcfuL5DNW7r12Vr6IhqvzY+w+gq6gCIJtfYwqWvyo5FKd0M+XOnffv8xaXOmK1iW
	B65Y7RXwXm57ZPriiUOBU/d54g4mc5bTOJBvSkgLS+7OQEJsvBg8Xt3UlZu2xULuAv+RixzTHTz
	/E9kZ9RhGRiVi32XCRCscLa3dgAahPsfeDxVliRo8YdXxdt8AvBkqS+kcjOD/+b6eHdCVf7IqJk
	PgVFcnTW0ZqDlihpJEiTjKIiXCXDKEYB53QGuYS/aewHyP2vgv557Eq4PzyLAdWDNFWMiBRJjnL
	vglJO7zDoYYEEsBpgPEcs+3RURj6KkwvsnPksemd754VXQ6en3Y17t+D3z8CAOAVWFKT5PWBz4L
	nfFr8dTuQz8YKTNXzVqaXZsPQ=
X-Google-Smtp-Source: AGHT+IFriGnbvZfMgscLKz2M7HYz15cqGgb8idOJzTIt6/dQmhOawxZPI7HO4ranmrj6t7PICDwHSQ==
X-Received: by 2002:a67:e707:0:b0:5db:f710:497e with SMTP id ada2fe7eead31-5e1de3444c6mr11030831137.21.1764388056399;
        Fri, 28 Nov 2025 19:47:36 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d917860sm2562662137.2.2025.11.28.19.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 19:47:36 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Subject: [PATCH v3 0/2] iio: Add support for TI ADS1X18 ADCs
Date: Fri, 28 Nov 2025 22:47:11 -0500
Message-Id: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL9sKmkC/02MwQ6CMBAFf4X0bM3uom3x5H8YD4UWaCLUtKbBE
 P7dgolynJc3M7Nog7ORXYqZBZtcdH7MUB4K1vR67Cx3JjMjoDMCEtcm4oSKgwEpKwNCVMDy+xl
 s66atdLtn7l18+fDewgnX9dtAwl8jIQeuhKlBQdtU+nTtBu0ex8YPbG0k2nvy71H2yNatkQpqU
 ZZ7b1mWDzSV8UjWAAAA
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
 Kurt Borja <kuurtb@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3910; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=yvuiPhp54wO6JJ8+rqOVUCDwrN2fpqtAXT2pT5bMb+E=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJlaOUd+/Tv1dOMl4TVvJlr/Pnf2goFrjpjGhUCX6aHTj
 B6Ui3Zt6yhlYRDjYpAVU2RpT1j07VFU3lu/A6H3YeawMoEMYeDiFICJPJVh+MU0+3/0jQ2XPwrN
 4p27SShVfVZOxIkJD6aF8c+YvW/JmZS7DH/FQwM3Hbdj1r5S/4vtYFKI95YNxW//Ff33v5lo2vR
 DfgcPAA==
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

@ David:

I didn't move enable_irq() and spi_bus_lock() out of .set_trigger_state.
I explained some of my reasoning in v1 and I expanded patch 2 changelog
on that. If you disagree with this, let me know!

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

  - [Patch 2:]
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
Kurt Borja (2):
      dt-bindings: iio: adc: Add TI ADS1018/ADS1118
      iio: adc: Add ti-ads1018 driver

 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    |  82 +++
 MAINTAINERS                                        |   7 +
 drivers/iio/adc/Kconfig                            |  12 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ti-ads1018.c                       | 811 +++++++++++++++++++++
 5 files changed, 913 insertions(+)
---
base-commit: f9e05791642810a0cf6237d39fafd6fec5e0b4bb
change-id: 20251012-ads1x18-0d0779d06690

-- 
 ~ Kurt


