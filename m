Return-Path: <devicetree+bounces-46827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB83B86AF05
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C30D2812FA
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 12:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EAD33BBD2;
	Wed, 28 Feb 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="ML/5MtxH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733A873526
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 12:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709123063; cv=none; b=PbD2miWhcJLUnhOSyITt1jmetjjuOIm8N4bZiBsA7ERNJCmKmLNaDR68iahOTvGW6Z1Bzdg6459MEylCdkdSPHMXaDkpxoCJkCMo1F6u6/A6wv/V8jemz3/tCz26NpSFfwAsr9gUK4Td8YjdiqvzjzKM6fMUPybXOEdE0Us+Th8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709123063; c=relaxed/simple;
	bh=joEzw6L4gQcaEyZ7yJHfEykF8e8qp/lQkmUXVPfflHo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bq7IQMwWXfATtVpu5sQYkcE5usEj+UIzR8uC4VSOigHLu7yVVtzVdrM0WoG5kBESvY0EvxjQnZqVlb/c1zyMOuOtyrsn/aePBll0sdZIBYXgvIkqsb9CheeeETqSGuBC0uFeiUIxHY5bUVspDMVuf4VP9nJHyGfQit+0VQfy+Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=ML/5MtxH; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e46dcd8feaso2008371b3a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 04:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709123061; x=1709727861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EbgiGghg9niKNmOmqpQ6Q2ZDubPKX9sHm9zFo/AG5vE=;
        b=ML/5MtxHBbtMxukqZSoxYx5e1PK7D7P81TyHRsrcxEgLhopWAZWuyEuSk8prsRk3G2
         RGH7q+dklfPTTasTYFjkUVBuY+mHEp3Pa1p1NjpQ23Y+/TTAaM+QUIB556Xp3kOkSisP
         GYhqO4toQjfbzUbRFJSse1iRlAp1z+V5UQwQK4Q2R8E3dGl0qVqipXEI+p15Eb411i5F
         dQNw7MgoH5R4lUpIMlJQMAlloMiWecXKIHnKWWWOn/067lfN0KHmKG74QA2AfnZknmsE
         6y2fP8sZLATY0L815RSOx5KwzXo3isW3x1fENitSZE078ON80XueMLauISLdy5UHJEsF
         4TRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709123061; x=1709727861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EbgiGghg9niKNmOmqpQ6Q2ZDubPKX9sHm9zFo/AG5vE=;
        b=cqV8iUpUMsNZ1ZvCyAOk71rkaTsCvW6bXMeVTH4Sd6Vxu5ubCu915xidN1RNfQyC3q
         lSV09RIXaIlIsBKj4bFJJmEEdByI2KAh6qdVWtNXAQH7hJGv39RPpqpZFu+VKsT2xSP/
         yD6MHwHY3ub8BERkKBgGMPD6ledevxn9x5B/mHdNl0FoTV296+wNEmW/pr6Gonxm1Dmb
         Q3yCAgMuJy7Vi2T2RItO/JLJVd0FQy9QQrCK4Ge+spYWxaMipCe7xAKBeSlasEurB9/D
         boIJR+ZGiTCPTky0mNDFWnutG7bimXh4wKAz1RVM2Ni6p+YKQ5EIGy1WIWTAz2CYSx/8
         HEBg==
X-Forwarded-Encrypted: i=1; AJvYcCVSdvO8IWkIdGdka165jpHlhLs8PRl34a4g9mh3PFknN8K0C9sT8QTUMlD4mkUJitzIG41q0jDhZ6f96bV8SJb4p44Fp3H0/vofAA==
X-Gm-Message-State: AOJu0YyvgaPtDGOdwLuJcjr3zaiHzfGyKOeJ7lj5+yhzwwG0n8PezGGh
	EHw3wQ7pVGaqEH89wBRf23jrQN41dW12dW93UVExKGZoCTDu0LZ9UtFpQ7YZXDM=
X-Google-Smtp-Source: AGHT+IE5erscRUsxmOUjGl2sHC3pR5U8qf0CYePi7xxhhtGz+q2H7XXw98QOLR8P+9w9elldTgoK5Q==
X-Received: by 2002:a05:6a00:99d:b0:6e5:34a1:fa51 with SMTP id u29-20020a056a00099d00b006e534a1fa51mr10113368pfg.34.1709123060599;
        Wed, 28 Feb 2024 04:24:20 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id m3-20020a62f203000000b006dde0724247sm7857587pfh.149.2024.02.28.04.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 04:24:20 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/5] Support for Avago APDS9306 Ambient Light Sensor
Date: Wed, 28 Feb 2024 22:54:03 +1030
Message-Id: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support for Avago APDS9306 Ambient Light Sensor.

Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor.
It has two channels - ALS and CLEAR. The ALS (Ambient Light Sensor)
channel approximates the response of the human-eye providing direct
read out where the output count is proportional to ambient light levels.
It is internally temperature compensated and rejects 50Hz and 60Hz flicker
caused by artificial light sources. Hardware interrupt configuration is
optional. It is a low power device with 20 bit resolution and has 
configurable adaptive interrupt mode and interrupt persistence mode.
The device also features inbuilt hardware gain, multiple integration time
selection options and sampling frequency selection options.

This driver also uses the IIO GTS (Gain Time Scale) Helpers Namespace for 
Scales, Gains and Integration time implementation.

Link: https://docs.broadcom.com/doc/AV02-4755EN

v7 -> v8:
 - Renamed APDS9306_INT_CH_CLEAR to APDS9306_INT_SRC_CLEAR macro for higher
   readability
 - Removed APDS9306_CHANNEL macro for higher readability
 - Updated iio_push_event() functions with correct type of events (Light or Intensity)
 - Updated variable name "event_ch_is_light" to "int_src" and change as per
   review to fix compiler warning
 - Used scope for guard() functions
 - Other fixes as per reviews
   https://lore.kernel.org/all/20240224151340.3f2f51e8@jic23-huawei/
   https://lore.kernel.org/all/ZdycR6nr3rtrnuth@smile.fi.intel.com/

v7 -> v8 Bindings:
 - Updated commit message as mentioned by Jonathan
   https://lore.kernel.org/all/20240224143803.27efa14f@jic23-huawei/

v6 -> v7:
 - Made comments to struct part_id_gts_multiplier as kernel doc
 - Removed static_asserts for array sizes
 - Moved regmap_field from driver private data structure and removed
   regfield_ prefix to reduce names
 - Used "struct apds9306_regfields *rf = &data->rf" in the respective
   functions to reduce names
 - Removed apds9306_runtime_power_on() and apds9306_runtime_power_off()
   functions in favour of using the runtime_pm calls directly from
   calling functions.
 - Fixed indentations
   https://lore.kernel.org/all/ZcOZX8mWTozC2EAc@smile.fi.intel.com/#r

v6 -> v7 Bindings:
 - Updated commit message
 - Removed wrong patch dependency statement from commit messages
 - Updates tags
   https://lore.kernel.org/all/20240206-gambling-tricycle-510794e20ca8@spud/

v5 -> v6:
 - Changes as per review
 - Update kernel doc for private data
 - Change IIO Event Spec definitions
 - Update guard mutex lock implementation
 - Add pm_runtime_get()
 - Update styling
   Link: https://lore.kernel.org/all/20240204134056.5dc64e8b@jic23-huawei/
 
v5 -> v6 Bindings:
 - Write proper commit messages
 - Add vdd-supply in a separate commit
 - Add Interrupt macro in a separate commit
   Link: https://lore.kernel.org/all/1d0a80a6-dba5-4db8-a7a8-73d4ffe7a37e@linaro.org/

v2 -> v5:
 - Bumped up the version:
   RFC->v0->v1->v2->v3 (Earlier scheme)
   v1->v2->v3->v4->v5 (Scheme after review) (Current scheme)
   Link: https://lore.kernel.org/all/20231028143631.2545f93e@jic23-huawei/

 - Added separate patch to merge schemas for APDS9300 and APDS9906. Added
   APDS9306 support on top of that.
   Link: https://lore.kernel.org/lkml/4e785d2e-d310-4592-a75a-13549938dcef@linaro.org/
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/

 - Removed scale attribute for Intensity channel:
   Link: https://lore.kernel.org/all/20231204095108.22f89718@jic23-huawei/

 - Dropped caching of hardware gain, repeat rate and integration time and
   updated code as per earlier reviews.
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/

 - Added descriptive commit messages
 - Fixed wrongly formatted commit messages
 - Added changelog in right positions

 - Link to v2: 
   https://lore.kernel.org/lkml/20231027074545.6055-3-subhajit.ghosh@tweaklogic.com/

v2 -> v5 Bindings:
 - Removed 'required' for Interrupts and 'oneOf' for compatibility strings
   as per below reviews:
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/
   Link: https://lore.kernel.org/lkml/22e9e5e9-d26a-46e9-8986-5062bbfd72ec@linaro.org/

 - Implemented changes as per previous reviews:
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/
   Link: https://lore.kernel.org/lkml/22e9e5e9-d26a-46e9-8986-5062bbfd72ec@linaro.org/

Subhajit Ghosh (5):
  dt-bindings: iio: light: Merge APDS9300 and APDS9960 schemas
  dt-bindings: iio: light: adps9300: Add missing vdd-supply
  dt-bindings: iio: light: adps9300: Update interrupt definitions
  dt-bindings: iio: light: Avago APDS9306
  iio: light: Add support for APDS9306 Light Sensor

 .../bindings/iio/light/avago,apds9300.yaml    |   20 +-
 .../bindings/iio/light/avago,apds9960.yaml    |   44 -
 drivers/iio/light/Kconfig                     |   12 +
 drivers/iio/light/Makefile                    |    1 +
 drivers/iio/light/apds9306.c                  | 1355 +++++++++++++++++
 5 files changed, 1383 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
 create mode 100644 drivers/iio/light/apds9306.c


base-commit: 45ec2f5f6ed3ec3a79ba1329ad585497cdcbe663
-- 
2.34.1


