Return-Path: <devicetree+bounces-12708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5217DB33D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4ABF81C208B2
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 06:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE7223FED;
	Mon, 30 Oct 2023 06:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502741FBA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 06:29:37 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28BE3DB;
	Sun, 29 Oct 2023 23:29:34 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 39U6Rwh862780490, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.93/5.92) with ESMTPS id 39U6Rwh862780490
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 30 Oct 2023 14:27:58 +0800
Received: from RTEXMBS05.realtek.com.tw (172.21.6.98) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 30 Oct 2023 14:27:58 +0800
Received: from RTEXH36506.realtek.com.tw (172.21.6.27) by
 RTEXMBS05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Mon, 30 Oct 2023 14:27:57 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Mon, 30 Oct 2023 14:27:58 +0800
From: Jyan Chou <jyanchou@realtek.com>
To: <ulf.hansson@linaro.org>, <adrian.hunter@intel.com>,
        <jh80.chung@samsung.com>, <riteshh@codeaurora.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <asutoshd@codeaurora.org>,
        <p.zabel@pengutronix.de>
CC: <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <arnd@arndb.de>,
        <briannorris@chromium.org>, <doug@schmorgal.com>,
        <tonyhuang.sunplus@gmail.com>, <abel.vesa@linaro.org>,
        <william.qiu@starfivetech.com>, <jyanchou@realtek.com>
Subject: [PATCH V4][1/4] mmc: solve DMA boundary limitation of CQHCI driver
Date: Mon, 30 Oct 2023 14:27:46 +0800
Message-ID: <20231030062749.2840-2-jyanchou@realtek.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231030062749.2840-1-jyanchou@realtek.com>
References: <20231030062749.2840-1-jyanchou@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-KSE-ServerInfo: RTEXMBS05.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Due to synopsys data book's description, it had a limitation
while using DMA that buffer size and start address must not
exceed 128 MB.

We add an option setup_tran_desc to make tran_desc setting flexible.

Signed-off-by: Jyan Chou <jyanchou@realtek.com>

---
v2 -> v3:
- Fix auto test compile warning.

v1 -> v2:
- Export cqhci_set_tran_desc for setting the descriptor's callback function.

v0 -> v1:
- Separate different patch supports into single patch.
---
---
 drivers/mmc/host/cqhci-core.c | 8 +++++++-
 drivers/mmc/host/cqhci.h      | 5 +++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/cqhci-core.c b/drivers/mmc/host/cqhci-core.c
index b3d7d6d8d654..5560329d2a7d 100644
--- a/drivers/mmc/host/cqhci-core.c
+++ b/drivers/mmc/host/cqhci-core.c
@@ -474,7 +474,7 @@ static int cqhci_dma_map(struct mmc_host *host, struct mmc_request *mrq)
 	return sg_count;
 }
 
-static void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
+void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
 				bool dma64)
 {
 	__le32 *attr = (__le32 __force *)desc;
@@ -495,6 +495,7 @@ static void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
 		dataddr[0] = cpu_to_le32(addr);
 	}
 }
+EXPORT_SYMBOL(cqhci_set_tran_desc);
 
 static int cqhci_prep_tran_desc(struct mmc_request *mrq,
 			       struct cqhci_host *cq_host, int tag)
@@ -516,6 +517,11 @@ static int cqhci_prep_tran_desc(struct mmc_request *mrq,
 
 	desc = get_trans_desc(cq_host, tag);
 
+	if (cq_host->ops->setup_tran_desc) {
+		cq_host->ops->setup_tran_desc(data, cq_host, desc, sg_count);
+		return 0;
+	}
+
 	for_each_sg(data->sg, sg, sg_count, i) {
 		addr = sg_dma_address(sg);
 		len = sg_dma_len(sg);
diff --git a/drivers/mmc/host/cqhci.h b/drivers/mmc/host/cqhci.h
index 1a12e40a02e6..fded53fc2a0b 100644
--- a/drivers/mmc/host/cqhci.h
+++ b/drivers/mmc/host/cqhci.h
@@ -216,6 +216,7 @@ union cqhci_crypto_cfg_entry {
 struct cqhci_host_ops;
 struct mmc_host;
 struct mmc_request;
+struct mmc_data;
 struct cqhci_slot;
 
 struct cqhci_host {
@@ -289,6 +290,8 @@ struct cqhci_host_ops {
 				 u64 *data);
 	void (*pre_enable)(struct mmc_host *mmc);
 	void (*post_disable)(struct mmc_host *mmc);
+	void (*setup_tran_desc)(struct mmc_data *data,
+				struct cqhci_host *cq_host, u8 *desc, int sg_count);
 #ifdef CONFIG_MMC_CRYPTO
 	int (*program_key)(struct cqhci_host *cq_host,
 			   const union cqhci_crypto_cfg_entry *cfg, int slot);
@@ -322,6 +325,8 @@ static inline int cqhci_suspend(struct mmc_host *mmc)
 {
 	return cqhci_deactivate(mmc);
 }
+
+void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end, bool dma64);
 int cqhci_resume(struct mmc_host *mmc);
 
 #endif
-- 
2.42.0


