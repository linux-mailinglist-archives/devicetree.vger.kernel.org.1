Return-Path: <devicetree+bounces-218071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B83DB5A333
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 22:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D164D1C0665B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 20:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8908323F73;
	Tue, 16 Sep 2025 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RfS0ov0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8939E323F5E
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 20:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758054383; cv=none; b=edZPe/EDW+IR1Y8pFFo9Zcio31OWu7kZ0QGoj/3F18BvmEk5puKqrCLJGm4DLRw3lU3uWP/xhIPK5f6Gzm38zP3HsZp59P3yDIj7TxxFneDaAwWbuE3/yT+4cxVvHUM7JHp6+1UMuaHhcnC4t+0rgGx/Cs3oZw6nt+8t+t/TPAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758054383; c=relaxed/simple;
	bh=TnX3QqynB7SABTcRQnlYsIMzt6xU6DCgMXtCFBYgXog=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dl5lUaXq4SkbCcOIgkE6kPVAQtDsyryl5mku+6M8MTwTFWOZ4kMEEGH2Xz5zgYjKB5ZI/dawXrnhwxiehG5NCV3WEHtaUmw0NMe3jqwvWZ8mNoK+W/r7rFllbIus90gPYS+XhomcMqxtFboq/mxiTus1nM3YfXGT2mlkDuTz/l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RfS0ov0C; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3e9ca387425so2359849f8f.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758054380; x=1758659180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Ss7vTFYmTGRLGltVaBOsf2g8zpLsnrTEYq9dBHTTgk=;
        b=RfS0ov0C9ZvH3j0gnpIHWbN5cTlPicbLjuxYGqs9CsfRC2JtbyflK/1sZUD831Xyir
         6z4pUlh1bM8aTp2tJ4piK58qepyynjEhtjg9h0AWsiRXAlHl7Ykiqg8Nvew50sFK+7Oq
         MDwOsqa1+vKTHFZw0aAZYEY5RfZjDeiHlA+26WAQ6MUw7RHKdbuyicy7bZ9Gmh8BQvee
         t5CnGJzzGyfWE+h+p1ccvgiQRMDu9S11hnWBG1dzSm6FRAHcvZsmc7V1LH5DRWOW48Ma
         49Cx+DPKteEXqwokyldQHGdh0dJeGGChkIN9G0ln9I2t8oWba6vnd+1VKHMd3U+rXaYJ
         SpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758054380; x=1758659180;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Ss7vTFYmTGRLGltVaBOsf2g8zpLsnrTEYq9dBHTTgk=;
        b=liJV7GTRDfpvI/9kHjMfPaxR9AwMWksthVnOfQAWfAn3gN5V5bhtdPi8KqvZlczKII
         rxD+BWFGO6EmwHgxXdWjAO5VDweTdfaI1NzXZ0bvo9Nzp8MKanZeVT+AuAMgJpIY6UC6
         OT/Fq6IP+PjtPbkgsqSYpUpC1D3DjWDaD1DieDAqbavfsjXL++OJRiJs6HDkrwJUguOz
         OYEDzh1Ta2SfvGnNvOLnmwKjtLj0tzMybhDg3H7ESf41r1rp9+ZCqkC7b7dPQ5+nfABy
         E1PDtCsyZ68RlXmM8VS8ADWJE9mJKCMU6uxfYb7zrz//dnFa0HZMffyqUUfw0EKqE+p5
         e7Wg==
X-Forwarded-Encrypted: i=1; AJvYcCV9rg2RFtO9hfE8JVqoxnp5/dO1rDdisE8QtMQpz71sB4UiG9LFmF5gUinM4Haqihf9Ua6Op3RdMxd6@vger.kernel.org
X-Gm-Message-State: AOJu0YzF3FJ8uuoiFvj6WQl3WtxhkLrf4VQ9c8aup+kMd8+QsrH17kSx
	bNxbATjwdbtpLjTNEkGaeL6D6dIJOQU5C6k+0ibZP5wdY95woibfnqafbsHhuK1wWao=
X-Gm-Gg: ASbGncudaEPDmoBbaweHWqkmF1E52k69mlB4vapjm61ZG3a6N/vTEk/paoeTTQJIq8U
	d9OOFG4wKXhJRVPFKLmr23BEuk/QIfoFuLWtKIwF+UCdAnJxoPT2se24uDSECHuHCki/dKt2NHE
	VluizgeC48atRWefgk1OJd7ZjpxGx71Mu15sEcDhylJZzUpxK0oUkcNbYuWCd3e3dr0gTHNu2J0
	rkE69+zuXvEwn2U0EGTik2VltQDIeD1bNWUd/GQOmSNZ8EUWF5ZxCRVIbHlP0q2wXliQ9ZFbVGa
	SNUt/zq+lmnHltCGOZAVDc0poJZXoyFT/syMkOU8Vr7ThOw5+vEdf9Yh970Q9uPjoZLOfkaZRz3
	bppr3xCTp5AiKxjNUXT4R1mQ9iUSP95YuEVP0Eug1Ndo=
X-Google-Smtp-Source: AGHT+IFXRabDOszQuzrBadWwB1MwAuMU04Nvzt288C8ZUD3SwwyHg8tDFYbluSf8uC7HC8Fk/LAFjw==
X-Received: by 2002:a05:6000:2010:b0:3ea:a8a:546d with SMTP id ffacd0b85a97d-3ea0a8a62f7mr7621006f8f.49.1758054379809;
        Tue, 16 Sep 2025 13:26:19 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7e645d1fcsm17590766f8f.48.2025.09.16.13.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 13:26:19 -0700 (PDT)
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
Subject: [PATCH v3 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
Date: Tue, 16 Sep 2025 22:26:03 +0200
Message-ID: <20250916202605.2152129-1-daniel.lezcano@linaro.org>
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
 drivers/iio/adc/nxp-sar-adc.c                 | 1029 +++++++++++++++++
 4 files changed, 1105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
 create mode 100644 drivers/iio/adc/nxp-sar-adc.c

-- 
2.43.0


