Return-Path: <devicetree+bounces-239973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 15137C6BA41
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A33093678AC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 20:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 956D62F0C45;
	Tue, 18 Nov 2025 20:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ksvDlpGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA35370313
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 20:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763497994; cv=none; b=oLt2mb19yEZLbGgC9I7v81n4fAq/AzyiIhJ/oAryCojuIv/Fl3gXARjf8BWaE0M28ekDOKqOepKyYpHJ13UGIQ9uW6GSbw2RwzJpQoMLqc2XnvN73JufK/4GiIWxOj7254hYKLejUenTj3R6nC4ZYGxSubxBfg7Nh3ge6V3k/RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763497994; c=relaxed/simple;
	bh=yljWoAcG5IkbRHmRnbvGG2eI73GQvwqe3YhwrWXFYmk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GfuiLCtptQZOddYPnBnWE2wQm3vqwvaYX63KYrlOaMMR20jOciD280fm8QUHFMsxnkjpmXTY+1rEV4zX59G1iDKjHMz4BAflwXbqLPPSW8mcFb9RMwOS9r990EMC95VOIenTlKHU87rkqKIchB1pGM8e9qO/i2U950iivenU8MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ksvDlpGz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so60321735e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763497990; x=1764102790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b6hQN/fjeqLIuFrSTHdt9MWmlCrRyVyGjWaJav0gqPM=;
        b=ksvDlpGzCBwE8V6pJb8XEdTsmBQll6O7AO+Qj3Uywx7TBsaCY900k2LZVQ9U3xSb7z
         ij0ifwzstu8GpwfmqwrRYEhj+8jNnrIEtDSHVZHOGtrXSiB4bSDdQKCBtaqAGaUquoCd
         mmzS5F1miy0UOpSnVLpkuSP/fHo3bZ84ENQa8UUK8zybeU8767OEfDN6V+1SxU/0CwsF
         2NcRhWobcW26fD70bXDcZ4CpVtD1JtzbKKHm+H1/YKiiZhHSu3EJTxuf/LCYD9S0VAE+
         gbOTBnLV2gP/5S70cGA95QYCAvjaKlwa9lBv54x8KAciou7d3iYRNLW0PqwKrxJcjJHE
         5Tiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763497990; x=1764102790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6hQN/fjeqLIuFrSTHdt9MWmlCrRyVyGjWaJav0gqPM=;
        b=Ch8/cTRi5WZIdSM2wrYILYV+V6SKcsFXl213QKkwIMpfk6sgkprbx/immrFSe0LAwU
         VsVm33pWeiQyNiVOvc26K+tMCXc3PQ12eZwQEW8QNqKG5jFrVO94mfA/Qp4Y3DJD7g/0
         wROwy4g1s3WTNrvIaZwZQEioPpl9jyvbwTKTk3SnHj1+W80pYjW71w5vIWUp1aaK5mLg
         vQsvpblst8D6lYxFfRiAJrYtA/pqWJrwvzPY9oVXNoiVCH+0pSYSlCiGRf6TrGAy6T4v
         TG7ATJZt86OFA6DhC+w2bUXAVOAOtZjpL2AunkWKHADqiyYd3rk8iJG1eqEGm5tKjgGA
         u69g==
X-Forwarded-Encrypted: i=1; AJvYcCWJ9HLzcvVfXgnqRUVecb9AGrKosvomRhysFg6btUlaLOg2tKzhaH3zKZtz8US+2wiyvJlefxOMPMrn@vger.kernel.org
X-Gm-Message-State: AOJu0YxZzaAfj1QkiHHCDq0iC/P4JtDasCYl2PdSwhXbhYVr5RZh50qg
	LO3wdCQdVcXjgstN4lpMLaDQE9lj+SJxoYKFg2noSlXAke3KazgU8c5gRfVphcRfBmI=
X-Gm-Gg: ASbGncs4tlAmgBk5U67mhd45/oyGl5s8y0me4/nOb2UWBgKrbBZOzpB9BD3/c520I90
	W9EG5sxR/G5El6DRLOOZ+x89qslrOROWgM4EAbO0P6/cCIQRk8woRg0rES6wvEuuPEoAfI9K6op
	F9+4s3+wp1vPp3XMp5LBo1Okd56xwldgjnqM9PaLEL63ZdokItsBIcK4KI5CzA5PsRKh8CSP15k
	sMvEdpgb2c7rMmVA+0bCvdE6tAn5YtL+PT+7iF1XL5Zbl/L9vL7G80Rh7pX2fzyd841WIBOBGqA
	sV62DfYcvmiScUZKoQAHVgiZUtTeMyEIGtln4UJ1tPLPyDyaFLRF5RUG0PUANse4QcGpF+FBcl1
	zZ0CkgPRcAMHeTX+yCzfCTUYxl3gScYxh1m7Unhc9mTCaAWmEgRkARphFG1XHEPQB9xQoVyHngK
	gQRbGip9ilkHI9TiEvuA2fTHX47/uSAa4=
X-Google-Smtp-Source: AGHT+IFV+l1p/JM+xI+WrV9liWFTlq+vDk4DBdUHL+wCXviM2Zbyd/LGrB6EOwbksBaj4V5oLErQog==
X-Received: by 2002:a05:600c:3b19:b0:471:989:9d7b with SMTP id 5b1f17b1804b1-4778fe95fe2mr172428665e9.21.1763497989694;
        Tue, 18 Nov 2025 12:33:09 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:3006:e9fd:4de4:66f6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10260adsm8397875e9.7.2025.11.18.12.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 12:33:09 -0800 (PST)
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
Subject: [PATCH v6 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Tue, 18 Nov 2025 21:33:03 +0100
Message-ID: <20251118203305.3834987-1-daniel.lezcano@linaro.org>
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
 drivers/iio/adc/nxp-sar-adc.c                 | 1016 +++++++++++++++++
 4 files changed, 1092 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


