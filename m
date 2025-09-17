Return-Path: <devicetree+bounces-218132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA68B7F78A
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:43:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EDC33A6D02
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 01:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250B421578F;
	Wed, 17 Sep 2025 01:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="YxkVH3dz";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="UB/vZThn"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a1-smtp.messagingengine.com (fout-a1-smtp.messagingengine.com [103.168.172.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5151E32B9
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071996; cv=none; b=OksFdnbKtwq8ISe3NjhXTr5cFzoDuFRtQToqkYivDD0eib/SO4+iSl7U8DoP+9XifJ0jdtAXhccN5CPhgvrNoXHYvs/FiZ6++bBmVmPoxlxDc7upik3Z02XNxRAJ+ExPmRvRJPSwlrHnpNT2KaplRCWgQ6QE1wBNwy/h9dPl8Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071996; c=relaxed/simple;
	bh=3OiPGxdxEQWbgsXbLFQAv1gyo+FbQoBuF88/7sV98dg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TcyZ2Qdzn1P55pb+wCcgNajeCIzZzZyeCaGRM2fW0/9j6kIGGN2mVTWaOPOHrasyW1hUaMIs6Hl53MlbOSg8QvrM966I1Lt3NEdlOlXuKgkXhyhz2UyniTUopDUiynY/lcLOGoRJkhzdFxcBycgkpA0KJQOYZa9ZdiJmvNG5EzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=YxkVH3dz; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=UB/vZThn; arc=none smtp.client-ip=103.168.172.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfout.phl.internal (Postfix) with ESMTP id 72718EC0217;
	Tue, 16 Sep 2025 21:19:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Tue, 16 Sep 2025 21:19:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1758071993; x=
	1758158393; bh=grnlztG7UYsYqQMC7zz6egWWB2Zgq5/oqI4cPgpS/bU=; b=Y
	xkVH3dzEcoOIogHvMHdcKMQFiExx7G2kmPU5wRm4rlH5IenjWXRrlqOAUIQKV974
	4EuCq2nUDaWrPiKqRQV7a+eqsnfB4ozlEtS2lNsFWGkIRKs/Q5sBakICPhtBmbHX
	zajuGQFgrkkPOzQ/k2b8S8S8QPsD07k+jBfQf0ceUDtxqr8agv6dDXoCV5ZOwkRO
	a5u0w3nxlb8RYIuC/SDKAiMhbw/33jIx0Rqbw5GVVQFKp1zESJ4WNzSwj78VFV5z
	ZP2gR3LPWaTbRQEGUcb8zMSwmYNfeQnSu2F2Aazez2opFXnRHNH4YAr0yPiQkX8H
	M4vPZY2OKTzViI1SzPdOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1758071993; x=1758158393; bh=g
	rnlztG7UYsYqQMC7zz6egWWB2Zgq5/oqI4cPgpS/bU=; b=UB/vZThn7BH7UzkdP
	g1OmUxgo8qSjX25/rmBWESb7snR31atsrog1PbE3fS1IFKEv44OVkD+f7r0/UhI+
	Qp/SbGG+wQgxEei7sOhAvRwtE77ifCObW6iBvYCSYewGQuMDN43yBbeN5pNb1vCg
	gsltR/kz51uCT6UhOERlxGFrTM8Tnqqdlowfk6DMJUr4MOhdcHO/XOEvSfVRckTf
	08JtBpe6NKyNrllujG7LGor5/wNOOffpB8W3Fh+O0HTeH5X/CPKRkP6WmKSlOCZA
	zxF/21julguqHw91SZrU/2VE6CfiTQylqzhp1MueVEVNFE1ul5Dx4ibWAoT2fLy/
	UGVtw==
X-ME-Sender: <xms:uQzKaFpdWffUaOjgyg5vYS0Wc9ubR5t6jY3ENocDkdPO3xp0xS4WmA>
    <xme:uQzKaKN7l-gDNTQSbHn8SKiTffmYtBazl64WenW7-gapD5E_WUSyJI5gdW496QYGl
    3s3bbRuN_bR2HEtpoc>
X-ME-Received: <xmr:uQzKaF3r9fxwvZWhfwoMzoKGuvUPCcX6A_uAFmTDbMntEhsF7BKavIGD5HVFQv3BuxCFjS8TDzSWVZiYQMkwhkGNV92KRqwI7kTK9Yajr5KgZfCgUUSy9muULbl5Fo7Orq9qzHnxihv355MFQG0wKCwOL3M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegvdduudcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:uQzKaBB6c1M309Jr_EuY_XQdfw297VwrXu1iJSOyKq_SPrE0rcERuQ>
    <xmx:uQzKaKKIFTDg2XXrqQGSAnBRKPKIv9cFP89a-aoEBgFRTdhTn3O2-A>
    <xmx:uQzKaClv5lS7xMdBg1IDV537WNDjSCNkxKpO2O-KLx-W8uszxf9seQ>
    <xmx:uQzKaLYmz_7PR3HFlRGasaTEl2NpWJfKOVjRIZqt7h0EDAoPf6gzcw>
    <xmx:uQzKaOc6P5AgwCuZcvz9qDVLYjL50d2c0nvCTQzQlYTXJCnGMmRx0wOa>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 21:19:50 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v4 1/2] dt-bindings: embedded-controller: add Traverse Ten64 board controller
Date: Wed, 17 Sep 2025 11:19:39 +1000
Message-ID: <20250917011940.9880-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250917011940.9880-1-matt@traverse.com.au>
References: <20250917011940.9880-1-matt@traverse.com.au>
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


