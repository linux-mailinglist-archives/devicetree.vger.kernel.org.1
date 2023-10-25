Return-Path: <devicetree+bounces-12000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BDF7D763B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98AD1B20D23
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E801D6AA;
	Wed, 25 Oct 2023 21:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="c+x34auY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B868830D00
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:03:39 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CACE12A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:03:38 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 98F74B2A;
	Wed, 25 Oct 2023 23:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698267803;
	bh=fXEmUy0WZYyb85bJrFBI+SJljhy4sPuA9x8g0VUcsfM=;
	h=From:To:Cc:Subject:Date:From;
	b=c+x34auYXyi/tBE2412J1pn0RATqIXoYqoPwL9AJeiJcnq5uewxAaEASQD0VOs/zv
	 7YybuvWM6cEs+5p6KkjP7xK1ZFfDvEDcNIUMC9TsHYVxllDMFvKtD8K5b70anS0xM4
	 HqL2wynmGViXLsbrai8DIwKS5yK/mr9u+Yo1VBvE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-mediatek@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Fabien Parent <fabien.parent@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Julien Stephan <jstephan@baylibre.com>,
	Suhrid Subramaniam <suhrid.subramaniam@mediatek.com>,
	Ted Larson <ted@ologicinc.com>
Subject: [PATCH v2 0/3] arm64: dts: mediatek: Add device tree for MT8365-based Pumpkin i350
Date: Thu, 26 Oct 2023 00:03:39 +0300
Message-ID: <20231025210342.30995-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This small patch series adds a device tree for the Pumpkin i350 board
made by OLogic. It starts with two small patches to add a vendor prefix
for OLogic (1/3) and a compatible string for the board (2/3), and then
adds the device tree (3/3).

The device tree is based on work from Fabien Parent, with a few features
added, and a set of devices removed:

- Audio support, as I can't easily test it at the moment due to lack of
  local access to the board.

- Display support, for the same reason.

- Dual-role USB support, due to missing bindings and drivers for the
  TUSB322 in the upstream kernel.

Support for the crypto processor (ATECC608B) and the WiFi/Bluetooth
module (MT7663S) is also missing, but this wasn't present in the BSP
either.

Once camera support for the MT8365 lands upstream, I will probably send
patches for DT integration with this board.

Laurent Pinchart (3):
  dt-bindings: vendor-prefixes: Add prefix for OLogic, Inc.
  dt-bindings: arm64: dts: mediatek: Add ologic,pumpkin-i350 board
  arm64: dts: mediatek: Add device tree for MT8365-based Pumpkin i350

 .../devicetree/bindings/arm/mediatek.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../boot/dts/mediatek/mt8365-pumpkin.dts      | 541 ++++++++++++++++++
 4 files changed, 545 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts


base-commit: 05d3ef8bba77c1b5f98d941d8b2d4aeab8118ef1
-- 
Regards,

Laurent Pinchart


