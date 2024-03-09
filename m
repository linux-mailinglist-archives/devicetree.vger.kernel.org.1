Return-Path: <devicetree+bounces-49570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F987708A
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 11:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53F071F2168E
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC29F2D05C;
	Sat,  9 Mar 2024 10:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="fg+33Xol"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D325B2C853
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709981503; cv=none; b=DBLUVTHxhsiSkpPc1SOujQRWq2TjhJTQPrRy5eaPCYtNIx5ea46e2MDYYmJJYk3FylNOxCJfzTIfyvD7OfL9BtqEZehHUqhZj0eSqKQImvvHHRIT00Hjd83nGQSLwn/5i5zWrUtry8Xinx2SivgHZfC2vwdWEilMBdXEp4WT2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709981503; c=relaxed/simple;
	bh=g0J+OkBaJHcBazzdoaOSoa5TvHPt3FjtALTcoO3YSRw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cwUjzToWU+ccRGBP3IL6xam6m/q1JvzwE0BelrJwJ0K8UaOjs67cnByhk2+1igv/cbyhI506r4iFrXBGbHVVMhDGXAKkNrTA71epgt/y7tTfnOcCEGLzKyPu1VX8w2RlZ+K6VoCkNU50zVajkJH43PBom7BZ23k5WY0Ody/ck2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=fg+33Xol; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1dd5df90170so18511885ad.0
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 02:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709981501; x=1710586301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tqqHC6FntbfmWSI1vZnUVAvyptFNGYLIsmfnrQlYR1s=;
        b=fg+33XolGsddvlqS9pPl3TyV2rbqbs6TnsfyGYjr5m+EiEy7990bsL0hNEHJsAVAyo
         DAd/eO71RQ1LipxAwPYDbM0VQDlgmSVDF7ebjp/RJ9EDjs0iTUUQJWhYEQOqZc1ypJ4a
         pjP7J/0QdmD7OdMpbzCXwx89hdsSjl0cytbsnV+rN9pXqxLEhXYrVW0KcwRyv9O9msWL
         QtHHhSon6r+7LBhmSY3GX8YPwwGXH3u8ZIAzHVxynavjdGxVbH5ppjYrhQDjva6YADdn
         QNe7ZCsKmc74/oWgdBQIe9TDsoOegg86NtI7WllN5bQqZ72zWLuiuavKC1ScPHR5qEhH
         pgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709981501; x=1710586301;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tqqHC6FntbfmWSI1vZnUVAvyptFNGYLIsmfnrQlYR1s=;
        b=FnP0ryr+C3+Cg2saBEJIeDUDg4sHEdKMav1ZCVznT7HdwU0ltgqFLfGgvgTtV6yg/F
         N3FcpguWrvjbeBm+Hm0Nrc5ETavy+wOFogFR1bWTbU3/bTiYhNehDFJgEBCMKhHML5RY
         hwMUSRvm276Axf/oIOd4+dciUkw9PFrvFiWZQsxz9xx1Er68073siO4y5Zsd7Y0D1Uky
         wtAC3bMOloWZd8uou134LXE8Vc/B8HkJ9GEQaXmV9vUGbrPikIRsEzQv9QRMEN+pMkWs
         vsAwjZ5B9BFYswz2g9XtPF3+pfrXqRuhXnbdg4WfOxsb+go7jesf00d3HXYNchfz6fsv
         ox5w==
X-Forwarded-Encrypted: i=1; AJvYcCVXYP9qo7mTkRF3ncmvVcugmA+aqXyCG8ELk4XWnbaXHoDnMxXmF2oC+GTG5lOBJbp96SJfLYDr4jL1SY5Y0UPwHejwg+2Oao33nA==
X-Gm-Message-State: AOJu0YyhG9rPwUJknyEIASsW2COpS/3V6Db0e881K/NW4Mg0cs8BQvCo
	rbpzsgd3L84IvAp4KavaMrTHdqq3jEMbPR2OeBkEZW5EBz4nMyNBXfT9KOKnGBw=
X-Google-Smtp-Source: AGHT+IFX40En1tWUggDRyHJ6e6colgz2cGSJeysNfDDukqGlOlsbcTgVYgizHqr8EqVMr43GIMKnzA==
X-Received: by 2002:a17:902:cf11:b0:1dc:b887:35bd with SMTP id i17-20020a170902cf1100b001dcb88735bdmr1740336plg.5.1709981501000;
        Sat, 09 Mar 2024 02:51:41 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id l8-20020a170903120800b001dcf7d03824sm1070608plh.55.2024.03.09.02.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 02:51:40 -0800 (PST)
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
Subject: [PATCH v9 0/5] Support for Avago APDS9306 Ambient Light Sensor
Date: Sat,  9 Mar 2024 21:20:26 +1030
Message-Id: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
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

v8 -> v9:
 - Added const at several places as per review
 - Removed 'ret' from iio_gts_find_new_gain_by_old_gain_time()
   as it is not used. The current implementaion of the above
   function passes all my tests of changing integration times,
   scales and gains from userspace.
 - Using the same apds9306_event_spec for both als and clear channels
   struct iio_chan_spec definitions.
 - Used IIO_MOD_EVENT_CODE() macro for Intensity channel events
 - Changes as per review:
   https://lore.kernel.org/all/20240303151422.5fc3c2f2@jic23-huawei/

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


