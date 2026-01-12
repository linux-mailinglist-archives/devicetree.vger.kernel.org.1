Return-Path: <devicetree+bounces-254127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DE5D146A1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 195CB3053710
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2AE37F0F1;
	Mon, 12 Jan 2026 17:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ASIC0QAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E72376BE3
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768239369; cv=none; b=stfEhgbcd9ICY1BmNHWuf+gDC/OYz2+sMARjz1FnB3kymdBTcs+vMCwDkDpbTU3FoY2BmWu38HNTV/qo0wDtq7npW9uOk+HgUL0AAnVIMtnE84FiM4NxMXhUs/A1b+ISiggC9iFt+SThp7Jc2Mx+8yB0kzfyiq6YjuK6sOUB3jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768239369; c=relaxed/simple;
	bh=qhaneb/ITX8BfdzzKqTGjLQZIrHw1/KIZJZVKgONY7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sRhQQTVwS2F5DIKjbSlux1Goiluc1UImpv5X/2ElET1irWJfwM2x03zkn2JJGCOrE8lTJkMWDvzIK6VDmwi5LEni5twhk78bHoxPUCGsb7xYnE5UED8OfAq0IJfKM1hyy0i4a1Zwj5BjC6FvGmVuO+wXmCILY4VLeVv+TnIfkW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ASIC0QAa; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-432d2c96215so3570672f8f.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768239365; x=1768844165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LofV/9jgUKtLuCH/txad3m3y4ltofMV2NrIML7mtBRU=;
        b=ASIC0QAaTm8EwN2Xp9fzxcmQOHsKRlM8olVtFoiknXZc9E73MIWU3/+nR6loxnSCXd
         7IOnKnYzGytuZ6PsrKZC8/4eQuL2dGmd18elLezY6wlVsQaK3BYHUQ4PQgxjeEeYiOm0
         0/30JBjPoVqScEBSFUQ0PTky4SzZwy7RO4MGQOOZ0OtO0jw1l+pEuc7NnuYjFj+Iblbc
         cOMkNs/7LSTU1oI4oiop/gzlXO7mLrqPx1cyogfX+heVlnGwbtSw99dEsr1I2qEI+ahl
         6cHoOVAJFPsz9Y4PpEU6KNLuryGWbhfQa+IgMNUB5VI0ZLGyP+bsJ9/IjBadEIVzYYrh
         Pc2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239365; x=1768844165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LofV/9jgUKtLuCH/txad3m3y4ltofMV2NrIML7mtBRU=;
        b=skPf2AHFlZ9cfeAYSXB3xR9X2n3TEbdsfBvvLnXmRVVlAjRoL0+gDUpkURSBX3IOsM
         Qq/VHyEhlmz8SHdhxua17hs2bGs7x+bvrPhWTzrRlqSpS3hjR0ORp8dz6FZDxZzullrx
         ggQQ1giiwVgfiWLkFoJTxH9yXJMqb+Xl0TdsJKRbjuQiE5D1IGidm9yjhAZMDwt1GdY7
         Qnk9HYcoCGWNNbM154um8TwiHuRQpSLOOXCRTi/OqJiwvBf43xNTSKzx9hzdeRcLQiTJ
         SQ+O2pD90rcbbvo415EGJvmd8kKwElByKI3YFafba6js+1TTXLU1xJmJx5dXBO7UZUtb
         34yA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ+zOLQ98Fx0jU8NauBlJqTC1F/Hv9XhCJqhy7F4lTLFNnV7nl6Gy37J5yt3B92YzdqqVk/4MTkURy@vger.kernel.org
X-Gm-Message-State: AOJu0YxjWd/rMNdanyZV+RJJxK3UKMrK0bZgpCBMjPLCMX6rmNy0fQQq
	3PtWpUp1bhIAWkg/E6rWYRBJPLl4SjETW8IC5tajchb83W0UU49t00OOAwBuMoKbza4=
X-Gm-Gg: AY/fxX6K3OMCzvKugIoUfH6nUlWiGhKGYq5hsnEGpEZ6Ksx/Dr5XB2i/EuJ3oNMt52J
	+eP5PIsg6tZxv9oK/fO3pQavWtRA4RIU96sZV6AWnXRuT+hjC8TXBGnw2rS6WQwmh0aIUuWWOri
	6WeoXYjV0u6wxzD9p1OKnke7UWr3e/PVg4EFvzX5vQHhl2lcv1mc5zRUH6po7dU1hsAy3IUZ1V0
	f62YgX+US/G1IJQV57PPfWA5odbf/KcAfJ8Gv7R4ElWM5VjXgrnQOpKtewUjZGMq45vCWtageD0
	jD+uQsZB5xPQxtPBmQkpWiOM3TcFI6WH5EzQSkn571ALgmPuYs6s019uczIfBXLRwx5TT6YdKb9
	bbWu4JssyCpvBrxfquTJzHYqL3Lcu2we2tSvVGIUnxlA8ZMAyoiithzBUniXCjin0j/WL9hp4gM
	I/co6XFzUX/qmB6AoGwQYIvtlxa04Iq9/ck8zbIYbv9URDRj2H2nhQwF8QzXmKK5Y+R8Vf1NLRv
	j9jIWLyHNOZIxWVQ1eKzNVM
X-Google-Smtp-Source: AGHT+IEsEyE0BOISsSRMidibssI3SeWdxDaxfffmQ7He+i2Idme1wQ2WQKE8+LIdSmxGLQOJmqbBcg==
X-Received: by 2002:a05:6000:1448:b0:432:5c43:5d with SMTP id ffacd0b85a97d-432c37c87bbmr20748927f8f.36.1768239364905;
        Mon, 12 Jan 2026 09:36:04 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9336:b2a5:a8c1:722e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm39625403f8f.42.2026.01.12.09.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:36:04 -0800 (PST)
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
Subject: [PATCH net-next v3 1/2] dt-bindings: net: pcs: renesas,rzn1-miic: Add phy_link property
Date: Mon, 12 Jan 2026 17:35:54 +0000
Message-ID: <20260112173555.1166714-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260112173555.1166714-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260112173555.1166714-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the renesas,miic-phy-link-active-low property to allow configuring
the active level of phy_link status signals provided by the MIIC block.

EtherPHY link-up and link-down status is required as a hardware IP
feature independent of whether GMAC or ETHSW is used. With GMAC, link
state is retrieved via MDC/MDIO and handled in software. In contrast,
ETHSW exposes dedicated PHY_LINK pins that provide this information
directly in hardware.

These PHY_LINK signals are required not only for host-controlled traffic
but also for switch-only forwarding paths where frames are exchanged
between external nodes without CPU involvement. This is particularly
important for redundancy protocols such as DLR (Device Level Ring),
which depend on fast detection of link-down events caused by cable or
port failures. Handling such events purely in software introduces
latency, which is why ETHSW provides dedicated hardware PHY_LINK pins.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v2->v3:
- Updated commit message
- Renamed DT property from renesas,miic-phylink-active-low to
  renesas,miic-phy-link-active-low.

v1->v2:
- Updated commit message to elaborate the necessity of PHY link signals.
---
 .../devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml     | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
index 3adbcf56d2be..f9d39114e667 100644
--- a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
+++ b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
@@ -86,6 +86,13 @@ patternProperties:
           and include/dt-bindings/net/renesas,r9a09g077-pcs-miic.h for RZ/N2H, RZ/T2H SoCs.
         $ref: /schemas/types.yaml#/definitions/uint32
 
+      renesas,miic-phy-link-active-low:
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


