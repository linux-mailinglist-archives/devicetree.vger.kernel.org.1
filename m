Return-Path: <devicetree+bounces-254559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E19D19637
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 69529302FB9A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10649392C21;
	Tue, 13 Jan 2026 14:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nMUfFQoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C443933FC
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313641; cv=none; b=ikdu3UpQQoKEurGQVv18f2AOuZsQ9Jo1fY+2h/rR2MpDvmR+PJ+4xGD2IheKeWqz04QVZSvzGtlUoVFkGe0iXoF7AhDSAikT/s7NanB/pXjZoASVQBgvGp+82iDJTEiUTC94S+nfkflC7KkP/HxT2X7EoKOwwG2+qcJ+DN4c+B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313641; c=relaxed/simple;
	bh=CKKW/gznSDOPnlhwknSKAxHfsRLSGV4Nuag72DM6Dyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=guACwuabLsDaQ3dPhwthoEI5JD/y3qjwbf8vUv2mWqbNdQF8rIus6bhabhIiD/khhUDRZWaVHyl5DOPEVXx5+zlTY4RWv3VaAEOYg9N4rguCI7QQhwWtb3FOi9wjOOoNSQ0vuWYLLytiPeOhY5S1JIcdn0Dhu7xSfSIPIuZY+R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nMUfFQoY; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-432d256c2e6so4027636f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768313634; x=1768918434; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wIl4MJEHigyP1D4DG/B4IxRmiFqSM8hzu8VMWNA8Grc=;
        b=nMUfFQoYDK6jx3qMp5cu1uz78jp4NBTslIgEX6eavV+NvzK+ApgVmP+UN6wtR8FvNY
         1MNKHywyzCLyTJR8uaLWWccayWXSBK0/QNUelzx6W/8wdnh/vhwGcChU7FXgk2QC03Ig
         XJX6aNuMZPXNKW0eTaxkhK2lTIfb+q0ypxoChO72ZOqx9RZMts38cT1vFkXqmdAblOFN
         r7W87e1FzDW4hmTzCevxCVknhrkt6/tcKnhBCy4CY4CRBlWJaiN74Nve5K5Lhrju2D2S
         XESymgW0VFtQrG8hHSgbSxHRtAG6ND1Ig5yDyFZU0S+khHkdQ0XWqEsmQFXPL+O66CFo
         Y66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768313634; x=1768918434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wIl4MJEHigyP1D4DG/B4IxRmiFqSM8hzu8VMWNA8Grc=;
        b=NYrysRfcFzqvzk0oYKsRT5y+5ZLI478oFSVfDoN1+o15dTmaHtDvjjEiw7KZ8KkYW6
         2JwTFMhg58s/D1tMuSo2ddurvJjbgckUZbJUsNFSuyQ3UpGPvEePkqpULGt3FJEYxm9l
         EHcLy7y256bGBBC/F7wBqzD7ukSaXNIkTmjB9HwsbGRKSA6rEYon77V/JM8lut9BLcXc
         EiY1KaHYghwhRH23BfE2HcwamPl2spTZP8Q7gjbJk0cFwqbIa+Woea4mqCDbfpU5Q5vH
         SbJwUxldXuaHT7XjRJCw3JwjRQkNVBwKdfZkrCsgQsoBIKS6EjH9c60bc++K0mHjjMEj
         +T9A==
X-Forwarded-Encrypted: i=1; AJvYcCVx1SIMyBe86cC1cfKNulXjhk4ADvuB5Rf1jsNS7UeiuAvGPux7MnjOUF3ltyNCMervlz/8VdqrV/V7@vger.kernel.org
X-Gm-Message-State: AOJu0YwD+GyDeP0J20RI/11HtX8BVb8Arsm6Xon5TJLeOq2ABGCQKMJW
	awoYNzQ6o5lblYlARLTWCurnY8BP8rWhiTGaPOpWLVcUJyOFiJEwKzg0rwGetRiOIdA=
X-Gm-Gg: AY/fxX7Bkak2aAen+fgMWCErHvSoldyxCTjYgrr264awTof66+yv3bZF72xeMTyyDIi
	q9Hy/A6UhuugGbUx0GIcQ3HvQ9sI6FznbZxrokuy8u++WnUUYryyyHAJoFlBFZjztt5WL9khiH7
	xpJLG19xoSQ77thK99Rm6ZaQBJ7cV8Sx76YVHxykQIoS+jhmKAM8YuY2nK6dMZVrt4TV0STtTAt
	HJHay5IhDSPqUWFl7p5soKF78ndlH/RaqXx6Uj/XTwYlM9kM8xVcyvC6Tlq0+Jgtfnc54WUddSd
	uWorbARZ0827JBFxh6WeMe3VXpgfImOyr4OaTXxY3kxdY4JATuWO7tMr0hPD5S8nVN0d/iXJOvb
	IBRZSOdzhNjClk4zEId3uVux2hOzTd/5x5T18JScNHt/6zr5VXCL8rsX6z1nPvo+nM+O/IK3giq
	SdaYJUFg6w4SBwzo1A
X-Google-Smtp-Source: AGHT+IHkyPQVUw8xs93KfcHsRE5T/d53G146wp+tXJe4SYI9ShWK2S78YZfw2MZQRgqiABbgN1Oeug==
X-Received: by 2002:a05:6000:3104:b0:432:7068:17d with SMTP id ffacd0b85a97d-432c3775aa7mr27685504f8f.20.1768313634216;
        Tue, 13 Jan 2026 06:13:54 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e19bfsm44033372f8f.18.2026.01.13.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 06:13:53 -0800 (PST)
Date: Tue, 13 Jan 2026 17:13:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jan Petrous <jan.petrous@oss.nxp.com>, Frank Li <Frank.li@nxp.com>
Cc: s32@nxp.com, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org, imx@lists.linux.dev
Subject: [PATCH v3 2/3] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <7662931f7cbafe29fc94c132afce07ba44b09116.1768311583.git.dan.carpenter@linaro.org>
References: <cover.1768311583.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1768311583.git.dan.carpenter@linaro.org>

The S32 chipsets have a GPR region which has a miscellaneous registers
including the GMAC_0_CTRL_STS register.  Originally, this code accessed
that register in a sort of ad-hoc way, but it's cleaner to use a
syscon interface to access these registers.

We still need to maintain the old method of accessing the GMAC register
but using a syscon will let us access other registers more cleanly.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v3: Better documentation about what GMAC_0_CTRL_STS register does.
v2: Add the vendor prefix to the phandle
    Fix the documentation

 .../devicetree/bindings/net/nxp,s32-dwmac.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 2b8b74c5feec..cc0dd3941715 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -32,6 +32,17 @@ properties:
       - description: Main GMAC registers
       - description: GMAC PHY mode control register
 
+  nxp,phy-sel:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - description: phandle to the GPR syscon node
+      - description: offset of PHY selection register
+    description:
+      This phandle points to the GMAC_0_CTRL_STS register which controls the
+      GMAC_0 configuration options.  The register lets you select the PHY
+      interface and the PHY mode.  It also controls if the FTM_0 or FTM_1
+      FlexTimer Modules connect to GMAC_O.
+
   interrupts:
     maxItems: 1
 
@@ -74,6 +85,7 @@ examples:
         compatible = "nxp,s32g2-dwmac";
         reg = <0x0 0x4033c000 0x0 0x2000>, /* gmac IP */
               <0x0 0x4007c004 0x0 0x4>;    /* GMAC_0_CTRL_STS */
+        nxp,phy-sel = <&gpr 0x4>;
         interrupt-parent = <&gic>;
         interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-names = "macirq";
-- 
2.51.0


