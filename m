Return-Path: <devicetree+bounces-215546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B6BB51D4A
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 18:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63E257A5F66
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC2C32A835;
	Wed, 10 Sep 2025 16:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="u+J6hsC7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D47A25A35F
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757520990; cv=none; b=GbFZ/ugRJ5NzBy9tM80bSu1wRW9sZMRJNq0eJnGteKmGNzX+KqFDFVZ+fATxV/+nJutG5pns9mjlpE9WPwQV1ak9r9DkyocJ4OCwjkXnqd/a1lL2TeJD7fEy+QH7pDbUNLn9W7U/VFsvf2zeTyr9ZDcxZ0DJNSjQebYsfxVT0mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757520990; c=relaxed/simple;
	bh=3zZCd4F5TNJy+F1irODC06X4kSaGRUOro4Xbmp9NzTc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VYFUhi+Swq7r+17IWabI9A7i4ZXiS0nTZ4mNUrt9nlyHRmgoKuv0PWAcBmOyaLyhDFvbcwkJHZQ2Rdh/nvid+UIhQvdEhtiaCtiJ02j1tsxZgMDfS36LRpNHTaIhvs+4RYdLgNqhVKmfhmkeEyin/mOsupsG1zr+d5xCjh7bKSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=u+J6hsC7; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7C7AD1A0D5A;
	Wed, 10 Sep 2025 16:16:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 66436606D4;
	Wed, 10 Sep 2025 16:16:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 23702102F2915;
	Wed, 10 Sep 2025 18:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757520985; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=AM4ZgSHOUeHDIPf7yX4LJ/KF76YVa1eQBXVvqrWoGMs=;
	b=u+J6hsC7ooDoxnDGLzRcmYF1x+hfTYFcE2E2MZs5SPRcny4iWEidnvVKcnD2U4CEFCitPx
	36vCIE2CbBXFEXNLNbgflYGc4MS+Xd9wC9k/ruvSWxS1eQ1teFliGPF2g8s5TiI3IbB3tI
	4FletdLCm02B+iwLww9fM6k477a8f7Ys7ck963JsjCuxgk//KbM1ePvvYcRfxsvtvpgeCK
	N7q3OrPxg84warMgwJ8gW4HyDwc8GW3liqLtBR+S/ml7eI/Xf2ViBtlv0KjlGCIeowLwuT
	tFxCn4Sg1IOTKJs4x84G9F+VN7i1FWvRbswymdvvJYeO7OTVpRIJSnkCrNuwXg==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 10 Sep 2025 18:15:30 +0200
Subject: [PATCH net v5 1/5] dt-bindings: net: cdns,macb: allow tsu_clk
 without tx_clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250910-macb-fixes-v5-1-f413a3601ce4@bootlin.com>
References: <20250910-macb-fixes-v5-0-f413a3601ce4@bootlin.com>
In-Reply-To: <20250910-macb-fixes-v5-0-f413a3601ce4@bootlin.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Harini Katakam <harini.katakam@xilinx.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3

Allow providing tsu_clk without a tx_clk as both are optional.

This is about relaxing unneeded constraints. It so happened that in the
past HW that needed a tsu_clk always needed a tx_clk.

Fixes: 4e5b6de1f46d ("dt-bindings: net: cdns,macb: Convert to json-schema")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 Documentation/devicetree/bindings/net/cdns,macb.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
index 559d0f733e7e7ac2909b87ab759be51d59be51c2..6e20d67e7628cd9dcef6e430b2a49eeedd0991a7 100644
--- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
+++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
@@ -85,7 +85,7 @@ properties:
     items:
       - enum: [ ether_clk, hclk, pclk ]
       - enum: [ hclk, pclk ]
-      - const: tx_clk
+      - enum: [ tx_clk, tsu_clk ]
       - enum: [ rx_clk, tsu_clk ]
       - const: tsu_clk
 

-- 
2.51.0


