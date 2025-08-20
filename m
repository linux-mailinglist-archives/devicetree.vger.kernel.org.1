Return-Path: <devicetree+bounces-207105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E34E6B2E844
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 00:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFF291CC2AE3
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0632D480E;
	Wed, 20 Aug 2025 22:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AsjshsQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505A2C235D
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 22:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755729948; cv=none; b=pilGpQ3q1june8Q23SDqjJLE0/Xgc5yPIW43G8ApVTnWw8Lp594vSsXCftt+24Rk5xd0YRnOhIyqIwdKddBOTUDrA5VXOQgKoBRDWS9PFUMVltufJo2E5b+ZWX73fohjAUYr8xifQybwtyTvU3cu+wXFtgW/N7mOhMtpqYqwC9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755729948; c=relaxed/simple;
	bh=LXJNINxCZnS2XvJKfx7NVSzrjFC0MN3Ti01MeGtL8Dk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CsS6TkFU9m3vAffUB8kL+b4qDnywO/Ah057fR2CJef5PtPds1YpFGdLP7QvjvZOIZ47v8Z1v79mPAX/LXjGx4+7BygMVMVFmYPUzaIQuhFWfmgIcXmTZ6wEqKTk3CouuDIyBSOjxAM5SclmQ/cRoSVSz9LJ8Xit8E5g8ImPqv9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AsjshsQ3; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55ce5221f0aso33312e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 15:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755729944; x=1756334744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vZxq66Xr8FVSafFus/saJc6xxmXcrzIyfbnj1KG7OFo=;
        b=AsjshsQ30A0FCqorbPnp1T4TcimILXD6O5+LZmEXjsuKGGOTPYNoKX+7QtBPxPE9dl
         v8MsVIcGQZePbPk856RADeIpY7OVARdbThIFFy2E7TRAqBASd8XjrPy6WGRszdBu+y0Z
         fLiH58FDgOfNS8cpVsZWplJ98XfW3HBeuwg2snPOhE7h/WNI2+Nl/5GCWIIqbNqP4Rq8
         qnfJ4w1QPF59YEYT+J+EzOEzaWg/NxFdpYN219xQDuwNPC5NK+21K4ExGwv/3NjuuOyg
         CCT0crkzTe1DbuXlZvBORxHZ1z3xr/GwvVdAHpoL2bwyt/4Y1T4u8/r/5+6pF7+FEpaa
         e//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755729944; x=1756334744;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vZxq66Xr8FVSafFus/saJc6xxmXcrzIyfbnj1KG7OFo=;
        b=uqKP2g940mBbISw7EkB60A+pKkxwTGahlM3ayhAW+1rdIau9eni04kPWFhywNcj9Dy
         2v9EiVSNPpWkS0aohCq24/BTC0L9OOb/Pg1RXqP+hIjUGn5+C7IIsi5nBMYJ0Sttsj0K
         PWARx/sWFEy8bkPgG9qQ1Y4+Y3QmtaLcm0G4kPcU4iOKgOGd9zVM3DD1dUAmEn/skA54
         Giokpdr65Z/7NKBlWond9pQFEl3/qVEDg7M8GSFmoB65tGvMMAlCDvMdybMz6LcSrMeG
         XGrBstyQmMQue/3X8MBalo4IFSAFPev1CrkelnftaolA53QhCb4s33fWjDk1CpvZ+GbN
         UWLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEAICQNJH7dC13Bpy98O7WrJZFcs76QQOKQGOUNbxf4xu2ac7n2DJQE0/av0o0ZLFEtnavbpmCYDjO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3ctH5bMitXU1Lpt3rj8Z1dZ3bRVLoK2WUMYK9whsR/SksGuoM
	8l6gpJ7zbJP6F0sUIL8TNl8EhzxyoyA2G7b+ORcAqDGpOJ5x6ETOcC7gBpCrANugXew=
X-Gm-Gg: ASbGncsIhz8hz026b+r3EIyrY3tOcO3dCGYYcXsaApxILT8KCpbz1QBuJdm/BMyVCUA
	ACrEcnC2zb+uMHvK84Z7XZNlnhg4Om0aSzkpM/KIhp4PJmsf0ps6nd0k6VWEIzDDfj1pthODs17
	Ztkr4Kvtk9fEOtpiHu/rl9hEqoGlzMFcuKPGyqPw/TYauiNtik9HjFY/laaQa56H6qOZbWeqnuZ
	NOiRlnafahS3pLlY3hwctnllG7r9OYq8VAEetBRQYTMMbDrROL8ku7N1xk7wZ/5OQ/ujXZ5Y0xy
	rwkiEmh4B3EZ4+1aFw+CcsNHUn4oL2kiLcaEqSCXPzvZFQFFIB9ebu47fbrVcczGEmqvG35cAtT
	h6QVTU6/u68WCv5wt7dOZ143TEqIsm8lY0ijC+ehmy7Kg7Fn7vFwDFuHOAa6X31OiOQMWSP8v3T
	dyQdVQig==
X-Google-Smtp-Source: AGHT+IH2sY7FiaPhpUwuFeQWWwihgla8Xgfno2yTEVME6Z5cOP3OMkN79Hgh5adkrby9/IF8JNXGYg==
X-Received: by 2002:a05:6512:1329:b0:553:a4a8:b84f with SMTP id 2adb3069b0e04-55e0d4e7bdbmr80699e87.1.1755729944105;
        Wed, 20 Aug 2025 15:45:44 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3ffcefsm2763048e87.136.2025.08.20.15.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 15:45:43 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/2] media: i2c: Add OmniVision OV6211 image sensor driver
Date: Thu, 21 Aug 2025 01:45:39 +0300
Message-ID: <20250820224541.130229-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OmniVision OV6211 is a monochrome image sensor, which produces frames in
8/10-bit raw output format and supports 400x400, 200x200 and 100x100
output image resolution modes.

At the moment the only supported resolution in the device driver is
400x400@120fps (Y8).

The driver version is based on top media/master, which contains a new
devm_v4l2_sensor_clk_get() helper.

Link to v3 of the OV6211 camera sensor device driver:
- https://lore.kernel.org/all/20250812213024.361267-1-vladimir.zapolskiy@linaro.org/

Changes from v3 to v4:
* v4l2_ctrl_handler_init() properly set error in handler, an early check
  is not mandatory (Tarang, Sakari),
* removed pm_runtime_mark_last_busy() since it's called by
  pm_runtime_put_autosuspend() (Tarang, Sakari),
* pm_runtime_get_if_in_use() replaced by pm_runtime_get_if_active() (Sakari),
* use v4l2_link_freq_to_bitmap() helper function to check a link frequency
  map (Sakari),
* added a new test pattern control, apparently it's identical to ov7251 one.

I hope I managed to convince Sakari that the change to regulator bulk
functions is undesireble, and this change is not added to v3.

Link to v2 of the OV6211 camera sensor device driver:
- https://lore.kernel.org/all/20250729231454.242748-1-vladimir.zapolskiy@linaro.org/

Changes from v2 to v3:
* added Reviewed-by: tag to the device tree binding (Rob),
* simplifed access to the associated struct device (Tarang),
* ov6211_get_format() replaced by v4l2_subdev_state_get_format() (Tarang),
* removed private .cur_mode, since just one mode is supported (Tarang),
* removed a custom serialization mutex (Tarang),
* set power on before registering the sensor in V4L2 (Tarang),
* v4l2_subdev_internal_ops: replaced .open with .init_state,
* updated signature of ov6211_update_pad_format() to generalize it and
  to simplify adding more modes in future,
* replaced a custom .s_stream from v4l2_subdev_video_ops by .enable_streams
  and .disable_streams callbacks in v4l2_subdev_pad_ops,
* add support of PM runtime autosuspend into the driver,
* taking into account a similarity of OV6211 PLL1 configuration to
  the known OV7251 PLL1 correct the set MIPI link frequency value.

Link to v1 of the OV6211 camera sensor device driver:
- https://lore.kernel.org/linux-media/20250717124001.108486-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
* restrict endpoint unevaluated properties (Krzysztof),
* changed dev_err() to dev_err_probe() whenever it's applicable (Krzysztof),
* removed in-driver I2C operations in favour of V4L2 CCI interface (Kieran),
* added hblank, vblank, pixel rate and rotation/orientation V4L2 to
  the list of controls (Kieran, Dave),
* due to unselectable data lanes property removed data_lanes handling (Dave),
* replaced devm_clk_get_optional() with devm_v4l2_sensor_clk_get() (Dave, Mehdi),
* minor cosmetic updates (reported error messages, goto label names etc.).

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
  media: i2c: Add OmniVision OV6211 image sensor driver

 .../bindings/media/i2c/ovti,ov6211.yaml       |  96 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/ov6211.c                    | 835 ++++++++++++++++++
 5 files changed, 950 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
 create mode 100644 drivers/media/i2c/ov6211.c

-- 
2.49.0


