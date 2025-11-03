Return-Path: <devicetree+bounces-234196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA2AC29EB3
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 04:07:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9EE704ECE60
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 03:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF01428DEE9;
	Mon,  3 Nov 2025 03:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IlvnYkkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB772877F2
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762139154; cv=none; b=L3ujgyPuO2p30y6TYbyb8bCo91mJkeLi1HfH1A5S5+bxlg4MknaCv5JCkWl2EM/8aLSbFKxHAkThEpPlCHVTHENH8hnCSCIYmgcEnGuZygj1ui2t3wttKc9A2ebw2EzrgYmzpx4PWVPFgSK8gG59VeFe1BjAjGvnp3NZ2ieLOks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762139154; c=relaxed/simple;
	bh=rxp/NrNnXrKf8e0GBNNTRnLO6fRnsXQEhl3HcuPYlQ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rj3ylmAvItUJmA62GTqd2i7p9G04CQ68pPpIJIJauLu0GwJH/PIVPDjXmDoUK1PgxpG7/0fNtj/JMfAAggli/AmMFPxrCIn+1bfjxlBdE0GQ3KB0/N8QjBnf6qwS+vT/zYWw1DHctfAFomTlDvq+Lg5iQMkD7n5p8r34DA68bEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IlvnYkkq; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7aace33b75bso557022b3a.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 19:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762139153; x=1762743953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=IlvnYkkqhNhe7zCxj4W/bFhvxGOJTm9KOXl42VVB2UwOorfnYlPO2YMYkUzAljsfUs
         fIRepEdk/YiVgxmz5Yuw6JtQvo/d6gpZl5AMV5EgGPLKgU57sKwpRMuypTGXlPE8mZcQ
         EhmUKfDzg02VjCa3/6Dyg9t7ASmyXSfV5iyzVKqqe+EvOFNtA8uRuOJs5UEdzBgX6J4I
         AiyA/AsxrVM3B8sI6ZTgQ0kSHXpweaMJHg/L1dghofKsjY8ifaScy/WYtyPemaMeNBwq
         nZ951iR1H9MY4HhBI2V3vu2kFbNvRAvG9KgQuuYGMRr1VgsLBvao66q0c4azgpmYSO3B
         GK/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762139153; x=1762743953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=UH8exzXAM2MXQOMBi0HrFku7sk7DaneHcvRU4R5dELioBSaITQ0uigt7jDYXZeB5BT
         yIrAg3guCxHUIybQqBn9YCYBVtp9JW1Sp4klqzp4lA+ZAOz/cSGwFRNhuWWSrBTOfWN3
         FuKODmDCCG/AVTkYDIxD+AAHzmyZ9/5CfXD7V/VBhrbcqfp3e48knfsfJz/00wyLi73j
         iyJgsQFLzsWh+U7k4jByCQ1y+cwOaHpxZsb/434NwQsw8ABUQFtOZU6RR1Qe462AXTw2
         Hbi6si5fpg2TFB7RUPaSHknkCCpPm/VLY0joCY+T6/xqma6w+j7ZMuhxCK9Uyq3k/BKN
         CiRg==
X-Forwarded-Encrypted: i=1; AJvYcCVFWiXq0jhW1MHr7BYrtZeDjI9lQtmnjHl0EGrJguP81btt5s11infc1WR6WdZPKWzlxQgVbIUA/zaF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx08laNIyz3vpNV9Sg64DSCI5LSsQaZbSD7dy8pTyGA/kOmIkDm
	7D7FACLJ9KrGBqU4iI6O5u0f9YRnTRSchjFgkkWx6uyIpMHlh9fu1clx
X-Gm-Gg: ASbGncs8O9Imp+f3KypMiBNEeQkd4A6ptb+d1QuYePOJJGD4aEMWGl+CWat9uaq/+MZ
	4PwW0DSAXwLsC9ZQkOb/GjgVtoK7qN2O+PQ0PTuX6gWcKA/SEWH1lqsdt8Ox13QbwJkeGUza0Vv
	rtxQ0Jn38J8sViE+M53pXjAeRlECMhn65QiYcI1fg+3k3vT+7SuUt6Bfi543f9rvv/YKot2Vs8u
	tVBS1MN4W2TGjHb23sljCI6G2yavkbFtSPs6IaXRutqTX+aoJYumtwhWO9u0BYnwSR5WCb41sLG
	CHzRi9TLlDPTPyQnOAdqtAK50V8q3O/75nlEq0lvsEAyyOEZORKTI7ZtUWlC8brPgCPnnSrvSij
	Tl5cysGfzGni7YePnKyapBG8ixm+XjssDqj1R9MCw7IhGnuDEq3nohWQPEEj+/KqHpr40Ngi7G+
	4=
X-Google-Smtp-Source: AGHT+IHPm4B46oBMKEiDtF1pRQ9fXhJATCw1b8SJYuGAuFOpbmfcoaiK6106eJ2qyIrf/kfq6Jj0wQ==
X-Received: by 2002:a05:6a00:2196:b0:7ab:4fce:fa34 with SMTP id d2e1a72fcca58-7ab4fcf3eccmr1842539b3a.1.1762139152609;
        Sun, 02 Nov 2025 19:05:52 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d897c632sm9343229b3a.10.2025.11.02.19.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 19:05:52 -0800 (PST)
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
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v6 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Mon,  3 Nov 2025 11:05:26 +0800
Message-ID: <20251103030526.1092365-4-inochiama@gmail.com>
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

As the SG2042 has an internal rx delay, the delay should be removed
when initializing the mac, otherwise the phy will be misconfigurated.

Fixes: 543009e2d4cd ("net: stmmac: dwmac-sophgo: Add support for Sophgo SG2042 SoC")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Tested-by: Han Gao <rabenda.cn@gmail.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 .../ethernet/stmicro/stmmac/dwmac-sophgo.c    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c
index 3b7947a7a7ba..fcdda2401968 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c
@@ -7,11 +7,16 @@
 
 #include <linux/clk.h>
 #include <linux/module.h>
+#include <linux/property.h>
 #include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 
 #include "stmmac_platform.h"
 
+struct sophgo_dwmac_data {
+	bool has_internal_rx_delay;
+};
+
 static int sophgo_sg2044_dwmac_init(struct platform_device *pdev,
 				    struct plat_stmmacenet_data *plat_dat,
 				    struct stmmac_resources *stmmac_res)
@@ -32,6 +37,7 @@ static int sophgo_sg2044_dwmac_init(struct platform_device *pdev,
 static int sophgo_dwmac_probe(struct platform_device *pdev)
 {
 	struct plat_stmmacenet_data *plat_dat;
+	const struct sophgo_dwmac_data *data;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
 	int ret;
@@ -50,11 +56,23 @@ static int sophgo_dwmac_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	data = device_get_match_data(&pdev->dev);
+	if (data && data->has_internal_rx_delay) {
+		plat_dat->phy_interface = phy_fix_phy_mode_for_mac_delays(plat_dat->phy_interface,
+									  false, true);
+		if (plat_dat->phy_interface == PHY_INTERFACE_MODE_NA)
+			return -EINVAL;
+	}
+
 	return stmmac_dvr_probe(dev, plat_dat, &stmmac_res);
 }
 
+static const struct sophgo_dwmac_data sg2042_dwmac_data = {
+	.has_internal_rx_delay = true,
+};
+
 static const struct of_device_id sophgo_dwmac_match[] = {
-	{ .compatible = "sophgo,sg2042-dwmac" },
+	{ .compatible = "sophgo,sg2042-dwmac", .data = &sg2042_dwmac_data },
 	{ .compatible = "sophgo,sg2044-dwmac" },
 	{ /* sentinel */ }
 };
-- 
2.51.2


