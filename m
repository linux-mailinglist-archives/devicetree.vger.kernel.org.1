Return-Path: <devicetree+bounces-218678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AE9B831B4
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1541189E228
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E918A2D6E7D;
	Thu, 18 Sep 2025 06:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="EUM51GIt";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OAduaR4k"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a1-smtp.messagingengine.com (fhigh-a1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA182BE7A3
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758176096; cv=none; b=cCCQtfFql/0AVvzR7dKTeNyrqzAf2j2U/EkCeGX1hAg+C3qYhtFaKSCrCkcg3D2/gqHDDacjr60M7t/13Pdlp6XLb9Vf6/c2iwhZ6IDA4j1d/PbLLy/B1bwdZ4ymfjJ4B6jSN3NEoSYgQKMc6IJDxNaVm00vuZn31xcQZBd37ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758176096; c=relaxed/simple;
	bh=6OhTnVLa2mByOH8tn+6LyIKz0OTEf3j2B1/HJ5WXl6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eSsjaHBMOQuusAqLv20Rwv6Trq6aWWlrCrhM5yScG8SBvdc+KzGVkrypVfL6P9OyV2raaEg5kc69d1uvBr6G+alGcMTQadU/IkaD2G3s5Pef1J1xuEbE/mcTMe90yr3anWdq2Mn3fD90yDeUZQIeAVDSG5lJgvcXqILM6ex4KOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=EUM51GIt; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OAduaR4k; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 254B3140026C;
	Thu, 18 Sep 2025 02:14:54 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 18 Sep 2025 02:14:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1758176094; x=
	1758262494; bh=7TS237X0W/IqOYI54sZ0SIGGx542UAdrIeqE+TOC65M=; b=E
	UM51GItpKeqh6hVOZi9zPk/biz4GWfMerq0OyNEgKJ035lx+es3QJNwYoxlxO9Ja
	MtrMA1RPN6ATIkgyP00IOgbkzZY0N3mljjYvNaAVgkTCeo3OQrLvjBaP4gPHYbvS
	/utZN9bFSrtGCROysd1qgFkGmRpRCH/fnZvvTSqde/j1XUUBVtBrXYQBZ7gK7swF
	R6ZWltmA6zeklPPDw1QYb1Tw53anajXRaDyULUo7O6NMcshJspFwk6oTNLc+hViv
	9Hty+1JjW4NJ3CDuWA64QU9XlpjaYZZ+Pc9FjW2EM5T65FFkpfjkHu328zvFXc+U
	XqUORyjTAV9FYL9g8Nv5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1758176094; x=1758262494; bh=7
	TS237X0W/IqOYI54sZ0SIGGx542UAdrIeqE+TOC65M=; b=OAduaR4k2Tr2J5dBJ
	9xEISFsOzbCPVCRg8I+TtEuj2lxkL+UcSpp0lxE/IaYN0Y8dRC3to+xhyqi6dBUZ
	iVPXBGF+ouEaOAhWmKBbe8+sP1b7sBuGzUzE+dvFURZqeW3a08MvDzTt11f5rSF6
	0N6t5ASez861BvUFqmTS7saudd7l71AqB3P3B1//lIiOdWZEHHDUIeZdhsUsQUvb
	cRy9jS1vgAqfkfsZ+6JTbziMib856KR1wgzR7wRLZV5REnuTdk1xE4qXOp9ZU8QP
	hKFagOAyUnarkicBK1e8JkXCpRv4b9SNXfhpNThn7Aek3ndM8S9wqNUVOdb++D+Q
	Qrc3g==
X-ME-Sender: <xms:XaPLaKkiWcgW0CFaCBhdytT7jJLnGREnrVEpbC1HyCtMtd8rAJhTaA>
    <xme:XaPLaInopmdx1M0sSbw3lsXrcjd3MiXW8btQJxEjCkzeAXJg2f8STbvmC1T4eO1cq
    rHCH6vbRBdWdSodl9Y>
X-ME-Received: <xmr:XaPLaKb4-3WVllvTPWljg8cgomapejqiswia66gXGhSAOnnpZDYjpjh5yWF5s7cm3ijlsHD_Iuzy77zJLmGNDPpLNszlXPvqHe9n5N4tGkyCJmIhcPvouzzBUunsAow4rwUSYuJI2leExN7RvJ4mo5JTm4c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegheehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgvficu
    ofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrf
    grthhtvghrnheptdevffeihffgudeihffgudduvdeuueekteekvdeihfegveelgfffveeg
    hfegiefgnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghupdguvghvihgtvg
    htrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruhdpnhgspghrtghpthhtoh
    epkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggvvhhitggvthhrvggvsehv
    ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrh
    hnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepshhhrgif
    nhhguhhosehkvghrnhgvlhdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthht
    oheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlvggvsehkvg
    hrnhgvlhdrohhrghdprhgtphhtthhopehmrghtthesthhrrghvvghrshgvrdgtohhmrdgr
    uh
X-ME-Proxy: <xmx:XqPLaKTX01EHQZBYBYqI3Lv2L71l7GX1x-E32GpInvACiTyBb2sQBw>
    <xmx:XqPLaEverDuPICD_d5peKyiEOz8zUkGnk7O2y_HGIy36hC_zYT5riA>
    <xmx:XqPLaME39jBx2zRp-xbfAZk6eM_Z6ZfjYW5hzFVcn6OMkJ3D1W48EA>
    <xmx:XqPLaFzZeuRndxKObmHE_nhZMXICKV15LVW5RINUx1-Ble8sDhg8ow>
    <xmx:XqPLaFeaklUCE6hInObjfcGPVuA_sJkq8Nrb9EareYpxPG1ReYcyBxTZ>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 02:14:51 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v5 1/2] dt-bindings: embedded-controller: add Traverse Ten64 board controller
Date: Thu, 18 Sep 2025 16:14:40 +1000
Message-ID: <20250918061441.5488-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250918061441.5488-1-matt@traverse.com.au>
References: <20250918061441.5488-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding for the board (micro)controller on Ten64 family
boards[1].

The schema is simple and is (presently) only consumed by U-Boot, but it
is possible nvmem, watchdog and other features could be described in
the future, as well as extension to future Traverse boards.

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
Changes from v3:
- 'reg' property was changed to a constant (instead of array/maxItems:1),
  reflecting that the I2C endpoint is on a fixed address which cannot be 
  changed.
- Redundant paragraph describing functionality of the device removed

Due to these small, but substantive changes, I have not carried the
Reviewed-By: tag given to v3.

 .../traverse,ten64-controller.yaml            | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml

diff --git a/Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml b/Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml
new file mode 100644
index 0000000000000..08d02c4df8732
--- /dev/null
+++ b/Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/embedded-controller/traverse,ten64-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Traverse Ten64 board microcontroller
+
+maintainers:
+  - Mathew McBride <matt@traverse.com.au>
+
+description: |
+  The board microcontroller on the Ten64 board family is responsible for
+  management of power sources on the board, as well as signalling the SoC
+  to power on and reset.
+
+properties:
+  compatible:
+    const: traverse,ten64-controller
+
+  reg:
+    const: 0x7e
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        board-controller@7e {
+            compatible = "traverse,ten64-controller";
+            reg = <0x7e>;
+        };
+    };
-- 
2.45.1


