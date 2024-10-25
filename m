Return-Path: <devicetree+bounces-115668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E69E29B03BE
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78A181F2242D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC1D1632C6;
	Fri, 25 Oct 2024 13:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YLTpqkIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28A63DABE2
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862108; cv=none; b=iz0xClVFtieoUKNqenu2ATORa+L+ngDWPnGmU94hqJxDBm5C18QgndC+o6V/j3X0PfGH2ty239fja+FNSDuLtdYUAkVViE+jaIwyhAYUc/31xW8kegUhWlltSI5Io6d0aMan30qBvpaqTkhuaTRCyL1AYm5RFmfszHPem1WiVUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862108; c=relaxed/simple;
	bh=k9VgnamHeRSjv5GGKdOvAnnQA43iGAwv8ANgyYMaoCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jMCfsfLG4F9RcxN4up1XOX2GfN2OIjamBFV3ngFoH/ZoxYPq9kKLWrJr6fxOglkD8g8bkfEaoGfu+mEmLFFYmvTsIoM5EFE9LsrKlPbkhFBFFU4aypeFtRT9o6CRFXUO+X2REpsHMAL0PBTC0jZL0MQMVnCjo/a+kYvDls0IkPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YLTpqkIN; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so20727295e9.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862104; x=1730466904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aTUxFFuuS7q4apCNsR9KGVB+f/W8Symh/UfMC9/XY8=;
        b=YLTpqkINQl/k0Dmo/dHnkTCtWaDaxrXXf9ErowBdR4zfWFuU/nl86wGe5bfu2QG4IJ
         dqy2IH85DJxdqO3vp5e/k9NJ+p4TWsKi00I4KManBdi8rg3eqMZ2c+VefxvNoZUWoScR
         TYNWo/RYe7rRBeVlbqJ3s0tRpFiRh56rvE5RPGDOsaSxBRVV9lIaMVrPTqYbwpZ3S/Z8
         ZL0d3he39HeE1rexS6w+jI/YyQq42kNu0SOhoSl0/HtV7oEuEn2dIi2XfA1m7PcC/z/S
         23Tb48sCIxLM2mS4s5dyONyaGvIPq6horZas85YREmlEespKBvcgd2mKfBxDY1KwV858
         +KQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862104; x=1730466904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aTUxFFuuS7q4apCNsR9KGVB+f/W8Symh/UfMC9/XY8=;
        b=nYMUfGqHXc7gzSiOpPLR8P8A6HByw5jMr9TU2fp1wONScpANggejndD9LHt9Gy2kdU
         vsfZaY1FCkeSvUgN2SgwK590VgzhBHAU3Z/UmOO0SABGwnn9hjk2Nl8gTJZ6rqM8bKkP
         4LhFz3fRXcGYsdO70r/bvEPHE3Pr2Gnb2baJgnxbgaw6fcPEAUTkKRB+egI7zZp5QlJz
         IiVtJEwYpCIFkigkmSWiUeBRJNQYJMADkA2Y09S9yuPdUjjEyjWpo0om2AJkqwiX0OGF
         TwqAk437vb+BXGG1vWTmXATyY7SSVa30T0R/mUtOzWAOeLWrWDnECdYgqjVdzx3xL7b2
         rvPQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+WqICq/zpOuJy8HqeJotscftonb43cdyvy6TtwYInpJqW1cb+0/xjtQ65dO8ExPL+8RwYtUQxDGlx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4JlolOY60AohqsK8QzgaX7W0zrIsXgM/rpqn1DqRQZs8xHxbM
	ttouuG8ZLZk+YFteEUSGgifeKjwSHk2ju7EBoXtPbtSpbL/muLOJFvoiQn3Iw7o=
X-Google-Smtp-Source: AGHT+IFn4umTFqPxopB2GAJY2aOrR7RfiFspVJ8SdEfcnoO13PLJi0jzfHRWD2Ee5O6gR0xA2R/rxA==
X-Received: by 2002:a05:600c:3b2a:b0:42c:af2a:dcf4 with SMTP id 5b1f17b1804b1-4318c754f00mr39202585e9.27.1729862104292;
        Fri, 25 Oct 2024 06:15:04 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:15:03 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: alim.akhtar@samsung.com,
	James.Bottomley@HansenPartnership.com,
	martin.petersen@oracle.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	krzk@kernel.org
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ebiggers@kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 11/11] scsi: ufs: exynos: gs101: enable clock gating with hibern8
Date: Fri, 25 Oct 2024 14:14:42 +0100
Message-ID: <20241025131442.112862-12-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241025131442.112862-1-peter.griffin@linaro.org>
References: <20241025131442.112862-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable clock gating and hibern8 capabilities for gs101. This
leads to a significantly cooler phone when running the upstream
kernel.

The exynos_ufs_post_hibern8() hook is also updated to remove the
UIC_CMD_DME_HIBER_EXIT code path as this causes a hang on gs101.

The code path is removed rather than re-factored as no other SoC
in ufs-exynos driver sets UFSHCD_CAP_HIBERN8_WITH_CLK_GATING
capability. Additionally until the previous commit the hibern8
callbacks were broken anyway as they expected a bool.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 3bbb71f7bae7..7c8195f27bb6 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -229,6 +229,9 @@ static int gs101_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 	/* Enable WriteBooster */
 	hba->caps |= UFSHCD_CAP_WB_EN;
 
+	/* Enable clock gating and hibern8 */
+	hba->caps |= UFSHCD_CAP_CLK_GATING | UFSHCD_CAP_HIBERN8_WITH_CLK_GATING;
+
 	/* set ACG to be controlled by UFS_ACG_DISABLE */
 	reg = hci_readl(ufs, HCI_IOP_ACG_DISABLE);
 	hci_writel(ufs, reg & (~HCI_IOP_ACG_DISABLE_EN), HCI_IOP_ACG_DISABLE);
@@ -1566,26 +1569,7 @@ static void exynos_ufs_post_hibern8(struct ufs_hba *hba, enum uic_cmd_dme cmd)
 {
 	struct exynos_ufs *ufs = ufshcd_get_variant(hba);
 
-	if (cmd == UIC_CMD_DME_HIBER_EXIT) {
-		u32 cur_mode = 0;
-		u32 pwrmode;
-
-		if (ufshcd_is_hs_mode(&ufs->dev_req_params))
-			pwrmode = FAST_MODE;
-		else
-			pwrmode = SLOW_MODE;
-
-		ufshcd_dme_get(hba, UIC_ARG_MIB(PA_PWRMODE), &cur_mode);
-		if (cur_mode != (pwrmode << 4 | pwrmode)) {
-			dev_warn(hba->dev, "%s: power mode change\n", __func__);
-			hba->pwr_info.pwr_rx = (cur_mode >> 4) & 0xf;
-			hba->pwr_info.pwr_tx = cur_mode & 0xf;
-			ufshcd_config_pwr_mode(hba, &hba->max_pwr_info.info);
-		}
-
-		if (!(ufs->opts & EXYNOS_UFS_OPT_SKIP_CONNECTION_ESTAB))
-			exynos_ufs_establish_connt(ufs);
-	} else if (cmd == UIC_CMD_DME_HIBER_ENTER) {
+	if (cmd == UIC_CMD_DME_HIBER_ENTER) {
 		ufs->entry_hibern8_t = ktime_get();
 		exynos_ufs_gate_clks(ufs);
 		if (ufs->opts & EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL)
-- 
2.47.0.163.g1226f6d8fa-goog


