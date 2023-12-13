Return-Path: <devicetree+bounces-24833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 098BC8115A2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66633B20EFC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA9B2F864;
	Wed, 13 Dec 2023 15:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P66102IW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFA08B0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:47 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1d08a924fcfso65305015ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479887; x=1703084687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g5L5MwV7oIEpjp+BC3SquVGWCmTt0XhfETFBuojKbpg=;
        b=P66102IWZGTv64SmOvyYRH8Z96ig9eJos5TaVsOXYcODJ+CO7YyHKPH4UVpozcYlKo
         lA1rxbaXidlIqGNROV0xXYsFMy702weXsxIPDWMq8K3DG/tGVNHx/6WkYhT+tCfYAYg4
         Tuy2zoK0ulrukaJRwurap+hGog+3+6ooYN+k4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479887; x=1703084687;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g5L5MwV7oIEpjp+BC3SquVGWCmTt0XhfETFBuojKbpg=;
        b=lpM5r3tqSfgJ7mktttXNnufvjAbzTOiDLz3XJeT0yKnLMQtny7BYhO2A6PL8mjPtxW
         a+/XCT4+ZSsoUwqn0nMS2n4bF33AwS4NMfYDJ69uk7DZOhNQqju8ZxztQnL5QcJ3iIza
         mlUyBlHrl7O1E6OIOji0KKy+Dv521ofTOVW9b76Nygck2kppG5zrrAe1d6Ld1zN744EN
         IVoAFsnZjFvErZbzFFHC20ywjYMRtIy+YyUp2Ki4aRE9mPVmyLkxsvg/n3TsQV2UoEAu
         A+ds2917n4AbTnOY87GehGo8BYUQquVnQRbBCiNWICltEi3YFK63+7uwzgEwVRS0eXLX
         w9oA==
X-Gm-Message-State: AOJu0YyfmrJF6sHQj7H0+R6buLITsBM4b0xs1V9/L9UzbANYxg3iRe1p
	GHPbaPLL4gJJXmyBV3XUEzZaTA==
X-Google-Smtp-Source: AGHT+IGEoKXQ/Fiaji0AAhxLgAPtUXjFyET2J3jxpyNfdsJesbYejcQKAoFvuZQ5QschoqSJhNZWOw==
X-Received: by 2002:a17:902:ec8a:b0:1d0:d18c:bc5a with SMTP id x10-20020a170902ec8a00b001d0d18cbc5amr9776871plg.121.1702479887120;
        Wed, 13 Dec 2023 07:04:47 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:46 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH v4 0/9] arm64: dts: mediatek: Add MT8186 Corsola Chromebooks
Date: Wed, 13 Dec 2023 23:04:24 +0800
Message-ID: <20231213150435.4134390-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v4 of the MT8186 Chromebook device tree series. Sending now in
case you still want to apply more patches.

Changes since v3:
- Collected reviewed-by from Angelo
- Reorder some properties to conform better to the newly proposed DT
  style guidelines
- Drop unused labels
- Rename bt-sco node name to bt-sco-codec
- Drop i2s*-share properties from afe node
- Drop aud_gpio_tdm_{on,off} pinctrl nodes
- Replace interrupts with interrupts-extended in tpm node
- Enable adsp device

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
 .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1707 +++++++++++++++++
 15 files changed, 2477 insertions(+), 61 deletions(-)
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
2.43.0.472.g3155946c3a-goog


