Return-Path: <devicetree+bounces-3594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2977B7AF67C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 00:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AB43628187A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4F34B20A;
	Tue, 26 Sep 2023 22:57:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5BC374E7
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 22:57:10 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6468972BD;
	Tue, 26 Sep 2023 15:57:08 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,178,1694703600"; 
   d="scan'208";a="181059336"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 27 Sep 2023 06:08:26 +0900
Received: from mulinux.home (unknown [10.226.92.200])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 14CDC40B91B6;
	Wed, 27 Sep 2023 06:08:21 +0900 (JST)
From: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Add RZ/V2M CSI slave support
Date: Tue, 26 Sep 2023 22:08:16 +0100
Message-Id: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dear All,

the CSI IP found inside the Renesas RZ/V2M SoC supports
both SPI master and slave.
This series extends the CSI dt-bindings and driver to
add SPI slave support.

Cheers,
Fab

Fabrizio Castro (2):
  spi: renesas,rzv2m-csi: Add SPI Slave related properties
  spi: rzv2m-csi: Add Slave mode support

 .../bindings/spi/renesas,rzv2m-csi.yaml       |  15 ++
 drivers/spi/Kconfig                           |   4 +-
 drivers/spi/spi-rzv2m-csi.c                   | 137 ++++++++++++------
 3 files changed, 112 insertions(+), 44 deletions(-)

-- 
2.34.1


