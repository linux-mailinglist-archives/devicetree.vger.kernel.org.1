Return-Path: <devicetree+bounces-11749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE487D6845
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:22:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B4091C209C1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E857D262A5;
	Wed, 25 Oct 2023 10:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="IeiPe65e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8211D2420A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:22:29 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EDD7131;
	Wed, 25 Oct 2023 03:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698229349; x=1729765349;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GfT80d/okzC6viedL9X8itP99mbYjg+U5fLBnEZks9k=;
  b=IeiPe65eSoHEeTAhT9/obMe0UH0dGsadW6UDHV9Dz5U4VmvKGtWpMVG3
   e8ZovowYEBLz4LzooH4tdyCdRooPEK3tgl8OJxVHDb6s6+0BfTiP06MZC
   YBquQ6NCrTEFLZkTMq9+3BZsgfLX2qSRQ8mx538xXfPTqC2bVm/JTJ42q
   HNEuG4r9dH6QxBSqemaIyoE3bg6Ut0TXsnuX0IaU7nV97iHt6Yzl5fZ7Z
   nsT2X+phNfNOfk0UTLcHreHBx1NzPBhlAuS5wC+K+16u1Dq/MZFbrIxBd
   62hRqA6mHm+IABp/KZQ0yOD1/taPkU4NtD2Gu436uGqEqEs4W4oqt6fI9
   w==;
X-CSE-ConnectionGUID: hCRWSLnNROWYEPYDprosFg==
X-CSE-MsgGUID: pAnaJDpLSHSLKPTJCWvjMQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="10660975"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Oct 2023 03:22:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 25 Oct 2023 03:21:59 -0700
Received: from microchip1-OptiPlex-9020.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Wed, 25 Oct 2023 03:21:53 -0700
From: shravan chippa <shravan.chippa@microchip.com>
To: <green.wan@sifive.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <conor+dt@kernel.org>
CC: <dmaengine@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<nagasuresh.relli@microchip.com>, <praveen.kumar@microchip.com>,
	<shravan.chippa@microchip.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/4] dt-bindings: dma: sf-pdma: add new compatible name
Date: Wed, 25 Oct 2023 15:52:49 +0530
Message-ID: <20231025102251.3369472-3-shravan.chippa@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025102251.3369472-1-shravan.chippa@microchip.com>
References: <20231025102251.3369472-1-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Shravan Chippa <shravan.chippa@microchip.com>

Add new compatible name microchip,mpfs-pdma to support
out of order dma transfers

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
---
 .../devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
index a1af0b906365..3b22183a1a37 100644
--- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -29,6 +29,7 @@ properties:
   compatible:
     items:
       - enum:
+          - microchip,mpfs-pdma
           - sifive,fu540-c000-pdma
       - const: sifive,pdma0
     description:
-- 
2.34.1


