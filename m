Return-Path: <devicetree+bounces-80169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FF9917F76
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99BFA1F211A1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2998F17B405;
	Wed, 26 Jun 2024 11:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="iGiyZGdG";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="kZdrlyCw"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh3-smtp.messagingengine.com (fhigh3-smtp.messagingengine.com [103.168.172.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8860213AD11
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719400823; cv=none; b=ZYZxhpNBI5uxeWYpRUfFmVeZsVsdnThDnRrP51jdIMWCJBfOoeS12Mda2E+2h1UDdfwBgJuHDpLfXyYcmqgqJFIVHxHOe2e/hTFRRrrSG9DPCacJQc7IKiyn0+AxUzUefDvDsPXbQ6W0XCpn7A2P9IV/BNa+GD31VSD/PIMxucE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719400823; c=relaxed/simple;
	bh=Njq5BUNnusti/ai3nbKEY+KKl9/U8hgK5yIHPBDEHqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tyUNaN8u5leLUKckseTFdQ3slFXtGlpQUR+s6Gh/x8X1io+QZJyNV2Ph0RDBkvgmef4ax9KILDGHlK6e+QFZ8cSWGwzSuNDbo4gV6mRg0QqKhTog15kAc+e9v3fICix2ErVMUJJT6WH8Gt8JCujFOCJBVg71ImfqVoKqNA5HZPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=iGiyZGdG; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=kZdrlyCw; arc=none smtp.client-ip=103.168.172.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 9469A11403AC;
	Wed, 26 Jun 2024 07:20:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 26 Jun 2024 07:20:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1719400820; x=
	1719487220; bh=mLhz5wRdgvFejfKmkJJkTxium3mP7xD0GeXwlaQILgc=; b=i
	GiyZGdGkV9RMY43IFTaYixXd0kj7qDIwUk8EpSbinrSVI2HfAnQjuDYDSpWH64RS
	qPyz1jMhc3C5YKh/X/hOwSGCo8EGcRHiU1kukumEG7MyRzbmAJpfhZx2zLXpfACp
	u/iAT+Z0gdF1npK1+NOXfFKs6lhet4M88L3tlzwkQtsr40qTF+8pNooNZfGNSQrr
	ssuuRIf3AsdS5+flYFKjg/XTTW7HCaWEAk/LGtc+oDbkILdIkqDJuvQqC7rKAkoo
	hxTxFRZXvcM581rPO/MVNcP+mzNuRPOGcoRug3hu4TrK97NJYButyLsqN+pHGoRH
	gKHlqfU7maFDNIxKXvyTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719400820; x=
	1719487220; bh=mLhz5wRdgvFejfKmkJJkTxium3mP7xD0GeXwlaQILgc=; b=k
	ZdrlyCwC+We2PSW8F1pE4ASHY/fUWdrNeVppMKq3QRQky2E4yCrB6xQmbURXewPs
	6PX1Lhc1MmmcFmks1v8FlsM/ikTlJLi/nuF9zCU3XZT40HNaS7zmGSaLULGWqSVC
	16K/F656lSbmvh8sJiiRlb4at43HWXsBQbhDov4QeVEh/DmUMVrcSMeIPn8fM00z
	McWyfUEFq1K7QkFi4zJxyQdGj28WWQ5mxqalcz5fVg/R4eumO/HANfS59Hiy5P+q
	DLNjDO4A+457jaIOJiJD3e2TCI4eO1zHBYWBe68wphxyvYNDmqnDSSvBn4Y+zNEA
	SBLVHfYGjbKVdpZw8hlcw==
X-ME-Sender: <xms:dPl7Zrtc5J8dBcEh-hHr-bZjxMEUTZtNeQ8m-2CI3xVgqkc-5eJ60Q>
    <xme:dPl7ZseZ5S2sDTejtMyujQ5rSwAcVVieOnSprVyIoVJFgMRC6MiEy7sDr57rAqkch
    QlnApwWNz0qMCpWqQ>
X-ME-Received: <xmr:dPl7Zuybvx-8yzgz7IuidPFmDOh2MEQf2WkGb64R_ayK73klHGx8FcVLGu3RyhhGLM5Auu_tWP6dQchomoMbCJW2D_iBFXSTacbXsz6uhJ8rFwnM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrtddvgdeflecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcu
    hggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrth
    htvghrnhepfeffhfdujeekfeffffevgfffleelveegieekvddtheefieegvdejffejueek
    gefgnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghs
    thdrtghomh
X-ME-Proxy: <xmx:dPl7ZqPXHlXpM6iC8eBsA0a5Ri0BI563l_fWD4EOEh9X_JzUYTKkNQ>
    <xmx:dPl7Zr8GZlRkM3EVjVKqYYRV6ZhpJXEJOScNcZYQWtltxk-0CTfJXg>
    <xmx:dPl7ZqUVe_R82tMLl4U7o-u0tadmhiZVCcer94DMZc9vj5x3uJapWQ>
    <xmx:dPl7ZscGlCo6xNWDFk7pT93xkHsuylNUFjxNjCecuB3_xrT24vXKBA>
    <xmx:dPl7ZjO844cFc6X37XtymTscCoirdeTPrlwnXFmOJrAI8wYg4IGf-TK8>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 26 Jun 2024 07:20:15 -0400 (EDT)
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
Subject: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8 panel
Date: Wed, 26 Jun 2024 23:17:48 +1200
Message-ID: <20240626112005.248576-2-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240626112005.248576-1-ryan@testtoast.com>
References: <20240626112005.248576-1-ryan@testtoast.com>
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
however the preference is to use the integrating device vendor and name
where the OEM is unknown.

Alter the filename and compatible string to reflect the convention.

Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 .../{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml}     | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml} (81%)

diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
similarity index 81%
rename from Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
rename to Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
index 397c26be9bda5..a7d5ad0f29389 100644
--- a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-panel.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
+$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-panel.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
+title: Anbernic RG35XX (WL-355608-A8) 3.5" 640x480 24-bit IPS LCD panel
 
 maintainers:
   - Ryan Walklin <ryan@testtoast.com>
@@ -15,7 +15,7 @@ allOf:
 
 properties:
   compatible:
-    const: wl-355608-a8
+    const: anbernic,rg35xx-panel
 
   reg:
     maxItems: 1
@@ -41,7 +41,7 @@ examples:
         #size-cells = <0>;
 
         panel@0 {
-            compatible = "wl-355608-a8";
+            compatible = "anbernic,rg35xx-panel";
             reg = <0>;
 
             spi-3wire;
-- 
2.45.2


