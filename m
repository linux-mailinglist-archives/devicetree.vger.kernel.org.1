Return-Path: <devicetree+bounces-94825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE86956CCC
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 16:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBF25281AE0
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 14:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9196B16CD2B;
	Mon, 19 Aug 2024 14:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="drZtc2Oy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4416CD05
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 14:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724076715; cv=none; b=M4a4dwBovHzdDh2LoVzeSlRRTFnT6R3IEzay9kD7Sr6f2GoXVgAH9ih2VxxtRUDERV8tZWIrGHFQijLeuN+jUm/MA3AFzGSXDuWch7cTF+c0Qcj43w5UuitmzIqhU3/p0gsTCeQ+XgsrVQYoFICg4lrNtUYup35lBRa669y3scA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724076715; c=relaxed/simple;
	bh=tB4PDDkW81CD/s79vLo1AJEusz61GZ1uoE/0QuJSDOk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Yxn0HbAZkY5OSquBTC5Zam+GRab5TKuuamxXQIEoRDrc0n7Ls48U5mBqmgMa9BTM75atjxCJWHCJJ/9Lks/FVZ4/WJ360srGG7pABqKljdHg8uMLDHkaaIwBzN7f7uPY9IWWYfOz4IO4HT2IlMVsTtFP3lfplQdocNdjnGfZebs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=drZtc2Oy; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-454b12cc82cso13817711cf.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 07:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724076711; x=1724681511; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=evP3x4C+fRIeDF7JfvlYtCwz/QjijRArOrvvuEB+piA=;
        b=drZtc2Oyb7n/kZmX3gqpj6rLi+cenM1O/iZVSCg7uFMlkm9L61loTX/k57yiGnm77I
         0vr9eYUz7ro8vgy8ZReha+4evzKHHOvqkmZhUtgIgtjfCq3PgZgFS3wRA6teT5YMWrCn
         jJTiJCL0S1Jq5IlxpSO3+e/8RNHH9qzOqlJv8pETsPusZ/4WWxv6pnsEEQ6z5Nf4aFw4
         z/cqIrV5X35fl5Wycxq+zZ8ZyB/gjI7aoybj2hfR7rC5CFwmLnTyp13rELIUJmktD31r
         nqw/XXMQSKpMjWXKG2ID6EuvXhqsByjQ5VFtPBuULZzxMRL741tFDu0Dhb5VaIXyK1e4
         ckBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724076711; x=1724681511;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=evP3x4C+fRIeDF7JfvlYtCwz/QjijRArOrvvuEB+piA=;
        b=G/NEK+SEeWlP0rpnKMjftcTqD7gr5ld1cDm0D0SIIFBH/iYDk5kAy1sW9X0NO7V3z0
         vgQyOinPoxQfINM7sMWYNp4oe+w0E+xAts+N4jtEWVR5KlD80pkVcoBSW2BsGBG9sr55
         RBN6nbCYKM4qbUp4uxBm2/i9huT2+KnluTGjtxF+QXXeidzt87rp8leWFAI20qqVIQQq
         YQ7uzs5MJkpw9Pe/o56G3u8JKcMWbCdwiEQCj9ybc3hO3BEQr65EYDEOLH4h6xCvcDos
         wCe38/TKw9kp/OJ1OuFSrG+z/7YVquzL7F5J2G+eU3glb5wIDNzjzqQAqL2oVTbMvo+y
         1vWg==
X-Forwarded-Encrypted: i=1; AJvYcCX+2E6Tx8MTy9RdKv6ZeZkFlB4oZqwtOEH4Znyp72yTAveQB3WgEPb6Ui7BYItW3F8Wv/sudscvEpYQnTUuZ0eNgQMg1PUwle1nVA==
X-Gm-Message-State: AOJu0YybiTLVLPhTPb/zEA+5gf87vn+4oC6sR+5Nq4wQLOBeQhTXicSy
	3yYDoDzE2n3aS8cJrTgYxnuACS9tw8FFUhyuWi1M8zIV/jjFpitNDWWeKGstk4A=
X-Google-Smtp-Source: AGHT+IH11j5ljDHQiPGDFjO8eAoF+5qTzbeZIySkNqlpz9g3PB17Frcm6NCKtRTZS0aq6PrTS47cQA==
X-Received: by 2002:ac8:45ce:0:b0:453:7706:759a with SMTP id d75a77b69052e-4537706a18dmr98282571cf.3.1724076710842;
        Mon, 19 Aug 2024 07:11:50 -0700 (PDT)
Received: from [127.0.1.1] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-454c0186bf4sm17630871cf.83.2024.08.19.07.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 07:11:50 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v3 0/3] iio: adc: add new ad7625 driver
Date: Mon, 19 Aug 2024 10:11:42 -0400
Message-Id: <20240819-ad7625_r1-v3-0-75d5217c76b5@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ5Sw2YC/13M0QqCMBTG8VeRXbfYZnOzq94jIo56lgfKxRYjE
 d+9KUTS5Xc4/9/EIgbCyI7FxAImiuSHPMpdwdoehhty6vJmSqiDMKXg0JlK6WuQvBKdNAjK1tq
 y/P8M6Oi9WudL3j3Flw/jSie5XL+K3ChJ8oxKdOg0KGjqUwPjnZqA+9Y/2AIl9YutqLexyrGzG
 g20tpRa/MXzPH8AABwNluIAAAA=
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 David Lechner <dlechner@baylibre.com>, 
 Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Trevor Gamblin <tgamblin@baylibre.com>
X-Mailer: b4 0.14.1

This series adds a new driver for the Analog Devices Inc. AD7625,
AD7626, AD7960, and AD7961. These chips are part of a family of
LVDS-based SAR ADCs. The initial driver implementation does not support
the devices' self-clocked mode, although that can be added later.

The devices make use of two offset PWM signals, one to trigger
conversions and the other as a burst signal for transferring data to the
host. These rely on the new PWM waveform functionality being
reviewed in [1] and also available at [2].

This work is being done by BayLibre and on behalf of Analog Devices
Inc., hence the maintainers are @analog.com.

Special thanks to David Lechner for his guidance and reviews.

[1]: https://lore.kernel.org/linux-pwm/cover.1722261050.git.u.kleine-koenig@baylibre.com
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git/log/?h=pwm/chardev

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
Changes in v3:
- Link to v2: https://lore.kernel.org/r/20240809-ad7625_r1-v2-0-f85e7ac83150@baylibre.com
  
  [PATCH 1/3]
  - Add gpio bindings header, en0-gpios and en1-gpios to binding example
  - Remove unnecessary comments

  [PATCH 2/3]
  - No change

  [PATCH 3/3]
  - No change

Changes in v2:
- Link to v1 (marked as RFC): https://lore.kernel.org/r/20240731-ad7625_r1-v1-0-a1efef5a2ab9@baylibre.com
- Include link to required PWM patch series in cover letter (missing before)
- Include new link to the pwm/chardev branch of Uwe's kernel tree
  
  [PATCH 1/3]
  - Rework dt bindings to be compliant using make dt_binding_check
  - Add "adi,no-dco" flag to address indication of how DCO lines are
    configured
  - Fix binding patch message
  - Remove chip packaging info from binding description
  - Move comments around to be clearer

  [PATCH 2/3]
  - Remove ad7625_pwm_disable(), call pwm_disable() directly
  - Add ad7625_buffer_preenable() and ad7625_buffer_postdisable()
    functions
  - Add devm_ad7625_regulator_setup() function, move all regulator logic
    to it, consolidate the comment blocks related to it above
  - Add have_refin flag in ad7625_state struct
  - Add pwm_waveform structs to ad7625_state struct for storing
    requested waveform characteristics
  - Refactor ad7625_set_sampling_freq() to set the pwm_waveform struct
    values in ad7625_state, limiting PWM enable/disable to
    preenable/postdisable functions
  - Remove redundant dev_err_probe() after devm_ad7625_pwm_get()
  - Use device_property_read_bool() instead of device_property_present()
  - General alignment and line wrapping fixes

  [PATCH 3/3]
  - No change

---
Trevor Gamblin (3):
      dt-bindings: iio: adc: add AD762x/AD796x ADCs
      iio: adc: ad7625: add driver
      docs: iio: new docs for ad7625 driver

 .../devicetree/bindings/iio/adc/adi,ad7625.yaml    | 176 ++++++
 Documentation/iio/ad7625.rst                       |  91 +++
 MAINTAINERS                                        |  11 +
 drivers/iio/adc/Kconfig                            |  15 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7625.c                           | 688 +++++++++++++++++++++
 6 files changed, 982 insertions(+)
---
base-commit: ac6a258892793f0a255fe7084ec2b612131c67fc
change-id: 20240730-ad7625_r1-60d17ea28958

Best regards,
-- 
Trevor Gamblin <tgamblin@baylibre.com>


