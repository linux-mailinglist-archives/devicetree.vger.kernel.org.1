Return-Path: <devicetree+bounces-270749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJvDJB5Fp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:31:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10821F6CFE
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:31:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 270D5303798B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3FF337107;
	Tue,  3 Mar 2026 20:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RwIXmlMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D144156C6A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569827; cv=none; b=L3vxhRI0TCypSR3Kqb336i25kjW68qDT+++M6aPGVS5AoT7FfGCNWjGYBiWgE9LvpYxY2i9mlgH2QzXVkTkMLUsLss6bD85/sDk59pfjwFYTaHXa+nWYZ62jY1YI/Ec4ddp9jh1IQgzppZpn9lYDVrwhgDunamIMTyVCECufttA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569827; c=relaxed/simple;
	bh=nHiuIbDROmtvh9nozT7ptkItgTF5ym9bQo4UDPhFaEM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=blsMQVZtFo4YwrVFTiRJo0SHm/CZZuHTF/p1vDw9kdt6Y1BVdlv4V8avl1a5auPFFChmINdA3FlLa488hHISOrQowUZriaFY4kBuU4/PYiMbn1uQwx30aU5RAkz5HmBzG6WO51l4+js4nTGwbB3rpil5tziV418ab95HZbwhG/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RwIXmlMj; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8cb3bae8d3eso559958485a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569825; x=1773174625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=th+RyWrkXmCwE35QEKh1O6v7tT5++z/rbMX9nQqTjtk=;
        b=RwIXmlMjNG/EBm5pcLpVQlO+Qcfs5zvo+V335sd36sBLQvlq1qQ2Kiq1yTcnjrjAYG
         UfwCj4lERLemj/L3sfzvtAz6IFav2ORWU9Dxp6x8Ejow4cVKmCmy5l3RZVAXZQf64eN7
         gp1ElBOpyOMnseVQZ7ftvtqQnJvnv34cx0giBMo97lbmFUIuDnBVKOAQ1ymKDnJfx9KV
         bONKWR/iStk1blnN8k4TDYFK9GESSD3hg8Y+rhd4js5e3btf+AJ3NVP7qQRi+5cHnMbl
         GTYPYl9SVArCCsPtpvPJdJaQqJpuvWMBNPA0BtwfznEFVC+Z6qwnXWtj6KaowycxOrp1
         +U+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569825; x=1773174625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=th+RyWrkXmCwE35QEKh1O6v7tT5++z/rbMX9nQqTjtk=;
        b=RwhxB3qfvoJEZGnGwNCAyKVpbYt/rlX2ZF+8hEDc0BpAD1cAFxB9R/QHHpJ+w+LCIq
         hfWs6teCtTrYKara2RYTYOPKovrKVeBbiwtrd+cbUuky2tNCL4VqDwEZ0RKHbe9Z9n6p
         lQ/aA3tzPXV/TytSJ5OZgxohj9P8sPP0dXTx5qJyCvh+gUUHGbGCMNrTrS/D+Hv0sfju
         HDZgsti/wDkLABcXyGpLCcyCpPXoZE0VieseT1fGO+Bs7wI7T3FbFAWy/h5y2LcdF9sz
         Fh2La56X99x4YJnsETeSIAWGtog5pAbkjV89S1Mk/dZZOODixjTegy5AKP2lq9qcyxa8
         ClEQ==
X-Gm-Message-State: AOJu0YzbnnT23MF5j44OF4CMX1pN/YDHst2RP/PMzi9rXw2cJdmHQd43
	7hw/JzVaOro9J7uQ3nDq/xOVr23tcBWWVRrEH9L4CTjW4//5H8Ri8SIW
X-Gm-Gg: ATEYQzwSoDhXV95TC6QMIVqfkpXr1pCAPWAs/Ze6/SLLRsWPZh8tzEy3F6cOcz3SIdk
	N5VhYaguIAS+csDd2FVeuYVhmIvu7iwJs/anBmMRTEtEb9hpKZNLtYXPM2oxFkqF1xbWrRZHzMb
	w+PnXXwlA35rmr239SBrHoPUXNiBzTkLkGMNGW8YY3+8QvWvlImab1jW26u8+648EgFziqWq4s/
	c7kuq92ruqgaOR0re9TyKGRzJMQiHpPjWn9Xbsi6cgrzxjRrxXgzM9btfYSTcFKJLZ9m588A3rr
	1MJu2P1JkmWkvv81LQg+nfLAjoX1FKel51QZDa7Q05xJZ3YK0SslfcLM9s+n630e+CN97QytHS+
	PQBah9p9HPrNgtlAuCAMdUs1Eop3yrT1VgfVFiI6rCQCNn51IqWBJlhF0E7AxUsrGheB07yB/Dk
	3Hc1YMkdB5zx2u+Ce0iOTBdogLjdQcQ+v2ursf+mCu+TOgozPxTIvvkYP17PYroa8URiRCVV6PO
	F8w9YOWjIM=
X-Received: by 2002:a05:620a:318f:b0:8cb:66dc:9fcd with SMTP id af79cd13be357-8cbc8e0f8c5mr1873153085a.56.1772569824958;
        Tue, 03 Mar 2026 12:30:24 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:24 -0800 (PST)
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
Subject: [PATCH v9 0/8] Initial support for Samsung Galaxy Tab 2 series
Date: Tue,  3 Mar 2026 15:30:09 -0500
Message-ID: <20260303203017.511-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E10821F6CFE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270749-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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
Changes in v9
- Removed stray |
- Rebased on latest commit
- Removed duplicate touchscreen parameters
- Link to v8: https://lore.kernel.org/linux-omap/20260223134941.427-1-bavishimithil@gmail.com/
Changes in v8
- Remove WAKEUP_EN from omap4_pmx_wkup
- Link to v7: https://lore.kernel.org/linux-omap/20260223055113.1288-1-bavishimithil@gmail.com/ 
Changes in v7
- Removed prox_irq
- Changed commit message
- Link to v6: https://lore.kernel.org/linux-omap/20260219210408.5451-1-bavishimithil@gmail.com/
Changes in v6
- Remove references to WAKEUP_EN (drivers dont support interrupts-extended)
- Remove gp2a_irq, it was for bh1721fvc not gp2a
- Remove mount-matrix
- Link to v5: https://lore.kernel.org/linux-omap/20260129054709.3878-1-bavishimithil@gmail.com/
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
 .../omap/omap4-samsung-espresso-common.dtsi   | 744 ++++++++++++++++++
 .../dts/ti/omap/omap4-samsung-espresso10.dts  | 101 +++
 .../dts/ti/omap/omap4-samsung-espresso7.dts   |  70 ++
 arch/arm/boot/dts/ti/omap/twl6032.dtsi        |  77 ++
 9 files changed, 1003 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso-common.dtsi
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

-- 
2.43.0


