Return-Path: <devicetree+bounces-147195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED6DA376DF
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 19:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4EE9167DC7
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 18:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50D01A08A6;
	Sun, 16 Feb 2025 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="iG99F3mJ";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="vzq66jYG"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A501A0714;
	Sun, 16 Feb 2025 18:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739731234; cv=none; b=f5hNTHbkPD5JN0ZMiV/KAH8Qs8EHYiH74QQ+7EvtnVZSN09MvjeyLv6Gk/azHhIwifkCJGhB68XSOgcO2l4lv5KGkA3DqoCE7lzWLwc7IuIClq6SG5SEapbFwztto7rtI4CJARyAfF/0PdXK8mxYqpTnS0ElPjRBtOiJUmqSO9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739731234; c=relaxed/simple;
	bh=Ct+Muw7MCCDwvd/3l6Jw/3dvyEMKoNpJSEqLbJh/HfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MXmwHKSOro/XLXBgw9npw+yabHRQMbKDg1OLOtQkE60aiqjPImtVnrO75ctYfMkeUkjbW25xtoWcX8sYkBxTWiNBWB6bmXAQStdaQu0VEkl9OR1bJlMua9gyVfufwcoJ+R7xArRa74Wt6ahkrAsecu5s3j4nYcYYoPI9tCH+O4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=iG99F3mJ; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=vzq66jYG; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 44FAA114009B;
	Sun, 16 Feb 2025 13:40:30 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Sun, 16 Feb 2025 13:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1739731230; x=
	1739817630; bh=MHFZi57lqGB7elcnnVw9vwRemFAicTlVo9LJ+zS40fQ=; b=i
	G99F3mJbOXIouy+T+w06ojkGWhkqIcY6N9P7fAOh19ja1/cNPkiDyLHCAZJcRYgJ
	GSgmvxiCiTLCldafHAoVWi+MRYJ1wdp/9+4LnUhS1iHXSOC/Cu267Ls3cWcbXBXW
	ZSioF9Jmkk9qLrjHQ7ZLs9BWVQyYqRZPaL0k8ecHlofrY1DRoLS9DOFgNnQeggP9
	0YVPM4bmqoM7MrwPFtnY5XRJSCBdLOM37D+cWmFDiHC+4CkM0g3nvK0Mj72Andhp
	4ZFrD0ykFMSGbdgTXqxWIhswTW1rKv6AIr4YBpOLg0VeeKNNscOl/sT18VdNyUGM
	9Ms+M1wjK5HMypPwAfh4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1739731230; x=1739817630; bh=M
	HFZi57lqGB7elcnnVw9vwRemFAicTlVo9LJ+zS40fQ=; b=vzq66jYGyrbmIo3Ln
	FMXVH9kQCOyHEevCE8P/3SvI+1v/7RoYcQsPKPMAMVQ5LkUgACEdiCVgckSS0tqX
	XopXzcl8HZOsztw7GjW6RTBrOF9i/CdI30f0Ow71EwCcGnFEQAxeCGCebYVoEGjb
	KmTqtTpnwkcc4z/rkTvcMkEOLMP09Xc+YcHZwuaiFIeUPrVEVzL6g0Sx63AU7Ibj
	TXNwPfQpzRjB6NWimOePNg9t1NvDKrzJN6gFO8OJUyRa0Y2Bh0LClWj20NLwCyOE
	mHtsxTjTIA7TQv0YiETRBCODfBED+vRIjXl2v+PaWkHylyG2IHea88RqOVQusK7x
	gDNsg==
X-ME-Sender: <xms:HTGyZ9-PnChoXI__3mtAcrAQdD8T3vBpdp355kGgIyhPZhGLMBN5uA>
    <xme:HTGyZxu4dT_OFjaMLUjwuIxrQC6Nz-NCUrxDg_bkTi3_KThhXAjPikr0_LUzA-glo
    vQhW4YQwCeq_2v6_w>
X-ME-Received: <xmr:HTGyZ7D9y-JWHaxEPSMgO4SVDpuiD77FywqOgl8sDCWl5UwqUh65G8igW3jNC3UUDY5RGFoXqcd9bl03ZiN5c8R08EQIBFGNRjwUPBnQpnzj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdehiedvudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddt
    necuhfhrohhmpefthigrnhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsth
    drtghomheqnecuggftrfgrthhtvghrnhepffehieffgedtgfffjeetveegfeekleeileek
    veeuteffteetudffveegieeiheetnecuvehluhhsthgvrhfuihiivgepheenucfrrghrrg
    hmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgt
    phhtthhopedvhedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhhrihhprghrug
    eskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfigvnhhssegtshhivgdrohhrghdprhgt
    phhtthhopehmrggrrhhtvghnrdhlrghnkhhhohhrshhtsehlihhnuhigrdhinhhtvghlrd
    gtohhmpdhrtghpthhtohepthiiihhmmhgvrhhmrghnnhesshhushgvrdguvgdprhgtphht
    thhopegrihhrlhhivggusehgmhgrihhlrdgtohhmpdhrtghpthhtohepuggrnhhivghlse
    hffhiflhhlrdgthhdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghi
    lhdrtghomhdprhgtphhtthhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgpdhrtg
    hpthhtoheprhhosghhsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:HTGyZxeQ6pnF20Vkq0ygRGPsxxocxnCkYr4mriKkvxI4E5O9LZgF1w>
    <xmx:HTGyZyPIy0nJqQGGz4j-jF5XTUsdw5pVNbNtGYSVBjbLOhx7miCkPw>
    <xmx:HTGyZzlFvtycBR8wUJL9dih390a83qIYa5bn-pMJiE58jFHsJOwn5Q>
    <xmx:HTGyZ8tAXqBEAesq8au5wAm0Q6Z1XJ-WZhHcEeYD3EJ0K7Mq6ewwUQ>
    <xmx:HjGyZ4XtHpyQRDadaSYm-xAuid72Q3hhK1l4y5cottzWdjO7y5R1ulDe>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Feb 2025 13:40:23 -0500 (EST)
From: Ryan Walklin <ryan@testtoast.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 22/27] dt-bindings: allwinner: add H616 DE33 mixer binding
Date: Mon, 17 Feb 2025 07:36:22 +1300
Message-ID: <20250216183710.8443-23-ryan@testtoast.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216183710.8443-3-ryan@testtoast.com>
References: <20250216183710.8443-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Allwinner H616 and variants have a new display engine revision
(DE33).

The mixer configuration registers are significantly different to the DE3
and DE2 revisions, being split into separate top and display blocks,
therefore a fallback for the mixer compatible is not provided.

Add a display engine mixer binding for the DE33.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>

---
Changelog v2..v3:
- Separate content into three patches for three separate subsystems

Changelog v5..v6:
- increase reg maxItems to 3 and add conditional for h616-de33
---
 .../allwinner,sun8i-a83t-de2-mixer.yaml       | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index b75c1ec686ad2..274f5e6327333 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -24,9 +24,11 @@ properties:
       - allwinner,sun50i-a64-de2-mixer-0
       - allwinner,sun50i-a64-de2-mixer-1
       - allwinner,sun50i-h6-de3-mixer-0
+      - allwinner,sun50i-h616-de33-mixer-0
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clocks:
     items:
@@ -61,6 +63,23 @@ properties:
     required:
       - port@1
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun50i-h616-de33-mixer-0
+
+    then:
+      properties:
+        reg:
+          maxItems: 3
+
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.48.1


