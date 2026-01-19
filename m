Return-Path: <devicetree+bounces-256640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92385D39D90
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB7BB3000B11
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEC341D86FF;
	Mon, 19 Jan 2026 05:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YDa2NdI+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7C1C2EA
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768798931; cv=none; b=Z2qGP/zQ5GW/zD7GIwKv8uDBGsAUk+3jEnzudxKEN+TA02rANVqe5LHq+6oOgdhhp472IJPKYU7prBV1H+sORiz3+1WvW1rg+OQdOT4R0A7eibaeMhIS9LupTe6OwC9eqOm/wZ0jPUP9NoObhjdHz64SLd6FPqo3GaMuuJohzR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768798931; c=relaxed/simple;
	bh=Kth4TdY7BKRrFKvA30wZ10JzAU9o9teCxEq+81T6jOI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c+hC9/REqlJNG5Xm3Z1pNZBSkE++6CSACkBHfHUst2VZHm2nBqhvAEUgEQOTeumL7liKC3IbFAo2mziznNbRPs37h8v4Ux6DhiMhCwJ8IOzzrH31snMG1pu3a6ghwK0AfsEDeqqZAlNFRJFSIb62yKyAx8Kiu+4LUQnaPFb5Pxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YDa2NdI+; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88a367a1dbbso64896696d6.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768798929; x=1769403729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=knOhHJnYgS3NfXJV6CmNIci8LqgQNdPXN9K0tc0/Z54=;
        b=YDa2NdI+JUkdn3geIMVX9ijTyPvvHxpZsqyR7/UdU+hU0ImBM9yBIxBmqPcRQTu3Xa
         GR9MGOZTpujOssVIHWsXtoWmtWjGdkuLjovkaNMR2J81xYheSCSrcGb+5cIhewpCLrO/
         3ShHfrP/YortKWWVttfK//0xdfPFBUp39LRy29Gcwg+JWJy37onTf/9Z4rwzw23zNxGg
         yME/8tPJZfgtAfuNEXgFHff/hE45gmDv0okP4MjBy/tFXI2VVtsI954cxkgraWO/PDRG
         IjgvEFjOem5BgX9LsIXVOFoqZSqh1CK5fNYB2VSvlRhTUPCAbpDUOTiI9ZVPQeI61Kzc
         4BcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768798929; x=1769403729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knOhHJnYgS3NfXJV6CmNIci8LqgQNdPXN9K0tc0/Z54=;
        b=igwOU+8IjZzLYbCPSLh5cnNGmBWoQBAHC+uTYceznauNGCZHaBks0CmjTaduwSUo00
         BKd+unyD/9/EDU4zQ7f3LIejuId/H353dEnT91JWI2INsUwQ269KQ0ooQJZhZTIz1umC
         fiI5R6WJtV7pbQCB4kdm06g23O/AGyrDUXNplrxMkEX2mVefwvdPT+C4Z4mgndSNuKT9
         qqBs+xJwBzsx4JlxsJAaScSwlpI9dHK3vu+LO4FaaCFVafZEoEoncZxG6LsltJTQERI0
         Kq8ZvcHhpAP4q9lU970jryrRPVIP5ykckatMam8qLRZh/0jMcbXqofrXaIHXX8UUpf8m
         6JIw==
X-Forwarded-Encrypted: i=1; AJvYcCXp4m91X9gObt4L6RsEkXbojzav8hN0ZsWJj7JNDYZsfEhAZmszpWZcJDAuzFlM9JxIHvInn07g/RD/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw/PtSCVfyv12n4AycDubbI3gfN7CTB01fuX1QKn4YvCMxlHig
	/1aRm+8ZuddKVzovZL9QJr+aNeOx7gssk71jg1ajYVs7lqVL/AbwH5EI
X-Gm-Gg: AY/fxX6XM7F4J/1G7I8Sz2+xxs8uLUoP0X1xCHWLsl769eTy9oAGwLqISAL4e8ymEwv
	/JvICdwzY2TiVB75aOVm+DQ02SayxTz2Gb6x+pNZCwOXEA+PAQJ1bc3X0lx+xbh9KhSrwivOwRZ
	3WtqsebAAm4QjiYMCQ8LoHLS3rCi5bTGoM8qXvUrMIc81maoPaRz8FKCvOp6YESTuNf8Lowa0bE
	VM6zFsZbjptpyYVMj/7x9vucHP0ZGRevzlKlFCKfBWOmkGkZR32DwsodL34eyPeM7DJ1lAP7lDc
	qIjAFhgEgR/XCeXtDRh5UE+HHuNWt23fCroej0MDLfaaHFftx065O+/WNVV9AUFLjNO1BDYoHs9
	cfAM0uh4FqcuP2BIV4EIDPhRbTQ1trMY+QxuRfVcgcREzsazL4yv6c4fPaWSXJ/bFbe/cqiaBjT
	kHEZ6cAlH6kIcSj+uI7E8jMroovXj5YK94tVEE2ZW5iMTULVbZV9jQtoVqldrgcMsZ9FdHFtJka
	Unn9g==
X-Received: by 2002:a05:620a:178a:b0:8b1:1585:2252 with SMTP id af79cd13be357-8c6a68d35f7mr1336428085a.1.1768793440895;
        Sun, 18 Jan 2026 19:30:40 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:40 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 00/10] Initial support for Samsung Galaxy Tab 2 series
Date: Sun, 18 Jan 2026 22:30:24 -0500
Message-ID: <20260119033035.57538-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mithil <bavishimithil@gmail.com>

This series adds initial support for the Samsung Galaxy Tab 2
(samsung-espresso7/10) series of devices. It adds support for 6 variants
(P3100, P3110, P3113, P5100, P5110, P5113). Downstream categorised them
based on 3G and WiFi, but since they use different panel, touch
controllers, batteries, I decided to categorise them based on screen
size as espresso7 and espresso10.

It adds basic functionality for both the models including panel, drm,
sdcard, touchscreen, mmc, wifi, bluetooth, keys, battery, fuel gauge,
pmic, sensors.

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
Changes in v4
- Fixed syntax in doestek vendor
- Changed - to _ in node names
- Removed address/size-cells in chosen
- Added pinmux for i2c-gpio5,6,7, irled
- Allow sdcard to poweroff (reg_espresso_external)
- Changed power to key-power
- Order alphabetically in omap4_pmx_wkup and omap4_pmx_core
- Use generic node names
- Added TODO for future nodes
- Fix touchscreen values in espresso7 and espresso10
- Add dts to Makefile
- Commit message length under 75
- Link to v3: https://lore.kernel.org/linux-omap/20241108200440.7562-1-bavishimithil@gmail.com/
Changes in v3
- Use device tree from the correct branch
- Fix commit subjects to matching the subsystem
- Add Doestek vendor
- Add compatible for LVDS encoder
- Add compatibles for 7 and 10 inch panels
- Clean up device tree using "make CHECK_DTBS=y"
- Link to v2: https://lore.kernel.org/all/20241030211215.347710-1-bavishimithil@gmail.com/
Changes in v2
- Fix node names in common dtsi to have - instead of _
- Removed import for twl6030.dtsi
- Edited dts to completely use twl6032 nodes
- Fixed typo ldosb -> ldousb
- Link to v1: https://lore.kernel.org/all/20241030194136.297648-1-bavishimithil@gmail.com/
--

Mithil Bavishi (10):
  ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
  dt-bindings: vendor-prefixes: Add Doestek
  dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
  dt-bindings: display: panel-lvds: Add compatible for Samsung
    LTN070NL01 Panel
  dt-bindings: display: panel-lvds: Add compatible for Samsung
    LTN101AL03 Panel
  ARM: dts: ti: omap: espresso-common: Add common device tree for
    Samsung Galaxy Tab 2 series
  dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0
  ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy
    Tab 2 7.0
  dt-bindings: omap: Add Samsung Galaxy Tab 2 10.1
  ARM: dts: ti: omap: samsung-espresso10: Add initial support for Galaxy
    Tab 2 10.1

 .../devicetree/bindings/arm/ti/omap.yaml      |    2 +
 .../bindings/display/bridge/lvds-codec.yaml   |    1 +
 .../bindings/display/panel/panel-lvds.yaml    |    4 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm/boot/dts/ti/omap/Makefile            |    2 +
 .../omap/omap4-samsung-espresso-common.dtsi   |  762 ++
 .../dts/ti/omap/omap4-samsung-espresso10.dts  |  104 +
 .../dts/ti/omap/omap4-samsung-espresso7.dts   |   70 +
 arch/arm/boot/dts/ti/omap/twl6032.dtsi        |   77 +
 arch/arm/configs/espresso_defconfig           | 7506 +++++++++++++++++
 10 files changed, 8530 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso-common.dtsi
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi
 create mode 100644 arch/arm/configs/espresso_defconfig

-- 
2.43.0


