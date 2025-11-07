Return-Path: <devicetree+bounces-236072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B747CC3FB35
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 859143B2240
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5053254B7;
	Fri,  7 Nov 2025 11:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OBEc5ieD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B169324B19
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762514265; cv=none; b=BVsVHlewR4j0jRJOB4j/rXrIZQhK9+S/nLRVZemgPve+2juFrTFmQ2m1nH3N7WzTsiIJF66qgfJJVEWo+LTdvDIjv1cJV7QYzDzXUZN9xsOZrWCoXZBBYBIH5zCoel4Nh4j+hMABL2YrELmkH0/h2nojAUAFQHesxians9E7ILk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762514265; c=relaxed/simple;
	bh=km+Q85CbXoWksNaZ7smPrMgV3IhcwRncYPUgD1dodvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fZcIReiUbExlXy7s31g5UXtLhL1sJMMPM3Lwvsdz1iMNwhr7uoL+tB6XFS6szVmvsfaH2xxNSnYsToL2Z1pTCU4JG8vKh3ljg85uJldQiFwcLC+axN3+/zQORn7T9l0Aj4N6+fRMdykvg+WBu4R+LNEKEkrnjwlNs9TOZs+JF/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBEc5ieD; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2951a817541so7230795ad.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762514264; x=1763119064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAEkeQ8lL8zgGt9X5ptAhWwpyBVXGyV+fHaoeQsAx0w=;
        b=OBEc5ieDK0iYhyYel57RUAvFd1VF/1+Bgf/e3Ly5KuI0Sm4RJB2Ys+EFeYoa7rj8K1
         0PTBpZe8g59t3RY4ScS6Y73B/VN/u65xMmOslSwfpupiwjXNnlzEGjF84kGQI1n5Z0iM
         W22elwXAbzgdxZqj10mdhri1l14yPZYsdlVIGypBPXplTKkN1Y1+eRDXkunZL39dt+dO
         CSYh4h7EUgdaH7D5Z2b22PwnRLKJkLWzSyaj35kZycfaG8HHrDCvXHpM+LHHENUT8UYd
         RDmBudfWsaKY/CdwT4q0yt95KyYLh6OxrsbrekGUjXe/Xq5UIrT0lg3q25r8XaTyF+WL
         m09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762514264; x=1763119064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OAEkeQ8lL8zgGt9X5ptAhWwpyBVXGyV+fHaoeQsAx0w=;
        b=COVYQuD5liOmtJkkrEinMvGyHJHrYG4nXz9MtgqfP25NFkyZ1aOfO+J4l8+Y0+xiQO
         tr3GDAapM22QGRfllv+lSGwsqcX6ipmVekuxyGJRS5kSYm0+FMFdeYM1Ps/b1BEeg9Mc
         Qqv4n1hJRkkOgxCd4arnEKd67OX+v5SgK5SA2/O7cX723vW0I5c+7GjS/FJ5uI4fROjh
         aFsWC4roRASDLlMy6XGtmPaX68BgU87f8d+mj8uVAxHCbrXAjwi6Mt+aS4abuVKeMAwZ
         h9JMIu2u0c6+ludU9vMe+Rj92d7d3Ct9sbgwoz/GAhpD/Dp0pjL7Jva5384N/6YChAG4
         Y+ew==
X-Forwarded-Encrypted: i=1; AJvYcCW+VzZctgUrIbEhWF7A0iZGQ+VVZ+xEsVf287gClT2UrggkYPTr0i1s2wL4fS9ahb3wOl+4CVOLFIAb@vger.kernel.org
X-Gm-Message-State: AOJu0YyIY6Te8U7kiPQehinONEm9jS4Ywc8iXW5O6yuFYymuQS1h3cDU
	AU1OKtqvJAVL+iIm/Z9M0qlMdzAeP8MEAeR8Y3BNUhh6qZeN476wqia7
X-Gm-Gg: ASbGncsOfcltmlp2qdPfRBh5uzZZGQXl88phKu4jLhPyTHZzChkyrSDyYO7I/bP3jKt
	8FuaPH2DPxj7XZQfi+FV9/fGnuXSXnCbqxfM5uW6BadLE+SkFJH1aIYPkL2u04egSZKkFF89eNp
	fp0AOChzlnvYdZmQ8DLw9yImabuchyuzbshDiiv6soSm10l1alJF9G9Y6s/4HLYwjZVrUiSCfVz
	n80ZlcKQfFqm3wYpJqRSpVHwG81UXxHMPmWqzITd4DGbNOqlnsiAAXqUo7kO9tXoGGmN9w0VSWY
	2FzrHATGAYCF4wnuMx2ikgWLyJ9XQJ2D8jpJ2PR3yrTyxnFVAT4z1rZzEKfQQzYaddzvvoQ8nEJ
	aftn2BAYpgtcpay2L5gdHkFjhm6yiM/fiCuKw/flJPuyEnNluvKlmJhKk4uMe8GSkvk0+MPhulm
	E=
X-Google-Smtp-Source: AGHT+IGmhW4l2QYXug4vN9BCUJXlqsiwbMW15g9DF995bQ1tw6dyuhIw+sFYeLzZjXJTBAXyKbUeTA==
X-Received: by 2002:a17:903:1aee:b0:295:9db1:ff2b with SMTP id d9443c01a7336-297c048e371mr36463155ad.57.1762514263694;
        Fri, 07 Nov 2025 03:17:43 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297d766efe6sm5186215ad.49.2025.11.07.03.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:17:43 -0800 (PST)
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
Subject: [PATCH v7 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Fri,  7 Nov 2025 19:17:14 +0800
Message-ID: <20251107111715.3196746-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251107111715.3196746-1-inochiama@gmail.com>
References: <20251107111715.3196746-1-inochiama@gmail.com>
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
index 605ca20ae192..0c63e6ba2cb0 100644
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
+ * Return: fixed PHY mode, or PHY_INTERFACE_MODE_NA if the interface can
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


