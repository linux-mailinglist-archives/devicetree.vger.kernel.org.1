Return-Path: <devicetree+bounces-210550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC2EB3BE89
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98A77B62FB9
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 14:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9154322C7D;
	Fri, 29 Aug 2025 14:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htPRDqKR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4E831CA76
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 14:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478568; cv=none; b=Qk21DhCmTvV7A2+pTAMaPwcICDQa6R+zLsFLkyvlZE4emWu0Tjrorbh28kM3HEDoKCOi9mUiIFtGbaaj1gG8Vq4MGVJdsCrUhg2zyeY+buGj5RoXhfy1qlji+Cj/u1j995uJ0zAsCVlnOX1NSDaK65KVfdTmFgxeB8k4j9yRiRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478568; c=relaxed/simple;
	bh=NhwvmmbzfMgmAh1wi32wkkIkpPFDcdR3wXwD2CamPyY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iVhqL/HU7du/rK3x+O8HsHgNQ7tQQb4WstcQjTIy2QQeouQZCslbhWj3q3K/pjSuep++/8DgohrZuogw4PmCqxmZZdRUS+nB498MFVCXVXCO2I9HTCDr+s874i+8dsMSDtlLWf70bzyZ2UFfijl/G44PWPipxc9W93w5XYBeGgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=htPRDqKR; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f3b4c9fb5so152744e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756478565; x=1757083365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1C97Rh1+Y8ywLH8ummxCCRjzifbNFqPzpmuAc7WE1p0=;
        b=htPRDqKRW7PcMuC9kC5tNMmoAwQ62DZkcnMJmztQvSjD3Fa4QhNfID3BMZCyMHMR9O
         6eFiC/LO6xDleqokF2kuEtdTxSStJwljMlBuWdtzNifDzrykot2Zc5Rx/x66+k8QHQ+t
         JUtNiXjJSK8ayBAyktQnjJBqBX3l3aiHESibJDp2Ya6ixs5SeXGlS/6+LBdTViOR00Oz
         oemqc+peL6ew/Ni/QNKXbLdTccXyrZdGtqEiguHe86Tppb1tBjPmU/0JWWsz81+dzi5W
         sOO2jCbVGNvvXQnYwvm2WbzsJJnxQQZgXyTEBciuy5/pXkQbJPnvedFXARaDKK9Q2iOv
         hUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756478565; x=1757083365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1C97Rh1+Y8ywLH8ummxCCRjzifbNFqPzpmuAc7WE1p0=;
        b=lna7DSygBgMv/gru4mXSMFIaqrbd454rEmKfTqL2l4kVC3G4x6GCVhP9XWtgkWT1Lc
         bYE3D9hCx2GS38f1N1eRUZBKuF049u0eYNVn32c16q+WrLLysNWCRnAuPfMzUq7Sq6bz
         sHMiaFho1+sjzIgzs9amONlf7g2PCn7SldGSvO/U7e/9J6uBStu9RkyX6ew93dKbZpRz
         ywDxts+nO4P2RLusdAGAL7JMEQDMllHcC0R8oRmR7Z1i1ok25u6gbWAfK+IlqBYV8Jox
         e2d1/e3pGrWctF8E1zWS03T+pEOoGvXiZffEraWQx8WEFz0+wx8Eb0dTYvMLTQA0u+yx
         duXg==
X-Forwarded-Encrypted: i=1; AJvYcCUpuBv1B7NvwedrF08B/MAQpwQWYmNhbdQ2bOnaJD+4v/mXWnb47/QfWfCNlseKJghsvvljjfw4L3GS@vger.kernel.org
X-Gm-Message-State: AOJu0YwOLW7sDvdAK0DDJlF7NbMfcKbvCWP3ORSk8aGGjRfH+FDxkUxV
	8FpA3Leg658HRfhMy1Hsfiam0SQq+/QrFPIMCQlXihsBaZz5rcKwtaO1PANA5aAi2bI=
X-Gm-Gg: ASbGncuvCgXFHTPhSffnwHzorZNrJeY8Yddpms9qb5ymLmQAya1iTezd10zVXpAWxzq
	7EbwJXHwMi26gQrh+pEde91xVJqipCDU6XUhRGYRugIqCNjgF1ADljF+jTRvd12KxKbzUhDlC9u
	dWAPIQmdFfjJgaDkV23Tz9V97PqRi7F3VT5tky4kuwkZ4RjDqO08VZivU/M86jYHxTh8VzTw/MR
	OZbtFArCn1TYAlOXGFPgizWhNVjgxGCJV42NddZ2uc9q4tl3toBBD7xDwsgfKIEsYRytLs19M1/
	9k4/TWJjzDPKqrxwfjKIvHbus1R7uvUVHLLwINtFtkHni0ql7HML/Td1QrmCKWY+VaGugQRP/gX
	eyUfyBIc/yHAVtn0oammvCHvgJE1+eqROexGq7j2MoBAbpG94kUFdZ706YT3NvIGW4n9oGoyI78
	DWrt012Q==
X-Google-Smtp-Source: AGHT+IEbzSAbsDp9pM/rntXhlfNgfd2f+rTHGQVV0TvmMk3trcrTGTbVLiWc3MF6A62rZpJ+RHkX6A==
X-Received: by 2002:a05:6512:3ca8:b0:55f:63c8:7e32 with SMTP id 2adb3069b0e04-55f6b023898mr275823e87.5.1756478564862;
        Fri, 29 Aug 2025 07:42:44 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f6771b237sm677240e87.54.2025.08.29.07.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 07:42:44 -0700 (PDT)
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
Subject: [PATCH v2 0/2] media: i2c: Add OmniVision OG0VE1B image sensor driver
Date: Fri, 29 Aug 2025 17:42:40 +0300
Message-ID: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OmniVision OG0VE1B is a monochrome image sensor, which produces frames
in 8/10-bit raw output format and supports 640x480, 400x400, 200x200
and 100x100 output image resolution modes.

At the moment the only supported resolution in the device driver is
640x480@120fps (Y8).

The driver version is based on top of media/master, which contains
a new devm_v4l2_sensor_clk_get() helper function.

Output of v4l2-compliance tool from v4l-utils-1.20.0:

----8<----
v4l2-compliance SHA: not available, 64 bits, 64-bit time_t

Compliance test for device /dev/v4l-subdev30:

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

Total for device /dev/v4l-subdev30: 41, Succeeded: 41, Failed: 0, Warnings: 0
----8<----

Link to v1 of the OG0VE1B camera sensor device driver:
- https://lore.kernel.org/all/20250820224646.130270-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
* added Reviewed-by: tag to the device tree binding part (Rob),
* removed unnecessary explicit setting of og0ve1b->sd.dev (Tarang),
* switched to regulator bulk operations (Sakari comment for ov6211),
* minor non-function changes.

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add OmniVision OG0VE1B camera sensor
  media: i2c: Add OmniVision OG0VE1B camera sensor

 .../bindings/media/i2c/ovti,og0ve1b.yaml      |  97 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/og0ve1b.c                   | 816 ++++++++++++++++++
 5 files changed, 932 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
 create mode 100644 drivers/media/i2c/og0ve1b.c

-- 
2.49.0


