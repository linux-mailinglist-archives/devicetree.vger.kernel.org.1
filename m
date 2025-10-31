Return-Path: <devicetree+bounces-233487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A11C22E05
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 02:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DD19422E66
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 01:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9813E25F96B;
	Fri, 31 Oct 2025 01:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h2x76iF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0495625A324
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761873902; cv=none; b=VC1mpYG+PPRW78iHVhzEHLwj7O3qiyqsLD1muc+RxxbX5Yb4rBmYhHtxQf//6HHxG9+oKcl+0HPFHdNpI6m6Ji67iHCPcZtRh97V54DYFvc75wXXeSpQoxWMOK8vd8irBrgGFlQwdp06n94AOniZKrKGD2UijBw5sMeqGru34aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761873902; c=relaxed/simple;
	bh=g1gjey22aj0deXr/Rxp5x8gbHU/r8O1Vjh1tF746E4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KSGi1oMwtf1Hq9I+NlVJTgo/X2OK0aAREOAUgb/xd95gbQHCGX0uKScBBc3DjApNSNo7sC41XpN7ld3EofTfzGBZ/nmzWfjcwXcJ+fIV/K30yPUmG+WQn3ekwg/LwVRhfmw3Ag+yrKRjkxDGfruSugyHXzBIeBDQ1FzTUi5zQ2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h2x76iF5; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso1789460b3a.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761873899; x=1762478699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4QTOT55+/ql6/pjv059GwSZ6Db5fZXYVpPWy9XubXk=;
        b=h2x76iF5gsZSrAqT16Zl8VSOR/j3rZCBYyuuvJEtiqcOAVHSKeX5lppNogpOX3uDmn
         r/hSD84jQ32mYdWa1/Eu9toFcX4XEEI7ujJBewwgZtFAYUq8ybj+gmpa22K9N3pP/XrM
         dYbpbRKRMeGprQC4nfT6pooQORnnCTYkodRV5mkfYcVz8cA67yWDDVocd0OuK17P6UVO
         DphMlhiMCATZRNhgxgus3i+BQdsmwr9hEF1/G9AADIGgxB8GhJ+ymm5mnM6rXYgIStCf
         a0EH2BRb0xKP5xBc7b4TUh76RhGyV2IbztTwoJwspHHPOAMNoRdmyljxQ+qDp4Pfytux
         u/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761873899; x=1762478699;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j4QTOT55+/ql6/pjv059GwSZ6Db5fZXYVpPWy9XubXk=;
        b=M9xAKntNySqBbyS9SXAD/sur9JOKdU+42qGRPlNtC14Um2gdpbdGEUPt2XlyqsZuZP
         OBPB4+OrevPn2DMNMvyYPIxhVS5oBAZYp0BtoHIjfktO+ppEh7xHW/RAeK0XL0yHBKTg
         SkdPLP1YTZM3nDzElfyXpOQ+R6ZfOFlBAwflwOa6h6UoJ8MIDZw59Qi/GCPkYdkqzoCh
         zdwh+Bz95y8kO8UbVl7bnpW1yPHoWP9O2ti6Pi9wU9j9ygHsxwN/0b5PH/Cv/81SBApC
         LmBwJlqjJ6ollPIAFXBl3VAM8bAHO51ZRxFm04kEUxevUKVd6UyEzgKb7vSd02cdoBl9
         xJfg==
X-Forwarded-Encrypted: i=1; AJvYcCUY8N0rrWmq00I6oykyzinJnipk8BQ3joDjpKPu3nnmlHXw33mDI4XKLkjXkwr5J+XrvKIK6SmrhA7Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxvN3woqp1C/JD5Ny0tGE3xlSJonofG6oS05yEYyW82iXHLdpH5
	9W43sNHn5SIz54/pDNIjV6Nr1Htuyy8gD8ZyYWNlmWrlAEvPnEa+VDO5
X-Gm-Gg: ASbGncv5eFU+YHC9l1J+RYHLjFN08hbrC5skI+yTA9gM8jegjXxEEuSelLt0QFYgNpM
	/+wIUYKvPgXC88YhK4sqTDiMKnMQ09JaqkQQ3QAnLmQj7ALKxS03nquREDuXasyAtCkHKNZV+5K
	ED3eaZhfTEslPZsiSJS5lMoClXbkMFKDUbTXDi6HWtIsPJeoHDC1M/J6szvkjgTKyfkFGEnOFrv
	sJV/SqW4j0amr9yxleFoKVYyELUiA8GpsyZUr23gIHBz+SRjbew8tZ586hwjoLlsfko26eVPi9T
	r6furQSYFuG/cGdzdKsx4C9RJbNtTRWJh9+r4U8Pr54infGJJmmezfa7cojzIFGHAHqOCXEF5+K
	ZlFvxPCVd1mMdpCSy1DO2nfZonp/O17CgJYb000BhR0EqGk33NSQHizMt7rnSwAW0Bs2HDAwmX8
	c=
X-Google-Smtp-Source: AGHT+IEs0RZ/akZQh/jHGALZ8vIdUFz+6rVbFCmA91u1uXmk0t+e8i/uOrvYZcU50yYSCbE6p+FSyQ==
X-Received: by 2002:a05:6a20:3d1c:b0:262:1611:6528 with SMTP id adf61e73a8af0-348cc8e455dmr2461008637.29.1761873899175;
        Thu, 30 Oct 2025 18:24:59 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93b8c8cdc0sm228117a12.13.2025.10.30.18.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 18:24:58 -0700 (PDT)
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
Subject: [PATCH v5 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Fri, 31 Oct 2025 09:24:27 +0800
Message-ID: <20251031012428.488184-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251031012428.488184-1-inochiama@gmail.com>
References: <20251031012428.488184-1-inochiama@gmail.com>
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


