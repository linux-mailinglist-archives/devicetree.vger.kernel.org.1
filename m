Return-Path: <devicetree+bounces-227371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F798BE1365
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 04:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C3FF407667
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 02:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045D81FFC59;
	Thu, 16 Oct 2025 02:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jsDy82FF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047421DF265
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760580268; cv=none; b=XIS4fa9/0CwKGT8DCFOUoA54PX6mLVgbIFRsXVK58S9p9eOI29fpAg0Op6ViRvME4s4vjPxvo4Q8mOGhmEHS+hmo9M7rh0xe4F9LQhptKHUBsIVn8vgXPH/EFeQxtBSXLh8f2MYDIu6kcZ0/PDYiBpur/P/6GXcJ4iGwJ0LbDUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760580268; c=relaxed/simple;
	bh=Hvg6k/MME8MJglm/n6aor6UBfGLa1CTiKDRths6ZL+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cF+q9Sk8DtyF2qVcTbhYFLb4IPU4LlUiF0rpBSCkgm+TbbSc+EBCq5U8C3gYTE+JPX3l6IJCN5D88CqO86TW4mGzCS5xD6vCr84Vs74Skf92SVrPTJOpDR8KJsCO6Tj01wCh51GH9sE/an3E8WA2jrxwot76Z/4HG8FP9sW3gvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jsDy82FF; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-57bd7f0e2daso44312e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760580265; x=1761185065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YOB8VSxcdvbD37UrkvKIHBp+WD8atI6WeU4LWquFpcA=;
        b=jsDy82FFOoD0GHMwdG3Tuf9YZsDR9ivnIhtHCqcoxeDJN/ymhiltZS1WmpRzJhHWps
         pgAWHjvHUUsaAj0vrJnKyyNhYmtsEOBOuuTkpnQEbAH5u5+QkE9zOrS4JGL0L7+lwq1O
         XJxZ/X30PEDPG1CoaSOWKhB0rBvJmwUwjegWkxGamBacHG9r9PC9uB/7qtCwONG9WYX/
         XY4+IFn0VNyOINdfUBkmr6Xgq6LWDp7OTCeuUi74v7XErOO3JDdbhmB5czn4fkIk7kHV
         qwKieumGRuyy3TlsUufVv9cgjW6aplKFgltj33lMRyt1mlt1iwihsL46s8Zr6lYWLILI
         5IoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760580265; x=1761185065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YOB8VSxcdvbD37UrkvKIHBp+WD8atI6WeU4LWquFpcA=;
        b=SeVsYL//yrN8EiaQRX304PlnDSdDtK3xyQAB/dRbhQirFAGZ7Dt2Epf+w5ALrZI0bt
         krYFNNRTPEVYLQslFzIOUk6TuchimKnD3KrxkJVk1fD+mPXAHMJJX56h5wzjIP+KA+PL
         CFXHnnTCgVgAndn6Uv7O3qMg6y4WUy0b5c0pRG9mec05dk5w5SsnmtcLnoSQo0q7K6fZ
         1Lrj9vls7JEW0SJ555V2EWrf32wg7xXC+zrHGhBHKKI1bdCXRaYn2St1JNMWvQ0Dw/cC
         h0cWYiOOmTcngbLrpAtQAqlEYMYyyI3H4rOzfBxgFzlFNe4/6KbxElN5HEfPzgp/jdAv
         6n+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWrJLFh/qZYuH3ZMcQGX1K7Pmbqid1B59g9BlNplLveadwI7bClGTgs9h+vHaDPqitV33uO2kmCn8KO@vger.kernel.org
X-Gm-Message-State: AOJu0YwDoq5vXCKdeFKvj6IsxQ8yx6dDU8qDGWpMQWIU8unLjX80QGTS
	1UsH7Q5R4KSN8aZszBYfRWxA2P4ockfKy3EbionOd/lFoZ1utQGG9YMMR6SMpWAEtrg=
X-Gm-Gg: ASbGncuRzOHQzkIBCBX0X/NVJ2X0slJ25W+rFrHZ+SAsKx0FWcI6KixdpM5KJ79lV57
	bXM4BaWBuBNlRh+oRoxRrk97qMkku0Db8hWaGsVJ8jTeWdt2+gdKaVLsPGHrUEpUU1zYgrhywi8
	/FfeasgK8Sm++RRtGt7yyjCSiVkp8kSg7CrYVnCpMRcUurpkSG4SGsjz8WCQy+wUb6T+/3gOtNy
	Qj10J8t1pd9/9cZAFKmIL1iQt/jLitoy/ambxrbXHTIGWWLoOcawOlXlE5qwpfxH7Zy6s92L0YX
	cKsm2z2XrAF+rEAT0KHmkzQtvOaWeIl8WRqfTL96s6bCJUzJX3wtc/3xwLFQDxSHYepIf774dw9
	qn2LQEDpaqv/9e/Q+imwj0yg4sE9X7ahuqqfOwmBMFLyBN2y/s4qV5t28hHBYudxpqjR/qYsYU8
	zQf6S9pTVGOqhZx486WSh8AMrV2YJq8qAedSyePqBdK6GFE3tsYsqQnBaDRUUVaB5Z759k
X-Google-Smtp-Source: AGHT+IEMqeNVUsBBLnzuxCA9tSh6jqzKLPLxLDOY1FZo4XrWjDRiznHN7UYooBcox/z+pe4NBRUoHA==
X-Received: by 2002:a05:6512:3ca3:b0:57d:9bd4:58d5 with SMTP id 2adb3069b0e04-5906d8ec283mr5353848e87.5.1760580264963;
        Wed, 15 Oct 2025 19:04:24 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563c98sm6703951e87.74.2025.10.15.19.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 19:04:24 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] media: i2c: add Samsung S5KJN1 image sensor device driver
Date: Thu, 16 Oct 2025 05:04:17 +0300
Message-ID: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung S5KJN1 is a 50MP image sensor, it produces Bayer GRBG (2x2)
frames in RAW10 output format, the maximum supported output resolution
is 8160x6144 at 10 frames per second rate.

Changes from v1 to v2:
* added a collected Reviewed-by tag to the dt bindings documentation (Rob),
* managed to get one PLL setup to cover both supported output modes,
* vflip/hflip sensor controls swap media bus code of Bayer patterns,
* extracted a common initialization subsequence of modes into its own array,
* set a step to the analog gain control like it's done in downstream,
* reworded a sequence of CCI commands in s5kjn1_enable_streams().

Link to v1:
- https://lore.kernel.org/linux-media/20250928200956.1215285-1-vladimir.zapolskiy@linaro.org

----8<---- V4L2 compliance results (v4l-utils-1.20.0) ----8<----
% v4l2-compliance -d /dev/v4l-subdev28
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

Total for device /dev/v4l-subdev28: 41, Succeeded: 41, Failed: 0, Warnings: 0

----8<----

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add Samsung S5KJN1 image sensor
  media: i2c: add Samsung S5KJN1 image sensor device driver

 .../bindings/media/i2c/samsung,s5kjn1.yaml    |   95 ++
 MAINTAINERS                                   |    8 +
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/s5kjn1.c                    | 1387 +++++++++++++++++
 5 files changed, 1501 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
 create mode 100644 drivers/media/i2c/s5kjn1.c

-- 
2.49.0


