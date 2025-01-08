Return-Path: <devicetree+bounces-136755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35930A06184
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3111B166C8E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D551FF7C2;
	Wed,  8 Jan 2025 16:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oSg0/fkP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FEC1FF61D
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352952; cv=none; b=iIf64QNJ1TxqjR1+6EIFaIRqjpQ2joC6qhOnxaNtQgSgavwlbNFPgeoB9q8sx6c3kJkcu6zMKEN36MR0MeKjc9gXfrHpeGE4M8jr44MMzKVcXN4uEU3h71EJaYBPqyQJQlOuWFjDvqdxgzE4vHDBug0g07FbPByBy/Aquy93wjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352952; c=relaxed/simple;
	bh=9M5KGNUL9vwlasksx/eWxH2UHxU8J0vFX1+wbxwtEUA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iFisMXOLLXydkqeaR0FHEbSnKe969mtKPKboaI19LguqMGHEovvN+g4Ju4nIWuz890ETCXKx7Anobvc6nulNHGQH0sRPSOnJvi6LULR1dwkkZxfv/Q9mwl/mEGREpgd2A7Pg9sQ8ks6IbeZxvTP584LyQysnhLuxKAsMEHCCJ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oSg0/fkP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361f664af5so6395e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352947; x=1736957747; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cbxXwWR8AIKr2Z5xmtMFDic9EFUnqAlHiSI7jHWWslU=;
        b=oSg0/fkPWKeWWvVsCUDZN3uVcZg3Lm9QPztinRYBti1kM6BNRUX0nu9vr871SuQmbb
         wAE3BBsHVZWI284pWqzZ3T8PfHPeyFWciMlEa7tQJT2JncAdRX8YVTLfAuWaMp7OE9rx
         bbJdCXwu39f74XAAikLwKD0n2k/mi50clrGhMvSVqh4rXm1HY/27JB301Os93qpEJdS7
         jkK5neSzD9od9Uy/BljLQyS3+GoY6WDlRzvDBvILiMjHhxoOegN233ynRJ+Jh77zFa99
         U0ioY2gBQU7D/b2NK7e3cTnMn/mdLDb2OiZPKRW2J37isuaJCTyA9pxLNfNa5xDeALqH
         j2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352947; x=1736957747;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cbxXwWR8AIKr2Z5xmtMFDic9EFUnqAlHiSI7jHWWslU=;
        b=ACtlBO5ZucroCtW+gmz2YCyHnYKVxZXxcz+LxtsOqY1RiEIDCDCs2kHgiS2yZNxkN8
         vg5NiRulptVE0D+PHABAKWd+rXXnISaTPHcvGci+Tt/pgo5Z2zVhtng//p8t1qlbOmNa
         +LLvyAHQmj4lSxGozyjTBrKgtNKLanSo+3ObGKGFXHy7lhXyXo+g7+0JRxay+PbceG+y
         ROkOAnpQeYXebOGMZ+zgMCz5yfAMtPQ7XuTitNFNKJW6UAxzz029UDE1ohm6l0LdDzPJ
         3e/krwHqv2lB/pLLPuybtqUfhqj6vg0cVGNoFT+gawaZeK6sIbWJU/VU8bm52CKsXkr8
         yTOg==
X-Forwarded-Encrypted: i=1; AJvYcCWcw2ymhJI7FVWHi2QeqlPHnmqaxNJjnozXClCePj32szVJX6malBuc3tiCTI/cwlpFOvEKp3no1gav@vger.kernel.org
X-Gm-Message-State: AOJu0YwnhcmdILQfa3imrNRP/Zk13cJvTNyVDo16S5t4q+T9iYAItT8x
	mUsfVERCmk4l8Mn9AXWJfBoCVvVpBusymVnaAUagG7bgralDcAe23FNJqHHA58k=
X-Gm-Gg: ASbGncuMO22t4UAXDu38FoUbhVtKR4XQ4j5QDMW4d1JCEXtLTQd6Jl16og90sW5m1SP
	dVYDYZWeBgC9OxYQ+Jk8GN1JuAnjHjgrzCwHF5RHg4JT3g+4Dp9rXwnPHPIijcbs+uc2LBDTP72
	MDVe66NY6AtyqJt/WbhMccPXnOCDeZzpezn5Zyut0VI+O34CK+LO6D39Y8NawE5hb3HpItFLQmi
	XjTCI48il+AE2MyodN69hoht4Nmh6bGFB5+vGANxdIeIyKNA7aaWwk/YzwJ
X-Google-Smtp-Source: AGHT+IGGAa64d+bPHxfOT6F6vJgh1xofOm1puRyf5Gg2Qx08bu4NygW/ia9oSmUPKTI5x+9zroEuLw==
X-Received: by 2002:a05:600c:4e44:b0:434:e9ee:c3d with SMTP id 5b1f17b1804b1-436e27070b1mr31379705e9.20.1736352947285;
        Wed, 08 Jan 2025 08:15:47 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:46 -0800 (PST)
From: amergnat@baylibre.com
Subject: [PATCH v5 0/7] Add display support for the MT8365-EVK board
Date: Wed, 08 Jan 2025 17:15:42 +0100
Message-Id: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK6kfmcC/4XOwQ6CMAwG4FcxOzvD1oHTk+9hPKxbkSUKZEMiI
 by7G0ej4dDD36Tf35lFCp4iO+9mFmj00XdtCuV+x2xj2jtx71JmspAg0nDnY/8wE4+vvu/CwG2
 lhEYoSIkTS1doInEMprVNvhsoDiLv+0C1f69N11vKjY9DF6a1eBR5+79jFLzgpdVVQa60AHhBM
 z08BjrY7skyN8oNQiYCwJLWlUIpjz8I2CAgfwGgdQ3kQP36Qm0QKhHktCQUla5RfBHLsnwA7M2
 QN5IBAAA=
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4389; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=9M5KGNUL9vwlasksx/eWxH2UHxU8J0vFX1+wbxwtEUA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSx658xb7vf06grM0qAloaXvz/hrcb0mpGfxHdu
 epVdHV6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksQAKCRArRkmdfjHURWiYEA
 Cyi6gnp7YSYhtyIAMfKnndt3CITPF2/KZsZp9k2o8Npc50HP+C3COPSR1PQMuPYN5qv99iNVgVk2jV
 +b5/tfraZgj/FEwguRiDgvTlapCQzSp8nSqKQUQOMBy9W1CfLr/0WJ+IDwAkbSh7cixYua6gxzwyS+
 7yW94h56RgX2IVNPtFkUcK6WS2J3pOPo2OyDwYyOkPZKH6sKOG/ylVjCNH7Df32gHohwQfUpJkghP0
 mTtv5YPiHeTpc1sN9wFYzU6oeZXXtyMgLq9sofGPKzzSKbErqhXs1FYdg86nLE8lcJsWVQuBW05xFX
 OED0xynO9dvCNkLZJfs4sGX4MMwKjIDCWyH1B7u9x0ecdQ4e1Y4qcdVVs4EMUfSlnN4smNUz1Bvsl2
 EV7LdcTCDuvn69H7PuU3uuz0Fp/to1r08K5WbvWQKgDxLWMVLo/zA/aQEe3CoA8njD7DWu80/U9hTE
 kEDp7JNjhW/GdXkftNE9DamK2naSaDxYVXyGYsomUCZXjH3HDWlnj3pMvb0hTFP9wG9nvBtDWz9UV9
 PCRy6yw/n6dcDkIQ2DtbAv6Nv6t3DYj2OMJyv5OJMB0bTyTVJjienFJwn1Vylk+u7WJvWMZrSQfRnr
 ylZ62ANrjmM9e9hcriyWlZi0fE+LEezrw5tE+Q/1cd7Cdav9hnYtQlyJjF7Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

The purpose of this series is to add the display support for the mt8365-evk.

This is the list of HWs / IPs support added:
- Connectors (HW):
  - HDMI
  - MIPI DSI (Mobile Industry Processor Interface Display Serial Interface)
- HDMI bridge (it66121)
- DSI pannel (startek,kd070fhfid015)
- SoC display blocks (IP):
  - OVL0 (Overlay)
  - RDMA0 (Data Path Read DMA)
  - Color0
  - CCorr0 (Color Correction)
  - AAL0 (Adaptive Ambient Light)
  - GAMMA0
  - Dither0
  - DSI0 (Display Serial Interface)
  - RDMA1 (Data Path Read DMA)
  - DPI0 (Display Parallel Interface)

The Mediatek DSI, DPI and DRM drivers are also improved.

The series is rebased on top of Angelo's series [1] to
use the OF graphs support.

Regards,
Alex

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Changes in v5:
- Patch merged, then removed from the series:
  - dt-bindings: display: mediatek: rdma: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: ovl: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: gamma: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: dpi: add compatible for MT8365
  - dt-bindings: display: mediatek: dsi: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: dither: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: color: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: ccorr: add compatible for MT8365 SoC
  - dt-bindings: display: mediatek: aal: add compatible for MT8365 SoC
- Enable STARTEK KD070FHFID015 panel in the defconfig.
- Rebase on top of 6.13-rc6.
- Link to v4: https://lore.kernel.org/all/20231023-display-support-v4-0-ed82eb168fb1@baylibre.com

Changes in v4:
- Patch merged, then removed from the series:
  - dt-bindings: display: mediatek: dpi: add power-domains property
  - dt-bindings: pwm: mediatek,pwm-disp: add compatible for mt8365 SoC
  - clk: mediatek: mt8365-mm: fix DPI0 parent
- Remove mediatek,mt8365-dpi compatible from mtk_drm_drv.c because it
  use the mt8192's data. It's a miss.
- Add MT8365 OF graphs support, remove the hardcoded display path and
  rebase on top of Angelo's series [1].
- Link to v3: https://lore.kernel.org/r/20231023-display-support-v3-0-53388f3ed34b@baylibre.com

Changes in v3:
- Drop "drm/mediatek: add mt8365 dpi support" because it's the same
  config as mt8192 SoC
- Drop "dt-bindings: pwm: mediatek,pwm-disp: add power-domains property"
  because an equivalent patch has been merge already.
- Add DPI clock fix in a separate commit.
- Improve DTS(I) readability.
- Link to v2: https://lore.kernel.org/r/20231023-display-support-v2-0-33ce8864b227@baylibre.com

Changes in v2:
- s/binding/compatible/ in commit messages/titles.
- Improve commit messages as Conor suggest.
- pwm-disp: Set power domain property for MT8365. This one is optionnal
  and can be used for other SoC.
- Fix mediatek,dsi.yaml issue.
- Remove the extra clock in the DPI node/driver and fix the dpi clock
  parenting to be consistent with the DPI clock assignement.
- Link to v1: https://lore.kernel.org/r/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com

[1] https://lore.kernel.org/lkml/20240516081104.83458-1-angelogioacchino.delregno@collabora.com/

---
Alexandre Mergnat (5):
      drm/mediatek: dsi: Improves the DSI lane setup robustness
      arm64: defconfig: enable display connector support
      arm64: defconfig: enable STARTEK KD070FHFID015 panel
      arm64: dts: mediatek: add display blocks support for the MT8365 SoC
      arm64: dts: mediatek: add display support for mt8365-evk

Fabien Parent (2):
      dt-bindings: display: mediatek: dpi: add power-domains property
      drm/mediatek: add MT8365 SoC support

 .../bindings/display/mediatek/mediatek,dpi.yaml    |   5 +
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 236 +++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 336 +++++++++++++++++++++
 arch/arm64/configs/defconfig                       |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   8 +
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
 6 files changed, 589 insertions(+)
---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20231023-display-support-c6418b30e419

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


