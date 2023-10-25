Return-Path: <devicetree+bounces-11730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8357D6704
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5B11C20C61
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6829219FF;
	Wed, 25 Oct 2023 09:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EhfPYNC3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00F21119
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:38:32 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35347CE;
	Wed, 25 Oct 2023 02:38:31 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C8D5966071C9;
	Wed, 25 Oct 2023 10:38:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698226709;
	bh=ZrAdIgYw0YdPdTX7tItDF5DGAV3QupHqDDWzmNm1c+c=;
	h=From:To:Cc:Subject:Date:From;
	b=EhfPYNC3T4Ms23Bb5R5utO6DTa+B1SQAOTbXoR8CVO3FmUBTc3XdlwGhViTjyvpVT
	 QpMUqAvl77CKwtxzmoNF2QBw+YY/EkHnerpKFbJ9Uzrcd1gsExqWDPytB1EcdvqKmu
	 nFNZXOzldsNOuzweFKFPHt5gXDzWnikp+G4dF0GkQ8I7lv0ByFzNiKlY2l9lrhvtC2
	 m0H806Mds/D3QD6Dg1unFBQZ2FkJPf0NJnYoYseVoVPPfI162tAghcfJ6n7LxiOASI
	 vxZJ6nBT8j6mJ/S5QiFeAoNGTwcO9B2uaYugUFePyc/CmuK8A23U+pO9CJlTej0/H7
	 wZfymARrR2Jeg==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: hsinyi@chromium.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	erin.lo@mediatek.com,
	eddie.huang@mediatek.com,
	pihsun@chromium.org,
	fparent@baylibre.com,
	chunfeng.yun@mediatek.com,
	gregkh@linuxfoundation.org,
	michael.kao@mediatek.com,
	mka@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/8] MediaTek ARM64 devicetrees fixes and improvements
Date: Wed, 25 Oct 2023 11:38:08 +0200
Message-ID: <20231025093816.44327-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series performs some cleanup and adds some fixes to the MediaTek
ARM64 devicetrees.

In short:
 - Changes all instances of interrupt-parent = <...>; interrupts = <...>
   to one single interrupts-extended = <...> line
 - Moves interrupts from MT6358 dtsi to board files (as those are board
   specific, not PMIC specific!)
 - Fixes various devicetree warnings

AngeloGioacchino Del Regno (8):
  arm64: dts: mediatek: mt8183: Use interrupts-extended where possible
  arm64: dts: mediatek: mt8173: Use interrupts-extended where possible
  arm64: dts: mediatek: Use interrupts-extended where possible
  arm64: dts: mediatek: Move MT6358 PMIC interrupts to MT8183 boards
  arm64: dts: mediatek: mt8183: Fix unit address for scp reserved memory
  arm64: dts: mediatek: mt8183-evb: Fix unit_address_vs_reg warning on
    ntc
  arm64: dts: mediatek: mt8173-evb: Fix regulator-fixed node names
  arm64: dts: mediatek: mt8183: Move thermal-zones to the root node

 arch/arm64/boot/dts/mediatek/mt6358.dtsi      |   2 -
 .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  |   3 +-
 .../dts/mediatek/mt7986a-bananapi-bpi-r3.dts  |   3 +-
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   9 +-
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  |  24 +-
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts   |   7 +-
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   8 +-
 .../mediatek/mt8183-kukui-audio-da7219.dtsi   |   3 +-
 .../mediatek/mt8183-kukui-audio-ts3a227e.dtsi |   3 +-
 .../mediatek/mt8183-kukui-jacuzzi-damu.dts    |   3 +-
 .../mt8183-kukui-jacuzzi-fennel-sku1.dts      |   3 +-
 .../mt8183-kukui-jacuzzi-fennel-sku6.dts      |   3 +-
 .../mt8183-kukui-jacuzzi-fennel-sku7.dts      |   3 +-
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |   3 +-
 .../dts/mediatek/mt8183-kukui-kodama.dtsi     |   3 +-
 .../boot/dts/mediatek/mt8183-kukui-krane.dtsi |   3 +-
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  12 +-
 .../boot/dts/mediatek/mt8183-pumpkin.dts      |   4 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 242 +++++++++---------
 .../dts/mediatek/mt8395-genio-1200-evk.dts    |   6 +-
 20 files changed, 165 insertions(+), 182 deletions(-)

-- 
2.42.0


