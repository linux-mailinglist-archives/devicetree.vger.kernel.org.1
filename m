Return-Path: <devicetree+bounces-210547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F35CEB3BE55
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96FAB1606DF
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 14:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16625334381;
	Fri, 29 Aug 2025 14:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="go6+sYZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A866F321431
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 14:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478561; cv=none; b=FM889rxBg+0FLMsY8EtveXZ3tPMtZrDOcZ+RDKVa/CzswR+UdkGmdlCNa7/iyZsqH1O+zxeecCJxYMhv9Y9JV/l2rqble2y+LtOltXDx9REwF+I4aEQ0uTiLJed/mlbt/TEgEeU6hN7yO5YsOFjz4jgvu1PvNTz3h7LvxQiaTwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478561; c=relaxed/simple;
	bh=9oYAUJVkm8HpXnbYopLGg/6pFyDK2rNxtJVJfOVOe/s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Blpk1O1hprNq+UhfczHhxL/nTOjQWxj2djlzC9wBkptfXVihlcRTzhPNlyMPytlM5RabjstC28k9bFI/dLyyeUlnjCqTdoT3peBW/w2CCUpfyTL2NRmz+jtSsPjaSK6h/arhzPXqwNMcWRBrJugE+Cuz2Mso0rq2QyiaYkbO9Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=go6+sYZV; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f47f55f94so293197e87.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756478557; x=1757083357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O83EXGRGUM7A96K+ZnLsA/lJMl7/6MjkRKOr82WuWr4=;
        b=go6+sYZVOqg3ifF78cArxfc+j069HslIVLorjCows0hybj3mjWa6iSVK1jp5LIxT7C
         NxKFVnMa1j9xUgBzSNJiiPS6yfYiTgYvDeZsHEWR8qYL5iGK+EzqnDLFnIHXrkaAjLV+
         WTe0gSm9l5nwfWo2rt+GiF682ReVO2m+63nZT73TKeDfuwQNcxrRg+lWM4NrsSb8UFgc
         hFb2KXDnZ+baCsXaaMmyh8G/grB8fMVSHeAyDA+2ZHPHgS84nwQDsJzCeXdcTb1DbCVz
         rORU151TzGEiwPQytbzzV9JPj8hO+35Gio8ThY9o7C8t92i77AqxWQ5anon1bh2GZD0G
         +oHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756478557; x=1757083357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O83EXGRGUM7A96K+ZnLsA/lJMl7/6MjkRKOr82WuWr4=;
        b=bYu4CTMKt3xwXfjmHXzAvTI/J+6/lPU5covc4Iifm1+s+oDkX1LKpOUsy3oM7MwONu
         Gk11qAUV79vSzXxmmu1uVTmBmNFMwObKFJBNaH24XvV2sXWYOhxMvTmdrg2HI2JAqlc1
         gHJyo6flV2HHPwFkt+bqySI2xtbtHb03BoiPf7YHOVvgptvmzKAAhWAYkzzTfj1+SOJr
         7wyMtCManfQvu5Q4NMCIottzkxDcKHG5VEjmhFc8tPffSJPHo4wyLrvgBk0XR8zp9Mn6
         9mG8YFOEpNY9DS4+Bk0HAAsuXspoe57qQCHf3dzhibcicXFcWkiotvGqqjMsAZrs+C/C
         uMZA==
X-Forwarded-Encrypted: i=1; AJvYcCUnd3OTyLVTfi40eC7KICg/sxoV5fHyq953Xj8+eeYcb2fGyheFRXHJF31SEnGguXR37Nf/a55wUmv+@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ0+/R+zG0W6Od44eFK4MesuVQsfTt0+lc+2u2bMNS3FS31KJU
	BKGmrLDy85DiaW49Fw2mx1WK+xhILMqmtAEOuLv06bPcPHaWwGR9ZD7FGMIe7IlChw8=
X-Gm-Gg: ASbGncsFel3AmiwxZXxmppd2I/noiRGS5IVTiWWc39HKT3ofhC08ekjjAINoe73jUCz
	XD0nM+unNGUE9cr68t1yma0+twe+5jxyk9d19joRnt1HNWNotfy6h0BeEVTCJV26lRvSPygS5lC
	GppbD8ptr5EsC0vVDaHv9VoR4NjA13B7jGo6HVMOXTQZKJMdr6EWf7+YrOnfX3O704/qf7IxVBH
	Zw0PSdOd4GoEbM0YBQtSRoDIZPHYx1YCmsVzHSZS9aM+jlYNbzC7uo8AgvciRUxNaYRVC7RCFuz
	km5iHf7E+ZF8l7jF5DCPv+ur99dLieIeHQTpUPfg5KpbwK7hZktaqJmeMNLY6bqIIkOMU3/lmhu
	XBJEZ6zXUFbjCEdZA3Bj+e0DXU+b9BV8+nqyVSZzfiC7ma0ogPVn/ButxSlpeeAIgvuAoakRumf
	dk/CaQ+A==
X-Google-Smtp-Source: AGHT+IHLaC+b9xicE+Kgqk/L00tM8keLoeo1OvVK78F3NlRQpq1rG/feN4SYfFew21sHHwFxDqsOYA==
X-Received: by 2002:a05:6512:3dac:b0:553:252f:adf4 with SMTP id 2adb3069b0e04-55f6b23da69mr291326e87.10.1756478556608;
        Fri, 29 Aug 2025 07:42:36 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678452e1sm677644e87.85.2025.08.29.07.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 07:42:36 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 0/2] media: i2c: Add OmniVision OV6211 image sensor driver
Date: Fri, 29 Aug 2025 17:42:30 +0300
Message-ID: <20250829144232.236709-1-vladimir.zapolskiy@linaro.org>
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

The driver version is based on top of media/master, which contains a new
devm_v4l2_sensor_clk_get() helper.

Output of v4l2-compliance tool from v4l-utils-1.20.0:

----8<----
v4l2-compliance SHA: not available, 64 bits, 64-bit time_t

Compliance test for device /dev/v4l-subdev28:

Required ioctls:

Allow for multiple opens:
	test second /dev/v4l-subdev28 open: OK
	test for unlimited opens: OK
	test invalid ioctls: OK

Debug ioctls:
	test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
	test VIDIOC_G/S_CTRL: OK
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 10 Private Controls: 0

Format ioctls:
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK (Not Supported)
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK (Not Supported)
	test VIDIOC_TRY_FMT: OK (Not Supported)
	test VIDIOC_S_FMT: OK (Not Supported)
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK (Not Supported)

Codec ioctls:
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK (Not Supported)
	test VIDIOC_EXPBUF: OK (Not Supported)
	test Requests: OK (Not Supported)

Total for device /dev/v4l-subdev28: 41, Succeeded: 41, Failed: 0, Warnings: 0
----8<----

Link to v4 of the OV6211 camera sensor device driver:
- https://lore.kernel.org/all/20250820224541.130229-1-vladimir.zapolskiy@linaro.org/

Changes from v4 to v5:
* removed unnecessary explicit setting of ov6211->sd.dev (Tarang),
* switched to regulator bulk operations (Sakari, Krzysztof),
* minor non-function clean-ups.

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

 .../bindings/media/i2c/ovti,ov6211.yaml       |  96 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/ov6211.c                    | 793 ++++++++++++++++++
 5 files changed, 908 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
 create mode 100644 drivers/media/i2c/ov6211.c

-- 
2.49.0


