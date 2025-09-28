Return-Path: <devicetree+bounces-222251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34311BA7764
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 22:10:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D463E1759E3
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 20:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF8C275B0F;
	Sun, 28 Sep 2025 20:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pROUoRp0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEAC17B425
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759090209; cv=none; b=L8rZM1ODkflrzi9HI8wolX5u33VJ0Vp9G5FvKtWoZg6Sxh2CreMHvmWGo48MQO3EcpKf6qVBmdPQwBWzEnFpYoDurKOMOIjnCJ3uHxXzPDv+SkWY4ZgKwy9NGMBW8Aa1A6EMz1usS8iUb9sn+rCQNoHesIAOsGaMLXja76BV7Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759090209; c=relaxed/simple;
	bh=FpyhmO4Tg46fuj6tBOW0m/VLInKwW1rye0bqu4euVW4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YwAC6yLSDmS0Sdn7qk8Hp1FgtVLc1LdQIG6LK2zLm27gAno/HeiEGgBJeNyYTGLN3g9IJ1WbU5UGMtA+7HZQG8xlaXiPE+Sq5AkBCMwxnPokCRIuLDoe2NNI4thUlMnRdgbKh2RXkmn7plvDIZvFAiYqAW9wiotCLa/rWi9tUcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pROUoRp0; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-580585075aeso746065e87.2
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 13:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759090206; x=1759695006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4QfO5iNkL+YdhwM65/lup/Zd2YD5fWZENSuRh/glh/8=;
        b=pROUoRp0rqRdJQnhYQ2oiCy/k/TsYRwHAsNjxHl/9gwR/xcgeFNkRCBYBDzIr9lR3j
         9C03lQtwyUfkvlQCn9YaP2nY6zSENmSoxkqsTyrY4LTbScx/5BNqItiakAZd3Sgx4dQh
         mTBZBec+pE8X/AP+TF0RyBrWUH01Y4lmWAuYnoK1DMvKNSv0/YFUmI0PDqOipFBJsMin
         1Y0BtarKVbVbMXXEe/T/g4PRpdwrmGJn2QyBxQHEYxbw3O+qby8PUp99LdedZxanQ7+n
         QF8Z0rNrDT/w7o3HSzOu+la7H1210LYGv+bSYGyS9DLXCqBpHKu2p/Tt1tXkaVRDrPfu
         Yulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759090206; x=1759695006;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4QfO5iNkL+YdhwM65/lup/Zd2YD5fWZENSuRh/glh/8=;
        b=no9jd8S1nU1xssJyuj87NXXvtE0vIk57oSaBp34QPeKT+ZVl3NL+rQ6MAXLa9G76HE
         gsA6JeFceI4mzheTP8vrQihsA2HBM785Tw+9OBmtwfvNmIOnOokLCoOL+GcOu0AgM826
         Md2lkXeNb1UFGyEXKzYcBFoxdaJpnPT3mgIiKNECr9ynfv/8XqOZhFaeEnP6rT0YNdN8
         6zalhGT1JGBNoQUuDYUhve23SKF5EFl+WNfAQFKMYmJDDXjts/JdRiO+pKgfsd1FOi4U
         U8sFmiPexxymQDCfA+K73ahdxJGHimwCrBu+NZHq0Zy1DCNgkQFAfrKv+DOwSH0006AR
         kauQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWsEHfqEuOABOHqrIkYVA3u8tghUHojc8xkblm+z2hfQc8PYfd3haD6/2JXl5sDTpfS/DrWp/ox1eT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc7GGcEvacMnDCQeysMOLAsREt1B2WCqhhJ3acz/aR6+2a3n6N
	BzSNlmljp6Tf8XaK21MeCmygoRO0AG7d9PokVaTtiRwGlIzvrZcAzd4JcQ9pAV65l4Y=
X-Gm-Gg: ASbGncs3VL7jJmrn11q5Y5ObdKYhodovbPkp+7ggPbgg7/gd8faa0c1JZ6kE2WVCEdK
	sM4JgL2SYeJt159+BS7r84CpB3EuHKv53grVauU8aWeXwI+a+dLT+uNtbQfRDohuXZ5wyvAIHvD
	0i7AbnCWnwNBdzbWUWpTjp8p3quWv0L3I//94M8zclx22h6r6fUXthTI4azfoaEAykYamsev9Ll
	p9z3a3UyVQVf545WzyAaNvAdvggXbh5INgse4gH91+kzphBCvRdVp+npG86h6Gv34jniVp99Vqn
	1LdFJDSCGvWKVqec3+TetFpw+gsc6CvSY2htx5iEkJ5oOVin/Bz/pBbCTobFbBFYWYAloeNzKfr
	EUeUjXOFHI4ehSwNNvYZn108NBifsTf7JByu2LCtzaysAzVmMgkawIdW2K1xMIG6QVqNzknNk0P
	80dSmBsgM6Bbg=
X-Google-Smtp-Source: AGHT+IHOVhNU47/+DD5fBRQZEhcBAHU/AKZdn96IbRctWvk9khNi6X6pehRIlWW9dxiAJTamqzHObw==
X-Received: by 2002:a05:6512:3c81:b0:57d:1082:e137 with SMTP id 2adb3069b0e04-582cd97be33mr2171491e87.0.1759090205895;
        Sun, 28 Sep 2025 13:10:05 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316656259sm3530858e87.70.2025.09.28.13.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 13:10:03 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] media: i2c: add Samsung S5KJN1 image sensor device driver
Date: Sun, 28 Sep 2025 23:09:54 +0300
Message-ID: <20250928200956.1215285-1-vladimir.zapolskiy@linaro.org>
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
 drivers/media/i2c/s5kjn1.c                    | 1434 +++++++++++++++++
 5 files changed, 1548 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
 create mode 100644 drivers/media/i2c/s5kjn1.c

-- 
2.49.0


