Return-Path: <devicetree+bounces-5460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA817B66B5
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E4AB1281646
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0151CF91;
	Tue,  3 Oct 2023 10:48:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186987ED
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:48:06 +0000 (UTC)
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F84AC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:48:03 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:5b9d:c703:a536:8d7b])
	by michel.telenet-ops.be with bizsmtp
	id tNo02A00M0Gl2EY06No0kY; Tue, 03 Oct 2023 12:48:01 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qncwB-00587Y-Ax;
	Tue, 03 Oct 2023 12:48:00 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qncwa-00FjVc-7T;
	Tue, 03 Oct 2023 12:48:00 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: cache: andestech,ax45mp-cache: Fix unit address in example
Date: Tue,  3 Oct 2023 12:47:59 +0200
Message-Id: <7b93655219a6ad696dd3faa9f36fde6b094694a9.1696330005.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The unit address in the example does not match the reg property.
Correct the unit address to match reality.

Fixes: 3e7bf4685e42786d ("dt-bindings: cache: andestech,ax45mp-cache: Add DT binding documentation for L2 cache controller")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/cache/andestech,ax45mp-cache.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
index 9ab5f0c435d4df16..d2cbe49f4e15fdc4 100644
--- a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
+++ b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
@@ -69,7 +69,7 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
 
-    cache-controller@2010000 {
+    cache-controller@13400000 {
         compatible = "andestech,ax45mp-cache", "cache";
         reg = <0x13400000 0x100000>;
         interrupts = <508 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


