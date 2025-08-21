Return-Path: <devicetree+bounces-207194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C215BB2EDEF
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76624722F38
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7632629B781;
	Thu, 21 Aug 2025 06:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="ApAbjqVy";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="l8AfyutL"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E4D288C0E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755756692; cv=none; b=nhF+qf6YDso56Wws+SHyddjA6TTtW9bKRml4nkurT8dL6PuAmeVPYna4PgCo4eFNFYP3hXx0dyMFNMgvZfy4gJv7Z7iU+nRVt8Bw8Cyxcx+jxrrVM93Jb5EyNi9x5Ttz8BRw1vO4LE+hLayIQZVguMiXQ/yRVbmfjrcJTg1/K0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755756692; c=relaxed/simple;
	bh=YTpe15N4fdzSCCtch0HO/fiiE+Sz+mi3C0lesTstwbE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hh5sixsNM74BSlnCt6h6A31VsXqN9kytx1hRKHKFXet2vW08N7PwBQ3vUFUCKOzLauiwuTjf0EHzPD1NjQIyUnQ/qCqT6zcRVuQwpx5RgOhlvl4psxmutgRhS3NR3wFtXNM5nVVpqO0I9eMbSCI+/hLUMdWvgNWg79ThK0YPwb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=ApAbjqVy; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=l8AfyutL; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.phl.internal (Postfix) with ESMTP id A918DEC00E5;
	Thu, 21 Aug 2025 02:11:29 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Thu, 21 Aug 2025 02:11:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755756689; x=
	1755843089; bh=dy56BGyXUFeNC6+7rM4Q+DhOs5rjOSsjWVWdgWGAUws=; b=A
	pAbjqVyLCnwq4ocJtdJIJKIGax3+1SrCKPfO5+kZzUn2bjfGJ1RC0blgzV26ll9C
	+2R4zU3yLUKF4DW34lU3yH56g51yPqG9QasaXxjUavIQOyS8u0ikTeBgiDpbgD0M
	oSiUbChaBs093tKB0K4Qv1K/c/PJw8nR2b9/qmaI4xPRGkN20UpASaHJeZ3ZpcSb
	vMgUdXaToQURC1ALJa2o//nYLPrLerd4cvN0xweFdysyJcSGHPKY5EZ/GY3YmKPN
	4rjcmFA99YHPwkEsEuENCGUuBGrndlsdzjylJIgITqsaGYs+Sd/g52x/rqkMojo6
	8dalXZSMZoq2w98NVrCMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755756689; x=1755843089; bh=d
	y56BGyXUFeNC6+7rM4Q+DhOs5rjOSsjWVWdgWGAUws=; b=l8AfyutLuJSzYdGpA
	6GixLmequufsJUlhdCzLb9zAhUyieEoyGgPZ5zU3c0kjNQFVUAP3pKUT70dHFXGi
	TD4alGz7MSty5kPPgLhXvTKV0gBjesbhQzLv/SuP4wX8MV/EYMO68T32Iyc3SPs/
	F6KZJTppL5sZucoIcPYtNsRiz/bCy/bA2NcS2iNnyrsE5qE5eVsI7bvwO50kMhep
	kMxvaNNBfQUaXHwYbJSfbL6kt7aEF6bCMDmlBCc4gwr7+3zjcYlbxvZlqH1Hi5kY
	L5su5EmazhxngWjFBOFRAT5uqGTRcO4dE9lThadS0ju/W25pzAb5ytp5gi8QL4Ds
	ZVmlA==
X-ME-Sender: <xms:kbimaEOOqUt0vtp3zbPKLBaOuKbGBKgfznNlyldn3Hy4XgiN0Xjk3A>
    <xme:kbimaBsViU_qez81m1qK96tS620n44LPuYRvAUxykYKmfRJCEkcY3lV60zNEyzLFB
    OY6nTHtjbtRhMg6R1E>
X-ME-Received: <xmr:kbimaNAe7Bc7LoxWajHpIVgdL8ccgBZ_ycVZLJIMugXFXTx-mBD3MP9HLza2-1VWZ8UoSPRZUjBEfIbz2Xy3cdajFsEaaWJOWXV0RF9ZbM_gMEfnxNr4zR2UTfUNvwA4XAPdxuVKXXYI073996bb4tPL8so>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduiedtgeelucetufdoteggodetrf
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
X-ME-Proxy: <xmx:kbimaIbTFaKZZhLMRqg7oiaUoXYctH7Jy4VRGv8Rwee6jEuKpz2ymA>
    <xmx:kbimaIUpauC36FBcErg0GAU5JJ1sp2cLA3fMkMNv_H8x_vBrzHozbw>
    <xmx:kbimaHNbnQwhWMlp7BEyS4z8xrElkVkx0RmV_CBiXEyb0PuRsumypQ>
    <xmx:kbimaCb4ztgjmeu-0MonI_iBwhrR5_bTeRVg3suNRKAf4B4BPVdvKQ>
    <xmx:kbimaMEVDlUE5fkvjdgQ1KhikjEhIrKSIk8mQFNJ0KVHwqizeB9WZmIF>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Aug 2025 02:11:26 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 1/2] dt-bindings: mfd: add Traverse Ten64 board controller
Date: Thu, 21 Aug 2025 16:11:14 +1000
Message-ID: <20250821061115.18254-2-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250821061115.18254-1-matt@traverse.com.au>
References: <20250813023435.27776-2-matt@traverse.com.au>
 <20250821061115.18254-1-matt@traverse.com.au>
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
is possible that it could be consumed by nvmem or other type drivers in
the future, as well as extended to future Traverse boards.

The categorisation as a "MFD" follows that of comparable devices such
as "gw,gsc", "google,chros-ec" and "kontron,sl28cpld".

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 .../mfd/traverse,ten64-controller.yaml        | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml

diff --git a/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml b/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml
new file mode 100644
index 0000000000000..4e2f2063605cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/traverse,ten64-controller.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/traverse,ten64-controller.yaml#
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
+  Communication between the SoC and controller is via I2C, at a fixed address
+  of 0x7e. While the controller firmware implements several functions, there
+  are presently no parameters that are configurable by DT properties, except
+  those that are required of an I2C bus endpoint.
+
+properties:
+  compatible:
+    const: traverse,ten64-controller
+
+  reg:
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
+            compatible = "traverse,ten64-controller";
+            reg = <0x7e>;
+        };
+    };
-- 
2.45.1


