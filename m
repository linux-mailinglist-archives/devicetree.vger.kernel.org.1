Return-Path: <devicetree+bounces-287225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA7UGon83WkRmAkAu9opvQ
	(envelope-from <devicetree+bounces-287225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 10:36:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BA43F769C
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 10:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8AAD2300D4F1
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7593B3BEB;
	Tue, 14 Apr 2026 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Kf/xX/s4"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B0C3B5305;
	Tue, 14 Apr 2026 08:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776155782; cv=none; b=jEBECQirOJXXg2yZOnHkZ5m/3yHlhpy6Rvu27b1pOZcAEfp8fb1F9GWMwYGYnnAxJ/9VvL3SYFO6M9UetPQHTBr6bL6BU7zGn5QKydPHQbbFJPnowCaITR/W2jpXg0p6mSniYhD95E/1owEgiELu+0A+YwEpYBdUsH60kTBj5S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776155782; c=relaxed/simple;
	bh=lGIiTmh/Tvj2Fo/RSnjUrTEXiEw1HIe+Smy8NJBXI3s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AA3oxxzAgHfVdU4L5iPAsQsj0MgGkPzh+8YTgLZTpqHhsaRx3MEoNVZChv5Ws4BUg6PxGiPmTRz+mJTlrlgJv2E8yxmK5+MLMFvhbGM8yultpjvR/vKO+CuSQ3apCW4NbN91GkkmErbwSKgBesqCoRe5skmjS5/KrAwOw2KhNNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Kf/xX/s4; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id EF581260C9;
	Tue, 14 Apr 2026 10:36:18 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQARs8_HN2Qc; Tue, 14 Apr 2026 10:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776155778; bh=lGIiTmh/Tvj2Fo/RSnjUrTEXiEw1HIe+Smy8NJBXI3s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Kf/xX/s4mGX8l7QFaxFhEmb2fN+KPznqwW/gfpQKwf1CUGIp711F7lAjJkC/HK/cA
	 6yhKUdbeqY/ML+AAATWJAlzNGmm6o23ppryEmChlu2S/+kgbl4mkOBq+Xj1fcjy2GY
	 /a/WB//+KdD3sZZIt3ombYCo26hyCeTL/YjwG6EDtpfRHuXGwyXJJaIk6eTyGyc8Rk
	 3QRpowBcL+9tlbryQ2047gmpbvQtXNA4SthbnhmD7rxFCsyqavWvUoG49A0PtCoIFr
	 33BJJ/Y7adLf5zUtWKRhDHvm43q5ZFyym0/pyljIy/iQu6iw5eAqwZNh+C8N580bJr
	 T9R2HoWjKx37Q==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Tue, 14 Apr 2026 14:06:00 +0530
Subject: [PATCH v2 1/2] mmc: dw_mmc: implement option for configuring DMA
 threshold
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260414-dwmmc-dma-thr-v2-1-4058078f5361@disroot.org>
References: <20260414-dwmmc-dma-thr-v2-0-4058078f5361@disroot.org>
In-Reply-To: <20260414-dwmmc-dma-thr-v2-0-4058078f5361@disroot.org>
To: Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287225-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[disroot.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:email,disroot.org:mid]
X-Rspamd-Queue-Id: 54BA43F769C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some controllers, such as certain Exynos SDIO ones, are unable to
perform DMA transfers of small amount of bytes properly. Following the
device tree schema, implement the property to define the DMA transfer
threshold (from a hard coded value of 16 bytes) so that lesser number of
bytes can be transferred safely skipping DMA in such controllers. The
value of 16 bytes stays as the default for controllers which do not
define it. This value can be overridden by implementation-specific init
sequences.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 drivers/mmc/host/dw_mmc.c | 5 +++--
 drivers/mmc/host/dw_mmc.h | 2 ++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index 20193ee7b73eb..9dd9fed4ccf49 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -40,7 +40,6 @@
 				 SDMMC_INT_RESP_ERR | SDMMC_INT_HLE)
 #define DW_MCI_ERROR_FLAGS	(DW_MCI_DATA_ERROR_FLAGS | \
 				 DW_MCI_CMD_ERROR_FLAGS)
-#define DW_MCI_DMA_THRESHOLD	16
 
 #define DW_MCI_FREQ_MAX	200000000	/* unit: HZ */
 #define DW_MCI_FREQ_MIN	100000		/* unit: HZ */
@@ -821,7 +820,7 @@ static int dw_mci_pre_dma_transfer(struct dw_mci *host,
 	 * non-word-aligned buffers or lengths. Also, we don't bother
 	 * with all the DMA setup overhead for short transfers.
 	 */
-	if (data->blocks * data->blksz < DW_MCI_DMA_THRESHOLD)
+	if (data->blocks * data->blksz < host->dma_threshold)
 		return -EINVAL;
 
 	if (data->blksz & 3)
@@ -3245,6 +3244,8 @@ int dw_mci_probe(struct dw_mci *host)
 		goto err_clk_ciu;
 	}
 
+	host->dma_threshold = 16;
+
 	if (host->rstc) {
 		reset_control_assert(host->rstc);
 		usleep_range(10, 50);
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index 42e58be74ce09..fc7601fba849f 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -164,6 +164,8 @@ struct dw_mci {
 	void __iomem		*fifo_reg;
 	u32			data_addr_override;
 	bool			wm_aligned;
+	/* Configurable data byte threshold value for DMA transfer. */
+	u32			dma_threshold;
 
 	struct scatterlist	*sg;
 	struct sg_mapping_iter	sg_miter;

-- 
2.53.0


