Return-Path: <devicetree+bounces-115660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C699B0398
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57E8E1C22035
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF6620BB2C;
	Fri, 25 Oct 2024 13:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="otZykFAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502C81F757E
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862096; cv=none; b=pvSTtWONx2E+9UBpDJGHF1RWo11hzKbDnDjLePk1bYoKDo5Gbol7UGZWrmm4+lvgSOn95wCkBNeBZztf6yitv/elKGbm+OU3FfqQ9C1nJPGCt3jyPMcBbDt0fXjmsq9lQ2go225re37QkmTSfZiGgPtanJ7n4E4DG8tO73uakDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862096; c=relaxed/simple;
	bh=nFcIrt+JzS+rRiCV4wugLYxatuBOei3DlyFR1BxfoD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mg0Axp/72FSmGdLayIWUNcxkeGNqL4rKy8Jcgmp42xH3LP5LPFygrj8F+ZIPOJKeg4FMrEqKf6wkBjtvy6+7wkg/yyTNiLVEjnMNQKf3e8nLSMeo3XRDWNvtHND2zjKSTcuqLfJq3vNGYGxgCAw/C7ctu4zmyL9uRhB180s1mDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=otZykFAg; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so20428295e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862093; x=1730466893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQgS5nIosT9WP+28fCSlQ/AHJVYYLIctL5rlsevVeIM=;
        b=otZykFAgvcNLkshp9T1l8FpU8O3Fqi97fRx55xX4FWFftCB1M1iuMq1t+1KAqmUwrW
         IlM24mxxkOs18fS/v7KMXCRZX9ZeIcqxEvFBl4v+fqwljohaXKNxdnVmD/XpYWJB6FmG
         y2dnoUhyR/XBY5q3OFsKvsycIOMpZaDSCgTPosiwXNsxujfBIQ7A0uD7b3nRFGnszBhv
         U2C+kY0qiuCg7CJ/Dzy9HMgwyyRLY6wi5x0a7EhygvcjXn7q8PBEzrrhM+Y+hl6M89Xl
         ciZoKNOXgejNLK/25dyA1kr/nfRw1w+GWbayLkGLUUifrRPOHEvzh57IjvHFP1ibbs3Z
         pLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862093; x=1730466893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQgS5nIosT9WP+28fCSlQ/AHJVYYLIctL5rlsevVeIM=;
        b=sgq8PDzsm7km5BAzVdzBqHlyXp9zctbGp7kRG1BVhkBlFCDjSMLsy/tZtu5XeUIv8F
         ugujj4PISdQjUMv1HiKRvguVR8jr0kgHUT0eZUm3sWd3LA4UbvU6a5IBFIPk++JS5mJG
         zcCVuwYdRM6jQEaRiCyKN3axYrqu4fvObUeDfZMVT+fvFyiEXXq1enQgQv6utWHqv3/9
         DM8cpdb7yLEMSJKcUh7vqmFA2Yd4vbMoZ2SdJygfigNF+o/yo3Uw/Ka5o/4dID0cp5gJ
         LMq5ORSuSvNDQBzo+qaep9gLCMTxtE8HYPO2RlTHpihc4NhOtwX1OEcIQwanyVKd1ogH
         puTw==
X-Forwarded-Encrypted: i=1; AJvYcCXm5TdPyQo2TbKc77qEfbEsdl4zJcMp6UWJxjBoDLgOGHEni2OCrPZNEaETXIPe/7P96WNFvg+492wz@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmasxvt6WBsb7wGUt7xKp3EuG5wqW5xnsXPGHrX++81/lenbvm
	qyLSaG2mb2Vu4Xh1RH1DSDzaDUjFnP3tV1pKEGH27lD/Z7iGRL36v7HJAL6qy0o=
X-Google-Smtp-Source: AGHT+IFu6kZDvdli2L18ry096b5sZipxK9OsOWeDSxbyTNiVEAO1GAWmUbs/6CZi5Y3noCEY1ICL6w==
X-Received: by 2002:a05:600c:3543:b0:431:6153:a246 with SMTP id 5b1f17b1804b1-4318414a3d9mr88410625e9.13.1729862092697;
        Fri, 25 Oct 2024 06:14:52 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:14:52 -0700 (PDT)
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
Subject: [PATCH v2 03/11] scsi: ufs: exynos: gs101: remove EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL
Date: Fri, 25 Oct 2024 14:14:34 +0100
Message-ID: <20241025131442.112862-4-peter.griffin@linaro.org>
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
2.47.0.163.g1226f6d8fa-goog


