Return-Path: <devicetree+bounces-144759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E58D7A2F2B0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86C7B166380
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E6524F5A4;
	Mon, 10 Feb 2025 16:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zTXxdqoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21D24F593
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739203969; cv=none; b=ot8s8A6QMiZ896/3jZBYRokZRXOh/94qqTyItjx0NJJMoeEYVAyZAl6Mqw0SKY67nR6PHWobL2FIya5j6wvFlqjqyQbMyah5tuR6J5FMLBGiI3p1S/qNO7dPYDtpE+EdVqs88inEtybSJoNveBlMv+N6t3LkOBd+Cl91btJB4m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739203969; c=relaxed/simple;
	bh=uF8K59uhfTnsnHYF0QgQ3k7irpxn8tRe22ZZGYaVdYA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uKUivkryBsCyXV4HqVubbfcc+37CB0YSuU5Kw5HytRIWgVEbLMl9Ilh87eD2wy672sq3TujwpkRLgEQMUrGbdhOK3ZKb7oRRJ7XIxnCNaj0CfzGUB8TnxIMts+p0EQELuK8+UF7fyBujIg9S5/WsT8T3BMBU45fogLBOsUhdp8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zTXxdqoV; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dd93a6f0aso1243024f8f.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739203964; x=1739808764; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bui6a+u8nCr5hYL5RmyZzGBCPswahyVTcFp15Z0jabc=;
        b=zTXxdqoVVOAp3MQhd5hS0lOThnAbaUsykLQlH4H1dszqE3qmMQrkPQrxvEk/428PsN
         By7nfhnOMnwHcuv/RgMPgyqQTwVFtUvvFj8nEBEBqOUGKkWWdAK7mwqAm9Et2t/JYizU
         tczZzp3NVhoDGW8NxztOHhHZq4C5JryFeJTrMe0aP/trXkAOXjcr9Tdj6vsPVPJh/YNA
         o+/NfwI1SO07on/DUfxwaQYNY+hiKQ5Qw6AOExv3Jq9bh+5PpX/9NhvypGQYHoiRr68M
         jt0saPN51/GygNobxld9S1M6Ek5EKYfiK5/AQo5WYBpO+DqnxZEhF1PjVcsZejl6KUJ1
         U2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739203964; x=1739808764;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bui6a+u8nCr5hYL5RmyZzGBCPswahyVTcFp15Z0jabc=;
        b=pT7vuJ2MbE/SCHL61sT9J3DoNYVH++tq97IOhfJNGzRZGYmTHzUMUs6uZpplrZgvTu
         fyXmHFCSnNvJHPEJec3rUJor6mbZWznjCg0yQgxcT8F/okEl1iB1a00WzrjoGqcT+cRg
         dGN2QqNgU/up8qtyNMFzFZUR1gDmU+fJKvmRW+gJMAxD9JyDxGKbdxW86LqfB6Qlmy7c
         vgA8tG1uOefyZvZiexyaUpU0CYKVYvIaCmOL0zNiUNKi3/CvLNP3ysxB2+NCBwGHaigu
         T5b5huG9+4VDFW+o+IcV6S/vmum/fnfHAKFIz9JvBD89gHw+VaV8Rzyuo5Pb2OGcvjXG
         tA/w==
X-Forwarded-Encrypted: i=1; AJvYcCWJWUzROR2kN5S2SqEAXr6tO6KmyA4PVFjijA/Q0sg2UMsS3IPmy8KvLbzTKxKsdT5sHxacg4ukSW2R@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhs6FEf8z6kDE86zOK1uesAhkdZuO8uXM0X19UbgVIQ/2ft5fC
	ljgFa1ezrBuMoVTkP5oZ3gdzFmFeyLgwARZ7YYp8ZfyLMgqAmyS/94Vd8lofnYc=
X-Gm-Gg: ASbGncuH6Mu4/OLYeH5EGZUzdWMkX5ArXTHDAsAYZf4DRoQo2Xvu0XpZ6vmLa0fJHvU
	w5UD7/wrO4R8fmKXGwLKyAYcW+H8mdouhhVIPcJdOF1jrea2td2pWfFdaAimj3sdCBUfpz/JFJC
	3Npuyf+MSMxPW+9lAjmafVjwKLy4KsID8Ldp7biOowiJnLgbWqtb55iMNs5O6PV9HZeJp6/uNQi
	w5CCXogO3DOUXdU3VZxw2Oj54UM2FDcvFbTFOi4dXbUmw/faMTvHsZEUefb0+axn/mN8YEyci/w
	sHgeizT+r5nekZCHQnD/fWRERkDHoYMXEUjdxpLa1FXAE1K2rTwh7tPfLUKNLCA=
X-Google-Smtp-Source: AGHT+IHUCCXzWViw53v2z70NsQLCy9biU20BiEN5hSZXLoMpP9jMFah5HdHZWC2wYRaW+ixAC4KYsQ==
X-Received: by 2002:a05:6000:1a8f:b0:38d:e39e:ed14 with SMTP id ffacd0b85a97d-38de39ef19amr1133646f8f.25.1739203964485;
        Mon, 10 Feb 2025 08:12:44 -0800 (PST)
Received: from [127.0.1.1] (host-87-8-15-130.retail.telecomitalia.it. [87.8.15.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffcdsm146637945e9.15.2025.02.10.08.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:12:44 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v4 0/9] add support for Software mode on AD7606's iio
 backend driver
Date: Mon, 10 Feb 2025 17:10:50 +0100
Message-Id: <20250210-wip-bl-ad7606_add_backend_sw_mode-v4-0-160df18b1da7@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAolqmcC/5WNQQ7CIBAAv9JwFoNgIXryH6YhC2ztxrY0YFqbp
 n8X/YHHmcPMxjImwsyu1cYSzpQpjgXOh4r5DsYHcgqFmRSyFid54QtN3PUcgtFCWwjBOvBPHIP
 Nix1iQB6ClFALrVWrWOlMCVt6/x73pnBH+RXT+lvO6mv/qc+KC+4VoDfGC3Dm5mDtySU8+jiwZ
 t/3D7gZvSzVAAAA
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

The previous series added iio_backend mode, but the configuration for this
mode was only possible through GPIOs (Hardware mode). Here, we add support
for configuring the chip using its registers (Software mode).

The bus access is based on Angelo's ad3552 implementation, that is we have
a particular compatible for the backend (here axi-adc) version supporting
the ad7606's register writing, and the ad7606 is defined as a child node
of the backend in the devicetree. Small changes are added to make the code
a bit more straightforward to understand, and more compact.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
Co-developed-by: Angelo Dureghello <adureghello@baylibre.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Changes in v4:
- some spaces / tabs fixes,
- fix child nodes creation as done for dac,
- change usleep_range into flseep,
- use just a u32 as a value in bus access functions,
- protect bus access from concurrent access,
- Link to v3: https://lore.kernel.org/r/20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com

Changes in v3:
- add some fixes found while testing,
- general commit meessages fixes,
- codying style fixes,
- dt-bindings: add some properties as requirted,
- use iio_device_claim_direct_mode (and release),
- rename bus read/write functions with "bus" as done for ad3552r.

Changes in v2:
- Improved descriptions.
- dt-bindings: improved descriptions, added exemple and additional
  property for the custom IP.
- Reworked some macro commits to avoid changing order and associated
  diff artifacts.
- Various cleanups and formatting fixes.
- Link to v1: https://lore.kernel.org/r/20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com

---
Angelo Dureghello (3):
      iio: adc: adi-axi-adc: add struct axi_adc_info
      iio: adc: adi-axi-adc: add platform children support
      iio: adc: ad7606: protect register access

Guillaume Stols (6):
      dt-bindings: iio: dac: adi-axi-adc: add ad7606 variant
      iio: adc: ad7606: move the software mode configuration
      iio: adc: ad7606: move software functions into common file
      iio: adc: adi-axi-adc: add support for AD7606 register writing
      iio: adc: ad7606: change channel macros parameters
      iio: adc: ad7606: add support for writing registers when using backend

 .../devicetree/bindings/iio/adc/adi,axi-adc.yaml   |  70 +++++++-
 drivers/iio/adc/ad7606.c                           | 159 +++++++++++++++++--
 drivers/iio/adc/ad7606.h                           | 103 ++++++++----
 drivers/iio/adc/ad7606_bus_iface.h                 |  16 ++
 drivers/iio/adc/ad7606_par.c                       |  52 +++++-
 drivers/iio/adc/ad7606_spi.c                       | 137 +---------------
 drivers/iio/adc/adi-axi-adc.c                      | 176 +++++++++++++++++++--
 7 files changed, 516 insertions(+), 197 deletions(-)
---
base-commit: 4692f10bec7459a0baa95bdfa66a4ea740ec9e0a
change-id: 20250129-wip-bl-ad7606_add_backend_sw_mode-dd22a50663f3

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


