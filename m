Return-Path: <devicetree+bounces-17109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B31F07F130F
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D13D2813D2
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AFF199D3;
	Mon, 20 Nov 2023 12:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="oOiR56sv"
X-Original-To: devicetree@vger.kernel.org
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6779FD0;
	Mon, 20 Nov 2023 04:20:03 -0800 (PST)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 5902BDDF;
	Mon, 20 Nov 2023 04:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1700482803;
	bh=/VCTTusHm67Cdtv8GHixFrCI06AKVDvt4e6PgauD7gU=;
	h=From:To:Cc:Subject:Date:From;
	b=oOiR56svYSx+zePzyVMlajJkEmBZ/nn4/NulnYYf84UcUyuVmQ8GxF3XwPmO8gZr6
	 ftHNM2a6+3+hSYnI+9CZ/cwKYFgCN6lvLwm3unW3vn9Z0vcylSUa0RtkHm3HtqAedI
	 TxAiM3jwtnY0AHkLGfHLOeXT3sPZjl53VaOqXmMw=
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
Subject: [PATCH v2 0/2] ARM: dts: aspeed: Add ASRock SPC621D8HM3 BMC
Date: Mon, 20 Nov 2023 04:19:55 -0800
Message-ID: <20231120121954.19926-4-zev@bewilderbeest.net>
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
Aspeed BMC on the ASRock SPC621D8HM3, so that it can be added as a
supported OpenBMC platform.

Changes since v1 [0]:
 - Removed bootargs [Krzysztof]
 - Renamed LED nodes [Krzysztof]
 - Added function & color properties to LED nodes
 - Added #address-cells and #size-cells to FRU eeprom node

[0] https://lore.kernel.org/lkml/20231114112819.28572-4-zev@bewilderbeest.net/

Thanks,
Zev

Zev Weiss (2):
  dt-bindings: arm: aspeed: document ASRock SPC621D8HM3
  ARM: dts: aspeed: Add ASRock SPC621D8HM3 BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../aspeed/aspeed-bmc-asrock-spc621d8hm3.dts  | 324 ++++++++++++++++++
 3 files changed, 326 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts


base-commit: 98b1cc82c4affc16f5598d4fa14b1858671b2263
-- 
2.42.0


