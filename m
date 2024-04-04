Return-Path: <devicetree+bounces-56320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA47F8987BA
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60F7E1F24312
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E245A134743;
	Thu,  4 Apr 2024 12:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hhe3K7Yq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D506134437
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233644; cv=none; b=cMGHUrPiLkqEzQGvBouxdPie1DNPYJJxitt/XmN1qJDUdNwL9Pn19+9aNpWet/t+94qYCL1GWOJXiS+1p5A+ZTy0KbyfDpsLokPwlOYOSTHlbVMG+uH/JjPZWsUwTcG5LLJIhhOsFgdiVz8JlA3nGjkAx0gPAw+h6K1afx6+LKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233644; c=relaxed/simple;
	bh=ZHKCf97OijWc2VffmsZBpB7qLb+gSrxVQc/YXEeVJNk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rYLIGKYw/l7hLnSMB+JHi0rC6sgoh0CEG5205+TJzxA9we6E1xJ4k+yaSgrz/oyi9BF6T1cYJ+FkkTk+K6fJ+JDt+WkIaAY8bd0cvbHmdog2OpzIuzm5WY5f6UpCM7TKnVw+v80B0m0wSOqFUIO4Bw1P0nD3MIPljB6pxidH7Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hhe3K7Yq; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-415446af364so12400175e9.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233641; x=1712838441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyUUQp6WOxRvluHXSIvI5EfrW3GeehtIyQz6Nkgdpu8=;
        b=Hhe3K7YqTmMEQoghiyRYr/zoAn+h5++tRlrhAsHCzfFkGdmj5HZCeAkqX5Yr5bIK3x
         5lE+aUw/9fRGz1WyaASMmqrYLqolatlpj3JV2N/J1XtVRRMR2QAL4p9hslMeT/JFkphV
         tpMX7f94nQ2zt6YnYPyEvEQDkbigRUgMu1hT7KgzdjeqyWKpUYmja3jV3DoJCAo5Gsgj
         tGz3yb6WASJRZ2QDuBu3S4jSBd9XZjVNOpSF46jvkrSBWVS87lK5qdGa2mOzdqvj44sg
         O2oE1XirsTmQ16+K+sSfQLwbmNC+l8KqZonbogP0FL3SF2e3brWjPKG0TI+iqh43ugjB
         QjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233641; x=1712838441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iyUUQp6WOxRvluHXSIvI5EfrW3GeehtIyQz6Nkgdpu8=;
        b=xJssSlm9wKnjBMNLL828bI19194ie1DYU22g6IQRPAQnjzLDJIHKXRNqdbo3+ExBYZ
         QCLFuMnJayDUr354p5NjtlpW9fNedX11FH6k3MC7kc7K1wWFANEPfdBuvBYu5cRS6g+n
         O4EnR6RfSHXlk9i71sF+czCCV2tBeSkxwPB+kS70CnycJ2+nfZpvVAJImSoHVu9N08b5
         ESApVS2XylLPIgw7Yekwz82HyZ+SbHHL2ya5g7jdjXnMIJPtKdvuk2U9oMrzyfOotDrR
         II7C0f311zEza5rDueZYngsBWlze1ciDzLs6Xq8EBhKnCvMRto4Zd8ijMsOUh1+5u6w8
         EyIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKHEGD3wQDnGJK7Yldlf7u5+Id/UrWOf211Ol8GR4FeLovPDCUvHMsiHNQp+gsIj2oD/QKOnYCt5djX9iDXdgjohPrZr/tTdEDSQ==
X-Gm-Message-State: AOJu0YzD/DoR+Vpu4ToHU1/u31P/qyPSIuSKU02DYz1QR2CcoJYLuLBf
	fGeqcpXo8AmlZoVg2KEFIz1PRpdiPfZ6m/Q6DhHMZ2EBHZx1mCGw6G24OKJEtFA=
X-Google-Smtp-Source: AGHT+IEMnaWns3sPAMJ91nDBk0kRT98vdLD6EXIhsFu+f4lEueXgTLnJxBfN0OJHTHTi8CWqnrfg8Q==
X-Received: by 2002:a05:600c:1f84:b0:415:6cd7:9967 with SMTP id je4-20020a05600c1f8400b004156cd79967mr4750373wmb.10.1712233641601;
        Thu, 04 Apr 2024 05:27:21 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:20 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 12/17] scsi: ufs: host: ufs-exynos: Add EXYNOS_UFS_OPT_UFSPR_SECURE option
Date: Thu,  4 Apr 2024 13:25:54 +0100
Message-ID: <20240404122559.898930-13-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This option is intended to be set on platforms whose ufspr
registers are only accessible via smc call (such as gs101).

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 4 +++-
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 734d40f99e31..7b68229f6264 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -1186,7 +1186,9 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
-	exynos_ufs_config_smu(ufs);
+
+	if (!(ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE))
+		exynos_ufs_config_smu(ufs);
 	return 0;
 
 out:
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index a4bd6646d7f1..0fc21b6bbfcd 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -221,6 +221,7 @@ struct exynos_ufs {
 #define EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX	BIT(3)
 #define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER	BIT(4)
 #define EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR	BIT(5)
+#define EXYNOS_UFS_OPT_UFSPR_SECURE		BIT(6)
 };
 
 #define for_each_ufs_rx_lane(ufs, i) \
-- 
2.44.0.478.gd926399ef9-goog


