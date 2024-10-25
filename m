Return-Path: <devicetree+bounces-115659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 552B69B0397
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01C981F23EAD
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C134A20A5D5;
	Fri, 25 Oct 2024 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hlwMn1FE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E831D90B1
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862095; cv=none; b=h/Tbq+UQw0Q1R/Bfx/eNv53l4ejVNadS7dLBNAN5nDhVTeUdh26FEfmG9qQ/8FDbWsuUtMRE4M1WnEaDhKwdcTmkw5QIxxkWeO42Py963Imm+O1pnQ3+DB5WYjpLa1UzOvO2d/nH1sTSA2lwGIqzQc5wsMSFKjtwe3csvezLP3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862095; c=relaxed/simple;
	bh=52vVF03lgySM2/6ZOOgdrHinb/FvQUa3VHWIhQleV78=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G0jCSOd6uo4NL0VxdmPhz29ArquiA0WVrnTXZQcNLiqkgIXYfKfRPQta+aGVFboWguTRFMUxmVxGAzL384bj3E5GOzmo2ckt+xNHoDPE+ejddcTrWiiA/n9f+AjeQvhjoTdgYb5GBiCGlLAeqGhg58AAsZUOZ9zLKXjjUePn20o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hlwMn1FE; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so2158307e87.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862091; x=1730466891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ndmeeqYmXUmeG3ahgXNOhxMW6zZzHIs2RxYCsW225E=;
        b=hlwMn1FEuu+VB5I4KfJGcr3MEbBntU4wVZfTEKhUt5CZrxCdZnbpF0bHS87A5k2zE/
         NUfr3cVPYQn5DBtWh+oQFc/PGQj8mdBHajlfLesxWjXETEr5hhp0xMMcPV6SGbWTG/qO
         pKpkVa/IhwAEjdQEtBfV5IA79a2BUuCewn45yO3I8dUN+B/d6y0zYHbhdEblUffkLWWQ
         LFGM++8uYVaU+CV7N4wrXjRtUoWCIbpl1nMoQuY2pRwPCk0h8FSOYGOLDJxnaUgLxE+N
         Qo6mrjd3a3XIuk2FAHhfAwVT5LGuPC1blLLPGJIzd2i/koQMguUi6WYR72z04q8bN3DT
         P2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862091; x=1730466891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ndmeeqYmXUmeG3ahgXNOhxMW6zZzHIs2RxYCsW225E=;
        b=IvsddxTj/N2ITx6KZJbkDMSIDvgoJlZ3VFmH3iUDTJSfmxcbm+hx88MAJ8sV8INP5S
         rkLNfzQqKYtHvIkBW9pXr9/RMqsSs3tGDFiZD5MtuNgh7jj82EQWiNE4PKkbZe78Nhf/
         ui7zh5CGDuPp4ZmnlxF9ggB4zgp4zwNzRCBW+/yO6JtOp9LutQSogV80+3q0WUYruTwx
         1Oam4i/zuw+ARuhqknTFOYDzkVjVQjJA7JYEC+5o4Nkh3gs83Pen2Z+xhDTPytKYqUJ7
         En8CFqkD6ztOdgimE61wjUtP6NTG9qOUPVQ81pv/AV5ppNpn6TfQu90nl0uFT7TVZr87
         c85g==
X-Forwarded-Encrypted: i=1; AJvYcCWoLhTnHtGIjnu86CwdU5Z+nmcjnPLc8E+ogsJrVxLGqTNFu7Rwjo4AUq3PWm3slMXjQy6tE9Dsuxh6@vger.kernel.org
X-Gm-Message-State: AOJu0YxGguXSX1uYi4dXzdYhNoDZsYcArstE76h0PgQJcR2gDrhQH9Na
	KO8MVr0Yb1sgHjEX7JF+7S1FB4oEQGwZL9hHE8aRXUGOHnoLEme4HsmpNGp5pjo=
X-Google-Smtp-Source: AGHT+IGqC8HKU9NrjiBFGdut1et0Yr+WYmeKxlnHqZ/w+vIyRSTfXiYFfbHCJ6h5jr2qgVPoi7F9Wg==
X-Received: by 2002:a05:6512:6c3:b0:539:e279:b3da with SMTP id 2adb3069b0e04-53b23df5806mr3664939e87.18.1729862091324;
        Fri, 25 Oct 2024 06:14:51 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:14:50 -0700 (PDT)
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
Subject: [PATCH v2 02/11] scsi: ufs: exynos: add check inside exynos_ufs_config_smu()
Date: Fri, 25 Oct 2024 14:14:33 +0100
Message-ID: <20241025131442.112862-3-peter.griffin@linaro.org>
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

Move the EXYNOS_UFS_OPT_UFSPR_SECURE check inside exynos_ufs_config_smu().

This way all call sites will benefit from the check. This fixes a bug
currently in the exynos_ufs_resume() path on gs101 which will cause
a serror.

Fixes: d11e0a318df8 ("scsi: ufs: exynos: Add support for Tensor gs101 SoC")
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index e25de4b86ac0..939d08bce545 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -724,6 +724,9 @@ static void exynos_ufs_config_smu(struct exynos_ufs *ufs)
 {
 	u32 reg, val;
 
+	if (ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE)
+		return;
+
 	exynos_ufs_disable_auto_ctrl_hcc_save(ufs, &val);
 
 	/* make encryption disabled by default */
@@ -1457,8 +1460,8 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
-	if (!(ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE))
-		exynos_ufs_config_smu(ufs);
+
+	exynos_ufs_config_smu(ufs);
 
 	hba->host->dma_alignment = DATA_UNIT_SIZE - 1;
 	return 0;
-- 
2.47.0.163.g1226f6d8fa-goog


