Return-Path: <devicetree+bounces-254361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98934D1784F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9BE92301785E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E70E38756F;
	Tue, 13 Jan 2026 09:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jM8W5TAf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB13C387350
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295429; cv=none; b=KxCb3Xa0Re7A9xkFDTj7Ky9c4kUEbDarcUMXzaqEm2H42uGuE0wapOJEkyZ7Cs7nwxyHm2Gh0oVZiXjcC19qEEzjkXL2Z1ae1NE6usg9C4DB/EBj58EEZ6hN7b2XppzG5V+LzRkw5Of0Wr0dBEg4l/pXac0wnBDsXpoZdd35oSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295429; c=relaxed/simple;
	bh=s/jF9+hqCAv6wHzOdcukjmbu36l9+qr1UuglQ0HXCvw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=FG9TpYvNYE6w4eSbWyZPDMSAAe9I4lpkHnWL4fsGCzFaz7mTcbfsTLl4HNOlPQBSXznGIBi4zXIcuQo2ey9AuzO9d1X0TOoVoKF8cY28MmE34G8CfvPl6tJYR0siZKhT29j4aGOG+X8AucUtZ5wtctyrI2xK04tu4ZYRTWsrkD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jM8W5TAf; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a0833b5aeeso72680625ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295417; x=1768900217; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AL3AmhrXowuR2G2gwigOGPD7FLU1L7Qmmgu+Bu3T/hg=;
        b=jM8W5TAf71arkjQQhvvgWm4l9nPE2zyxwuYRTPlQNv44jb8SQQw4XWzwwJW77qYglb
         ObhDGAg7YLuYkfcG38+T3iw+9hbnP1rFPzj61Vy1ArCr/PN+RQAXJbGcDKA9TUa0qynV
         Ld3FMmcUg7ZldJ1/sYOvBmJIPFYyMFnwVzZQKX1Eb/egYEdapIjGero0I0qhOsO+or7m
         L1HzS3uMTXHljoefmft5uMo3zax1Qy1qRencYI7m6wDkAoPYB6Qj9MEizS01jvD1gZEg
         0QPeQK61lYUEpHbsCrmUdYfBtdV3++2Yt82TkwWMW1Eqk9Pq9dgs0MfTcpBqOGNvQfWk
         K0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295417; x=1768900217;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AL3AmhrXowuR2G2gwigOGPD7FLU1L7Qmmgu+Bu3T/hg=;
        b=GNPyput6cu8MTdmWEByjLtFYEGwMYVUF6fqJLoX5L6LVjmjQadKIQ/rNktNAavHorF
         FNCZI+2XSsfjk/IA0hW6Bqj27U/lUN5YchIuoh9xg0J8DT3YDtkVNeaG7MoTDKjuSGFN
         FbjbYXS1uwv48bpDOig/ase5DMQZvnTDpi/R1afx6kvfDm7GSf092SGjj2y2Yo2N6u8s
         AInnQ45qrnp6mfroMZv1++7yPlIZePP98fCs60B0kSTb66Ld2OCV4pf19JYdmlEs0EDk
         rbpHXs266qcmhNQrxvB3WBCLyCT1CkmlWPHBGSgehuZHqQ4BnkMDEL9X8RHreFHECA8H
         dcgg==
X-Forwarded-Encrypted: i=1; AJvYcCVF6Aqrmu155F4FnU7ejL6KVjkd6ohtR53m8OpAx9I24Vjm8Ovw9V3vxHnnzH8o4ic1utlahm7pum20@vger.kernel.org
X-Gm-Message-State: AOJu0YxHipCLH3FE1mjhxR8+w2ZzwSV8FG3mKbgviUs+pE4ch3wITDNJ
	0aeV+jIywqWH9JXL1G6B1SceXSgwGQj1h3Twk9U6piH2SgXvwXopkxTD
X-Gm-Gg: AY/fxX5gwJJXE1rOwLzGRJVJyhwXaQMQ3065XLAeVFbhv7Lhhdpe3u5hgdtWf4+/+rO
	plbQ/NVe+StHRmQIwGuxeEzpFx0KInKGt1PxpIW+1EGZNGU9FhHnofwTuGH6WhaO+L08242inik
	08gk8VP/UnnF5I8vmrYXcpSmsVTNDmX658i/qC3MkHjOJb1PLNL4Gl1iLx/xTEZAG3KpnG2ib0V
	/vUOwGayN7b93X1+bp1xiWj6+xUzc1taJWoRYRmYJuMOyEihsCG+8TipMKzPaAkCYK6ptHxe+eK
	aBy5qvdTH06NNRrqD6tvc7mtjUz2/cVhGEmQcPUAI2dzIW6Dh0iT3GF2EqqG+WxAwQ5/faNWkvX
	i4huPTrD1vR36KQXRvjmVlUcI9/IAEu/75BL/aF3tHc94Xoqdpxg7ahe1U7JAeYzWTn6cBwUget
	bE0U3M7Sc=
X-Google-Smtp-Source: AGHT+IE1eZuFWYVL1uwHVIQ6oD0tCHFHyYCy5zhe0eIXjlwMHvn0V3kwTkAqzeYTgYzwyX866SYluA==
X-Received: by 2002:a17:903:2450:b0:2a0:d6d5:b342 with SMTP id d9443c01a7336-2a3ee491815mr172892915ad.37.1768295416821;
        Tue, 13 Jan 2026 01:10:16 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c0bsm15293915ad.31.2026.01.13.01.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:10:16 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com,
	christianshewitt@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	nick@khadas.com
Subject: [PATCH v1 0/2] arm64: dts: meson-s4: add support for Khadas VIM1S
Date: Tue, 13 Jan 2026 17:09:49 +0800
Message-Id: <20260113090951.35928-1-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This series adds initial support for the Khadas VIM1S single board computer.

The Khadas VIM1S is based on the Amlogic S905Y4 (S4 family) SoC.
It features:
 - 2GB LPDDR4 RAM
 - 16GB eMMC 5.1 storage
 - 32MB SPI flash
 - 100 Base-T Ethernet
 - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
 - HDMI 2.1 video
 - 2x USB 2.0 ports
 - 1x USB-C (power) with USB 2.0 OTG
 - 2x LED's (1x red, 1x white)
 - 3x buttons (power, function, reset)
 - IR receiver
 - 40pin GPIO Header
 - 1x micro SD card slot

The first patch adds the devicetree binding, and the second patch adds
the board device tree.

Nick Xie (2):
  dt-bindings: arm: amlogic: add Khadas VIM1S binding
  arm64: dts: add initial device-tree for Khadas VIM1S

 .../devicetree/bindings/arm/amlogic.yaml      |   6 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 191 ++++++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts

-- 
2.34.1


