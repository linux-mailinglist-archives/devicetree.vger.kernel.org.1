Return-Path: <devicetree+bounces-228709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 275ECBF056B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:57:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF953AF579
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6FB2F6183;
	Mon, 20 Oct 2025 09:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cgSeHrpA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE6A2F60B3
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 09:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760954175; cv=none; b=k3gHnSA1AZoyZRZAQE33Mh1pdYOd4BY+eSuFLfWcDO2mgpm8/ESXk3d0Qa2wbD9SNoiK6n4A3RwgVl4jkThMhBtpApuhAGa4MfdtwEEljfIDHGVnTu0kCiXBmj3W4lzqAewMbeSTA2ODiRFn3cVuU7f6mFouz1rE/ZoI0xboiEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760954175; c=relaxed/simple;
	bh=v+f2Vjc0v4EBJIBoDldEnMcWRnSy9HeOrciMh+mTn64=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XWQt+E6ubWfr+S0VNgAdevtxaUvABMaTw0DSeq1nrjCR7OKvwj+GW0Z1SW3i3OfiZJAkDb136O8jV9+EZseq5gZOMvHZ2KkPk4q5+X48Nw88gDjsIocm6l/J8wNDvoSgclxTSJp2jCHYqtFMvkFwb3pPt4GJ65wHsVGQg0QbOU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cgSeHrpA; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-33ba2f134f1so3877654a91.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 02:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760954173; x=1761558973; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAetlB1rfruY8L6GWaLiiP+AhNOGwi30zR6SQ1TQ+GY=;
        b=cgSeHrpAsiYn9LkIb6KoFVjKjiK33xxVMRArAoFOirEQPfDLUsrx7QSYA1B0jc4dUw
         5rZFmSQj+G2j9Ma3LZqd+a9KbRYUg5FqIOpctqwDRooc2f+7xUlu4mGkBcFynScqk+vt
         xc1fYhgFOryIpeW6f/WEVJkkZgRMW+dMGaugAd3nnfc1EKafFPcKJLwuLjCgMKKnKNhy
         ydaTrFE2EhIAF5gmSuK8lCxrbrsZSWCGrSJpZ1DEPpDaQN2o7djEDhIbpSI8Zx02iRH8
         8xNImkaJW8GECvSQb7m384IS9V8Jbe0mHM/EZ2afzf+wd5hp/NLSQEhkMzodljLYIaP5
         UuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760954173; x=1761558973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NAetlB1rfruY8L6GWaLiiP+AhNOGwi30zR6SQ1TQ+GY=;
        b=NzV5L2sGa75Vg0pFKwbQgre0EdiUN26KyKSlE22eybCfLTP93e7K2ee5gW7xvNRZq5
         UnWVj2Je2525ir1IfWyDscv1dekwJZcGXYEGKpi8377OlrLnq8eDm44x4EoSUvUy4uW5
         0Q0IjOh9h8a1GTGXvGi/+Rc73WoGQrTidS5ux4fBW98wpMYyR+8fX+WRwfcZR6zuHT/L
         hiSwiLuH36iGUCcz54EOjedDsKvFRJU1bjjDeupd9A79NonmrjqYzpfsWdsfEmdfxRoV
         lP9spEYkMMWXYNG/yJ9Etc63SUAhhwZHctOudqnP8f7xs+jqWH6PlbRaD4zuEZVFC7aR
         g/ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUUaD7O+IDyI4l/aVdbr+jooQxf3AfWa2/e3Al8iqpKEqKMgRQ63hvobL8L1nyQhRtYla1Q0wtFY5k6@vger.kernel.org
X-Gm-Message-State: AOJu0YwBKDGMBuYRvLbd68cOCY+O2CDk43qSxjpBi/bJr6HdBB2/BlfP
	9v0pJMGsvnlCsR041L8kBxodcSvB3FvSIvWsLNAHYrsbdZhLggglIQke
X-Gm-Gg: ASbGncuahqzaGLQ90x8dZe+1JKGTX8AYoNItZ2Uz4YreopvlnRREpss+kmQVEj18WwQ
	EVcbKegVpLaDe67nGJj9FXeMBpxSWpZyqVzVwEfV6e+KnbvXOrA5W4DwhG/5IMDI5hwnMOlGlzH
	CVOhS0mDCgeOGxhsdEFuy9a+YUPwSeA5y/nQtzoSyTjz7aqF2bS99G4qOcK00Y55AAqQ4wZZ2Ze
	3FoSybjFt8f2XwA7X72Y2PTy+cmigPaXTqGPJdxat7iyij7oOdka7ZRb/+dnQR9jP34eyp9UTB2
	AwJx3/ac2RwGIDh3kIZCg0gWD75cvzfk/Go64uLyK5wxNHHpJHF0hOt7vwu2jJslSE+YK4qPMe3
	sgvpgBe/v5tcYi2obKt5EBy3F3y22JN/PnTTgNxDmrxvl8/Y+z+Ihzw1pWe1hbtlmTFBKlEG+Kd
	CWEK750zCuJg==
X-Google-Smtp-Source: AGHT+IE7zVwzQMhb5BY4ayD1uNx5wi44qB2+5gan5ZQtQHTnM1ourkvH3ZfDn2OiMchcyVMlnamnPg==
X-Received: by 2002:a17:90a:ec8b:b0:32b:6145:fa63 with SMTP id 98e67ed59e1d1-33bcf860229mr19877507a91.4.1760954172663;
        Mon, 20 Oct 2025 02:56:12 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b33bf3sm7265996a12.19.2025.10.20.02.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 02:56:12 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
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
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Han Gao <rabenda.cn@gmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Yao Zi <ziyao@disroot.org>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 2/3] net: phy: Add helper for fixing RGMII PHY mode based on internal mac delay
Date: Mon, 20 Oct 2025 17:54:58 +0800
Message-ID: <20251020095500.1330057-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251020095500.1330057-1-inochiama@gmail.com>
References: <20251020095500.1330057-1-inochiama@gmail.com>
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
2.51.1.dirty


