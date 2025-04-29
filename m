Return-Path: <devicetree+bounces-171839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5598AA0588
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 089E11B60D85
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB7429CB5B;
	Tue, 29 Apr 2025 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l/eMqVIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BFE2949F7
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745914932; cv=none; b=VoxLlGo3R034u6u4IJ3NnltrRxlm0CZAHjLlKCAZp0kMe0qA8FSyFOiD9BwPPxr2DBdATtooT78kIHbRUh6Yw0dV1c4vvqdNHLwkU3KC6A3ratnQT3HJH6jAfJXg1CHVjqb0V+n9Pyhjw0Mpih6qSygOjDeTdL2N+egFiCODf3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745914932; c=relaxed/simple;
	bh=CC+x9TIuGKZlk9DpvDXPrvuJ/RoLRSdU1UZ8DDd6rSE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jCJEr8X8fWgsXJqECoaY2yhGLMbDRfl7iUvCl6PHoLWEUYU0JSbh/GPGvJ2eN0F7sdfvRyBE0k6waCOsWIcfj0+Ladu0ubwu082Obnn0uiZJ697Hyj0xX17zJjx9uZ8K9gLTMHiY8lPDA4hx6N1QsIKtx9znnHq2IzLYXZKm7/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l/eMqVIJ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac345bd8e13so812851366b.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745914927; x=1746519727; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XjWwsLzQyeO/7s5cGzDJW5RdjgmzsifvXsymD4VMbYI=;
        b=l/eMqVIJIHcrEJmrvHPlbCrIuL+TGqC/7BKBQxPadEs4Qsl9k2f8+q75iRIVI/6g2d
         cA1ATZfBJaacUYBHGJ6fOZksxrXdc389nLin0CFOV8GzpNTIdCzs/j+tpTfcspnBfc5k
         y+SraQvBPG5iQAeqhPSpmSB3B4oWignWN8unjw0Vqj9AxObzMF7id0NL4+FFFdd2x7E/
         OEu2iUebEKb5/DfHmillvHNHCV1+FDl8JNUH1lQgCqj/cgkP1DpMVuNx4EkX3UftP9AI
         r3pnDO15lDlYTBJ8Kmk4QuB2+G361r0nmf1kYVwDn4tA58jhECuWHi7pjBosp+H+ri16
         KZTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745914927; x=1746519727;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XjWwsLzQyeO/7s5cGzDJW5RdjgmzsifvXsymD4VMbYI=;
        b=XcKgGjvHZO+wW+1XZk/N5FpmRKpCyWPm6j4JpGGOBQcS2EE0QnOGt/sZxaAjzg7osS
         vKHrm/7hA4nntfp00nScAG6i6+kVeasXEW13ZargfDpMmnwaNSKkXFPkUrXVyRc8g64X
         7gecJAanYztTwDUmYAXG+gB5bjKsJltUPdIZTb5JuD2f6W4Tqlc0EzhQ15sItevGp/v6
         rA9vGIfnQTaO95Ifc9+NjlUh7352qGLjL1VEOSdzmB9EnJudexOT2naxGTrK8MqhByBi
         O6NNs6N1qATDuvAPJz6+1J9AESVADXLoAxQuRu5iuYvO+gdHdO5QX+a0iWz54gFyjHp8
         nvdg==
X-Forwarded-Encrypted: i=1; AJvYcCXO6vyl4Uy6/Zb0fHIMD2H6C/IxIUyzPD/kLUTU34PzwqxBw1x6dXxVELjuoaUW/lQ76iN1pYaI1n21@vger.kernel.org
X-Gm-Message-State: AOJu0YwCL1fU8ZFVS4P+LNftMfPzBrh7E3HOG55NcVxsahgfE0WbH2aH
	sf8BLzKlvONRK84+ZWU9uWmJFa/qlCIXNVV/WK+jkcCSkdDG8YJ+bJbiUkAq1Hc=
X-Gm-Gg: ASbGnculYj46QJK0+i35H4AIxkjQsNgBm5BVVp3I9JeTJN5h/BSY7kwd++TaMmoU25k
	HaDX9wCYN+eyrG2yaYVkLI+5O+2/BbNwoH9uaowNqrh7TZYXWfII+WMEJVdVBwQE3xzc+YE/xRn
	Y4M8g0KC+ifV9QVgMR/6C9uWBOEwZuYeI9JTDn9Dd5uy/76DSjv+XnUTGT175oayPfu9xVGPQrX
	C6RQCSI7U8KivXPJ6a8pce7kz8dRcGbWUjR85+kb7BTMbFygadS+HgPwRuK9EuWBqCrGnsOhUPB
	/tCBlVRmEBS1W3SjXgrDidTZG1gNWNj2OPPGD4brzY6lOiI8i+yJLkezdUMmVQo8UOtc2D4vZbz
	GggByO7nc2RHwUOqSs3xkxLZC
X-Google-Smtp-Source: AGHT+IEJLdAyByvjWpRoQZ5u+uEMWUik7hg7SKC/v1n2JhrHzJOvQXoId+i7WUJMsyDMVZ567KCnZw==
X-Received: by 2002:a17:907:7f0f:b0:aca:c49a:aec5 with SMTP id a640c23a62f3a-acec84b7d10mr137455466b.8.1745914927052;
        Tue, 29 Apr 2025 01:22:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bbf4sm737905466b.36.2025.04.29.01.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:22:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v8 0/6] Maxim Integrated MAX77759 PMIC MFD-based drivers
Date: Tue, 29 Apr 2025 09:21:36 +0100
Message-Id: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABCMEGgC/33PTWrDMBCG4asErasyHksjuaveo3Qx+ksEjV3kY
 lKC714lm7gW7fIbeF6Yq5hjyXEWL4erKHHJc57GOuzTQfgTj8coc6hbIKAGRCXPfDHG6EGeU5D
 MbLjvsHOEopLPElO+3HNv73Wf8vw1le97felu1z9CSydBokuppzQE0Pr1I49cpuepHMWttOBW0
 05j1Uw6uojOAw+N7rfa7nRfNfie0ASFGqnR6qHrszutqnYD2EBA3nrXaL3RqHdaV02DC5TAsDG
 tpv80Ve3BGvBMhI4bbR5aNX+bqmNIUYHvKEX7S6/r+gMULYNHHQIAAA==
X-Change-ID: 20250224-max77759-mfd-aaa7a3121b62
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2

Hi,

This series improves support for the Maxim Integrated MAX77759
companion PMIC for USB Type-C applications using the MFD framework.

This series must be applied in-order, due to interdependencies of some
of the patches:
* to avoid use of undocumented compatibles by the newly added drivers,
  the bindings are added first in this series
* patch 1 ("dt-bindings: gpio: add max77759 binding") also creates a
  new MAINTAINERS entry, including a wildcard match for the other
  bindings in this series
* patch 3 ("dt-bindings: mfd: add max77759 binding") references the
  bindings added in patch 1 and 2 and can not work if those aren't
  available
* patch 4 ("mfd: max77759: add Maxim MAX77759 core mfd driver") adds
  the core MFD driver, which also exposes an API to its leaf drivers
  and is used by patches 5 and 6
* patches 5 and 6 won't compile without patch 4

The MAX77759 PMIC includes Battery Charger, Fuel Gauge, temperature
sensors, USB Type-C Port Controller (TCPC), NVMEM, and a GPIO expander.

This PMIC is used on the Google Pixel 6 and 6 Pro (oriole / raven).

This series adds support for the top-level MFD device, the gpio, and
nvmem cells. Other components are excluded for the following reasons:

    While in the same package, Fuel Gauge and TCPC have separate and
    independent I2C addresses, register maps, interrupt lines, and
    aren't part of the top-level package interrupt hierarchy.
    Furthermore, a driver for the TCPC part exists already (in
    drivers/usb/typec/tcpm/tcpci_maxim_core.c).

    I'm leaving out temperature sensors and charger in this submission,
    because the former are not in use on Pixel 6 and I therefore can
    not test them, and the latter can be added later, once we look at
    the whole charging topic in more detail.

To make maintainers' work easier, I am planning to send the relevant
DTS and defconfig changes via a different series, unless everything
is expected to go via Lee's MFD tree in one series?

Cheers,
Andre'

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v8:
- gpio: switch to gpio_chip::set_rv() (Bartosz)
- gpio, nvmem: replace MODULE_ALIAS() with .id_table (Krzysztof)
- gpio, nvmem: drop previous tags due to above
- Link to v7: https://lore.kernel.org/r/20250428-max77759-mfd-v7-0-edfe40c16fe8@linaro.org

Changes in v7:
- rebased against next-20250424
- Link to v6: https://lore.kernel.org/r/20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org

Changes in v6:
- add one missing change in core driver
- Link to v5: https://lore.kernel.org/r/20250325-max77759-mfd-v5-0-69bd6f07a77b@linaro.org

Changes in v5:
- core: incorporate Lee's comments (hoping I didn't miss any :-)
- Link to v4: https://lore.kernel.org/r/20250312-max77759-mfd-v4-0-b908d606c8cb@linaro.org

Changes in v4:
- collect tags
- mfd: add missing build_bug.h include
- mfd: update an irq chip comment
- mfd: fix a whitespace in register definitions
- Link to v3: https://lore.kernel.org/r/20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org

Changes in v3:
- collect tags
- mfd: drop gpio-controller and gpio-cells, GPIO is provided by the
  child (Rob)
- gpio: drop duplicate init of 'handled' variable in irq handler
- gpio: use boolean with IRQ_RETVAL() (Linus)
- gpio: drop 'virq' variable inside irq handler to avoid confusion
  (Linus)
- gpio: drop assignment of struct gpio_chip::owner (Linus)
- Link to v2: https://lore.kernel.org/r/20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org

Changes in v2:
- reorder bindings patches to avoid validation failures
- add dependency information to cover letter (Krzysztof)
- fix max77759_gpio_direction_from_control() in gpio driver
- gpio: drop 'interrupts' property from binding and sort properties
  alphabetically (Rob)
- nvmem: drop example from nvmem binding as the MFD binding has a
  complete one (Rob)
- nvmem: rename expected nvmem subdev nodename to 'nvmem-0' (Rob)
- mfd: add kernel doc
- mfd: fix an msec / usec typo
- mfd: error handling of devm_mutex_init (Christophe)
- whitespace fixes & tidy-ups (Christophe)
- Link to v1: https://lore.kernel.org/r/20250224-max77759-mfd-v1-0-2bff36f9d055@linaro.org

---
André Draszik (6):
      dt-bindings: gpio: add max77759 binding
      dt-bindings: nvmem: add max77759 binding
      dt-bindings: mfd: add max77759 binding
      mfd: max77759: add Maxim MAX77759 core mfd driver
      gpio: max77759: add Maxim MAX77759 gpio driver
      nvmem: max77759: add Maxim MAX77759 NVMEM driver

 .../bindings/gpio/maxim,max77759-gpio.yaml         |  44 ++
 .../devicetree/bindings/mfd/maxim,max77759.yaml    |  99 +++
 .../bindings/nvmem/maxim,max77759-nvmem.yaml       |  32 +
 MAINTAINERS                                        |  10 +
 drivers/gpio/Kconfig                               |  13 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-max77759.c                       | 530 ++++++++++++++++
 drivers/mfd/Kconfig                                |  20 +
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/max77759.c                             | 690 +++++++++++++++++++++
 drivers/nvmem/Kconfig                              |  12 +
 drivers/nvmem/Makefile                             |   2 +
 drivers/nvmem/max77759-nvmem.c                     | 162 +++++
 include/linux/mfd/max77759.h                       | 165 +++++
 14 files changed, 1781 insertions(+)
---
base-commit: 33035b665157558254b3c21c3f049fd728e72368
change-id: 20250224-max77759-mfd-aaa7a3121b62

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


