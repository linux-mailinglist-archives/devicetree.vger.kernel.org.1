Return-Path: <devicetree+bounces-260766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FkiJKIRe2nqAwIAu9opvQ
	(envelope-from <devicetree+bounces-260766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:52:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF767AD045
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A087C3004C85
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D1537A488;
	Thu, 29 Jan 2026 07:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UJjwW+/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B2D376BFA
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673034; cv=none; b=HSTzUG4YLMMINQC09PzTj3BNdQ6/ESie9pNX9xjGqkKy9BrsbzkwUmbSEAWkWm3Rnqx5oK/gPXW1PZq+2OA7vAqjnqYNJztfoLFIrITEAHdsNi/PPT6A54J8OZd0PUoosRazGEPNglEadEY96moDavyX/CsESKhVs0IVKamaJWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673034; c=relaxed/simple;
	bh=tiDKCQasqj5b/+PbBSiZ7+LhhpTaudNsP3Y109mLQ0w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qYFXVFrHEbM1l3Bz3eemw6hoxAuY6wTSHepdF6izo3m6iTknk9vyVglBLAOrlydCYppA+RgDMD9PrGjoc+PMLn/j6T0vmGuF4of0z283IoKZRHqIlslwvKVMqK64GpVFcjGW2s8KXeP4tm1fvv5Ws6scI7j4Q69RQcapiPdoI2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UJjwW+/v; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-1233b953bebso320155c88.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769673033; x=1770277833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ucryCuFvG8BETVJFMHSqACBtDXZ973dX+aGPcHODNIM=;
        b=UJjwW+/vnK+CFalbCRGZoprYnNrM6b1ienz0ugn0xgAFiR+mDS1noRkPeazOfadvBb
         PpAvenw0bNawUfzqMaVl8cewMixhk2MjaA1l2BMlrqn/nHX814ntiSO0+jUsIqrrdo1f
         8u043vPp53ZNZo4+OTwyZmoj6AZNDrqAtmPaNrBuvAhYPCNsLEVgarYagHL5Ki6/mcnf
         tQbX30j3y608QUxQpcWk7k1B3+oPQCgceTBz02/y+zii5y/RT9Iw9ysybOVtiFbEpgx0
         d+K7oGdTJsw+E3kPdAVfq/WA+tSN8fyuh8v5iB/EQvtjSEV9bNwJjSWxx2jZXubzArzo
         8pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769673033; x=1770277833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ucryCuFvG8BETVJFMHSqACBtDXZ973dX+aGPcHODNIM=;
        b=xIUYZbzNiHXzb+rgEREId1HeiLVaGFDeaJh6RqH6y7YgVbgSshOxs+xoHO7kcA27pu
         ckIiYYMP2FReos31OPOxZd9gtYxs1OE2CdT4dv4Is+/Urt/kqKyErtihWcirkyihbv/t
         eVQyZ+4LiZmA+Zq1zpMtRSg1/met36Ar7taThJXfTgrJCnfoF/pRgGzgMJzRyo1ee19c
         UwwZB/o+BBs20JDRFdMlnuSKo3W+95Q9GTmqlcyLR4cw8Ajuvd5ChnDpP7aq0PME03Qx
         JyMrt0cW4W2JymkxNDwq0zs/LkQl8I+Ti1da6+62mnzeykjZp8PUsxP997XzOfgAA1BT
         8Ikg==
X-Gm-Message-State: AOJu0YxnjhwPgX3yLPmNQsmovQgMvaDyGpO/yBKQwtYiG/bo+fxslMj/
	dC34NmdQM++iB1dGceDne92KaDf633MUQt4D8ax2uL+w6Ux38q/h7fF2YQ+A+JAZ
X-Gm-Gg: AZuq6aI8+9pHV/vHcubBiFmMFgTdIkBJk5FSMk1Cb3dOg4a/Y96dskDODxlhI4ilEan
	1/TacVssTaAcUV3dSRQ7rJAmDpPxIcakL7XHdKptcSHJfuLZ5HFa5OogDmbgWiFkpyS132IuuvT
	M5kllK+7lM5pqS1lwC5qv3hh97JYJDsM7YQyBqLqHh8r6IF2WFmekDj3/QPr+ssuHnqr+5tBRH0
	bBvfon2Fgn4bA01TOuCxobcTQ1gE0cCBSjt69bph6X5+4KPIQb9MBTjWYd07C0YIik+79fKvTWa
	Kbdj5pdMFnafk8cTIkWqQu2TnDKf7v6eT0uP0yFhG2EHqNfEzNoLXNxeG5ZI0YC/JfDooDxXUew
	rswVBl0SJx7//JpAvaaJ2FlN7l6nwhPSVhhqEQ1InZ2HjnICU0i8f28tDw08wK5/xCvQHcsJSji
	tzc1TLn4ioNi3r4w/qAbh6mYWxzfbhsINrEyxXzZ/6qnQ0FTyAjUzU1zcibAotqj4eND5juYI=
X-Received: by 2002:a05:620a:bc3:b0:8c6:af59:5e1b with SMTP id af79cd13be357-8c70b926324mr972584385a.77.1769665652113;
        Wed, 28 Jan 2026 21:47:32 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:31 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v5 0/8] Initial support for Samsung Galaxy Tab 2 series
Date: Thu, 29 Jan 2026 00:47:01 -0500
Message-ID: <20260129054709.3878-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260766-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CF767AD045
X-Rspamd-Action: no action

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
Changes in v5
- Commit message length < 75
- Squash commits
- Link to v4: https://lore.kernel.org/linux-omap/20260119033035.57538-1-bavishimithil@gmail.com/
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

Mithil Bavishi (8):
  ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
  dt-bindings: vendor-prefixes: Add Doestek
  dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
  dt-bindings: display: panel-lvds: Add compatibles for Samsung
    LTN070NL01 and LTN101AL03 panels
  ARM: dts: ti: omap: espresso-common: Add common device tree for
    Samsung Galaxy Tab 2 series
  dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
  ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy
    Tab 2 7.0
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


