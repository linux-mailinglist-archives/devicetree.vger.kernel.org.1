Return-Path: <devicetree+bounces-240762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A5EC75327
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 993423154B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC6E35FF7F;
	Thu, 20 Nov 2025 15:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="MqNy79CO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D69635F8C6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654312; cv=none; b=mhGDd674M2qkuhL2DgvrLKEqgqRglUOVM1eRiONB6/gRsAlx37C/EBG4rAVH9srvfxZRO0wUCgV+Q2isqrFsOwVFG89kAjJneL7uTW1GKoIzZSvOP44LHL2gjD+YykRDX0gVj0xg41qeDoAZhPXHn3a5bUmVoSZytupHH7VOhr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654312; c=relaxed/simple;
	bh=w7YFrkfbyTCvfyB41gavemDY8lfBuU4oxXFueWjMa9o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aq2FugJphSni5IwMUgp1OPkAJsGj1/gP7CPNYlwFm41Byh6RGw5PrY9hg5JE2jegvufMfGT8btBjXWMdga2kkI7gwlfGHFl5yxSGu/lwwUxqWCK49iOAUGVeco3AmtOzDNw0YyXQutRnU7k+IXHlx5LUuZKg5rUchA42dO4hgcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=MqNy79CO; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47790b080e4so5912245e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763654309; x=1764259109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2hexUd/mEPKRNcSZxwjjDeUDQ0Dgw47XrMHUrWKRSBc=;
        b=MqNy79COfZ4sJe+gRWcQ3dsA0oEMcFxTj8lwFl2heKsWF53trncCcm8bJuxye4ElTR
         FPoSmEA9wJmxDqcWkxUZBX8urWeju0/kt+FYVxTnRI7aNRCkaBypSGOEx4oxV/mOgQMv
         jd/VwKcyhjmk5lCHqVjaCIV2Tv3X7OTuPp5w8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654309; x=1764259109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hexUd/mEPKRNcSZxwjjDeUDQ0Dgw47XrMHUrWKRSBc=;
        b=njq8oPi2TyNWxpRvNpsBNUyMa+GXXg5/hDXOm53Yow2xXa/+pqwDwvmgVtGUJW9Ck7
         zeq1DPof6gNWLTAI5St7xZt7hP9oOtadmbnA9b+FrLKgwJj1h5D64RMx+8N9kYZPQuBV
         bCfWHsQeq0uFXfmrcvdQWBvHIZT83nOiy7CdQrvJcC2E251zd/qm/TYIUZ3zAYxid7rZ
         1Nq47/0tcOw1z1ecO21Pe/nztCpHd94VkXof6ERtTHHqNgo6uBL3ISBdDHjY5RVPEQmv
         BZBE3lYAdYpTCFiJ3k85HeZnUnFsnN8ap0DzuyXQuuWjDGF5ESRbERyKWzbnDnZRpVvX
         VFtw==
X-Forwarded-Encrypted: i=1; AJvYcCU0aTiKz1ZLtP0fX/vvGn07AZq5dwrah/tz/+bbsxkMe11vJr4BlETKP4LL5YYSuHHes/mj+8K/+xs1@vger.kernel.org
X-Gm-Message-State: AOJu0YwBiG2UVzYkjvR5Zoo06KvCTfTG/9qYD2GWVhMV0T2lCVCQzLn/
	ki8utNNfon3T2mBP2VusvwUwzfUJD6bEaLCViJhfnwCYPspi5C1AbrVdqPEJRt2pbGA=
X-Gm-Gg: ASbGncvsTRtUQEM+J10201BPr6Z0/lIlhIySEjrarKs7mUTff0C9aO1wIMoSsv8/qrA
	Dgek0bHTEA+FJ/Wpf1rNYl6b7VITtmVe0fyjo8q91rc15RquPF1DFT5DS1q+fn4Pk0k5WAC7iot
	j0FXK0x/F1qjWwFZ9fdF4/EKIDDwXJHvmn0rH5v6425rzTXfsEbAE/hd/cR2e7HHmoCTmyyKzm6
	XxSsUZr85JV5LN1FsMTFnGpDA1TtXlrFaJ8YZow5NicXAh1modz2yZYBosMtOGMaJZM6m80a/b0
	ZFNUb/Z5DgttcHWuUzYJf9+dD4pkY3WaZbCzODxl+ayT/bgAoSoKbRugrYM5GS5OSnSwkHMogB7
	NDSh+8LhckztzjfTkg0JlQ635G2KwL/RkMqeUwNROuoOBhFPLv2IFzRhfULY483BT5C6tNmAA2g
	yHY77j2iA+UFtEXmgCzbhL0mGtVVDb25kyVduegz9oqVSd
X-Google-Smtp-Source: AGHT+IG4NhfTIea5v4MrG55J2UDtrIq+RFeJgaP8RzHC/SVzuCvbfTRCVSDl01OcSMHk5n0jCxfnRA==
X-Received: by 2002:a05:600c:1c14:b0:477:8b2e:aa7d with SMTP id 5b1f17b1804b1-477b8aa0ed3mr51319355e9.30.1763654308687;
        Thu, 20 Nov 2025 07:58:28 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm55552185e9.8.2025.11.20.07.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:58:28 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v3 0/6] arm64: qcom: add support for Arduino UnoQ SBC
Date: Thu, 20 Nov 2025 16:58:19 +0100
Message-ID: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu@arduino.cc>

This patch series adds support for Arduino UnoQ single board computer.
UnoQ combines Qualcomm QRB2210 microprocessor and STMicroelectronics
STM32U585 microcontroller.

In some files we decided to keep UnoQ code name as "imola".

As this platform has a microcontroller connected to the microprocessor
we needed a dedicated spidev and to add uart2 to qcm2290.dtsi file; both
are used as interfaces between microprocessor and microcontroller.

Some GPIOs on the JMISC connector have been defined but not used in
qrb2210-arduino-imola.dts; this is meant to facilitate carrier dtbo
development for users.

Changes since v2:
- In PATCH 1/6 the vendor name has been corrected to "Arduino SRL".
- In PATCH 2/6 and 3/6 commit message has been improved to clarify the
  purpose of adding "arduino,unoq-mcu" as trivial device.
- In PATCH 6/6:
  * the qcom,ath10k-calibration-variant has been changed to "ArduinoImola"
  * leds labels have been changed to simplify usage for users and make
    them more consistent with future Arduino carriers for UnoQ.
- For every patch, warning regarding mail mismatch when running
  checkpatch should be fixed.

Riccardo Mereu (6):
  dt-bindings: vendor-prefixes: Add Arduino name
  dt-bindings: trivial-devices: add arduino spi mcu interface
  spi: spidev: add compatible for arduino spi mcu interface
  dt-bindings: arm: qcom: Add arduino imola, UnoQ codename
  arm64: dts: qcom: agatti: add uart2 node
  arm64: dts: qcom: qrb2210: add dts for Arduino unoq

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/agatti.dtsi          |  24 +
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 459 ++++++++++++++++++
 drivers/spi/spidev.c                          |   2 +
 7 files changed, 491 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts

--
2.52.0


