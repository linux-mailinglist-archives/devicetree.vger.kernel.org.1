Return-Path: <devicetree+bounces-234195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B25C29EA1
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 04:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 398B53B2BA0
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 03:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F043B2877E3;
	Mon,  3 Nov 2025 03:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bvo8UHVq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438A28B4E2
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 03:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762139151; cv=none; b=T6LC4IVAkusrh2OpBihDirq7iCgAQhQvl1xzTpVcIrNmG2jTaJju3E7e5jgz9zVdH/kvqiswKpn3HQj0Ct+lACYwS7KOOnhPG76/qN9Waum3WP70CXuZXpj1zBZ8U+A/6KCMJzZ+l2GW4wL6mLVpSEe0zCs2RTCwBTtJdbGPCDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762139151; c=relaxed/simple;
	bh=g1gjey22aj0deXr/Rxp5x8gbHU/r8O1Vjh1tF746E4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gXlPCOh8FWRomURQ3qG6vjHLAJp5wS8Nw6eJagN7G6wnHV6JOASpbO6PM0CcLEH+IGx6fdb4J8pcJodNwkOAmjs9YeVUyySSdNWsqLj80qlLz4MTGIf8iPOGfHTuAVPgzoYkboS7D/YZvGGGP31nrowX7MUZU1BwzfOQb064X84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bvo8UHVq; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-781010ff051so3101928b3a.0
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 19:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762139150; x=1762743950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4QTOT55+/ql6/pjv059GwSZ6Db5fZXYVpPWy9XubXk=;
        b=Bvo8UHVq6e3de225ALyFSiXW4frvs1o1QwmRDv/kIUjBU3KCFBJArZg948DlXvgH0e
         cIPOnsHAVrPDiitBmYZtfWD5plF0J+coDICJq5+0h5BPKrrZZ98Cpp+EFlcpxEddT2jl
         xRNWDAs4qFbkVCOZCt6S+1bv3PLejq4j7MoPaBCzPt/pDLPZi7zPBagHWxWCRjBg7pTS
         YCo6F07+KkOXF97rXEtnOSpg35rqFxj1gSRGDux56eeC3RqkJJ5JR7BOSyR8GQRCfMz7
         D4008t6jJG1Al9r4mFYMM6cJcMkMeP5EyH8N9RSj7m4jl72Fnmoa/l7Xh74A9R/YcvLu
         c9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762139150; x=1762743950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j4QTOT55+/ql6/pjv059GwSZ6Db5fZXYVpPWy9XubXk=;
        b=TuvXdnFtn1QLCEc+z7p9D1xAuoprBDBPlAo2ATHWNwHnOSG88pPsi2lPe50wytRAsP
         K5dTJsiqkITfeZpKzl308AKVtgkGs7o6UGnGBuotFFxjQm67u7G53CIkymlL6WBLL+eO
         bg8mKFQBT91M86shfogbQ5GXbQ4pMe6hF3bDnXH32zpdUREwLluSj/Zl2f7OrCc3AeKb
         p3ikuGbHVX9l0bTAXhWHp9NtSGOAyBNpMjCkfE7xUWcWwmPvMxgpUoZp+qRhtWgmxOJa
         /BpTMjpxtKGcq/fEb6AAdIhkw/x/dbTte+3hKD3SlTT72BH7PJJvaeL+eHiu9KgSMHPD
         ywmA==
X-Forwarded-Encrypted: i=1; AJvYcCXLgEC+hqeTyyugZtgEzfBikAsxwfWpFnEWKBew0EpgEIxBESfwA9H1A7NHFAYF4mAq6mIxcSWdimhi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6YbDWOvny1Lp6hlEkCzUElSLk+XiEH3WP1WHMpTYP+ZsKVIHU
	slUt6sh4KkejtoETYh/1gUDNWgFEJhKEzpyb1K63hCtIz35RrOTfabhK
X-Gm-Gg: ASbGncvJvzQ/t32bDn82WzYoTwqBmtn5bXNgjawRz0R2uDPcAHou2iVkUZTH62Wo8qL
	Kj3qAccmA+b6dln56mi4y+LpsOOyQFmkab4NB5hvX7hfN/3ZfOVWO2DtV14+0ssAyjuN9RXsOr/
	Bv7qrZ5wERATiNhLfwPNfFXlzJMiS2ffZNlRCm+knNVPIJu2T6s02wkanGE71CONh1feQMSNZSW
	SnxYqWfeP2HrfoGvBrEFh+PB+zhSpv4E4gjfrQI8AKWtqVhRpAtlPk9Ft/JuCIS0Kny3DacbwyR
	MDqei0r1b/A7dL19QLQSSVoiWyuvItmf9PBl7IdbAgwWE+zIrSlecUzd1/Q7G4Kv2XSVTOfCHTY
	yvKyXM6TFuhtFllHQ6quh+8jDoUQvr2PzKWoChYcDtl0LEmO34LAfk5BHkd+nzFBDtXkoFIuw/D
	E=
X-Google-Smtp-Source: AGHT+IHUj0n47h7V6n+yPrS3AH7Tk+MT/zDMbn/+1x+Z1nt4DmkG8sgKVizJiB0cJZx6/5G2TiyAow==
X-Received: by 2002:a05:6a00:398e:b0:776:1c49:82f8 with SMTP id d2e1a72fcca58-7a777a489f7mr12266459b3a.8.1762139149548;
        Sun, 02 Nov 2025 19:05:49 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db197335sm9410788b3a.47.2025.11.02.19.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 19:05:49 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Han Gao <rabenda.cn@gmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Yao Zi <ziyao@disroot.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: [PATCH v6 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Mon,  3 Nov 2025 11:05:25 +0800
Message-ID: <20251103030526.1092365-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251103030526.1092365-1-inochiama@gmail.com>
References: <20251103030526.1092365-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "phy-mode" property of devicetree indicates whether the PCB has
delay now, which means the mac needs to modify the PHY mode based
on whether there is an internal delay in the mac.

This modification is similar for many ethernet drivers. To simplify
code, define the helper phy_fix_phy_mode_for_mac_delays(speed, mac_txid,
mac_rxid) to fix PHY mode based on whether mac adds internal delay.

Suggested-by: Russell King (Oracle) <linux@armlinux.org.uk>
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/phy/phy-core.c | 43 ++++++++++++++++++++++++++++++++++++++
 include/linux/phy.h        |  3 +++
 2 files changed, 46 insertions(+)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index 605ca20ae192..4f258fb409da 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -101,6 +101,49 @@ const char *phy_rate_matching_to_str(int rate_matching)
 }
 EXPORT_SYMBOL_GPL(phy_rate_matching_to_str);
 
+/**
+ * phy_fix_phy_mode_for_mac_delays - Convenience function for fixing PHY
+ * mode based on whether mac adds internal delay
+ *
+ * @interface: The current interface mode of the port
+ * @mac_txid: True if the mac adds internal tx delay
+ * @mac_rxid: True if the mac adds internal rx delay
+ *
+ * Return fixed PHY mode, or PHY_INTERFACE_MODE_NA if the interface can
+ * not apply the internal delay
+ */
+phy_interface_t phy_fix_phy_mode_for_mac_delays(phy_interface_t interface,
+						bool mac_txid, bool mac_rxid)
+{
+	if (!phy_interface_mode_is_rgmii(interface))
+		return interface;
+
+	if (mac_txid && mac_rxid) {
+		if (interface == PHY_INTERFACE_MODE_RGMII_ID)
+			return PHY_INTERFACE_MODE_RGMII;
+		return PHY_INTERFACE_MODE_NA;
+	}
+
+	if (mac_txid) {
+		if (interface == PHY_INTERFACE_MODE_RGMII_ID)
+			return PHY_INTERFACE_MODE_RGMII_RXID;
+		if (interface == PHY_INTERFACE_MODE_RGMII_TXID)
+			return PHY_INTERFACE_MODE_RGMII;
+		return PHY_INTERFACE_MODE_NA;
+	}
+
+	if (mac_rxid) {
+		if (interface == PHY_INTERFACE_MODE_RGMII_ID)
+			return PHY_INTERFACE_MODE_RGMII_TXID;
+		if (interface == PHY_INTERFACE_MODE_RGMII_RXID)
+			return PHY_INTERFACE_MODE_RGMII;
+		return PHY_INTERFACE_MODE_NA;
+	}
+
+	return interface;
+}
+EXPORT_SYMBOL_GPL(phy_fix_phy_mode_for_mac_delays);
+
 /**
  * phy_interface_num_ports - Return the number of links that can be carried by
  *			     a given MAC-PHY physical link. Returns 0 if this is
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3c7634482356..0bc00a4cceb2 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1813,6 +1813,9 @@ static inline bool phy_is_pseudo_fixed_link(struct phy_device *phydev)
 	return phydev->is_pseudo_fixed_link;
 }
 
+phy_interface_t phy_fix_phy_mode_for_mac_delays(phy_interface_t interface,
+						bool mac_txid, bool mac_rxid);
+
 int phy_save_page(struct phy_device *phydev);
 int phy_select_page(struct phy_device *phydev, int page);
 int phy_restore_page(struct phy_device *phydev, int oldpage, int ret);
-- 
2.51.2


