Return-Path: <devicetree+bounces-45542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE04F862576
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 14:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8863283279
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 13:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56FB74317B;
	Sat, 24 Feb 2024 13:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="tn8/8t7m"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C26B29438;
	Sat, 24 Feb 2024 13:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708782912; cv=none; b=NpsWXJcTXdq0fBERvwgcoxUoYCNqmf5RfAt9dktHYoMUpuiWPqZ8SAP0BssqhclVPRmiwUVmL/4R20I/XhyAKkt37QwLuJ98uvP6fSEoQynBuZ/PxQTPEyvQmsCsPyglzm9JmGa6VHPibvX4DrDuY0EQGewouaGk1Ae3Xlpdpjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708782912; c=relaxed/simple;
	bh=worLZTo9a3xOqnG2MGSIZHpGnCKBAdHSzTO+24Aiyj8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VH4OMuQ6WNQq2Zv0OuTQ+U0iZ3UsPSdLden5+BAOH6CaFTMHSfxSjo5JP2S7MPP9oTrpgaptlZVh62ZxqkYlH3Igy769FhxPG5ZdbcJ+7i4xx1pGW8TKgKX53KclO4iJD1V6FXxSuEaene13FLstNfnEUK7ewqsvnPC27tjIJEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=tn8/8t7m; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708782908; bh=worLZTo9a3xOqnG2MGSIZHpGnCKBAdHSzTO+24Aiyj8=;
	h=From:To:Cc:Subject:Date:References:From;
	b=tn8/8t7mgo1t0W+dgEr3h18KJxNXgTwIDGoRwGL0K1ToGMr+JXPkjDgWyZH3WlDaQ
	 ++ktmgqP+wztmcEKw37RGrWx2mGWU7p/XBN+Mxm9xwgW40Rqm6pGiFojY+B0rFK4gF
	 nuR/lqe88VaCCdfVDJ87ucvKDna7KxuCUsKoaukg=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Ondrej Jirman <megi@xff.cz>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev
Subject: [RESEND PATCH v2 1/5] dt-bindings: sound: Add jack-type property to sun8i-a33-codec
Date: Sat, 24 Feb 2024 14:54:54 +0100
Message-ID: <20240224135501.3822390-2-megi@xff.cz>
In-Reply-To: <20240224135501.3822390-1-megi@xff.cz>
References: <20240224135501.3822390-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ondrej Jirman <megi@xff.cz>

The codec driver needs to know what jack connector it is connected to
on the board. Add proprty to describe the type of connector.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 .../bindings/sound/allwinner,sun8i-a33-codec.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
index 63eadc4200ac..399fc00ad3f4 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
@@ -44,6 +44,15 @@ properties:
       - const: bus
       - const: mod
 
+  jack-type:
+    enum:
+      - headset
+      - headphone
+    description:
+      Type of jack connector connected to the codec. This can be either
+      a 3-pin headphone connector or 4-pin headset connector. If not
+      specified, jack detection is disabled.
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.43.0


