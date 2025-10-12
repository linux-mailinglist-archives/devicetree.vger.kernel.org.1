Return-Path: <devicetree+bounces-225774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDDABD0D6C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 782593B3BF0
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 23:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B32F52EBBA3;
	Sun, 12 Oct 2025 23:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aIgmTQKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C130F212568
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 23:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760310672; cv=none; b=jzE08uhd1MpnxlKFyYD03lqWvgPT0+eI415aXIp6DJk9kUng7AdgD2uhHXMJYSeAmGfa4yr4AWBMP7D2fpPSUaCAyNmfj2tq6BoS2kmeJSgIbGTe5vfk+vxn8v8LuwIMUos9HGz+oCrTJrvhOuax10OqBx9NqABCp18n/7uXoGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760310672; c=relaxed/simple;
	bh=CAXorevUrI+L/I8ZaM2bLNGWQis0HydE/lcGX8g+Grc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bvf5qnaEek1CXhyBe5xC8tMfjl/no2jgf0CfJVOzYu3cH5CB32+E5LySgln1d6X9LfdvA9dIszQ6Aqg0J2Sx0NZSS5qiO4LPV1SjzkYH8DSpzWsMFi+qU0138TWjCd0s6mOfD1v6C/ZMBgIHNaJk7838V+rxfVuJaLps0a6r5b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aIgmTQKj; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5903e6fc386so591041e87.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 16:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760310669; x=1760915469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6s7MB5eF5/KPjVvCROYigyH6C8BGY1LYw88UsC8mq34=;
        b=aIgmTQKjwxGQ9TplVrVr9Zk09qLaW43goxQT5Bdwv3YHy6d6wv1O2Kq9OfZkzi61n8
         CrOoztOfDwNwC11vqA+hK4XuUADgJF/F1nucxBT+UMe3+iMwbMMl/BMCpURcyBI1dU1l
         4Ey8WpuJtx+uMQvXz9AFPk+Ci6xDqQI7HpBoYJaWKli9glu2YwAUeUXgvae+GP9FKSta
         l8oOEvobBc0PtHwK1S1S80vvupGM6rUvbJ7EQ8Gt4UwYZiDM9lUuv8UINu0/9zxiDysG
         lD/ECkGfnRXoJ1/s/h2/QFJkIJY3Zo0Rgm3PVFstb4UT5QSTj6Oq6kuk/bDUhIZJUCY3
         5miA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760310669; x=1760915469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6s7MB5eF5/KPjVvCROYigyH6C8BGY1LYw88UsC8mq34=;
        b=Nh0PJ2224lQu9rbQ7qnX/eyW86jIPttyBS7nEmtuhNShBv9x64VZDhilSKzcD6Hi7V
         2PPSJIPQDss5n4KI68rKOKb02XyW3J4q3FO1BmOagPMETMGmvIczRQKwOCt16eYwm7zW
         YSg/n24EAPjmOKqj7f7sLaJr0IOPEWw95D0h+2473PazQQSPkKFwmRBkgV1cTUq5eqVl
         30uL/dmDO4dDmVMe0UdDvvLgq7Cz2Cp74xEAxkPsITyukjorN6/RH9FqVuQmM259lZK1
         ap+VjHZS1AeO3yAU/DSoJiVxAT8s5Jm+5/jI1lrtnWtiaCCStYA7aftkR62ngdirGEFq
         IHXg==
X-Forwarded-Encrypted: i=1; AJvYcCUjuBPbbMahVPx9E3qrswWcQcnh/nHh5OdqZr1b2nlDYzo1Vyi5tpLi1Tgvu+Hnzu5YFYdsEhSMu+K2@vger.kernel.org
X-Gm-Message-State: AOJu0YyRwNrYoc7qL+SpM6nkeI/5FlMKI6sFGdRLWX5yHAjoz8DaW9Cq
	0Hd1pj2imS2GfWA4Uf8LKFDTKt7QrSmcVlgZbO2/mH0O2Bi/R8ZE+qqUAPIdZatYFuk=
X-Gm-Gg: ASbGncvFdgIalLiPmLEecG1TdCeiJdImxBcTN6wetykXH37VZjwJpI0ZTD3vinnjqQQ
	0gc2TSUGFb/HimF4bP8G9DmpH6dmyMQKMb491ICFzxVJe5sJII5HOhL64B2j0SKlDqjiRV81XfP
	X9FMHk8SSxRhbY0h7TRC+lUKgNPtn7N4YczNatrXmpFEhAYG3FkYdU5D5SCpVdsvNWZC/i0hWPT
	aSMS+tVBG6OEDrcwuJjDC46G3CTP4+aNpEXj0HWcTye/tz8aSiuBdAe/W3vUPNd1qtp0jI2r1v8
	qU/Dh7aEi3WtnBamvLD2vmuUE927op1l5zCsKs0Lir5hhC8QMpHF61fibDd+t44gvTzkErjAIQe
	ZdUhHI45maMmEIrdN9wSmX8d3EWBd66/obirj2D9KBKIr3gxeUxnt+pGdDP+ZMxvB1nAGp3Rxe3
	ykSMkEWpYFtEt1Fle5S7lfUAM=
X-Google-Smtp-Source: AGHT+IFurfkVKwZIaoaiyaYJbRPSTCpN3JM/if6a/pvzP/mEPLYruN5/ojl/y5Q1EKilXuZiH586pQ==
X-Received: by 2002:a2e:be1b:0:b0:336:d8e5:8dd2 with SMTP id 38308e7fff4ca-37609cd6744mr28262891fa.2.1760310668116;
        Sun, 12 Oct 2025 16:11:08 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762eb7328bsm25258741fa.56.2025.10.12.16.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 16:11:06 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] media: i2c: Add Samsung S5K3M5 13MP camera sensor driver
Date: Mon, 13 Oct 2025 02:11:00 +0300
Message-ID: <20251012231102.1797408-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung S5K3M5 (ISOCELL 3M5) is a 13MP image sensor, it produces
Bayer GRBG (2x2) frames in RAW10 output format, the maximum supported
output resolution is 4208x3120 at 30 frames per second rate.

The changeset supports two output resolutions 4208x3120@30 and 2104x1184@60,
PLL configuration is done for 24MHz external clock, in future it would be
possible to add a setup for 19.2MHz external clock also.

The next V4L2 controls are supported by the driver: vertical/horizontal flip,
exposure, analogue gain, vertical/horizontal blanking and test pattern.

----8<----8<----8<----8<----8<----8<----

% v4l2-compliance -d /dev/v4l-subdev30
v4l2-compliance SHA: not available, 64 bits, 64-bit time_t

Compliance test for device /dev/v4l-subdev30:

Required ioctls:

Allow for multiple opens:
	test second /dev/v4l-subdev30 open: OK
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
	Standard Controls: 12 Private Controls: 0

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

Total for device /dev/v4l-subdev30: 41, Succeeded: 41, Failed: 0, Warnings: 0


Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add Samsung S5K3M5 image sensor
  media: i2c: Add Samsung S5K3M5 13MP camera sensor driver

 .../bindings/media/i2c/samsung,s5k3m5.yaml    |   95 ++
 MAINTAINERS                                   |    8 +
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/s5k3m5.c                    | 1362 +++++++++++++++++
 5 files changed, 1476 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5k3m5.yaml
 create mode 100644 drivers/media/i2c/s5k3m5.c

-- 
2.49.0


