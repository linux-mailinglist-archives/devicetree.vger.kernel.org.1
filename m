Return-Path: <devicetree+bounces-229045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE588BF35AB
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8663C4E1E7B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CE92D238D;
	Mon, 20 Oct 2025 20:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LI0FsbUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A790F286D63
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760991447; cv=none; b=PbMYTnYFx90nb4dahGS1y4vch03I4jhdcgvdHzBgAZ+MGZDZDSqHxOYQV7Ib3omkCV/+f3nqTEAarrjDVa1uPT5+/piPcsBAslzu06AjJpoehxwflwh0A8akU0nBsE/goAn1OWyTsBkOAIhURcwbaAOQt8aw3ALrBnHSc/2G7Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760991447; c=relaxed/simple;
	bh=eir2cELdE6ctxydT2A/YX9aeKQVEZfkkSYcoewgfQYE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OkBAuM/yFHSpx8zFPMDWKb8OvpyWx+urXuZezKC5HXllNIhK/dyexym5P1hK/FuWPjM3iJ8EniVNsExoze2/JJzDZ1DOhI8rJ24kbe585T3jU0FMHQu797ewaJloZOiJ8Mau79P/EHQj4CXlQm2MwTIye6i+5dB6zI0jG4HcxxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LI0FsbUI; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7810289cd4bso4586784b3a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760991445; x=1761596245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PXI3yOz2/6xxfRvTcNICPRU7XaRQOsBCnm/A8qDs1ro=;
        b=LI0FsbUIR5lqNzvLvL+OOd10gNBZSSLWxu9VYAcR6XkDcw46yo652LUjRhZDbswG73
         /pigvx1tqZ3CGKTsMkULYPdO7keEBlIzOo+ax7OnhFjHeG50AuQvFKYVRZPL9pDxLX8V
         x7xUtKIu+gmagY+spPosHu8t0OjArHV4FFGQHPCnIaH7p8fnabOy+eHeT5ovMi5BXJUj
         ZT2fj+fCJJXSPahOZEWbxEb+zFocOZ2zNuJ4NHzKqH2QPXHAogHy8KkLumkkI64tNya6
         hCUIOD8vBe6Bzj0U3tAYmXgfSCrAtirIqL2hP0ge+J1HqI+mhR9k1zOAtNUcOBfPAA6a
         bLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760991445; x=1761596245;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PXI3yOz2/6xxfRvTcNICPRU7XaRQOsBCnm/A8qDs1ro=;
        b=qHtSaqBVhSYqToD5EIijR/o9EHdNRxtE6Cgo8xREILNE5W4aqqb5DlLud/iVyMziFs
         V/GbLM4FiOptbUTRWq5wVNLZ2Mew6y5s5tLAyR5cNNt186VaakuIbx8nD+AooRkHFn0+
         xNjpQnWuMbtgFvfzKPPnBkzrAF4ulnuAmwDX42vPVP2601lhA3mDcRhXY82oPssT2GHf
         Nc3TlKHt6DdvHbdoexmF/1KIUtGQCrr0XpFP5m6u9WYcDxhacM9Sxv5bLsGCb9NW6XJj
         KjxRrQQWzC9G3T1+w+zx9L1rFcD2Ajv4yVD23QDsRgJ1ZiH3+BOWn/aGJxQ7JfsHiclN
         w7ag==
X-Forwarded-Encrypted: i=1; AJvYcCUMd32K/ZvcGDbeJaMWxPV1WN4cie7qP7WQEWcbJ0cmpsi/2Ex+Hvz3YEDDBzz80pz7HlcQ2YxVZDMy@vger.kernel.org
X-Gm-Message-State: AOJu0YwwF7jGpFgbIvlAphxDhLBhc8MwXY7Ab2LRqXyo2jrgQzu3Wcc+
	Z1OC9nIN/FHu8v6arLprT98cmUUvabq5th+wShqebcFqBrud/KGZ+6kE
X-Gm-Gg: ASbGncuz/C6vh/gkYFMr2ICwiESjbXrRsjWq4p6rbaBWeZp9LsMNk/Cdhmwon9oCIzw
	k8N3iFNxRBYc0NaGSjmUc2POIBrSIkW/ZCUX510l5oc9HCU0/1edHTK9sHnmGBB0fDeKeWHVSiF
	V3n9YCWGgHz+qeP/zBb7OxXdrGtsXbP1vNjGRwtq32egnG0jpCNKzh6JSSzZyuWFedpdWpX7dRf
	LIcvKCjHYGNUrqVNiLVXrJHpac058x9I6QlDFHQeD/23jp43FwUZ3BwXjsQsKcNHp475r7SrOJL
	q7CHBV4uTX3N2jVRe1S6ME+PblnoWlaPrTOJ9JY/nGuOmjaL10VunMCBat6t8VTz/+51+h6keMX
	S2ux/UhufBjb80YoOvZvttXfFX6zXciP5oXOpA69gDftfdmr6BEb64nAs4U1g3Hs/35BaIPvWE/
	TwLA9N6sVtNxI=
X-Google-Smtp-Source: AGHT+IH2Vu7r+p87tUPq6VF6+nbRh0pDhjMUf60C3OqTCJquCWzcP76GusrxnipnDCr3SE1kNgrVqQ==
X-Received: by 2002:a05:6a00:2e1f:b0:78a:eff2:6c0 with SMTP id d2e1a72fcca58-7a220b1dd00mr16143036b3a.25.1760991444707;
        Mon, 20 Oct 2025 13:17:24 -0700 (PDT)
Received: from pop-os.. ([106.222.200.146])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a23010df83sm9104263b3a.59.2025.10.20.13.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 13:17:24 -0700 (PDT)
From: Aditya Dutt <duttaditya18@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Frank Zago <frank@zago.net>
Cc: Aditya Dutt <duttaditya18@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 0/2] New driver for ams AS5600 Position Sensor
Date: Tue, 21 Oct 2025 01:46:51 +0530
Message-Id: <20251020201653.86181-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the ams AS5600 Position Sensor.

The AS5600 is a Hall-based rotary magnetic position sensor using
planar sensors that convert the magnetic field component perpendicular
to the surface of the chip into a voltage, or a numerical value
available through i2c.

The driver registers the chip as an IIO_ANGL device.
It also exposes the raw registers through debugfs for further configuration.

Datasheet: https://ams-osram.com/products/sensor-solutions/position-sensors/ams-as5600-position-sensor
Co-developed-by: Frank Zago <frank@zago.net> 
Signed-off-by: Frank Zago <frank@zago.net>
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---

This patch is based on the work done by Frank Zago:
v2: https://lore.kernel.org/all/20211225175353.4254-1-frank@zago.net/
v1: https://lore.kernel.org/all/20211216202651.120172-1-frank@zago.net/

I have done the changes suggested by Jonathan Cameron in the follow-ups.

I picked this up because there has been no progress on this since 2021 and
Frank Zago has previously stated he isn't trying to upstream his drivers:
https://lore.kernel.org/all/e052d872-6de2-42f4-8b36-d1e2f8359624@zago.net/

Currently, I have not added support for:
- OUT (PWM)
- PGO (GPIO used for OTP)
- DIR (GPIO used for clockwise/anti-clockwise detection)

I have tested this on a Beaglebone Black with as5600 support compiled as a
kernel module (m) as well as in-kernel (y).

changes since Frank Zago's v2:
- direct register access in debugfs is now raw register access without any
  mappings as suggested by Jonathan Cameron
- added device tree support and bindings
- in as5600_probe(), reading ZPOS and MPOS should be a word not a byte
- removed "Read then write" behavior in as5600_reg_access_write() since
  register access is now raw, reading and manipulating the correct bits and
  writing is now the duty of userspace.
- changed "Datasheet" links to the product page instead of the direct PDF
  since the PDF links are not stable


Aditya Dutt (2):
  dt-bindings: iio: position: Add ams AS5600 Position Sensor
  iio: position: Add support for ams AS5600 angle sensor

 .../bindings/iio/position/ams,as5600.yaml     |  42 ++
 Documentation/iio/as5600.rst                  |  84 ++++
 Documentation/iio/index.rst                   |   1 +
 MAINTAINERS                                   |   8 +
 drivers/iio/position/Kconfig                  |  10 +
 drivers/iio/position/Makefile                 |   1 +
 drivers/iio/position/as5600.c                 | 373 ++++++++++++++++++
 7 files changed, 519 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/position/ams,as5600.yaml
 create mode 100644 Documentation/iio/as5600.rst
 create mode 100644 drivers/iio/position/as5600.c

-- 
2.34.1


