Return-Path: <devicetree+bounces-115663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A19649B03AB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:16:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D37E61C21371
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB7070815;
	Fri, 25 Oct 2024 13:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cm1KTRXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4261632E7
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862101; cv=none; b=jfpd4/ZPxsAimkZwUFXsE1S2qcddXWEz5jVU8WIesVKd+TjCGXUWFECuKp0WSAwnOFVTIhbHKldCMHD8CqVmxMLvVca12OgwcoSbbVRKoL+BueUWAb4DMZDnOVPtbfLaoVYN5ZJw3Ru8LHFkd2HsDVgfbKV5NqNtSd8mbXGnvps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862101; c=relaxed/simple;
	bh=x7XRxl7ysLw3w3rGpNl5xX6v+xyCoZrRF5jieQeGFEc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IeJqcPV+sgjKrn/RkelTH2lNxXcTadtMSAxsqTj7w8D1ytRPTPvJXQxgn9uMkkT2zNKYxDrBLqEtIkMkp9CktgNQJTf4ghGKggWJqyL1P+5i1xmGETmDoCAQ+n40gR93msj2Yon4pR6Ul2ca+LwSaDRW8Vu9r2PnGadTw8lOwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cm1KTRXz; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4315baec69eso20499815e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862097; x=1730466897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cNn15pq7FtlSd8hCdE286On7l4GZ1JdLdzQd70l8fTI=;
        b=cm1KTRXz5lg838koa+prBNwXYveBj5m3AOdbflgBkOAeuSPsMODLhq+ECxNuT+3jpx
         TzIXalUL9K60+6fSQonUf9Gfh3pZUfKd/UJs+IzCkLNA9u2sQWTmMv6zpXxByBn/IOXx
         Cp3MhQ1ZSCblqCspoAGzrkNLKJcyaYvaJ/8H++4hfkAyhFl1z/qyOxzd6DpUUGa+wur8
         xN+ErjDP1KbGFG9c1fUpnGkiveN52rO9CKkDCjSW40ASjLa4cJ/u7sp0smF+dQr37zSa
         900tmE6qmhbyfQsSeYaSRMxyfiVkvY+ZwTBg4qEkXGu4jaDmdqj77vsL6ruDKK6DuYH6
         czZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862097; x=1730466897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNn15pq7FtlSd8hCdE286On7l4GZ1JdLdzQd70l8fTI=;
        b=KbRPiGX6SnhHcaKg6gGLnjkehRGANDHVbhPngXby1If3kU6PGb84TqM8m3zOLOTTFD
         CFHhVg6AgaNG7VTcCGctDrSbfFxXP5+tlnh0uvxJvNg52ErtZllWCt/ScQiZanFx20JU
         T1kQtOK+SKHX372jagteFpKOLBVhQYccd95mvoK34CVpyAsCsC6AaOzmdb5PmXBF361E
         5xg53wgs0W7RvP3UN8qvynTO0UQpQbudITFZvyFXyX35umRxABzojkMZFqMTp1K9rID3
         256mLleT+a43OMD78sWR2KKnl2SvBU0n681JKx7ya6iR3kgJtrJXTJkfDlVqDcod128+
         KHaA==
X-Forwarded-Encrypted: i=1; AJvYcCXRCEEpV+tqvV8Ajz5R4N46IuDRpNw+D538YfjaCrB22Qkkr9oREl/Zfii/Bwx/lLz1llBUkt4AG9am@vger.kernel.org
X-Gm-Message-State: AOJu0YyDZKPJi3xxBcvavamO5si1RcDMspEkr9p6Qt09E4y34sgTepcZ
	SE+mXtEtmVUZZb0g2g8xXnQRfYIRfPfDdbfg0wj9314zZuoIgN4s+WfDC9Sb1CU=
X-Google-Smtp-Source: AGHT+IGmYuHoaUOEGVL/28LOiMK/A9Q47ttebm2jL0yHOWlag+R8pd+KgV3xQfuxq1xntOnAKAHD4w==
X-Received: by 2002:a05:600c:46c4:b0:42a:a6d2:3270 with SMTP id 5b1f17b1804b1-43184224094mr87230815e9.21.1729862096953;
        Fri, 25 Oct 2024 06:14:56 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:14:56 -0700 (PDT)
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
Subject: [PATCH v2 06/11] scsi: ufs: exynos: remove tx_dif_p_nsec from exynosauto_ufs_drv_init()
Date: Fri, 25 Oct 2024 14:14:37 +0100
Message-ID: <20241025131442.112862-7-peter.griffin@linaro.org>
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

Firstly exynosauto sets EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR so setting
tx_dif_p_nsec has no effect.

Secondly this assignment can't get executed as samsung,sysreg dt property
is provided in for this platform. Meaning the execution flow will return on
regmap_update_bits call above.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 9d668d13fe94..d4e786afbbbc 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -205,8 +205,6 @@ static int exynos7_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 
 static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 {
-	struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
-
 	/* IO Coherency setting */
 	if (ufs->sysreg) {
 		return regmap_update_bits(ufs->sysreg,
@@ -214,8 +212,6 @@ static int exynosauto_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
 					  UFS_SHARABLE, UFS_SHARABLE);
 	}
 
-	attr->tx_dif_p_nsec = 3200000;
-
 	return 0;
 }
 
-- 
2.47.0.163.g1226f6d8fa-goog


