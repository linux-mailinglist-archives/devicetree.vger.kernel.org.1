Return-Path: <devicetree+bounces-231881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 029BAC12350
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17929580633
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4396521C16A;
	Tue, 28 Oct 2025 00:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CsCefpb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAE8214A8B
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611956; cv=none; b=EAQSSd0bDqGmBvzNhl4XMAQKRoD/L91Jx6j4pEMfiaF+ODayZgHkh+9p0vAaKL5TNVJOa7DHlMP52a8UF60oP00r3uolC/fLvG7RMDAkMsifbULP9z90qxqdd+L0nbrsfOQPJMqBSduzPpQAI5hBJawUJVclq0oKtLGsKKfegcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611956; c=relaxed/simple;
	bh=WFJsAwSAfBll4rXsUKTECSFABgQcDyDelT5akN/S2SY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cpzjTZ7HsjfW7qwM23JB4meP9EI1F1HbbY6BYmAlaF6bvanWEIkJjyDzbfKcb5KpPl4YbiMourEXU/IvkatIFJn9VxBmzfSl9Scyoj+5MqAIa4S/MXvaCjNcyW6lWT9oSbBK3zZpXsx/Xsozi2LZncuuajnYeshABCPDaDYXiGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CsCefpb3; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3401314d845so1778968a91.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761611954; x=1762216754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WcWCGcgNvS5Hv44YHDTwLTthjpcd05Gmj8wnblh/dE=;
        b=CsCefpb3iNpm9bqI3uYHzcetXexj+rkkWvVHVtfbY9kWU9Z0YkQ5mI2m65+wIx2fku
         nQs5Z2upHq6ZgZz+4tiLwp8zi9yK2UynJaXi9u8V+DG2JKDzBxsvw7+J687MdzwahPV3
         RWURvFMFzWNPwlsZ9R+Dh3hbpwrCNOswJ6nJ9UQ0rrZlwaXVmAYx1JQZe1z/XGV+Z88V
         tYJVLIc9LJCHW7scip83S2WFusEXJ46RcpGGWRzvKUgFV4UZaVxQeup/ELammo5ndYQ+
         ZKTNz2ZtsIIdOBoyQ6NquZv27VySxMcRMfjLmS9kIWqkdpCkJxJkdZwAJ9oC8Hx5E35W
         2RAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761611954; x=1762216754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WcWCGcgNvS5Hv44YHDTwLTthjpcd05Gmj8wnblh/dE=;
        b=ep/VpJua7QbOob8iEvcIQgXEIiJNGHgcnmotAPp/PMTHgN2PCYN8yK2IkMLapzDtdW
         7c2Uu5/CiMuV+34dNRErfuOliFDh3mg6U+IHWzAPx/t2hMewXaoGVLn1ouHMKOL4mU67
         kzBEDh21Bu42DkzJmsh6VHQu/B10lkTVFGl4KHHCxE2QFJraQsZDnbY30ipfXXvsmEvk
         pof7fuh7dFCGdxvikCpfZbdMfEjhtAA7JGKEDnp0rmY9e2tE9WQ8+cNWSAEUKc8SFggb
         ysoc6Jy2b5XDQSjpTBFvLsxFJJ9G3ll3J2A9t6y1GVX1CgH4cactdDbZFnSyFTUuOKJa
         WbLw==
X-Forwarded-Encrypted: i=1; AJvYcCWfc58K8gG4RGq1liuwPlPp3RxvgB3kfxBX8P/fftB9zvKMqofI44VSFrD9dR+MltgnphR6gEzCArGB@vger.kernel.org
X-Gm-Message-State: AOJu0YyeIH+EoYYALtw1PaGyDbI8uU5AiR10dxIVTDj/XLttCAiJJ3Qz
	KilUtuNk730xc647jfaLoUr7iENm53gjXPZyUwLPd6hSk+4DbKVTUKiK
X-Gm-Gg: ASbGnctPlE1mWlTEZ4bluiin+Vm4b5P0lgYBgu3i5AOCJoIz6hlF5EBfFC4tsAJlNaY
	Sn2j9qacP8chWLC4hMEaTce0uJ7S8gGJ7MY8Eh1ZWS34kgSU/uem0Mr5Gsc5yQyxpUFw/H4sH1+
	AHlESwwp2vHyCAhrTYyuVRrZ/uZECVZ2ZDmVaneAHqgNU2hcX1jwwlu6e/xMavYvMfFQdcr7WiU
	aAZr07NlBi6+gISML2GK1yiGrsEQ0BX6A/m+/OlGeQSyKPCwHOTLqB3sc4hbj3l0QRQs4Mq7u2/
	C4OLiOYhRLwxuhkjg2hCQh87+y/dmi0jaOeIpBnqsM2TEqKeNrc32Jq8EBrotMHyiEgTKGISP87
	pGUu6aXjuSnI+Muc4mxL2glaulb6I/KvD0gQ9Rm0mq+LlMcSwQk/be9e34e6SGW1zrijumV5wBt
	7l9NUhtdaeUw==
X-Google-Smtp-Source: AGHT+IGlGdHwoHvvWJbSfq7fs7gWWYLvmYXWrIA0qO3xj1Qshht6xEIpI7sww7p68LXdI3n1iXEunw==
X-Received: by 2002:a17:90b:3882:b0:32e:e18a:368c with SMTP id 98e67ed59e1d1-340279e3fa7mr2149486a91.7.1761611953610;
        Mon, 27 Oct 2025 17:39:13 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414034661sm9665148b3a.26.2025.10.27.17.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 17:39:13 -0700 (PDT)
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v4 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Tue, 28 Oct 2025 08:38:57 +0800
Message-ID: <20251028003858.267040-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251028003858.267040-1-inochiama@gmail.com>
References: <20251028003858.267040-1-inochiama@gmail.com>
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


