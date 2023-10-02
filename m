Return-Path: <devicetree+bounces-5032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C20337B4D6A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:44:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D87D51C2088D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DE917F4;
	Mon,  2 Oct 2023 08:44:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F35256
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:44:08 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86AB4D3;
	Mon,  2 Oct 2023 01:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1696236246; x=1727772246;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=W9Sb27PyHO8NnNOF2AsHHpJ7LntycZKDp/uBOK773Us=;
  b=P+5yTmxw3DP/CL+dnkzHr3+5YeJYVrFsx5rXnJwe1++uth44QVQPaKVB
   +Vs4O1irY+zGM8FQVnjAzbM7JxNi6cxQOtSG76kd0O5NqwMjSxjrIkk5z
   BVqaahtdf3voErXzNo9CQgC9eoL47Yf4+t4wkW6pUJ8Wx+5OUPJCdfRpO
   ZZR/5L4Bzxkbg43qAqvL6VijcSvsOFZq4RvJUZKCieZqvoAnYiRgvxEhN
   1rMrpynbUSDaC/xrJGaKgRuG7ift6DfET0D+9pBcq0vtp28Dn/ZRw9eY5
   I8KO+D/si25nyP5M+5aWGj3bl7FA5Dc36oYbe5tqWY1wfdTjVBTp8ukh5
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,193,1694728800"; 
   d="scan'208";a="33241249"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Oct 2023 10:43:59 +0200
Received: from [127.0.1.1] (herburgerg-w2.tq-net.de [10.122.52.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 860C0280087;
	Mon,  2 Oct 2023 10:43:59 +0200 (CEST)
From: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Date: Mon, 02 Oct 2023 10:43:53 +0200
Subject: [PATCH v3 4/5] dt-bindings: arm: fsl: Add TQ-Systems LS1088 based
 boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-for-ml-tqmls10xxa-v2-test-v3-4-402819b9a29b@ew.tq-group.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696236239; l=1034;
 i=gregor.herburger@ew.tq-group.com; s=20230829; h=from:subject:message-id;
 bh=Nmc4MoTqDv/khaoBHPKup7fY5ktNnhvvyUf3uHzVd7c=;
 b=cBGaQb7kShvVLQyMzHMWOwXsZjZXH/nzcYg6m3E0DRSzwqwB/WFaHuFOFviZijT7+TElV7hxF
 VyyDmkn43fsDyj7wUR2H/OOOadjJhSpI2YrFCRU1pGDqlqv/ZrEHESu
X-Developer-Key: i=gregor.herburger@ew.tq-group.com; a=ed25519;
 pk=+eRxwX7ikXwazcRjlOjj2/tbDmfVZdDLoW+xLZbQ4h4=
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

TQMLS1088a uses a common board layout with TQMLS1043A/TQMLS1046A.
MBLS10XXA is a starterkit baseboard usable for these SOMs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1ab4706d9016..8b99c520d60d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1427,6 +1427,13 @@ properties:
               - fsl,ls1088a-rdb
           - const: fsl,ls1088a
 
+      - description: TQ-Systems LS1088A based Boards
+        items:
+          - enum:
+              - tq,ls1088a-tqmls1088a-mbls10xxa
+          - const: tq,ls1088a-tqmls1088a
+          - const: fsl,ls1088a
+
       - description: LS2080A based Boards
         items:
           - enum:

-- 
2.34.1


