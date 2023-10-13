Return-Path: <devicetree+bounces-8560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 275EA7C8BBA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D67D6282F0C
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1771CFAC;
	Fri, 13 Oct 2023 16:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cutebit.org header.i=@cutebit.org header.b="AdMRzBbV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF63F21A0B
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:50:17 +0000 (UTC)
Received: from hutie.ust.cz (hutie.ust.cz [IPv6:2a03:3b40:fe:f0::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 607C695;
	Fri, 13 Oct 2023 09:50:14 -0700 (PDT)
From: =?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cutebit.org; s=mail;
	t=1697215811; bh=uczSgTQLi6Ws10mkGz7xBUwK2hIRFnyEIXxpUpBHyZM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=AdMRzBbVw4C7wrvkyyKQ5Np/LkXMSbmuazyZnvSThbV6tlehaeaMOL1v3IuVwya4V
	 0BMn6Y3L7DondoMuJgK4PG412MXYKWj2dV3XfFnqXljpdU+uP58FRgiDIVJ35eeuUl
	 99pfultvmU9+Vxuh8/lE6tsEJe5hsBAkxjRD7T80=
To: =?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: dma: apple,sio: Add schema
Date: Fri, 13 Oct 2023 18:49:35 +0200
Message-Id: <20231013164936.60718-2-povik+lin@cutebit.org>
In-Reply-To: <20231013164936.60718-1-povik+lin@cutebit.org>
References: <20231013164936.60718-1-povik+lin@cutebit.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Describe the SIO coprocessor which serves as pretend DMA controller on
recent Apple platforms.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Povišer <povik+lin@cutebit.org>
---
This patch was reviewed outside the version count here.
https://lore.kernel.org/asahi/167693643966.613996.10372170526471864080.robh@kernel.org

 .../devicetree/bindings/dma/apple,sio.yaml    | 111 ++++++++++++++++++
 1 file changed, 111 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/apple,sio.yaml

diff --git a/Documentation/devicetree/bindings/dma/apple,sio.yaml b/Documentation/devicetree/bindings/dma/apple,sio.yaml
new file mode 100644
index 000000000000..0e3780ad9dd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/apple,sio.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/apple,sio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple SIO Coprocessor
+
+description:
+  SIO is a coprocessor on Apple M1 and later chips (and maybe also on earlier
+  chips). Its role is to offload SPI, UART and DisplayPort audio transfers,
+  being a pretend DMA controller.
+
+maintainers:
+  - Martin Povišer <povik+lin@cutebit.org>
+
+allOf:
+  - $ref: dma-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - apple,t6000-sio
+          - apple,t8103-sio
+      - const: apple,sio
+
+  reg:
+    maxItems: 1
+
+  '#dma-cells':
+    const: 1
+    description:
+      DMA clients specify a single cell that corresponds to the RTKit endpoint
+      number used for arranging the transfers in question
+
+  dma-channels:
+    maximum: 128
+
+  mboxes:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  memory-region:
+    minItems: 2
+    maxItems: 8
+    description:
+      A number of references to reserved memory regions among which are the DATA/TEXT
+      sections of coprocessor executable firmware and also auxiliary firmware data
+      describing the available DMA-enabled peripherals
+
+  apple,sio-firmware-params:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      Parameters in the form of opaque key/value pairs that are to be sent to the SIO
+      coprocesssor once it boots. These parameters can point into the reserved memory
+      regions (in device address space).
+
+      Note that unlike Apple's firmware, we treat the parameters, and the data they
+      refer to, as opaque. Apple embed short data blobs into their SIO devicetree node
+      that describe the DMA-enabled peripherals (presumably with defined semantics).
+      Their driver processes those blobs and sets up data structure in mapped device
+      memory, then references this memory in the parameters sent to the SIO. At the
+      level of description we are opting for in this binding, we assume the job of
+      constructing those data structures has been done in advance, leaving behind an
+      opaque list of key/value parameter pairs to be sent by a prospective driver.
+
+      This approach is chosen for two reasons:
+
+       - It means we don't need to try to understand the semantics of Apple's blobs
+         as long as we know the transformation we need to do from Apple's devicetree
+         data to SIO data (which can be shoved away into a loader). It also means the
+         semantics of Apple's blobs (or of something to replace them) need not be part
+         of the binding and be kept up with Apple's firmware changes in the future.
+
+       - It leaves less work for the driver attaching on this binding. Instead the work
+         is done upfront in the loader which can be better suited for keeping up with
+         Apple's firmware changes.
+
+required:
+  - compatible
+  - reg
+  - '#dma-cells'
+  - dma-channels
+  - mboxes
+  - iommus
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    sio: dma-controller@36400000 {
+      compatible = "apple,t8103-sio", "apple,sio";
+      reg = <0x36400000 0x8000>;
+      dma-channels = <128>;
+      #dma-cells = <1>;
+      mboxes = <&sio_mbox>;
+      iommus = <&sio_dart 0>;
+      power-domains = <&ps_sio_cpu>;
+      memory-region = <&sio_text>, <&sio_data>,
+                      <&sio_auxdata1>, <&sio_auxdata2>; /* Filled by loader */
+      apple,sio-firmware-params = <0xb 0x10>, <0xc 0x1b80>, <0xf 0x14>,
+                                  <0x10 0x1e000>, <0x30d 0x34>, <0x30e 0x4000>,
+                                  <0x1a 0x38>, <0x1b 0x50>; /* Filled by loader */
+    };
-- 
2.38.3


