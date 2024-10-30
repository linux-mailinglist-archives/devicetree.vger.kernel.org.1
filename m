Return-Path: <devicetree+bounces-117376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F029B60C0
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC3E6B21E3F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9315B1E47A4;
	Wed, 30 Oct 2024 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bW9shC0z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277061D278D
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286102; cv=none; b=YaxP3u+hnaCoTWcTvp7pC4oz5rs33fw3mZpGgUpTQDPpCXHUsqZWjk2ImujUic2SLUlUdbow0kAZkyWuRwsKcHLBo30vFr+nQpMDB3iISeVJeIgYQzN28Xnsp/aBRXWT9mwOI6G4HiDts9KNeTBwMSBa9Ibk14WgMmjxMSR1Tp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286102; c=relaxed/simple;
	bh=s01ujFHtOOQQMc2gCp+NXpyamnKMQ2FJNiklpd+Oy5o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hRJEitGAaQO903nXgqmOnr/ofs/RkkbjL75kbSvIT099o03lXkevYxISBHNsdIQsgEoo4c5Np9GY6AuM6AmZdAGOJtrKvR2jYmMPlu8G1+77iybZvW4msDgAozoH7iCiDG7u4OEQQuTF3ZfJ6y08BDJ/baSSpou9hRs1pQG5q/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bW9shC0z; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-431688d5127so60795945e9.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730286097; x=1730890897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q4baBbCVw8LJX8VUsNI0iSX+HaRxJY9Q26lFxilz6/c=;
        b=bW9shC0zz3HHagaaLUtj06SVlFgQg8ta1bDx2+cIeialT0q3RhUZkVy0RqSbNOYVZw
         3MfkCIPU81o1xx1Cj8CYGOAv4iedeiSDcO2rnoPzAMXoIjjxZ6Vz5WrTAxVgZ/l9lXBd
         Q4NPLFem9EkgmZovfAvyrHmQV4KNxJXhmle7fnIyGu5Owl4XinACGY82Jkt2M3WwGUz3
         KBc1i8A0Wlo1745q+8LkLCaqwfM2xmhBNSj7i6K0f9hc7DoS/h7ca6mp3KgquBtocyyu
         kFHSZ2OF3qhw8rQpk7bYnmnJpDcvZ9SNenX6VVv8xBrOkYpkCpPpyLT13gUZddkZN12I
         kEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730286097; x=1730890897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q4baBbCVw8LJX8VUsNI0iSX+HaRxJY9Q26lFxilz6/c=;
        b=d8n2VJ6qaRe4hPast+UQHgM7iJDtoiEXMPt16bG0SwrmLV/kcNRIn3I24793LPVsMF
         c9qy/IPKXpxi851RETE2opL0jsPF54EpqC/1lNhjNfHgXtv5aCkXQHaeWNs6Uk8ymQdp
         nhDq9koVkIOUs/EVSvQTAXy+klbJVcUnDrm/lUMWWtOnYpF+ecnpCJOjoaRv5xOIBjSm
         ZvkbktnzXQfpZDxZjrDGlpj6jtX5bxnUpAH/SR5A/dd4zko3UuRH8neubBvmv0LYyIPz
         OkzFUM6dzfdgphCEJA39ZUiQkBPAwJCOGWvk+wMbzxsdcMmHX+Et1Tk6LMecoiI2qRTT
         3XPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwgQeJrlkrVc9CzSV5uJ4/GwTqVEvpx3DPES7VmUgb9LzqMTUMEy6XAirBEC++UMr2w78R62rZLCUT@vger.kernel.org
X-Gm-Message-State: AOJu0YykFLVmDUBeuTN9qQnrYNjJu5EEnzH777hZDKmuA6X9hsFBm9B8
	UO8HqIqJqs4M7ukZhmO54oUVeNVt5G4rVT6GgXMoYcA8LpP2BDQ0soFRgvi4tA8=
X-Google-Smtp-Source: AGHT+IHiBr5VSVHKI/wJl7b1DUkZ2teiuj8d/e6AL9/92akooeT1FxovY4Chln4pchEghqU1vcv7kQ==
X-Received: by 2002:a7b:c5cc:0:b0:428:1310:b6b5 with SMTP id 5b1f17b1804b1-431aa802774mr100247035e9.34.1730286097169;
        Wed, 30 Oct 2024 04:01:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd99edebsm17956935e9.45.2024.10.30.04.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 04:01:36 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 00/10] Add RTC support for the Renesas RZ/G3S SoC
Date: Wed, 30 Oct 2024 13:01:10 +0200
Message-Id: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

On the Renesas RZ/G3S SoC the RTC clock is provided by the VBATTB
IP. A 32 KHz crystall oscillator could be connected to the VBATTB
input pins. The logic to control this clock (and pass it to RTC)
is inside the VBATTB IP. For this, the clk-vbattb driver was added
(patches 01-03/12).

Patches:
- 01-03/10: add VBATTB support that provides the RTC clock
- 04-05/10: add the RTC driver
- 06-09/10: update the device trees with proper nodes to enable RTC
-    10/10: enable proper config flags for RTC to work on RZ/G3S SoC

Merge strategy, if any:
- clock patches (01-03/10) need to go though the same tree because of
  patch 03/10 using the devm_clk_hw_register_gate_parent_hw() introduced
  in patch 02/12
- RTC patches (04-05/10) can go though RTC tree
- DTS and defconfig patches can go though Renesas tree

Thank you,
Claudiu Beznea

Changes in v5:
- dropped patches already applied
- fixed build on rtc yaml file
- fixed indentation in patch 01/10 description
- collected tags
- per patch changes are listed in individual patches

Changes in v4:
- added patches
  "dt-bindings: clock: r9a08g045-cpg: Add power domain ID for RTC"
  "clk: renesas: r9a08g045: Add power domain for RTC"
- squashed the following patches from v3:
  "Add clock IDs for the VBATTB controller"
  "dt-bindings: clock: renesas,r9a08g045-vbattb: Document VBATTB"
- fixed typos in commit description
- moved assigned-clocks, assigned-clock-parents from the RTC
  documentation to the VBATTB documentation; same adjustment has been
  done on the device tree patches
- renamed include/dt-bindings/clock/r9a08g045-vbattb.h to
  include/dt-bindings/clock/renesas,r9a08g045-vbattb.h
- used quartz-load-femtofarads
- used RTC_TIMESTAMP_BEGIN_2000 and RTC_TIMESTAMP_BEGIN_2099 in the RTC
  driver and added a comment in remove API to mention RTC cannot power
  on the system
- squashed defconfig patches
- collected tags
- per patch changes are listed in individual patches

Changes in v3:
- dropped patches "mfd: renesas-vbattb: Add a MFD driver for the Renesas
  VBATTB IP"
- added patches:
-- dt-bindings: clock: r9a08g045-vbattb: Add clock IDs for
   the VBATTB controller
-- clk: linux/clk-provider.h: Add devm_clk_hw_register_gate_parent_hw()
- moved Documentation/devicetree/bindings/mfd/renesas,r9a08g045-vbattb.yaml
  to Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml
- addressed review comments
- per patch changes are listed in individual patches

Changes in v2:
- dropped patch "clk: renesas: r9a08g045: Add clock, reset and power domain
  support for the VBATTB IP" as it was already integrated
- kept only a documentation file for both VBATT MFD and clock drivers as
  suggested
- addressed review comments
- used cleanup.h lock helpers
- update startup sequence for the RTC driver
- switch to 24 hours mode on the RTC driver
- fixed range for the RTC driver
- added a generic compatible for the RTC driver as this will also be
  used by RZ/V2H
- used clkin/xin clock names for the VBATTB clock driver to determine
  if bypass should be configured on registers instead of having
  dedicated DT property
- added mfd driver for VBATTB
- updated Kconfig flag names to include vendor name
- removed DT node labels from Documentation files
- used items to describe the interrupts and clocks


Claudiu Beznea (10):
  dt-bindings: clock: renesas,r9a08g045-vbattb: Document VBATTB
  clk: linux/clk-provider.h: Add devm_clk_hw_register_gate_parent_hw()
  clk: renesas: clk-vbattb: Add VBATTB clock driver
  dt-bindings: rtc: renesas,rzg3s-rtc: Document the Renesas RTCA-3 IP
  rtc: renesas-rtca3: Add driver for RTCA-3 available on Renesas RZ/G3S
    SoC
  arm64: dts: renesas: r9a08g045: Add VBATTB node
  arm64: dts: renesas: r9a08g045: Add RTC node
  arm64: dts: renesas: rzg3s-smarc-som: Enable VBATTB
  arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
  arm64: defconfig: Enable VBATTB clock and Renesas RTCA-3 flags

 .../clock/renesas,r9a08g045-vbattb.yaml       |  84 ++
 .../bindings/rtc/renesas,rz-rtca3.yaml        |  84 ++
 MAINTAINERS                                   |   8 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  34 +
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  16 +
 arch/arm64/configs/defconfig                  |   2 +
 drivers/clk/renesas/Kconfig                   |   4 +
 drivers/clk/renesas/Makefile                  |   1 +
 drivers/clk/renesas/clk-vbattb.c              | 205 ++++
 drivers/rtc/Kconfig                           |  10 +
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-renesas-rtca3.c               | 899 ++++++++++++++++++
 .../clock/renesas,r9a08g045-vbattb.h          |  13 +
 include/linux/clk-provider.h                  |  18 +
 14 files changed, 1379 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml
 create mode 100644 Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml
 create mode 100644 drivers/clk/renesas/clk-vbattb.c
 create mode 100644 drivers/rtc/rtc-renesas-rtca3.c
 create mode 100644 include/dt-bindings/clock/renesas,r9a08g045-vbattb.h

-- 
2.39.2


