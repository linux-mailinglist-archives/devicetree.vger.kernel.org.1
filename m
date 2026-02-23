Return-Path: <devicetree+bounces-267291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBHMAd8FnGlk/AMAu9opvQ
	(envelope-from <devicetree+bounces-267291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:46:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CAA172D02
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:46:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71B81301025E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FFC34C121;
	Mon, 23 Feb 2026 07:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TdP+ss1j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56091D61BC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771832796; cv=none; b=h8eNHN26YJhRfVkY7UdVmeeyJuH73a+DOFTYcXC5qv0OCOJwa9sbOm/wnoMUw1yMnxHqrPb/YACW2wCNjOxIjytIP0gUgX1EP6od1UP1CSSOUVZkli691nM6hQUZzIHmuCubJ1uO2AVtAi6bx9eg7+Ks2uytD/UOJ11NPkitjFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771832796; c=relaxed/simple;
	bh=Ba9zxackObDbMCZ2mlH57/NOBt3YGhnL48fUr0tnyrY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gS395BujwUhvC5EC5aiWJ1yM57mfbz7+fbHcn+eF4OLVQLrTzlvGie60c02EDOPrMW1NwR7uRxACkM/WODGTy5ohO1lx2CAoGYgqZfMCh0GvHUpynB2SXeCTtugtFrIbhGWHVtOP2lUr7/7Z6PwdC+qM/svOQYiku/lbR256Jnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TdP+ss1j; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-40427db1300so2355126fac.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 23:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771832795; x=1772437595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJJXdok9+FUakR4+4YGKa7V5rpMzXNyNvVO7Mm3dh3s=;
        b=TdP+ss1jYlkcPtiyF0O1IBEyT9407H32iwypMpGm9M4aY3W0ZreEg1xSoIbD0ZuBKn
         rHI+bX0J6hC8ik9zPNPwAibvgiozNjKZtQIYrSAJyJ91VCiSUPCWJqL8voYLVCFboNP7
         ZbssCZ1UCAxKoZ8OdNkL5JUl4Eiiyg42luIPhFEi09H56HRJypE/9+5N81E9Cehsgq3M
         7fT7D64mnbF/neC9C7SlA5oG/ZJc5jbpbe8uMM8qiwozlqp8hMWg0mITLq/MPRlqwHHP
         uZqPHmxQ76WQSKEf9whp6x2ZUYvtnz7i5LNPFZE9yh+rsaGfeg2jvXvM7pCuIEGi7/nA
         zDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771832795; x=1772437595;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJJXdok9+FUakR4+4YGKa7V5rpMzXNyNvVO7Mm3dh3s=;
        b=IgyN8o28IKU5WVtPA5fEw14Y/ypCBcbYtFAah9ND7TWl0AaJ3uLv1+fUFnqsEmzeig
         HIWp3nPjnw5KCc6LQ3DT5g52WNQESWNIspkIRZgxzHIM7Y3ezkdx0um/bXY0BIxpNFJb
         05fpMiPjBKpF1FVXRCUjqPHgEpW+aIBzgIvwLMmCEjnryi+7bH7xSdoc2z8A6G6PB4Vi
         0gCZim3VUa9PsamGV9CMCOaK7mOedmpZjPPf87WGuoseaMX9FpdWC7irYJmnMWiRNDRI
         pS5MIMZkqjaIUCIIyXP4Jn3y+sHkBnNvlG3X0AB927sBFzca+t22TiqBhL7LfCeXpwuC
         NSxw==
X-Gm-Message-State: AOJu0YyDGJ/v8mn8ftpMBQoLyzHn9COz35VPbP2whNpnjAviAqK4jsqR
	YBmkhnjl04CbuOGcVju81zzZYqUY4g2JqNPtgVUTRTFslmLGHn0T1WTf
X-Gm-Gg: AZuq6aJnMiVRc15M0h5mL2Zt6P6gbtzUCzOsoPuOLTwHIAYbIZdcDFs666F7ZgfLJ13
	Rb2ul8KxbX1Rvnm3cTEx2BfCDB6+ESqa7p1brv6m2xwII7for0j4D2lbS4jCbCglZFPQHiw0n6B
	clG4EaZGpGFbiy8StaQaQ0WaMvnP1INkR8xu+vpTPjztoMbEm4PiAQkPHw2Ntc5F8bu/djRx/EP
	7QtcoaKiBdyIoxkRgSGx3FlnMJOSbVOtUYvHAQo01gFhZkSoihyMItFMHNBrWiDyVupHfSfJNFx
	S3gzG2maBn+QFtbqafbn6wZdwEQDpDrgnRPIQGuMf89fFiQ/UUyCxNKTyCi8zTHOXiQ2NoMq/od
	PudleQ75SMhAR7sjT66uK8XeMr/T7YHkNcHUqI7UG5BtRbteOTNC6q+ack0tV/edpoa9zi1JJxC
	UiwCdiFz6Ch/IbL8wgIR+/FzlwARzet/Yy1IitZNEDh3vj3AZuSJ3AO/RSba9EVWaRgMEpHohEG
	Rw7b4xZAm81zE0EjtwKWQ==
X-Received: by 2002:a05:6214:400c:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-89979f3491amr98922476d6.54.1771825877439;
        Sun, 22 Feb 2026 21:51:17 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:17 -0800 (PST)
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
Subject: [PATCH v7 0/8] Initial support for Samsung Galaxy Tab 2 series
Date: Mon, 23 Feb 2026 00:51:05 -0500
Message-ID: <20260223055113.1288-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267291-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 79CAA172D02
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
 .../dts/ti/omap/omap4-samsung-espresso10.dts  | 104 +++
 .../dts/ti/omap/omap4-samsung-espresso7.dts   |  70 ++
 arch/arm/boot/dts/ti/omap/twl6032.dtsi        |  77 ++
 9 files changed, 1006 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso-common.dtsi
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

-- 
2.43.0


