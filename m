Return-Path: <devicetree+bounces-11457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B9D7D5D23
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B09EE2818A6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAAC3E48F;
	Tue, 24 Oct 2023 21:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DVOCNnUb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ECB3D967
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:24 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA8EA6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:23 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c9daca2b85so1676675ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182783; x=1698787583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XlbC1K4AxAmssnIJB6kuFR9XUGWIIZCHNO54Y+mJArc=;
        b=DVOCNnUby4RgFnNetfcSGWAzq9IqvyyVs6sSvlrQsdMZsbiaPFY0B3Ld91xbb2X1ld
         KmdLpSro1NqZ0H8IG0sp118inbNmwwclN9heDx0XfmXqHZBz4Vg10QN3nwhWBbrkL1B2
         v7IRNxRw8NXmWYGuyyS3OwDXzEDJOY2G6EhKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182783; x=1698787583;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XlbC1K4AxAmssnIJB6kuFR9XUGWIIZCHNO54Y+mJArc=;
        b=d742SSDUnHfiBp4S368D+G6PKXJUsx/ZspM77+tkA1Qa4ulJ0scerFOW9eASI9e4eG
         HhWBD607Be99CPAk7MLt7BMoFUV6olORhTKsq5nJ7tTW+9IUqy5U1YEMSZrkJpvqh8d8
         yNocDvbdB9eNLPMfK37+YHm9r67MiScvK1ylS00rQQdK5IUAgJxRNmTNL5Nyie8FGeFs
         o1LBMgHjE5ujqujiXXTy7Hqcqv024GsTCQUvo7DJAW+V3c4qe0jWOJ2D1UfT0p9+R/Ol
         MwbxHmAIxF848+LXzUs7vDsdTqP/GgwGVRYTMgYq7ItA6v+s5xFeON+D2pthKLrAgFld
         MACQ==
X-Gm-Message-State: AOJu0Yw1YDQUWmcxDdYYzaEkGkEYg6M/kEk+AD0rVdDYABcHVDv/nNGS
	Tdeuu30HSiljt+AmwOwqYsE3m/QNwnG5+piMvaQ=
X-Google-Smtp-Source: AGHT+IH08j3uB/07Mi8ENp6fO0bST3SnZ0NK+J60maANiUoTINigRosmQBLv07Hk2ZM6aCvRKL76TQ==
X-Received: by 2002:a17:902:ec87:b0:1bd:e258:a256 with SMTP id x7-20020a170902ec8700b001bde258a256mr17679533plg.32.1698182783069;
        Tue, 24 Oct 2023 14:26:23 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:22 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/7] Add a few mt8183 follower boards.
Date: Tue, 24 Oct 2023 14:22:22 -0700
Message-ID: <20231024212618.1079676-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add makomo, pico, and katsu which are mt8183 followers.

Hsin-Yi Wang (7):
  arm64: dts: mt8183: kukui: Fix underscores in node names
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
  arm64: dts: mt8183: Add kukui katsu board
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
  arm64: dts: mt8183: Add jacuzzi makomo board
  dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-pico
  arm64: dts: mt8183: Add jacuzzi pico/pico6 board

 .../devicetree/bindings/arm/mediatek.yaml     |  26 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |   6 +
 .../mt8183-kukui-jacuzzi-makomo-sku0.dts      |  25 ++++
 .../mt8183-kukui-jacuzzi-makomo-sku1.dts      |  25 ++++
 .../mediatek/mt8183-kukui-jacuzzi-pico.dts    |  36 ++++++
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   | 110 ++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |   6 +-
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts |  40 +++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  44 +++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  90 +++++++-------
 10 files changed, 360 insertions(+), 48 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts

-- 
2.42.0.758.gaed0368e0e-goog


