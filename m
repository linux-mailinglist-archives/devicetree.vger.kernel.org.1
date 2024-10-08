Return-Path: <devicetree+bounces-109103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCB7995394
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 510A6286AD4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8E91E0B9F;
	Tue,  8 Oct 2024 15:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eMut9mXw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36A91DFDBE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402304; cv=none; b=DSpqMI1Y4lSs9kJXdQ2YjJQUpD2zGgqmJjsnPcilTMugtlZ2RsiThnVye3DL63CVw1T2rHuJR8JVgcXBsNi5dJFh8ZbTUNikbUqp6FSMwHK5Orh/spCLPLhcpKsqoYE6fNvjlN/KFnuyK12DYknOMXUDTeUOtZQX9LjfIlTeQ0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402304; c=relaxed/simple;
	bh=RnRiLvQZKZfvJRnRy+rTXTfSyB5Kni1K1+NCZ/9Ax68=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=og6xFmAFQLP9wnZ/9J4yVup4y66j0GK+tO80MbKX8/tU7folV04N0wtzacuSg4zEFpCZHvgpPHHbcgPHX0oe61c7EdVMtqnB0Z+naDZnpip7mVvUAJfiKgsGoax3Thqeor+4KJjLCoqbYdsvyEFg87HJYdDW4cvG4VKu7Q3rmB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eMut9mXw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4305724c12eso3526675e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728402299; x=1729007099; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vSAg388iyowQSiF9vFdBp03eOks5liaKiRuZRS3VSgo=;
        b=eMut9mXwC27+tloN8Uc2vD6PxeZV9mF7GW+M8kayR3HlMlFumDPJA9mWSwPPNgLmOk
         sUvI2ejxbLvFLt6lGjY6lZ4dS4NdClGF4+7oTDwRYXgRAz31V7eHYjMjBw6zAH4btLOf
         Nlc0FVcOk7mc0Flb8fFyOF4fySO0AJlw7w/KxNQ1ge0/01aapBgLsDt+O+8d3aPKTeN+
         8sRe5LiUzjMgpqU6I071stZkn5qYQSpx/ytMM8jW5MDxpF4+K9chudw1SjpoyUofzg3J
         X0sPsLspYX8JDHb6SyQagPDEzvt08m7+oy14jN6giujuFcvG0bV/6kOv808bDIfo6+l2
         r+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728402299; x=1729007099;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vSAg388iyowQSiF9vFdBp03eOks5liaKiRuZRS3VSgo=;
        b=Ej0ryadkiGDGf+luLn0DXJZX4cGKddscMkVoRCIENbMtzvMngHcDVxq2GEvo5+9VUY
         IbN5HRDVdVq5dpSptgY4UkSgRUr91lDa4bslK0Kz/31bcTY8tQv5ip8OxN8QeA0le8uK
         Nqfv25L2YzCo+/HlYokr7UF85gWSKw8rFSlfUh74BzJGRKNDO8nkLdu2hufdFl0oiE/3
         yFuEVYK3OSx45atGZm7bT0r3OeKaBBNuJQfwNc+h5WG5u9QnNk1H+HVpAfrArzYhdi/D
         rPstUnzRZBpSparslDJuV+HfOivOP5lTZAv1iHKm65TjiYw8i1PnJZwBRr6NUHNtQy9C
         HJtA==
X-Forwarded-Encrypted: i=1; AJvYcCUg9zKOJ7ZVHq86yj8tkypqEwKI782DwWjgWz9YqpyqW8xLlPmow3Gs4zju3YOsK/mYAbGRr0leaEJ/@vger.kernel.org
X-Gm-Message-State: AOJu0YyAJb5KRf2C6f95/Q9bH6oMFn4hcQ2fnfJYVnCKwzymStC4zW8Z
	mCG4l34pPespZZvx6GfqnZQQoB7fOnZzG2gmrdfv+119E0GeeY4xRhFuHeJ/bjQ=
X-Google-Smtp-Source: AGHT+IF9OAOBnQbL91yQ3PAwKSMQxVqIuNhddIeWZgxSomQ3XhzKzEmh04oBqRljaOft4K1cRmG2hg==
X-Received: by 2002:a05:600c:1907:b0:426:6326:4cec with SMTP id 5b1f17b1804b1-42f85af412bmr114058905e9.29.1728402299141;
        Tue, 08 Oct 2024 08:44:59 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b1d826sm129591215e9.26.2024.10.08.08.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 08:44:57 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v5 00/10] iio: add support for the ad3552r AXI DAC IP
Date: Tue, 08 Oct 2024 17:43:32 +0200
Message-Id: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACRTBWcC/x3NQQrCMBBG4auUWTswSRxQryIu0masP0haktIWS
 u9ucPlt3juoWoFVenQHFVtRMeUGvXQ0fGIejZGayYu/OpEbb5i5/3JMQdUXjjt4FQYmXqwuyCO
 H5NTuYs56pdaZi72x/x/P13n+AFnG4ydzAAAA
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dletchner@baylibre.com, 
 Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>, stable@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.1

Purpose is to add ad3552r AXI DAC (fpga-based) support.

The "ad3552r" AXI IP, a variant of the generic "DAC" AXI IP,
has been created to reach the maximum speed (33MUPS) supported
from the ad3552r. To obtain the maximum transfer rate, a custom
IP core module has been implemented with a QSPI interface with
DDR (Double Data Rate) mode.

The design is actually using the DAC backend since the register
map is the same of the generic DAC IP, except for some customized
bitfields. For this reason, a new "compatible" has been added
in adi-axi-dac.c.

Also, backend has been extended with all the needed functions
for this use case, keeping the names gneric.

The following patch is actually applying to linux-iio/testing.

---
Changes in v2:
- use unsigned int on bus_reg_read/write
- add a compatible in axi-dac backend for the ad3552r DAC IP
- minor code alignment fixes
- fix a return value not checked
- change devicetree structure setting ad3552r-axi as a backend
  subnode
- add synchronous_mode_available in the ABI doc

Changes in v3:
- changing AXI backend approach using a dac ip compatible
- fdt bindings updates accordingly
- fdt, ad3552r device must be a subnode of the backend
- allow probe of child devices
- passing QSPI bus access function by platform data
- move synchronous mode as a fdt parameter
- reorganizing defines in proper patches
- fix make dt_binding_check errors
- fix ad3552r maximum SPI speed
- fix samplerate calulcation
- minor code style fixes

Changes in v4:
- fix Kconfig
- fix backend documentation
- driver renamed to a more gneric "high speed" (ad3552r-hs)
- restyled axi-dac register names
- removed synchronous support, dead code
  (could be added in the future with David sugestions if needed)
- renaming backend buffer enable/disable calls
- using model_data in common code
- using devm_add_action_or_reset
- minor code style fixes

Changes in v5:
- patch 2/11 set before fix of ADI_DAC_R1_MODE patch
- fix dt binding check error
- patch 4/11 removed
- fix stream enable/disable call names
- fix axi-dac clock names
- fix axi-dac platform device unregistering
- minor code style fixes

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>

---
Angelo Dureghello (10):
      iio: dac: adi-axi-dac: fix wrong register bitfield
      iio: dac: adi-axi-dac: update register names
      dt-bindings: iio: dac: ad3552r: add iio backend support
      dt-bindings: iio: dac: adi-axi-dac: add ad3552r axi variant
      iio: backend: extend features
      iio: dac: adi-axi-dac: extend features
      iio: dac: ad3552r: changes to use FIELD_PREP
      iio: dac: ad3552r: extract common code (no changes in behavior intended)
      iio: dac: ad3552r: add high-speed platform driver
      iio: dac: adi-axi-dac: add registering of child fdt node

 .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   |   7 +
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   |  56 ++-
 drivers/iio/dac/Kconfig                            |  14 +
 drivers/iio/dac/Makefile                           |   3 +-
 drivers/iio/dac/ad3552r-common.c                   | 170 +++++++
 drivers/iio/dac/ad3552r-hs.c                       | 526 +++++++++++++++++++++
 drivers/iio/dac/ad3552r.c                          | 461 +++---------------
 drivers/iio/dac/ad3552r.h                          | 207 ++++++++
 drivers/iio/dac/adi-axi-dac.c                      | 483 ++++++++++++++++---
 drivers/iio/industrialio-backend.c                 |  78 +++
 include/linux/iio/backend.h                        |  17 +
 include/linux/platform_data/ad3552r-hs.h           |  18 +
 12 files changed, 1573 insertions(+), 467 deletions(-)
---
base-commit: a620cae575523a8c922ad0842647ca38fc6ccd3c
change-id: 20241008-wip-bl-ad3552r-axi-v0-iio-testing-3d15e90e1eb5

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


