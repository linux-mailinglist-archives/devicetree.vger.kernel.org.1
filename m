Return-Path: <devicetree+bounces-256645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CD3D39DB4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:23:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D4283006AA9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3035F26CE1A;
	Mon, 19 Jan 2026 05:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dcxsq9hY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B532836E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800231; cv=none; b=nbWrjCntXGkRMJx6JVVYLPJLnHMA7/ujwjyEkFeZxnxwCzZQUuBk+uIi3bXtW0NvUDV90sQXfkTvfSntAwCqLBLY8FSQDF3cgHW6rPJW/EHyW6i9jkP7t35bfVJsur+QBIbyNj9QBPF+Nx6trEz5yMuygFg7XVUyt4k/PMw6eqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800231; c=relaxed/simple;
	bh=XPqSO6ltsflLuii08AxfHx9bR9Jyu12AqRI7lojBLBI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pjgyPFEbhsN+BhCklJngo7F3DaxlHyUNarp752jOipfgaXWnOyx/6p475xpN02S+jXLLGdbL9VHHPbDLA+fN8rPIdsOr6DJjWJ7ePAohuURt+DqVmjpbdFtS3lXGcEQ80Q6J2LiXgExrCwlZ7Ps2b3lDd1zgcJxBbKT7zYfvQqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dcxsq9hY; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88a367a1dbbso65050836d6.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768800229; x=1769405029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KcbVa3268lyqxBGM305ylj+tBhZM3T/QjOKg0r4LL34=;
        b=Dcxsq9hYnnPObf6oAJpOu7RU0UEZGn1SSX0S6BcVF5wc9H2ee8mlet06EloW9wUu8e
         9ZE+9WNGw8IuQfGk2WWN/rLBANhUObFaawNuaGFRhJkNrFx6RUaZA0gxMMUaJ9ciUADa
         Fya6TQ97bU1H9/jHebLgViAdLFc4vtQS7RKOPWgqpYVE/SuA2prjMAl38YJbbBOeiptm
         W4/rkUxjxA/yQOW3/kcxhfLvPKmm6/wjvJjlgi+7m8U6SWQlI6gW65NM4iJtDBXYd5Wp
         nw2WHHzDbPRZ5od4u72VZIJ/P/O9C3Whhnhv3fBZ8uh4EYtcbswmUNcKtXkALg8tILKg
         YioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768800229; x=1769405029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KcbVa3268lyqxBGM305ylj+tBhZM3T/QjOKg0r4LL34=;
        b=Wn7+PgkHYkrgYsXSLCzHUqtgJeZpNjw5s3TYVrUJJdonlL9K5ju1Y4xmllja0hQ0bo
         VT/DKlhS9ysnPdKtQMG64izxwmln0uo5NseseuctA6gXYYp6yii21H1UIMWDkA3HFZRB
         QRpF45OLtXvZp0mhZkNv1gHfvuLQJA1InSNDGwsg12X9EJfWGCQTwJNJwxWe2030K6kP
         /d2UJSd5r6IaXMcrpiNrDYoHSbsvH843e3j673mbvfuCQklZFyrflIAgc7duspWCvKx6
         eMwws/RLCUr3aGyw9TLqKXXjdTLSaxV9gX+qX5hAVGMVLNOEstN+8ji5kABXdQM++gww
         Ekrw==
X-Forwarded-Encrypted: i=1; AJvYcCUVTYKen58zTNTtR1q0Mn8mDjM7vJn6RtJRZ+ozk8XGkyfKNMtrVTzXHueFASEHlE7c5gV4s3cL7hO6@vger.kernel.org
X-Gm-Message-State: AOJu0YxiZyRALLONXEuqpGyzSffTl2TpqxSHbirr8TlCK3qKrBatBG9s
	WVbK3RF1LNXT1wQhu/UIlo86+VMYl3Gmv32FKKgNEIZsjtGVZzaFB/oyS6Gnsg==
X-Gm-Gg: AZuq6aJsWofgGYvogKM4Fth5UcMhjRhBYzJPsZNSWEFKQYmgxpTZ91tpGCBbt1gEJ30
	UQ7Ei9WiSXHT2dodTyoyu6Wu+REDC5mXleKppzeJnyl7DdE8wHtt3RROvq1u7M2Hxc89y/PexGE
	m6Hanxefi8lNgMJSEsX+6K9ucwuS2t1JrNbMxKp0NjChuYusOwrWll8uqBSz8AaLC+YhqR/bvNX
	JxAaqtzLRZJFLVIakogKv91uoVQ3Tfj1KGgCtSMtm5LuNTvy3O0htk5CwazVilxnARWPkR45GjG
	VXcumQye941Cm9C62u7yf4acNsVpoSQU7KBXLvlrPmksy6IOQ02OsdCE2ngL5t/KqH4yNEBe9Sq
	OCOOlkXR3jW7L62D+jVn01Z/wmshsBK0lc4BUtmW5OWIG70FA8DOHIDCOeabDFE2qc9aY6DZwO4
	E9Siux5NK7d9ow/aLqUw5+nHVUZezxfmT5FvgKdgsUPEQjAPN6S0KLISNi56VUy/aOSgnoYzDEf
	qxAnQ==
X-Received: by 2002:a05:620a:4490:b0:8c5:c9a0:ac28 with SMTP id af79cd13be357-8c6a68ea37dmr1331140285a.21.1768793442571;
        Sun, 18 Jan 2026 19:30:42 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:42 -0800 (PST)
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
Date: Sun, 18 Jan 2026 22:30:25 -0500
Message-ID: <20260119033035.57538-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
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


