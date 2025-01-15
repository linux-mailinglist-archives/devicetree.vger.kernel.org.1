Return-Path: <devicetree+bounces-138740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A73EA11F64
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:29:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6380188532E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F203D23F292;
	Wed, 15 Jan 2025 10:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oUp+Ui/q"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF8223F28B;
	Wed, 15 Jan 2025 10:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936986; cv=none; b=eQtVPAZaXUC+FuN+L+oUT+7gyZUAF+D+LPpNXB/pSqod+u3s2TleVG8GlJZOdWjxWZ+Bg4h9eo23uM46GIlj9ybe8f+lcNzoRDXQbgvuQbWSsP/NUdc7W7+mVd4kU6iRyi+XafY6ca1ms6HZUkmQB6SXE4fH7uzt/FxKObsvSxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936986; c=relaxed/simple;
	bh=YIB7/pe8IoyRD/tOiWEIqXFd8eI6nhsg4+pzvvXcD7s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JES3XLw2PlO+qRKwMFTBL0aTx+0ljJok7MyhKqmBYqFXGZmo3XwjQ2vSP4JYGmcYM2lH6y5nwaSXNtpU3NH8B4kVNVzT22GwE0QsN8rIiljAYzb0CewH6HmmEFV3I7Hn3WK+GFcwEiRDCydnkR2bx2iAl0ZIzck2y7RgQwE3KJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oUp+Ui/q; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736936976;
	bh=YIB7/pe8IoyRD/tOiWEIqXFd8eI6nhsg4+pzvvXcD7s=;
	h=From:Subject:Date:To:Cc:From;
	b=oUp+Ui/qSc2BI4/itKcvmIVNHAl+AvQQHK8Eyj+9sKQ16h0CB9FQInPn1GepBywnU
	 Ybja6791B3q26OdYp1GZoKlf5XitgYOZSuNSUee2Ez3rKj33pfBQlL7SYWvKyc47cR
	 WKQLJ8S+bIe0KS9pujwPUehX6xlWX8xuCoBHPwFlQIheSv+bZnt/MxNeAd5QwtmqxS
	 7fHCKz+dcIXURbszn90pnLydCDHbksonnVwdmrmaH2S2xvaz9xPmHWKbNw4yUq5yhR
	 h0HVOUlHQO2VV5JqujhfwOkvY7lS2PIQXyQpRZvJlmh6jUsd+E6tfcDxvY9i+GH99u
	 nYO2cirMwXhbg==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 367FA17E0CD2;
	Wed, 15 Jan 2025 11:29:36 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH v2 0/4] Add support for Mediatek Genio 510 EVK board
Date: Wed, 15 Jan 2025 11:29:01 +0100
Message-Id: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO2Nh2cC/22NQQ6CMBBFr0Jm7ZgpWKmuvIchpoUBJgFqWkI0h
 LtbSdy5fC/5768QOQhHuGYrBF4kip8S5IcM6t5OHaM0iSGnXJNSBTZzfIyzKUrCjifxqBVhoc/
 kDCly9gJp+gzcymvP3qvEvcTZh/f+sqiv/QVP/4OLQkKjVclMbePY3Go/DNb5YI+1H6Hatu0Df
 B+buLwAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736936976; l=2802;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=YIB7/pe8IoyRD/tOiWEIqXFd8eI6nhsg4+pzvvXcD7s=;
 b=MXsGbBpsiG+taXT8aiinljSa2LSmQvrn+r6MtlcaIlH/lvZG3HZBr8N6UKI2PE9P4vQZeQGce
 SBPptf1ZtFXCGszA+/qufCrIAR+YDqqdCsJwxVyrWlb1/ARZfuo3ICi
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
Changes in v2:
- Reword "dt-bindings: arm: mediatek: add mt8370-evk board" commit
  message to add details on MT8370 SoC and links to MT8188 and MT8390 
- Add note about gpu support in "arm64: dts: mediatek: add support for
  MT8370 SoC" commit message
- Split "arm64: dts: mediatek: add device-tree for Genio 510 EVK board"
  commit in two, as requested by AngeloGioacchino Del Regno
- Link to v1: https://lore.kernel.org/r/20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com

---
Louis-Alexis Eyraud (4):
      dt-bindings: arm: mediatek: add mt8370-evk board
      arm64: dts: mediatek: add support for MT8370 SoC
      arm64: dts: mediatek: mt8390-genio-700-evk: Move common parts to dtsi
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


