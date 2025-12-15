Return-Path: <devicetree+bounces-246646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A426CBE6B6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A036304DA10
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D080631A549;
	Mon, 15 Dec 2025 14:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WqE8Zvk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B2F3112DC
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809726; cv=none; b=gD0JNKsw5VR9jxqFq3T+iKJ0Q9ikKp+LrVEnLCIeb/umjkIxIOzRAreXGcj24clU5Z3YdFr+uHMFml4MFYXOCN1JNtQfwLCbd3UX7hiLkN2yt2cwdQqc92SB6RqWEjyN7ODOBjNHXl4xAc19o57aBxAs/clXZ2Vq+UaxytyArik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809726; c=relaxed/simple;
	bh=cob0Tfyv5UDCeaXp27/pjebA60syehUznwOe1AVD2+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eX8akeUB9oFA+BNdrySr5zOK1mIOtDa//KMa6i1V5+7Db5CeTVRXZifUVctfMkSA+SohRShs1mJECyFXWVFK/gYpEK5ES2mGqhKyf8aZCLlTwvo4PmtAGrg60gdV9bdYrW/dcLJmPWLSBJi1oNOjkMaSpnxkKh/RVcPJrCj7IEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WqE8Zvk0; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47118259fd8so35795645e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765809722; x=1766414522; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sjq9hqGMLWVJCvNIjz/5gdBLkm3Fm6/e56WlsVHAzOE=;
        b=WqE8Zvk0BmQIomj4HKAh9M9kmcmPB7Z7NkxV6M1Iv7Tj4Hnw5HyOMrEgT+S7HJ3Iht
         5JqWNhQZZWVFZlwDXSs0xTtG1/6DlBvho1Vo3F0h+GMJbP6ah0tSN9afqa9B/WJCVadk
         HzmJPDvIZ+GWKunrAEd8k5Ehoetdu1FP2vPylOUB8vjFCIrnF55TM+9Vo0C9JIjNlysX
         rbo8liVXpn7IYKusvBVIOUelfEi7AL7ActTbW5PUhAHkvjFtx9TEsI9nLXHRaS68Ny9F
         I0hLnh21FeaBc5FwqWnrGnbfKJsiKrnUp4tl9LapKQXdjKiQFexYhsIToysJDkSIJGrc
         LruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765809722; x=1766414522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sjq9hqGMLWVJCvNIjz/5gdBLkm3Fm6/e56WlsVHAzOE=;
        b=PrQfG1fDG5laEta8mUeWfSM7VXKSMttl/5fQSr/fef+hAKKdhHvYz2Bl3oLhPv5Cjk
         c8XD7HUe9eSG+fYPHCUmv52VBSABS0Ym1LFWkp/gmJU+JnVB+/5YgIyfGKsVqrHJtFFi
         ZgMx1DLNA8wSRUnPsxEhgrtkJfdX+3+zddzz3DYbeY2MqJ3DuCcFKkiv9sgS0mGEm9V3
         eY7W5RB1kc6CMOvlc2djLUxpHi3hdLizOyGmdk9wTmXO8XyhNhaYf46ZtHF6BnUKr1C/
         zf3/KY8OsbPyQLvoWzyxS/iqGiRPECfgcfOPvavtSF5WIxZOy+73TOofaUsi8ZWcK3co
         OiNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGTsNdChApGKf/8a+k0+Xek/6kDFiybhyqS1GAqeZfZ8IfWXC55jE+xiwbP3eBIYNwdnm6xrGAIIcb@vger.kernel.org
X-Gm-Message-State: AOJu0YySSMt+kAUx5euz+GOkCSMFbj3ooUxYIePSH4SA96KqNRegswPE
	3dOpQhOnuuzpKacEvX3+4jGlj3q6tttn00YSQcM7m7IDwgWcj/i/OKvjqqST4f6m1pQ=
X-Gm-Gg: AY/fxX79jeRZ3l6NQ/Rt/d44trC/FA7M0SslKgXnWPDEX7ghFl4ROu4WKRFwuaChlqE
	yyR30zppnoK1TREL8CuXEVu0fJTyhMm9reKpwrnX5chr1UFHBbsGXQUf8GrNj2SiuPKyEkHPrh2
	JarMTXQvmWJnSRdhjsyNh4d9oYvkrF2h/LI7rFf43Z7Rbq9zCc+XMNWBqCIi5XZn+hP/ouWm3Al
	e0WzI6wkmwncGwXWFkLkHLGVucjplLcz6zJ9oRlu2rKyBXkiQ9t6YlYkaA7xuWNDQH8m6dnD8IR
	WzaR6tSSTufGI+UfhfN3Ok6b5FDEOncIdYjtxvzFEwSR1cTEnPPz09NnchE+hmjelTdje/cGyT0
	Hzu3blmOGdKSSyM6WXRmUx6+oUXaljYxNTgNkkmxGy6tsKgWIeYzt0jJGtlHb7/SBdfHBt/8sf1
	umg1XzyJTPGHNA8dz/
X-Google-Smtp-Source: AGHT+IEETRagjZzldJ2K5KE+XtO7ZZwocvLnhZyjVLVzDdY/uQUKFKQkatHg2aZmOJSsMWrpNNBzSA==
X-Received: by 2002:a05:600c:8286:b0:477:7ab8:aba with SMTP id 5b1f17b1804b1-47a8f8ab861mr112263225e9.1.1765809721474;
        Mon, 15 Dec 2025 06:42:01 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fb7118267sm22168335f8f.27.2025.12.15.06.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:42:00 -0800 (PST)
Date: Mon, 15 Dec 2025 17:41:57 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jan Petrous <jan.petrous@oss.nxp.com>
Cc: s32@nxp.com, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linaro-s32@linaro.org
Subject: [PATCH v2 3/4] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <1ecafee4bd7dc3577adfc4ada8bcc50b5eb3e863.1765806521.git.dan.carpenter@linaro.org>
References: <cover.1765806521.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1765806521.git.dan.carpenter@linaro.org>

The S32 chipsets have a GPR region which has a miscellaneous registers
including the GMAC_0_CTRL_STS register.  Originally, this code accessed
that register in a sort of ad-hoc way, but it's cleaner to use a
syscon interface to access these registers.

We still need to maintain the old method of accessing the GMAC register
but using a syscon will let us access other registers more cleanly.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: Add the vendor prefix to the phandle
    Fix the documentation

 .../devicetree/bindings/net/nxp,s32-dwmac.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 2b8b74c5feec..a65036806d60 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -32,6 +32,15 @@ properties:
       - description: Main GMAC registers
       - description: GMAC PHY mode control register
 
+  nxp,phy-sel:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - description: phandle to the GPR syscon node
+      - description: offset of PHY selection register
+    description:
+      This is a phandle/offset pair.  The phandle points to the
+      GPR region and the offset is the GMAC_0_CTRL_STS register.
+
   interrupts:
     maxItems: 1
 
@@ -74,6 +83,7 @@ examples:
         compatible = "nxp,s32g2-dwmac";
         reg = <0x0 0x4033c000 0x0 0x2000>, /* gmac IP */
               <0x0 0x4007c004 0x0 0x4>;    /* GMAC_0_CTRL_STS */
+        nxp,phy-sel = <&gpr 0x4>;
         interrupt-parent = <&gic>;
         interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-names = "macirq";
-- 
2.51.0


