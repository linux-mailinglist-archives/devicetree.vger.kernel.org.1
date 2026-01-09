Return-Path: <devicetree+bounces-253321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EAD0A9C6
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A93003046D8D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F16F35E557;
	Fri,  9 Jan 2026 14:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Trc0yEKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FFB35C1A8
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767968586; cv=none; b=csnRE1ZuXW2ZfHVcl6oH7neYNQN5xEIvY4JIN7FqWjy6cE+HAfZDEj0+zIE4G3mTwG29BiHYSBzT2zVPgVPn25mW4DxpNV4T89ddpWYvMnrPfi8TBMspreNW1WJVnx+RHwpWZNWP+BsV9YK3eLXbdyUV2KBDQ7SyX6NJN6GmI+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767968586; c=relaxed/simple;
	bh=8StS9AudZ5ELgzUszlHjdxqc4ZzB03vmI08McQOGmMU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sTtvKeBXZ5wecJqstbKhQ0MFhNFg5CX3LXmYAUG/nRvo1U9ovFA5qh8eOZGeoK/BpkSXuOMLYAxg8bkhNJbSu9VV+r3gXMoKV0xk9RhkXrMr7LX/hI4agJgnogJfizNStdbitGzsSlNzWRj6alh7ad4KeCsV9dmhyvpvTPWgDNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Trc0yEKm; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47a8195e515so31407145e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767968582; x=1768573382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/U8h75XwUt+UA3XN3Z2NnuJmQpm0jrMH1mHKDyxkLA=;
        b=Trc0yEKmRuxqTIE75tSpPhD4xBAcDji9Emz99Jy9mWPwQv2FR8EJVXLwN9wZn74XSz
         PVQJDmLpjEi/THFHqk8b8nwsoY7XApsxY6ObnnrMlqVXqH7CY1X3yJ59mXD50D4E8S/F
         6spbjgsa+nbZlL9R0VxiRTpX28KnNk6Ds75LMJnkZT+Z6YI2nTPG8LrBbf2E5yLlLdoe
         b03iFuaiQhI/pPRwW1UpE5KuaLM8oG22PwveS+daNC4huY011wPY1gscAzSuklTzgMz4
         NDH2ChdMMxGp8AWbwdOKFnoZ2ufZPfNwbUnItf/5ED3c4CF5SM9j4ocWD3/2nW4WPJwm
         B78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767968582; x=1768573382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3/U8h75XwUt+UA3XN3Z2NnuJmQpm0jrMH1mHKDyxkLA=;
        b=M5KroCGj1a6sot9Rb2ZaVNsPi+0rB1v8HM4kcpawNwXtgi/b32trewKBVpby+TscRt
         uNxf2KUiMLaK5ZFwGpK4Gwk8srEq76eFkKu5v+kRBCaxe+GN2/7b8fniLHjlIG5FpUYd
         6pAfnVCgZeeZoykWBQorp1XkT2xj/JmFSKoNbU14dKPY41zgVqrJ0HQerMU/G8pCPsIG
         zjqVAGUzWTL5S4Di0X/6CBnNRsfczRQqJZgblINZ70NhH6m8PyAj1ZDq1dLuVJItMfcg
         o/ooqY7toEIvh2KzRR98HJcR1KK8EjAgoFu3N429tD2y81Zac0iLNJRwe3JvaifrBj54
         zS0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvKbWSBwwDw0SF3KsEKfYkBXXVGT+duoFtnqOQovlpMtbrHSp8M6Ajiymr4GeqTX0e8kuC/h1BVa9S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx61MY+lzymDyEZ9jTXTEvXuFEUMz4KJxXc56zwA5ByLJO4M81L
	FF/SmyzraQyyTkJ1jaO8kFGtQHowJh8MpAHaxQ7xMEbaU5xzkrq2amex
X-Gm-Gg: AY/fxX4OFw4weITHRSgwBUDrFy37c9aNd0sXBSHQa9yICROLwUqDXKo/zakKtGp2ndL
	5bC7IiGlgA/IB12ZX0bXBXg67FCppK8VDryjJeK3OwyMNp2BAQR0479MMvnwX5mfpPHSOz3uat+
	mWOh0YQJBDY9KeyUHV68CR1JQSE4Y3ID/+OjbM2RyvPTXLnWXdNfh0G56PfJvN+yA/rsplUO4H0
	HtbsghNQhiXvxb6rAxfE101Njrd/YkxI+cwnJnEUyKK5vMrM2msgBGvIur//wIQr7VVjppt3aFj
	Lt4dpuFoxJPUhpxVzpHNgizS7U0TJqWad4LZLXrppEXYVZKqIgyVBR1EzGNAOkMew9aT1bvu3FJ
	LVJ+WoBkA6P8vFN+4bm4RugIlq3u+xS/LCwyIvo62KUOkzmhnlcvK73tpj0Vo+tULTllNnsArX6
	LtoX0uR4HiZTY3aAoL9Mk0AwDLa6yTL+x66ddOhZY3lwSRuW7GgwkKlBNb9YmaUrSbgFSvcrclb
	UGKJBNjpUgTqC87Et/oMjU=
X-Google-Smtp-Source: AGHT+IEgu9V46k2J5LBAMEh1g2MEves4OrqcaxWfxeqNCRR7OBNXNqIbjP1ZQudEk7xIyl4ki1lndA==
X-Received: by 2002:a05:600c:45ca:b0:45d:f81d:eae7 with SMTP id 5b1f17b1804b1-47d84b39832mr98984675e9.28.1767968581673;
        Fri, 09 Jan 2026 06:23:01 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d871a1e11sm61448855e9.19.2026.01.09.06.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 06:23:00 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next v2 1/2] dt-bindings: net: pcs: renesas,rzn1-miic: Add renesas,miic-phylink-active-low property
Date: Fri,  9 Jan 2026 14:22:49 +0000
Message-ID: <20260109142250.3313448-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109142250.3313448-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260109142250.3313448-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the renesas,miic-phylink-active-low property to allow configuring the
active level of PHY link status signals provided by the MIIC block.

EtherPHY link-up and link-down status is required as a hardware feature
independent of whether GMAC or ETHSW is used. With GMAC, link status is
obtained via MDC/MDIO and handled in software. In contrast, ETHSW exposes
dedicated PHY link pins that provide this information directly in
hardware.

These PHY link signals are required not only for host-controlled traffic
but also for switch-only forwarding paths where frames are exchanged
between external nodes without CPU involvement. This is particularly
important for redundancy protocols such as DLR (Device Level Ring),
which depend on fast detection of link-down events caused by cable or
port failures. Handling such events purely in software introduces
latency, which is why ETHSW provides dedicated hardware link pins.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Updated commit message to elaborate the necessity of PHY link signals.
---
 .../devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml     | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
index 3adbcf56d2be..825ae8a91e8b 100644
--- a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
+++ b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
@@ -86,6 +86,13 @@ patternProperties:
           and include/dt-bindings/net/renesas,r9a09g077-pcs-miic.h for RZ/N2H, RZ/T2H SoCs.
         $ref: /schemas/types.yaml#/definitions/uint32
 
+      renesas,miic-phylink-active-low:
+        type: boolean
+        description: Indicates that the PHY-link signal provided by the Ethernet switch,
+          EtherCAT, or SERCOS3 interface is active low. When present, this property
+          sets the corresponding signal polarity to active low. When omitted, the signal
+          defaults to active high.
+
     required:
       - reg
       - renesas,miic-input
-- 
2.52.0


