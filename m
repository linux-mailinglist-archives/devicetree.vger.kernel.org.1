Return-Path: <devicetree+bounces-99710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A59096ADD0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 03:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1341E2872C9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 01:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C21A33E1;
	Wed,  4 Sep 2024 01:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="Q8b2PYZq";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="dxe54heQ"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFAB6FD3
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 01:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725413122; cv=none; b=Xbz4iUWmYLl5UPlSPodxFdvyMrq2z6de1gPX0zVmTXXjTlXyw226vqVUxbrg3NgPJ+iMvt6qkC9vdgphPraS93YidoJHx5GrPtYBMIuQkFKHYHqoWOtRyq4DOBpE26/bpQUEr2clqDLEPr2Hc89Z9gdw0Sfr7kRVCuFNuXvwajw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725413122; c=relaxed/simple;
	bh=GXzt3gc2iDsq+a8BCjcZgqgvbf3QW7uEYlAlIDRAUig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UKk+uKP9ZYRChd/QORU0qfBKxjMBEv/7tuhxV8Rd1/FZ1xSE9cw2UaRxs2AhinwMfQ57rBc4bONtQw49QC7W+jae0FrugdO/PaezqjWXTxXiEsf1/EUb15SbtInqO2vYzIRT6+Cp7tCbK5Dc+xYcVSRtHGNswMMRRxSqnF80I8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=Q8b2PYZq; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=dxe54heQ; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id C23A611401EA;
	Tue,  3 Sep 2024 21:25:19 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 03 Sep 2024 21:25:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1725413119; x=
	1725499519; bh=+Tw9Y8rD38yn1S2PKnQi19g1SPbVcR2f5EbjulKn3Aw=; b=Q
	8b2PYZqQJaUL1idSgPPnDKAykpBUWEQXdsp3JIkcCuPkflFyaHbbwI3pa90BAllQ
	02rmcgEpN4NOKq8rYPN1kp0VKgUNICi352bOxIVtd7qkDtQ7ZfrV7aVDhTWP/SZh
	dOjr7tk07VIZTPStxQ98zs4ymxYHbNUL6ti6QDH6nD0CNtss3VdGX17zBWi7ZBAV
	sa1tPpWEvtPRx6O+0zOzV2Y5DkW/q/xlaWBW/pw44R0qAoY3UNle1A/gR1RY0N8N
	d/QvR3HA77yC3sBmRwmP+lo7GTKuHUS4GZS2RjWwECTiXCUNuYa8HQ3fEQQyNQc1
	4k9o3cpLJw4IjSKmOlhYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725413119; x=
	1725499519; bh=+Tw9Y8rD38yn1S2PKnQi19g1SPbVcR2f5EbjulKn3Aw=; b=d
	xe54heQSVE5q69yMHPfeQ8FRl+O1x6g/XwHf8FYcdUxvvNvtGj02CWMDL5ztdJEv
	hTVEmbwy+Azwg+rdsGlcZR0qF/s9hRghSWy56StxDbupypYwfA7D6Wl8LCNcxd9s
	kWiEgI8/pi3JiC6naR9mkNXtZm+cnxazizpS4Y3mi7FfRYa85FbTJjPqkMz8EjfR
	d9rOWGBjCqzNRaryUu4AHIeD9UPSZFeMEumC/vuSui3kiv2VJvoPJX1kVug2UqYD
	Tt3gOwLWRrjCmxb8s/12oJ8QXbnZx2JQt06QbyfYTUR10LG7iYI+0KUeqv2mzoR8
	ZmZxsIOMmeP7o6LEoLWSg==
X-ME-Sender: <xms:_7bXZju8xSa_t_ddaT0Fsqf8yDAUECyzhJfoUrVjHdvDj5nwzNhRgw>
    <xme:_7bXZkdDqCHp8HR-gs89AvKQvuaAsQFfYhRf2FBHqLDwr2AhQxns-P9CrhewSmbIR
    fLiNgzQ6D72gW92_Q>
X-ME-Received: <xmr:_7bXZmzH6g-5U62_R1NCzwucgsdNWrTt9oVyRDYOTky3GPxBfO-MmXsgqtvilRK0jXBIUgVodFR5z1I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehiedggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeeuiedtgeeltddvkeeigfetheelkeelgeegieeg
    gefgudffjedutdekhfejkeelffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghpth
    htohepudeipdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegurhhiqdguvghvvghl
    sehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdhrtghpthhtohepuggvvhhitg
    gvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvihhlrdgr
    rhhmshhtrhhonhhgsehlihhnrghrohdrohhrghdprhgtphhtthhopehquhhitggpjhgvsh
    hsiihhrghnsehquhhitghinhgtrdgtohhmpdhrtghpthhtohepshgrmhesrhgrvhhnsgho
    rhhgrdhorhhgpdhrtghpthhtoheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtph
    htthhopegurghnihgvlhesfhhffihllhdrtghhpdhrtghpthhtohepmhgrrghrthgvnhdr
    lhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehmrh
    hiphgrrhgusehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:_7bXZiNdlXpBMbyery1qdwG3kCATkkO3gF5-4F_1FiSuaV6Vx_7R3A>
    <xmx:_7bXZj_ezdWplhzeat59CopPi15p9QS6eItXxlfOYjs8mwHgz5Gd_A>
    <xmx:_7bXZiXXTgMrlzDCydaLDbUAMxHIRXlUmKipJZFwtDuLd2Ppgtp5WA>
    <xmx:_7bXZkdqlhyS4V1DHFnmnwScG41ftXfMWuNCi9zvWCMETXJtnCipQA>
    <xmx:_7bXZrO3dnzXbUcqR65SSbYp71znrySKTdPU73Osvi_HyucU1vye4xX->
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Sep 2024 21:25:15 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Rename WL-355608-A8 panel to rg35xx-*-panel
Date: Wed,  4 Sep 2024 13:23:21 +1200
Message-ID: <20240904012456.35429-2-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904012456.35429-1-ryan@testtoast.com>
References: <20240904012456.35429-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
OEM used in a number of handheld gaming devices made by Anbernic.
Previously committed using the OEM serial without a vendor prefix,
however following subsequent discussion the preference is to use the
integrating device vendor and name where the OEM is unknown.

There are 4 RG35XX series devices from Anbernic based on an Allwinner
H700 SoC using this panel, with the -Plus variant introduced first.
Therefore the -Plus is used as the fallback for the subsequent -H,
-2024, and -SP devices.

Alter the filename and compatible string to reflect the convention.

Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

--
Changelog v1..v2:
- Use known panel serial for compatible name rather than referencing
  integrating devices as per feedback [1] from DT maintainers.

 Changelog v2..v3:
 - Use integrating device names rather than panel serial number for
   compatible string as per further maintainer feedback [2].

 [1] https://lore.kernel.org/linux-devicetree/8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com/#t

 [2] https://lore.kernel.org/dri-devel/6ab54fb5-8723-457d-b5e6-483f82faf30e@app.fastmail.com/
---
 ...08-a8.yaml => anbernic,rg35xx-plus-panel.yaml} | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)
 rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,rg35xx-plus-panel.yaml} (67%)

diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-panel.yaml
similarity index 67%
rename from Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
rename to Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-panel.yaml
index e552d01b52b97..1d67492ebd3b4 100644
--- a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-plus-panel.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
+$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-plus-panel.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
+title: Anbernic RG35XX series (WL-355608-A8) 3.5" 640x480 24-bit IPS LCD panel
 
 maintainers:
   - Ryan Walklin <ryan@testtoast.com>
@@ -15,7 +15,14 @@ allOf:
 
 properties:
   compatible:
-    const: wl-355608-a8
+    oneOf:
+      - const: anbernic,rg35xx-plus-panel
+      - items:
+          - enum:
+              - anbernic,rg35xx-2024-panel
+              - anbernic,rg35xx-h-panel
+              - anbernic,rg35xx-sp-panel
+          - const: anbernic,rg35xx-plus-panel
 
   reg:
     maxItems: 1
@@ -40,7 +47,7 @@ examples:
         #size-cells = <0>;
 
         panel@0 {
-            compatible = "wl-355608-a8";
+            compatible = "anbernic,rg35xx-plus-panel";
             reg = <0>;
 
             spi-3wire;
-- 
2.46.0


