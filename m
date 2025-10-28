Return-Path: <devicetree+bounces-231882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1FDC1230E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7D4B54FEB12
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46D6221FD4;
	Tue, 28 Oct 2025 00:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kyLj3jlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E3020DD72
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611960; cv=none; b=bOdL6YdB+VpDKbzN8mffg94c+bvxZrncyLGNIieFxMbICKtEUVuApqy1R4yH1jqbBjv8qw05vKzs6yTLRygimqoHRNpaX36somqXVcTmzvWXOZxIsjBPY4qSa/nxfZEXUeVEmooFevnl/58QGZgdMBFUPq4GbwqPN+haw/4ZEs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611960; c=relaxed/simple;
	bh=P2La+FoJZ35MJzEo8yVcVLSFzhQhJljTmUai3XD3wr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kYtIAiK+lhq+k308RIZ8SFzULwlJZBA9s0k0DuwTyMKSJW+NlUp61SIsIDimHOmgUTTT8Z+0HDvR3OCcoT5TV6vcDpbfO2KDTWpEdX8dOsLYbeZ0AvswILNktbi87kIL5PseJSxVgVLUu1F9B0S3nvRyBt0SqrW7NMM/mL3a1zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kyLj3jlO; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-292322d10feso44624315ad.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761611958; x=1762216758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6e+TNG8HQKWjELTx3r9i/rdMStiwaJjw+wxw++IoG08=;
        b=kyLj3jlOXnyy+JK+pViciZ6OEQLzjc5aQXaTggD/u7s/4upxNm1YBBkEDpel0IUENC
         CsqKfBdlsIpvCNI7oklzKeImxuWjcB+TK9k8c8rl5VZpeZZNyiLtVIf/8MI8NYRqz7Rl
         fp/eL0lDfXXydXlsaM94g2XGwWgxmiWMSlJcLAdhKoR+4MvUVwwbhTMOqTDX4wmB3w8m
         GPgB0vp5hX3swmXuyonnYnvVsfXLyNxLM4ptt+L5+ukorSARSDoSySZ1Wbc+DAasiHaC
         QNStNfszdjt3bfrsynGehySUs4gUQE89JPNAm78p6MGar6FCXDNpWzSC/p+uPOvjE6/N
         eyxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761611958; x=1762216758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6e+TNG8HQKWjELTx3r9i/rdMStiwaJjw+wxw++IoG08=;
        b=pkLVMc8hvJw3S/TJjQHs66Zb+V1yLVJrJqEulSCHf/9B1LBBPcGud5PW2JKObilOZn
         3fmZmjvkPJ5837NnIxtv6VfUhaklnBNfW0tFNG7kEf9zt9TbxT6r6V/XZc/fbGftKmj/
         AbkJ9A8IbpUKsJzOosYmnzlzk4wIGIdLypffBozPBYtRdnop167ZonROsBZTpfpTzMcg
         uzcNV7f7PU2ZIQHyKeJGsHrrEtYH3U+d/Uf6VPPYa+qXaP6zTlobFawDM7E/j4osahrx
         Wxv82euvsI9speJcANp447/Uupn5gcuFkIbmLUC0zWxh2+I6Q9YCzQs5mLszII7ilgrs
         rTPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkI19wH/TqJbu/14ufGdfY92i3+lUsaRU70ZZpGbJoU8O28axRh/NAoTt52mQpcyN7snMxI0wZQ9Ag@vger.kernel.org
X-Gm-Message-State: AOJu0YzUcAi2t899cY/pY1HpCWdiUMJj3KCRRkmIj00y9LaUcK5yGzpY
	fMniVPULyTTCqoYmfK9810VjdQcUqsavKj1Z2DrJB3TFdk6BdLep47bc
X-Gm-Gg: ASbGnct7wAqD/kmwB8ab2o7eKCOsutM7CNnXguchOieU1+mU+JWnKzzxgwtFP3JmhJw
	R1QGpxKwwlxOqFpavLF35t+8ZXyVarzjOFeesTgujpVybBZH5bGGOLJFlte1EsaMk83X690Keg2
	W8XnoDszWWUTi5Nvq/z81SYunlyjPxGXUe7iiFM10E7uEKB37ZfI0SUOqZYsIxLBqgctSRwFE3f
	GUZNkIoI/fMEunpxT6mAV442ufVR7hBXFMhG/cs1JX478hcPU5BRRD7jdM3L/9YbAxfWRD8VnAk
	jfP6eJOff6zHf2iX4YqYfMHKO9w9HIT6X9qfLT0Q9G0h6JKS6Gcxrgh0jR2fyeSTFuoP3iapd7y
	Ok9WHdwebFZyLShHg8LqcwlGQfIBX/RTkFxg97BJZ1mW25iEIVBwwxmbdrgSJThLyQQ0/3kMi9S
	/K6R2xpireJA==
X-Google-Smtp-Source: AGHT+IGvU4zqUoctToOTJAwyDs9+4diulCuRP+v5NnW7F2ld07v4djcWl4rSSI6JXslPZV+bpZFdZA==
X-Received: by 2002:a17:902:ea0a:b0:271:fa2d:534c with SMTP id d9443c01a7336-294cc74e4dfmr14030645ad.22.1761611956679;
        Mon, 27 Oct 2025 17:39:16 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3bbcsm94917065ad.15.2025.10.27.17.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 17:39:16 -0700 (PDT)
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
Subject: [PATCH v4 3/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Tue, 28 Oct 2025 08:38:58 +0800
Message-ID: <20251028003858.267040-4-inochiama@gmail.com>
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


