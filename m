Return-Path: <devicetree+bounces-187562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9896AE07D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:52:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 800654A29CB
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A40C28B4E3;
	Thu, 19 Jun 2025 13:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eAxy8bMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25822273812
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341118; cv=none; b=T149hDXtBDrTXjjGfW58IyREs9iVSODPy5Gi9QQiRraKQT47H9/92HYdr/UUcNHcnj93JsCqNY/o5S1ky6ijR5wUCv3ZD4XvZKXh2+FFqFnRNRRMbqHQYeYfygWgAdH3c2QlMNRatmOcbAoTp/bYi7Eigdgh0c/M0EIuN/aZPJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341118; c=relaxed/simple;
	bh=pz9rugOFzrRuRoXAnRvW6ba1xJ5wAStNuPyS+4gVoGo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ap2h5mVRrHZj4ymJFs4t0lB23Ax6pV0P7o2gXT5FsYEtp0enlCnmV0RVotWytTLFLsBPxQDie/VULWsyG7O4N4hw1yHVyIDlcgMKkCHA5TNsBaCp4G/dmFaBbWiypkVaO8SeqmevYd7s0WG8KE0aFkEbzNI6AGqCQGBi4So+wxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eAxy8bMW; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3de2869dd74so2861805ab.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750341115; x=1750945915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E4/kRfI7GtIIigr3/HBRf4Is34RYmI+DLhB76yDRywQ=;
        b=eAxy8bMWf9KKIyvyJzcIGnRwHxza13MNgOG30hYqlH/doXsyoFqkiRqhdIOY/9bDR3
         NzNvHy3PW7Gi+eJimQepGg6750tPVxVnErMxA5ccGh4pp/HnXlkh/imjuCifmmqwOVdd
         PepMqIQbldNZgJXg0vMGIzpnbzFKcJDyvxfyAjtd/jiQGgdgyqLlSWEOj4giVor6iqmD
         8GgcatNyQR4xN8loMniESE/uOZdNAb10WXUuEjnh09mG7LBsmjuf9DBkwD5nPpAYcUFr
         8PG2WMpEjTt6b7Ky5or6vtLULq290A6P1owBsDUnQqeHtxq34hRbF8Ob5J2eSxv0hKXD
         ITDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750341115; x=1750945915;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E4/kRfI7GtIIigr3/HBRf4Is34RYmI+DLhB76yDRywQ=;
        b=b+t9+a9ZgC9chcJsX9xjKwdUIYnf1maCtPCWsB9q15RCH4mYH0W3c9Q/ONYtR2a0QQ
         4OgWuzdOth6UnffRM7hk15vXe3nResP5qAfxZ0EwRvU7WEci3w9DCejdPsNLoY8EgN+4
         8fVr721e5PlcH4RApUJBZyxyBHN+uZko2CEcpWiUmCL5KZmRx7SsX50w1KX+h3ZxesUF
         pK59hfB+NNi2V9Ftysp3TvuiJzZ3ZD5DnmYGnA7HQTv/Jwgnea32JEvHxtr8zMc7dxvV
         y/QZLqy/BhC74hmBOCvQLlXu+wsQOpk1JK6GeO5GTCiIsMQnRB6nhwjRslYzZTLJ7TSX
         z02w==
X-Forwarded-Encrypted: i=1; AJvYcCXrfX1RBaUuyaQMfVn7FjBYbvRo1VUJpTGMVPa+iVnMwc/9NuwCMYoYw+XJOJHtZuWEQMfrrwM2kcJ2@vger.kernel.org
X-Gm-Message-State: AOJu0YxDKbV1hZQwbKS2/cjCMFjaWMmyY07S8QMY08zCRwm2Wh00q6eG
	GJO08MttLvCxA8HUHUVKj1QZs0U6MMgix0OHmAXWbii7IX/x1bDxT9FsjFuh9Wu9zkA=
X-Gm-Gg: ASbGnctN8z5y5tzLfooRVC8DCmncCRBjfi+Ch+8B7IZFQuodfPSc0bNsQk8uY9AXOuw
	PX8JK3SDqR0UdjyVyEq813Ip8g5R9m3xlGSA2Ip0FtvDBYhTYqL6CQfp7l/q8xwTWoVRc+OyIAm
	Sv0RF0RUkhiGnbJCKy3/ajNiVWQHa5JnELn9SpzORG1QLdsxaIySKUmWwu6X4WHiM1sC7LX1QSo
	CyYgKcF2fOWlo9YaCJXP28zHf4l9EAXs3DsArQHUeQc3Zg7nq+lba6n8guUqHrmoIMG8hpQ9OUx
	h7Jk5uW1rTXFDLkjn3JKEbQlngP2X0WnS5mzmaOd9Jc8c1lfxj+AzguGW8zUog1460CKh0LfrKj
	csR6OQb5qdxkJ7SXwfZxvoZ/Nba/+TDg=
X-Google-Smtp-Source: AGHT+IFrbensFAkg/HByCyIpWD6NGm/n/XxGHWXyYgLJ12Gm8oYiEV2EbCqtiQI2rbB+Z4f+NfDTKw==
X-Received: by 2002:a05:6e02:17cb:b0:3dd:8663:d182 with SMTP id e9e14a558f8ab-3de07d6875emr211780235ab.13.1750341115180;
        Thu, 19 Jun 2025 06:51:55 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de01a453b4sm38246015ab.47.2025.06.19.06.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:51:54 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com
Cc: wangruikang@iscas.ac.cn,
	dlan@gentoo.org,
	troymitchell988@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] spacemit: introduce P1 PMIC and regulator support
Date: Thu, 19 Jun 2025 08:51:44 -0500
Message-ID: <20250619135151.3206258-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements six buck
converters and twelve LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as a driver for its regulators.

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v2

					-Alex

Between version 1 and version 2:
  - Added Reviewed-by tag from Mark Brown to patch 3
  - Implemented suggestions from Vivian Wang:
      - Fixed a typo in the subject line in patch 1
      - Now use module_i2c_driver() for the PMIC driver in patch 2
      - Added MODULE_ALIAS() for both drivers (patches 2 and 3)
      - Defined and used DRV_NAME in both drivers
      - Added additional Kconfig module help text for both drivers

Here is version 1 of this series:
  https://lore.kernel.org/lkml/20250613210150.1468845-1-elder@riscstar.com/

Alex Elder (6):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: spacemit: add support for SpacemiT PMICs
  regulator: spacemit: support SpacemiT P1 regulators
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 ++++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  13 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/spacemit-pmic.c                   |  83 +++++++++
 drivers/regulator/Kconfig                     |  11 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++++
 10 files changed, 508 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/mfd/spacemit-pmic.c
 create mode 100644 drivers/regulator/spacemit-p1.c

base-commit: 2c923c845768a0f0e34b8161d70bc96525385782
-- 
2.45.2


