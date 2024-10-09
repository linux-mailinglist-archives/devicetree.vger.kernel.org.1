Return-Path: <devicetree+bounces-109495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 817749968A5
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D921285B04
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635E5197A82;
	Wed,  9 Oct 2024 11:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oxNBtmbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B451194C9D
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472924; cv=none; b=NIW1c7mpl+OeIXemZA30nInGs3soIZB94GDDTIeEJRPot3OEZMvxcdMfkFGDXiN9kWX0OTrCq1XfLPkiTNQlzS5GAO0FDHHenXcBMku6UMO8hkyO9XcmDWxjIMahyBGu3hXtD9kTCPe5ikXX1snE63UpPpvvF0VHCB5IBOM3vFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472924; c=relaxed/simple;
	bh=9hGmvhSuxE/y9EVLKnI2683ms8TQVTCHDHwmHY9N2cU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=thuze0Hiy8JHBa+aM4Z/AjO4vFE+rYwrc+0qMAiS5wi52AkCGbc+CVUdtKl2DwXU8DJUS2SK2B0xDj7H5zs5t/1okwKu5AqxeaUhD209nRJ2nHVICreSy+LoFlxG8lyBNRrj4bn2FFAw6VZlO4b6m9kaL0d2ih0u++vLSjIzPd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oxNBtmbj; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so69161615e9.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472921; x=1729077721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1Fwj3/79g+NY6+faRKtNgwsGaf+fSmMjnCj8KQUGTo=;
        b=oxNBtmbjtjUdTD2TyW4q7YlYkvbTt8TKhL6jvGhck22U+ByMZ85HlGZ/jECGgkPzt7
         ysoUpWXVAKKIF4+YwBfoerZnze5xuHPA9IbgGpeaot91dmMfoa1md0KcfnszbyM0VdV2
         KxcIeEgz9rJANYdI5OupdoXQ4my0sY0CPUueDcSmpjI3EBXU2mRK/YaGLgdyM4utNL9i
         mNwml9B4RFoTFW+uhtkBSCCFte1dPK+HV5UmV8wu6PqRgbsoNM0Dybmdj8X6X0xVGk7I
         ZRV8GioDAOSW8mMMEETe3eZorQbk/XGbX/G8PUdkLSHE73QVjkBfuH0nV4u2NSGme3fT
         eY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472921; x=1729077721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W1Fwj3/79g+NY6+faRKtNgwsGaf+fSmMjnCj8KQUGTo=;
        b=swW8+PrWEWiEieJbr+ysg9rsmAHK01ZRy1t74Oec372PA2ZN8es/mM1U589KXVArP3
         Xk8e0zN8vZo6WOzRq1mdKLLM3buKYziSCyDr4iZfV/MXTk1r1PuEnS3WoB76o36UQpoQ
         yw7TCvzvciQoCczf/6sCV1WUouwKyEqPPEmcpl2zxQ7W3ZInavZ6IORRzNW2yE5xiuAk
         DUeZ4Y1gem7kHJyu1ueLTBwIFoBAKDCkXEF6QVuWF1AotIbRaibU4jeRsnRUrN5AC6FW
         y3TH2LQ5dZ246m/FNle1od+vL5foE67BO2ej1UpyiJ/dxvNSi3TSEmbEOOBq9kp/qdBj
         jTag==
X-Forwarded-Encrypted: i=1; AJvYcCW2btSUFjv9Bbw1tjGPeGgbjq64MCapQ4fgHfmKaVxkCXHZ8MmrsikXIlcdSjBKYi/J9gGNiQMt8I47@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt9y5jNClEdSA3OwYonOXMKnpA7YZ3T/ZVbCsq4HRU352Q1XGr
	QFlvtmLhBBPwdd5DvXjVgTt+43QeZ5yhsQV3zjfj4AcPqK2fokq7srKo71lRn1g=
X-Google-Smtp-Source: AGHT+IGhYNO9ZBnMSQoh0ZgHAq4d+L9zcAuCJO5c+hulGqbv+vwl+vbBiaHCglEGvUH+mq9MA+vOBw==
X-Received: by 2002:a05:600c:4ec7:b0:42c:d74b:eb26 with SMTP id 5b1f17b1804b1-430ccf48471mr16078145e9.21.1728472920765;
        Wed, 09 Oct 2024 04:22:00 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4310c3dcdcbsm12331445e9.0.2024.10.09.04.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:22:00 -0700 (PDT)
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
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 7/7] scsi: ufs: exynos: add gs101_ufs_drv_init() hook and enable WriteBooster
Date: Wed,  9 Oct 2024 12:21:41 +0100
Message-ID: <20241009112141.1771087-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241009112141.1771087-1-peter.griffin@linaro.org>
References: <20241009112141.1771087-1-peter.griffin@linaro.org>
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
index d4e786afbbbc..b0ccff7ca3fb 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -203,7 +203,7 @@ static int exynos7_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 	return 0;
 }
 
-static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
+static int exynos_ufs_shareability(struct device *dev, struct exynos_ufs *ufs)
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
+	return exynos_ufs_shareability(dev, ufs);
+}
+
+static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
+{
+	return exynos_ufs_shareability(dev, ufs);
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
2.47.0.rc0.187.ge670bccf7e-goog


