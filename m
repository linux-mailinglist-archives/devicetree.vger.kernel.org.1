Return-Path: <devicetree+bounces-20491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D177FF86A
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B94A428160C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF83358103;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VazD2NWx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937C055C34
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34E20C433CA;
	Thu, 30 Nov 2023 17:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701365851;
	bh=5MZWbyU3vKXf6N5p9b/TD52/d407uLP9/uelkdwoyuU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VazD2NWxYudT7gv9XbCQ9/qQeRdf3Dj6cRCYDAiZ+IHRo9T/KNSiXD2yV3g7P6JpR
	 eBtg8oEl3JpGLhjDyShjBilkxnv495557n6LsJDf+vY7X01Vd2OcpsdtFc/8Irb62e
	 7HuSK/3imYvMoaaMxj/0/52T0YWfpKz2ZkMJ0KcKwmZ3ewa0WLwIcwQbovF28/VrmT
	 XSHScbxgpFroQ+ozlEWzOFcsYAh/l5wWvPBmsvY/SkQSjzLzyOCplGBDAGCgCm7RO4
	 g5jS+/rV+RfzjWCqk/fZ9ofxnLgTOO341a+ZRDTgxbmUMkMPm0m3/ZblGWeVOBOalW
	 z7Mj4FSpobacg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8kzE-0003OA-38;
	Thu, 30 Nov 2023 18:38:05 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/2] dt-bindings: spmi: hisilicon,hisi-spmi-controller: clean up example
Date: Thu, 30 Nov 2023 18:37:57 +0100
Message-ID: <20231130173757.13011-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231130173757.13011-1-johan+linaro@kernel.org>
References: <20231130173757.13011-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up the binding example by dropping the unnecessary parent bus
node, using a define for the second register value of the PMIC child and
increasing indentation to four spaces.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../spmi/hisilicon,hisi-spmi-controller.yaml        | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
index eee7c8d4cf4a..3ccf35de3719 100644
--- a/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
+++ b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
@@ -54,20 +54,17 @@ unevaluatedProperties: false
 
 examples:
   - |
-    bus {
-      #address-cells = <2>;
-      #size-cells = <2>;
+    #include <dt-bindings/spmi/spmi.h>
 
-      spmi: spmi@fff24000 {
+    spmi@fff24000 {
         compatible = "hisilicon,kirin970-spmi-controller";
+        reg = <0xfff24000 0x1000>;
         #address-cells = <2>;
         #size-cells = <0>;
-        reg = <0x0 0xfff24000 0x0 0x1000>;
         hisilicon,spmi-channel = <2>;
 
         pmic@0 {
-          reg = <0 0>;
-          /* pmic properties */
+            reg = <0 SPMI_USID>;
+            /* pmic properties */
         };
-      };
     };
-- 
2.41.0


