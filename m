Return-Path: <devicetree+bounces-93888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBE9952DE8
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 14:12:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 936B61C226CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 12:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CBDB17BECF;
	Thu, 15 Aug 2024 12:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RegdssjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3C1AC8A2
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 12:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723723930; cv=none; b=bbBWflU6eswWMQrW/WeBzgXnLLr+3NoIOXaQ23DoLiDoL2iCNjsoHxxutbRU/uvz/4MD04NNbIu5pTvTGFACnyJw+u9HWhcJM23yPiikc7ksZ6agbk4WVMgDMttLhyTHKRewRuBsJXxZGgwpwMSohaQsxhQtU6v4FD+pi82YPSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723723930; c=relaxed/simple;
	bh=Us88Shtkd7A1R1s6R1VBRQRr7IdSygdzcSsx6VJC0MM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iq6S1WZ1FNFgaAOP4g8C87y+yjYjZR1wh3xKM7nQ57elxsox+BG8Tdre/ysxT4fcsJtGTM//cYewT0Rn44Xq0RmFX0WHz24cdObiIusfOoLFb46CNvBexLaTBtFJ9UnQpu73Xnmq7A+DH7P8zazZiZV8hi2pw6SxoTxwpIKQpsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RegdssjB; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-36d2a601c31so451034f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 05:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723723924; x=1724328724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B6b2zbLM/Tp1Zgk0fNHIy17cVxQgx0rBqolcnQ+5/cI=;
        b=RegdssjB8oOke8IZynsMt96IpUxg1eVKmYKKTKE7BDIHnBWEduEoLm9qhFDMZdeQYW
         X2lfh30R6XOpbbnKC03wdLle766LDokCxvjn3QEbhql+3gPcLY6g/TLg1ursQxVhuVjf
         kd7jTX1w4Y3LTJizaPCJYLvSV2bEhtrQEQE5TBM21o7CuphKr4vmrEP3SvYRB2vHaaZM
         bbhSYeO/Z3V6wrV9hmqwl66Hkc5Yfom3vQnRaC9arhCCgMf4MagQ77IqPB86rN1O1pO/
         R0gGVupbYqOF4ZRIEq4tLUPM/R3JkS8G6LJUX0NfNSN+9rigoc2FVCFo6k2NDuroHWSm
         O0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723723924; x=1724328724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B6b2zbLM/Tp1Zgk0fNHIy17cVxQgx0rBqolcnQ+5/cI=;
        b=R3qG/yX+GmsvPw+xiVGpCq39lOl3Qv20nNcDq7AiHcaY9Z0/6VMOeYIizblda5wOni
         mF7Eosy4d+bPzOvhD07zQBmzz2WkVimMBkhJh5q8uDdLjGwXfxnUUP77wmQVdD6J8QNT
         sCSnyU7OtC0G/6HBh0Z+aKSFZ9oIDHHwC3Al1qtmYRqXuaOGUjPG05XEnwIzrTML4p7c
         lytav9bgFqTXDT+oQXORcp5o+8U2CN35GtyjTI6uIhtlVBj3YLuRBMSHXK0JwiAnNTSF
         UIqTeAdzi4LP43zqEhc7iVhzC3DFgrABvb8H3jwtVj/NYqO8kAobjkKBH3LQoR1iScTf
         3g8Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/MubwnzQIL0nPdUkogZM6JOtXvu8oJYafVT1FB8nPcXuhdi5hTCjeFn/BctItBs1wk3MOFbHHA1SC5j66n6tXU0BW0lbrjPZmsQ==
X-Gm-Message-State: AOJu0YyokWWBOKaTEBuhIBUuvV4LWtKiWQoLQDUFRAGKnqN6bvjZQ7/E
	ntqtjwrJrNoMY8FHc20jGFLLxdAoCaKeY7KyVZRIo+wao8KilUqmfQQGhH/hgtQ=
X-Google-Smtp-Source: AGHT+IGGbmDLyMbLzqjs4KjegU7nHsA9v7FA6+8m2rxRuRBMQ01O93ZYfORFa2jKMn4eELFwot9xXg==
X-Received: by 2002:a5d:5c88:0:b0:371:8277:6649 with SMTP id ffacd0b85a97d-37182776782mr2063758f8f.2.1723723923878;
        Thu, 15 Aug 2024 05:12:03 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189897926sm1365082f8f.87.2024.08.15.05.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 05:12:03 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Subject: [PATCH 0/8] Add iio backend compatibility for ad7606
Date: Thu, 15 Aug 2024 12:11:54 +0000
Message-Id: <20240815-ad7606_add_iio_backend_support-v1-0-cea3e11b1aa4@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIvwvWYC/5WNO27DMBAFryKwDgkufyuryj0CQ6DItULI+oSUj
 ASG7x7FKlME6d68YubOCuVEhTXVnWW6pZLmaQd4qVh491NPPMWdmZLKSFSW+4hOutbH2KY0t50
 PA02xLduyzHnlwUjQ0np3UobtkiXTJX0+A2/ngzN9bHtnPU42Uin+2WmqoyKtAjBWCQCLJ4dc8
 U0MV0oT8WGmKfWvnf+6pi6TCPP4k/ktAQUItQIBBmWt9T8lYb5RFoAKpJE1WtGnVfwl6Hwhvu8
 xrU2FwUdwOuhT6JxRFG2NURN1Gr11GomkQiMv7Px4fAOT39QdhwEAAA==
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 20240705211452.1157967-2-u.kleine-koenig@baylibre.com, 
 20240712171821.1470833-2-u.kleine-koenig@baylibre.com, 
 cover.1721040875.git.u.kleine-koenig@baylibre.com, aardelean@baylibre.com
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1723723923; l=4428;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=Us88Shtkd7A1R1s6R1VBRQRr7IdSygdzcSsx6VJC0MM=;
 b=Ynl+ACj13W8GI6QAHhXWja2h5+tS9oSA3WFsW85NRdCIu5pJENDwU3D3nnu8T5VLi3Q4nh8Ti
 yaFta/5OGDYD7bj42YdETbF1veWmNalgx681cWt3SAgz1K8FbH/BfIo
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

This series aims to add iio backend support for AD7606X ADCs.

In a nutshell, iio backend is a paradigm to shift the logic establishing
the connexion between iio buffers and backend buffers into the backend's
driver.  This provides a more stable programming interface to the driver
developers, and give more flexibility in the way the hardware communicates.

The support will be first added on AD7606B, and on next patches AD7606C16
and AD7606C18 will be added.  The series have been tested on a Zedboard,
using the latest HDL available, i.e
https://github.com/analogdevicesinc/hdl/commit/7d0a4cee1b5fa403f175af513d7eb804c3bd75d0
and an AD7606B FMCZ EKV.  This HDL handles both the conversion trigger
(through a PWM), and the end of conversion interruption, and is compatible
with axi-adc, which is "iio-backendable".

More information about this HDL design can be found at:
https://wiki.analog.com/resources/eval/user-guides/ad7606x-fmc/hdl

The support is thus separated in two parts:

- PWM support was first added.  My first intention was to make it available
  for any version of the driver, but the time required to handle the
  interruption is not neglectable, and I saw drifts that would eventually
  cause an overlapping SPI read with a new conversion trigger, whith
  catastrphic consequences. To mitigate this, CRC check must be
  implemented, but indeed increasing the samplerate causes more sample to
  be lost.  Therefore, I decided to only allow PWM for iio-backend
  powered device as a first intention, leaving open the possibility to
  add the general compatibility afterwards.

- IIO backend support was added: Once the PWM support was ready, the driver
  can be extended to iio-backend. The iio-backend powered version of the
  driver is a platform driver, and an exemple devicetree node is available
  in the bindings.

The following features will be added in subsequent patch series:
 - software mode for iio backend
 - 18 bits mode (AD7606C18)
 - single read (IIO_CHAN_READ_RAW)

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
Guillaume Stols (8):
      dt-bindings: iio: adc: ad7606: Make corrections on spi conditions
      dt-bindings: iio: adc: ad7606: Add iio backend bindings
      Documentation: iio: Document ad7606 driver
      pwm: Export pwm_get_state_hw
      platform: add platform_get_device_match_data() helper
      iio: adc: ad7606: Add PWM support for conversion trigger
      iio: adc: ad7606: Switch to xxx_get_device_match_data
      iio:adc:ad7606: Add iio-backend support

 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |  90 ++++-
 Documentation/iio/ad7606.rst                       | 142 ++++++++
 drivers/base/platform.c                            |  12 +
 drivers/iio/adc/Kconfig                            |   3 +-
 drivers/iio/adc/ad7606.c                           | 363 +++++++++++++--------
 drivers/iio/adc/ad7606.h                           | 151 ++++++++-
 drivers/iio/adc/ad7606_par.c                       | 120 ++++++-
 drivers/iio/adc/ad7606_spi.c                       |  31 +-
 drivers/pwm/core.c                                 |   3 +-
 include/linux/platform_device.h                    |   1 +
 include/linux/pwm.h                                |   1 +
 11 files changed, 733 insertions(+), 184 deletions(-)
---
base-commit: 7cad163c39cb642ed587d3eeb37a5637ee02740f
change-id: 20240725-ad7606_add_iio_backend_support-c401305a6924
prerequisite-message-id: 20240705211452.1157967-2-u.kleine-koenig@baylibre.com
prerequisite-patch-id: 0e21153cd012f41ba9db52357fd08219af53e26c
prerequisite-message-id: 20240712171821.1470833-2-u.kleine-koenig@baylibre.com
prerequisite-patch-id: b22c91bbc4e3412f8e7e1f796ed18570ae021c96
prerequisite-message-id: cover.1721040875.git.u.kleine-koenig@baylibre.com
prerequisite-patch-id: bfc36d041b9e5d417c6b18268dd91171d627d04e
prerequisite-patch-id: adec4b066442de64275ebc3bd310ebaea99a0e8d
prerequisite-patch-id: b536b9607ae40bd58f3e56c4ccd304b7880b5b90
prerequisite-patch-id: fe43e064fe174b830d5a11f83e3cd7252089820e
prerequisite-patch-id: a1cd565094d86ff473724db1fd6dbb61aca996dd
prerequisite-patch-id: d7b5d697839f0a6cea0aa37810df4d02a7762ead
prerequisite-patch-id: e86302e513cfdf80831da4d79a7a950eecf7c557
prerequisite-patch-id: 05b25465694c5640e42e67d2059e84f34e259670

Best regards,
-- 
Guillaume Stols <gstols@baylibre.com>


