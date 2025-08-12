Return-Path: <devicetree+bounces-203996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E07ECB23ABD
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 23:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 864C8682B74
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 21:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D7D2D062D;
	Tue, 12 Aug 2025 21:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KoX1VWOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E376B224B15
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755034238; cv=none; b=W+1BjyT11/1FQe6/GpgCETe2c5fEjJv7zlDe/BV0ZMjA95yblR61jAyEiCbOZ1aZLNmR0Pc3skOjIynSTznngxFs68zxtf3pif7o5yYcLtkOdq/eDd4QrCYUot8i8hCQ0YTgDPvI6L95j3lHi5YZb2hRDP2R1XRKjMpYSSS01vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755034238; c=relaxed/simple;
	bh=3bVGOgvaYtRz/DiOgO0OoOapLNzF0TPvyKYhduvb25I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QAooH7DOipeo63sFgKiiX3yJr8QuUKuPSyCoAxuJ3Glm+nic3J/gmkIIpVoaNlBVU2b5/a3iobIVllyVvXo0zvXC5cmNyrL4/1H2K5LMDmanEi5bImby2atUDIadMvpwq+OfpoBdm6QTckzd2N4Lrz7jCBfQg+R53/lW6ydabIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KoX1VWOK; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55b8007133eso833934e87.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755034232; x=1755639032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=psUWPz4+wtssRKGsWfUW0I6L6tFiRQT3bgTI77yJwKM=;
        b=KoX1VWOKOuF3r3aqL1kr2iPU74ibQAqhCBPczNylZb4xsmKcw/jNXdrYau2lHi/Zhw
         XTgujw3WNjlO3L/BBhkdH04CAuGkNTYb7z9UMwW9EFBBkbh+cN6SvEM7JmEilIjqOcm1
         ztadkhzGpLMyzY7sjvKSZTe8p08eA1t8qAprlQ9HZ9dVSTm1WwzVO8WwpkFpSXijaH9/
         goTlY8IhjctdTfQFZRKxq8ri6fFYGzorB9VUgw4jwKiP3bwqKDvCXOaNt9J4xhpgq+6q
         ZMihU4JEd8iLwgP/CJ7Qf616uF8t9Xe/10MnrhqjcAWmL367xNT3pP6+HBMq7GuU6ETl
         b0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755034232; x=1755639032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=psUWPz4+wtssRKGsWfUW0I6L6tFiRQT3bgTI77yJwKM=;
        b=iNs691tSozh7RAP550pKLoVAvowZRbrtELH8wVnd93X66R9Q6Iq6kkJKSk0oFmoi1F
         IBxnk0ij9R4F0OV7IX9tUOmb/phe8ypITi2Cz925+I/tdOAKObW2UOUSNd3G1D26ki4f
         NUpeJgNRXLp9whVY+rgr3BaYhf4DZ1VBr2xJU64sekT2ZbxX7SO1ObdrCoYk41BwQV/w
         xHTUX0ZxDwE+KcENYGtjgIrlHmCusAHIwSool63jB8bBUHsYIFZscJoY6nezQRhYvIGM
         XU1ioaI9TpQ4gV4/2ETSIATFm/LSf5HcJ7jfAjUpP9j8qqNXsLwGdH0kB5fzFCmCZ8Sv
         6eug==
X-Forwarded-Encrypted: i=1; AJvYcCWXg+T+/X2mb6Ztme/2Szq8J3VZbLSPbeVl4bsmnkfaY752HR/9ilXNrRh0LE7PRlGpEY4T+wcpcWNH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3c9sTTRZzL/20T2kyGXuEDkDOLrhtrzf81WNHqHi/AKTn7oT+
	ye4s3WczzgSk7Q30CCca8jcmyzfdli0JVOCt3Ifz1C2qtohSUPKgV2ZVvdeViV+rMxY=
X-Gm-Gg: ASbGncuYNjjH3+A98DfzwGR8h31p+tTUkCFrDAz+zGwQpFjNtLen7JLmU8SyXzWsV4b
	3ECKNnweAgkd8Ydxvy5FHqO+EW1OmrTNq5R1CF1cP/YJOMCKfSUnySgN2szU2yRTY0DSvsNyTxB
	rQ6XpP5t2korC1SgK/7eXTTpQp2l0ODJRZVb5yEFyxi9tHSw2qjcGB3MrHanhkLgAeCQeycUDfJ
	aLC+pfaljWu0SyggsMJvySUTy1/7WhCSd73Na/P7AzkZ3v8IJh0iVg6WRlaifBFIMzuzKNyQsbD
	qD+u/lSsjO9Gvb3tlWu7giVjNXABFi9d5rEuFq2nMIuRAkYVVdHCFRAzQFDJpcDis2Lu9OEjfqF
	OhV5OzoDxRBJmh4ksKyWFi7LOCTPw4cE4JE3d4/xQua/Lg7/PD9LarWpDnVND/iVxTCM/pvtYZw
	wschTya9ME/snzBC+G+dY=
X-Google-Smtp-Source: AGHT+IGKZEt10hTqYaGBDYQkcQX+jVft77pRoDdB6GrtxnJm2RdN9TM8DfIL3yibObyTJJ91TTDg/g==
X-Received: by 2002:a05:6512:2204:b0:55c:c971:2252 with SMTP id 2adb3069b0e04-55ce03fa27cmr106653e87.9.1755034231887;
        Tue, 12 Aug 2025 14:30:31 -0700 (PDT)
Received: from localhost.localdomain (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55ccccd4917sm1612331e87.106.2025.08.12.14.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 14:30:31 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] media: i2c: Add OmniVision OV6211 image sensor driver
Date: Wed, 13 Aug 2025 00:30:22 +0300
Message-ID: <20250812213024.361267-1-vladimir.zapolskiy@linaro.org>
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

The driver version is based on top of the series, which adds a new
devm_v4l2_sensor_clk_get() helper [1].

Link to v2 of the OV6211 camera sensor device driver:
* https://lore.kernel.org/all/20250729231454.242748-1-vladimir.zapolskiy@linaro.org/

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
* https://lore.kernel.org/linux-media/20250717124001.108486-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
1. restrict endpoint unevaluated properties (Krzysztof),
2. changed dev_err() to dev_err_probe() whenever it's applicable (Krzysztof),
3. removed in-driver I2C operations in favour of V4L2 CCI interface (Kieran),
4. added hblank, vblank, pixel rate and rotation/orientation V4L2 ro controls (Kieran, Dave),
5. due to unselectable data lanes property removed data_lanes handling (Dave),
6. replaced devm_clk_get_optional() with devm_v4l2_sensor_clk_get() (Dave, Mehdi),
7. minor cosmetic updates (reported error messages, goto label names etc.).

[1] https://lore.kernel.org/linux-media/8ecbcafbd91b25ad5e188dbe127b921a1643027e.1750942967.git.mehdi.djait@linux.intel.com/

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
  media: i2c: Add OmniVision OV6211 image sensor driver

 .../bindings/media/i2c/ovti,ov6211.yaml       |  96 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/ov6211.c                    | 809 ++++++++++++++++++
 5 files changed, 924 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
 create mode 100644 drivers/media/i2c/ov6211.c

-- 
2.49.0


