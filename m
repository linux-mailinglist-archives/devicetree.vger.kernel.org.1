Return-Path: <devicetree+bounces-278118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH1kMBMKvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:49:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E68B2D776D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C36BF304415B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7005337417F;
	Fri, 20 Mar 2026 08:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ii4AbQp0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266A9371072
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996241; cv=none; b=Az+dxTIxsROB8rgbAJrCE1jLPH3fC0/k6ZKvqmniW/5q8KLgMmWWadYm5Kt+r3Sv629WEKHKwDIQ/LqAzjLLzSnG1CnIcaU8Xeq2w9dcY6L3soU9b96u8PMWz5VR97VRv7cdN8xBWvEGxRiXGo1jRxe2hs+zOTvD40sABAOtUgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996241; c=relaxed/simple;
	bh=ZB5VH3FplpepEZU/xeRmZriCO1K5P4Fq+M5g4lOboZM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hUoXwDlRqdVlZQQcCz5qUVWExPn8LX11kmj56LHCgij3FF2/dAqq+Y2L4crVuQPSQ+VPqlmkAnlFcVdkSG0+JbsUf4DJ7CLgJS6bXhEgfiuU1vAwrjU6uXZ0KkC3R+MfZvMvS/hmOzinIUPRPCyqukPOMevPr1Nc3OuYj+3k5i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ii4AbQp0; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2b04b4974abso16414795ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996239; x=1774601039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XLA7+O4naI3deHzrbL/7xXnsE7GTOurmxvnrea6kDcM=;
        b=Ii4AbQp0wMg+HL6c3FRtr2/xrTTZZMTLMPexI8YSObHBsM29LfhiPuimjleBiWS1lO
         8+dM7pIsmg+H7a0rcrgLKIow7ZlfwJd+XQKKxeX2MT4H6KWBUaXP3IVZQa3/+vS4Uccj
         LK9eCHnyZkutyfJCoYYuar7ejorUG0dcPeZQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996239; x=1774601039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLA7+O4naI3deHzrbL/7xXnsE7GTOurmxvnrea6kDcM=;
        b=SBn/CPt+MleW4M8McrKAy3tG/kM/lWkx9nF8+4/61C+nztMj6qWrGovjB/HRd3g+xO
         l/V8EvlbAbGHrmXQdr7YOTujgXpn+zU0wTdEJBgJhpPYaGiNGC3tyaYvUuhHTlzWB4ka
         aca/L41eUwQ5oNp7LRHqMz4LU2g5kfW4zTn13TK9HHrKkmYwotVmh4RSyClH/5vkLb8S
         ldH7/TL2R40Ki3nuZVHBSlIgOAxIER9ynv8gavmJnWu9XFnoJHXQ4n+Qtb1GKEmW+wUS
         8WsF0ElNdAAYNbHqD3wF4wco08WpGMaE6BbuD08TtpHqTwIb1QUBdHXiMRPWo0Ff/fgm
         E8yg==
X-Forwarded-Encrypted: i=1; AJvYcCXUceDNSBWIolKB8ucrBa8Gcbkbei7B4Q9x2uKzMPK4Akn+g052Zc3oYKjhMrDfpOl4wHHZ9GD9UU7E@vger.kernel.org
X-Gm-Message-State: AOJu0YxFE2Tcmox0dFvkszZxqY/5nuhNnw0xvkCKQ0Kf7CBIGm0wMINW
	ZiZADbOSMzPDS8fCPwAd/N1mP7TFHgmFHr0oIr8xg/G3YBrcM7J8W2MHvnRxmu+H6Q==
X-Gm-Gg: ATEYQzyRb9b7TRPTsyRrgZZsi91QbZx464mWhjlnFu2y8+dBvTnI7+U81kdD6JlSEDU
	dbkA4zvFDwDc6VTA2SsCWAzcIU7ztsm3sq9pC/eNlHAN6hI1J5sQvayrXWLSw62VstHtBCLSLKO
	bJknKkD+CFEWmirORgpUIeEFENO2TXOQNKxhVJohldiMcHm5J9NzTPjKmY2Ngw4NI1DY3dJjL2l
	xz4SSx38hPpXvn9hwCKyBTOw8Otetti+vazq4Ly/b3mYy0MjOSTfXfEdz5Yk7O4vw5yeDZDb5sW
	7uDNVn7UiV8VC2CUZHKJ+jVA28pUZOkBXxnhMKP4YGC2miHAW23KevK0p2COxTp4sYk7bYHBWQL
	7qzxjUDjdPI1pirII3mH3UPEzP1y7t1FKzTaj51Kx3R+Oo5+CZzJWdxWHnr4C2xKxvhUofUjwCU
	CxmPwbK76WehZPNXsSSr9KZmJHpSC3lO/dXDUqn4bDcTm6XSFu/qENqdfrHcCPVALAq9F18Cbb8
	EX8wB2S
X-Received: by 2002:a17:902:d541:b0:2b0:5cb3:e4bc with SMTP id d9443c01a7336-2b0826f6b0dmr20672295ad.16.1773996239541;
        Fri, 20 Mar 2026 01:43:59 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:43:59 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: arm64: dts: mediatek: Regulator cleanup for Chromebooks
Date: Fri, 20 Mar 2026 16:43:32 +0800
Message-ID: <20260320084351.2461060-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278118-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.916];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4E68B2D776D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This series contains the device tree bits for the collection of regulator
related cleanups for MediaTek Chromebooks. The device tree binding and
driver changes are:

MT6315
- https://lore.kernel.org/all/20260320072302.2402489-1-wenst@chromium.org/
MT6359
- https://lore.kernel.org/all/20260320072440.2403318-1-wenst@chromium.org/
cros-ec-regulator
- https://lore.kernel.org/all/20260320083135.2455444-1-wenst@chromium.org/

The goal is to complete the regulator tree so that there are no orphan
regulators, and there are no devices that are missing supplies.

Patch 1 drops the bogus regulators from the mt6359 dtsi file.

Patch 2 adds a label for the mt6359 regulator sub-node. This is used in
subsequent patches.

Patch 3, 9, and 12 add supplies for the MT6359 PMIC in various
Chromebook designs.

Patch 4 and 10 add supplies for the MT6315 PMIC in various Chromebook
designs.

Patch 5 adds supplies for the ChromeOS EC controlled regulators in the
Asurada design.

Patch 6 and 13 add power supplies for the CPU cores.

Patch 7 adds the power supply for the SPI NOR flash chip in the Asurada
design.

Patch 8 and 11 fix up load switch descriptions.

Obviously the 3 dependency series need to be merged before this series,
or we will get a bunch of new DT validation errors.

Please have a look.


Thanks
ChenYu


Chen-Yu Tsai (13):
  arm64: dts: mediatek: mt6359: Drop ldo_vcn33_[12]_wifi regulators
  arm64: dts: mediatek: mt6359: Add label for regulator sub-node
  arm64: dts: mediatek: mt8192-asurada: Add MT6359 PMIC supplies
  arm64: dts: mediatek: mt8192-asurada: Add MT6315 PMIC supplies
  arm64: dts: mediatek: mt8192-asurada: Add supplies for ChromeOS EC
    regulators
  arm64: dts: mediatek: mt8192-asurada: Add CPU power supplies
  arm64: dts: mediatek: mt8192-asurada: Add SPI NOR flash power supply
  arm64: dts: mediatek: mt8192-asurada: Fix WiFi regulator description
  arm64: dts: mediatek: mt8195-cherry: Add MT6359 PMIC supplies
  arm64: dts: mediatek: mt8195-cherry: Add MT6315 PMIC supplies
  arm64: dts: mediatek: mt8195-cherry: Fix VBUS regulator description
  arm64: dts: mediatek: mt8188-geralt: Add MT6359 PMIC supplies
  arm64: dts: mediatek: mt8188-geralt: Add little core CPU power
    supplies

 arch/arm64/boot/dts/mediatek/mt6359.dtsi      | 12 +--
 .../boot/dts/mediatek/mt8188-geralt.dtsi      | 45 +++++++++++
 .../boot/dts/mediatek/mt8192-asurada.dtsi     | 75 ++++++++++++++++++-
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 28 ++++++-
 4 files changed, 145 insertions(+), 15 deletions(-)

-- 
2.53.0.959.g497ff81fa9-goog


