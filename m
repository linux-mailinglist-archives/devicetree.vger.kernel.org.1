Return-Path: <devicetree+bounces-85111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EED2D92EF6A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4E7D2857EA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 19:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7686A16EB6E;
	Thu, 11 Jul 2024 19:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v6opzFaS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AE212FF7B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 19:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720725358; cv=none; b=bSusfc+nfs0vJMbz8RkE74bu+8QJInyH7kvFexCMDkdTvFKTkno60GhTQAUa/wJRsDgexwIC39OJth1nkOWxPTw2gCsjQ2aQ42eYWqIG7TdQ45RPIoY9yzhuVy8TX4pfsxbsuwdarbt3GCwtXBUP75x5Vis/Ef0wVxzDYlm98XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720725358; c=relaxed/simple;
	bh=iuCVad2848Jv/Km4IpfeyQWeavoq/8mGfyxqEScqk+k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HCa2lnJhtP7eWvbnzLxCOzDOoz1FJIPFwqEElhgBaSsl+XPiBS+KzT95CQRh7mSKv01NnhNnSBMJOGO+p42SSDuo5IKrTKCC5gj+u8259M8lzuYKF7kFIWFOk5++0ZcWcPxf+CFt7h/KJhqoouIhnRLOs9eIYdQauMrjaL8vVF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v6opzFaS; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3d92e65752dso1047490b6e.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720725355; x=1721330155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/tX9lV8rjzYpYKuTiTA033E7YCg3xzMQgQWZkMLTCRg=;
        b=v6opzFaS59l3lbu46/iYmNCPbOS6Zd3MkPXaj1WhwzzEthId44GySo+/K71qPzSh+c
         2oLNS/IrvWeGVIPIPAX3LOLY/vBx1Iv9PXANz9moCApQM6swIML2WO/nZLG1+rhwdjo1
         f7VPd/Yl2CpAAeSoEfE/9wWmqBvqaVnaSZmFEC0RkIVW0sU3Fh4usJcTYnJfpMTcLhpw
         keL3yiAaHslgs/4hO/s7Wf19TWWjZ0TaZ8uFNahvX17ASdgPdROAyBgo6gBkUSXDu5fq
         dG21+/GyxbDIuFJl/PTtzlb9XK/K/TwQsJ4zhfgcrR2RYuRChnyW0GtQdRtQL+tZgUra
         vCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720725355; x=1721330155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/tX9lV8rjzYpYKuTiTA033E7YCg3xzMQgQWZkMLTCRg=;
        b=mJGnAbz9J1FDBd7NegE5yEWD+W55uORPwJjMHYlClO+yv1xoLUEFosKKJToPKNkRr4
         fD5daz1BcY5L8k8KchSgLw2J/4qYhgasDfT58QrOfUg/o6pyJC0MdVe4ykmSlWNluzTy
         TuYABJ3Pi7zA/JPcxo9WoOn4SkxF2LmRpvrkgp1ynr0O72/qXrSUvUT80vDXXsR5DBCJ
         HqjoMF+gSdkvmh4sOgnNQr402dbu8OwSN+SfpOt0mtCSfIgMW8OIOq2bfT1ELmlyqBqX
         WgNqcNECXb/DZ9DDxaLx2zKwK7RU4yt1/Ea3WVoQS8k/5ICKS5c9FcZ2W1R2GDBwdSfJ
         ZRrA==
X-Forwarded-Encrypted: i=1; AJvYcCXF9g80ce1C/wyWCh+o/OdE+1q2y/0jvBrpEWLjvKyX3IFBSefujnUb4aYwNngtW/rBKQmJu7Cb5j8IEjubawE/zc8f4hi6tCV1ew==
X-Gm-Message-State: AOJu0YzZXJ8Lz4zziVFmOAfxGqFq34maoFlyJVBQbPpwhIPorPaBxLgE
	v7vI/MMLl8p9w74pxtqzbZn3dLUVE1omvwhDR9DQzomVS8XflGfxzOmfFZcC8S8=
X-Google-Smtp-Source: AGHT+IGj+UE8G0HVTDHdCUbl29prb4ONTWaT9uo/5Qz8erSSEfpsmGILgj09Cxg2uVRGJmFetd2qXw==
X-Received: by 2002:a05:6871:ca07:b0:25e:b8ca:4b5 with SMTP id 586e51a60fabf-2605273479fmr252200fac.4.1720725354974;
        Thu, 11 Jul 2024 12:15:54 -0700 (PDT)
Received: from localhost.localdomain (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25eaa083bbcsm1826670fac.26.2024.07.11.12.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 12:15:54 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Ramona Gradinariu <ramona.gradinariu@analog.com>
Subject: [PATCH v4 0/3] iio: adc: ad4695: new driver for AD4695 and similar ADCs
Date: Thu, 11 Jul 2024 14:15:40 -0500
Message-ID: <20240711-iio-adc-ad4695-v4-0-c31621113b57@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.14.0
Content-Transfer-Encoding: 8bit

This is adding DT bindings and a new driver for the AD4695 and similar
devices. The plan is to implement quite a few more features, but this
is a complex chip so we're spreading out the work. To start with, we
have a reasonably complete DT binding and a very basic driver.

This work is being done in collaboration with Analog Devices Inc.,
hence they listed as maintainers rather than me. The code has been
tested on a ZedBoard with an EVAL-AD4696FMCZ using the internal LDO,
an external reference and a variety of input channel configurations.

---
Changes in v4:
* Link to v3: https://lore.kernel.org/r/20240624-iio-adc-ad4695-v3-0-a22c302f06bf@baylibre.com

  [PATCH 1/3]
  * Picked up Conor's reviewed-by tag.

  [PATCH 2/3]
  * moved dt-bindings #include
  * don't initialize mask/val to 0
  * remove xfer[0].bits_per_word = 8;
  * reduce duplicate code in ad4695_read_one_sample()
  * pass st instead of indio_dev to ad4695_parse_channel_cfg()

  [PATCH 3/3]
  * none

Changes in v3:
* Dropped "dt-bindings: iio: adc: add common-mode-channel dependency"
  patch.
* Link to v2: https://lore.kernel.org/r/20240617-iio-adc-ad4695-v2-0-63ef6583f25d@baylibre.com

  [PATCH 1/3]
  * Change interrupts to be per pin instead of per signal.
  * Drop diff-channels and single-channel properties.
  * Odd numbered pins added to common-mode-channel property enum.
  * REFGND and COM values changed to avoid confusion with pin numbers.
  * Add inX-supply properties for odd numbed input pins.

  [PATCH 2/3]
  * always include all channels, not just ones customized in DT
  * rework channel fwnode parsing for DT changes

  [PATCH 3/3]
  * Rework DT examples for DT bindings changes

Changes in v2:
* Link to v1: https://lore.kernel.org/r/20240612-iio-adc-ad4695-v1-0-6a4ed251fc86@baylibre.com

  [PATCH 1/4]
  * New patch
  * Depends on recently applied patch
    https://lore.kernel.org/linux-iio/20240607-ad4111-v7-1-97e3855900a0@analog.com/

  [PATCH 2/4]
  * Drop *-wlcsp compatible strings
  * Don't use fallback compatible strings
  * Reword supply descriptions
  * Use standard channel properties instead of adi,pin-pairing
  * Fix unnecessary | character
  * Fix missing blank line
  * Add header file with common mode channel macros

  [PATCH 3/4]
  * rework register definition macros
  * remove code structure comments at top level
  * remove simple wrapper functions around regmap functions
  * rework channel fwnode parsing for DT changes
  * fix missing return value check

  [PATCH 4/4]
  * Rework DT examples for DT bindings changes
  * Fix wrong MAINTAINERS update

---
David Lechner (3):
      dt-bindings: iio: adc: add AD4695 and similar ADCs
      iio: adc: ad4695: Add driver for AD4695 and similar ADCs
      Documentation: iio: Document ad4695 driver

 .../devicetree/bindings/iio/adc/adi,ad4695.yaml    | 256 ++++++++
 Documentation/iio/ad4695.rst                       | 155 +++++
 Documentation/iio/index.rst                        |   1 +
 MAINTAINERS                                        |  12 +
 drivers/iio/adc/Kconfig                            |  11 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad4695.c                           | 719 +++++++++++++++++++++
 include/dt-bindings/iio/adi,ad4695.h               |   9 +
 8 files changed, 1164 insertions(+)
---
base-commit: 986da024b99a72e64f6bdb3f3f0e52af024b1f50
change-id: 20240517-iio-adc-ad4695-ef72b2a2cf88

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


