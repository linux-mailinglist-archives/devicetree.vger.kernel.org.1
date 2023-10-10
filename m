Return-Path: <devicetree+bounces-7359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 206C17C02A3
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:27:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E489282492
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD8427476;
	Tue, 10 Oct 2023 17:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D074D21364;
	Tue, 10 Oct 2023 17:27:42 +0000 (UTC)
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FCEEB9;
	Tue, 10 Oct 2023 10:27:40 -0700 (PDT)
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 5320682EA1;
	Tue, 10 Oct 2023 19:27:38 +0200 (CEST)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Tue, 10 Oct 2023 19:27:23 +0200
Subject: [PATCH v6 6/9] dt-bindings: marvell: Document PXA1908 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231010-pxa1908-lkml-v6-6-b2fe09240cf8@skole.hr>
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
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=890;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=68SP0psZM8Sot29iAM52aLi+c+3JVnNIUMMY8bC0VIc=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlJYl5/48Y0TmCPPbEFgIneK51T/eCNkCvyK86B
 gTAaA4jwU2JAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZSWJeQAKCRCaEZ6wQi2W
 4Wa+D/9a0mMENJFyiUVJ2mxTCqyG6n/Y1qhtN6KQ97SBTexjRdOHT6VORNiElvA/ZjI/+0DmCOw
 Akt64PGdQ6e+8N8uYLqGEKXSyvAfaIl05hCG6pZ2e38xhohM2kdxpDfEsS/mpgu12Mfymubmxvw
 ELVEBLg2G5VD4T1vRGcnQBq89yS2FDOT62cH8FPB34yHdDYaysAqueSdkqQDP4o53nId0gI/2T/
 hsE5fvY0TZTFWounMLORKyuffLDc28gAo4Wfy5YhRQadCc1GQTP+lCx+76SpQlLDPBsti7YKbgZ
 KMHpQAm4w16nz/jmiTmW8LFqsM6F8dmvrXKIF9RZYMpYZ0Xkv68trKMkUULsmmuQEbSM9SYhxcH
 MYIuEh2IWIZf17zGmXCbErFfIefkBwGqYfKWukSYPRfJjH69kGKpOxKOXmWitTELMRzZZEEoNFP
 ThSqKvdX4wFSJ8vYy+EtVqD+5fpq8xE9vegwzZa9b0eUZLCMOj1KJUp96nhqBj71Ht+7DVR2jeR
 Gg/DNVlQiwana5fw6dP4SBcm3+Yb+9Emj6gCP9mPe8e1XYwpB8mFzRn0oB3qQ84kx5iQnJUVMpW
 HTsvzwBVI3mX1w8A0bFXPNZGbJAEbj4hFuO3SQ5xmyAePWA6KAdPP0UlQHpPaH49hjuyI+EI4bP
 xm0ogxAd8RCfvwA==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add dt binding for the Marvell PXA1908 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
index 4c43eaf3632e..f73bb8ec3a1a 100644
--- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
+++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
@@ -35,6 +35,11 @@ properties:
           - enum:
               - dell,wyse-ariel
           - const: marvell,mmp3
+      - description: PXA1908 based boards
+        items:
+          - enum:
+              - samsung,coreprimevelte
+          - const: marvell,pxa1908
 
 additionalProperties: true
 

-- 
2.42.0



