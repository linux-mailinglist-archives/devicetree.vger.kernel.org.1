Return-Path: <devicetree+bounces-266763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJX/OKGRl2mR0gIAu9opvQ
	(envelope-from <devicetree+bounces-266763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:41:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135816356B
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 88EDC30157DC
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E241F32D0EE;
	Thu, 19 Feb 2026 22:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wy/4lcDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F83C32D0E3
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771540895; cv=none; b=EeYEsBhE+TQXg8SXYSa5wA23MQF9A6zSeVFwHN7jywzvrdDuyrKF3rgwa8jjBec9drgu66l/hskhbkvcs/dSK3jQX+3yQx0OF3RCpOAxwcJ6+HSrvR/tEtWPVL94+9qlDB7q3O1o52VP+Pwu1fzyCzT1EpBbcMdk6AGwU/dIR7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771540895; c=relaxed/simple;
	bh=mpJry5/Zhp349aXY4Z+Qf4qWE6oGnFoIFcFr+KEvUXM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NLhvOnCbbO2p5ttpMi59f3hmQDxXCl1licW6KIFUw/Sa6LmaFm5HsCqYdAUv5dQj7AJVue+pmM8o3lXkHkHgxhQf0dcLyOUR51RXx0FOzIbr2g8QqjQaId7HCl+KoYTzMoILEl2T0uG4gVjQjeyAVkYEbiJzYmtyZWZJdZYujCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wy/4lcDh; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-5062fc5d86aso13277031cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771540893; x=1772145693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P9I+l8JKaYFDa++mBuTeNScEkxOOej9+crJSALb0DLU=;
        b=Wy/4lcDhKZn5Mo13VKRNMrXklsmRSG4heP4uW+6hLL74LjiN78moNMlTVZz59zKJHS
         A2kIDjGvtWMJYLga5TBU4S6MYfWk2skDsk3kHDvm/r5UdvkeXb8r2zSNdkjxO5QbC7bR
         G7BSn8vUd4T6XRbpF0d5yEjM/i5dUdrU/T6nsQDpBHx450AeKh1GhzhTGSUGcHI9xhLX
         IAq/iT60Z+A6+q03VuU7JQzRPg1SgfkBW5k5O8BU1GLeiv093u22SyFZo8VFxKETjp9g
         +nchNGfs3uYYunjY56pz71zXhWNxa0ckR/ty3io/NttkF8YWITxQKW0IlW6ZCs1cMW+n
         jP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771540893; x=1772145693;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9I+l8JKaYFDa++mBuTeNScEkxOOej9+crJSALb0DLU=;
        b=M+CwfvfNfWZNlqLLpQcHfuxGwwx3R7W4wF4shC+UnYE2aWsbJRkaw//w708KHnGMN4
         dOwMG58l8wzXNJD9F3vedalYun/ZKcKQHtdb6W8GSgz/7tKhMMymOq38stoxjAyPL8sH
         VxPlr6SXtM7CVjCRLRSl1qCXFMxdLbjlZ2GsxZbHJdS5Y/5knD7m0RiuqmU29lsHXlZG
         Vu2ex180+GWpEK/beJ3WEusp75b9XSXGi+UvpnK1pZaJ8iJtaRDITyyHbjbPuWpNQTw4
         V07FWCNDe0WgvxVt6xX4ghXo5Q4TkWDJcXGrKMeI9eEucqRlm0T+r4sA8CxlmmiIRYoM
         gzCA==
X-Gm-Message-State: AOJu0Yx7d02b4Bdh3fRlwLkcU/QapVLttA2Tdce1B/LzeZkB9/28hr5p
	pZnCXqaF5jpH9kMucgUJja4rw9nhbjwbU0HU4O+ik/97QKCYn6nE3k8oAZjmUcFY
X-Gm-Gg: AZuq6aJrvonNsE8uPJT6SL9Oc5UOtE1I/qCnq6AngEeRcvjCqesG+GwI8nD/Nt+ocq+
	l9colc00Ozol2uF0nkDthyc/j7uoN4d/vBJ3aE2gmm1i7ukbKj+zWywoVaWJVYIdWFtrIBrRjyC
	ovXpI1QlVVrfekhPayGBFbVTseJ1ZOUVh055yNgDbhaB9oYxbMm4PeJuLS/k5mUX9mEXt1BT5Xf
	/KLg2EUV4JbbFSHfOuFNnwRNbV7Nppc/G1Uadqv+qAmBHF0Gf9ekaTb+GsXSXflP2b/5+WK/bgF
	jsonUA0eXFqQ6rzRGaGseOxKQF0JE/Zcjxn8TQ3LRW7z7eGtTbNr3DNnP2XV+EfhpzC7sPkDvFS
	ABT8YROq/VVCdRxlKjuUQKL9nWGUOyzgC0Y8AQfgVibE0/tdgxCHt3+zoAJupbPoMZqO1rpWWHe
	hJObc9Y3WW8FBIWeMcEtabEYFrDK5NkJ8cZ+rjzNkMZfON4+64ioSN/JVCm9s/VJkIoIAus+x9t
	Onhlkh8kYU=
X-Received: by 2002:a05:622a:14c7:b0:4f1:ddda:9a26 with SMTP id d75a77b69052e-506a82b7bb7mr246585801cf.35.1771535055304;
        Thu, 19 Feb 2026 13:04:15 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:14 -0800 (PST)
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
Subject: [PATCH v6 0/8] Initial support for Samsung Galaxy Tab 2 series
Date: Thu, 19 Feb 2026 16:03:59 -0500
Message-ID: <20260219210408.5451-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266763-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 9135816356B
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
 .../omap/omap4-samsung-espresso-common.dtsi   | 753 ++++++++++++++++++
 .../dts/ti/omap/omap4-samsung-espresso10.dts  | 104 +++
 .../dts/ti/omap/omap4-samsung-espresso7.dts   |  70 ++
 arch/arm/boot/dts/ti/omap/twl6032.dtsi        |  77 ++
 9 files changed, 1015 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso-common.dtsi
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

-- 
2.43.0


