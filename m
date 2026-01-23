Return-Path: <devicetree+bounces-259113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFtnFEfRc2kCywAAu9opvQ
	(envelope-from <devicetree+bounces-259113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:51:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE677A52A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83A233016292
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EDB329D277;
	Fri, 23 Jan 2026 19:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qbHzRo+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ADA2D0C84
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769197883; cv=none; b=i8FKVF5bHJZzWeje2Jq17IYVO6cCLOev0+P0jaCwvgGXxu1dVMW30rDywIUeZ4zjtbz9o8Hmx26UMMtGH1aHLHf/FSf38K6nAjh/X13q8dp59wpnc1F0VcNvOMfHdWhGlTwPwnoTEmITz2urXjooE27kPFfWW9/0/iCpCdz1lcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769197883; c=relaxed/simple;
	bh=3FJVyYwjibioE8z0FaIQLQU4wiVDMFUqETc6LkpUfIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PBCK65nmd71ESL/+qiWiHLK/7VHFukqTbhtks9RlcRCaHK3iG99RoHlLkBrDz8iKYYIQOgdt9vUQAyv+gkOUyzaYE+ke/Od/Fpbq+RxOwxTCQHbtqaeTZYYWdnE3+P0Svl1niknR7ha4Q/SeoeM0JJQqZ8oCQbqRVg4jFqY6SWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qbHzRo+A; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee07570deso19992705e9.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769197880; x=1769802680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RoxIu9OjLLVMlN1bgKytG1gii/pxvwu01d+fCwz2YnE=;
        b=qbHzRo+Avo0zgYpMH+LaaSpiUuWcgtz2xcCMEFd2dfzzzf/H/eofhWBntj/zC++N8w
         dNw1bdV9iA7y0Nb/REr8miqc4BIA11QurtQvu+l0JUcHc3WmUVGmX14tap4yw+NKEz8Z
         9j+5vaVXjEcwljSPQ69Jx5HS+sILwKq8ZaONNOGlrELH0A9GrWnIrRrP6SbVv5ZMkp5j
         JA3/gsY1e1fJTJ3JZCu5g6fDifruQqnULmfy+s49FUUsnEQ02TyQk8xfUD3NUvRmIYn4
         JIdE4nJ5SJ+EktOLf89k/LyL3afSNRRzq92kMKsuQFOQDUfuUVbE1/ZqYZlp49sfdAbu
         a+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769197880; x=1769802680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RoxIu9OjLLVMlN1bgKytG1gii/pxvwu01d+fCwz2YnE=;
        b=HNXRB0ArGtUMRHesREX9vw51bn2JWxkIkW36y9QbHaEP8I7RoIB2mhNkm2IumBJIma
         MqklaijDD9v4KQIS4eZSUnr9T4KZIM7K8RY+sH/MqJTQJjlL4Qw3uTtgwHY3Ri+KskSi
         EJDxxEfApd1jMQvgUAu5fnyJ2/10hvi0k4EN1oPbT4yP/l9Anz/fMkcklZ6vm2925sku
         xnFOtp101kZg1RJ4YOlBHnJn2pI/+YRXeDiMqZhxxgS1ht7UjSC1V+o/y4JQ/w9L8dMR
         LiVmGicgB5Uw9+cJzwOS6z7S1YVgSyhoJir4DJS8+FcjkX/Jp/MzeQyvHKkCfLAcVcQ1
         L+MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjTxdN8NeHQnvl1zZa+XhAevPfYykCEJ9TpjPJzqAix0Akx7JtZzJgUFRX2c7iNJ5oOlZI8X77GZ8R@vger.kernel.org
X-Gm-Message-State: AOJu0YwjP8Iff7PnCbBzPxmV73VHXLL6OQVtU7HPhq4xanR/ZZr4ndFA
	xOyVhcq0FODnar/qK0Y+fVnH3iXbe2e9gEd0gn4exbSdyYdbZ6KJCOv49dKP5nRLaHQ=
X-Gm-Gg: AZuq6aI3tWsk1OsuDTLlut0DYGcnCzXpgtfsiI+D5oNlpjTNVsQIhswisKLrDWy4KKn
	l15qxfBGStlPKudMA7Fo7Erm06HsRplvL/Hu8wC6cfwnMRu4ugp4RnnGQDYUEwDayrT4s2qtsvl
	0GNvotnqj/tUHk0VAwThaKm4c5SNKhPwZWPu8GQGsamu4ARwwXC6991ccRiRKgFQAr907w17eCQ
	wabyMR1GBtGgZjh6yR2PZrhOFjFbSob8NZFQDUatQBV1B87o4XKI/Jy5smDiOFh/kyfhqeUMEKV
	KnD3QbWQsikQhUYyZKr49hfKVTDjzOkIMq0cn8QDz96E+yGUEydI4HFyuTgiAqdcoLUmHvn4PUv
	CyOP9NQReLCFpnQRDBsLSRGwcDih529YiKQ3UqfmjYJ1qLvzLCb6Ji5wFdyQV/lf2Gw9jMujWa9
	Cb2x8Y/AUf5MZl6HRQ
X-Received: by 2002:a05:600c:c10b:b0:477:1bb6:17e5 with SMTP id 5b1f17b1804b1-4804d65ebbcmr49706635e9.30.1769197879697;
        Fri, 23 Jan 2026 11:51:19 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470bfe88sm148591545e9.11.2026.01.23.11.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 11:51:19 -0800 (PST)
Date: Fri, 23 Jan 2026 22:51:15 +0300
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
	Frank Li <Frank.li@nxp.com>, linaro-s32@linaro.org,
	imx@lists.linux.dev
Subject: [PATCH v4 2/3] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <63369be0ec8a49294462f7ec061a7066b8ce9425.1769195864.git.dan.carpenter@linaro.org>
References: <cover.1769195864.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1769195864.git.dan.carpenter@linaro.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259113-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CAE677A52A
X-Rspamd-Action: no action

The S32 chipsets have a GPR region which has a miscellaneous registers
including the GMAC_0_CTRL_STS register.  Originally, this code accessed
that register in a sort of ad-hoc way, but it's cleaner to use a
syscon interface to access these registers.

We still need to maintain the old method of accessing the GMAC register
but using a syscon will let us access other registers more cleanly.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v4: Fix the formatting issue Rob pointed out
v3: Better documentation about what GMAC_0_CTRL_STS register does.
v2: Add the vendor prefix to the phandle
    Fix the documentation

 .../devicetree/bindings/net/nxp,s32-dwmac.yaml      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 2b8b74c5feec..65633b10e49e 100644
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
+      FlexTimer Modules connect to GMAC_O.
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


