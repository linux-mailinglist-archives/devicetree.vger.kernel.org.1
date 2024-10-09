Return-Path: <devicetree+bounces-109489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 811DA99688D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:22:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1277C1F24019
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC3B1922DE;
	Wed,  9 Oct 2024 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bNnL24xU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18A0189B94
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472914; cv=none; b=bIwbWldY8a0Dqmiv+ZD46ZVtfj7Zw5M5oYuzHjSJCt+jxLwhlvcAKhqBvsLxAD3DJLOw55fb/zXhsnHhoZA0OSKccBXgRMqnkp3XQB7G94EPxb+dKBhpPrTj067t1CbN7Yds3ytEV7qcXkibrJhzQSB8EF/2cMYXXO2z7PbcsWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472914; c=relaxed/simple;
	bh=hDzFSe1lRi4yyuPHSIaucwMqr2mLXU7tOlTPgv8XUzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rxfvVs5yMtkeowiNsDK5VxLfREygfnJlXj6TVRSjDtHyASUeq4693IqLeZMzMKoKIvQ2GcyCo20G+qJrVH201sW23qOh3+0lfT/WPy0BUSqCzhFG4b0RSaWmWAjaVS19sWQGnsrfV5pv+nFJJ3lyXG14+kyu+svp+KCEhweldQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bNnL24xU; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42e7b7bef42so59902295e9.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472911; x=1729077711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghtUYLBlSjf3IggEwHExig2CKcpoS8dsJVFld1RzVuU=;
        b=bNnL24xUF+gpLihMlmHw7IUZziKucfwCEJ1OvruipQ+p+WQ0tCe5xMA6UP3zi0ptx5
         XTlw6h7d0HQBGFcJ5qqIryMpDt7WleHdfQ8YaN3mGy7+UEcqcfJPCNM8oDEtUOU1sNt/
         fmS+NxZkOkKsIgQJZDsYJBkg+a8mnQFQfhxMA/tzdGt1yggopRmy1KOeIYSgp+9ZH+zx
         PzjmYoFGaTTVEVrrIFy1Ghkm4t1aM02WVZYwOXzs0Sve5fXFCoTJB/9nXRt03FbaT2wz
         Gaicrk5LbZOoiDdGzY+5n59zPtqwhkXDYN57wRTTZJHpMMQqcxro03nfl2ObAdNmtCku
         bUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472911; x=1729077711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghtUYLBlSjf3IggEwHExig2CKcpoS8dsJVFld1RzVuU=;
        b=FXIMofoZzklgnIqrdMPwsalcF9Ah0AboAykAWLlT+Z63bljb0MvD1nWFCZFeGxdfJA
         f9ckf1TDUqVsZa4SE3jQP61Lp1rzOL9UuKOqM3CgDwqZzOkY+L9qKFEGL0vGDWZnsFSm
         1zhmLyrO0wK9aqQesqwVqkaHWmho+slPF1thd3LbdB7rLjYQYMGP57jwsW2AAbYC7bzg
         V0bIWqLKyreW6Ay4P4OYp4GyUQVkMSIMiJssxS+S5ib0fqhwTHV61nhxYM/srVIXci5+
         Em9MDs5SzkOcBMkEdBkLSkw4gPpKycCa/7X1MTDHtrPz0LsKRRXqB4MdipeB/FwoNQBN
         rZcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNKigpXOkWx394CCYIQeI+HBu1sZtLKcLW0LpybRfkmxUkkC8n/0+sMAOKk2kFW7gFRowHgA4d4jHE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Eo2omW0Zp/i3Vd58vR74F+4b01MVzWkPKOfLEYNtrxGq3TKJ
	BwPbc5SlLXDVHJJM4pYFY6cUblLpelNTiRFPpRwXBpfr4kUCGo9evdX/22i95t4=
X-Google-Smtp-Source: AGHT+IEJX2RjpFeLUHsr4Qx7o7zdf3TWL+5xxAUSFTySxWEYnSA6UXjwYDBXPN59NyQNksavaCy8pQ==
X-Received: by 2002:a05:600c:3544:b0:42f:7c9e:1f96 with SMTP id 5b1f17b1804b1-430ccf091a7mr14596575e9.1.1728472911183;
        Wed, 09 Oct 2024 04:21:51 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4310c3dcdcbsm12331445e9.0.2024.10.09.04.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:21:49 -0700 (PDT)
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
Subject: [PATCH 1/7] scsi: ufs: exynos: Allow UFS Gear 4
Date: Wed,  9 Oct 2024 12:21:35 +0100
Message-ID: <20241009112141.1771087-2-peter.griffin@linaro.org>
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

UFS Gear 4 offers faster speeds, and better power usage so lets
enable it.

Currently ufshcd_init_host_params() sets UFS_HS_G3 as a default,
so even if the device supports G4 we end up negotiating down to
G3.

For SoCs like gs101 which have a UFS major controller version
of 3 or above advertise Gear 4. This then allows a Gear 4 link
on Pixel 6.

For earlier controller versions keep the current default behaviour
of reporting G3.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 9ec318ef52bf..e25de4b86ac0 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -771,6 +771,21 @@ static void exynos_ufs_config_sync_pattern_mask(struct exynos_ufs *ufs,
 	exynos_ufs_disable_ov_tm(hba);
 }
 
+#define UFS_HW_VER_MAJOR_MASK   GENMASK(15, 8)
+
+static u32 exynos_ufs_get_hs_gear(struct ufs_hba *hba)
+{
+	u8 major;
+
+	major = FIELD_GET(UFS_HW_VER_MAJOR_MASK, hba->ufs_version);
+
+	if (major >= 3)
+		return UFS_HS_G4;
+
+	/* Default is HS-G3 */
+	return UFS_HS_G3;
+}
+
 static int exynos_ufs_pre_pwr_mode(struct ufs_hba *hba,
 				struct ufs_pa_layer_attr *dev_max_params,
 				struct ufs_pa_layer_attr *dev_req_params)
@@ -787,6 +802,8 @@ static int exynos_ufs_pre_pwr_mode(struct ufs_hba *hba,
 	}
 
 	ufshcd_init_host_params(&host_params);
+	/* This driver only support symmetric gear setting e.g. hs_tx_gear == hs_rx_gear */
+	host_params.hs_tx_gear = host_params.hs_rx_gear = exynos_ufs_get_hs_gear(hba);
 
 	ret = ufshcd_negotiate_pwr_params(&host_params, dev_max_params, dev_req_params);
 	if (ret) {
-- 
2.47.0.rc0.187.ge670bccf7e-goog


