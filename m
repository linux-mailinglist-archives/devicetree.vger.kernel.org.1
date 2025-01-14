Return-Path: <devicetree+bounces-138354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA802A10164
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D80C2188498C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B64246347;
	Tue, 14 Jan 2025 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ydo2mUqE"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66FF24632A;
	Tue, 14 Jan 2025 07:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840343; cv=none; b=AcYxXBFrlmMnbphfjlm5WONKwXRvpZe64NcVJdZ47jZwwfgKnJr0de7glr/ZeIAfg3ALnZUywXQzbc/wDMlgzeGJ2T9tuZ4j2T/HeKr9M5OGDQD8HFhLPooGJg79cNl2NTYnFJNoGvtL3CqFKsm7Yd+EtruL4KTR4pq85VcZQeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840343; c=relaxed/simple;
	bh=FB0+qrN59+wsgrB59fSYukLc9bwu1EZidKzIxpC2CBw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ksPFUGA3F5bXYTOcaguL1JA3LeRJp2vuBrZTy7gclfLM1yHevFz6Cx4WsQ5wuS+tbXzsbrUjtrqnXpmGEangMbqIfOHibUVNE94dhq00w/XFwyEtdzQnqlGHvY/qjQyAgO/5owEqcBOUX53bRYRgouNLfXG53y6MInpRigdB6yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Ydo2mUqE; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736840338;
	bh=FB0+qrN59+wsgrB59fSYukLc9bwu1EZidKzIxpC2CBw=;
	h=From:Subject:Date:To:Cc:From;
	b=Ydo2mUqEd4ibZWY52KrzIEsBO7N+jbP0VLKPgV5wMZ55LUz9wyxa/an+tlffnEf7o
	 zcn21/BzN8H3DbDgjYBnp5C59+vCa/aw/lPGVuRrOXNToDp7snXWyW3hyKuRNOZwHe
	 sHMPvKJ3LSOYI/7Av2ygQPrpuOfq3CjsrC64boNM9jWPITpmkj1175unLDxqyd8HJC
	 dgYL1Wy3YP/9svGicM82OM3CTE4fvu/Or+CT/z+7CI8p2Ahr1oqHcGjebhrYzd9w1z
	 EcD4n6deuBhWhtC8W3YcUY7MK9ZR/fP6cj81yRNM1xhlj4SiDDP5reaGWaUL8dMoCE
	 KQKGgXakpU/NA==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1663917E0E1C;
	Tue, 14 Jan 2025 08:38:58 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 0/3] Add support for Mediatek Genio 510 EVK board
Date: Tue, 14 Jan 2025 08:38:38 +0100
Message-Id: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH4UhmcC/x3MSQqAMAxA0atI1gYSS52uIiIOUbOwSisiiHe3u
 HyL/x8I4lUC1MkDXi4NursIThMY194tgjpFQ0aZJWaD0xm67SxNQbiI0x0tExqb01AS09BXENP
 Dy6z3v23a9/0AxyL5pGYAAAA=
X-Change-ID: 20250113-dts_mt8370-genio-510-3560b8010ba9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 kernel@collabora.com, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736840337; l=2223;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=FB0+qrN59+wsgrB59fSYukLc9bwu1EZidKzIxpC2CBw=;
 b=IxM8NDfTIiqm+gkoWM1h71DqwBuJq8uNDdGbb8qkT6xblhoP+Ppo1+kZ+tIv2tWCJVx0pZj+G
 gZdQs64zgwvAihLcpUR1RGcgaK8SDReWn6dlqFLHO5pF0imQEh/MCUi
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This patchset adds the basic support of the Mediatek Genio 510 EVK
board, based on the Mediatek MT8370 SoC.

It adds a device-tree file for the board (mt8370-genio-510-evk.dtb) 
and an include file for the SoC (mt8370.dtsi), in order to be able to
boot. As the board is very close to the Genio 700 EVK board, an include file
(mt8390-genio-common.dtsi) is also created to factorize the common
definitions.

The Genio 510 EVK has following features:
- MT8370 SoC
- MT6365 PMIC
- MT6319 Buck IC
- 4GB LPDDR4X
- 64GB eMMC 5.1
- 12V DC Jack
- Micro SD card slot
- Push Button x 4 (Power, Reset, Download and Home Key)
- LED x 4 (Power, Reset, System on and Charging Status)
- USB Device Port x 1 (Micro USB Connector)
- USB Host Port x 1 (Type-C USB Connector)
- 3.5mm Earphone Jack x 1 (with Microphone Input)
- 3.5mm Line Out Audio Jack x 1
- Analog Microphone x 1
- Digital Microphone x 2
- Gigabit Ethernet with RJ45 connector
- HDMI 2.0 TX port with Type A HDMI connector
- eDP port
- 3x UART with serial-to-usb converters and micro USB connectors
- M.2 Slot x 2
- I2C Capacitive Touch Pad
- 4-Lane DSI x 2
- 4-Data Lane CSI x 2
- I2S Pin header
- 40-Pin 2.54mm Pin Header x 1 

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Louis-Alexis Eyraud (3):
      dt-bindings: arm: mediatek: add mt8370-evk board
      arm64: dts: mediatek: add support for MT8370 SoC
      arm64: dts: mediatek: add device-tree for Genio 510 EVK board

 .../devicetree/bindings/arm/mediatek.yaml          |    5 +
 arch/arm64/boot/dts/mediatek/Makefile              |    1 +
 arch/arm64/boot/dts/mediatek/mt8188.dtsi           |    8 +-
 .../boot/dts/mediatek/mt8370-genio-510-evk.dts     |   19 +
 arch/arm64/boot/dts/mediatek/mt8370.dtsi           |   64 ++
 .../boot/dts/mediatek/mt8390-genio-700-evk.dts     | 1033 +------------------
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 1040 ++++++++++++++++++++
 7 files changed, 1134 insertions(+), 1036 deletions(-)
---
base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
change-id: 20250113-dts_mt8370-genio-510-3560b8010ba9

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


