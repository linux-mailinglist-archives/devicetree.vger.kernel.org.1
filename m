Return-Path: <devicetree+bounces-287226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOPPLuP93WkRmAkAu9opvQ
	(envelope-from <devicetree+bounces-287226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 10:42:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3013F7786
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 10:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CABC630964CC
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788843B3BEB;
	Tue, 14 Apr 2026 08:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="OzUEG68B"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C23B2FC8;
	Tue, 14 Apr 2026 08:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776155787; cv=none; b=k6Qy6NNHLvNqyk5UzsZzNtcUHyEjeLWtRIkiv8jk9JQ6v0h/M7bODd8VosEL2/IPLtfFOuzobh4zYMZ9N7PRrls5dhJTWg84wPPkJSM9S4whzUXXQi3LrWXS4Q4GxYTSQ28tGkUoStZYr+KhdXdPwfRMl/PCEG5G+Na92y4qnn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776155787; c=relaxed/simple;
	bh=L84JWopRw4FxKWz9AQYxbsooFwv6BpfQMhWnSZT5k/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lSLVxHdoCfGcepYI6/CVrcNK6IaKgtRddTclQeslO1DnrZQ5if/8EIvootSeL7y3yBKCVKnJRkVCXtu+PQnD1gylPJu9F9uKSMy2Vd0+epxkURxKzIEhTr27d5OxRVrbfJ1710PLMdQeJJc+1euhNASZ50VnBEoK9oXbnR/cIEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=OzUEG68B; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B648826E15;
	Tue, 14 Apr 2026 10:36:24 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8is0GWIGNF3i; Tue, 14 Apr 2026 10:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776155784; bh=L84JWopRw4FxKWz9AQYxbsooFwv6BpfQMhWnSZT5k/o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=OzUEG68BWraLt82oL6eodF8oRYmwxfCV4V6DLSn7ixMtUcgoTkTXeR5eihNNsp7XY
	 y8GCEs24oPSKfRaCrIB+ospXIOJREXsi8C5xf7Q35UY6GhR8mVH9GkCsykC3lmwC04
	 Y5yvtC+VG8cqkEzK0eIFVMEcsB8owjhfO1F1C+al/o54navyRFD4J+zDzK91Fjteme
	 2IYiVMevdh2uMYGpT/hBri3k9GTK73JQXuBavFJ8PuBSrZSc9kb0Jy1QwFWtrvH9KE
	 h9o2Vhiup8ael14tYg/NdFjf6OL/Bo+Y3gfWQRvuzbd6dG4pkWHsYtTUtEvhbir70q
	 dh/TzFf+52uLA==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Tue, 14 Apr 2026 14:06:01 +0530
Subject: [PATCH v2 2/2] mmc: dw_mmc: exynos: increase DMA threshold value
 for exynos7870
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260414-dwmmc-dma-thr-v2-2-4058078f5361@disroot.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287226-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:email,disroot.org:mid]
X-Rspamd-Queue-Id: 1C3013F7786
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Exynos 7870 compatible controllers, such as SDIO ones are not able to
perform DMA transfers for small sizes of data (~16 to ~512 bytes),
resulting in cache issues in subsequent transfers. Increase the DMA
transfer threshold to 512 to allow the shorter transfers to take place,
bypassing DMA.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 drivers/mmc/host/dw_mmc-exynos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/dw_mmc-exynos.c b/drivers/mmc/host/dw_mmc-exynos.c
index 261344d3a8cfe..4b76b997ddc15 100644
--- a/drivers/mmc/host/dw_mmc-exynos.c
+++ b/drivers/mmc/host/dw_mmc-exynos.c
@@ -141,6 +141,7 @@ static int dw_mci_exynos_priv_init(struct dw_mci *host)
 		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7870_SMU) {
 		/* Quirk needed for certain Exynos SoCs */
 		host->quirks |= DW_MMC_QUIRK_FIFO64_32;
+		host->dma_threshold = 512;
 	}
 
 	if (priv->ctrl_type == DW_MCI_TYPE_ARTPEC8) {

-- 
2.53.0


