Return-Path: <devicetree+bounces-256632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D296ED39D32
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:42:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5354B30285AE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65DD129B228;
	Mon, 19 Jan 2026 03:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mmzItjhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD24029E0E8
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768794042; cv=none; b=Kw9svUl9EWgJniJtzQ6mWBhc+6yeTNfuauk9OymeWfF5FPbuAg+1T2Y8MZKF8scXjPC/kFe6lIkan4S1dBm8ByVYk9Skhkuwtt46Uy/hThbkc4e6lqUiIr6yeq6OzO6kT2XXifRkjorHZVJmUYGYZBJdUkSLYYkBrtU7rsVqW2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768794042; c=relaxed/simple;
	bh=XPqSO6ltsflLuii08AxfHx9bR9Jyu12AqRI7lojBLBI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=semKFnecrpv5+RnZMRV/zy46M5FdazPOtmOlVFcdYNFVlnAZIs+DY/HefvMDF4RdoHUx178R8sq/lpBBpb2HYfdnVm+Pxeg7DJ4zGmHRDJ2pyWoRui2jG5ATEq7Qe86QHWSu4DLyD/UyiWOJbYzklSOr42/sRs9yrCWz1cU79eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mmzItjhy; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-50143fe869fso45520591cf.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768794030; x=1769398830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KcbVa3268lyqxBGM305ylj+tBhZM3T/QjOKg0r4LL34=;
        b=mmzItjhyvmkqKzGaYgzWNYWCzDTF/QT3z8KZJD1EE5SbcusbqABMG+r1FY1Hqotvqq
         54V6hmnGKPbUjUcUe3FctA6lnvgP5SqpAXeNULrN1gUqnOXA9yn0Yw4uAw9+wlNTfh4y
         p37k16sk7Q0zwxkzUSPBXeCbqBJ/tmpgdDPz97dcGh/7TGnCiAwZ5AV3lm7kdp/eHhv8
         4Ip2QpZ0trZqIG59ex4WNV4nt/7hrLKVs6nGO03lgJ7PTYgLbMU2x5o18k68hg0pzvTb
         NG5HWGWc8FpIkf/7jo6rxfuoj9aWiZs7oGc1xS9dp0IRuScuyCCTQFeYe4K3dS7XV282
         DJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768794030; x=1769398830;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KcbVa3268lyqxBGM305ylj+tBhZM3T/QjOKg0r4LL34=;
        b=HN09SV2Ffqk1krOCp3Y4r31qAe5bbEaLzqL3NCT7I4vO6OMcH37cksg3bkE8y1h2tl
         jki2em8h7cxXnzBwKBiBTUPRPWQtwW8laHTX/a/Qp2DQ/3dbAlIVx9LUoqAl5YhlHQM/
         GZD6EN0fT14a5rNII3/clT8FSrNyzjcQViSqBA6PGyy4uG6PmfXlGNyDLvwVVsSrF1nS
         Uu/ZkUtTYTeSwQKn9lXTviXBUiaCYrwA/gGEdrCCtR2yrhcr2HgXEFCyPWbv8OifjRI6
         ydduw0Omdw2BkxUet8MzpWR7TrsZ2ppMadjSMrp1LByBfKnON17XfQW//A/400si6Jnw
         yotw==
X-Forwarded-Encrypted: i=1; AJvYcCXtsZ6LqTA/qcq3TliemNL406oIbeM+NjWd3f9G7V1/OUgx4mvYRNh4i6Zo1g8FEZB9x431OudIdPiB@vger.kernel.org
X-Gm-Message-State: AOJu0YwBozWnY+vQSBuT4KhdLuMmkJjcDw3eJoFFjj53tiA5ZFG8uZvQ
	PJPO3c8oLrBWWZvp9iEWLynW4jJ/Hp26p/A027jbqxMcGdM6RlOU3SVZ
X-Gm-Gg: AY/fxX5QnqCbNXC8BqTXdCDhio7bgXAKZAv6E3+nhfwQzhhrWaFga7OEAJWSEkiBISD
	LNfcSLxFkQDVpb/rnXc4lb+WN0Ot/gLwfq6wJcqWZyWvtr1Bs1BTvK2VLKuQLqZMLyzCXVCUGo4
	zGUzEI5tFti+AkRvByN3gM0Efwt+UJVduea6bTfLlWyEQkCSQh9eXb17BxueX/1KBmiJ/ipkftx
	FQPViUYOlbfcX42v0I0QxbXgJqcFm5fGwDhtpJZyCNoMDM2OVHMCLRiPOw0trgj07LZjKAbonkC
	c0+/zDM7mN6+H65QiR0AeOwLvYvWtNK6+HT8avHcx2oeMFtiFcX/RI30+2uTVsafmAbIcSvuu5l
	GoYZGcKPBEcs6ToG76ouZiiC7UmcZGOh1CcQsc5GEJBgb65wf1rmZTjUh+hqqWroiVwQIeeF0wW
	ghbt7m7EVYwNBeGScATL0bWfNdj4Eebrjn6XCj/QilFO3TowUzdf+b7YUbb3WTnkx/KUM=
X-Received: by 2002:ac8:5d05:0:b0:502:9f86:ca31 with SMTP id d75a77b69052e-502a16b3652mr167438321cf.52.1768794030529;
        Sun, 18 Jan 2026 19:40:30 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1f1b872sm64030801cf.31.2026.01.18.19.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:40:30 -0800 (PST)
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
Subject: 
Date: Sun, 18 Jan 2026 22:40:24 -0500
Message-ID: <20260119034025.58091-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Subject: [PATCH v4 00/10] Initial support for Samsung Galaxy Tab 2 series

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

 .../devicetree/bindings/arm/ti/omap.yaml      |   2 +
 .../bindings/display/bridge/lvds-codec.yaml   |   1 +
 .../bindings/display/panel/panel-lvds.yaml    |   4 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/ti/omap/Makefile            |   2 +
 .../omap/omap4-samsung-espresso-common.dtsi   | 762 ++++++++++++++++++
 .../dts/ti/omap/omap4-samsung-espresso10.dts  | 104 +++
 .../dts/ti/omap/omap4-samsung-espresso7.dts   |  70 ++
 arch/arm/boot/dts/ti/omap/twl6032.dtsi        |  77 ++
 9 files changed, 1024 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso-common.dtsi
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

-- 
2.43.0


