Return-Path: <devicetree+bounces-160437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB88A6EB7C
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:27:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 888F33AEB48
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D7A1A7AE3;
	Tue, 25 Mar 2025 08:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="irPmZvW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB35615FA7B
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891229; cv=none; b=WepbLrtwHXAC1vKckJy9QghisnqDN+lNOoM3pMs+VLMAQ2fXg/oH27UklBSp/38UfNpOfKJ4IQc4KINql1gFaime8Bhps56hPDcs/w2EoXmhdYiZDsdRHL5b5n9qtVNrTfkydb3n42CjAACpHx07FdgBoGG/Ix6RLzkbi5vEX4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891229; c=relaxed/simple;
	bh=Xi+iflbuGNUTa15J4fphEAWQqrgvX+mseiZphrPwLVs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ClydTdN4q9cdqILqVgzZ4mizA560m3W36a/8+mhD6cS1IJ7+9TgLuqYcYdOrxBVFyaKLuPycjsN18m6ebH8NlTBJiPWqfs5viWQqV8HFh75jHvbiwkxvIubvLYiYMTHcrM1nG5nrcqXNe8JsuGG0JUSCzywVxrePG30dGwhPoNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=irPmZvW1; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so9738060a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742891226; x=1743496026; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1cTW9f64QDwXK4lXTqZ80HGb5Ozt2tveV0uN4MOnmpw=;
        b=irPmZvW12jUS5/brjE+SmcthQwj0S9QhESAzLHpAf+GaRvKjUV4vv7mPl5eWGNCt1w
         0dBp1NUu/UqNi9WfwlLQp0Nkaf7iWA+MAwYPfTrcjBw7cQG42QLrat/uqHOcwIz99w5g
         laVlMiD580L9MzkW8qIokxgJKL+fmW4ukDUSE6PxRSreVWxPk1NQxay9QCBS14NkKRXQ
         9/gfRT8r++p7N9tdDxQKzd0/zpxwgxZ3TzIfbepevK/SIDAgieGQxbdOtXwwAcRvbcGw
         g1TUiP4NRSwepMmpNOHmOvyunW+nbB+OPMDbljVd3G/zbKKzSieLFECdu3OCy4/INOlJ
         L0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742891226; x=1743496026;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1cTW9f64QDwXK4lXTqZ80HGb5Ozt2tveV0uN4MOnmpw=;
        b=R/wEsLoQVgfkWo+8MBPgwfYDYqaGZ56uobf2hvmhXXEq0wvVX9Qzv6Kk1x10hYrTI+
         QmJIQcoHtEgZDxm8Uxn0RjiSXphDjwTgpEwEWhIBiiIiusbcqB5ryCLSn3DLA+4XGRwB
         Kmind3dTfMg+/25KTA14ajvQRWss27p1ga4eQBbEm87juvtR+dPBIwtpCJ3LKz/ndLCQ
         qO2do52khhhRU1XPPeVKplq3UXDQSgbGEBksV+HWAsebi5psxLUmHWzl5elbECKSNk6Y
         uenYueI45CWXVVSURDbbQW9KEeS4VrMCQBat0saRuY+jA+/KZYCqxiQoLE6mB0lKlYhU
         cx5A==
X-Forwarded-Encrypted: i=1; AJvYcCVNF7oxfTX4oOKk82jbHLzqa5uxBy8BRZWqm8uAUjOzmm6nDn8Gy+A8BbWPsm1fNMygT7dkD+ZZlvMA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo4zfknmZS89rZzyCN8dLg9/017fr1Tw2GFxwjpiGPewrQAsvo
	gBmQMmyQbHcXJF5DJ+lg1eB/CAnQXAsN9wGoRFf6UetlW8+dXjschlmyXCx5Gq8=
X-Gm-Gg: ASbGncvm661nByLzr9dmhpJLZ5A8THJIzmcD8vFTIBoNVmg1u2sU0TF4wXnMQcomsOv
	6ewF2u76MtDNnhtca1kG8mkDWqdv1+R+QCi3TrOMSLNKGHrnEwW0bspTEQsmdbrijhSk7/WBguh
	1oq10oQNXnj65ZaS5FXEAPuMLxWfwlB3h7XKuWy5Fv5qrPK/vlajSiI/lrVqRbUERwKOMIDRFvH
	fG/ACUHrCPqVIGsGTJ2glhU0NZNqqehMBfS6ANqSJAqc4ZTBD4g8nekjgdUtNe/ASJQ947GtN+e
	iJUqRo1WrWF2Y+DcxVIHFOAb3PVbbNerlMaSlCwRmQO30ewlLuFf0DQFWcNviUykk+s3zad7CfW
	DLPgUbt43hTsED2meLUXzDlwFaO7q
X-Google-Smtp-Source: AGHT+IFs0OFi1xaXSrje8uSLmRoKlraY9ELDntL/5mZHHUuo5F/zTqPHBY+AVmKDNzXMP3iU+R0Isg==
X-Received: by 2002:a05:6402:2106:b0:5e5:827d:bb1c with SMTP id 4fb4d7f45d1cf-5ebcd509096mr13098019a12.25.1742891225945;
        Tue, 25 Mar 2025 01:27:05 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcce36d66sm7377366a12.0.2025.03.25.01.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:27:05 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v6 0/6] Maxim Integrated MAX77759 PMIC MFD-based drivers
Date: Tue, 25 Mar 2025 08:27:01 +0000
Message-Id: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANVo4mcC/3XPTWrDMBCG4asErasijzwjq6vcI3Qx+ksEjV3kY
 BKC714lmzo2WX4DzwtzF2MsOY7ia3cXJU55zENfB33shD9xf4wyh7oFKEAF0MozX40xaOU5Bcn
 MhnUDjSMQlfyWmPL1mTt8133K42Uot2d9ah7XN6GpkUqCS0lTskEh7n9yz2X4HMpRPEoTLDWtN
 FTNhNFFcF6x3Wi91N1K66qV1wQmtIBAG93+6/rsSrdVO6u6QIp8591G40IDrjRWTdYFSsqwMa9
 6nuc/Vc2myaEBAAA=
X-Change-ID: 20250224-max77759-mfd-aaa7a3121b62
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
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
 drivers/gpio/gpio-max77759.c                       | 524 ++++++++++++++++
 drivers/mfd/Kconfig                                |  20 +
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/max77759.c                             | 690 +++++++++++++++++++++
 drivers/nvmem/Kconfig                              |  12 +
 drivers/nvmem/Makefile                             |   2 +
 drivers/nvmem/max77759-nvmem.c                     | 156 +++++
 include/linux/mfd/max77759.h                       | 165 +++++
 14 files changed, 1769 insertions(+)
---
base-commit: 9388ec571cb1adba59d1cded2300eeb11827679c
change-id: 20250224-max77759-mfd-aaa7a3121b62

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


