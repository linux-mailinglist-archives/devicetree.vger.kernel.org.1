Return-Path: <devicetree+bounces-215532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AF6B51CAF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E62011690DC
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6555732ED4C;
	Wed, 10 Sep 2025 15:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wae7y6si"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C67327A19
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519893; cv=none; b=ikJC1QTV2xJu8oIY5kEqG5ehOM0Ww/Q+f1mRhbdCWxIy0xEDYOMuHb+ixiKGLCDBnRCtk/ZZVSAArU9JsQvsajPA1AtTVF4C5dc/ev3rcF9vCogsu69WS/M3o1qO8h7jkpqvxZYCOO5CT42CtywasyEq1qS/PJAqcTnkkQlyQDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519893; c=relaxed/simple;
	bh=0OXy0pIlk1rrTtpMa3bUiDD9A6fnxy7GK4ztvEBXy6E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d33EOO4XdFoALDfAby5ZET85yIKIoN2n1FYnmoThvrIRzH7X4qBxjM8Ucdbccl7SD18VZySjTgjT+kuJjxq5wC19BzM9PiYekbcMwUZ+8H8pLVf8yg/LaEWNR6f6+EKZ6ivFbKGUSSCcvqsX04NBOljOPqxOrKJ7wk5eFIT2MuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wae7y6si; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3df2f4aedc7so3982911f8f.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757519889; x=1758124689; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aJ6CTb9QgukTBV6bS9gxx7JwKyJl+T8wYIdJWg2p/8g=;
        b=wae7y6si1VBXkptU5+3lrvpOAFWKnRnsgnzI9bC7CTWms/wbYzebfs0OGaId6vbFM2
         Genj9Nv5rFGhBfJqA9KPOWAgWDlHdl5YD7AY6YGpnVe817DqJlJ88u5YdtAnkQCJepQ7
         dLDJqinLSS+tUBU8oL/kBomRV7caxRJ0H6QQSnZPpKK7lDZFHB9M3e3GY1TVs2je6PJn
         a1SikCox5MKCnd6giCjcwFkyxCzqgVwksqH80/B8t2Jh+Lrnxcp9SgAKxx+48ycw062V
         pUHEYRkiNwbE4mNIPoGnJS/jRxTGV+ysXKD9ym+GO9nrwtquYuOMxEsIDeW5QAGshyzy
         PbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757519889; x=1758124689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aJ6CTb9QgukTBV6bS9gxx7JwKyJl+T8wYIdJWg2p/8g=;
        b=TsnX8RBXmK77RRypl8fRqzg8Lp+5332ZUcNw3WOod1u1h7j1j9ymclS5iXx3EGM217
         Thy4HE/VeI5PfnsrM/ZKnpgLO8AXCUoIPbwZ33TapMRKSh2yDFEwqGQ/5PjS81ootnpi
         k7KyM6QvfmD/l57CpogZOHp05XOV4kVrUZcNY/vxHlPoe0FJWT0TN9asAF1xiHweYTO4
         lXPbR2/njYGx4Pi9IN82YHcO1H20HmLxxRsZaeqJ5tPvrOujaTIJW36629gZTPyEUMXc
         4+AGk+vf0vbwoVIeEctOFHH3BUpQzrHNLzpQghacF86sdCNplT3G4Yl6Vk7PfHdNknXy
         k/dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpX+8wwqv3UPQRz9tAfj7fewy8WOKEsE3Fk0KQUWrqmVINcyLS98QM34+xRXZOYqLzomwsi1bDkzlT@vger.kernel.org
X-Gm-Message-State: AOJu0YxdLYQ/R6YG5We13GZrR/QOceh+J0r3htHQOkL88Ycsdp1Oiiwr
	fjXNsk8p6aJjmMvz4AHvb1Q4okhlQntL/pSRDg9eqUY8ygwDC7JRIZt/8EZL/bHLhYk=
X-Gm-Gg: ASbGnctN/BglDvWS9iZ3JTsNldXxhw/MTxKAyLwHRbXhDKC/we4si5eO9XvZVV/H9Ro
	AOdhRZIScdbeNEZohQgCnf9Udh1qi80YkrFR90Fgik5BvJc6TYcwNIhY4gT2DgIP257eOE+QbAa
	n+5Kop2L2rmddtnMhU2kQLkoaoYpqApW3az2ZYb+1XGKnxc4UDsM8B0Fdq+rSb6wTJbzfc9OZmO
	81Jur2ifjjYkP9IMawzarR5UstVbZRH4Ik+25hClz+e/F7MnXHKho2fTX/yhNCOCOLprMT8y6kF
	WdzctPssTT4JDPaMXQmcJ2siGKqER6wpSDdOGkMtm05DSXDRS9VMsEtWIEUsf34MYXoOXYA5EJo
	8Zix9b8gfKzQCxZERgp7wAM5JmtPLi7CHJlXzDhe8f/Q=
X-Google-Smtp-Source: AGHT+IGxtk8aUU60lUW/tWlArM0SdaxDZo6GGAqsTWAWeM6Yie0aGFijwOZEXm4dntS9JpH0TcFNHA==
X-Received: by 2002:a05:6000:24c1:b0:3e2:ac0:8c55 with SMTP id ffacd0b85a97d-3e643c1a48cmr13871860f8f.55.1757519889267;
        Wed, 10 Sep 2025 08:58:09 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:9717:723a:79cf:4f4a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75223ea3csm7490325f8f.49.2025.09.10.08.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:58:08 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	s32@nxp.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com
Subject: [PATCH v2 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Wed, 10 Sep 2025 17:57:54 +0200
Message-ID: <20250910155759.75380-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S32G2 and S32G3 platforms have a couple of successive
approximation register (SAR) ADCs with eight channels and 12-bit
resolution. These changes provide the driver support for these ADCs
and the bindings describing them.

The driver is derived from the BSP driver version. It has been partly
rewritten to conform to upstream criteria.

https://github.com/nxp-auto-linux/linux/blob/release/bsp44.0-6.6.85-rt/drivers/iio/adc/s32cc_adc.c

After the V1 posting there were some discussions around the DMA code
to be converted to use the IIO DMA API [1]. Unfortunately this one is
not yet fully implemented and merged in the framework to support the
cyclic DMA. The current DMA code in the driver has been used in
production since several years and even if I agree it can be improved
with a dedicated IIO DMA API in the future, IMO, it sounds reasonable
to keep it as is until the IIO DMA API supporting the cyclic DMA is
merged. I'll be glad to convert the driver code if such an API exists
and allows to remove code inside the driver.

[1] https://lore.kernel.org/all/c30bb4b6328d15a9c213c0fa64b909035dc7bf40.camel@gmail.com/

Changelog:
	* V2:
	  - Massaged the cover letter changelog to explain the DMA
	  ** Andriy Shevchenko **
	  - Added missing headers and use proper header for of.h
	  - Changed macro offset zero to be consistent
	  - Remove macros REG_ADC_MCR_NRSMPL_* as they are unused
	  - Changed delays macro under the form 100000 => 100 * USEC_PER_MSEC
	  - Replaced PAGE_SIZE by a NXP_PAGE_SIZE = SZ_4K macro
	  - Replaced read_poll_timeout() by readl_poll_timeout()
	  - Changed error pattern "error first"
	  - Replaced variable type 'int' to 'unsigned int'
	  - Fixed bug right instead of left shift, use BIT(channel)
	  - Returned directly from switch-case
	  - Used guard(spinlock_irqsave)()
	  - One liner function call
	  - Remove redundant {}
	  - Write default values litterals instead of temporary variables
	  - Changed variable name vref -> vref_mV
	  - Removed unneeded error message
	  - Used dev_err_probe() consistently
	  - Removed successful driver probe message
	  - Removed redundant blank line

	  ** Nuno Sa **
	  - Replaced of_device_get_match_data() by device_get_match_data()
	  - Removed iio_device_unregister() because devm_iio_device_register() is used
	  - Removed "/* sentinel */" comment
	  - Removed CONFIG_PM_SLEEP defiries

	  ** Krzysztof Kozlowski / David Lechner **
	  - Removed clock-names in DT bindings
	  - Fixed minItems by maxItems

	* V1:
	  - Initial post

Daniel Lezcano (2):
  dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
  iio: adc: Add the NXP SAR ADC support for the s32g2/3 platforms

 .../bindings/iio/adc/nxp,s32g2-sar-adc.yaml   |   63 +
 drivers/iio/adc/Kconfig                       |   13 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/nxp-sar-adc.c                 | 1026 +++++++++++++++++
 4 files changed, 1103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


