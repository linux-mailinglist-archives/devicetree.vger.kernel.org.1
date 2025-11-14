Return-Path: <devicetree+bounces-238408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C12C5AD03
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6E8AB4EAF47
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05997246BBA;
	Fri, 14 Nov 2025 00:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eSeiBJmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDE2262FD3
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080721; cv=none; b=Oth7Q0RAukA+lCLPf0x18mZ+OVRVc5D12gAsL6x3ITRRIxcwbOTp2xavJdRQoycVE1DQpcaNHz96LI6d7IFUBSl/XFCpGM9SPHD1V7RqUW+7iHW8vWC37LLQNZFZehgqtx/EcZXHGLR+f1rYZDjgJAzerQe35e5qqwv906K2H7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080721; c=relaxed/simple;
	bh=km+Q85CbXoWksNaZ7smPrMgV3IhcwRncYPUgD1dodvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IwCFvccTE/EmYKAjxfnknUVxfJtU1m/66LWYoR9p+QT82CYdZ4wr4zW9ek88lwbhi32rcdiDmSP/oPYRM5HczeHZoyIsS+nB+jH08dEuPvi2HN5d+1L+YUZ9c4vGex29obu4t3UqFIYaOvqegya+XYLGspgHwx2muoqOkE+Va/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eSeiBJmw; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bc59a785697so665381a12.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763080720; x=1763685520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAEkeQ8lL8zgGt9X5ptAhWwpyBVXGyV+fHaoeQsAx0w=;
        b=eSeiBJmwADQaAmW2siWb1cNJo96MWfyAHUdaktEO063SmLgtyAafudRkVb960CPxJi
         pVKgBBjW97J/E59vcW25YN5LT+mnikqedkxCWsBHyfdb/SC4npMEvzw3s1P1s/Xmixa3
         uySaO0/n2oPxCsO5S02XktaD/QBYbeV2wfiekuEJk1za5DGokL2Fd2opWpOrgEAzC7Km
         5wlMyz+rkl+bZDctie3Hznv4neIVNouYHNP6XUUKMEr+2zEhtd6ibHq50RbE+PU8uzLo
         2i3TGNapcxsjwbr3+5dYtt8PGIhKShkMQINER0ibvHeARgHv04PqI8VLXQzlpLhhEhq5
         vR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763080720; x=1763685520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OAEkeQ8lL8zgGt9X5ptAhWwpyBVXGyV+fHaoeQsAx0w=;
        b=pkEuaEbz80wxVuhwYoD8ARDqKKAhxIrSV/hYPUstts7AyFZ1IQxzU/ukFasTcbQCjv
         lExcUlCq3VAPbJafiAOILo0tDaMnbV5JpDxk32fOl6pGA+SgHdvquX7zn6ajEpi9Vw4+
         ExqDRtC/jm4v46jh2aogcYYoIqsLj+stY3de0QqaVc8ptZs8wvUUc5qAfV9j7YMN0Ebl
         JewL1pbW/qjT0hGTmAyFywK2lNb6mwxYk13a/8gxtz8Q3BWWN+myAC4ifxyNrqO+FEfW
         o0UJ/iqnjyp8gJTXaa2bwAniDB91U9wmONl2yb8iS5fx5yNTIgg8I6Y2oakrxEglHd1s
         UHYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmwLF19hCj+OEBeZPKVaE7cvM72zR4p8B23vhp7QYodb3cpsbM0uA6n7XR1X6XeV5IoIYcNOxId5ta@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Ho9veJyUbfZvLaEtscMDiCt5Z9lqrJf/VFGs7lildAkP3nGn
	TLfFBauLTMQUeHeTSP3ZVE7Eh5ROhNd7Qced0qnAh2HsSDQGGBDEfrLf
X-Gm-Gg: ASbGncuK0YJMRMFoiwgA1wEQmFs2oTin2OTSyJyafVU8VLWj7XUJucNfccWPNBZc5S/
	YVTUdHXq/7+ON5xOxNgx4srm5lVouYuWCkvAY5HZkl2kG5A6sXykPZ2oYVkNJXqDsY2PdfF8oNs
	acxdbJFuDNNw6Jb+LrhO2n93lU+4rMnieX2MZrhKUFlgjBhB0QWsQAFnvheQ3HsG93u/M2AhxTB
	ODRlR6PXcDuEhMLYtNHssRN3o8DGLdWykRsVW8zaS+AywV4dcdBfAyAKb/+scBUWQPtcFJSYVCY
	hbmf6P+ZMklfmdexzhGkrr0Sk34W+A4xe0Xn3ZH8cjL6iFG4Ib4F9ODRZkVEA8c6JgGNJVf92Fw
	/lsOdBbANcDr+IXMLMOoeGmBlotmaFjXd11ZbT9goKhQ2Yz08hiY4/V+zlmBYDfinvP5+XNqe+s
	jj5ymnoH3WaA==
X-Google-Smtp-Source: AGHT+IHhHMFOgdJTCCj2iz3xbNhHIo9j6lyjGd6SR7Dx1GmoSljn6NAypb01axUm/7zVz96HeKqrgg==
X-Received: by 2002:a05:7022:6608:b0:11a:4b72:35e8 with SMTP id a92af1059eb24-11b40e81abamr546686c88.6.1763080719556;
        Thu, 13 Nov 2025 16:38:39 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088625sm3368287c88.8.2025.11.13.16.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 16:38:39 -0800 (PST)
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
Subject: [PATCH v8 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Fri, 14 Nov 2025 08:38:04 +0800
Message-ID: <20251114003805.494387-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251114003805.494387-1-inochiama@gmail.com>
References: <20251114003805.494387-1-inochiama@gmail.com>
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


