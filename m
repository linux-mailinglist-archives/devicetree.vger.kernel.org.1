Return-Path: <devicetree+bounces-5453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D627B6671
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BFB8F2816D4
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC5F6D38;
	Tue,  3 Oct 2023 10:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DEA208CB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:31:13 +0000 (UTC)
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3820B3
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:31:11 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:5b9d:c703:a536:8d7b])
	by baptiste.telenet-ops.be with bizsmtp
	id tNX32A00N0Gl2EY01NX3wN; Tue, 03 Oct 2023 12:31:08 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qncfm-0057Jk-7h;
	Tue, 03 Oct 2023 12:31:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qncYR-00FiqG-Fa;
	Tue, 03 Oct 2023 12:23:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>
Cc: linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: media: renesas,vin: Fix field-even-active spelling
Date: Tue,  3 Oct 2023 12:22:57 +0200
Message-Id: <c999eef0a14c8678f56eb698d27b2243e09afed4.1696328563.git.geert+renesas@glider.be>
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

make dt_binding_check:

    field-active-even: missing type definition

The property is named "field-even-active", not "field-active-even".

Fixes: 3ab7801dfab998a2 ("media: dt-bindings: media: rcar-vin: Describe optional ep properties")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/media/renesas,vin.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/renesas,vin.yaml b/Documentation/devicetree/bindings/media/renesas,vin.yaml
index 324703bfb1bded3a..5539d0f8e74d2e82 100644
--- a/Documentation/devicetree/bindings/media/renesas,vin.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,vin.yaml
@@ -95,7 +95,7 @@ properties:
               synchronization is selected.
             default: 1
 
-          field-active-even: true
+          field-even-active: true
 
           bus-width: true
 
@@ -144,7 +144,7 @@ properties:
                   synchronization is selected.
                 default: 1
 
-              field-active-even: true
+              field-even-active: true
 
               bus-width: true
 
-- 
2.34.1


