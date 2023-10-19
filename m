Return-Path: <devicetree+bounces-10125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC28B7CFBE1
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F2D32812AC
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B42D29CF9;
	Thu, 19 Oct 2023 14:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8F227477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:02:27 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27526B0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:02:25 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39JE2DB1028894;
	Thu, 19 Oct 2023 22:02:13 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.498.0; Thu, 19 Oct 2023
 22:02:13 +0800
From: Yu Chien Peter Lin <peterlin@andestech.com>
To: <conor@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        <dylan@andestech.com>, <locus84@andestech.com>, <dminus@andestech.com>,
        "Yu
 Chien Peter Lin" <peterlin@andestech.com>
Subject: [PATCH v2 05/10] dt-bindings: riscv: Add andestech,cpu-intc to interrupt-controller
Date: Thu, 19 Oct 2023 21:59:05 +0800
Message-ID: <20231019135905.3658215-1-peterlin@andestech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.0.15.183]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39JE2DB1028894

Add "andestech,cpu-intc" compatible string for Andes INTC which
provides Andes-specific IRQ chip functions.

Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
---
Changes v1 -> v2:
  - New patch
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 97e8441eda1c..5b216e11c69f 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -99,7 +99,9 @@ properties:
         const: 1
 
       compatible:
-        const: riscv,cpu-intc
+        enum:
+          - riscv,cpu-intc
+          - andestech,cpu-intc
 
       interrupt-controller: true
 
-- 
2.34.1


