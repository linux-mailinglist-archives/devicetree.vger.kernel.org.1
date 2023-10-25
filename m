Return-Path: <devicetree+bounces-11747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 802F67D683E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28F85281854
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6852420A;
	Wed, 25 Oct 2023 10:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="I6Rguso7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C81FCC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:22:00 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A313116;
	Wed, 25 Oct 2023 03:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698229317; x=1729765317;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OEqpmk4Rf7hTy4IOBR0uXJkKGevdbN2bduorTuh8R4g=;
  b=I6Rguso7CRCeaVvSr8yOAeTULQjKqQiDbCVv9Wm2jPEIwkVKWJ3Db0l/
   rS4vfKJf7tP1K7dz633QfDy+ChkKsssjbajkY/LMGcxx6hcsaZ9XE2zts
   +zJXzaXyP0oQBtc9Wqy8EX95XR76mBFHQ9fTXqhO4L2UqrYERuj7f6rVr
   kmccCfWRnomKByQ9JXh7Hl76K7ozyuCb2zfEp4rpiESqdeIX7Um0PYwaD
   6YDplRmOdUukQb5P9pBW5BGtDenQgDIMQOf9foY7iKHEuwp0foVXYqgao
   XrZw22QKLOAVtNc5iQS2ThI9Pd2pbrNpOZ/oKmr/22PWDzw5Bu6IUTbdP
   Q==;
X-CSE-ConnectionGUID: n2gHDv4RQiGeWJLvoo2UlQ==
X-CSE-MsgGUID: fNoVADcPSE2Br6PiaoZNMg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="10829880"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Oct 2023 03:21:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 25 Oct 2023 03:21:39 -0700
Received: from microchip1-OptiPlex-9020.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Wed, 25 Oct 2023 03:21:34 -0700
From: shravan chippa <shravan.chippa@microchip.com>
To: <green.wan@sifive.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <conor+dt@kernel.org>
CC: <dmaengine@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<nagasuresh.relli@microchip.com>, <praveen.kumar@microchip.com>,
	<shravan.chippa@microchip.com>
Subject: [PATCH v3 0/4] dma: sf-pdma: various sf-pdma updates for the mpfs platform
Date: Wed, 25 Oct 2023 15:52:47 +0530
Message-ID: <20231025102251.3369472-1-shravan.chippa@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Shravan Chippa <shravan.chippa@microchip.com>

Changes from V2 -> V3:

Removed whitespace
Change naming convention of the macros (modified code as per new macros)
updated with new API device_get_match_data()
modified dt-bindings as per the commmets from v2
modified compatible name string for mpfs platform

Changes from V1 -> V2:

Removed internal review tags
Commit massages modified.
Added devicetree patch with new compatible name for mpfs platform
Added of_dma_controller_free() clenup call in sf_pdma_remove() function


V1:

This series does the following
1. Adds a PolarFire SoC specific compatible and code to support for
out-of-order dma transfers 

2. Adds generic device tree bindings support by using 
of_dma_controller_register()


Shravan Chippa (4):
  dmaengine: sf-pdma: Support of_dma_controller_register()
  dt-bindings: dma: sf-pdma: add new compatible name
  dmaengine: sf-pdma: add mpfs-pdma compatible name
  riscv: dts: microchip: add specific compatible for mpfs' pdma

 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  1 +
 arch/riscv/boot/dts/microchip/mpfs.dtsi       |  2 +-
 drivers/dma/sf-pdma/sf-pdma.c                 | 71 ++++++++++++++++++-
 drivers/dma/sf-pdma/sf-pdma.h                 |  8 ++-
 4 files changed, 77 insertions(+), 5 deletions(-)

-- 
2.34.1


