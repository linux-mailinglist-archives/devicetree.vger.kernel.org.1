Return-Path: <devicetree+bounces-4263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0F37B1C37
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 68FB81C20BE6
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C26238DD8;
	Thu, 28 Sep 2023 12:25:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74EB38BCE;
	Thu, 28 Sep 2023 12:25:17 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D18194;
	Thu, 28 Sep 2023 05:25:15 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38S8X9Cd030339;
	Thu, 28 Sep 2023 14:24:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=ijjidUf5dUcxUDIaXXOkidI02mty1qHfmNxNoZ5QfvA=; b=Bq
	/q428kK2E9yTZLHQv8Bl/2LpPFpYbNK450FDYQpCMMz4R7Yxd3Ty8in/N1jyPHxy
	OeSioxnAD1xlXsSlsorUMfGgi82G0Eb7nu+MZGRsMSqZcGPMvqcHumHWlaOKxFyA
	NqC6ojiJhNOdchm/ufIYHwhq37u3mMB5ojLUZxfkzmDYdp9Bzj5UScsUHK0G/+2y
	plhrPjrE+iLC0NlXx5zLt1ZZ9DiS3S6g5pY9GqRlcoUDI8SxDeXWzfcbhRM1+pHe
	Hs12fwqMkUalurRp1o6S4mzHj6w9oy4xnJvpgiJ6x0EIwc76RQrbOzR0Dc9nlS5o
	LQnox5jMzsi8PmF5G60g==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tcq63c3ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 14:24:40 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 90B9E100065;
	Thu, 28 Sep 2023 14:24:34 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 868E72309DA;
	Thu, 28 Sep 2023 14:24:34 +0200 (CEST)
Received: from localhost (10.201.21.249) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 28 Sep
 2023 14:24:33 +0200
From: Christophe Roullier <christophe.roullier@foss.st.com>
To: "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark
 Brown <broonie@kernel.org>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>
CC: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 02/12] dt-bindings: net: add new property st,ext-phyclk in documentation for stm32
Date: Thu, 28 Sep 2023 14:24:17 +0200
Message-ID: <20230928122427.313271-3-christophe.roullier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230928122427.313271-1-christophe.roullier@foss.st.com>
References: <20230928122427.313271-1-christophe.roullier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.21.249]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_11,2023-09-28_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add property st,ext-phyclk to manage cases when PHY have no cristal/quartz
This property can be used with RMII phy without cristal 50Mhz and when we
want to select RCC clock instead of ETH_REF_CLK
Can be used also with RGMII phy with no cristal and we select RCC clock
instead of ETH_CLK125
This new property replace st,eth-clk-sel and st,eth-ref-clk-sel

Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
---
 Documentation/devicetree/bindings/net/stm32-dwmac.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
index ca976281bfc22..54fda8b052abc 100644
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -78,12 +78,21 @@ properties:
       encompases the glue register, the offset of the control register and
       the mask to set bitfield in control register
 
+  st,ext-phyclk:
+     description:
+      set this property in RMII mode when you have PHY without crystal 50MHz and want to
+      select RCC clock instead of ETH_REF_CLK. or in RGMII mode when you want to select
+      RCC clock instead of ETH_CLK125.
+    type: boolean
+
   st,eth-clk-sel:
+    deprecated: true
     description:
       set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
     type: boolean
 
   st,eth-ref-clk-sel:
+    deprecated: true
     description:
       set this property in RMII mode when you have PHY without crystal 50MHz and want to
       select RCC clock instead of ETH_REF_CLK.
-- 
2.25.1


