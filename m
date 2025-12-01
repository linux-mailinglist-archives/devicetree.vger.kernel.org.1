Return-Path: <devicetree+bounces-243418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5B6C978B2
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 017E03A4AB3
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0128B3164C5;
	Mon,  1 Dec 2025 13:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ppKiRlFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ACB3101BB
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594516; cv=none; b=W4W3CUDGthpuXyPoN0EmiJkVM3OlvM2dUMEhRcUEkUVtEajzXR9zZS22NpbprHYQiCrQdO3LFVU2/sx/I4CfT6JJiivu7m56Ol3+8cQfbQSL0C95nvwvmdUCZ0db+jr/Qyml5mfRbhuKicT8wrAB6QLoEdgeJe+LLYVmSh3ex60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594516; c=relaxed/simple;
	bh=fpoMCPM6b99hlqdxHuAXGa/Gc6L+yO7qXJ0Q8HsZ2Bc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lHw4nVvaGwxv0eDMTn0Y4sjRV0FOL+TIOTmzSRe9iheIg3Fz7iwKluFEmlfmAhGrkMOG6g3B1X6htPqRJSLjXJW8wJZo2ptsHH59BVeJAPvPbrbfexGeuJo09lRR0ic8gaDyiauW1ac5jHNJtdHw8wET4im+vMbkoK3w8z3x/eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ppKiRlFk; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b7380f66a8bso634527866b.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764594513; x=1765199313; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OCTeXPXZO+F17n9SXaYhV2tI13Zm/DFXV78xcr1sLqg=;
        b=ppKiRlFkie7iZnk7jKU5Ry+dPEl9s+MJqZ2oT9FSkauY06tfkLDoNKo/pArL86iv5u
         4Z3MCZJqtLki55CUh6vUzE1n1cd0oal5nxiFtvZ5UgLM+oT7JEeOLM0zBR7MnII6XQh9
         ZPZgWuCOnfzHWcvtFKG7F1d1xd1jyBWwtTPlscPP/u59q+OSp5onY8L/MiP9owmW31r1
         OsZiy9R3DLbF0Ccde8V8xFwAbKcSwqy0bnR775Az7x+kBZfRTjTdF1/cUhmmstPJi5Va
         qYEqA92xucCAEL1chd47eRd4fXXsj/TaE+TmdaczWy29SEhEkwq+WbfDXQ32IsEN4GO1
         ShCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764594513; x=1765199313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCTeXPXZO+F17n9SXaYhV2tI13Zm/DFXV78xcr1sLqg=;
        b=JIdUozKosOvdhegrDxp+LoAoB6BaeNDYpc0Llba4knouRjmCFK0E1vhQJqZsRk3VJf
         7GUF+XHtZokD72hSYk+7w+ePUY/RilVlAhFp0Et/4wuE1SrYk95XNtGqnoD4QsfTaTMF
         SJQYHaiSaiqBYd6a8onv39mj7AOPHp9aTcZgCUV1u5NfuxzXFJQCPsuQ6p5J4jzPmcGY
         S7CA/wrIP6SW4Fxzv3CHRFy8nR8UAcWo3gKCbE7JXAroyNYaIFyW2RL+2MCeUbGV5Jwd
         Iv5AjGEPC3GbAPqPOH/7IVpXB29jZX3MtQxPzhQBqyBynjxI+NTXOBzNYb4R7g/paLVN
         BHWA==
X-Forwarded-Encrypted: i=1; AJvYcCUIARmrOSFq3Nj4dMsOgXGA3B1A5Np6o9FZ/B36OpgreZsZzGBjr6LXrYzQTJBaMhhPCQo0NsLH0Wik@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4zDrQbQgsAP5I/jJCNZlEntXZrFa+HR4Yogel2tbdrqpc2P/B
	Flzd+8212NwhTRT66jn4IJR+zSF9UAVxJp3O6rTQU3+htss0kADs5arAtRH2cz1s1xI=
X-Gm-Gg: ASbGncsvvPM24avma/RDNDamod+HmVqtow7MJBVghNQEmt3dDJQ8DmRezoRZb+8IOCD
	iTBZu+0ckAtevNwWzRthL8wdtarbvMBq78PXrcuiasA+DeEsFbp9w+EDAfjvwXERaPTeuEY9IIo
	RQTFYtBmfMuTolPtwpKp/BkCzRszz9BPO7AYub1HU9C51IPhx4DhbnpoKaUd01x3ccWBq4nllhq
	EYs8aGGx+FcFy/u8qu7hJOSTupUmT+u99CzoK9DJCQq/PEkZbwYF23FzJ7DFfM1EeSO+iRZzmh6
	6rhMoow4YNPEvW/Bqi872FyrWE8QNXviDGq6pG6CJD1nWTzQLxUWPtYtWYUNQL5NXQoav+O8hj7
	kZYRIPICgke77Oin7xG9nes3soFJm5U/uP6emm7hG6TjP4x70BwhCjWkN8E43VRsPjqhI70Olqg
	wMoioqfP37ixpo/ftF
X-Google-Smtp-Source: AGHT+IFYjAEeAOVLw6O1zYISJnzOM69zMOO3y7jHxsacQ7S3VSgvzSDD6yuBCTx3SQ5WQ0BwqnDQHQ==
X-Received: by 2002:a17:906:43c9:b0:b76:8164:88b5 with SMTP id a640c23a62f3a-b76816498ebmr2708166066b.46.1764594512107;
        Mon, 01 Dec 2025 05:08:32 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b76f51c8393sm1220243266b.31.2025.12.01.05.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 05:08:31 -0800 (PST)
Date: Mon, 1 Dec 2025 16:08:28 +0300
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
	linaro-s32@linaro.org
Subject: [PATCH 3/4] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <333487ea3d23699c7953524cda082813ac4d7be3.1764592300.git.dan.carpenter@linaro.org>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1764592300.git.dan.carpenter@linaro.org>

The S32 chipset has a GPR region which has a miscellaneous registers
including the GMAC_0_CTRL_STS register.  Originally this code accessed
that register in a sort of ad-hoc way, but we want to access it using
the syscon interface.

We still need to maintain the old method of accessing the GMAC register
but using a syscon will let us access other registers more cleanly.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 2b8b74c5feec..17f6c50dca03 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -32,6 +32,11 @@ properties:
       - description: Main GMAC registers
       - description: GMAC PHY mode control register
 
+  phy-sel:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - description: The offset into the s32 GPR syscon
+
   interrupts:
     maxItems: 1
 
@@ -74,6 +79,7 @@ examples:
         compatible = "nxp,s32g2-dwmac";
         reg = <0x0 0x4033c000 0x0 0x2000>, /* gmac IP */
               <0x0 0x4007c004 0x0 0x4>;    /* GMAC_0_CTRL_STS */
+        phy-sel = <&gpr 0x4>;
         interrupt-parent = <&gic>;
         interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-names = "macirq";
-- 
2.51.0


