Return-Path: <devicetree+bounces-12197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A4E7D84D9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:35:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F0C02820A0
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D4328DC3;
	Thu, 26 Oct 2023 14:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="T4uK32Sv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42EF2EAEA
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:35:46 +0000 (UTC)
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE056128
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:35:44 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-565e54cb93aso798703a12.3
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698330944; x=1698935744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x6fcPIoP7TVmQOJVPPgogOEp5U2VXZnIM6xw7cT4MQ8=;
        b=T4uK32Sv/SmHZgOdmKRjHJvXIG2qXJNy9VkA7TramYzk5xbgzWdJTfYiBRIQzEJFpF
         KOJVm1kwvmE2Y2JZwi7Vsx9pI26ABbB+f5LneFH9fV3muOHdMOYBVpp5V4p19phdLPEm
         Gk/Na4wEJHzZl15AsaaX1H0zyyDYxGgKyuBa32HK05sowf9pXDkGYKzO7cP4aBPWHnZq
         IwRNUFsOctxEBkePjCR6unsad3vONTWRCQZYlm87N4pR1tuJNWTBsQL30s4dGdNlqx3u
         pNmjrM2JrYHMjsvozD2si1Dh0CI6K5UbElOJjxGlaYLCVO5eHSKpiw45mE8Z2dXoVPiP
         ep6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330944; x=1698935744;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6fcPIoP7TVmQOJVPPgogOEp5U2VXZnIM6xw7cT4MQ8=;
        b=f2P+XZnhdwtgxqdnU77T+8jiY290jQiFHqrnDjKgsFza2vf1L71C3Nnohue56wkOCV
         F5r17PmsGBgmWNuvSdoRiaOHt7zm1fgh9cplC+DUdcGUy5Vc5Sk8QA0uLlE0Gmi7ynMX
         81AppEKmY2wjIGAxnrj2B+jkuYqA0OxwCAuK4RaB0xbomRd6rT08uXyZYqO6e5Sdeq+h
         PnoZxQIgVHQUmpRB3UsYyzQGpbMTLjvT15bcmSy1BHx3xCjmZ4qM1lDE6fvQEE5FvtWR
         geaiX9UnjwtytV+WCJ1gWOLtsI3Jd8frBKNMH3v/wbkKj1kHqMeey3comw1RyPDJThLx
         htJg==
X-Gm-Message-State: AOJu0Yx1qbOEmGp4Z3isnsoLRpP5qTY6a6QrBfIYaaRkzWOVTYyjaMBs
	ziK53YqJOmrrVuyB97ER83D+bQ==
X-Google-Smtp-Source: AGHT+IGfpohH+wgf9zFOcXrPZIEKBo1PNL7rEYU1PHcczxpUdu42YaB/uM5R3t6XvjvBLhZRo6pQlw==
X-Received: by 2002:a17:90a:1917:b0:27d:b4a4:2d87 with SMTP id 23-20020a17090a191700b0027db4a42d87mr16510046pjg.1.1698330944272;
        Thu, 26 Oct 2023 07:35:44 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-16bf-4026-a446-e128.ip6.aussiebb.net. [2403:580d:82f4:0:16bf:4026:a446:e128])
        by smtp.gmail.com with ESMTPSA id iq11-20020a17090afb4b00b00256b67208b1sm1727519pjb.56.2023.10.26.07.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:35:43 -0700 (PDT)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Paul Gazzillo <paul@pgazz.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Support for Avago APDS9306 Ambient Light Sensor
Date: Fri, 27 Oct 2023 01:05:30 +1030
Message-Id: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for Avago (Broadcom) APDS9306 Ambient Light
Sensor.

Datasheet: https://docs.broadcom.com/doc/AV02-4755EN

Following features are supported:
  - I2C interface
  - 2 channels - als and clear
  - Raw data for als and clear channels
  - Up to 20 bit resolution
  - 20 bit data register for each channel
  - Common Configurable items for both channels
    - Integration Time
    - Scale
  - High and Low threshold interrupts for each channel
  - Selection of interrupt channels - als or clear
  - Selection of interrupt mode - threshold or adaptive
  - Level selection for adaptive threshold interrupts
  - Persistence (Period) level selection for interrupts
  
This driver also uses the IIO GTS Helpers Namespace for Scales, Gains
and Integration time implementation.

root@stm32mp1:~# tree -I 'dev|name|of_node|power|subsystem|uevent' \
> /sys/bus/iio/devices/iio:device1/
/sys/bus/iio/devices/iio:device1/
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
|-- in_illuminance_raw
|-- in_intensity_clear_raw
|-- integration_time
|-- integration_time_available
|-- sampling_frequency
|-- sampling_frequency_available
|-- scale
|-- scale_available
`-- waiting_for_supplier

1 directory, 18 files

v0 -> v1
  - dt_bindings
   - Squashed apds9300 and apds9600 dt bindings, added apds9306 bindings on
     top of that
   - Added detailed commit message for dt_bindings
  - apds9306 driver
   - Fixes as per review
   - Not disabling the regmap internal lock
   - Removing processed attribute for als channel which exposes raw values
   - Modified the iio gts scale implementation for above change
   - Not implementing a fallback and warning for compatibility and part ID 
     mismatch as suggested by Matti and Jonathan as Rob insisted on having
     a single compatible string for the driver (if the device can power up
     with a single compatible string, which it does).

Subhajit Ghosh (2):
  dt-bindings: iio: light: Avago APDS9306
  iio: light: Add support for APDS9306 Light Sensor

 .../bindings/iio/light/avago,apds9300.yaml    |   35 +-
 .../bindings/iio/light/avago,apds9960.yaml    |   44 -
 drivers/iio/light/Kconfig                     |   12 +
 drivers/iio/light/Makefile                    |    1 +
 drivers/iio/light/apds9306.c                  | 1334 +++++++++++++++++
 5 files changed, 1377 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
 create mode 100644 drivers/iio/light/apds9306.c


base-commit: 611da07b89fdd53f140d7b33013f255bf0ed8f34
-- 
2.34.1


