Return-Path: <devicetree+bounces-224427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A33BC3C9D
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:18:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6401D19E251B
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95D72F3C05;
	Wed,  8 Oct 2025 08:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="PQfNId0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5CF2F39A5
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759911487; cv=none; b=OJQ1ukNs87TWOn3swbYioKdJHb1Y8OcgU0Y5ZOdRLntCxZBWPs0WZQxQSnt8JJlXBlur3GzkoyXkgUh6DBqGppNhpJJJiczMSguClIUUT8qHt/NoAYrQJp97UWULfxWrMMq1gtZp6L6TaAocCx2ut2wUQzs2ndPcxcJIKKKLA3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759911487; c=relaxed/simple;
	bh=BwfCoBnPTT5rX7Sdj59SJNV0iReosQyMrWaTx8NgluA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z6ESW7DfZ7WNR2LbR11q372RIpJC9gecmZsXRQlDk6tj9aycGgO/JQ0XWZEXW5g83Nj0VJ5vlr6TeNf2PaDnI9K6cEmiPyZG9EIK7NhOvqN4ZA3c3pO5vvc0/bvOlqsIIiP7EwCnldReHbSfCckJfZBlDpA8Vo42Tl+gLrxkrzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=PQfNId0a; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4257aafab98so2672848f8f.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759911484; x=1760516284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ul8GBU+O+XdLER6XCbhZBXCxZuiNlzEAtMGpu/p1y6Q=;
        b=PQfNId0ad5TjsZXOKmCnl66HLeqk70xhfxU9WLVx6/lRD0MVgUKHete2K8yihTLraE
         gV8+TrFNpgGr6a2jdk/fCiUSiRY0WKyQEstgHzSdYte0ZGIEqU/7upS8Y0psGVmokeDM
         /lxeFZqQOIFjHIkFac6R1OBx1ek625aaC1KXrjJ5Kk/+JTHBidnQk9kJpplG98zEDkZJ
         29lPWEKdPlTtl6r6Zq90/oVdoOiM+MuajZ8kFCtJC45oWm0M30+0ZJgsyxIgIx/S2KZ7
         STAC+0iJuZMv7ZSM3ES81BZXCt5ji6AcTj9b61Xk+/3po2p6o9YI5lPU/aARxc7u1vmx
         PmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759911484; x=1760516284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ul8GBU+O+XdLER6XCbhZBXCxZuiNlzEAtMGpu/p1y6Q=;
        b=ldwKvB0EIuftiXWq4s5MX1WanV1VuI3e0LnZz3z2rSHhW+sUt0QNQ735UjTDLVtgco
         G2zqySU3Ezh0ZhJXPRIEmwJ1tsrm23Gvh0u5SMDqWapr1nUEDCfrscxJGbENG7b8hUMC
         YWR9UCPQPevSE5n1jMADOPrAEgc6v9TnIPaXX54nICrCkAbRceFzsH0d3oTegGI2yD4M
         uBJTaX4zbSOWQZXic5hqrDTqGBT2j53BFEJqBFSCmehfTOU0fUcjbvJT76xXOO/HHgI8
         r7Biufbn8gMVN7UvF0PoDSqgCZ4STnFbQZP8XT5gT1PppYcsB+1xIssJPxeJcWo0k2Ne
         nmYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQzeOozPbB1+4AQJelSb+kXX1BalbodQ0atFgAmXOytkCL66q4sicwdu6NlPSuacAbGenK9584UHKZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxfCFX8XKX6sMyrEVSEIjJNR+GGMvi9Q1XAM/3YaXYxjmG3XnMh
	j/cn6/nMGz2jL09fqmgdjTlrB+3rOe9b4Lp55bEKhsmwyiuiTeC7rv7H3IgUZ7PVkW8=
X-Gm-Gg: ASbGncsnDilm2dmDtrPUGidMYsdE6GIJ10+3oHzxgpTP2dzvBEStgYsL+FrmT87dzfd
	dTV8bbJXgHWjKJk5qR0v40CjIFXLbH3hYD319KRrZftjc4Wi3oiUdE+EDsc91IKdtSv4L24220Q
	A9DosL/N+CiLjkMX9kgjPqaXWzu9B/1AIl/C9C+2Ro5R7LUqgY8//8hzr5dhr9G/fufB+U5x0Kt
	p2CmnP0VrTZX8g9gmFcGSxA+aekbE4ehbZrNIOGMfvIq8efF6NNwGg4ERPIc+Yw6IXpv+U3MU42
	7Hz0daGWFPFjLpOW/H1fSFmn0zNZGslpEMRgCngjwWfYI2QBrLvoWyZWXcitAIOBclSP3ZYhDe9
	56QEWTqGujpDBgk+0irBuJzQ4GvQANqNdQLTDH8Dgm+C139qzKzcM
X-Google-Smtp-Source: AGHT+IE6ZMyLcsBN0V50RlzjIFoIQLk9iOg6oRiNR5JvPii+uUuTFdHwXGEV0hlJlVRQnaGtVLEXhw==
X-Received: by 2002:a05:6000:60f:b0:425:7589:2737 with SMTP id ffacd0b85a97d-4266e8d8e67mr1317470f8f.43.1759911484416;
        Wed, 08 Oct 2025 01:18:04 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:286d:ff1d:8b7c:4328])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e97f0sm28498943f8f.27.2025.10.08.01.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:18:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 08 Oct 2025 10:17:49 +0200
Subject: [PATCH v2 2/8] net: stmmac: qcom-ethqos: use generic device
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251008-qcom-sa8255p-emac-v2-2-92bc29309fce@linaro.org>
References: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
In-Reply-To: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2902;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=D247/I9k9+jdDafl4QuGSA0//M+k597SsL92RQwFhvk=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBo5h413esbXqnjuND12yudzI6EY/1g9lJi/uRCy
 Uuv9fCwSSOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaOYeNQAKCRARpy6gFHHX
 cpxRD/9UQQ6GsDEhCf2230he2y8bhcrw003wd+e+aOxvP1HQjx2HrvP/Zh1enLCAxqMlTE4Ipiq
 c+UtF6BPiuYKaa62kQx3y8twflIjh1bFOgQCKz0b8Kps5yLsS7lZwX1dSRrIvMCWPxrXJtqXWvx
 HNlULSdJR8x9p8IXMGHCG5rEOSi6Mgo9FsIq0rqbVBwUeX06kOe7pA2ssdvbr44P5KecfrBfnwK
 a6/o5AK8MjJZjOLhhyzuigM92jp4W/KA/qFSEgdRcOP9mSlCaRvV5F0Ibraq6o8b8UZGPWo6HQs
 N11vvaBgINRZNs155aKWFaBuUYy9WM+GJ9+gp8PtR9GGZ/cCVnyar2uf+ZyUemeaa75LyHTuqCZ
 BfuXXMZdAxRjPRtMqdz+nd/RHj/S7/0PCafuZj/nWKgKOTBTFDZvj5UlWbGpHugfFbBcqB9OP5w
 IeemlR06TcuY1gdnoz7/WzHAnC5K8ELWdnDyB+7SU9+S3M0ViN23lM3k/xzPL2sOGQWpPzMi5Py
 rx9bsW3PeEHqilRbhNJ/9AplrkCZwL6BuYoXS3FrGwy1etNxuHiZolqfer5Vg5O2ygobzIdlUus
 qVJQusAqdj1Man4KZInD244TGspt8J5sVbVbs7DkDIQjueXTsaHiO0+OVRoK1yx9pnFfWxVj6cG
 M/aKIqen9XWrJOA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 9507131875b2ca05fedcab95a3bb4c7f8e8810fc..7734acc6f1dd669ffec622812f48d355c507fc32 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -125,7 +125,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index d8fd4d8f6ced76cbe198f3d3443084daee151b04..aa4715bc0b3e7ebb8534f6456c29991d2ab3f917 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -764,7 +764,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -815,7 +814,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ethqos->mac_base = stmmac_res.addr;
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -852,9 +851,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = 1;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->has_integrated_pcs)
 		plat_dat->flags |= STMMAC_FLAG_HAS_INTEGRATED_PCS;

-- 
2.48.1


