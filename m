Return-Path: <devicetree+bounces-24757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E59D811183
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 406131C21021
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2DD2942C;
	Wed, 13 Dec 2023 12:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="theBzV0k"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E590107;
	Wed, 13 Dec 2023 04:49:46 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDCnXjr005838;
	Wed, 13 Dec 2023 06:49:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702471773;
	bh=zIcPoWxznVhVaFpmBEnB09iaCbNTtz8sPL+fVW4gr3I=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=theBzV0kruADxD9l8cUk8x1pk57RqvVzupNslmPvQ30pecYUz4mNyCNV98ynKnUWJ
	 k/Fq9dGNe/6bb6Jlhqt44mnd0Lkl4pUYMjYPg5v88h+MK/rsOV96bY+i22ymZ1pQwN
	 zw0n8E8x9BtWNNMClxRbNS2ytxgj6xNKz0mOtQR8=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDCnXlZ073419
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 06:49:33 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 06:49:33 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 06:49:33 -0600
Received: from localhost ([10.24.69.141])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDCnWnN027262;
	Wed, 13 Dec 2023 06:49:32 -0600
From: Vaishnav Achath <vaishnav.a@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <j-choudhary@ti.com>, <u-kumar1@ti.com>,
        <vaishnav.a@ti.com>
Subject: [PATCH 1/3] dt-bindings: arm: ti: Add bindings for J722S SoCs
Date: Wed, 13 Dec 2023 18:19:28 +0530
Message-ID: <20231213124930.3012-2-vaishnav.a@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231213124930.3012-1-vaishnav.a@ti.com>
References: <20231213124930.3012-1-vaishnav.a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add bindings for TI J722S family of devices.

Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c6506bccfe88..d52672348424 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -123,6 +123,12 @@ properties:
               - ti,j721s2-evm
           - const: ti,j721s2
 
+      - description: K3 J722S SoC and Boards
+        items:
+          - enum:
+              - ti,j722s-evm
+          - const: ti,j722s
+
       - description: K3 J784s4 SoC
         items:
           - enum:
-- 
2.17.1


