Return-Path: <devicetree+bounces-17768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B95557F403B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 09:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7F301C20978
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5EF82D60F;
	Wed, 22 Nov 2023 08:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="c+WYVdpg"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5D61BC;
	Wed, 22 Nov 2023 00:36:39 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AM8aOqa097702;
	Wed, 22 Nov 2023 02:36:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700642184;
	bh=bDlw0lEDyQLdrL/AZq+PvjXBm46WMBC1864jq1aMxhk=;
	h=From:To:CC:Subject:Date;
	b=c+WYVdpgKkfCXs9yaA1wJrvtHLVnNCkMxeBINgMbOXEtffIS+4qWmwj55L0TtkETB
	 5KvWDPP252UtJ5S6lYy25chcocvpna7Xsz2yaJKnNR0M6seSGBbACVeicXbOWezwgJ
	 vz66tUPsYird9cNWe34Q1+60CfRvxaWLJgEX7JGY=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AM8aON5012546
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 22 Nov 2023 02:36:24 -0600
Received: from lewvowa01.ent.ti.com (10.180.75.79) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 22
 Nov 2023 02:36:24 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by lewvowa01.ent.ti.com
 (10.180.75.79) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2507.34; Wed, 22 Nov
 2023 02:36:24 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 22 Nov 2023 02:36:22 -0600
Received: from santhoshkumark.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AM8aJUJ023755;
	Wed, 22 Nov 2023 02:36:20 -0600
From: Santhosh Kumar K <s-k6@ti.com>
To: <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <miquel.raynal@bootlin.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] dt-bindings: iio: adc: ti,am3359-adc: Allow dmas property to be optional
Date: Wed, 22 Nov 2023 14:06:08 +0530
Message-ID: <20231122083608.136071-1-s-k6@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

ADC module can function without DMA, so there may not be dma channel
always associated with device. Hence, remove "dmas", "dma-names" from list
of required properties.

Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
---
 Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
index 23a63265be3c..70b5dfce07d2 100644
--- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
@@ -61,8 +61,6 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - dmas
-  - dma-names
 
 additionalProperties: false
 
-- 
2.34.1


