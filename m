Return-Path: <devicetree+bounces-5031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9208B7B4D69
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E53C4B20B1F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A7823B1;
	Mon,  2 Oct 2023 08:44:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A27A468B
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:44:06 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC2CCA6;
	Mon,  2 Oct 2023 01:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1696236245; x=1727772245;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=yJTZdTKERo8VzFO4JICS6XENFAV8TnsAe9b+0dKEyvQ=;
  b=cbl12E8X2MohOlgh1lpZ7rUQymh+u9mFFQTZKnwKTusFC9DjOGGYEmdk
   HQ/+Onbs88otIZn3mn2XV7Uh/hSMJ02itfCy8Km32yOb6jvYHdX5VDuSd
   N5jeF8sqTKUON/jzS1f/QTDXhY01/nPyIydKIZVmEOk1QAhZKrd2V8lC8
   9//WcWIIvrMTrWh0h2m06KbDHKT4l3t0rqRBHmoZTUACvN+6elvdU+ruq
   b40ckZd0Lr6WesF9de6AhGf3ck54E1VrrkwEyHjPboqaKcQOJ2vaEOxQ3
   62bJdmX0ZfPmrCySllhskJhhFn7XguPnUy1BEDm2TOe1v96jZu8umnOJs
   w==;
X-IronPort-AV: E=Sophos;i="6.03,193,1694728800"; 
   d="scan'208";a="33241247"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Oct 2023 10:43:59 +0200
Received: from [127.0.1.1] (herburgerg-w2.tq-net.de [10.122.52.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 65D5D280085;
	Mon,  2 Oct 2023 10:43:59 +0200 (CEST)
From: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Date: Mon, 02 Oct 2023 10:43:51 +0200
Subject: [PATCH v3 2/5] dt-bindings: arm: fsl: Add TQ-Systems
 LS1043A/LS1046A based boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-for-ml-tqmls10xxa-v2-test-v3-2-402819b9a29b@ew.tq-group.com>
References: <20231002-for-ml-tqmls10xxa-v2-test-v3-0-402819b9a29b@ew.tq-group.com>
In-Reply-To: <20231002-for-ml-tqmls10xxa-v2-test-v3-0-402819b9a29b@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux@ew.tq-group.com, 
 gregor.herburger@ew.tq-group.com, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696236239; l=1459;
 i=gregor.herburger@ew.tq-group.com; s=20230829; h=from:subject:message-id;
 bh=Zf6TVDi/0rKreyNXVOmlbFBP/91b/q+twJd+Evj+J10=;
 b=trISJB2fLQstgBaNHlWBOQ8T88zYzLt/9buJcxcHqZNSQ6+HzTeqaoyz6xhG63Wt21QzPiZhy
 ughgeMmRtI2B2rlhb6J0gkpZkj+/YrLnp76wyOPaMkQE4tYkdJ9sBbV
X-Developer-Key: i=gregor.herburger@ew.tq-group.com; a=ed25519;
 pk=+eRxwX7ikXwazcRjlOjj2/tbDmfVZdDLoW+xLZbQ4h4=
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

TQMLS1043A and TQMLS1046A use the LS1043A LS1046A SOC on a common
layout.
MBLS10XXA is a starterkit baseboard usable for both SOMs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 109cb7650833..1ab4706d9016 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1398,6 +1398,13 @@ properties:
               - fsl,ls1043a-qds
           - const: fsl,ls1043a
 
+      - description: TQ-Systems LS1043A based Boards
+        items:
+          - enum:
+              - tq,ls1043a-tqmls1043a-mbls10xxa
+          - const: tq,ls1043a-tqmls1043a
+          - const: fsl,ls1043a
+
       - description: LS1046A based Boards
         items:
           - enum:
@@ -1406,6 +1413,13 @@ properties:
               - fsl,ls1046a-rdb
           - const: fsl,ls1046a
 
+      - description: TQ-Systems LS1046A based Boards
+        items:
+          - enum:
+              - tq,ls1046a-tqmls1046a-mbls10xxa
+          - const: tq,ls1046a-tqmls1046a
+          - const: fsl,ls1046a
+
       - description: LS1088A based Boards
         items:
           - enum:

-- 
2.34.1


