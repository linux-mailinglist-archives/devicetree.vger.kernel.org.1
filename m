Return-Path: <devicetree+bounces-21218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F64802D64
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3E0D1F210D9
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7518D29C;
	Mon,  4 Dec 2023 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mDM7P853"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA8D85
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:42:19 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d04d286bc0so13334675ad.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701679339; x=1702284139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OSbK53fPx2M4UyMXuvtFTsva3e/34kZVsYfj7kI8Z58=;
        b=mDM7P85356O/KQnDccOSvdlMU+vA3WWSfb8QiPElBBtSAWJElcgh1uOA+virwK3i6p
         6iAf4eXHH7inq2SdCZKKml6pgztzns5rL/ZLHrSCd9ZRVuCys0Ja/L46KPJhsgmULQqA
         QfjzHtZB4XEQ0zAVFw/OAPOXSCuJfUL4j9qU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679339; x=1702284139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OSbK53fPx2M4UyMXuvtFTsva3e/34kZVsYfj7kI8Z58=;
        b=FAip8QWySTsYYLNWmUJ5ImSoBbVGGjo8+b3qcpetnGxFoA2uM4r0px+yI08LstjCfu
         qneAvPWD+xALHWSHYyh+ECp96VM+608qIVXFacKjlgYXgCGKaxyBV9rmeqdXqAgGetr9
         7R4KQPtJNrVgF3kkUpdV+4LF4KbjtEc9LmC5AmjT+c2bzEuwBS2Cx+ypfoFcGi94FBvk
         +r9k9agU368uOZaafzDsdikCDsXp9FlU5x7ArP4SARYZCItJ4W5uYDms6EuaOYSEnyh6
         KX5JByw0x4Xu3hCDUFTok8IIswScw01QR0DcT49pUUqjRcJCK2RpgKbIjnDDKNh6Vyvj
         WIIQ==
X-Gm-Message-State: AOJu0YyI7sjmBtkSzoJbvVexvR6zhKvJg0Xx4USHuYdResTcApNShQ0C
	3Zn5LwpMHwkyROvtfxFUxDXTFw==
X-Google-Smtp-Source: AGHT+IEzVGnUikV9DvhGxehq6PF1bfD6d4j4pJfg9i7SaJCT64jWxu68Zg68dKkcqVU+YFXPf2qBDA==
X-Received: by 2002:a17:902:7c8a:b0:1cf:fe32:632f with SMTP id y10-20020a1709027c8a00b001cffe32632fmr1320665pll.22.1701679338791;
        Mon, 04 Dec 2023 00:42:18 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6084:72e2:9ac2:f115])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709028a8e00b001cfc3f73927sm7871795plo.9.2023.12.04.00.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 00:42:18 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] arm64: dts: mediatek: Add MT8186 Corsola Chromebooks
Date: Mon,  4 Dec 2023 16:40:02 +0800
Message-ID: <20231204084012.2281292-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v3 of the MT8186 Chromebook device tree series.

Changes since v2:
- Picked up Conor's ack
- Renamed remaining "touchpad" nodes to "trackpad"
- Dropped pinctrl from tentacruel/tentacool second source trackpad

Changes since v1:
- Reorder SKU numbers in descending order.
- Fixed pinconfig node names
- Moved pinctrl-* properties after interrupts-*
- Switched to interrupts-extended for external components
- Marked ADSP as explicitly disabled, with a comment explaining that it
  stalls the system
- Renamed "touchpad" to "trackpad"
- Dropped bogus "no-laneswap" property from it6505 node
- Moved "realtek,jd-src" property to after all the regulator supplies
- Switched to macros for MT6366 regulator "regulator-allowed-modes"
- Renamed "vgpu" regulator name to allow coupling, with a comment
  containing the name used in the design
- Renamed "cr50" node name to "tpm"
- Moved trackpad_pins reference up to i2c2; workaround for second source
  component resource sharing.
- Fix copyright year
- Fixed touchscreen supply name
- Mark missing components as disabled instead of deleting the node
- Dropped reset-gpios from touchscreen nodes
- Drop status = "okay", which is the default


This series adds device trees for the various MT8186 Chromebooks that
were initially released. These are the Tentacruel / Tentacool devices
released by ASUS, and the Steelix / Rusty / Magneton devices released
by Lenovo. The device trees are taken from the downstream ChromeOS v5.15
kernel, ported to mainline and cleaned up.

Corsola is the Google codename given to the MT8186 platform. This
platform has two reference designs, Krabby and Kingler. Kingler was not
used in any actual product, and is therefor not included. Steelix is
an alternative design put forward and is effectively a mix-and-match of
the two reference designs.

Most of the core design is shared between the variants. The differences
are on which external components, such as the display bridges, are used.

Patch 1 cleans up the current list of MediaTek boards. The entries are
reordered by SoC model first, then by board name.

Patch 2 through 5 add DT binding entries for the Tentacruel/Tentacool,
Steelix, Rusty, and Magneton Chromebooks.

Patch 6 through 9 add board device tree files for these devices. Patch 6
also adds the corsola dtsi file for the commonalities between the designs,
as well as a dtsi file for the krabby reference design.

Currently external display support is missing. Audio is not working, as
enabling the audio DSP causes my test systems to hang.

Please have a look and test if possible.


Regards
ChenYu

Chen-Yu Tsai (9):
  dt-bindings: arm: mediatek: Sort entries by SoC then board compatibles
  dt-bindings: arm: mediatek: Add MT8186 Tentacruel / Tentacool
    Chromebooks
  dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
  dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
  dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
  arm64: dts: mediatek: Add MT8186 Krabby platform based Tentacruel /
    Tentacool
  arm64: dts: mediatek: Introduce MT8186 Steelix
  arm64: dts: mediatek: Add MT8186 Steelix platform based Rusty
  arm64: dts: mediatek: Add MT8186 Magneton Chromebooks

 .../devicetree/bindings/arm/mediatek.yaml     |  180 +-
 arch/arm64/boot/dts/mediatek/Makefile         |   10 +
 .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  129 ++
 .../mt8186-corsola-magneton-sku393216.dts     |   39 +
 .../mt8186-corsola-magneton-sku393217.dts     |   39 +
 .../mt8186-corsola-magneton-sku393218.dts     |   26 +
 .../mt8186-corsola-rusty-sku196608.dts        |   26 +
 .../mt8186-corsola-steelix-sku131072.dts      |   18 +
 .../mt8186-corsola-steelix-sku131073.dts      |   18 +
 .../dts/mediatek/mt8186-corsola-steelix.dtsi  |  195 ++
 .../mt8186-corsola-tentacool-sku327681.dts    |   57 +
 .../mt8186-corsola-tentacool-sku327683.dts    |   24 +
 .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
 .../mt8186-corsola-tentacruel-sku262148.dts   |   26 +
 .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1719 +++++++++++++++++
 15 files changed, 2489 insertions(+), 61 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393216.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393217.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393218.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-rusty-sku196608.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131072.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131073.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327681.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi

-- 
2.43.0.rc2.451.g8631bc7472-goog


