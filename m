Return-Path: <devicetree+bounces-109493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FE699689D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34B2FB258DC
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A7C194091;
	Wed,  9 Oct 2024 11:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTS38Eru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C44192D8E
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472921; cv=none; b=rwVn7gZG23+1Bsknkjd7/JiOUnI5j87Q2OqVIxrJEfk4Rt5Vd/j6z+YgdIweixh1FyZfQ3QXF/UDWV3R4BFnbSdIeCTHTUU0sh+yYhfpVQdGh0OFAOXlHt9CSzKoQKI9u+mrOOzoi0XFyqZSNDdBy0bGgptcIDBlggRoEBC4tDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472921; c=relaxed/simple;
	bh=C68am3iNWJR/rEFnqne67c0Zba3n0Keq3E55e13RfNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XCam3mlOLRVjpCVfmXZLl+pJB9vwF5NFOHn34bbYwVh3cMfoF8r68NgsyAMmxRnYTkpPIEjMZdt3Yv8oRoU+GQMoLFtfxN/h174y2PZpZ8uBAtyg3agVSIfYYdgXwUCYI8XZWhXZnCzCUuUbaTi94TubQRMhEhbd85swtM5wYFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yTS38Eru; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cbbb1727eso67910285e9.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472917; x=1729077717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9yc2bquJWnC0TuLEtllIK7qV555Ljs382cn6kxswI5k=;
        b=yTS38Eru7AFKuuEvVyBK5885GwsC9/wIRE4ZvNrZ+1IvjjowphVw+xeMYg/VjZYddw
         oO8TFXo5OF1t4XPSAZPG3u7GXTSSSGwtPaDyUZxIMdIQNHekXydwDRV0hW4a3DNBL7l3
         8cRCPiQPHTOL8ItAqEaZpvBPSiS1oGEcQk7/H6wyxgpV2vdIxMpMzv+j+QeBsOT/XmMI
         jlsxfObYCNFot2/D+HH8QbMpanJDQ7YaZKkoJ+D/ekvULjzPVFdWXbsBV4XO7nshxZAZ
         vFb4N21uWFb6CoM3eKA9kPNN7Let/GkyGVPwDZ9ZKMmu93exXzCzgKLf32ebwPxsRyEV
         du2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472917; x=1729077717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9yc2bquJWnC0TuLEtllIK7qV555Ljs382cn6kxswI5k=;
        b=dbb2xYxFL4QIL1KIKDIwBZXLhnq4Pl3ujv/0M5g8GPVTFzyeKFhK1dN9kdtQ/q0aZ0
         bFR9fldbX/B7KQnr9wg0pXhIKd1uqjlBc97DkZ/a3KTbrcmoudkojbsxc7bL3aiBHvE3
         3xlHbEGpUOZaw3Gl9LtUPSrUlTd2JEHMRSkBvZ/8tm1HkGCOLa3Xe5z0PsK1coK8ug3o
         GaYLtGq/XQiqM+YTdD39SPiFUYnB87oZVKhRh/YoL0ju9AeaKTRwuoUpqaKAcU4WYt3F
         Q6bKc9deEQbKsDkj79sR71I4lDfZLSdiX/0QMgTokI2sCaPeuYmXEulozcYdB9EQuM/t
         CFtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNWPwLziPE339QJZvbNJ/vTiqvj/R1oTSYXwDBSEDqDu/lxC0IZQDWQQbkhkinNXgtQptK9i2dtkCU@vger.kernel.org
X-Gm-Message-State: AOJu0YyoGPaFDQBjVaNyaj9QxB6NUuK7dDE0p4rnXiHDO+VgrIsjWWvC
	yLgGmaRSjtyTEjPLO+EE9zjWrQc6fk2VOkZyX6/l+dYCzmmD1Uord5fjEI3prps=
X-Google-Smtp-Source: AGHT+IGVIzAhsUABVyJOyEwZGVXwYpzikVWau3b/o+ECvGcy7vkekMhISm+whoMp+we4FD4krW7kMg==
X-Received: by 2002:a05:600c:45d1:b0:42c:a905:9384 with SMTP id 5b1f17b1804b1-430ccf4affemr14524345e9.20.1728472917542;
        Wed, 09 Oct 2024 04:21:57 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4310c3dcdcbsm12331445e9.0.2024.10.09.04.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:21:57 -0700 (PDT)
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
Subject: [PATCH 5/7] scsi: ufs: exynos: gs101: remove unused phy attribute fields
Date: Wed,  9 Oct 2024 12:21:39 +0100
Message-ID: <20241009112141.1771087-6-peter.griffin@linaro.org>
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

Now that exynos_ufs_specify_phy_time_attr() checks the appropriate
EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR flag. Remove the unused fields
in gs101_uic_attr.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index a1a2fdcb8a40..9d668d13fe94 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -2068,26 +2068,6 @@ static const struct exynos_ufs_drv_data exynos_ufs_drvs = {
 
 static struct exynos_ufs_uic_attr gs101_uic_attr = {
 	.tx_trailingclks		= 0xff,
-	.tx_dif_p_nsec			= 3000000,	/* unit: ns */
-	.tx_dif_n_nsec			= 1000000,	/* unit: ns */
-	.tx_high_z_cnt_nsec		= 20000,	/* unit: ns */
-	.tx_base_unit_nsec		= 100000,	/* unit: ns */
-	.tx_gran_unit_nsec		= 4000,		/* unit: ns */
-	.tx_sleep_cnt			= 1000,		/* unit: ns */
-	.tx_min_activatetime		= 0xa,
-	.rx_filler_enable		= 0x2,
-	.rx_dif_p_nsec			= 1000000,	/* unit: ns */
-	.rx_hibern8_wait_nsec		= 4000000,	/* unit: ns */
-	.rx_base_unit_nsec		= 100000,	/* unit: ns */
-	.rx_gran_unit_nsec		= 4000,		/* unit: ns */
-	.rx_sleep_cnt			= 1280,		/* unit: ns */
-	.rx_stall_cnt			= 320,		/* unit: ns */
-	.rx_hs_g1_sync_len_cap		= SYNC_LEN_COARSE(0xf),
-	.rx_hs_g2_sync_len_cap		= SYNC_LEN_COARSE(0xf),
-	.rx_hs_g3_sync_len_cap		= SYNC_LEN_COARSE(0xf),
-	.rx_hs_g1_prep_sync_len_cap	= PREP_LEN(0xf),
-	.rx_hs_g2_prep_sync_len_cap	= PREP_LEN(0xf),
-	.rx_hs_g3_prep_sync_len_cap	= PREP_LEN(0xf),
 	.pa_dbg_opt_suite1_val		= 0x90913C1C,
 	.pa_dbg_opt_suite1_off		= PA_GS101_DBG_OPTION_SUITE1,
 	.pa_dbg_opt_suite2_val		= 0xE01C115F,
-- 
2.47.0.rc0.187.ge670bccf7e-goog


