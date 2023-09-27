Return-Path: <devicetree+bounces-3940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 742FC7B09F3
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A41641C20357
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6772B48E82;
	Wed, 27 Sep 2023 16:25:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96285F4F7
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:25:18 +0000 (UTC)
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DE227DE;
	Wed, 27 Sep 2023 09:25:15 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,181,1694703600"; 
   d="scan'208";a="177447615"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 28 Sep 2023 01:25:15 +0900
Received: from mulinux.home (unknown [10.226.92.108])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 05AB3401F564;
	Thu, 28 Sep 2023 01:25:10 +0900 (JST)
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
Subject: [PATCH v2 0/2] Add RZ/V2M CSI slave support
Date: Wed, 27 Sep 2023 17:25:06 +0100
Message-Id: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dear All,

the CSI IP found inside the Renesas RZ/V2M SoC supports
both SPI host and target.
This series extends the CSI dt-bindings and driver to
add SPI target support.

v1->v2: I have dropped properties renesas,csi-ss and
        renesas,csi-ss-high. I have added property
	renesas,csi-no-ss, and to configure SS as active
	high one now needs to use property spi-cs-high.
	I have also purged "master" and "slave" as naming
	schemes (besides for the title of the cover letter,
	to make it easier to follow this discussion), I
	am now using "host" and "target" and related APIs
	instead.

Cheers,
Fab

Fabrizio Castro (2):
  spi: renesas,rzv2m-csi: Add CSI (SPI) target related properties
  spi: rzv2m-csi: Add target mode support

 .../bindings/spi/renesas,rzv2m-csi.yaml       |   9 ++
 drivers/spi/Kconfig                           |   3 +-
 drivers/spi/spi-rzv2m-csi.c                   | 127 ++++++++++++------
 3 files changed, 94 insertions(+), 45 deletions(-)

-- 
2.34.1


