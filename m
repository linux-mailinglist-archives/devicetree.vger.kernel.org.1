Return-Path: <devicetree+bounces-8311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0147C7A14
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:03:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D1E5B207C5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D9D3D034;
	Thu, 12 Oct 2023 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="buRFCCqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CD13D02F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:02:51 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F54BC9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:50 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c9c5a1b87bso12500375ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697151769; x=1697756569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fujGqJo8d5KpjN+xClqT+zqDBhYovL+8QaLrTy0NKbw=;
        b=buRFCCqZpT2YulqkYk2drziq3vdN9WpXjHp6iEv0K5sja4b5R4BZQ86EwXb3+Um1qy
         0j9e9UpVwgeJAXJdNVWDmApW1/d2t8WSjI2edkAaMPFWNFaVZYaUHpx8gmH/xI439r6e
         XwwQNkH8HG/j9SLb/eP/ZsnQyrNuW5s9cXiDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697151769; x=1697756569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fujGqJo8d5KpjN+xClqT+zqDBhYovL+8QaLrTy0NKbw=;
        b=qavSginzlxWvn+7NnLRilv0sui3naPxXg+iBLsiuG/zxhHq+/d+ZnxW55QKWCiOMel
         Ll5UanR4aiA11++3K0zdxjd9q/0K5ZFmmbEec5KgGhP1PMUFP2y5vb2km1YDL/CnMOHH
         MweeU0JKpymMvfJUzm6IMpjgahpuC2ToHSZfQClT6xNtG/wK7OO54Rzg9qZzLKnKZ3MO
         Q60pivPNK4skA2xQPrE5gwCkp1+8bjkDaWTjj91RUJpddZMsYdmfYUaJg6htII0ctAl4
         5ynjCkoFBlakrwHnq2vH8WNE/38qiY7F07odDw/Pf4JLneE4qD3toyImamQIxCMrN/06
         gH+w==
X-Gm-Message-State: AOJu0Yy7Bq3wsMMUwARP+iwhv+KG7ePbSODge4BUSHCSDIxxtPbb8dJx
	9+Rp9g7+ZayqFOydeeRU7S+c6g==
X-Google-Smtp-Source: AGHT+IGOx7c4BoiqaOrWcZL7VPY0mklJe7+GjZVJP6qldhsyBTfupZnml0azshrUG3DdBgLRiJav8Q==
X-Received: by 2002:a17:902:f54c:b0:1c7:2476:c977 with SMTP id h12-20020a170902f54c00b001c72476c977mr27645759plf.33.1697151769484;
        Thu, 12 Oct 2023 16:02:49 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id g11-20020a1709026b4b00b001c613091aeasm2494390plt.297.2023.10.12.16.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 16:02:49 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] arm64: dts: mediatek: Add MT8186 Corsola Chromebooks
Date: Fri, 13 Oct 2023 07:02:26 +0800
Message-ID: <20231012230237.2676469-1-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi everyone,

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
 .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  130 ++
 .../mt8186-corsola-magneton-sku393216.dts     |   38 +
 .../mt8186-corsola-magneton-sku393217.dts     |   38 +
 .../mt8186-corsola-magneton-sku393218.dts     |   21 +
 .../mt8186-corsola-rusty-sku196608.dts        |   21 +
 .../mt8186-corsola-steelix-sku131072.dts      |   18 +
 .../mt8186-corsola-steelix-sku131073.dts      |   18 +
 .../dts/mediatek/mt8186-corsola-steelix.dtsi  |  197 ++
 .../mt8186-corsola-tentacool-sku327681.dts    |   49 +
 .../mt8186-corsola-tentacool-sku327683.dts    |   26 +
 .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
 .../mt8186-corsola-tentacruel-sku262148.dts   |   28 +
 .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1704 +++++++++++++++++
 15 files changed, 2461 insertions(+), 61 deletions(-)
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
2.42.0.655.g421f12c284-goog


