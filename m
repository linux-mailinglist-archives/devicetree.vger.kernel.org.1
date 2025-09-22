Return-Path: <devicetree+bounces-220022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9AEB91550
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD32E18A367B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E381E30DD29;
	Mon, 22 Sep 2025 13:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lO4nwvJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A01830DD1C
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758546783; cv=none; b=aKGnkQtlvsTzlKD3jln6EbKODE9a8hm7Rkszzeu7kK6DF+sz1j3HEBcZUSvwi6N+VbVwnT+pcVJrAJaUQRCPCIXU2mH76LB8RFaNjZvsIvyHZ5Oki9NsaioVRFKffWP4fTaGoc6nwCr9J5QMfhpBiL46kZO/pNx5WNIXzsKX5KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758546783; c=relaxed/simple;
	bh=unxmjxm6h4F/9t72n3Zmx6ePZef1LSzn6zgM64G59vU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JmUtZ53fYVRlamXBHwO96kW7Sf9YZfivUjkmUazKQxTFEZXm6OXQrT+/b9gp4bWrK9A7BcJLKdn/4duNRNox09MYOLZZxf3JgKvHsJaW6diT+aTqADOqg6col7rO1R7KNNEbQASBHZz8wrecCEHNfzzFQ/Y8lIYaWOxx1HN+t6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lO4nwvJH; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-267fac63459so41381375ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758546781; x=1759151581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6BICoezk7Aqii5uI8fB/6RDKEXOngB1t0y1HJi8V6fU=;
        b=lO4nwvJHnSTArmDFKn2QFzlyq2ZF2B+3hE3Fqe+IUO41INfwT46rH9RQYjeLkbGdwL
         AJNKmy6sfpOQnWFezfusoiwyi7jST+PvEBIZIlKd4SnyXdO8vQTRYpewQmkymiJpU/ln
         OqhPXOOkVFQ4nkUoqyuKlidgVYG5ZyJaXS3ZX4b3elQHARTK+5ytuTuWZnOvdfdvEZwH
         YEpl72tScxM7eNuRZ0tcnTere7tZfpn58ZtJhLxZcwUO2SXX/v6IXHfnhPmmL21LKgQr
         lANdHipf1y449d5OVb6eD8bPxw/hR3fDO/qZ1X98DkrhpnkSyMtpe0uWbd4yV0jayNQi
         dZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758546781; x=1759151581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6BICoezk7Aqii5uI8fB/6RDKEXOngB1t0y1HJi8V6fU=;
        b=i1YPsv5XCApCms7eDurG4bGdSciH0MBNZ3Qxxgv4mGS64+NQZWmP17QPaheusdGPgn
         5RecJ2aZJjhgG4u2tvJiL9eIVzt9JQPjTvfOrgrv/T8tdmxYnZjGN9hOzCyL8w1u7Maq
         xeqE1iD2HyYmvhi5YPULDjHQudpBXEhoMfbCAZuwVCNhEdAJmmvpNYlCmhGgX3NuFrOm
         7MY6OSGy9NtFXHpo9JqibalZ9mCkDqKfpTC9T5Uc7ayyYJpHVUh3x6gcFPrnlWORCmFX
         zBG+a4sVUZd1E4cBAlfdik5E07r3qD40VeSgRyKhA3WX/kZezl1LupMi4amumXv4kPgS
         tsJg==
X-Forwarded-Encrypted: i=1; AJvYcCXf12rjddJ5XH1wBdA+jdletvUMizWNdp4eGYl+uppusLex/HrZJxzlmFTke3ZgGSKkDWmfEi9otQUz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzung3iKeTXpavkT/TdZx8M1kct7XKnp2R3DqHh3aB4tPubY/fy
	VmaosB73/FHvPSVFMaRJz43Z5XQLc0m1+PQaXSqE+KmFqPOPx2oslDn+
X-Gm-Gg: ASbGncvX1oPkBKRLVKbpql9fWZwQARiqLWMpCWXcg7F1HPGhQmHugtjhqrDXdsImYcM
	RnPS+0HLn9PIfqtobRbh2qJsIGxpkJ2UlTYSJNSa+tHpi9hB35CrKrJS3Bv81cnRHjC7u7gFJ56
	u/jNiCYFU0nilsbrU30p2b2UFKLCHoKQh509D71N7Sdjn9lujw3cQ5Mf3pPBhV3Y8Sv4VB+pPUB
	f5hxgCxdNtW3TCnTAJVLgh8zLCMVj52SEWndIFvCeWQjZ6CYcjxvk2LWEsOxMbpVkTQQLCz9TyP
	D4SrtzlqDjGrKFtZkMjM3MV5ea1dmIFdRn/4YEBeC3k0zxgOb91MnWbghC7rUb/gvYfpQgbnhEN
	RfMQpaETeeJfPbm55m0iXgmfjkdVDtQ==
X-Google-Smtp-Source: AGHT+IFCaMWxLEAqaH9OP6YhIlxxfOIJkeoBdqxz5qfmubo3eJBUEdY3PUmuBFtbQg3xg9PFsFXEEA==
X-Received: by 2002:a17:903:ac3:b0:274:9dae:6a6d with SMTP id d9443c01a7336-2749dae6c18mr64125005ad.34.1758546781613;
        Mon, 22 Sep 2025 06:13:01 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016bff2sm130200055ad.35.2025.09.22.06.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:13:01 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v11 2/5] net: phy: introduce PHY_INTERFACE_MODE_REVSGMII
Date: Mon, 22 Sep 2025 21:11:40 +0800
Message-ID: <20250922131148.1917856-3-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922131148.1917856-1-mmyangfl@gmail.com>
References: <20250922131148.1917856-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "reverse SGMII" protocol name is a personal invention, derived from
"reverse MII" and "reverse RMII", this means: "behave like an SGMII
PHY".

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 drivers/net/phy/phy-core.c | 1 +
 drivers/net/phy/phy_caps.c | 1 +
 drivers/net/phy/phylink.c  | 1 +
 include/linux/phy.h        | 4 ++++
 4 files changed, 7 insertions(+)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index 605ca20ae192..074645840cd5 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -132,6 +132,7 @@ int phy_interface_num_ports(phy_interface_t interface)
 	case PHY_INTERFACE_MODE_TRGMII:
 	case PHY_INTERFACE_MODE_USXGMII:
 	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_REVSGMII:
 	case PHY_INTERFACE_MODE_SMII:
 	case PHY_INTERFACE_MODE_1000BASEX:
 	case PHY_INTERFACE_MODE_2500BASEX:
diff --git a/drivers/net/phy/phy_caps.c b/drivers/net/phy/phy_caps.c
index 2cc9ee97e867..9a9a8afc056f 100644
--- a/drivers/net/phy/phy_caps.c
+++ b/drivers/net/phy/phy_caps.c
@@ -299,6 +299,7 @@ unsigned long phy_caps_from_interface(phy_interface_t interface)
 	case PHY_INTERFACE_MODE_PSGMII:
 	case PHY_INTERFACE_MODE_QSGMII:
 	case PHY_INTERFACE_MODE_QUSGMII:
+	case PHY_INTERFACE_MODE_REVSGMII:
 	case PHY_INTERFACE_MODE_SGMII:
 	case PHY_INTERFACE_MODE_GMII:
 		link_caps |= BIT(LINK_CAPA_1000HD) | BIT(LINK_CAPA_1000FD);
diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 1b06805f1bd7..e8e237fb9d35 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -255,6 +255,7 @@ static int phylink_interface_max_speed(phy_interface_t interface)
 	case PHY_INTERFACE_MODE_PSGMII:
 	case PHY_INTERFACE_MODE_QSGMII:
 	case PHY_INTERFACE_MODE_QUSGMII:
+	case PHY_INTERFACE_MODE_REVSGMII:
 	case PHY_INTERFACE_MODE_SGMII:
 	case PHY_INTERFACE_MODE_GMII:
 		return SPEED_1000;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 7da9e19471c9..42d5c1f4d8ad 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -107,6 +107,7 @@ extern const int phy_basic_ports_array[3];
  * @PHY_INTERFACE_MODE_LAUI: 50 Gigabit Attachment Unit Interface
  * @PHY_INTERFACE_MODE_100GBASEP: 100GBase-P - with Clause 134 FEC
  * @PHY_INTERFACE_MODE_MIILITE: MII-Lite - MII without RXER TXER CRS COL
+ * @PHY_INTERFACE_MODE_REVSGMII: Serial gigabit media-independent interface in PHY role
  * @PHY_INTERFACE_MODE_MAX: Book keeping
  *
  * Describes the interface between the MAC and PHY.
@@ -152,6 +153,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_LAUI,
 	PHY_INTERFACE_MODE_100GBASEP,
 	PHY_INTERFACE_MODE_MIILITE,
+	PHY_INTERFACE_MODE_REVSGMII,
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
@@ -281,6 +283,8 @@ static inline const char *phy_modes(phy_interface_t interface)
 		return "100gbase-p";
 	case PHY_INTERFACE_MODE_MIILITE:
 		return "mii-lite";
+	case PHY_INTERFACE_MODE_REVSGMII:
+		return "rev-sgmii";
 	default:
 		return "unknown";
 	}
-- 
2.51.0


