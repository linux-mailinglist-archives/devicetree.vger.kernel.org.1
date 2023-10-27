Return-Path: <devicetree+bounces-12347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5AA7D9029
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB8FC1C20F49
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D1AC8F8;
	Fri, 27 Oct 2023 07:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="DDWIiYI+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D502AC2FE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:45:58 +0000 (UTC)
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F6341A5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 00:45:56 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-577e62e2adfso1458853a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 00:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698392756; x=1698997556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s1ZqF4Y+8XvmpYsLnKTvR6Vxy6r+gLyNVW4nq/44GEQ=;
        b=DDWIiYI+XPI0q4akkfp2XIJBk0REoVM5LSqyDLG31zk9MU2ZsDIGCBuSEu/FoSLvbI
         lIdNWHXlKMbBtJqP94DfhCgpjKEtY5q6VYDH5NvYC4aJV8lzgg84zl8aY5jNPq5UgR95
         XVTd9J5Ei/VgYPjcMsTYbB7kiY1WboXoVJnVMYXNXDFcnj5aaaRZU8nq8KVzUtzcXSWE
         /mArY1VTUP1aEg3Nv8fJhbYyr5oWCelxlB0iO68BsT4DOZ1B+Cziscw/53fPry15APQe
         0E99c6SEgqNBpkhsqenYUdKhxBM3EYt2z9GWP6/FLzgGjaxFTAPGvcBD5a2eqkk+IxBJ
         yNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698392756; x=1698997556;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1ZqF4Y+8XvmpYsLnKTvR6Vxy6r+gLyNVW4nq/44GEQ=;
        b=jvFuWhDX32fyt57fsjEM1Kg4oTiazoPMHI+i8CRN1BJJaWkT5IcpitDbAQX3v5c5No
         oTffIPJ+eI9WXmnFqXCQ3ARqX5rOALBvZfdupJmtuqH3ii6c9xi9Bc2XFsEZVtgWgz2n
         XkF0nEMkbZWHB8Np9VsSxIVArp3Q+WUxKbmECBcO6rL7mi92vUrNTF4b9Ow9udL8pkZr
         iAfqkURH45TWnrOVSRLH4gCVtXMjXOJzG9JIlMtnoiXemUvuYhSA3ocvF6ZP5EXUzHA5
         JUYpy+T2mBKAgnN8NPqFNFl62fCI8IAlyd6no9eFAtRyf43fva1BCoKLkikn5OWVw25T
         eULg==
X-Gm-Message-State: AOJu0YwBvbKqdHBKPRVg9DwadUBb5c5zHzcWOYKsngtbPRmZ6f2PGWW1
	nW3DzrXPsFbRgR8p4O0O1HU1YA==
X-Google-Smtp-Source: AGHT+IGN3nHP51lPVBuXkhPSkiQS17tSC7ACDp/muLwdcnay6wDURDjyfTAimYSAeFGKP6oV58ekIg==
X-Received: by 2002:a17:90a:7:b0:27c:fdc6:c52 with SMTP id 7-20020a17090a000700b0027cfdc60c52mr1743733pja.30.1698392755913;
        Fri, 27 Oct 2023 00:45:55 -0700 (PDT)
Received: from localhost.localdomain (2403-580d-82f4-0-bfe6-93ca-47b7-e8ec.ip6.aussiebb.net. [2403:580d:82f4:0:bfe6:93ca:47b7:e8ec])
        by smtp.gmail.com with ESMTPSA id v12-20020a17090ac90c00b00277832fbf4esm684835pjt.16.2023.10.27.00.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 00:45:55 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Support for Avago APDS9306 Ambient Light Sensor
Date: Fri, 27 Oct 2023 18:15:43 +1030
Message-Id: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
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

v1 -> v2
  - apds9306 driver
   - Fixed kernel build failure due to probe_new(), replaced with probe()
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
 drivers/iio/light/apds9306.c                  | 1326 +++++++++++++++++
 5 files changed, 1369 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
 create mode 100644 drivers/iio/light/apds9306.c


base-commit: 611da07b89fdd53f140d7b33013f255bf0ed8f34
-- 
2.34.1


