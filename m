Return-Path: <devicetree+bounces-234412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646FC2C9C1
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0B2914F38FD
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDD025D1E9;
	Mon,  3 Nov 2025 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RTCxV/sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F1FAD4B
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 14:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762181812; cv=none; b=J2h2cW026FuYmaz/ILcS8A4YvqpUJgdeaEV4UiCktMOSCKyWBuSuKoxC+n+rQEXRwg94rQNewF+gka1IwjZcjL8DrtQ5rzJEBSi5LLoEeoMQZ9nWt2NQjk3amIOg7/RJciJjtWsfHPNcAZu7V2AqlQvfFSnpJi4ig0xNUdD60S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762181812; c=relaxed/simple;
	bh=+dN8MGig6uWQPCIQSDotDuiChqdEPeG5tERdgPyZLN0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tWgv2Nk17HTEGTL6UwlYowvbNv9NeISLuQCROGV2nkq2wwR8Kbp/6xsRcHpPmZ2ADvEWiHxfWCM+IRE+x9vES27CWqjDbuyK1MW/9FSjOfsL7AaVBK09mA4oSQQxTB6zLKbjADI67wdHqEEwyOOXrCR7h3322yN66J0ulOreBGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RTCxV/sj; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37775ed97daso53951301fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 06:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762181809; x=1762786609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=06au7PdCTZBJsIAFhSDifDXIKO9CcQZkNrGbPjdHVdo=;
        b=RTCxV/sjZbRB6Qy84hdcCwfXg8z/VfUxRvB/L7RKfZdAHWj8nM1g1kvNUaal8dt1fB
         /YerzVR3ms2GD6LHhry62PsRvtMhT8tdby5xB32tsEF5RkUYrE8BHwSR/kUtqPRDf8jO
         yLMUKifQzbuE822RemgopvDWBvmM3ts6C1K+xShh4nZ17DZahI1Nhh47tXMTZu9zesn/
         QyCRNswfJ4jeB5poQQXigfSQCx5PIlicH9n6lFtANR5XC47QTri7DKJvfhe7umGO0peH
         /FOYlLo+vPOtv8OhWke1npwzUc1K2mJM+Syq9SH+QewT6M6UsYry/CGkZekz90dnJZGY
         8ESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762181809; x=1762786609;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06au7PdCTZBJsIAFhSDifDXIKO9CcQZkNrGbPjdHVdo=;
        b=BT0Ge43E3XV1RJyU2sA8+3fDqlvyUjEDgOsIFrGcQvKZqugpjClW4aXIDbUlV1+RYf
         +azpbGYrQf7vnN216Flkoc10TmgjqXjyqgZJiWp2l3BLXwqaSh8h3e18d04vArZNC9CE
         f+CO/OnIQTPNXbTmCE74esphykC0c7LhLipWWGHBzJAfYm0oEYNm4KCI3iKIEcdx8m/c
         8RuPNTFagYUYALzfa4crmoaz9gyVjySj7vWwTNqvgBjmuw3a/gjXxJXSsZsqkUp013pt
         KqrvBPjnj8GfFhqW3TrlTi/SSDbefTDsPzYFXN1qz27OSGn7/ZG6OZYnf32XudU6pbJJ
         EZ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmW1V1CN9TyueQNksL79XjSh+s4nlkhF6HT6I1dvF6UlfU8gMmoAy9DRduJ9zIa6s3Q+lgbRIwaACU@vger.kernel.org
X-Gm-Message-State: AOJu0YzFCMhJSABFYUqV/c3VPGxNwnoa9Iijk8yP13x3t/rdCesW7MFz
	bf1FpQrh0O4BIRFYSSot0iUK0eBamk4a3sw2gUl8canImc2c9hiu6VWk
X-Gm-Gg: ASbGncvjx/FSHVgeZ2X/zQ7VzhrI6bQuMOPp2tukTjtRYLQ0dcv/vRD3e438ee99ZU8
	U5TXw0dbk3Xvk7aApbj4wGUMRgxqFmKWKVxz6kTncSE2jfWFWJbKNYJdlUQf/119IcXKJKMsp0W
	CBna9sT3vPmZtcyIywdvgxwflv/G5o32Da0x5q6dU7TXaq+z+WzfwDP9zl3hH6rrMknKhN+6Ne/
	KjeSfoE+9khylxfe1LCLONsGx1EeHUbOQzZyNw7GvRi9HpOlc0ACThqeqorF2MCd7sKWmHi+uPJ
	9PpRzQPZNp8sDvo2yHjEbzo63cUcbfXTo9tw4uVlnznnDveCyGTplaScANLWPMkVSOZbopyJsjD
	mnhsNIMkfvXngUGM3sJcaYwYLgmJBQHktBYKcmYtR5slZ//RgrXjXGHPb6lwLWfWh2I0iuS9gCo
	RS
X-Google-Smtp-Source: AGHT+IHdcY0n/ToJFT5WAUX7d8ExLtottZsCrLvv1FwdNHp2aDaonUKZNXv09EdyNfTU3Y8FBBxhGQ==
X-Received: by 2002:a2e:b8ca:0:b0:37a:421c:cc4f with SMTP id 38308e7fff4ca-37a421cdfcdmr491651fa.16.1762181808919;
        Mon, 03 Nov 2025 06:56:48 -0800 (PST)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a414d58b3sm937061fa.18.2025.11.03.06.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 06:56:48 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Hans de Goede <hansg@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Dongcheng Yan <dongcheng.yan@intel.com>,
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] media: i2c: add Sony IMX111 CMOS camera sensor driver
Date: Mon,  3 Nov 2025 16:56:27 +0200
Message-ID: <20251103145629.21588-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add driver for Sony IMX111 CMOS sensor found in LG Optimus 4X and Vu
smartphones.

---
Changes in v2:
- added nvmem-consumer and dropped eeprom
- switched to unevaluatedProperties
- dropped flash-leds, lens-focus, orientation and rotation since they are
  inherited from video-interface-devices by unevaluatedProperties
- dropped assigned-clock* props
- improved code style
- adjusted colorspace definitions

Changes in v3:
- switched to devm_regulator_bulk_get_const
- set V4L2_MBUS_CSI2_DPHY bus type unconditionaly
- removed pm_runtime_mark_last_busy
- removed properties from port endpoint and bus-type requirement
- removed unused headers
- adjusted register macros
- added vblank and hblank
- swapped register writed with known purpuse with macros
- container_of > container_of_const
- added return check to group write
- adjusted PM similar to imx219
- switched to enable/disable streams
- dropped enum_frame_interval, get_frame_interval and set_frame_interval ops
- devm_clk_get > devm_v4l2_sensor_clk_get
- adjusted default_link_freq calculation
- dropped imx111_id i2c_device_id
- improved code formatting

Changes in v4:
- aligned to 80 symbols per line
- switch > if for V4L2_CID_VBLANK in imx111_set_ctrl
- defined INTEGRATION_TIME_OFFSET
- added check for __v4l2_ctrl_* calls
- removed struct v4l2_subdev *sd from imx111_init_controls
- increased num of controls to 15
- initiated ret values
- added return pointer to most cci operations
---

Svyatoslav Ryhel (2):
  dt-bindings: media: i2c: document Sony IMX111 CMOS sensor
  media: i2c: add Sony IMX111 CMOS camera sensor driver

 .../bindings/media/i2c/sony,imx111.yaml       |  105 ++
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx111.c                    | 1610 +++++++++++++++++
 4 files changed, 1726 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml
 create mode 100644 drivers/media/i2c/imx111.c

-- 
2.51.0


