Return-Path: <devicetree+bounces-63309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CC98B45B6
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:06:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AA7C1F21E5A
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9EB481D3;
	Sat, 27 Apr 2024 11:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="rTTrh6gx";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="VnrHgus/"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD8E4C626
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714215985; cv=none; b=hT/n9CifLx50q2n3O9kBi32pSBMxkwIjqz2oeDn0EXqcPKfIvaSKxQoIXei2twdc2WRqHq8guEwo4hTVsD5VgfZ98Tcki+4rsPsyxBBI/rmmJnRyaxtvrrKiOOInf10ZKnw7BKct52tro20T6IoRoQh7/5JYrwU+4K38Dt18ntw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714215985; c=relaxed/simple;
	bh=CysdE3EhypL7GVo8RuquCABJ2inZOTRjeRyMjAhRqGc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X+h6nDIVEJEbh2PBLkuZZ/jvWffKMKQ5w7OcQ3Qt6JuA8GmChGgwVz8tNI+55vQxgUxudO02OqpcTAjmWnMWyQTgr7KP0st4/seDmHAHmnrws2y9kHg2arzN8nFEaC2MrGOjKILEtGOcL5FfrLosuQ5NaBLdxJrvd/2qlTXEN14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=rTTrh6gx; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=VnrHgus/; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id DF7FE11400C5;
	Sat, 27 Apr 2024 07:06:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Sat, 27 Apr 2024 07:06:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1714215982; x=
	1714302382; bh=zxB2kH+kdXdfo6Gn/8m+vqnDdwmgorJPCP5uSjnxdas=; b=r
	TTrh6gx1n01IMu7kwfxB0+BIVo604d5w0pIOoDk1RAYvWpSX2DP3tKmgVA7Ik6cs
	qo7cICeGpJd31s/knWOP9xEAMt8q4ScvPRAs1GXW2cjR6YH8rWib3FbOkNu/j/yZ
	IijJrUuOMlNg6npES1DsUUM0/KDSljr+V8BjIMDVH25q6rv7rKS16sjcVjYl35Wi
	4EnCUhXYZxYSx9/B6RMVBDKS0XoSRfB8yoyDjxsUPvKBbscv0EbhUBuQzDRS26Eb
	SZO9GrHwYGAlzvXzeR3fLufnaWBjsulF6m8IOD1jZtIgMO1Vya0G2dgOoZ6O+8Ra
	hEoy5aCY9WbuFMI9d1ZfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714215982; x=
	1714302382; bh=zxB2kH+kdXdfo6Gn/8m+vqnDdwmgorJPCP5uSjnxdas=; b=V
	nrHgus/hZ6lHglGVGByKk9SocmZRtrvbB4pl1E5LqTTTbUFqozDePp2o3UHFx32N
	ccrku/hOmY6W3uJkZ0pes1KZqS1v4Rx+fnpmWp12hn9H2obnJyJSksSqsQJ+4sXQ
	Jc+yvybGdkranil9G5xHZXmrv2tpqD2c8bXvaSoB/wb0PSRg9RFEjGWtTaAVjfa3
	Dhc1+uVhUAfF4J6l+fA3fFChihQzkGRSfF8jP9sgPAy+ZUgt72Z9u5pdAkALMhmr
	u6CCcgPtfqB+Q7jJvQ8NNttxsocr+ZRB3SRU3K+V56AWEkzA496AxLrovVBaxQ/W
	3wIgxZuwEYm82YbYY8tSg==
X-ME-Sender: <xms:LtwsZoJNO02jcJweAQeSKO_BFEoPuAjZWzUX-QtKToWIiL-3ChWUbQ>
    <xme:LtwsZoLosKGhZuqQGRQPRY2v_0l9avJCM2Ize421w_MzTQKS5fh7BPX4CcmV0O1Wd
    2W9aQU37zoGOxMi4Q>
X-ME-Received: <xmr:LtwsZosjcNQWaeBALMojDZ0a1fohhLGTIXFl-HXR29Yvz2hmBxx1XeV9gnVCnxKNWMVKOGItLjy8PivbZW0ERLzobvlqdG_Q390fHWEUvukZuWR->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtuddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfihrghn
    ucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrg
    htthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeevueetffetteduffevgeei
    ieehteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:LtwsZlZwtcZm4u3MUF-JIQkEOVsbXiYgQT4JIeAqWQRSMF6fTA6-JA>
    <xmx:LtwsZvbcuf0tiwzQ3s-KfqomhP2z7P0VJe4B9dRwjXf60_gBTkueXA>
    <xmx:LtwsZhC1Vozk1km9iaN-2xOhAoQ1XcgkKKskRcav_fjuQmAOshn_PQ>
    <xmx:LtwsZlYJ9eSNoF49kjmVbsiGa9GFkXOOtrKUvD3O8FUgiEjFdKO6rg>
    <xmx:LtwsZjQL7i2Qa5P9AO-znAqBz22erLH95iOITh_iQ5ANc7xnqKEhlWZB>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Apr 2024 07:06:19 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Ryan Walklin <ryan@testtoast.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/4] dt-bindings: arm: sunxi: document Anbernic RG35XX handheld gaming device variants
Date: Sat, 27 Apr 2024 23:02:24 +1200
Message-ID: <20240427110225.727472-4-ryan@testtoast.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240427110225.727472-2-ryan@testtoast.com>
References: <20240427110225.727472-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RG35XX 2024: Base version with Allwinner H700
RG35XX Plus: Adds Wifi/BT
RG35XX H: Adds second USB port and analog sticks to -Plus in horizontal form factor

Use three separate device descriptions rather than enum as per existing sunxi binding style.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 09d835db6db5..fc10f54561c9 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -56,6 +56,21 @@ properties:
           - const: anbernic,rg-nano
           - const: allwinner,sun8i-v3s
 
+      - description: Anbernic RG35XX (2024)
+      - items:
+          - const: anbernic,rg35xx-2024
+          - const: allwinner,sun50i-h700
+
+      - description: Anbernic RG35XX Plus
+      - items:
+          - const: anbernic,rg35xx-plus
+          - const: allwinner,sun50i-h700
+
+      - description: Anbernic RG35XX H
+      - items:
+          - const: anbernic,rg35xx-h
+          - const: allwinner,sun50i-h700
+
       - description: Amarula A64 Relic
         items:
           - const: amarula,a64-relic
-- 
2.44.0


