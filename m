Return-Path: <devicetree+bounces-12014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB2C7D7728
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60DD81C209C1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFAB534CE0;
	Wed, 25 Oct 2023 21:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="buZquPeH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B26C8C0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:26 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D860B9
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:25 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5844bc378feso175178eaf.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270924; x=1698875724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lZjOElzQDGxoQ4pwGGKbt8PuAPhhW08ELsRr1XnGZiA=;
        b=buZquPeHKDBaUtcaP/bvBCMQrjVSUBIqMTHVvzWNuV5trQjjNF5lfGfxsdGeS79KmL
         SgnbsfxwJFBX2PTU0l9fZWb85n75Telsu+7Hcb/zB7gYoFQs8kuCnwFGiEvSN8K1LeHg
         1cmJ9+I5uBxWc3As/xm4C4Me1CXFKxAcLvqCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270924; x=1698875724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lZjOElzQDGxoQ4pwGGKbt8PuAPhhW08ELsRr1XnGZiA=;
        b=d1zjhchVe9RIcLsSM9bpm/QdT5SaDecOgEJG02+zE3nsymUKQWhWNwVFUzwQqkYcGo
         WHrkCeefNS3ky2YQtcEtVPiH8KzuyiBOz+iPsvO2VUfKJoq+HYpHohVyIm1kqO4g3p/A
         HOF7I0RQtd0jvRzchqaxI89n/1gIlTfzktS7SGOL7RRLLT+l1zvHlcsiZ3tuhx3RpIK6
         roEzOhbCwaex0vUVu+MrAX+7xlbQ3hiYoBhQCkApK9y7BQxhMyljP54IdId7CMPWk0i4
         4/HBazAJpB0nti41TCiMfR4HJneLc8SkDxbotn6zHyQGP1QYhYbnPY4/rgLEvz3Yt38y
         Z9ug==
X-Gm-Message-State: AOJu0YyG7dgnn52s6FQS3Zj8Mdgvps6kMY4mYgQkef2kx644/bK9SaOv
	bmlEhGFgUUMIrryA+ZJE6io4kw==
X-Google-Smtp-Source: AGHT+IFjCZtfJhyqWwcYtvspHvC+k8qpM+nKb58t3dyqN+Hs53HrNgamjCAmgpib31dWdFQmj/AGFA==
X-Received: by 2002:a05:6358:3517:b0:168:ba46:d9dd with SMTP id m23-20020a056358351700b00168ba46d9ddmr16197803rwd.17.1698270924231;
        Wed, 25 Oct 2023 14:55:24 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:23 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 0/7] Add a few mt8183 follower boards.
Date: Wed, 25 Oct 2023 14:48:42 -0700
Message-ID: <20231025215517.1388735-1-hsinyi@chromium.org>
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

 .../devicetree/bindings/arm/mediatek.yaml     |  21 ++++
 arch/arm64/boot/dts/mediatek/Makefile         |   6 +
 .../mt8183-kukui-jacuzzi-makomo-sku0.dts      |  24 ++++
 .../mt8183-kukui-jacuzzi-makomo-sku1.dts      |  24 ++++
 .../mediatek/mt8183-kukui-jacuzzi-pico.dts    |  36 ++++++
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   | 110 ++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |   6 +-
 .../mediatek/mt8183-kukui-kakadu-sku22.dts    |  18 +++
 .../boot/dts/mediatek/mt8183-kukui-kakadu.dts |  18 +++
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |  15 +--
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts |  36 ++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  40 +++++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  94 +++++++--------
 13 files changed, 384 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts

-- 
2.42.0.758.gaed0368e0e-goog


