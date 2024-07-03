Return-Path: <devicetree+bounces-82758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C769259A1
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:47:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E3C6FB27F84
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A2E1741D1;
	Wed,  3 Jul 2024 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="BSISF1NL";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="X/pjSaSR"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh2-smtp.messagingengine.com (fhigh2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCAD173352
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720003057; cv=none; b=t/D/EqOkV+W7lXhZvGLxXLOHXmWoe0PxrrgNygj6GIVepsh+B65s8ilW+/Ify2exezvefQblf803caIF2RULHQZ7W+hf9HYdLaUFBfAfAxF2oDFJwHZBBXU93YkOEDbFBVssxlS5P5/0tRFA3cuwjZ7tu8UI/KmCjmg+iOdOfBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720003057; c=relaxed/simple;
	bh=VI4dkusebnzAUBM5z8M/p0mTP73Hw4Vd4bnz+0FGf/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ga3TQ1EcRLqR0e4nHACv5fAHLdbXaY1L3b4G7hJ/7Ho3DCS8odsLzqx5YHkYqe2B8s8SdfzncHAwSlmCd7CrXUKWXw9cHeN9iXA9OcUFO5ftokjSE9OK/AT7oHrH34isy5yXDmBdtaRElDoQdDOKoq0rE4k+PSTstnIRawvwPSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=BSISF1NL; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=X/pjSaSR; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 0C31411402CE;
	Wed,  3 Jul 2024 06:37:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 03 Jul 2024 06:37:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1720003055; x=
	1720089455; bh=jRCs1Ssbw4a0DEGFbJAhYAYCUYqE3QIWH0ZqmomVy9o=; b=B
	SISF1NLmLbp1KlsEzaSfLAqYGUUIdh9bRyFnt45/3N9ARMCzKZOv/XPGC3OTbsiy
	PfuwtrDSqwMccW5R3aXLWDN3XXYFergJ/h7hySk/bxuSxva/LvsP7dv8tJKEaucM
	LT7z75qkRb9E/0j5ie+Ep97GK0pOvKU7rNvTLiCLfVf0bo++vyztBjZh4KjnXf5r
	TdQFnlBF+pND/DKDiTYFuGqcC7Ec3NQRhON2Ox2w/6WqC3FfiH4wM3I7Hk+EH7BP
	rLyj/lrk4ZSW3P2p7k2D2S9vbH2i5v12sg+1HPyCHARt9uYfej5t7b3FF98Zinlh
	ME0fme2QmFdRIFg0Y1Peg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1720003055; x=
	1720089455; bh=jRCs1Ssbw4a0DEGFbJAhYAYCUYqE3QIWH0ZqmomVy9o=; b=X
	/pjSaSRQlr1ivMrWO9cx8CgP5KQuHlgtarf2PwOW/ubEWa1gbC81dtWaF4D0OFzr
	qF4hwtubhzIwMWvYAG3U2l/lyeTPegd2gZN1owv6n/2b3c1/hlHuzikRSaaqiyhP
	j4Na4AR8N6AdU/HZIUnZPnNPjo5t6eZPH3j2pUT9+kwlVET06EkHt4Ao2NsybM9H
	SVC4GaQxgdflm/UIDNoqoo4GlNMO/PWRl5ZI6o/tzwj30ml5BOYDs9i7J0il9Yme
	0iWzq/yr12NnWGW/9utW2TUi9ad/Z0xpp4rFRDYRToFTlykAVNEC+p9G2/UOAgAI
	Ha8u1JtF3jorEIUvhI56g==
X-ME-Sender: <xms:7imFZjm72LcT4LMrun-uvU6xHej_xPURPeVuWADphoqj6-KlBTuU_g>
    <xme:7imFZm0J_003kqn3cLOn9n3a81L0Lc_yWUZB5evwHDtiqcCekojHkdLU-Fu7Dj5eO
    UVnBgIOaLtrWNVcug>
X-ME-Received: <xmr:7imFZppJ64VQ767x8XzkIwX8MRRdxYmSDwES1eCEwSARgb10ZhPKzBRmPOxIDl9mCLg1JdggxywcVgwASC5XniPjm5lx7nEKINIztRGT4NVzABso>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejgdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcu
    hggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrth
    htvghrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieei
    heetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprh
    ihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:7imFZrkeKhTvucIIiw1qdbTl37cTrloNF-hW_8UCguoRo5Nn1G9T3Q>
    <xmx:7imFZh0PWWoTFp-KDIR4qX-ydvovFASTD2rjqm_nU-4JdydDp7hI9A>
    <xmx:7imFZqsZIuGlsWlD6JzvdLHImNd3TzXF9jH6vZu6DY6XPRl1rw3OsA>
    <xmx:7imFZlUh1uSyf5nmJPG_GQa9bQSBPhGeEG5K5Jimhp6fk7zjq2knuA>
    <xmx:7ymFZiFp6uxI0wcCbx6F_6NCyMje1kfAFXZEgvlAy_Wz67nxVo5D2EnV>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 06:37:30 -0400 (EDT)
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
Subject: [PATCH v2 3/3] dt-bindings: display: panel: correct Anbernic RG35XX panel example
Date: Wed,  3 Jul 2024 22:31:46 +1200
Message-ID: <20240703103710.31169-4-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240703103710.31169-1-ryan@testtoast.com>
References: <20240703103710.31169-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dt_bindings_check reports that sck-gpios and num-chipselects are
required for spi nodes, therefore add these to the example.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 .../bindings/display/panel/anbernic,wl-355608-a8.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.yaml
index dde3600f0189c..bbe016453c9b2 100644
--- a/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.yaml
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,wl-355608-a8.yaml
@@ -40,6 +40,9 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
+        sck-gpios = <&pio 8 9 GPIO_ACTIVE_HIGH>; // PI9
+        num-chipselects = <1>;
+
         panel@0 {
             compatible = "anbernic,wl-355608-a8";
             reg = <0>;
-- 
2.45.2


