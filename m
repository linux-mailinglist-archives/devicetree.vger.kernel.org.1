Return-Path: <devicetree+bounces-151681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A10FA46871
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1770D172F89
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCAF222A4EB;
	Wed, 26 Feb 2025 17:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J4VdmL0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E079229B39
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740592288; cv=none; b=txD4prN9ENYVfWQ+OdkiZzz/sp5PsMZW+AQhXnPhjKb7v3lC0EaTUwK5cBWACuwBbDSARXkETwwXK24adpWGPbaCOSOy7CTqkILFAmSE1yo8Zcm5pXTM1HLLOFTVtB0QFkxHikpMpJTTadVM1MfCRgeFwHsy1d8n74AAeuf5R0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740592288; c=relaxed/simple;
	bh=ZwtfC3nYp8CaPNEdKWyu9wlMvkqQmVSEvE+qMTsLNlE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dsKOJWDRLBb0/HJyeu//4cT6G3/hHXl/eu/cy/DCKfq2WgOqcbG7WrgxZ5gwv2Rp1QbQ9BiZpTJcYagcX0+4zofVzA+so2OsVARAe0USmWzdpA4FONBy9Z+fwX9687okniaBAi6L3xURRGBzyLIRY8vugUMDV2vCOxcjjy3BeD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J4VdmL0M; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e095d47a25so12984320a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740592284; x=1741197084; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WafmvwMcW3hiVK+DWV4tC0TIwlo3nMf0b8z1NxQd6Ao=;
        b=J4VdmL0M3YOVCStd8+G2z/+ufICtF16Rc9EtX8mL+/aqbVT/1P9q2oXoij99jz4vXp
         NXdK9r0RDO+SV8vKMwcPkpGfLayiVjVgAwuNlNFCVx7HF/zgQXzIrp9ptvp7rNx382hG
         LXcuYcfz38J4HhUDnEpqz4oIjWQp/IAcejhK/1PibLQXPt4q1GVnvl93kuG8Equ0fc3p
         7JjVQWT/pMWJOmepvc/Q/h2XSNDWRCrB6RFrVAlTzJ8tJFPCkJsziOslkz5xb3c7TWCr
         jfOL+KSsteOS24dtMYqrZYo7vQYfhMLMZJLabdGIMhvCDUJ4zq4SjAWtMGcPWWPP3FnS
         L7ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740592284; x=1741197084;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WafmvwMcW3hiVK+DWV4tC0TIwlo3nMf0b8z1NxQd6Ao=;
        b=tBC3thBVIffw0c5v2bT+S5oxCD1H+c5a/vFEVR2wElIbFpYr3XgcSwah5k9UK9K3aG
         xp42qpdZdWy2rV0pXO988JAdgODScRPsEsYPZRPxetuUDdqT3BjVo+Gm8qE8o4lgdFH0
         TJVFE74dFk56YAaGDSp3ZWbtg8k434bgl3BAVuzvOBEL0Tl2OTsLgeJnz5wYroz93s5+
         /R9e7dFx5n8xAF++hTkYXjs5xYPiVDLun6NaMnno1Q8ybtXTIzDjobc3HnGJlVkBDTU8
         lKBUWOqcTWOrBT3cktciKXTb8JuMiqjEUk0rK1J5pJKIVbBskXZ1rmXgvwUuJCUeMcSJ
         28Zg==
X-Forwarded-Encrypted: i=1; AJvYcCVKdDaV8jOsBIOHH7VbJPBuhENi+p7W1+M4PxToQTQeuLKuTD+sPFCi9r3ndWd4/RFhjRhEsfoEIiKV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6o0AzjeuB7oZiRYISRA5v3D8+b2Lk1B7/JhM1Zgn+kaay7WVg
	T2ORT6HDYb09OumbDbC+5W0XjvaLwjLYDgHw5Y7pMAFrbRToFz2vvowVhuqjmog=
X-Gm-Gg: ASbGncsUaSpjbk2iIEWwP3/lQ+mWyMDgwJJAbWVOnRSHYwPS87WefOmCn/EBVX4TGQN
	32MSOl5N7gTTkqV2tLRmqto4unvf0JC6dz1C9rEwIsLWooYHfAx4XD8oLy6OXSX1423sILERnJ5
	nNFZeykv/McQk9XNg3chyOvXPbeIhG235UrOieIu+NnrLxLWZewNd16xzDRx4G6+nZLR+6YGpn3
	YwMrGtMLfGZwCzmeMsBaknKCZX2SkIUQciTPMxZ//zK0wCmdiX1bnr7r2TB9l72iKTGLARNIKOa
	Vj3A5mZafAvyXKCd9LRe18gBVTEWRf3qMBBXrP3ctmXtPCVcDdZ/DAiKCifvxhvZXhfeo/F0aFF
	VQIKn5aoPrA==
X-Google-Smtp-Source: AGHT+IEdPDAKGl/ciZ2BN9WrypNhCZ3g9/t9yKy7hpDMmhF9Ng5D1SSHBpZpIWrlovd12eP54BeIwg==
X-Received: by 2002:a17:906:30cb:b0:ab7:b878:e8bc with SMTP id a640c23a62f3a-abc09c19ea5mr2172730166b.38.1740592283838;
        Wed, 26 Feb 2025 09:51:23 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1cdb131sm361889866b.7.2025.02.26.09.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 09:51:23 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/6] Maxim Integrated MAX77759 PMIC MFD-based drivers
Date: Wed, 26 Feb 2025 17:51:19 +0000
Message-Id: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJhUv2cC/3XMQQ7CIBCF4as0sxYDUympK+9hupgKtJPYYsCQm
 oa7i927/F/yvh2Si+wSXJsdosucOKw18NTAY6Z1coJtbUCJWiJexEKbMUb3YvFWEJGhVqEaO4R
 6eUXneTu4+1B75vQO8XPoWf3WP1BWQgocvW8731up9e3JK8VwDnGCoZTyBWTk/bWpAAAA
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
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
Changes in v2:
- reorder bindings patches to avoid validation failures
- add dependency information to cover letter (Krzysztof)
- fix max77759_gpio_direction_from_control() in gpio driver
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
 .../devicetree/bindings/mfd/maxim,max77759.yaml    | 104 +++
 .../bindings/nvmem/maxim,max77759-nvmem.yaml       |  32 +
 MAINTAINERS                                        |  10 +
 drivers/gpio/Kconfig                               |  13 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-max77759.c                       | 528 +++++++++++++++
 drivers/mfd/Kconfig                                |  20 +
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/max77759.c                             | 737 +++++++++++++++++++++
 drivers/nvmem/Kconfig                              |  12 +
 drivers/nvmem/Makefile                             |   2 +
 drivers/nvmem/max77759-nvmem.c                     | 156 +++++
 include/linux/mfd/max77759.h                       |  98 +++
 14 files changed, 1758 insertions(+)
---
base-commit: 0226d0ce98a477937ed295fb7df4cc30b46fc304
change-id: 20250224-max77759-mfd-aaa7a3121b62

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


