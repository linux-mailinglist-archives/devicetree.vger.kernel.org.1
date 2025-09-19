Return-Path: <devicetree+bounces-219278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C773B89BE5
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:56:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D45516FB05
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 13:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1133312814;
	Fri, 19 Sep 2025 13:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ktD/Nj9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B1330CD8F
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 13:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758290192; cv=none; b=L90mLrVfwNlJDWyCdgsFVq0aLRW+qYEVsrC98yik7FqobMgHf/HQUqQ0lqTyQFby+8pskc6u/URb9LuA/x6JmZ7pYow+wfEoPc9fOK+HRHOlsu6i0bSovMIZ6T79dOHi6b+UvzTOAPQ7xZxt31Amo4PYZIMXcQydC367zNA114I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758290192; c=relaxed/simple;
	bh=3yD5s6iQpt8gmww1Hw5ulogXiK3VTJtqyr1Di45FF4o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FnPbZFVzR6GKNURER1F6d46NNWw7+zYVx7o5ndpnnqOaQmE6dnbHWdy8xRBg1KYKlJX+T/ngE76HlmMi9tK/pEsjyuwncOglBKajxZl06VGc9XJmKA2NqMyp+2g8I3mp+kmh/8Mb+sv/k74mGirekCUIl0VqtxD2eAW4XIJckMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ktD/Nj9d; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso14158105e9.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 06:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758290189; x=1758894989; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UzU98KDEg5q3PSia+gD9BKqdU2Y47Z8eNhtKqtMKJHI=;
        b=ktD/Nj9dBo73BEfMexuLtVyPYBkXpi0w65lU2zMR4iS3dnje8vn/WSCj4Nuf1ol4Y1
         6hvqfoC0a6u2/a8FG39sjmMArLGQQ0kImdEUskkXti3TQJGLAWPXfmqU49Ijf1F7XqjP
         MQdWxLVsEX+T/oeuHjktuMCiN9j6lxZ9Cp5E4EgygTUivnRLS0xQkrlO3GtlEIWyBjYF
         UwQUUulI1rw+oES5l3qbuKxJkj12I4xrKzVpqZUkqcBSIMKMve4pZxiFK0SmjU9m1s0+
         XnIDktJ5JVyd8oFvJrdES2IrFiXpHWmHeCbbms1uKIsWp3fcncGqnpqCkkjFl2L90uz2
         1R1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758290189; x=1758894989;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UzU98KDEg5q3PSia+gD9BKqdU2Y47Z8eNhtKqtMKJHI=;
        b=C4MhSo7383d9caYjgQf6I6pJV4gattMAW3+hADfrU07FzdO8zL8mJ0+ZTy2bt0UZzr
         nM+fT6YznWE7VuMw6R11W40D4teGbn8Zh1t1ztes/TjOz/Ho+NzuEopC+GfwwArsK4u0
         oWIpqQV2pyGwa3KFkcFF221KVvrxcupWq44s28WopNm9x4TSoh+BR9otwbZvYr55oKQ6
         48l7POKi10mDOG1UGVi9h6VQb3dj+V/eyGJLiOORIs1VmZkvc5h0+o1jpkcyIwNX4Ryv
         Oc79Gnn/O8pCxMWB+MqAxTcMU8S9v6njChf7iN5uu6uu0wJuUOIXpQq6fd3qWI0sY476
         wfzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpLa9trNuIzYV/WEmuzJWUuP7C4yJarpQ8yCmSVG7aSpHXjDiEuhDSJpbnP09UWMh9de/PYXYob0Zq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk238Tj229esdAA/xgdmOYpiTM+BivzCfloM5Gx51w/5O+iBXk
	Q1nIkSM3qMhYXl9QKX9SwyqyV9R6bio+O2+SYoTwuV3eSPR+j9PXD5Xjm0MYRZBNTmo=
X-Gm-Gg: ASbGncvql1AwMvL5p+Ngws2uXkZ84u7mQKIze9LV2OrXzBcvCqi+TFn5vfLcM1hft4b
	nQOL2vEGPWI/Nmef9i5rso3LHFNaUyt2XAOnBgHTU0/J02WeUD6nvafMgsLgEN+xbpdUaTj6Wo5
	XLFbsJJr8PHnGCNbO9J1lbGRWf1oVbM+wcQZxAbL8GdA7zpjl4STLLPYvkGUWH0p4vXKG2tKYYk
	dynXyAFLtyb0mP446LtzdHWkawdD7GRcODabteRVyo80vN1MzxY+l6fJVjNoGLFnlWUftcoZnst
	/qSNaGBkb9D2ZDyWUZVyj45QOD3AqgquSSy9rYEK2T583WfbhZHVhZPf0Pd7xcTTlOMpiHNw+oK
	AF2P9vnOvenoR3+hZd5oPY205CRUBtx+e8IC+E4HHh6o=
X-Google-Smtp-Source: AGHT+IESmxxI+eSgmE+/tcz2zUxF2KRPYblK1wrRrADGBovoitxj+uzYw8q4YodhSmp3eJmv1Q+Jlg==
X-Received: by 2002:a05:600c:c48e:b0:45d:f88f:9304 with SMTP id 5b1f17b1804b1-467ebbbfff4mr35278245e9.30.1758290188977;
        Fri, 19 Sep 2025 06:56:28 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8ffd:205a:6719:49c1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4613d14d212sm144913025e9.12.2025.09.19.06.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 06:56:28 -0700 (PDT)
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
Subject: [PATCH v4 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Fri, 19 Sep 2025 15:56:16 +0200
Message-ID: <20250919135618.3065608-1-daniel.lezcano@linaro.org>
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
 drivers/iio/adc/nxp-sar-adc.c                 | 1021 +++++++++++++++++
 4 files changed, 1097 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


