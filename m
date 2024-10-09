Return-Path: <devicetree+bounces-109491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E24996895
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BD8D1C20FB2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D19192B95;
	Wed,  9 Oct 2024 11:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DO2Ojuj0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE89E1922F4
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472917; cv=none; b=K9VjV/nv5hNOpuc+IP4Z/1POwF4BYTdbH/XZ3rHG7X5Vn71o4beysHJiEewNjI5bD5+zMUeARo3vPQvmDm5BL6LQEOSpt5BI8q15uc0vSEIJf+FMkt/tIWQrwmixaKR681zG6hCqUQCO4fcqoXT+zotA+eEcc6pBpYZvoyLaWFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472917; c=relaxed/simple;
	bh=V1Ebg28xAJMkAH3vygTav0+GVnN5eEH442ZJFTo8Z9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HTnmSnB4bekMlcD8PhGUJTYaG3LgVHVNcobRfyQjKM6mlJw8Z4fHqCjd2NeoAudV6r/2z0SSCMKxC/0/OhMHg38LYrd0AK/gLMXVuMVgCYqNWhD61+pPjx6CjaX3eviO6a7ueT7x8hjVLz9zAo2Vxkv0uuggvNtHquCVGmkEzWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DO2Ojuj0; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37ccdc0d7f6so4208927f8f.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472914; x=1729077714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LGYLAi4JF+h9/4Hxj8IqsekpEDYHXMIX8LJHajmfJfQ=;
        b=DO2Ojuj0dao6MyKQXmXDhTTqLYBCHZDd2zuVMxWnSafY0uF+sRJFJxnar8sUrZwz4A
         XI5vuuRSC0T0pJgy9CScXzg0EHPtyESHmgezpBJ1yRmXjuFKWg1J5fgo68rne3p0Ixdo
         CMZnQIEtTxbNmB2nHYDzVYhJXWnUkCwaLZnPrQs46A41RlWAQlHyME2H/vOOnDobGpVq
         UZJ0sYt3qREPkpYJzTGmFzp/3rT7bYmQifY/0+9JMe2QOPr0Bh73vFbD2Drr5ZoklgkV
         FwU9b4GISmIgEbuhkGC9+DfdTDnQogNAA6cDItHOUvFzSEKLnxfOh/IeGhWmYp/L6LQc
         w9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472914; x=1729077714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGYLAi4JF+h9/4Hxj8IqsekpEDYHXMIX8LJHajmfJfQ=;
        b=SBhOwgmz//jcivyDqJjNY0/YtCzMB2mCGfzxm34+XME0E6+BU+W8wORy6QQp61eM8j
         3A0+1LuimWxQ8BvKvw8g4DWMsD3bDVWj1+lF+YWbB95utjw2zEk0NghGNIugftxZn5Mh
         /zt8FFaLKvLyEEYYsfl54Umm0rtWGDAfFA0p+A7DlZB7Sr8N2fqVh+/Ekh/62Et0gRnX
         qu24PjrN375J9gagj+n6ggKIOj1OODY7p/b4iQDQRAIpfQLO/WvOpYfZcYsdqCE36JTo
         hTDhLaCfaqIfA+T56hUzVRhCajxQiJ3hH/0vDlz6gFOp7JqVy9JTewkblp467ELhgEs2
         1+0g==
X-Forwarded-Encrypted: i=1; AJvYcCWJECjpRFrb2SUknuS2iseFLdv1QRffn/01jN+rdJ5tdtLjET4WQyYYN+NZwGTknWpGOlqBuw0EHL4D@vger.kernel.org
X-Gm-Message-State: AOJu0YzV+MwuboKHbuSIRtLVVEiRyxWHTZ4w+VCtXr/6Xj5J38f/kplN
	PpKTgRyGuAKFvR2f71v88SQFCTfTPbN1SSQUV0uabZqCXTxgfdaZiX1Gd9qpLk4=
X-Google-Smtp-Source: AGHT+IGdWtb+G4uTKWkGy+SLP7YhXIty2nIIk9lA4K60gde3ICkfsbfdSfZOvGEFpFCgPGCfowuJqw==
X-Received: by 2002:a5d:5e0b:0:b0:37d:3e8b:846f with SMTP id ffacd0b85a97d-37d3e8b84c9mr844904f8f.24.1728472914307;
        Wed, 09 Oct 2024 04:21:54 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4310c3dcdcbsm12331445e9.0.2024.10.09.04.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:21:53 -0700 (PDT)
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
Subject: [PATCH 3/7] scsi: ufs: exynos: gs101: remove EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL
Date: Wed,  9 Oct 2024 12:21:37 +0100
Message-ID: <20241009112141.1771087-4-peter.griffin@linaro.org>
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

This flag is not required for gs101 SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 939d08bce545..d685d3e93ea1 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -2142,8 +2142,7 @@ static const struct exynos_ufs_drv_data gs101_ufs_drvs = {
 				  UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR |
 				  UFSHCI_QUIRK_SKIP_MANUAL_WB_FLUSH_CTRL |
 				  UFSHCD_QUIRK_SKIP_DEF_UNIPRO_TIMEOUT_SETTING,
-	.opts			= EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL |
-				  EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR |
+	.opts			= EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR |
 				  EXYNOS_UFS_OPT_UFSPR_SECURE |
 				  EXYNOS_UFS_OPT_TIMER_TICK_SELECT,
 	.drv_init		= exynosauto_ufs_drv_init,
-- 
2.47.0.rc0.187.ge670bccf7e-goog


