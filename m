Return-Path: <devicetree+bounces-238409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E1754C5AD0C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 88E674EC060
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5549E271A7C;
	Fri, 14 Nov 2025 00:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZSZGeRAf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94E326FA57
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080725; cv=none; b=trQzOCv3oimikSUNzaGy7e/RCK3QWeoL/aLTJsubfnusnk4IZSJ7/PS1YcNaQVvhFmCVnbgf5MLWVIXoyMlOk2iY1y2wgkOeN3QXHPFHRFjUJee/wPRieigpfSxKqgw7F+J+4jM5WsQTngbGn8zUb4H+g7A+VtST+Tb+pR0cLO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080725; c=relaxed/simple;
	bh=rxp/NrNnXrKf8e0GBNNTRnLO6fRnsXQEhl3HcuPYlQ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zbshq1EuVyRAAASZTWP0yfYtW9h2WaDlal0O5+i4y9GdpX63c1M1ZKE5Eu86boISYM/dbjS/yA9Mmq4N6NuVHT6rUszeDo4KgmOgSwgZu7tSfxFNXBeeIXtCw5emYAwTuD4CdNiL4H1YiQF1xlO+xwJMsAifjjhbBQ6xY1AKZg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZSZGeRAf; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3436d6ca17bso1490530a91.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763080723; x=1763685523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=ZSZGeRAf2JLASbtROjIzWaYq9sNu4JejvsWnHk2DKY7fc1prl9yyfmCHjW8VC3JKTI
         +GJXCGMMRBdrglJi1d8cfPZq6cQ9Y0/EEgJ97Cv+UaLf4nKDUre8YDBo9b13XcDMn5UP
         hmM4Gl21JGh7jbOgMjjn0fgdfN0csbcf70PKmwIFKBI6/WH9qx5KjRYw4QdeZhG61lFR
         bDugT6ZYALrxMdin5htfBDixkTF77bIAeu7kg5XPnqsZB167sJwoepKPMKIHLE01+kye
         Dfz1Yrt7aD8fT5ujxDkMGjQafzs1hvXlpBjzKHRcZhXxwLT4TcEb6+a1vXS/KVk7BZ2l
         TEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763080723; x=1763685523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xpMkuoemEQ8nHGHR+sKpMED/PEl2v5+7S85Qkm8JY+4=;
        b=hbSriJgsPB7c1+W9SokJz0ov9rm4ti70cZKNYnygLY4mKBkLv8Sd7o2eCi9vA+ngJR
         L4ahpTuEANeJVgEYxvPlbSDX6jrhGqEAtjJfwV3Eht6JhLwqynCEfjL0vFPZfrqif8ah
         LZ7ppJlVOcDVF8H3SJysNpcklckXPy7dHy5lWs1oAFqw9teII9wpjvwwrP26xCNA80w4
         59UhlAW17JuTrIg1VBWZ1hGvXaNLjOxxPd367rBg1AdbTHwC/RY0leodzU6OHJklTNSs
         w5NdtPdViHQBeSVqUakL7qCn37kPg5F+b8Fo/FrRuwT/6TKe1Z1F48F2cJ571AuWw7ta
         7kzg==
X-Forwarded-Encrypted: i=1; AJvYcCUItdvk7YrAScWwMNlbdwOnJPJWTlqnP1u9cWdrxobqntK1qwUY2ld1kEP2mxJSQzrYP1TxFBiNPTXQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzO60kHHbu3orn2OKbHN9HIBm2aZ9ne7+7IYQBuqSw5kvFiXIoR
	KUaVJWh1m+AVX96n7IsLHyvo2wLzp+7ylJJ5FBrShkPjrDXyoruBX3+3
X-Gm-Gg: ASbGncuM/+DodgjWIY3Zn9KwrCugr8zhtuEMmRdDdu3opvZxqqnmI51K3aCcWl9//5H
	FFULR3t9og2jcf6jLLVFXzNo0F69w0+5a273CQJ7gZT3jnnlMuZvCcr0gI3mRptyS9YiDQi0EWb
	YDQWmpqBX/aLXOgWOt/PP4F04UvucTIA3fKXx9EXkPoqZ52qaQDm1UFx2NsMxLUQfLdqeneWCM+
	mLy5pDpxoRJ1d6PypvhgxrXQZqln1WRg5IME6xI23Gjr3H+QttT2P0x4MnL7GcSsxTANZ/B8Up5
	DzJyn5FPDeRnBjztKCO3gmS5A8kVempIzBGSegOLwquDYNiEndIsXzcboNdiKgylSJEhQmgRAT/
	WoLiIfFrNWP2dpURv0NKqMNeGJ7Hvf6XgZ24HxlxW5VJB8UWUUaoYvb0Ryh1iJrzS8/O0xYDcFC
	4=
X-Google-Smtp-Source: AGHT+IHI/lUdW0Aaq91gtsiZA71Q/CcEnh/FJg4f8D3Tkw7Zsxdk4iz040Cwd2DXuBeB7xK+wipiHw==
X-Received: by 2002:a05:693c:8019:b0:2a4:61d1:f433 with SMTP id 5a478bee46e88-2a4abaa29cbmr464993eec.16.1763080722822;
        Thu, 13 Nov 2025 16:38:42 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49da0662dsm4527148eec.2.2025.11.13.16.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 16:38:42 -0800 (PST)
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
Subject: [PATCH v8 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Fri, 14 Nov 2025 08:38:05 +0800
Message-ID: <20251114003805.494387-4-inochiama@gmail.com>
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


