Return-Path: <devicetree+bounces-175627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0F8AB150A
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FBDC17BBAF
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A195E29373D;
	Fri,  9 May 2025 13:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YTssG2cX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06293293455
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796968; cv=none; b=eKpVtNH+3y2DBhSQjeKN43S9/bRgR5ZFoirSKpbMOg2ol7W8EsSc8x8siYwModoso1MdcsWyn7vx1LnHvOqWU/Gi0cQoabEdILMc6apSEnjJ1qHn1ziRGqoohJh33S8O2JGqzChCRXh2qY2B9fkjqw1m26YHSicK4kFX/muuGpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796968; c=relaxed/simple;
	bh=ulCybTioPfppe4R4TtApa6DBt+CNMCqsqrBOJRG2OXo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cqFRXgoUEAcWpIKeeMG7CwdIhXoWHh+nf+KA+dVKZ6jbmxffbs7eMWBCVaLfoAMl6EzS5IFu4e6z3uaem7pXxgSL1Y7Q+TKfEcIH+axlOQ6t9VCWD2Ddz+wzdkrSyJCUOq2JW12vVlC7QURtoGwpGXkyqa1VEn5XomPhzJOEZmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YTssG2cX; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac289147833so418978766b.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 06:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746796962; x=1747401762; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4vZm6ZTX/GNv3NmqUNFFgVoy98eQ+Gy2jzvvvvSHnPE=;
        b=YTssG2cX4LH5Zk0jXnXMNFXpXq7CjLjr1vvNClbWOWcDGvIEhPlAQiK6BiOMYerfLB
         xxaxb6TTDMFoEObyhVudzZk6+n04QhSvsaIWhk/+U5pbxc1ct1MnwlCXmAouYOj20Oo3
         y3BtoWhw6VLV/eNjHqQfYxvYWRV23VE0KASZ5QxiFy20MSVhNsBkwhSqmEGf4ZRhN6pq
         Ix2KEFwFDkqm7O2/oCzH9JToNoGVMajMVGG6DJ1PgllY216eWHIvthInBQcYwhxhLwOH
         KdqhhSugYGcTL7Kk9dz3VYV5aYeZAszHhKyzZ9YODdif/fw3p4TaAhihmePyyvXg9sad
         VBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746796962; x=1747401762;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vZm6ZTX/GNv3NmqUNFFgVoy98eQ+Gy2jzvvvvSHnPE=;
        b=CEqIKaTf6xWK/R+3+kz9PmnDhzXdhEC5lnqJMSKEF/PXT0hhDdYdDnpIZ+FAqyilux
         5J+9vC6IMjMcn+lmj181UaVacUf/PCzehux6eCtnOlojLUd61iSYMYmPyM9VHQj9WFaP
         phWrWNo9UTKVgpTdmSZpUwZ8xk/f5Fh6jVFCZxjnQxc43xrSR2HfJuL2v24LhPbxGTVa
         FNIaanPfJe8rW0N3oS0BoYHXfcC5rms4ZK34j5SSU0MeSrjS9zhirtpx4uIXPOvC2AeO
         5yj/a2iCh9EqWByLHRvSqXWT9GraN1SLV7zfPQ2XZRv/T1utmii1Rq3/zqw8INtlvQ/u
         kCEg==
X-Forwarded-Encrypted: i=1; AJvYcCVaxsW5aXTDkjE1M/vB8GPmHQI8e1ElysFR5e4z3qfx31NKyIKba5diuFGI7d8MtG+BcHd9M2DJaN3E@vger.kernel.org
X-Gm-Message-State: AOJu0YyeFOnrQQH0MJkFV5C9wygV8E40giHoA5Gm7Cs6jAidFR5pODYL
	MLOEuz2cRPnWFhVeLWagqkiw62H31VuvdjcbqlZgJMdYJjanGs3CmK+w4NAMxOsMM14L91RCNoj
	HEYo=
X-Gm-Gg: ASbGnct3BliqZVlzv4ln5Tn/JIBv20rQSvEnkBMw5qC0G3aZJiR4nwThlFSm1HwWKwm
	yrrNVMHNCgE14Pnh4gxsixCB2ambjm7XPoUSlUigjCTxJ+RKClGl1N3jbC+EYnYJnjO+JaxgaKl
	un7xgtXIim9ulVNsmiVBUoSoqQ1a4MA8J/LRriN1jnK58j+i7zk3WJixSRPywHGEq8pnq+BgSJA
	FKj8peQm7WneVjdC7IpLTTYDFJPlmlWaorKTTCgc8Wp+FASrdGFpNpLk9A7oF9P+FvWIKW3AYs3
	b9o7WbXrZSmUJKt0b1s9zwoVDyc0b/+jHfEnidEegWJT5IDlClPt8RG1gGM23AEqhIqjkNzMqyq
	ltGaTh9vUb6xvZDPEfD899tY5
X-Google-Smtp-Source: AGHT+IElF34czXrgd/ETSd6RK4arhdgSAG0WjsAxoXZ19B3iyixaSPqa8Uzjt2JeA7O1/51p0++srg==
X-Received: by 2002:a17:907:d9e:b0:ad1:dbec:44d3 with SMTP id a640c23a62f3a-ad218f79625mr408598766b.27.1746796962170;
        Fri, 09 May 2025 06:22:42 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad21947abcasm149041966b.84.2025.05.09.06.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 06:22:41 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v10 0/3] Maxim Integrated MAX77759 PMIC MFD-based drivers
Date: Fri, 09 May 2025 14:22:38 +0100
Message-Id: <20250509-max77759-mfd-v10-0-962ac15ee3ef@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJ4BHmgC/33Pz2rDMAwG8FcpPi9DlmPJ3mnvMXbw39awNiMZo
 aPk3ef00ixmA10k+H3iu4kpjSVN4uVwE2Oay1SGS10kPB1EOLnLMXUl1oNAQA2IfXd2V2bWtjv
 n2Dnn2CmJ0hOKSj7HlMv1nvf2XvdTmb6G8fseP8v1+kfQLDvo0OesKNsIWr9+lIsbh+dhPIo1a
 catpp3Gqh3p5BP6AM42Wm212WlVNQRFyLFHjdTo/qFr2Z3uq/YWTCSgYIJvtN5o1DutqybrI2V
 gx9xq+k9T1QEMQ3BE6F2j+aH7pjdXnWJOPQRJOZlGm622O22qZox1Alsnc6PtRivYabv2VpZJJ
 VTa/v69LMsPPAzJ2ZoCAAA=
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
Changes in v10:
- collect tag for nvmem
- rebase against next-20250509
- drop already-merged bindings patches
- update a comment in core driver (Lee)
- Link to v9: https://lore.kernel.org/r/20250430-max77759-mfd-v9-0-639763e23598@linaro.org

Changes in v9:
- nvmem: drop superfluous max77759_nvmem_is_valid() (Srini)
- collect tags
- Link to v8: https://lore.kernel.org/r/20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org

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
André Draszik (3):
      mfd: max77759: add Maxim MAX77759 core mfd driver
      gpio: max77759: add Maxim MAX77759 gpio driver
      nvmem: max77759: add Maxim MAX77759 NVMEM driver

 MAINTAINERS                    |   4 +
 drivers/gpio/Kconfig           |  13 +
 drivers/gpio/Makefile          |   1 +
 drivers/gpio/gpio-max77759.c   | 530 +++++++++++++++++++++++++++++++
 drivers/mfd/Kconfig            |  20 ++
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/max77759.c         | 690 +++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/Kconfig          |  12 +
 drivers/nvmem/Makefile         |   2 +
 drivers/nvmem/max77759-nvmem.c | 145 +++++++++
 include/linux/mfd/max77759.h   | 165 ++++++++++
 11 files changed, 1583 insertions(+)
---
base-commit: ed61cb3d78d585209ec775933078e268544fe9a4
change-id: 20250224-max77759-mfd-aaa7a3121b62

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


