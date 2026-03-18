Return-Path: <devicetree+bounces-277353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAnDOGPXumkXcgIAu9opvQ
	(envelope-from <devicetree+bounces-277353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:48:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB32BF95A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AFE7317ED86
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C9431A576;
	Wed, 18 Mar 2026 16:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxmWjC/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DFD3DFC66
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849923; cv=none; b=Bgi11hOR73/q8myQHNME6IiwxozB25SBYABDnRleFi+Vu345tPEAAxga9LJodTXz4QTUHRRsHzLD6UMZNZC3kAA7qJfAcPSzBSYo+DPsdPvQu9MsE6e82YtjNX+KsKQUMTR+0OFYFhFRLGI6aTbfjtawqk8XpGcHC4hDxxU88i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849923; c=relaxed/simple;
	bh=jXMA/dCk6GfYrs/V5on0Asyipeqpdixm75EBXPhISag=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lX+5JLH24N6mtfTQ2fwF6twMMXNi0qiYYB92r/JUpREh1x2vXPmBVLIsxfdSztQ0iPOAIuESx1ryQ8K07XdH04LuplTtdY+uvcyG/bOPyhqnuNbrNVTMLWkawDj9iHwbUdmQpZm0q7XfqBT/UWEq+WD59nhlk0ASCYutmpwgrIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxmWjC/B; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4853c3c2fe7so141225e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773849914; x=1774454714; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=48rofo6CJOo6vDXyvqVZcV6FKGqYI4Brbiz5qO2aiTw=;
        b=DxmWjC/Bzd91/aMGNyGqaZfuHMcOZRqWF0b1GJF/rN+k70JpBEMecwTbdRE+PSIjK9
         k3wBeOxYVn+XrVFOxDRwaM2sq67+gz8a/d/ZydErZX3tU6l8VH1bwLprFmo80XFa0JhF
         pqAMeoxMmx/yGt25vyHWAlQyEboY4R25Z+0WVXtf48XuwspyyrAGuo1WzSafLwXA+EjP
         x9ZonkVxGOSfj72prMnxeHxIvlfv8yx5QGrU4wjnNdNB+/5LcyVDQk+EAU5GBHghOFLw
         m3sjZ9dAV5+8bffqcIe3a8Giw2kclF7s/TpeclinGOn314ZsPAmTvuUKiIwLFv5bfWi8
         T/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773849914; x=1774454714;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=48rofo6CJOo6vDXyvqVZcV6FKGqYI4Brbiz5qO2aiTw=;
        b=ZtHlL/4per67J119TO99sZVFENG731CXLrKrDm/lBrs0RA5iwHUG7BTMJ9bDbgEYp/
         xSUFpOnRJOpE5VVp2MRh8zTOYHH721U6YWRVZpNB9/Ysu7FBtYld/cbAQeSo8DBt1ZNh
         0dmt2m+JmjMajHbi90AQk8fZ3t6FCoX9uRcxvwYsLDkC4q7NYLblcCCyLxTWvrbJPQqq
         DFxxOT3RMCVJpC2PPeOQ4H//XBNqCgVv++uYEP8O3MaHdNIcaNtHXGqPin/5mbhwykn9
         RPRep6/rSYcWJkBj4dgg713b8N22VoFTqbJ1zErVV6fBbFjTyO0943J165mOQHkq7IVf
         cGXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWF1KKQhlVIYMY5OxRTObshuJxe0RLNT/OOxJKFW4ocyCikYDzpDshZe7XObwUAamHxm7GhfFBnZ+Mi@vger.kernel.org
X-Gm-Message-State: AOJu0YzYBSC+XjVpAL6vXNnQ2yRBZPwNf/PwHV83+FwGwQGwKOy2oFSA
	PaA4CTQt21CIXGd6L4YAtBqFhknIoa93VKsBlvbOLCMU7fLWJvOf7pZn
X-Gm-Gg: ATEYQzw4gVSyVhSA9h8rrSs9OK/wCWrt/42Ab+CnGE9eA9FvVd6h8OLzu1FVtrYVE+g
	wY6vT9PJ2dP6HZZ3PFDAP63suLcHGYcI3tFFM/vlYY4z18ZzkeDzpkjtKusfrnHnO2P2NLhzHI/
	HKZH7Xj0V7nmHDEiV+Zj3pCy2OgY0IjmF5EmUbpQlD6hnJfpziHFoFT+0vteMl8cxzxIgpYBXFS
	IwjZr/1yOm1amOMcJ6fEZ3sKfhSwo1LCNX24j8UNh5Cf4ISKkHlZAjwsqLntzyYXz0dmUr2WAsU
	fmLR/yka8ZfN4EWKIPat21JGzl7RkKAADQbbCYJFHK+B9SzvjwTnJdW3Qq43aOe14ssoFEA9OiL
	CG6IPrBGXUtFpUIkSdedixYakjaRGQh2buu/QAPH4yUnkPrCXxC3EbjG8BRVCtAbIB69LdNj7yB
	LfvgMQI2gyU0KeVeHXswKrbo3MT46jLNElngDsSTfB1tm/HuCuDj8D/O11lQBRQlc=
X-Received: by 2002:a05:600c:3e08:b0:485:5812:bb9e with SMTP id 5b1f17b1804b1-486f42018dcmr69488495e9.0.1773849913198;
        Wed, 18 Mar 2026 09:05:13 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8baec5csm2282225e9.15.2026.03.18.09.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 09:05:12 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH v6 0/3] Add support for the Samsung S6E8FC0 DSI and M1906F9
 display panel
Date: Wed, 18 Mar 2026 18:04:47 +0200
Message-Id: <20260318-panel-patches-v6-0-7a30c2f85e0b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/33QS2rDMBAG4KsYrasweliSQyi5R+lCj1Eiasep5
 ZqWkLtXdhYNWhSBYAa+XzO6kYxTwkz2zY1MuKScxksp1EtD/NleTkhTKDXhwBVwZujVXrAv9+z
 PmKnqVIgaIRgGpJjrhDF9b3lv7496ws+vEjs/mmTAnO0Wu28OW6pYjzRS75gwGiiji+2PV+s/c
 J53fhz71zXa2YzUj8OQ5n0TZAfKIpO2jUwoj05p5hyTHoMrnWhbBcEqsg5xTnkep59tx4VtUzz
 W4aJaZ2EUqNat4tBJrWN3PA029WWIYUta+L+aF82cskFqFloJtRZ/WjBea1G0wmA8gArgsNbyW
 ctay/Vt9M5xD154U+v2Wetat0Vj7LqoHTfl4571/X7/BSAeNrknAgAA
X-Change-ID: 20260218-panel-patches-696df7e0d810
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 David Heidelberg <david@ixit.cz>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773849909; l=3391;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=jXMA/dCk6GfYrs/V5on0Asyipeqpdixm75EBXPhISag=;
 b=TOPaPwp4HkIzKfP0Z/7KdEVCQZt1ENxA6P4rIZ70bOfbJ1izYjskptI21MjXpuNlci9qsaLxn
 S4uXQcjZfbwARVhc7DLz6EYtxZ9hQnorQQFmDiHOutRZ+NJ5k3xDRWt
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277353-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com,ixit.cz];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 48DB32BF95A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This adds a driver to support the Samsung S6E8FC0 DSI controller with the
M1906F9 display panel found in Xiaomi Mi A3 (xiaomi-laurel). The driver is
generated using linux-mdss-dsi-panel-driver-generator[0].

The mdss reset dependency makes the screen work more reliably.

[0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Changes in v6:
- Rename some identifiers to be more panel generic like David asked
- Link to v5: https://lore.kernel.org/r/20260317-panel-patches-v5-0-ef99f7b280da@gmail.com

Changes in v5:
- Fix typo in panel name, s6e8fco -> s6e8fc0 (zero -> O). Was like this in
  downstream, but in samsung website it ends with a 0 [1]. Found in [2]
- Link to v4: https://lore.kernel.org/r/20260314-panel-patches-v4-0-1ecbb2c0c3c8@gmail.com

[1] https://semiconductor.samsung.com/display-ic/mobile-ddi/part-number/s6e8fc0/
[2] https://sashiko.dev/#/patchset/20260314-panel-patches-v4-0-1ecbb2c0c3c8%40gmail.com

Changes in v4:
- Use exisiting binding instead of creating a new one
- Mention dsi phy power source in commit message
- Mention only DSI controller, not panel where it makes sense
- Remove VIDEOMODE_HELPERS selection
- Collect trailers
- Link to v3: https://lore.kernel.org/r/20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com

Changes in v3:
- Make driver, bindings, compatible specific to M1906F9 panel
- Adjust brightness scale and default
- de-mystify some dsi writes
- move pinctrl for mdss into panel node
- Rename regulator nodes and names according to schematic
- Treat vreg_l9a as input to vddi regulator
- Add myself to copyright header, remove years
- Link to v2: https://lore.kernel.org/r/20260223-panel-patches-v2-0-1b6ad471d540@gmail.com

Changes in v2:
- Changed commit title like Dmitry asked
- Fixed copyright header years
- Link to v1: https://lore.kernel.org/r/20260223-panel-patches-v1-0-7756209477f9@gmail.com

---
Yedaya Katsman (3):
      dt-bindings: display: panel: Add Samsung S6E8FC0-M1906F9
      drm: panel: Add Samsung S6E8FC0 DSI controller for M1906F9 panel
      arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable MDSS and add panel

 .../panel/samsung,s6e8aa5x01-ams561ra01.yaml       |   5 +-
 MAINTAINERS                                        |   5 +
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  |  94 +++++++
 drivers/gpu/drm/panel/Kconfig                      |  13 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 .../gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c  | 301 +++++++++++++++++++++
 6 files changed, 418 insertions(+), 1 deletion(-)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260218-panel-patches-696df7e0d810
prerequisite-message-id: <20260303034847.13870-1-val@packett.cool>
prerequisite-patch-id: 3fba84f11111406e0d530013fd45ad0eb389786b
prerequisite-patch-id: 81440b7f28f9101d3dc5d4bad6dc86e39b81a026
prerequisite-patch-id: 53469d8c9810169d058f1bfd27ac8399038aae74
prerequisite-patch-id: 80809bee71eb6434f6699d5e5f8c7f9d4bcd1ca7
prerequisite-patch-id: 0269e01c9c54a37bb92983635cd516342189aee5
prerequisite-patch-id: e2bbf7c452d4da6d71b1a5194e0d7ce46584e113

Best regards,
-- 
Yedaya Katsman <yedaya.ka@gmail.com>


