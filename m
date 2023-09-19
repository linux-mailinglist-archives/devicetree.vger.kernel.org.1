Return-Path: <devicetree+bounces-1352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3AA7A5FCB
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:39:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08ADC1C20CDD
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3438415BE;
	Tue, 19 Sep 2023 10:39:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA14538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:39:27 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D2112F0;
	Tue, 19 Sep 2023 03:39:22 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3E6FC15;
	Tue, 19 Sep 2023 03:39:59 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86DA23F67D;
	Tue, 19 Sep 2023 03:39:20 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Lee Jones <lee@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Mark Brown <broonie@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Shengyu Qu <wiagn233@outlook.com>,
	Martin Botka <martin.botka1@gmail.com>,
	Matthew Croughan <matthew.croughan@nix.how>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: mfd: x-powers,axp152: make interrupt optional for more chips
Date: Tue, 19 Sep 2023 11:39:12 +0100
Message-Id: <20230919103913.463156-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230919103913.463156-1-andre.przywara@arm.com>
References: <20230919103913.463156-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

All X-Powers PMICs described by this binding have an IRQ pin, and so
far (almost) all boards connected this to some NMI pin or GPIO on the SoC
they are connected to.
However we start to see boards that omit this connection, and technically
the IRQ pin is not essential to the basic PMIC operation.

The existing Linux driver allows skipping the IRQ pin setup for two chips
already, so update the binding to also make the DT property optional for
the missing chip. And while we are at it, add the AXP313a to that list,
as they are actually boards out there not connecting the IRQ pin.

This allows to have DTs correctly describing those boards not wiring up
the interrupt.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
index 9ad55746133b5..06f1779835a1e 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -67,7 +67,10 @@ allOf:
         properties:
           compatible:
             contains:
-              const: x-powers,axp305
+              enum:
+                - x-powers,axp15060
+                - x-powers,axp305
+                - x-powers,axp313a
 
     then:
       required:
-- 
2.25.1


