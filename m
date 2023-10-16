Return-Path: <devicetree+bounces-9052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2347CB5A9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 23:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D90C02812C7
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 21:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1857D381DF;
	Mon, 16 Oct 2023 21:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="E9DxHMUh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB6381D6
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 21:51:22 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D5A8D9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:51:21 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 621C4552;
	Mon, 16 Oct 2023 23:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697493071;
	bh=3d/7SCNqU7/RsD8wbHd7RzFgECg/EnHTwz1WsD2cXBM=;
	h=From:To:Cc:Subject:Date:From;
	b=E9DxHMUhrSgScicLIJZ7TZp+dReeHAPEp6ezW9T5qkOiEb/fZr9+HfES7DXcem75W
	 vO6hm7oPoXMys1jwE/h71rUnz6aVN1zYsGSAv6Vs83vQBIRAdYHZdyqKNbjyLigZ/c
	 grKgp/7YeXy7aBYBy6jcEQKxBcjyxz5W6IF/qf2Y=
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
Subject: [PATCH v1 0/2] arm64: dts: mediatek: Add device tree for MT8365-based Pumpkin i350
Date: Tue, 17 Oct 2023 00:51:20 +0300
Message-ID: <20231016215123.30343-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
 .../boot/dts/mediatek/mt8365-pumpkin.dts      | 542 ++++++++++++++++++
 4 files changed, 546 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts


base-commit: 58720809f52779dc0f08e53e54b014209d13eebb
-- 
Regards,

Laurent Pinchart


