Return-Path: <devicetree+bounces-140804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DCCA1B81E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7766F16CD6F
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 14:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BEB13B592;
	Fri, 24 Jan 2025 14:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b="Ee2RSY1H"
X-Original-To: devicetree@vger.kernel.org
Received: from server.wki.vra.mybluehostin.me (server.wki.vra.mybluehostin.me [162.240.238.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFB513C81B;
	Fri, 24 Jan 2025 14:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.240.238.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737730030; cv=none; b=WmQUbLzd73z2wslJihT7Mfwap9N990MO9jVmzpDmog4sTG8nu7ZpBhz3EAaHnQW0EnekFwqMo62VOM1rPB70TRkFcsOJC4JBQCnIxVo8xLeo5PXoDh1KgqTvYgmLsnye2vqE7NKraCJv3lOXPQnlsNkSL7qWxtAd0/BgAO07V18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737730030; c=relaxed/simple;
	bh=pezlbPzEe8te78ZrZYz6wTryMqXUE4x3VGHuL4NRUYQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nEcvmwSwjKclVcW1VcgP6o7LlFczDdlmzDNsxpxGMcmLO7aEfWZPi5mTeqTGdopaoT+BMZ41zErHzmWfQJMKJS28bvRbulQwvPRGCj1m0AWAMTxuR1sBaVML+aXlFIYPMeRPH5McicjX3Dk9uuugASyXvNajwe2glumcx1wYL2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com; spf=pass smtp.mailfrom=couthit.com; dkim=pass (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b=Ee2RSY1H; arc=none smtp.client-ip=162.240.238.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=couthit.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=couthit.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=oAF/UwyFDty0jZm744MKJhq2579iZwIfwjisq10Mv3o=; b=Ee2RSY1HyD/9c2bTH3b7/K8xi4
	jlytSvP5OO0dwOk/t8qWGwctEPsSLBOtdvFe1e0O+70ysBErDRAIxZh36QubF9+OtbZli9VOJG2Eo
	u6N2N/AX2CJi2SO6y1E3TCPMnzGF58VwL7MB1dWYm2L5hHPlTex5Wnk75R7YKjArdKoyr2ab/vb7b
	ut/4gp/hAxhM6U48SHWYwFHKh/DlbhhqcDHbwvmwseFVUmr+AfJzs3t2l0WOd/BeHn5GPZLrISG1+
	+WUjTXp9Gi4ROG8FTf+RBq0IhAnfKOOOPV4+KOExRSwbekQM2dLztK855jxM1IlmLHN9Y0rrCJ/54
	OcZICY/A==;
Received: from [122.175.9.182] (port=38494 helo=cypher.couthit.local)
	by server.wki.vra.mybluehostin.me with esmtpa (Exim 4.96.2)
	(envelope-from <basharath@couthit.com>)
	id 1tbKxa-0006Wf-2g;
	Fri, 24 Jan 2025 20:17:03 +0530
From: Basharath Hussain Khaja <basharath@couthit.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nm@ti.com,
	ssantosh@kernel.org,
	tony@atomide.com,
	richardcochran@gmail.com,
	parvathi@couthit.com,
	basharath@couthit.com,
	schnelle@linux.ibm.com,
	rdunlap@infradead.org,
	diogo.ivo@siemens.com,
	m-karicheri2@ti.com,
	horms@kernel.org,
	jacob.e.keller@intel.com,
	m-malladi@ti.com,
	javier.carrasco.cruz@gmail.com,
	afd@ti.com,
	s-anna@ti.com
Cc: linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	pratheesh@ti.com,
	prajith@ti.com,
	vigneshr@ti.com,
	praneeth@ti.com,
	srk@ti.com,
	rogerq@ti.com,
	krishna@couthit.com,
	pmohan@couthit.com,
	mohan@couthit.com
Subject: [RFC v2 PATCH 09/10] net: ti: prueth: Adds power management support for PRU-ICSS
Date: Fri, 24 Jan 2025 20:15:54 +0530
Message-Id: <20250124144555.1462044-10-basharath@couthit.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250124122353.1457174-1-basharath@couthit.com>
References: <20250124122353.1457174-1-basharath@couthit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.wki.vra.mybluehostin.me
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - couthit.com
X-Get-Message-Sender-Via: server.wki.vra.mybluehostin.me: authenticated_id: basharath@couthit.com
X-Authenticated-Sender: server.wki.vra.mybluehostin.me: basharath@couthit.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

From: Roger Quadros <rogerq@ti.com>

Changes for supporting the sleep/resume feature for PRU-ICSS.

PRU-ICSS will be kept in IDLE mode for optimal power consumption by Linux
power management subsystem and will be resumed when it is required.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Parvathi Pudi <parvathi@couthit.com>
Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
---
 drivers/net/ethernet/ti/icssm/icssm_prueth.c | 62 ++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/net/ethernet/ti/icssm/icssm_prueth.c b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
index fdc97ed9c1fb..a3c8c746ebf8 100644
--- a/drivers/net/ethernet/ti/icssm/icssm_prueth.c
+++ b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
@@ -2300,6 +2300,67 @@ static void icssm_prueth_remove(struct platform_device *pdev)
 		pru_rproc_put(prueth->pru0);
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int icssm_prueth_suspend(struct device *dev)
+{
+	struct prueth *prueth = dev_get_drvdata(dev);
+	struct net_device *ndev;
+	int i, ret;
+
+	for (i = 0; i < PRUETH_NUM_MACS; i++) {
+		ndev = prueth->registered_netdevs[i];
+
+		if (!ndev)
+			continue;
+
+		if (netif_running(ndev)) {
+			netif_device_detach(ndev);
+			ret = icssm_emac_ndo_stop(ndev);
+			if (ret < 0) {
+				netdev_err(ndev, "failed to stop: %d", ret);
+				return ret;
+			}
+		}
+	}
+
+	pruss_cfg_ocp_master_ports(prueth->pruss, 0);
+
+	return 0;
+}
+
+static int icssm_prueth_resume(struct device *dev)
+{
+	struct prueth *prueth = dev_get_drvdata(dev);
+	struct net_device *ndev;
+	int i, ret;
+
+	pruss_cfg_ocp_master_ports(prueth->pruss, 1);
+
+	for (i = 0; i < PRUETH_NUM_MACS; i++) {
+		ndev = prueth->registered_netdevs[i];
+
+		if (!ndev)
+			continue;
+
+		if (netif_running(ndev)) {
+			ret = icssm_emac_ndo_open(ndev);
+			if (ret < 0) {
+				netdev_err(ndev, "failed to start: %d", ret);
+				return ret;
+			}
+			netif_device_attach(ndev);
+		}
+	}
+
+	return 0;
+}
+
+#endif /* CONFIG_PM_SLEEP */
+
+static const struct dev_pm_ops prueth_dev_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(icssm_prueth_suspend, icssm_prueth_resume)
+};
+
 /* AM57xx SoC-specific firmware data */
 static struct prueth_private_data am57xx_prueth_pdata = {
 	.fw_pru[PRUSS_PRU0] = {
@@ -2324,6 +2385,7 @@ static struct platform_driver prueth_driver = {
 	.driver = {
 		.name = "prueth",
 		.of_match_table = prueth_dt_match,
+		.pm = &prueth_dev_pm_ops,
 	},
 };
 module_platform_driver(prueth_driver);
-- 
2.34.1


