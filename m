Return-Path: <devicetree+bounces-97979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C260D96448C
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 14:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DF83B20E43
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2674C1AAE1A;
	Thu, 29 Aug 2024 12:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bUajZ1bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79126194C86
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724934799; cv=none; b=FnRrJIXBjsC6pKbcZ7BnNqOzqNexP4zDGPpuN2U2wt3V8xGJr/h6AnTTogTzN97BRW1QBTxvKHixX2QKPmteXF6LH5Vj8UuD3gQspiKZaoTNurtRADsoRTQukHFzMs8LhIWBD6GG7qwcNpzk1lujfPR34t/hw2MFsEiivQ73rYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724934799; c=relaxed/simple;
	bh=1omagQrEBxWt5LqMGnhblwdn+Byf50yNYRTVVNHZQIA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=m7WZQPwFWHwVjqZVJIdOqcb2d5GIr9HyVfPetegugMxPMg9LwSA+8UBz7tLk7pcv2R24qt60/zn2TOfJIPN1gkWujvN39kit7Hcv2eckY2urDRmkVEscDz9C/ty/MlGMI2Xrg3/pFEUmFkKaxTmM8Tp4NaANbqkUAqdmBiyzWgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bUajZ1bt; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3719753d365so444228f8f.2
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 05:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724934795; x=1725539595; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xkGOopWRUb40ZcUq/jCWY7FOanor2g9Nkp2Kgjs+pA8=;
        b=bUajZ1bt5PihBthNuGjyuG+yr5jnCkX0x25DiUwiRfjsSP85MJVhVx7oB9Sg4DBALO
         PkaAfKHy5SKYoUVJdRqc64CkDk0E1nRNDNhNF7vFldNPrDLQ5D1sJLOHxXreGpyG5Dy4
         9IBAa4t/Vdd4bob5irbUMlPPFTiCFH4xJSQogry4uFyoS66eTpij2h/Xdgsuh1ZgKwsz
         IyiZVnM2oC/R3Ptx/4asqtM9Vngv+YB/gB+qZdY/EN+7V6CrrNXIlChLvQ+eLg4l0552
         jl1KZ93E5SWjAWjkWGMYyOUvS5DK+i4BmkBYcJrob9UF9ygwzTuwBhqY5SZCZoQnsXZ9
         M37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724934795; x=1725539595;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xkGOopWRUb40ZcUq/jCWY7FOanor2g9Nkp2Kgjs+pA8=;
        b=B+bcBHkm3j5TOnA8mPDBnaRpo0wX+0RV/p7wseFBkn6p0NZ93wT9hZ6kXKfwinRuJg
         MvROUflYKY5+gzSBqYkByFdQiRq79YJWlhFehKQwy80XChpOVlyvxUohg+v+3EU+wdAg
         8P5nz07sgkQCm+g5vkMQQJ1LJ/9um60lWkMN7Oqv4qEQuLW8OpdqabPi4hwPJXGPVRnL
         /VfiHqYfDyuwa0QOcusxhlFzReQ8R5f3nJeWU9ehAwVi6BqR6MczW7tAgX8N4FZkVxvH
         CiLPyUvIQi8zED+SQdUr21nj8xj6lA8KreXzMiWFOwyNOytFHzYmetEquhdblVyCkxQx
         ByyA==
X-Forwarded-Encrypted: i=1; AJvYcCWyTore02bMdaAWwpNOYhateP9UTjrOIpacOXZDGgKsihlCTS0JTg/SH6A2JtJBskoIB5c7TeaOc3MS@vger.kernel.org
X-Gm-Message-State: AOJu0YzAbAbQKHoIuD6hsZjy0o9cqahXSa2urtWgq1Mo8UbCL363VMkO
	7xIJ8GpQJAABNqFHqGzCQuYtzRd84vjyU6qjbVqDrbu5Dj018AwYx+6l6EadNeE=
X-Google-Smtp-Source: AGHT+IGqNZJRXWedNV1KVSYPqiO9rTpBvV84Sdv//T4TRhrhYM7QLcqnqXzKNv1mYm4QRLxmK33m2w==
X-Received: by 2002:a5d:59a9:0:b0:35f:cd7:5ba1 with SMTP id ffacd0b85a97d-3749b585ddamr2268621f8f.60.1724934794656;
        Thu, 29 Aug 2024 05:33:14 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee9978bsm1315042f8f.49.2024.08.29.05.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 05:33:14 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [RFC PATCH 0/8] iio: dac: introducing ad3552r-axi
Date: Thu, 29 Aug 2024 14:31:58 +0200
Message-Id: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAD5q0GYC/x3MSQqAMAxA0atI1gY6ONWriItqowakSgtVEO9uc
 fkW/z8QKTBF6IsHAiWOfPgMWRYwb9avhOyyQQlViU4ZvPjEaUfrdF2rgPZmTAInSbo1s+kapyG
 3Z6CF7/87jO/7AV1IC/tnAAAA
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dlechner@baylibre.com, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

Hi, asking for comments for this patchset, that is mostly 
ready, at least feature-complete and functionally tested.

I am introducing ad3552r-axi variant, controlled from a fpga-based
AXI IP, as a platform driver, using the DAC backend. The patchset is
actually based on linux-iio, since some needed DAC backend features
was already there on that repo only, still to be merged in mainline.

Comments i would like to ask are:

- i added some devicetree bindings inside current ad3552r yaml,
  device is the same, so i wouldn't create a different yaml file.  

- if it's ok adding the bus-type property in the DAC backend:
  actually, this platform driver uses a 4 lanes parallel bus, plus
  a clock line, similar to a qspi. This to read an write registers
  and as well to send samples at double data rate. Other DAC may 
  need "parallel" or "lvds" in the future.

- adding the bus-type property vs. a boolean property vs. adding 
  a new compatible string.

- how external synchronization should be handled. Actually, i added
  2 backend calls to enable or disable this external trigger.

- is a read-only sampling-frequency useful ?

Thanks a lot for your feedbacks.

To: Lars-Peter Clausen <lars@metafoo.de>
To: Michael Hennerich <Michael.Hennerich@analog.com>
To: Nuno Sá <nuno.sa@analog.com>
To: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: dlechner@baylibre.com

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Angelo Dureghello (8):
      dt-bindings: iio: dac: ad3552r: add io-backend property
      iio: backend: extend features
      iio: backend adi-axi-dac: backend features
      dt-bindings: iio: dac: add adi axi-dac bus property
      iio: dac: ad3552r: changes to use FIELD_PREP
      iio: dac: ad3552r: extract common code (no changes in behavior intended)
      iio: dac: ad3552r: add axi platform driver
      iio: ABI: add DAC sysfs synchronous_mode parameter

 Documentation/ABI/testing/sysfs-bus-iio-dac        |   7 +
 .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   |  39 +-
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   |   9 +
 drivers/iio/dac/Kconfig                            |  11 +
 drivers/iio/dac/Makefile                           |   3 +-
 drivers/iio/dac/ad3552r-axi.c                      | 572 +++++++++++++++++++++
 drivers/iio/dac/ad3552r-common.c                   | 163 ++++++
 drivers/iio/dac/ad3552r.c                          | 394 +++-----------
 drivers/iio/dac/ad3552r.h                          | 199 +++++++
 drivers/iio/dac/adi-axi-dac.c                      | 250 ++++++++-
 drivers/iio/industrialio-backend.c                 | 151 ++++++
 include/linux/iio/backend.h                        |  24 +
 12 files changed, 1494 insertions(+), 328 deletions(-)
---
base-commit: 7ccb2c2db44572deadb795c4637273cdabbe8b66
change-id: 20240829-wip-bl-ad3552r-axi-v0-b1e379c986d3

Best regards,
-- 

  o/ QW5nZWxvIER1cmVnaGVsbG8=
   www.kernel-space.org
    e: angelo at kernel-space.org
      c: +39 388 8550663
       


