Return-Path: <devicetree+bounces-236073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0645C3FB3B
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C0CF3B2FA0
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246B8325737;
	Fri,  7 Nov 2025 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="efBVLnS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CBD321420
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762514270; cv=none; b=D52W721m6OGxBcjb5ApYBRhssX4YixBJsKgru8HHuHtyIbcz4HAL22tKsg9oCqiAZWMlbiINgTS9iWgDHdB8MT8l5VSc52cl2YuJyDCC9vnPirtbmUTapqEiHysGoi6euWf0DFt66mxJZs/j7GptMz8WIYGSWOx5WdJO+0G/Xnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762514270; c=relaxed/simple;
	bh=rxp/NrNnXrKf8e0GBNNTRnLO6fRnsXQEhl3HcuPYlQ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q4EVQpuiGdC/VFNnzebrdp/sMneq6F5BcxB/tUNTayaIsxcUAKsxh5uudquXmZHelmZBS1fqBuKu8KpKCE7HOH1gXYdKUBXFZ8eYT3wT+zNUHTAFu48GA6ZRe6CuWLwSC5h9pjGCUMBXDQB0j0DN31IXS5V2TagmGLV7jn2nHbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=efBVLnS6; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b62e7221351so538691a12.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762514268; x=1763119068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=efBVLnS6SwbR+yWZnzHbX4fAk5sX0yw9rH7JB41ZLG5iKJIf1m9SyRWyehl3fhkUlh
         ZOhRo0z+ISXl0aAfHQXlkpcINoc+Be6vEhTsMoG7S5wC1tjfAlSbOOKw4VibmVT1hmsq
         F7Tjd4oY9fY/YbMNx7ZPbsaWh/beFjaWbyz04ljl0nmu9C2uJmTsWMwd02pnOqjiISpU
         KWxCVPWXmFpcS7EC1pkOWeomWVkr7yOQXOky9PoCXjR9Vc+Elzrxyq5MRQ23sA75Df2B
         0WtFUmMd+JNDDEL8Ds0A3G5F+bVHVbfphvP5GMDeuTEtIRjJAe1y++Zmbl7eAMS/Xf/x
         FaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762514268; x=1763119068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=YVP+iMghM7vCCw77laB7UrjpppqMbawfgqjL6mwttM5ip9DNyMBDMx8qnTxBjRbpDv
         pBbv6L/gisEQM7+KrgQCdpLwemmtDBbej9TbxJlHOA7LUN7Bpl8azkvP+LiH6aYr5Nam
         yjbA9EXVqeODqD1weQVGCcqakqJHFuN1tE1U1rtjnFKmhsDKAqgtiOcqVdlM/nfN6zs5
         EwFTlidE+RpzevWEJWX1o/1cdrZEj65BO8yfqNs891f3EhTthG3EZ/U9MCFWivncqz2w
         LsLgvXWtkruFp29r+/Kfpr0hl4Dq5NrgCIQsnblg/Xnwc18aw048YOVsj/FuPyrUn2T5
         ltYw==
X-Forwarded-Encrypted: i=1; AJvYcCXS339iEeu58en7mm0kV7Ds3IUPBnJKCXJNmDxcCKf5GzmxCEmEcEpKTpprlQjK/FzCYsfzr8/2T3BK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2rha2tWRkMdPXN3iUYByahusP3xqEyUdxe8lvChPTEv/WIRbA
	BT73DvmSGRcDGmpWtN1VjgJP85MQRjkNrBFTgqsnBB9ghPtdbfmQHlZ/
X-Gm-Gg: ASbGnctGyUX5x01P0+zKnP/UEyRTipSuArWOAI8GaQ4X/FxZ6RNF6Rh51LlHiG8U9Zh
	qYSq80oOthQzP53qnRWOCQZ/XYh0kXFxjrIax9JH4uC2DE0lHwt63mGuAoQXIOrPww5em68zs37
	W54V0Xoa51KSKdfOLfGzTVcCYRYYMB2ABrWuHdX5QfVozpoF60/LVS44cmaev/KhQWHoCCkIGTC
	eYknL2+uRk2FyHJsk48rddqfqSEnw4NPvCIR5eDjJS9OqHr+vSNSGtVZ1wQYKsZUIAnsP7vVm6p
	bsL/mkCuW8BhBob1PWZme6PiZcoLJDOfZraE5UaXdrksd4uH6/VqDGTaeKiLhjOqNN57jV9wz6o
	9fk0nIWFqH3eac3yMTOnaasljKUD15rBIOtlDPM5akVAp1ripBmJQDzGtIEl9p1VRm+mtit3lk+
	4=
X-Google-Smtp-Source: AGHT+IH5sLTuwaNwygjS88Dd4DuKT5eyLF2e0aAe27R6LJvuFCPtCu+tqMNQVj8foqUaUxe+5POBzg==
X-Received: by 2002:a17:902:f544:b0:295:9e4e:4092 with SMTP id d9443c01a7336-297c0485f18mr38236515ad.56.1762514267918;
        Fri, 07 Nov 2025 03:17:47 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2965096825esm58574245ad.3.2025.11.07.03.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:17:47 -0800 (PST)
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
Subject: [PATCH v7 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Fri,  7 Nov 2025 19:17:15 +0800
Message-ID: <20251107111715.3196746-4-inochiama@gmail.com>
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


