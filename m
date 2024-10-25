Return-Path: <devicetree+bounces-115664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA1B9B03AD
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D770285C09
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5EB3DABF1;
	Fri, 25 Oct 2024 13:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRPQ0cEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE0220D506
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862102; cv=none; b=pR7+qcK+eQDMtgpd4gq+jlHkI0gONWT5ATptR9p6jabakCWkAPqiKTgCFS5mGsHMWmPVmdsYWySROc52qRAg4mGzx14WxMlh3cgVh68aCjyt32/P9ZXW8/JqEZFHJ9ZZuVYIFfYjOFu70UXdFXv5kiiNkkenQMhQYkPcBC/fHcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862102; c=relaxed/simple;
	bh=UMHAH+7d2ubvmat4NPmFpXjrw0W8dqJHnrFUvo9OI4o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RI6sFbgPAH1tGdzHKbrGTh7gitrzOkXrUu8BpPJC4Z9CqYQjVgYs+x1zyGqfpzs8Ci7xkHVEEdwGKwcJrzcVpCh0Ii23dXWeinEJKvzDJHky14/iX3VcnTIwqQKlQUMp8vS71sdSzSbTFobq91Y7cp4KNAUPtllhZhVsOHe5ykY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRPQ0cEp; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539f1292a9bso2604217e87.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862098; x=1730466898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mSP0Idfdl9Bddnm7Irkt+YNMMsQJrdvTnch1RJ4UlY=;
        b=NRPQ0cEp4OpsryTWWGL5cuw3MWDowipQAhe4dDzFYXr6rKK/6b2NzSm9fP1yFi/SA4
         mqWk0TdGGaS+GR2a0xiQO0NJKK2TO7IfCUAUKQZct5w3dXrs+Z7ocGesZ8FWxrzV719f
         mspEQ/G1lD4MMzyyCrnG5jhU7k194s1lhgy+VJNTgQPs7HwmYUu6+odzom+bx/DdK5n5
         S9YI0oRbUanpsLoVITWk1jY6sOAxc/8yXDmwjtdx3+ATtYGEqZBOSoN3DpenFtxhNDin
         O3l67T0TnTinIO/5XBbbUOqU3iJcVfjkfyYDf5BNEinmzLDh0QeyjJ1RlB+IO6sJFauT
         PXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862098; x=1730466898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mSP0Idfdl9Bddnm7Irkt+YNMMsQJrdvTnch1RJ4UlY=;
        b=qZGcpaR617a1doMeeecYVQaLJanFhRv5maGm48ijduwVG74yhEj2flaSK2QlH8svAQ
         Q5FMuZpd31JgNqlaEDJkUPaqZ6TozTo7mupefnLN+BsJ5kRZzsEnz6ofTCnkBrH8dfz4
         EjGCdOkmoEZRmoIwlzkvvA61vHlK+kX/NBM/wnjNYxTKjgTilY1uTNSHftlrNenBSAry
         h5Ene1amGhq/jkV7I/pptm2d4bC5c62mIsDPzEnMcg2iVBV5oxo2poENuo1uBPrLc0sA
         gEE2L/Suerpl3BmV5BpZ6F2tlmPVfSgU4Kvd6+s45QCOrhejiHE11F7thjIY6Hdb7j0q
         bL4A==
X-Forwarded-Encrypted: i=1; AJvYcCX4tG9sW/KdCD6B4w0ySFXrxMFVjiDom9p2vW5cozC96hJD1bH5Ca68ds+hLjpaEplIH4QQ2230r5aF@vger.kernel.org
X-Gm-Message-State: AOJu0YwtAYtU8XZZ2wc0jT7ZZYeZaVn6DKYswwgmqBhLGAaIyW2SpSfE
	WpVD6uyAG7f0QnmuWMYcFRKDx7C13aAl31+EGCoJVPc2pEotuNrbi9Ilpi4SArE=
X-Google-Smtp-Source: AGHT+IFIjxCtFqGk3E1YIZeIbZDApteEen8rQ8qLd9MWNW7M5VeqNXGVeyRg3HBljC/8CXJKDn+GyA==
X-Received: by 2002:ac2:4c55:0:b0:539:fc75:99ae with SMTP id 2adb3069b0e04-53b23e1df9emr3392181e87.31.1729862098342;
        Fri, 25 Oct 2024 06:14:58 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:14:58 -0700 (PDT)
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
Subject: [PATCH v2 07/11] scsi: ufs: exynos: add gs101_ufs_drv_init() hook and enable WriteBooster
Date: Fri, 25 Oct 2024 14:14:38 +0100
Message-ID: <20241025131442.112862-8-peter.griffin@linaro.org>
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

Factor out the common code into a new exynos_ufs_shareability() function
and provide a dedicated gs101_drv_init() hook.

This allows us to enable WriteBooster capability (UFSHCD_CAP_WB_EN) in a
way that doesn't effect other SoCs supported in this driver.

WriteBooster improves write speeds by enabling a pseudo SLC cache. Using
the `fio seqwrite` test we can achieve speeds of 945MB/s with this feature
enabled (until the cache is exhausted) before dropping back to ~260MB/s
(which are the speeds we see without the WriteBooster feature enabled).

Assuming the UFSHCD_CAP_WB_EN capability is set by the host then
WriteBooster can also be enabled and disabled via sysfs so it is possible
for the system to only enable it when extra write performance is required.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index d4e786afbbbc..40b2563fe011 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -203,7 +203,7 @@ static int exynos7_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 	return 0;
 }
 
-static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
+static int exynos_ufs_shareability(struct exynos_ufs *ufs)
 {
 	/* IO Coherency setting */
 	if (ufs->sysreg) {
@@ -215,6 +215,21 @@ static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 	return 0;
 }
 
+static int gs101_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
+{
+	struct ufs_hba *hba = ufs->hba;
+
+	/* Enable WriteBooster */
+	hba->caps |= UFSHCD_CAP_WB_EN;
+
+	return exynos_ufs_shareability(ufs);
+}
+
+static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
+{
+	return exynos_ufs_shareability(ufs);
+}
+
 static int exynosauto_ufs_post_hce_enable(struct exynos_ufs *ufs)
 {
 	struct ufs_hba *hba = ufs->hba;
@@ -2124,7 +2139,7 @@ static const struct exynos_ufs_drv_data gs101_ufs_drvs = {
 	.opts			= EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR |
 				  EXYNOS_UFS_OPT_UFSPR_SECURE |
 				  EXYNOS_UFS_OPT_TIMER_TICK_SELECT,
-	.drv_init		= exynosauto_ufs_drv_init,
+	.drv_init		= gs101_ufs_drv_init,
 	.pre_link		= gs101_ufs_pre_link,
 	.post_link		= gs101_ufs_post_link,
 	.pre_pwr_change		= gs101_ufs_pre_pwr_change,
-- 
2.47.0.163.g1226f6d8fa-goog


