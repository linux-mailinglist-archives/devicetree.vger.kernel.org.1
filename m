Return-Path: <devicetree+bounces-189972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B12E5AEA03D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7A6C3B8F53
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140C528C5C9;
	Thu, 26 Jun 2025 14:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="VNMLL8rl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0028507F
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947516; cv=none; b=n3T4hClssO11iHabDeRA6Sr86r0hGHvU50D1YYp3dP6nU9bZOCFSAmY0TwGhyjFQuVF7PvcderYpCh45PuFqtNWFV5Hci4486M3xd6jdfSK7KLAnfwE8nLbZ+Hg96wcJvVulrf4iNImycbvz0cypWps15XSNEeROeOc5/HZfHII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947516; c=relaxed/simple;
	bh=X0GjaqTTAa5JidnwmIm7FesIRgbpydxFUu/Rva0HYuA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Yp/vbZ6NGirA/6aBi/ZVrYv+s7EC3nkOlStVHDVa1+oG8dcrRIi/hV2mV7l5FQnvEsGoLoNJ5hxQhdYPsf/k+vi8gMXVUqxzKyqXVMUdkfUaIambulU7PzRKdkytifOxIHaQ1ASJl1nOIhHhAgtqRep5SzICPSjMh8ySGtvZBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=VNMLL8rl; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4a5903bceffso14499351cf.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750947513; x=1751552313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c1+njo/PU0WQA3UwaVXdY9MyHtDa5fqeWJD6Uqs2k9w=;
        b=VNMLL8rllbupPZMvcyxhWWcoHrF6OS0EKkR/8C2YYXpkhhfnuSGgzKE5ReCi6P0MsY
         MfmsRVlki/es7j3vwOn0MPJOLxYRsLu8kmc2DjTi9oTaDFcLHKBKg6d7uQDMkOmOmQVs
         LUWVV8vQfGf/qNhGB0v/fZnHmGaIje++/mJbTTfnn5J/dSOHNwUtjH5Sdy/wZ9JI2aEZ
         1mhNK3s0cjIbDid3M5csMOTADJop6mONVhjQItwPyTUhnVZwOQVy/W11rVpK6vFJ4phd
         HsKxBnqLcBgCNX5PAGYk7mz1aguP+uynBOLNqBoYM2FbM/z1PqRWuK8dsdFBobyhTWKt
         /4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947513; x=1751552313;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c1+njo/PU0WQA3UwaVXdY9MyHtDa5fqeWJD6Uqs2k9w=;
        b=eAIYXmuLHY2AbbZfhf7rC9lnBCVhLsTQng6YEhruwZnctyX5/ScIKN60swxDxm3Eh/
         blB3rRyQbUhHkjL+cjAifSOLQ028uic2gMcNm9Hro8RcJ5n1ZDHEyapPPuaeOgeHdupL
         j+vOlbbKdzr4p9itb61ZvE/rGGMMPJjE4wc3gMhPNXHqR0XsjqQHy4Ve8fmCWYRoJsN5
         WN3x0O2TZPhCA6p0kGThUYXm1a2iKpU3vwUZRRTr7D2TTyAiz3xGwG6lfPtd4mzCeYTr
         d1KQYG1vDtjXuOHjZ+7m08hMkIE3dGLWYgVR9p2rTi6m+GNUx5GTYf4GNsD2HhxKAb6n
         AD7g==
X-Forwarded-Encrypted: i=1; AJvYcCUK7VJvBDUqKakLPtWyhd6EDiMCllOi2HU0JU968rvOlFGNlX13O3tnmhsAfQPoVZgIGdiSdMUh6xXJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2a0RM/AHhGmsLOCxlEkKRdJqvIHM4gKbx9bGLfBp9FC9cvA0S
	vqFdLkP0i9GYcZcqwn7ITV3OX9lj7/QOKP6nZ1y8YsV3/wDqhiaSiJEqc0vGBy7No+8=
X-Gm-Gg: ASbGnctWTXzzdY6yaDsim00ZXz/WueLgqFicqmDMM/h7o9puB+QJtOtoeCIGUNdXB1G
	WmyzMVCxrt57f78RRoWncrgeJRxtEnckDUCjMLKvF908jKIQWsG/hXau52v08fIFWWUGBULV11f
	qnAg6lwMoJrtBvI9w5fK7RxOC//GLquE/zsAeSXgNaHep6/41kp4sqFiIK01LNJYcadDAoDFg0I
	9hbN4md2E3MmimzQ8IW/d/I/6IEByYEj+E358iqDth17HZCcqrUl9475LozSAbTRQeSuE8Pj3xr
	bnZl6N8awZwdGgMrJSNvbWbQjAB+3mumcYu7exmxKTZU5huXK5kazdd3MUu2yYCCJfAxL80rhHt
	9iYBBbxd+bfSGZ1oMlcWQSCqKzY/QbddA3p0=
X-Google-Smtp-Source: AGHT+IH50fVe+8buCV/yNDQQL4G1EmkNFITk4SYtG40d0e2VPlg856V2s5HzZ2dfEIhiKOw+A+yqaA==
X-Received: by 2002:ac8:7d43:0:b0:4a5:a7a8:fd83 with SMTP id d75a77b69052e-4a7f2a3c555mr61902301cf.44.1750947512103;
        Thu, 26 Jun 2025 07:18:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a779d6df17sm70266101cf.30.2025.06.26.07.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 07:18:31 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/7] spacemit: introduce P1 PMIC support
Date: Thu, 26 Jun 2025 09:18:19 -0500
Message-ID: <20250626141827.1140403-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements 6 buck
converters and 12 LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as drivers for its regulators and RTC.

This version updates the RTC code in patch 4 based on a few review
comments from Alexandre Belloni.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v5

Between version 4 and version 5:
  - Only check the seconds register for change when looping on read
  - Return without re-enabling the RTC if writing registers fails
  - If the RTC is disabled when reading, return an error

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

More complete history is available at that link.

Alex Elder (7):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  18 ++
 drivers/regulator/Kconfig                     |  12 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 167 ++++++++++++++++++
 12 files changed, 619 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: ecb259c4f70dd5c83907809f45bf4dc6869961d7
-- 
2.45.2


