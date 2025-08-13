Return-Path: <devicetree+bounces-204037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B62FFB23E49
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 04:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 527CB6E3AE5
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 02:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A6E1917F4;
	Wed, 13 Aug 2025 02:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="jlhGdGtT";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="f+ktbM7o"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E01547D2
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755052500; cv=none; b=mA7pX7vu9rnDGbp89TBl32H5byfQxhumz4vZZPloxYYYvKc1c/k1UqcrBmPACixCmKzVPwV/PnB7KpYUyfkpdcD3E3GBWv6vre1aYkZ/WcfMyXsdbstuseVtjC0ihinat/4rBn+t+cTIK8YUPBSyA1KZd+YGxzouXglD0AMHH3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755052500; c=relaxed/simple;
	bh=P2NrG9VeCO8BN0ebm4ys+dxVjbKD6pUkH+HLdaOe1to=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V7KuAWg3R/7uVqCHix6n31Jjim1GqCUT+dp73uwjKN4MLMgHjlrYpbwcCRl8DN2MikZGFQ3cJX6pUvh3AklTrO5LsmYZg8m+hKC1aHiG3YJvB8XxCcvyrQ/v6f7TEg61/hjqOwPUb+H0unv7B8U4DXoG8/b1roQ5X115FrgO3mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=jlhGdGtT; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=f+ktbM7o; arc=none smtp.client-ip=202.12.124.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfhigh.stl.internal (Postfix) with ESMTP id DF9647A00C4;
	Tue, 12 Aug 2025 22:34:56 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Tue, 12 Aug 2025 22:34:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755052496; x=
	1755138896; bh=CkeP2m3y81BmBqAzeVGSHW+GitZ+LG4b3Rv5WVj5sfY=; b=j
	lhGdGtT7nkkpSOtYqdlb43MAMNOUJTvUy9/TeA8jt/5ThK+FeN3zfM6ojbNJyl5U
	c52sGn1OsGmgFcqkt3dpsZIyUJSstuBhY4D7FZXEWVLsDewNatVw2hnv9pTZwZpn
	xPuFUOjRlR5f/IKvE+JTyRosQapu9hhpbz63l6/+7X0WxqvAGAFG4zARbimwHGPV
	iJL1FMKqgikbo7j7bqW2JvaraTuLvdR1LoSq4ZUJdOu+n3wTng3q1/Kjr7BU/6qW
	xCG0Re6gCBNixdRT0uJiz9emj5YR9CUKGxAguKKXXRVFms3q5cJN8qIfl17Z7qC8
	L4FKWV2YFnEpmTUJaYUqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755052496; x=1755138896; bh=C
	keP2m3y81BmBqAzeVGSHW+GitZ+LG4b3Rv5WVj5sfY=; b=f+ktbM7oVnMA+yt0t
	3IOh19JKIz2GpXoptppxG+pZSXC2Ks71F6DeVZ+OmlDhLQYuuQlwZc9K7XaTpUgv
	SiAbh6BVAnIFQPMKy4kg+snyU1YhEL+ufwJKaZ50xvq5E4Fo6Mm19iziXsXqfMf4
	//sRe/Q2NCxPurqxIVEa0IQugVV7HWCyNzwBYH8nqXwY92vqTzepaj609Q9IWLJf
	UknuM2Rf85p39mrnHMUeI5xmYFlCoP8sbTsft8ISEi4cfp3KtJFCo2NQTNR9pHop
	jhNlFEr42dBXwNFwUBrburFqhoKEHpjaWkguGNDegHM+0+3ahiKjQ5MN7CfRihvR
	zA0Pw==
X-ME-Sender: <xms:0PmbaCh3RNuvP1p5Hl7_69ezyZaOPudEe1LPSUBFTh7XHcPuRF3HGg>
    <xme:0PmbaJz81-rYDFcArhSsiF8INWG8fVflvHwDjfBMT-JWPCtx6xxWcJk3Ns_M2bEat
    k140J9-RrIMvP3C500>
X-ME-Received: <xmr:0PmbaL2WbmXpTt5kFIP6FXAtUDie4hZSsYLIzbO_2MunUpCQ-a5htwga2dL57BSXEm5gkUXi9x9rYk81x3qq5i4vPFcm5rx4M6AlwLrg-4RGbuYxD70wUu0cJjRWfI3_F9ucr5c9-joRbzqVKWP4uGq5r_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufeejtddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpedtveffiefhgfduiefhgfduuddvueeukeetkedviefhgeevlefgffev
    gefhgeeigfenucffohhmrghinhepthhrrghvvghrshgvrdgtohhmrdgruhdpuggvvhhitg
    gvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtth
    hopeekpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvghvihgtvghtrhgvvges
    vhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvg
    hrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehshhgr
    fihnghhuoheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhsehkvghrnhgvlh
    drohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphht
    thhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhgvvgeskh
    gvrhhnvghlrdhorhhgpdhrtghpthhtohepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdr
    rghu
X-ME-Proxy: <xmx:0PmbaG_R3e5yH229-8PcAh3IMx7SddGBxdMWrq5C4b5YokTW1pCYGQ>
    <xmx:0PmbaLqbfGAU1gEoYqx8LNhTOEbYa0uBX9g9f9mcISy3qyXROx-GMQ>
    <xmx:0PmbaASa72WkloH-GVwxRq_MKzYiyc3qC3uG0IuKxdvixDc1tvo_Ww>
    <xmx:0PmbaOPhtTB27xByGbzh2ouIf2cva24HjC8uM7R1ZU4PylkjFQgt0Q>
    <xmx:0PmbaE6TJHie2cP0bDrDCkwsAE-v2EYPF9f-c0kuiLj_WGWrZCOElqwU>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Aug 2025 22:34:53 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 1/2] dt-bindings: mfd: add Traverse Ten64 board controller
Date: Wed, 13 Aug 2025 12:34:34 +1000
Message-ID: <20250813023435.27776-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20230501064727.8921-1-matt@traverse.com.au>
References: <20230501064727.8921-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the device tree binding for the board
(micro)controller on Ten64 family boards[1].

The schema is simple and is (presently) only
consumed by U-Boot, but it is possible that
it could be consumed by nvmem or other type
drivers in the future, as well as extended
to future Traverse boards.

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 .../mfd/traverse,ten64-controller.yaml        | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml

diff --git a/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml b/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml
new file mode 100644
index 000000000000..13fed94e8406
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/traverse,ten64-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Traverse Ten64 board microontroller
+
+maintainers:
+  - Mathew McBride <matt@traverse.com.au>
+
+description: |
+  The board microcontroller on the Ten64 board family is
+  reponsible for management of power sources on the board,
+  as well as signalling the SoC to power on and reset.
+  It also implements useful auxiliary functions like bootcount,
+  serial/MAC address storage and scratch registers.
+
+properties:
+  compatible:
+    const: traverse,ten64-controller
+
+  reg:
+    description:
+      I2C device address.
+    maxItems: 1
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
+          compatible = "traverse,ten64-controller";
+          reg = <0x7e>;
+        };
+    };
-- 
2.43.0


