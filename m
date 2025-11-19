Return-Path: <devicetree+bounces-240454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F93C714A4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 23:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 92EB34E1034
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A440A3126B0;
	Wed, 19 Nov 2025 22:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y3Y1PMKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D35721D3D6
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 22:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763591955; cv=none; b=pygjWibUMZ5X32RfZuyo1GFD7fdKO2iJb5PWbHb/NEuKiY9VllBVfdEsG5wlTs59IDvd5SAze6kdg9pHgPgVlq+Ie3txuCx+JsS1MIgDVp062cU/1FKzc/6sDc2d5/5LEGUeJYhwOHoSCk++83wfQ2FqmDj7Xkjuq17+S8z0VdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763591955; c=relaxed/simple;
	bh=qxW/aVcWFy9yYpfSBFwdgiLyeYeDJFfC/PRSKYszLwU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YCcU5CiSe3BjGKo7H87cxMH2iSGtB+AeyixHX0w174q/U5wubxJi9SKz5jM6nPNgOO7gdyANmhjWuWuCB2TPHzZ5n27msT5AusCI/yBphbT2Rlu3SlCjnYFXen+TFsjo1VwQphVJpJ3u0hEiouA3BKYrNvlAQZvWgF94UqXb2UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y3Y1PMKN; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42bb288c1bfso142945f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763591952; x=1764196752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rO3jG86F0dMbqPDGuzv70vuhyM6PVQCQjUR/rmasITE=;
        b=y3Y1PMKNtYuRnspb6KhkUnemOA1hce3RoA+XU2P5xLWRRIHE0uV5W/m1gQvdLl7qaA
         BNKe47mSpAQ3ppl0mwBrNcINSvQo1NW3bS5TD5uU5SWrh8JMZkLP/WyPwO4kujxDa/P7
         6PnoCzt423thvoqnd53XKzeWUdpm53e3zVXHekGCODMGlPoOPaagkRJSc2KAhQSvSgc/
         PaXjYU2yZGmjKZa7aLwDHju9u88xCI/DHaRiYJbhRFyWUKdKX0iZZnQXip6xyutwZDhJ
         Q5M5eZ7imKW5x7Mdf7LC//VLVA6R29ApkUZl2o0E0dCKAgPLq5JXUbVG+DzqOat24U9j
         jGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763591952; x=1764196752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rO3jG86F0dMbqPDGuzv70vuhyM6PVQCQjUR/rmasITE=;
        b=RNFAswSCHyoIpIc7SW+zC927bnOVL04JBiNYbgwCQ3SeM1i3W23L4PEH/m2JUrKUG7
         2qTlagdru1MxAhwNP+A8rICB4JPgS9jws2LUSZ/MK8dmHiyZtFxDqHf9BY/kEIiU8CmN
         aNfsU2excVWWwAz7Ria5xBPF7yKHVgx3/hd8A3i6tOt+PKj5r8UQnzg9n8qj8im3oACr
         aGPU+fWtS5xXlnXHbagPB8Qbc1vowBeTjrfbdsbxxhTN+gFNC7Zt3SsL/PWg02OIaP/V
         VNG0EQGm+MBiLKUPOxd+qrYEQaXWvF7Kg7hQtYi1t4c+fDDisDykDdNPPega1yehjQla
         NS1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXeQK1+7OCNGywDW7g+aDzr97yFKzwfbVpOLmup6vFqV/LJ61SYpno4IphCABVcHB95LkCYpu6eEZ0z@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwsjl7Fsp3iNTk1a4129DyI2uSBWEQnw7SYE7S2G54figYafSb
	2wOpY+yu+kQ2tTXVpFAcrvpnLXuglfVhDBmbk2DDolIHPLM/0Iue9m2ZMQFMHMCaUEg=
X-Gm-Gg: ASbGncsUSlXyfO030EF/iuQnA7aYsIVGs7/anOSn7zlq/WR0D8WqB+GU2r0hul73l/e
	/8RAsEIFpgTWQ/iZsayNoE/xeglcyJyt5LmDW4iOnogbQvrldid+0eiUYiLUPHsEd/1Nmtyu03x
	9454DjDnAUk8jYupxAPkBN31tJoxTKcERrwnX9byHdwWTQjK4KNcKBWp91l8rYVqmlxVTMRbMpM
	j2nOGHRAYMaXBZ2KfHD/Lij3hKFDohq7Gx8n30Y3StwLGEg0ThTnjCXELr/hH+tB9RWS3la+y8J
	m2JBZvVTqDwDqgJsYmALHtacQMDkF4sOqgApY1l/hilP9IQqTWm8FIF67FtYpmPlrJJ8ccn6WpY
	D223+TA3EHgObZDwu6yc6mwwmIFrwjcOB2t/x+hg2XIGx89nEcElmpBJtiZNOJy2mSDvugEggr+
	7+62CD2qNzXeACctzOCYFfGm2LqGcj7L8WdAgsGiWEFg==
X-Google-Smtp-Source: AGHT+IGRM3zSZ4y4pE5DaA136Xb1RTTE1W6RdwYcRCI59hdibMyDEFCAIovtcxs2/qZa9kac9Mou5A==
X-Received: by 2002:a05:6000:2681:b0:425:7e45:a4df with SMTP id ffacd0b85a97d-42cb9a204cbmr391626f8f.11.1763591951186;
        Wed, 19 Nov 2025 14:39:11 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa41d2sm1569760f8f.22.2025.11.19.14.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:39:10 -0800 (PST)
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
	ghennadi.procopciuc@oss.nxp.com,
	vkoul@kernel.org
Subject: [PATCH v8 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Wed, 19 Nov 2025 23:39:03 +0100
Message-ID: <20251119223905.107065-1-daniel.lezcano@linaro.org>
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
[2] https://lore.kernel.org/all/aRyBKH4KOQ1L8lA4@black.igk.intel.com/

Changelog:
	* V8:
	  ** Andy Shevchenko **
	  - Fixed a sentence in the changelog
	  - Moved dev_name() to the upper line for a better line length
	  - Unified messages by starting with a capital letter everywhere
	  - Changed 'dma' -> 'DMA'
	  - Used DEFINE_SIMPLE_DEV_PM_OPS() instead of deprecated macros
	  - Fixed pm_ptr() -> pm_sleep_ptr()

	* V7:
	  ** Andy Shevchenko **
	  - Moved paragraph closer to the tags in the changelog
	  - Used Originally-by which is more adequate
	  - Removed unneeded modulo conversion in macro
	  - Fixed the consistency of the style by lowercasing the hexa value
	  - Rename a timeout macro and remove another one
	  - Clarified a comment when getting the power state of the ADC
	  - Added a comment to clarify the clock is fast and suitable in atomic context
	  - Uppercased the 'adc' words
	  - Added a TODO to use field_get() when available
	  - Removed unneeded explicit casting
	  - Replaced a more readable version with raw ? 0 : 1
	  - Folded return value check with wait_for_completion_interruptible()
	  - Fixed comment "8 bits" --> "8-bit"
	  - Fixed typo in comment
	  - Fixed comment "iio_push_to_buffers_with_ts()"
	  - Clarified why not using a pointer to a mask
	  - Removed unneeded blank line
	  - Removed duplicate error code in message
	  - Initialized the spin lock before requesting the interrupt
	  - One lined declaration in suspend/resume callbacks
	  - Added trailing comma in structure initialization

	* V6:
	  ** Vinod Koul **
	  - Dynamically allocate/release the channel at enable/disable

	  ** Jonathan Cameron **
	  - Reached out Vinod to clarify the buffer life cycle
	  - Inverted more intuitive variable initialization
	  - Updated comment with "iio_push_to_buffers_with_ts"

	  ** Andy Shevchenko **
	  - Removed unused NXP_SAR_ADC_IIO_BUFF_SZ macro
	  - Removed "<litteral>U" annotation
	  - Checked the buffer is a byte buffer
	  - Investigated callback routine vs residue and updated the changelog
	    the conclusions [2]

	* V5:
	  - Rebased against v6.18-rc1

	  ** Jonathan Cameron **
	  - Replace DRIVER_NAME macro with its literal string
	  - Used FIELD_MODIFY() wherever it is possible
	  - Complied with the 80 chars convention
	  - Combined two variables in a single line declaration
	  - Removed the 'remove' function as it is useless
	  - Changed s32g2_sar_adc_data structure indentation / format

	* V4:
	  ** Christophe Jaillet **
	  - Used dmam_alloc_coherent() instead of dma_alloc_coherent()

	* V3:
	  ** Jonathan Cameron **
	  - Removed specific IIO_SYSFS_TRIGGER dependency in Kconfig
	  - Fixed headers
	  - Avoided macro generic names
	  - Used IIO_DECLARE_BUFFER_WITH_TS
	  - Documented buffer and buffer_chan
	  - Fixed single line comment
	  - Commented why channel 32 is the timestamp
	  - Renamed __<prefixed> functions
	  - Factored out the raw read function to prevent nested goto in the switch
	  - Returned -EINVAL instead of break
	  - Removed explict pointer cast
	  - Used iio_push_to_buffers_with_ts variant
	  - Fixed ordering operations in postenable / predisable
	  - Return IRQ_HANDLED even if there is an error in the isr
	  - Fixed devm_add_action_or_reset() to return directly
	  - Used sizeof(*var) instead of sizeof(struct myvar)
	  - Used model name instead of dev_name()
	  - Used dev_err_probe() in any case in the probe function
	  - Fixed indentation

	  ** David Lechner **
	  - Kept alphabetical order in Makefile
	  - Changed explicit GPL-2.0-only
	  - Removed clock name in when calling devm_clk_get_enabled()

	  ** Andriy Shevchenko **
	  - Fixed headers ordering and added the missing ones
	  - Fixed constant numeric format
	  - Ran pahole and consolidated the nxp_sar_adc structure
	  - Fixed semi-column in comments and typos
	  - Fixed indentation
	  - Moved data assignment before iio_dev allocation

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
 drivers/iio/adc/Kconfig                       |   12 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/nxp-sar-adc.c                 | 1017 +++++++++++++++++
 4 files changed, 1093 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


