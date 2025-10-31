Return-Path: <devicetree+bounces-233488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C038EC22E08
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 02:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 428EC4080EA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 01:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E167B245010;
	Fri, 31 Oct 2025 01:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UEJlVjwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528A7267B15
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761873904; cv=none; b=Yrr10gioK3Wz7WNj1ZFLF5P1TVgp94CVXOkvWMwFa++hzVkbejarNQswCp1TQatKbAblKpdAD6Ax2KibEzUdOzCzbs4E3p5SyHDtEOO0upgmPR5ehRGHInneQZ5oSZrGSM1GfpNR+fmPlzvW5pl9BEwo47jqfgQBSruhlhoz6ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761873904; c=relaxed/simple;
	bh=0Gc5dl3tKjIa0cqiPh9kEaz9Vhp5pPIGlpBYanSqi3k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eMGAgrLyKGnuIZU5jVA0DxvPGDPbMIEBXdFLnQ2Y3OW4YgR4YdfNpF+fyE3lc24Jcyfjh7dkknI2PZPC4sTvSWGx9baDBlKLgpkDv6HYLS2husw1DjOtcWM/PHKBwS1rlVxDUYJnp7qnqsgXJmokA4qpqN6AmknXfacVT6mHsDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UEJlVjwG; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b6ce696c18bso1442854a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761873903; x=1762478703; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41C7JOVgrQjYgPjIau43ZnUjOEp2Qu+RhNpr65HbzYc=;
        b=UEJlVjwGhnOf5TnHclv/NXqsUUZEjX4xL55Y4GmFZkiHCluVDlksjxcGVqbjMchU9n
         GEBRdF1RHFk6ogz2n6NDzwrqmqNd+oH0M/wnJSGeJvL7MP0giWTylUbvD5+upWcV/6Yj
         353+jj4LL+nVMajbH7wBxa4GkG8K8ndVabO+C1rSL4Yqt1ehH8ejUBoCclRI8sqeGJwk
         axvqqMOkrlg+EcHPPYl9iNWkMO1+zbnEsGYjBqyBQqeIrVuBuKOpFm2kJ1OWWhwRXesq
         Mzjq9SQ14STKmwRBeeZIYHPhLLCNBgNmjULBIiKI592N/l/66J0rm90bk4KmZP/Fc9tA
         4//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761873903; x=1762478703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=41C7JOVgrQjYgPjIau43ZnUjOEp2Qu+RhNpr65HbzYc=;
        b=PQTfnSrKzn6ixISQ2X0gGh5wgPvQaNp7ObnQqf54nBxKdY6QQG0S2w43gMk2Ci6vOb
         hOTJHsaW/4Hz2ns8NQ0+XV2/kcgaXmF5dLISOiDSqttbznHpMdG4KRbJJJTJmfuikJof
         G8i4+vK8GBE6sgxBBUFROtdwLwSbcW0cPagCj7qZy8BHxiHEAOc36fwg/G0A/ViVJobn
         RoVM13dpc6+VXm2Ql55LU75EvPL4FpHi8Ba96R2GF5hdNmABT4lt8BCiVWmgz0+X2u1d
         IsTYr9v4XPPHASpUNmbgps2Q4ZHi70gMScHLFhfwkMIpDCMK3ijTcu4hCFGUScGEbL/f
         qjUw==
X-Forwarded-Encrypted: i=1; AJvYcCUpHUOlXkkogGUHaOPQcVwvWyp5Jot3QV2uCJ9x3UP++1HoKq6tn5eUhc2jdC58s6U2VrjsP5npEk4V@vger.kernel.org
X-Gm-Message-State: AOJu0YwmW/gOWc3pWJl+/fF3lWl4lAkOiXxJFSVURhxdFiCHrJjyeFmc
	Y1Ts3Q2aJoLZDc2njnW8562FuvIHAO2cKj9+0/IWQdC5uVLpNNuIyxWz
X-Gm-Gg: ASbGncvnI/9Qi1j/gfjUIzlkp7u1YsIsNGM4qfKY6PA0y9Nl5I2mskXILVYI1PwxJzb
	d3lCtKkavVju215ig0a2+XpRaygDeQq8TvgX6oVUxZm4+lSQD+fcPvxsdVsAqWwdhJnmyjFcoue
	HKXs1cds8MQhgmev4YPTdeNIb1QJ0drsKe3eXUcFMxcz7z/YHQk92Gml8m4avnEiG0t3EqvHSit
	izFnRkg4NTHOd7BrARWXhSmBxSZrYvPDwnJPqsBYOjGghdxcqyMHIaMrAxtyy72QkwjY9tEBbIR
	xHAjVU7yK93AnOJxYl3o4tADKOYuVWtzg8qp0zprkAi6Z+w422XGGKpcjdAm8ky/u+jjxlWIAzY
	lYI8SEkmtdkS7BBvT4B4WNgEUQbbdlgKtmcWBGPKg4Ld7YAEJ58FO04A3F1V40x5R2Kau82fOQY
	E=
X-Google-Smtp-Source: AGHT+IHwNetbUfw9P+CF7flRnUxbKMyy0u3v4NGRme8B70TIIYaaZvAcpehaNR0ztwmyhfdRon+uhQ==
X-Received: by 2002:a17:902:c94d:b0:295:164d:cebb with SMTP id d9443c01a7336-2951a539003mr21231175ad.47.1761873902502;
        Thu, 30 Oct 2025 18:25:02 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29526871836sm3248465ad.18.2025.10.30.18.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 18:25:02 -0700 (PDT)
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
Subject: [PATCH v5 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Fri, 31 Oct 2025 09:24:28 +0800
Message-ID: <20251031012428.488184-4-inochiama@gmail.com>
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

As the SG2042 has an internal rx delay, the delay should be removed
when initializing the mac, otherwise the phy will be misconfigurated.

Fixes: 543009e2d4cd ("net: stmmac: dwmac-sophgo: Add support for Sophgo SG2042 SoC")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Tested-by: Han Gao <rabenda.cn@gmail.com>
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


