Return-Path: <devicetree+bounces-242893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAA2C90C87
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 04:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D3613A8609
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 03:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629952D594B;
	Fri, 28 Nov 2025 03:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ph5Qw1Bo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA4E27B324
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764301050; cv=none; b=r07DKVQcaoW0gzJw55zysSMOpdhl7TC9DruNBQjkmaLgGfYDPXX6dFXMBm4smiVEnS6OgY4qJijq0SgksvENQIL6tIf0q20kKlpWCMl4dSg39oGvKi7EQhw9VmSUz3rNUEyvJfjNOuNKL004K+PEJj2XaDGO2opKB7k8Vgz436Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764301050; c=relaxed/simple;
	bh=V5iOOlNuMfmgIjeAxadZc2xd+oV6bLx3zUaQtyWg6T0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aOCS6GqJ+1terdjM7GMJRo7Rm25aza6sPybJ2hqPGLE5UTtxJQncsVTnvdX0etxeGnuXdyY+Smljjp2vieBTvEhY4TvFCw7xh6vrrz+WNuGgRFeOrozSe+/yl1FC8dEp5U0dLklPzaKDd9nK9F3oyK58NFqqSf3XjgKVFKcy/XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ph5Qw1Bo; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9372634aca2so383609241.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 19:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764301047; x=1764905847; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P3yYxVlXjQpAYVmn1yZeDARt+Kd7Sj2iOkrz+byPjis=;
        b=Ph5Qw1Bo6/af3TsPnNwA632AZZXvpWdgBkdAm3U11Dx1In38Af+KQN3pKG6/CUTV+1
         dT9M94PAEGrBQ1M3UCZL4YTxov0Zvycq3HqnpcTQs4R3rsc3tpQfNXi+7ybP3SKROJ7r
         080GhzLJqPQWxBpDAnnw3z8/LIL8XFBEkQsM7+c8mTlPzEzUls4zcjx7tgYZxC8R7uXV
         vyNlKqRSRutS3tDr3+/Y8QgoMZPNIELUKMWMGbLBPyJuqzfESVotpVY/42oO8iBR2FRa
         UMlgc+EtBVjJVWlPN0JByQG2JqObAFNtwl8EGPjEMbJ+BbE6qQ1u5tBfHtbpfFAR/Tt7
         Oh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764301047; x=1764905847;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3yYxVlXjQpAYVmn1yZeDARt+Kd7Sj2iOkrz+byPjis=;
        b=MumoOumjF/NrCXiwd4XY+hEqq0fNjwZBpKLvQT6UkK4CTClLXkm7asMzXo2fCtnWd8
         +bH87N8DBPS5F+bmoF17HtAImzeXi3GbttejvNQKyR8gNbaApLme1deN6e8DVFxPK3e1
         rzK0Eqf1f6ZBhFfPIy7/45xJiYGtwEUAwrNTe02i6xuV7CvPdP3rUUpCzSd6ds/QTh7/
         9JhrnNWDdxYqXcpHHOEvVN7RxIAfebgBcS+rBhexc/ExmNUhn9PN+RhWMj+o4xYBGnZ+
         J+A1d9jH9wJv4Xi+eTgaDh3vq8rH0DrlF8JO/U7e0q5wAUn76auMV+utCPTdf/V8bTO4
         oUuw==
X-Forwarded-Encrypted: i=1; AJvYcCU7JgBYWZtIpNL4cKsKiaxwFeYAbGxprc1OZozUXaC4iSuNq41OKINnbjIHmqUKgc7eJBRG04uvT51N@vger.kernel.org
X-Gm-Message-State: AOJu0YxIi8LgOdyf2Gw1+oJRUY1NdZP0/hzD+ofR/ORIZX28pY8NKz2C
	Plfr0sqUaxL+TPJeRAnaefcs+xhp9NY8SHFjEfzeooPuORc5ud3K7y8y
X-Gm-Gg: ASbGncuaiSZ2Du3m5ezUWjDJjr9yObsEWZqFoWSCaFPU7x5EAUbhvL4YN53DfmtyGxp
	YpQde6xbJcxIstvOk2fu1VJArLimg95dwUKF1/gidAjpwbDw4o4Lk64fDO+HetAqq9RqeKw2S4K
	/57ZcGkathbpbt/CM5gtMqQY7zd+AU7uK68ptRyFw+Rz0VfphcwxMF7k0Xa7EtHLYjqhGftVK2y
	8vfbRw5cutg0pZSXolY/NUUamUNHdEB3CALVF+teiU2l85a3As+4royDzlVgLM2rzT/+HIeQOcW
	aPTkFmJXwgGBPe5Y45AmcY9IUkJtKL1zSJSzhnVzCqliiNHI5Agjt6jBGDnD88p15gTEOMa+Syl
	uhb5Fy7wtIA4iSlC0EWKP2ZWMX5qy0dthcU3gWJbW4BQ0nh8wUTrt5/CJ1GSUVheJ4/cDVCqJO2
	5HW6flrT7uN6rH
X-Google-Smtp-Source: AGHT+IF/M+qcXryFQZVFAKx8VIF/OdADcKPRswi6KLOIA8QaeDqW0eXZ3Fw8VA/hKd02wdjtvJWKlw==
X-Received: by 2002:a05:6102:3a06:b0:5de:31b1:2011 with SMTP id ada2fe7eead31-5e1de1666b9mr8275069137.17.1764301047486;
        Thu, 27 Nov 2025 19:37:27 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d94f2d2sm1170483137.8.2025.11.27.19.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 19:37:27 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Subject: [PATCH v2 0/2] iio: Add support for TI ADS1X18 ADCs
Date: Thu, 27 Nov 2025 22:37:09 -0500
Message-Id: <20251127-ads1x18-v2-0-2ebfd780b633@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOUYKWkC/z3MQQrCMBCF4auUWRuZCZomrryHdBGTtB2wrSQSK
 iV3N1Zw+T8e3wYpRA4JLs0GMWROvMw15KEBN9p5CIJ9bZAoz4QkhfWJVtICPbat8aiUQajvZww
 9r7t062qPnF5LfO9wpu/6M0jS38gkUGjl76ixd8aersNk+XF0ywRdKeUD+4lWQZ4AAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2897; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=V5iOOlNuMfmgIjeAxadZc2xd+oV6bLx3zUaQtyWg6T0=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJmaEq+EvrIciJBt+mLydIbMwksrX0uGmK40uXIsfr9ee
 SdbgwpHRykLgxgXg6yYIkt7wqJvj6Ly3vodCL0PM4eVCWQIAxenAEwkwZ+RoTftoOSyM67LKlkf
 Ha4pWtLgPZl1idS8AK8wn/DJ+V/lSxn+p86yVJNy3DFFZ7aWtV/qkxpPZ88rk/+vOr/i0Irc55f
 +sQIA
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
Kurt Borja (2):
      dt-bindings: iio: adc: Add TI ADS1018/ADS1118
      iio: adc: Add ti-ads1018 driver

 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    |  93 +++
 MAINTAINERS                                        |   7 +
 drivers/iio/adc/Kconfig                            |  12 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ti-ads1018.c                       | 716 +++++++++++++++++++++
 5 files changed, 829 insertions(+)
---
base-commit: f9e05791642810a0cf6237d39fafd6fec5e0b4bb
change-id: 20251012-ads1x18-0d0779d06690

-- 
 ~ Kurt


