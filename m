Return-Path: <devicetree+bounces-230571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 33318C040FB
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 377514F6689
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 01:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD49225408;
	Fri, 24 Oct 2025 01:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BlTFWQqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3561224B05
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761270950; cv=none; b=LiD8fOJ7Ak+huL0vDNGQuoK2NTNgJMqmvbONvZfYu/3YnhbyCxaGXsK4L5miAWIdySYAouwOZNnxpKr3A+nLnlRI4ZhBqDoatoFkRTizVPp/6fsgHolfFaphTHzg4AeIKkkw+7RCgxOfh6mkpl4DcwRZPn3Rp6LNRmTZZCaeESs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761270950; c=relaxed/simple;
	bh=P2La+FoJZ35MJzEo8yVcVLSFzhQhJljTmUai3XD3wr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cEoMVg0Mq0Ag2b+9smWUYvn4ZiMqC+24fZmi3ctozVf6wWPawXg1//qxiNa3bVQjTNygU+RnSJJvV2/BFxeDlmegqgWzrujAAjuDP9+a3Lcw2HiG9atGz3pD3ORIUmcRPi8uApf5HhxkJ5v9EcIiOASjWASYQQf7ZbBctJoSzIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BlTFWQqu; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-28a5b8b12a1so15401195ad.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 18:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761270947; x=1761875747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6e+TNG8HQKWjELTx3r9i/rdMStiwaJjw+wxw++IoG08=;
        b=BlTFWQquanZcgkWqUI8akM1oo8M8Qm6KX5dxnptUhCScGhIR8O7o1xL11meRjKrZWP
         a6RtWwbcTebIEHa/tNAV+IbKpmdOLclfMI/rsBSH/ZKy4+Wm/l55vF+WwSmdjyK5P0aZ
         Vc5Mk3SkRCRrR8rRWLpfVpgR8YM4I4YaFAQkF19ziDfYkijlpCNu1oyuehW/f/aOXIFF
         YfwcepqDNnjkBCi/8Ppas+Hd6uGoml9vQESXkecLHW2MW4su3ThrMC8pFZioEvSRMk62
         QwGvNWOOLyFCjPpGkh1ozrFOCQpkIpD3VG13zfmSgjHNPT+3MkYtMQ8aYqHMqkjppGzA
         UaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761270947; x=1761875747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6e+TNG8HQKWjELTx3r9i/rdMStiwaJjw+wxw++IoG08=;
        b=fZ6a9CD5bGOqkPcC3dJyeFapodO6aKXrkvNt0B8o2WlxMdxp6FWQIvPsK8eTE26gF1
         +NYMG8v8H2pTlsOuvIAcb3p/xQ2eZcn13fFH674I+Ca4D+aYup+lR3f6/650tVvGHF1O
         bNkGU1iu5vT1DPZOQue0w76mHD4f3gJoe5lhKDzfeaWuI9y+7LB30TNH0g1IWLPxT71E
         5hmiwAYLEfy70pQz5BZ/+joaRSpQwX12a9ZwtK1A3/S4tunxoclvnTr0snjVL6cjiYuB
         0dXLO1T3e9Whstt/Kh1O7MA0jsnBgdCtFluc/CCr0cATdhSpudS46MBZUDY1jyOALdvo
         Delg==
X-Forwarded-Encrypted: i=1; AJvYcCUiEaauJBV82Udk4cS5arjMLEJr9ZZUwFQvZFJ7Nc0s+96d1S+ZZKMu1krZbpPYVKU4A7rUEpfGOSBz@vger.kernel.org
X-Gm-Message-State: AOJu0YxP0GYqhr/IXJRntPvDNl15/m6Ibd56TrX9T3g+dfjWUNEq2Goi
	ut9aExC3NfE5ngE67aVkHiyxNO1aiy6OBm49JAVixHUVwpowEW1J+sy7
X-Gm-Gg: ASbGnctENe8q8R63OITjfFUbpK2NfXSGtneA7oY+/hkkH1dMzsrHCXWZI2WtT6QGN2o
	e/yxTScjpwpUWRFtJzVcsJLHG+VyzLMwhy2V6+tKGNzlKLD+tqLbgiILxQEbAC/rwjfrMqKwif7
	FzLol7EdlODmez1i6isSDsJezqk1aEFAy6T4hr0NFkE4vTwwYkgB8vsE924BIQrti2+8OE77dgL
	0KBKRD7O9MuZqkC73K0Rw5Ah3oWYNQSzBHO157xIm3It3FUSp99tN1A+9zZUzYt4Y5fpgA2A0wq
	gowq9wFk2TKXD7RJUn5aDe06zMkauVxyg5iBOfgTc9leVe77tLsLBJaHIFaBVyh3+qcEKqa1e8u
	mk03cIU+BSW7p7bWwOpJ5oBTEf9YWwW4444THAPi8timO6+5npACmWfzD4YotE3DT/8nzTb/9bs
	p/5RI77HNyYg==
X-Google-Smtp-Source: AGHT+IHpW5wlGIbn04l1ii92JJTddNPs25LrGmd/cpssrIhv3LxjZMplAv5M1j+a+0YAZnT5qvs+JQ==
X-Received: by 2002:a17:902:db11:b0:240:48f4:40f7 with SMTP id d9443c01a7336-290cba4efc9mr405211955ad.39.1761270947035;
        Thu, 23 Oct 2025 18:55:47 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda793esm38533865ad.5.2025.10.23.18.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 18:55:46 -0700 (PDT)
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
Subject: [PATCH v3 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Fri, 24 Oct 2025 09:55:24 +0800
Message-ID: <20251024015524.291013-4-inochiama@gmail.com>
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

As the SG2042 has an internal rx delay, the delay should be removed
when initializing the mac, otherwise the phy will be misconfigurated.

Fixes: 543009e2d4cd ("net: stmmac: dwmac-sophgo: Add support for Sophgo SG2042 SoC")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Tested-by: Han Gao <rabenda.cn@gmail.com>
---
 .../ethernet/stmicro/stmmac/dwmac-sophgo.c    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sophgo.c
index 3b7947a7a7ba..7f0ca4249a13 100644
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
 
+static struct sophgo_dwmac_data sg2042_dwmac_data = {
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
2.51.1


