Return-Path: <devicetree+bounces-267496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OCyDpBwnGmcGAQAu9opvQ
	(envelope-from <devicetree+bounces-267496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:21:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AACFF178A78
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3BC4300E5CA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32A6285CAA;
	Mon, 23 Feb 2026 15:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bret1Pnw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E3E244692
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771860109; cv=none; b=XsDHQSC4wuIgCKIq8h9H/WoJwWsf0Xo31MmLpT0YmfDhBoJFCXUnWJqoFB+v2IRNq299vzsaMXaIjdfAn+KU0CYvcP4tWDGC58L1bbbKWgRPWU20w6yht48TxkS4n3ehC0orRbcv0HyK6N5ZE/DHfLzFmfEAWDzQZM6yDSM+a88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771860109; c=relaxed/simple;
	bh=mQ3MQMilzw20LjUCns41Lku0TPq9ZMFc4qfQF8+Vt2w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UKv2mooBNVmt+NpGOFW9dAYOfh+NALf9ovZRaO9+FtVRHpDY9fg6dHMsAuf1FixWN7XYLxKDLephqW4TF2Krui1i1vcY9MGs+/U6Ed7/q9+99OuL9rS4+0mQYGJbYgzZbnqkr//4DKgpQN42enCvZqjFFQBxEdfzNE5tNuUYpPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bret1Pnw; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5fe0959ae3dso2438237137.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771860107; x=1772464907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/aUtuOEkRmi402+kxGGUvbzHIC7w7l1S49zZW1GH148=;
        b=bret1PnweQizjBlOe2pwUKfFrqPpfHQEj9wX7n7vUQ76BQze3InsTFX88BO+h2aPqV
         kq6tK72CZYFOkVzB8udkRgTGbMXXCR5WOHIrTzcuhS7jn+wmpl/k9GqngWNUcZHn9bqd
         2G4x0AuL6zU8CDVm+CRZ8cla5KvqKE/WJeWFtoJCkiL2nB3wXFgnGGWXYF+GaHUNBe7P
         jRJKQ5kYukw90bDKWYARCwXhpEsYe2L4EGJQ/Ik+FkT83Mqk0mQlBhu4lyV5myDR/WhL
         v0jphhuT6JDo53tpLev6tk32pg/18XSh/bmd3/I05BadT4i8L4sv3jR9rRiq1B1giaaO
         RHPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771860107; x=1772464907;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aUtuOEkRmi402+kxGGUvbzHIC7w7l1S49zZW1GH148=;
        b=wf/VQ4wniBaYKmGrRCqbE9Yhs08/c1pka9ZYkYCAm4+49lkAWhxV+Ld7Mj2aDeI94b
         YfTsXvQkIvmUVmFC0pWB53LWczqmir4TAESIol9qsH+RzQdYGandlunz1hJu8BdTZvPz
         udkLNwhMeVm4qmJ6FnI1YZ9jK1vy2GSpdYxEjIzhzJgX2NldwBFYbIeAB4VX5IKN1xTB
         SuK3qIfCIH2NV/gAdUyBFlcSn4uyGHTPu2bL98a1yjMGYAZBkIvtA8bItkUHrUflnjFY
         VAH5OGFBrzeb2f7HGIk5h2pxB+tAQM7NzZRq3j8t5f5zWr6Lk45haU6JWLBfqklUobsG
         TI4A==
X-Gm-Message-State: AOJu0YxWnpx7aaG4QaiUDLEQ2XFhwUhNs2pYjYK7GJQSsCzOKN9/J/nU
	0gtbKnXHK3K/8Pe7OcBvbOLn7lyGkqsi+9kbwR4RzLfeqctX/lakgDfh+AiBC3g5
X-Gm-Gg: AZuq6aJLSOkJhA2uTRLf7H3tdm6u8snZoNQh9Y887A8lgBMwW3Rt/u+dN2qBjzZDjOM
	s5LLfuUCZ5q9fw+5RQjLFri0h0AsZi1n3c8pIixb904xuXiFtUSq2sccGE4AuCflhJQ9QTyGpO/
	sN/qJ/+mcR7NH8Bs7HWdf3/7adBhmU/o1gOm9TBQj1vNbT2No0UJ+0gZ4Ziqp7Kkr1wL0w3CFN0
	vEK0qSjRGGRiZJnagjXtGwNssD9QtoBCFmyxKxsENRf4A0D4QABEKdFgdOWapsBH5ZUXoGI2nRH
	a9HOI/iKQjI3jTtnTNjBBuBFv34HhtlTCrzZnbt2JExSSScsfbYAhggk3jszYnqASfts9zfxa60
	Ucf3CBjEx1ItglCKSvlAob11vcggthxHyFUnEKYwkLgVHFdR85lvw91EHXzZ+ZAdhAaf9WLfVnK
	bC/Kv58wIxahfnHr2WD+wMgk7cusjQrS6RGeYrq4P3dOPjR6Yr/DnL6s8diDM4/S3KH+T0XOljq
	YQJub6O8tQ=
X-Received: by 2002:a05:622a:150:b0:506:a394:ca64 with SMTP id d75a77b69052e-506f30beef1mr188405381cf.16.1771854584689;
        Mon, 23 Feb 2026 05:49:44 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm67954716d6.36.2026.02.23.05.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:49:44 -0800 (PST)
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
Subject: 
Date: Mon, 23 Feb 2026 08:49:32 -0500
Message-ID: <20260223134941.427-1-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	EMPTY_SUBJECT(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267496-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AACFF178A78
X-Rspamd-Action: no action

Subject: [PATCH v7 0/8] Initial support for Samsung Galaxy Tab 2 series

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


