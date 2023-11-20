Return-Path: <devicetree+bounces-17105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB057F1306
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79F08B21854
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1FB199A0;
	Mon, 20 Nov 2023 12:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="OpMdJlu+"
X-Original-To: devicetree@vger.kernel.org
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 372AED2;
	Mon, 20 Nov 2023 04:19:21 -0800 (PST)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id E4C11DDF;
	Mon, 20 Nov 2023 04:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1700482760;
	bh=rxT5SCkEHZIVph1Dy+GNIIiNXWAdKs0/dnGZ+QJ8QD0=;
	h=From:To:Cc:Subject:Date:From;
	b=OpMdJlu+8VOPG19ZpMSMmQwPpTR6HtU52UqqVoxqwVH5pNYMsr/AnBqPnOxu8ZBLL
	 L4GYeGeN3OFDvxtQstYQrVTWL2stChWHJcAuwr5a+s7kMbC2Pe9U4XQ0IzTYEacCJi
	 MSgSea2eYVDEASL4jmvhkiDiq/6hASYQtP/Nt04k=
From: Zev Weiss <zev@bewilderbeest.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Zev Weiss <zev@bewilderbeest.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Subject: [PATCH v2 0/2] ARM: dts: aspeed: Add ASRock E3C256D4I BMC
Date: Mon, 20 Nov 2023 04:19:02 -0800
Message-ID: <20231120121901.19817-4-zev@bewilderbeest.net>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

These patches add a device-tree (and a tiny bindings update) for the
Aspeed BMC on the ASRock E3C256D4I, so that it can be added as a
supported OpenBMC platform.

Changes since v1 [0]:
 - Removed bootargs [Krzysztof]
 - Renamed LED nodes [Krzysztof]
 - Added function & color properties to LED nodes
 - Added #address-cells and #size-cells to FRU eeprom node

[0] https://lore.kernel.org/lkml/20231114112722.28506-4-zev@bewilderbeest.net/

Thanks,
Zev


Zev Weiss (2):
  dt-bindings: arm: aspeed: document ASRock E3C256D4I
  ARM: dts: aspeed: Add ASRock E3C256D4I BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../aspeed/aspeed-bmc-asrock-e3c256d4i.dts    | 322 ++++++++++++++++++
 3 files changed, 324 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts


base-commit: 98b1cc82c4affc16f5598d4fa14b1858671b2263
-- 
2.42.0


