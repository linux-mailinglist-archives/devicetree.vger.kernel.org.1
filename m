Return-Path: <devicetree+bounces-3941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 073627B09F8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:25:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AE549281F3F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061A049980;
	Wed, 27 Sep 2023 16:25:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628E0F4F7
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:25:22 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A474A91;
	Wed, 27 Sep 2023 09:25:20 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,181,1694703600"; 
   d="scan'208";a="181181547"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 28 Sep 2023 01:25:20 +0900
Received: from mulinux.home (unknown [10.226.92.108])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id DD4FE401F564;
	Thu, 28 Sep 2023 01:25:15 +0900 (JST)
From: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/2] spi: renesas,rzv2m-csi: Add CSI (SPI) target related property
Date: Wed, 27 Sep 2023 17:25:07 +0100
Message-Id: <20230927162508.328736-2-fabrizio.castro.jz@renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
References: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
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

The CSI IP found inside the Renesas RZ/V2M SoC can also work
in SPI target mode.
When working in target mode, the IP will make use of the SS
(Slave Selection) pin, with "low" as default active level.
The active level of SS can be changed to "high" upon setting
property "spi-cs-high" to true.
By default, the SS will be used in target mode, unless property
"renesas,csi-no-ss" is set to true, in which case data will be
shifted in and out purely based on clock activity, and the
logic level of the SS pin will be completely ignored.

Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
---
v1->v2: I have dropped properties renesas,csi-ss and
        renesas,csi-ss-high. I have added property
	renesas,csi-no-ss, and to configure SS as active
	high one now needs to use property spi-cs-high.
	I have also reworded the changelog to use a more
	modern terminology (host and target as opposed to
	master and slave).

 .../devicetree/bindings/spi/renesas,rzv2m-csi.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/renesas,rzv2m-csi.yaml b/Documentation/devicetree/bindings/spi/renesas,rzv2m-csi.yaml
index e59183e53690..bed829837df1 100644
--- a/Documentation/devicetree/bindings/spi/renesas,rzv2m-csi.yaml
+++ b/Documentation/devicetree/bindings/spi/renesas,rzv2m-csi.yaml
@@ -39,6 +39,12 @@ properties:
   power-domains:
     maxItems: 1
 
+  renesas,csi-no-ss:
+    type: boolean
+    description:
+      The CSI Slave Selection (SS) pin won't be used to enable transmission and
+      reception. Only available when in target mode.
+
 required:
   - compatible
   - reg
@@ -50,6 +56,9 @@ required:
   - '#address-cells'
   - '#size-cells'
 
+dependencies:
+  renesas,csi-no-ss: [ spi-slave ]
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


