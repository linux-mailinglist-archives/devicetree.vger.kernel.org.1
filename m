Return-Path: <devicetree+bounces-7354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB417C029A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E15DD1C20DB1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16CD524C9A;
	Tue, 10 Oct 2023 17:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECA41DFE6;
	Tue, 10 Oct 2023 17:27:37 +0000 (UTC)
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9A89D;
	Tue, 10 Oct 2023 10:27:35 -0700 (PDT)
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 3A92D8516B;
	Tue, 10 Oct 2023 19:27:33 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Tue, 10 Oct 2023 19:27:19 +0200
Subject: [PATCH v6 2/9] dt-bindings: pinctrl: pinctrl-single: add
 marvell,pxa1908-padconf compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231010-pxa1908-lkml-v6-2-b2fe09240cf8@skole.hr>
References: <20231010-pxa1908-lkml-v6-0-b2fe09240cf8@skole.hr>
In-Reply-To: <20231010-pxa1908-lkml-v6-0-b2fe09240cf8@skole.hr>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=893;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=JI4TCidJxHS1hYKjUsUHSsL9Lr+V30eDcrv5o/04yCQ=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlJYl45oeZvqQfEk0N/BcAkKiGhs0mjliAM4Azw
 jKWhTxEAv6JAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZSWJeAAKCRCaEZ6wQi2W
 4YA+D/9xaSSVr4qSeGjb6mIc60b38KFQ1QTppTfY6GhnmVY7EBrfbP+M7U5DElKvZpKzw9cf4fQ
 DbqxAAS1t37i4lXUgShpKgp83iSwpquchB5WB59ZvDfAbNSUUDix0tcVzC7zFmi66QPdrtxhGip
 N2lamX8fdTlqSPBvPAnXkZLa1TnwCkwLILaEeXHd6g57mSFBQSWqeJHxXSGVkDSiQ8vYMNMh8W8
 dNE+spmLJp+4/MowHWPtWg98epUaslMDTcB7JR/hZbEkyIyGUr7eIlUI/TVUqmX49fMJU82JeQl
 6wFVlQ/KuEUUOeHutJ9PsCQZU7rL9MoBJRidM/zKPIOy2KeGneJ5qHEn96mGQCSWUlnx0L2yegQ
 GN+GVqdd3cuhLqR6dFcMKeS4EcpLJCE87Zbew+380BQhcFtdIhTT1MUUrBXi8ochBTyp4frAWPi
 2YcAVQP0iLqpTm0+D6pF1PdoFMuZITz2c51xsXsu9v4Lu5cZ9hZURpFV2tHw/QbArENHQyhA89i
 P0Fq1/PuaJSAZ7UBBIkEj1SaoVVVD7zjhYt90ly/kI0KW84e/lhbBIMLvXoCiBskQElM0pIqkaI
 HGfCbBAcW+JAglnMUkXFPV5ZLDHMgJmyoIKm5XRy2khVW2ukvM6kBBJE2tghycui8AFfq3N268m
 ElIIvKPY4OYPc9w==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
separate pinctrl driver later.

Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
index 45a307d3ce16..0f7e16a28990 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
@@ -32,6 +32,10 @@ properties:
               - ti,omap4-padconf
               - ti,omap5-padconf
           - const: pinctrl-single
+      - items:
+          - enum:
+              - marvell,pxa1908-padconf
+          - const: pinconf-single
 
   reg:
     maxItems: 1

-- 
2.42.0



