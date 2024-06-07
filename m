Return-Path: <devicetree+bounces-73679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5040B900467
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 15:15:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 396771C23210
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 13:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A15195B2E;
	Fri,  7 Jun 2024 13:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="nYmeSFk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96A6194C91
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 13:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717766061; cv=none; b=PRfa/N+JJEwX8zqwgtvGczrUflGW6IpjzDtYW60uQE7ydjfNoZ4kmjQbtEBIf/ngL6cYyRri9diLRZRzoDq3D4niTzkmClqxZwALzi4f7FBI+or4MYLflXWXYwOQP+2LJP2Uyg0IfgpIrbHzU74Q4pmeJVINEdc4ETTfuNNOr3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717766061; c=relaxed/simple;
	bh=gVkjhihYssjxx3HmUUIcdEn5ObHN127myBwzSS6vJW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mPicpSHUGJ9LLMp+rDpNzMfq7uD0XtRDCBihDZVkflQNBOh2ukzZoiAjygkVyOoKbjeXhBlp+D66qgxWyi5pCGdZuJ+lDBZel9V4chYQEfUyA2cSROryQTkkgpKA58V6OthJzp+fMzfy/mkWWm5IyPC9Pq3D6DzHKOknLMU9Mk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=nYmeSFk7; arc=none smtp.client-ip=185.136.65.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 20240607131411005df6529cbdcebdb2
        for <devicetree@vger.kernel.org>;
        Fri, 07 Jun 2024 15:14:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=x4YRkE+XFm1D29pl4Ld17TEKG1sVow5yeZQG9PSUP5I=;
 b=nYmeSFk74uBHWoVjis9ZQ9m+FJ9ij+amjNoT5PiUDD19q+62u5h477q3LMBZEY35Y4szWD
 ZZ1ceJVATUF1+IlD/agl8j+BVQT71CKyZFsU5ts4olczCHLXSh4BhjzWp6BBIv+e7K0YLEyp
 3FZ5vgtAqCBDgIU33fY3yPszvUC2I=;
From: Diogo Ivo <diogo.ivo@siemens.com>
Date: Fri, 07 Jun 2024 14:02:42 +0100
Subject: [PATCH net-next v3 1/4] net: ti: icssg-prueth: Enable PTP
 timestamping support for SR1.0 devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240607-iep-v3-1-4824224105bc@siemens.com>
References: <20240607-iep-v3-0-4824224105bc@siemens.com>
In-Reply-To: <20240607-iep-v3-0-4824224105bc@siemens.com>
To: MD Danish Anwar <danishanwar@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Diogo Ivo <diogo.ivo@siemens.com>, 
 Wojciech Drewek <wojciech.drewek@intel.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717766048; l=3143;
 i=diogo.ivo@siemens.com; s=20240529; h=from:subject:message-id;
 bh=gVkjhihYssjxx3HmUUIcdEn5ObHN127myBwzSS6vJW0=;
 b=/6z6UNJ8Q+JAQ6UI+lCH/iEhQ/GrLgj+QGFY9A2csJuBtmOkHvOKse56pxv2KMMjJJjIJUK9J
 MF01S7dd/yjDI6b2d/bGrge50GTXcT0N6AK54YGXc68BgCqoa4utP88
X-Developer-Key: i=diogo.ivo@siemens.com; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Enable PTP support for AM65x SR1.0 devices by registering with the IEP
infrastructure in order to expose a PTP clock to userspace.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
---
 drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c | 51 +++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c b/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
index 7b3304bbd7fc..fa98bdb11ece 100644
--- a/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
+++ b/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
@@ -1011,16 +1011,44 @@ static int prueth_probe(struct platform_device *pdev)
 	dev_dbg(dev, "sram: pa %llx va %p size %zx\n", prueth->msmcram.pa,
 		prueth->msmcram.va, prueth->msmcram.size);
 
+	prueth->iep0 = icss_iep_get_idx(np, 0);
+	if (IS_ERR(prueth->iep0)) {
+		ret = dev_err_probe(dev, PTR_ERR(prueth->iep0),
+				    "iep0 get failed\n");
+		goto free_pool;
+	}
+
+	prueth->iep1 = icss_iep_get_idx(np, 1);
+	if (IS_ERR(prueth->iep1)) {
+		ret = dev_err_probe(dev, PTR_ERR(prueth->iep1),
+				    "iep1 get failed\n");
+		goto put_iep0;
+	}
+
+	ret = icss_iep_init(prueth->iep0, NULL, NULL, 0);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to init iep0\n");
+		goto put_iep;
+	}
+
+	ret = icss_iep_init(prueth->iep1, NULL, NULL, 0);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to init iep1\n");
+		goto exit_iep0;
+	}
+
 	if (eth0_node) {
 		ret = prueth_netdev_init(prueth, eth0_node);
 		if (ret) {
 			dev_err_probe(dev, ret, "netdev init %s failed\n",
 				      eth0_node->name);
-			goto free_pool;
+			goto exit_iep;
 		}
 
 		if (of_find_property(eth0_node, "ti,half-duplex-capable", NULL))
 			prueth->emac[PRUETH_MAC0]->half_duplex = 1;
+
+		prueth->emac[PRUETH_MAC0]->iep = prueth->iep0;
 	}
 
 	if (eth1_node) {
@@ -1033,6 +1061,8 @@ static int prueth_probe(struct platform_device *pdev)
 
 		if (of_find_property(eth1_node, "ti,half-duplex-capable", NULL))
 			prueth->emac[PRUETH_MAC1]->half_duplex = 1;
+
+		prueth->emac[PRUETH_MAC1]->iep = prueth->iep1;
 	}
 
 	/* register the network devices */
@@ -1091,6 +1121,19 @@ static int prueth_probe(struct platform_device *pdev)
 		prueth_netdev_exit(prueth, eth_node);
 	}
 
+exit_iep:
+	icss_iep_exit(prueth->iep1);
+exit_iep0:
+	icss_iep_exit(prueth->iep0);
+
+put_iep:
+	icss_iep_put(prueth->iep1);
+
+put_iep0:
+	icss_iep_put(prueth->iep0);
+	prueth->iep0 = NULL;
+	prueth->iep1 = NULL;
+
 free_pool:
 	gen_pool_free(prueth->sram_pool,
 		      (unsigned long)prueth->msmcram.va, msmc_ram_size);
@@ -1138,6 +1181,12 @@ static void prueth_remove(struct platform_device *pdev)
 		prueth_netdev_exit(prueth, eth_node);
 	}
 
+	icss_iep_exit(prueth->iep1);
+	icss_iep_exit(prueth->iep0);
+
+	icss_iep_put(prueth->iep1);
+	icss_iep_put(prueth->iep0);
+
 	gen_pool_free(prueth->sram_pool,
 		      (unsigned long)prueth->msmcram.va,
 		      MSMC_RAM_SIZE_SR1);

-- 
2.45.2


