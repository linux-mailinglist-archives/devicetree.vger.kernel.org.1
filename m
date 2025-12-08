Return-Path: <devicetree+bounces-245268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82181CAE116
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 20:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1098300C227
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 19:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024A02E8B76;
	Mon,  8 Dec 2025 19:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PKKfZDiq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F46F2D3237
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 19:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765221906; cv=none; b=ePxR/Wf7GsCdtKmXtT0MOqALxBCn1dKx3LYWJEvPIvJ7LgALe+f1BVkCpiI0zPc3Gj1JInufnIA0XWV+zV4RxjzO1wOzBluaGz1nwUgh0yjAWoqyxRqnBRrkUCf0hlDp77rWyH0sJCXnDB5BPJNSqEHKJHZhmHGNcbozdgWHiLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765221906; c=relaxed/simple;
	bh=zCMZDBm15cVh/x4JQEF8rBeaHpuC3U8OtLBEvmMdgwo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QB3X+g04E4KrzNKcezKLgi04KoDIM2jZjk/ObmtUPcBrfRWRMBhuomFe0F1alfrawut7oZK7roJUKS9COApJg4bfA55sQvNh4Lm2TbJYHkhNF1tp/C/Dl0FHp/zuvdrDZUnwwNlacF+nAusT8xlvEEPem0vaOUzcOJbmMI4rENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PKKfZDiq; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-55b2f2ae1cbso3480726e0c.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 11:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765221902; x=1765826702; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oTDO01MWPwITXTjV2I79z1YT9l7+kYjQpFuhrPI4WXQ=;
        b=PKKfZDiqFzgzcZqG+itOHlx6A8rSmgPMCzy1iqJ6QfOYEBaHUcMtauGE3kxJlSb8/C
         wJdHTtWqiGKneNT295iONG3sDWw1xnUCv+ZZ2sApOURHE7YCMa17OSi6ZFMwL+pIw9vf
         qSDsNLxXI01FtaKeK6V8sEq+ZpFwS905uq2GhLnbXwrCE3DhpLhlM49f+kGO2dk2NAtG
         /AQ0PlrcGGobMiw70xSnvCtGT3jaA/I9WwN308GXxzqS2dUB/mU6Tic3bm6Hs/9hbT3r
         eTBMPEZM07o3t4DOJxBPLUySk5LtFsJXEp0xD0TGMtW7bzoxlSIDh66Dc/e8scl/6ZP4
         Etjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765221902; x=1765826702;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTDO01MWPwITXTjV2I79z1YT9l7+kYjQpFuhrPI4WXQ=;
        b=VZ6LyTquJI5kyExA3LFN+N/1Ff0WkPzmsbwDHRi7oJCx0VL3wuGvNW6EfMB0CWDF+o
         lGwanFSkl31G7uQyv86NeV62/HrZWpL5AEnckXylgy0UPITJKiFhi+ZhiY+FYiWhIzUq
         wIEfPQozZb5Uq3WXkmzjbaR5fHorPj8GtSyEZ7qhS7o4xXBC5dUFCrbm1jjPXUAG+JST
         bwEYLRCo5A25LukOZvi+FDs2kqtPi2EYI4ICWHJiAIKIniDdXg/JpOgVo6xQXz0KzJEa
         q/bPCGy5c//Enj0jl1lUw8w+VFLYY0C2pz3gXY3fXPmc1jS8gmZMtYgWL83MmyoosPof
         qIQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKjsRV1ekXwmmzV4kXAcgrwdfq5bQUYzggcNqHYSdGmr/2xmaMcdaVY91o5Al3tTzodE1Smz9ISTFo@vger.kernel.org
X-Gm-Message-State: AOJu0YzDA39CtZkyp4z7NOoqKs8F0HRB/GclhkZqa0B4SRzlAqhVveYZ
	ODxdbWbUcwaacFTbt13NIg/Yszcb5BRBqci/jx2WBsOxml4zh8+sWsZD
X-Gm-Gg: ASbGncvTD5pyM+t4M1sujxWOUBq5T9MvbHSxn6owF9Wx78Dj3FNn6axu0RXflN8U3Nr
	4VnTiaYBPBG3sJW3jeFooBl4Fu5VbT+SgE+NGdI9iVRHdJWJK5WTlUsczO5aAZpaAvUpOnu5jP0
	oNMF1XXJGdwaTy2kkpp+vu6ju+d+w28GSS/uxEP2WllGthnQUMw4cZJaO7SOmCLTar6Vqs8UyUj
	2uhpJdUcvzRr0heRuqkdIZhirExBS604tiTE40E/GlLxL59zr33XG55jroH7xqDvFc9VpDDGHvT
	99goVzdGeHbAfIMt/6YvGqnvNepFL69It4NOpGXHwNL35zFBM0k31of3hwMtDS3Nb/Xj7v3HMpU
	85akL09yKd2v/tnLMRl6EcxCiZJVKjRM4JkrJi0/EmaJ3/ZSNoAW+kxqUxWqUSkGPpashnCLhN0
	V3yVwM5x8zuva48qc=
X-Google-Smtp-Source: AGHT+IFqHU+dYOKzo16y/G3coPWvFp5VJ/dE+PcuSvfXp0UMXSqsGasXJ96yfLetuPJgRmia2qwW+g==
X-Received: by 2002:a05:6122:4f81:b0:559:6b0c:1ca2 with SMTP id 71dfb90a1353d-55e847543d6mr2811517e0c.16.1765221902096;
        Mon, 08 Dec 2025 11:25:02 -0800 (PST)
Received: from [192.168.100.61] ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55e6c9c8fafsm6480475e0c.20.2025.12.08.11.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 11:25:01 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Subject: [PATCH v7 0/2] iio: Add support for TI ADS1X18 ADCs
Date: Mon, 08 Dec 2025 14:24:34 -0500
Message-Id: <20251208-ads1x18-v7-0-b1be8dfebfa2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPIlN2kC/3XPy2rDMBAF0F8JWldlZvR0V/2P0IWeiaCJi1VMQ
 vC/V06hMoZuBFfo3Bk9WE1TSZW9HR5sSnOpZby2YF4OLJzd9ZR4iS0zAlIISNzFije0HCIYM0T
 QegDWXn9NKZfbs+n40fK51O9xuj+LZ1xvfzuQ8K9jRg7c6ujBQg6Dk++niyufr2G8sLVjpq0z3
 VFzlHyOxoLXQuyd2DrbnWjO6eSdt6g8xb2T3bWjO7nuGYRq0wIZkfdObZ3sTjXnNUkRk9E64t7
 pf5xe/+eSdJRtGiBs3bIsP4sU7vq2AQAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5611; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=zCMZDBm15cVh/x4JQEF8rBeaHpuC3U8OtLBEvmMdgwo=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJnmapzLfzU/8HRYb/tCR+5200xBxa3uuYbLl/4+N/cD+
 x22wrmVHaUsDGJcDLJiiiztCYu+PYrKe+t3IPQ+zBxWJpAhDFycAjCRO1sY/hdXLbXjydZ4ZlZ5
 4r7oCynLaxt3+T048VI58yyz0qFNtQyMDJ0+AkcVNL8c+WobMDljZ96RVfEn9i2KDFuxYf6Gw5V
 nuxgA
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
v6:
  - [Patch 2]:
    - Actually make the changes described above. Sorry for the noise :(.

  - Link to v5: https://lore.kernel.org/r/20251204-ads1x18-v5-0-b6243de766d1@gmail.com

---
Changes in v7:
  - [Patch 1]:
    - Reword description slightly

  - [Patch 2]:
    - In struct ads1018_chip_info, make pga_mode_to_gain an array
    - Drop ads1018_{get,set}_{data_rate,pga}_mode() helpers
    - Drop context remark in ads1018_calc_delay
    - Prepare device configuration in ads1018_single_shot()
    - Let ads1018_calc_delay() take sampling frequency as an argument
    - Drop *_unlocked() methods in favor of *_direct_mode()

  - Link to v6: https://lore.kernel.org/r/20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com

---
Kurt Borja (2):
      dt-bindings: iio: adc: Add TI ADS1018/ADS1118
      iio: adc: Add ti-ads1018 driver

 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    |  82 +++
 MAINTAINERS                                        |   7 +
 drivers/iio/adc/Kconfig                            |  12 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ti-ads1018.c                       | 743 +++++++++++++++++++++
 5 files changed, 845 insertions(+)
---
base-commit: f9e05791642810a0cf6237d39fafd6fec5e0b4bb
change-id: 20251012-ads1x18-0d0779d06690

-- 
 ~ Kurt


