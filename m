Return-Path: <devicetree+bounces-261223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLlZG1OwfGmbOQIAu9opvQ
	(envelope-from <devicetree+bounces-261223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:21:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C189FBAEEF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD903300B12A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33F1E29CB24;
	Fri, 30 Jan 2026 13:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+02qoNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD22296BCF
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769779194; cv=none; b=dcEW84CdABFNnc/uMG3azq8bubKC1F+lj2e42hMPd8r4YThD1FYwsPxtxAJkLPM5VyYf3c/ncthVlc4b+5AGyNOqxff1/tVTIq2/ZG9PcC0WjubPdLXexmpdj2OCJeffiHi59lFKNurwJZugP9hauNifqmlsTe5XDZkLhxBl3iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769779194; c=relaxed/simple;
	bh=Or5gzlK0oOcwy1+ave3d9/8tpz5OWkqv6GdelcKgrIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VpMHWcqslGAr0y0Kb6azO06VYARoyAewaVUiiw9Xrg7qjyPEjLparjkMBoYRkn2N91EmBB7g1x3GhuTp6q9vC60jx96mCm/UFyShkJrn16s0NWUqJM3cnyJXJpl7FT2OK9D0/vBLIqP9nTObjNTrQ1BkcHMu7Olzjy8QniwbDJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+02qoNh; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so18037585e9.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769779191; x=1770383991; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dj8w1B+8x/las144X+RSjad0uTQtR49s9DyI1HP6ogk=;
        b=K+02qoNhN0+1i0+tP6UEgm5Z7BCScFhH9R+IT86e3trA+ip86QHrcf9djliHdvsm6+
         1qoQuGxOQxFfCZGOcCI0qr138pEcfJGcjwMsiobn1Shp7pmCOvgIiNbls02ZAU2fYhYl
         0sbyBsOrm2ZdEPdO1yYe1PDMhpR3xMhL7XgLiQ+eeLR+wCe5SCGsrCwEucdvFC6M51aV
         B4ifvp5jbiWZirSr72vkLkAsynrKxFxEjHDET8z5GQ1Pf1IwYeoAF3OflADjClp4MPLk
         SlHxtsh4nUotO+dHt35EP4dN8yP4Rs0xLphySOXwynCmgVXNd8CRK1YFL0kM+KElYU9W
         YTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769779191; x=1770383991;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dj8w1B+8x/las144X+RSjad0uTQtR49s9DyI1HP6ogk=;
        b=juewB6U22UxXPF0EmtgkW1MGwD2yFILVblfIdrSSsdAdB5nLhIKoqusXNJ+Q2ayKpe
         dPyUalbEnbqYY2I5zwdwt0aV3axKW+HmZ4vAFxTH0tGg0C3jGu7OPzN+J9uAIOp/sLvH
         HWCX8wf4oC/fhIQG9lNTYvM/sALIq0zpulOrn3boYlu6YBU+PtkaipGNHH9s2ij2DRjX
         JrTXkc6DjzSeq8HK5fPhgd1EATi1ILf58fovzsyGdWlpVDS8bBeR4zCu0nG1pm0MIz1p
         w2M/TWRdDF7VA7XG66D5LXDux70C4w9UvQj9OZV1quyGA+NzvJewzEIUABVJXs0YTmHq
         X+0w==
X-Forwarded-Encrypted: i=1; AJvYcCWXjSDCud/MiMM7vwiDhRY9KpDNU57prZ5ieRCKoUNbmvTtg7T0pD/BVLcpq6tcELIVIv/5ripw6nAC@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDoaLbIfZQ1+Zq6rVknz9umcxYlI32q6dBIGzKfcZbrT72X+K
	Fa/cW8Q31Yrjnc4fM3pBEFHGijJc2lgIQAJvejs0z4o5nmzHjRbVB73ud5BI578UxbU=
X-Gm-Gg: AZuq6aKCETJPlocDYQL188zrAFhzXCculNGPNM1Re3yC95mBHCoJLEr3KTcCuJF9B42
	Y+wYIrP71HiiXUUJvW6Nckq45iZQMdMGOxMXasIFZVXed6C5m73gHMilNKPcCNZRYzmNzpcBfMG
	E8XVUp2V8+W4FrPMacpd/vwjoGWS3/0wdC7D8A6dy2DSp5KzmQZH6pzrkD1BL+BlQY2GrOgozX5
	+ou9x+oCilJi1y7tw41dLRSSnKLXmuSg3OXQfPdGtHpCY5MNbl1TGkZZMOzxXBv8h9cFFkdcfg5
	0pJzW0ps2Ur4NUwuP/QxDPCfLdzrHjNs+zZcddv3sGV+ePlolGfv9ahv/ymbGOZqcioEMCxm0xK
	+Q80UeS9k+iUCuPTv/Rog8BrXS+3YpufVQR3avljP+NO6e+pI3Hh6Rm9aXnNIr4WxSqOI/sPbjw
	/zoQdlvSwWyJK+mF1g
X-Received: by 2002:a05:600c:64cd:b0:46e:2815:8568 with SMTP id 5b1f17b1804b1-482db476c24mr37269605e9.10.1769779190983;
        Fri, 30 Jan 2026 05:19:50 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c37420sm281408035e9.9.2026.01.30.05.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:19:50 -0800 (PST)
Date: Fri, 30 Jan 2026 16:19:47 +0300
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
	linaro-s32@linaro.org, imx@lists.linux.dev
Subject: [PATCH v6 2/3] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <3b75e950b2f8faecd1a9fa757e7eb7b42ace838f.1769764941.git.dan.carpenter@linaro.org>
References: <cover.1769764941.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1769764941.git.dan.carpenter@linaro.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261223-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C189FBAEEF
X-Rspamd-Action: no action

The S32 chipsets have a GPR region which has a miscellaneous registers
including the GMAC_0_CTRL_STS register.  Originally, this code accessed
that register in a sort of ad-hoc way, but it's cleaner to use a
syscon interface to access these registers.

We still need to maintain the old method of accessing the GMAC register
but using a syscon will let us access other registers more cleanly.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v6: Fix O vs 0 typo in GMAC_0
v5: Add Rob's R-b tag
v4: Fix the formatting issue Rob pointed out
v3: Better documentation about what GMAC_0_CTRL_STS register does.
v2: Add the vendor prefix to the phandle
    Fix the documentation

 .../devicetree/bindings/net/nxp,s32-dwmac.yaml      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 2b8b74c5feec..1b2934f3c87c 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -32,6 +32,18 @@ properties:
       - description: Main GMAC registers
       - description: GMAC PHY mode control register
 
+  nxp,phy-sel:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the GPR syscon node
+          - description: offset of PHY selection register
+    description:
+      This phandle points to the GMAC_0_CTRL_STS register which controls the
+      GMAC_0 configuration options.  The register lets you select the PHY
+      interface and the PHY mode.  It also controls if the FTM_0 or FTM_1
+      FlexTimer Modules connect to GMAC_0.
+
   interrupts:
     maxItems: 1
 
@@ -74,6 +86,7 @@ examples:
         compatible = "nxp,s32g2-dwmac";
         reg = <0x0 0x4033c000 0x0 0x2000>, /* gmac IP */
               <0x0 0x4007c004 0x0 0x4>;    /* GMAC_0_CTRL_STS */
+        nxp,phy-sel = <&gpr 0x4>;
         interrupt-parent = <&gic>;
         interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-names = "macirq";
-- 
2.51.0


