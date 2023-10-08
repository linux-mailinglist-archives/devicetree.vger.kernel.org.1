Return-Path: <devicetree+bounces-6815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 863CE7BCF2C
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 17:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56B0D1C20404
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8DA11710;
	Sun,  8 Oct 2023 15:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="VQSd2VAM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542C8849C
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 15:49:25 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6DCE4
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 08:49:24 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-693375d2028so3379357b3a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 08:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1696780164; x=1697384964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iYS7MoI1k63KbmrP+8M3lV9Unyrhs9AyXw7eoZbGO5A=;
        b=VQSd2VAMQ4OLLju74rtpI53LgEolhNRfRC9SzNLJvW1jBDCCyusQGtn+qbWV9GvKcv
         dsDoTyXebOUd8AXRVolm4hDcM2ZpX/UY/Up5MEplSAUr15zrUFrqYw2V/IpjO28MHhw+
         EVDy+xWBMi4mmihT8ShX5Sqx70ZZtmmSNEQadfvVDq5grRxywR6dlYHMTMsihD2QFoFl
         f78XwCvNRqzMhQSyp1uGDPCz7TxwAdJQcWnbXrn4SZvtx3J8QaYNjyMkP4BG7QSsz2Sd
         phc1q5uci2rE/pO05tZf0AArbD1MwnhL69IkNfOSHGK351AttJ/Q2tKGBDGv/AtRsIat
         hOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696780164; x=1697384964;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYS7MoI1k63KbmrP+8M3lV9Unyrhs9AyXw7eoZbGO5A=;
        b=NpzPmVGshqkuE060PFHTzHcE/KQwXKjTPzee8ilfAwzZv+wiWKigK8SXFlm6u9dZ83
         LraR0/karJ3QIDuRtYo2skAxGinr7rewVSGrHvhb//fL6Om4wyMru+btC9sAyTdDYfyk
         EbQglPJJ9cZvTRzuwpVD3xHEJhEbghXNUCkp0u/ypSCrxrm/ArJHEhu2D5Uur3LbUUt0
         LjbK16ES7FyByCFeBIEufw42rcCBbmRfp0HA5HTlBOEVxqsDLG55CTe899fUz2sg20nY
         J+ArgvRSKxhSn5+1u2mpBjH4a0dT1Zu9ijPkco2h5GAOzccBjA9hJBM5rmEgXiFLaLHU
         jQhg==
X-Gm-Message-State: AOJu0YwzykGNMeLm4OUmbyjiKVlTeSjnWllUSIIEvtn9OgzoVStHE28s
	GC/amPS0O4dmFRL/LETc8AyBtg==
X-Google-Smtp-Source: AGHT+IHBv1uJ2T2O11O5qVuv7fnj23BaWdObu5H/htxUpBcnMUZF1bgx2GW4f4nfVClcU6si0B1x7Q==
X-Received: by 2002:a05:6a00:14c8:b0:68f:dcc1:4bef with SMTP id w8-20020a056a0014c800b0068fdcc14befmr18442498pfu.7.1696780163627;
        Sun, 08 Oct 2023 08:49:23 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-65d1-409f-dd8-4287.ip6.aussiebb.net. [2403:580d:82f4:0:65d1:409f:dd8:4287])
        by smtp.gmail.com with ESMTPSA id n26-20020aa7905a000000b0068fc48fcaa8sm4723374pfo.155.2023.10.08.08.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 08:49:23 -0700 (PDT)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Paul Gazzillo <paul@pgazz.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: [PATCH 0/2] Support for Avago APDS9306 Ambient Light Sensor
Date: Mon,  9 Oct 2023 02:18:55 +1030
Message-Id: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series adds support for Avago (Broadcom) APDS9306 Ambient Light
Sensor.

Datasheet: https://docs.broadcom.com/doc/AV02-4755EN

Following features are supported:
- I2C interface
- 2 channels - als and clear
- Raw data for als and clear channels
- Pocessed data (Lux) values for als channel
- Up to 20 bit resolution
- 20 bit data register for each channel
- Common Configurable items for both channels
    - Integration Time
    - Measurement Frequency
    - Scale
- High and Low threshold interrupts for each channel

- Selection of interrupt channels - als or clear
- Selection of interrupt mode - threshold or adaptive
- Level selection for adaptive threshold interrupts
- Persistence (Period) level selection for interrupts

Link: https://lore.kernel.org/all/20230411011203.5013-1-subhajit.ghosh@tweaklogic.com/
Link: https://patchwork.kernel.org/project/linux-iio/cover/20230411011203.5013-1-subhajit.ghosh@tweaklogic.com/

Sysfs structure:
root@stm32mp1:~# tree -I 'dev|name|of_node|power|subsystem|uevent' \
> /sys/bus/iio/devices/iio:device0/
/sys/bus/iio/devices/iio:device0/
|-- events
|   |-- in_illuminance_thresh_either_en
|   |-- in_intensity_clear_thresh_either_en
|   |-- thresh_adaptive_either_en
|   |-- thresh_adaptive_either_value
|   |-- thresh_adaptive_either_values_available
|   |-- thresh_either_period
|   |-- thresh_either_period_available
|   |-- thresh_falling_value
|   `-- thresh_rising_value
|-- in_illuminance_input
|-- in_illuminance_raw
|-- in_intensity_clear_raw
|-- integration_time
|-- integration_time_available
|-- sampling_frequency
|-- sampling_frequency_available
|-- scale
|-- scale_available
`-- waiting_for_supplier

RFC -> v0
 - DT binding review by Rob and Krzysztof:
  - Verified with dt_binding_check
  - Removed the last/redundant "bindings" word

 - Review by Andy:
  - Dropped blank line and reordered initial comments
  - Sorted header files
  - Added kernel-doc for the private structure
  - Removed regmap internal lock
  - Used regmap_read_poll_timeout() function instead of while loop
    in apds9306_read_data()
  - Applied fixes as per review

 - Review by Jonathan:
  - Updated apds9306_read_data() and apds9306_irq_handler() as per
    review. If interrupts are enabled together with userspace read
    of raw and processed adc values, then events can be pushed both
    by the interrupt handler and apds9306_read_data(). If the
    interrupt handler gets a data ready for read flag then it sets
    a flag in the private data structure which is used by 
    apds9306_read_data().
  - ABI update - In events, per cnannel enable for both
    channels, removing custom sysfs attributes for channel selection.
  - Added lux calculation. Page 4 of the datasheet has test results
    for only the default integration time at the default hardware gain.
    Normalized the values for all hardware gains and all supported
    integration times as per the part ID. I got consistent results
    when compared with a lux meter in the default range.
  - Other fixes as commented
  - Implemented IIO_GTS_HELPER
  - Shuffled functions for logical split and readability

Apologies for this huge delay in submitting this patch from RFC to v0.
I had a change of job and subsequent relocation.
Future revisions will not be delayed.

Subhajit Ghosh (2):
  dt-bindings: iio: light: Avago APDS9306
  iio: light: Add support for APDS9306 Light Sensor

 .../bindings/iio/light/avago,apds9306.yaml    |   49 +
 drivers/iio/light/Kconfig                     |   12 +
 drivers/iio/light/Makefile                    |    1 +
 drivers/iio/light/apds9306.c                  | 1381 +++++++++++++++++
 4 files changed, 1443 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
 create mode 100644 drivers/iio/light/apds9306.c


base-commit: b9ddbb0cde2adcedda26045cc58f31316a492215
-- 
2.34.1


