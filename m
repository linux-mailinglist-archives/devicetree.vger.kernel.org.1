Return-Path: <devicetree+bounces-200598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60073B155C9
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 01:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 872B73AAD54
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 23:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B4E2874EA;
	Tue, 29 Jul 2025 23:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UzdrN5sf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCAF286408
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 23:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753830911; cv=none; b=u7OVpVWB3gCEpJXWDgo85tZWeJwS6XlEvzCEvErqyzKdpFMmwJ4BS7QNo3qXx7B4N5F31Srp66lqkp15yZKw2E9REeEQ/17VKIVfedDOXmFJtaNs58Um+gxPHwg6tqoXpbufiHxBgGaZSSgfko96cmzUrkd5NScyvBWP+7pTKzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753830911; c=relaxed/simple;
	bh=x+g4ygtcWeN38NDAPYsG2+xrSRsrpI8XLqkxVIv99RU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QL72NMUjOqPnIcJ1V0PQ5yqOmk9/Bl49USkw2VRfQpFT4hEvQ3pwTxtP5eTG2Utyp4PNYYfS8PaOXCNal6UwuLRZdYtAYMisoRk4Blf9E4YYZyr/gUStYX2+s7JYurQtT9JWUpmyUm8ouiSu76U8r61ElEEFsx6R0WhgEUQjUbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UzdrN5sf; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55b77a7f5d2so214096e87.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 16:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753830906; x=1754435706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0xsZxHb7QBBGXkPuGj33lO9MyRyNQG/b8NqFxhEXBDk=;
        b=UzdrN5sf5U4RpuKF9G6CoYE8CTEunOZXGeeh4vzSMG9hEiAkm3fJKXIxmXovu95RcP
         Q4a/UnZ7NOTlxBur1KUliL+6h6+19fCl3tz5vWAD582WQEb4+3+Fi4oQvD51sUxqqmak
         NPcev23zXXIPn0mbH2mRssJ3m0vxoYjxu6aGyqzV3xcg+7DePF/dXpR1N4S1VCAWT72+
         R3XZ1FlyvezNsV5VNXptnFzHvrC1nMIAlUORX2sIgxTdf2Tidy6NKLi0ZTE/VTjSeNj3
         hDuzMGZzMWRFIk/2xLIaUcqV3tFMqtrA4R5L013UEh/q5oR6a0nfd8yh2DwkG0Ljrg+d
         RXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753830906; x=1754435706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0xsZxHb7QBBGXkPuGj33lO9MyRyNQG/b8NqFxhEXBDk=;
        b=cJlVJLjRHVUVnbnJTxvQRsU+ZDEkCK5ifLw6WouohtPlWjzcuEeoyZC3b4WGpNNim2
         3OWHfpo/xOPToPqUP56KivrBkP5U3dN9wVITKBV87x3m1IDa1gQRTkbmERR/WeSs9jz1
         +0Bno26IHkBTObwEc5WOUPmuPOY+NZtjEbLPauvkzFjZ4BPDMWWECXYKW8zC2PFP3aHk
         Ui3TTRHWZ9dsM1c8tTPgzda82lbsXih3GYei2adILgyC/ttlER/YsvCC9i0mGvbr3QO3
         gKj5RWkoHk1/kKnmFYQvYA2G4ZeLv87FMoWa7o6Ry9gQ6cqiOIAJf1ItZdfKID7LxEB8
         82kg==
X-Forwarded-Encrypted: i=1; AJvYcCVpQZrnildvTud517c4HEbjvYuL+2clX55owfWAafbqecaxtxihognQQ4+djhVKE+9y0JlbuZEvlDie@vger.kernel.org
X-Gm-Message-State: AOJu0YxhAhyOAgmsWa4YMjNZQ0ia1bDn88OzNraea4SF5LGUhn2fwhRd
	oAcX96+ZhvXaYCosWyHBVPihqFIkB+IWe639B3lxLt18sgoxQMG8Pu56oL4iRiHxr/w=
X-Gm-Gg: ASbGncvvJXcha7b2ey+3wTBq36tLmx1f/JE9q8rYWaR7bDYVDIge2N+sFC0jvwkVsxf
	exGsQl/VVOK2RiM6/Qqv8SAHD8YjRbCK1g7nR8ITHhOGzALTOD62RaYXl+QDKl7g097Wj3Kyz2z
	7lbOmixv09SH+Khl3C7QEJ5W1okxh3xtefvrVtJiVKsbMnDSQcNVZJYidOEkFkNFvmVVFN1PSZw
	w7RZLFPJp/dF4AXEilB4m8v/rjE7UgDHIgpZUoSeP3YeX9wkiJ/4fJQd3Ih+NJoVSUm/j2wE2hP
	ECOFPjOXbFNlOXt6Vi5GINP5XXfkYyOfsqnC7hpCevHSqMxshJd1hpsG7/AHeZty/J0t6Oyi2vI
	kloRnvNoDy4cSUwh/3eA54Y0Dc0Bu7+f3CLO037gJkW3WL36D7uwh5J+gWRKAd2FCURtvYQaz2H
	BTIiOfMwI6
X-Google-Smtp-Source: AGHT+IEryFbSs7unaPz33h1cSUgHYkFy0fw2OwA69BDlGdGdDcqiQP+r2FK9QoDodr86IFYyQgMjXg==
X-Received: by 2002:a05:6512:3da8:b0:55a:5217:43a4 with SMTP id 2adb3069b0e04-55b7bfeccd7mr159542e87.5.1753830906483;
        Tue, 29 Jul 2025 16:15:06 -0700 (PDT)
Received: from localhost.localdomain (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63375a6bsm1871650e87.144.2025.07.29.16.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 16:15:06 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] media: i2c: Add OmniVision OV6211 image sensor driver
Date: Wed, 30 Jul 2025 02:14:52 +0300
Message-ID: <20250729231454.242748-1-vladimir.zapolskiy@linaro.org>
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

 .../bindings/media/i2c/ovti,ov6211.yaml       |  96 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/ov6211.c                    | 821 ++++++++++++++++++
 5 files changed, 936 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
 create mode 100644 drivers/media/i2c/ov6211.c

-- 
2.49.0


