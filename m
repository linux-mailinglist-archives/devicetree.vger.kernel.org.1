Return-Path: <devicetree+bounces-6400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0EB7BB32B
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9E84281E90
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FDF47499;
	Fri,  6 Oct 2023 08:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF40563CC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 08:27:54 +0000 (UTC)
Received: from viti.kaiser.cx (viti.kaiser.cx [IPv6:2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D77A95;
	Fri,  6 Oct 2023 01:27:52 -0700 (PDT)
Received: from dslb-188-097-209-100.188.097.pools.vodafone-ip.de ([188.97.209.100] helo=martin-debian-2.paytec.ch)
	by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <martin@kaiser.cx>)
	id 1qogBR-0007T2-IT; Fri, 06 Oct 2023 10:27:41 +0200
From: Martin Kaiser <martin@kaiser.cx>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Martin Kaiser <martin@kaiser.cx>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: st,stm32: fix phandle-array warning
Date: Fri,  6 Oct 2023 10:22:48 +0200
Message-Id: <20231006082247.3830719-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

make CHECK_DTBS=y st/stm32f469-disco.dtb

brings up a warning about a missing argument:

stm32f469-disco.dtb: pinctrl@40020000: st,syscfg:0: [21, 8] is too short

The description of the third entry indicates that this entry is optional.
The code in stm32_pctrl_dt_setup_irq parses st,syscfg and treats the third
entry as optional. It defaults to 0xf if not present in the devicetree.

Update the schema to require at least two entries, use the same syntax as
the description of renesas,ipmmu-main in
Documentation/devicetree/bindings/iommu/renesas,ipmmu-vmsa.yaml.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---

I tested the following cases, all of them returned the expected result:

   st,syscfg = <&syscfg>;              (too short)
   st,syscfg = <&syscfg 0x8>;          (ok)
   st,syscfg = <&syscfg 0x8 0x0>;      (ok)
   st,syscfg = <&syscfg 0x8 0x0 0x0>;  (too long)

 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 2120ef71a78d..e1eb45a9eda4 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -48,7 +48,8 @@ properties:
     description: Phandle+args to the syscon node which includes IRQ mux selection.
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:
-      - items:
+      - minItems: 2
+        items:
           - description: syscon node which includes IRQ mux selection
           - description: The offset of the IRQ mux selection register
           - description: The field mask of IRQ mux, needed if different of 0xf
-- 
2.39.2


