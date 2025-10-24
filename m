Return-Path: <devicetree+bounces-230570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4706C040F5
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 646EF3B7D23
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 01:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0254121D5B3;
	Fri, 24 Oct 2025 01:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I0JEdVFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A33219A7D
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761270945; cv=none; b=JNIT8B3Ec9HS2Hu93eO59gOeFcdsUufEBeia7aPmOY0eSJds6t9GWBQqUl5DLCtgGHQUBG0vaRm5le0Syr4HsCaeRlRNbGUIlYwzHhld76AuKp37uHCGWYYL9SaergJ1B8mYvVD6+cFuWiDiJ0JUqfnrgtkOTnAf+PbomyI8jRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761270945; c=relaxed/simple;
	bh=WFJsAwSAfBll4rXsUKTECSFABgQcDyDelT5akN/S2SY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ulsmISapCQa6ZwK6vQ1FUTxiZn8yEA6dTTiUbGci+Bn2gUg/2z4XsZJT8ao93Lc5kpuZMZirK20DdLrSRhaX7ndQnuBkXONmxowJ+GK4m79UMV5GYAHKpcYoIer+v4a33//dHCO1/4a9q0QaHgaO1itZwCPtEEPshIC11D0VSDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I0JEdVFF; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b6ceb3b68eeso1137504a12.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 18:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761270943; x=1761875743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WcWCGcgNvS5Hv44YHDTwLTthjpcd05Gmj8wnblh/dE=;
        b=I0JEdVFFZZLjGhpK53kHTJesKjplW0ZcPj5dXfL4L3dHv/viXeOZAXs795ZhGFx6qp
         aQicd83fppSexV7khmgli08VrLnLuHLlEyb1EltiIkNA68jQ2BwP4r7aPdL2Ru1+f1dO
         TOowP+8CTW/YLeNGIhpfMsyqhbKZXXtW/0Mq5zIhf4Inl6qvJbu+t/AxLL2Y+L5U2QPw
         YQAQLCgSpBhN4SyyU0TEdCHWBfF44iXjJvjOmu/h9zLoDI+bbBdyIU62a/arkz/Tz+iT
         vMko20ZbQcdDSMGGExz+oN+mQZrhGQqpSvfmwSo82C9OtzLJWxROVHQUhakd9v0NcU7o
         nPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761270943; x=1761875743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WcWCGcgNvS5Hv44YHDTwLTthjpcd05Gmj8wnblh/dE=;
        b=QJwdUQkEBBM8LmzONBdkIKZidA/E/sQTsjhc8m7eXvffrTC8Lgwx1k2hdxvdd+M3dD
         e1SBwrFi3IeS0uKZrEcKd6k46xEzfIPdjea3lqCnzKdtH+7UrpHH4+h4ZUpu/mxz4IDh
         go8/1DRMYn0VKzaM0TUBXGRy5wyFttDOJle7aHv9JSOFbVIoHMLZJqRdC3y/P3BDOu/J
         P7xb9bGwXa+ZG6zHsA3h2n1Yn2UmZT6uj8YOtgdJcnrTZ/lf0r0d4Fsfzg5rV4lsgpDM
         q7t9QJPbtNkbkYVTPJ2/hblfynAaiQDqIqhGNz0DMh1Xq2VHzKn0E1UZjZeyNFBhMLdy
         jYYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNEc6flB6iLyLozKiCCjKhODuav/bvGJRm1dJHqX+0EhL2LpIT6e4KGdh4kEokLnCRePQO3jkTvfVs@vger.kernel.org
X-Gm-Message-State: AOJu0YwU+ccvMNJJX9uZgXXel07F1KEub1GvzrzTUgJIa/OHvQUjZ/gx
	bc/gdBIxkPRO2c3Z+W4+VzIzk+NM6kqPoT96T4EA97SOk6SRc+2FbBg0
X-Gm-Gg: ASbGncuOYywkiAToBEUdf6wfaWDnXpV57OPFx6F1fmIlBVENgn68H0xApfPxgqEjt+r
	4YYDMh0eLQJEKa6SwcqqT6tUrK6e9Sfr8L4UYfi1lvY2h1w2VThfHSJ5yxi30hLgpP8qu3nP0HG
	La1JiWz5i+yyQlYKZ0lJlzE2js5ox49AxygjzjuP1I3RnV+9/NgJErZgUUQfIZc64Cg011O5q62
	kqcyXMVfhOGdfRxBMV8U7Jx13Z2cnzZkBzQvlpSv6w+psClatbC15n1cKZhaWEFUxIgnq9PKLMA
	COS4wdS++rVpOQpAJZI0TH5pUNthqHNq99QA9jdTsN00Txm8a87zGxSPOItja6xJnirmiwxirAC
	5hd1vDWTRPDav0DDVWCMqc44tHxN0VyPL+Z4kB9vtJBaY2BgjVYFG/fPnTlXB+q1K55bNq8XV55
	s=
X-Google-Smtp-Source: AGHT+IHkeRksmcYTcot27my+cABGgXJy6A76mmDUaCFMyxR7nPEFIYROl81koFxsnVclUBArcvfVMw==
X-Received: by 2002:a17:902:d2d0:b0:254:70cb:5b36 with SMTP id d9443c01a7336-290c9cf37b2mr241881045ad.8.1761270943405;
        Thu, 23 Oct 2025 18:55:43 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946ddec426sm37638255ad.34.2025.10.23.18.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 18:55:43 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v3 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Fri, 24 Oct 2025 09:55:23 +0800
Message-ID: <20251024015524.291013-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251024015524.291013-1-inochiama@gmail.com>
References: <20251024015524.291013-1-inochiama@gmail.com>
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
2.51.1


