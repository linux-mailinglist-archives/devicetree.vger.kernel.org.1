Return-Path: <devicetree+bounces-68056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 035B28CAB01
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 883E01F22135
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EF0270CC9;
	Tue, 21 May 2024 09:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P6KVckUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C076BB4A
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 09:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284731; cv=none; b=gLy1F/BENvyQ5nobUO3C2XCAfyfR+xVThiHFS8MS3khocn1SNz04uRVb6athnR2N7njmgJZAH0fSwhkyypjtHwsNtl4GaDCUYMPUUIWukCRe2RTPYXu0WdXFFf1a5NPvSmtC1NwflWH9aqtWDKPOj8q2AC7zQPU2V147qkM+zOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284731; c=relaxed/simple;
	bh=mNFfoGKwazQZaJjxyTEqcayzLDaum8DceVCVSofmCS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S/pQaDzC6z93AZBKDJYaX7p588h5pauZwvlqQBi5szyh/QAiz4H6uGxDA5yYExUw+nL8swRqato/eXEowvtSTE4wVO2UeD8Ilo7xZf6NzrNxZ60AawdWt8JLhquVo6zh1IFvo/vsUtOlR74r5hqMFIMz7lWSvTbLRUmwNCLX+pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P6KVckUl; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e724bc46c4so22802881fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 02:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716284727; x=1716889527; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jecFdq9XX1dTw2yUnC7PhQdscC925IcSiTTnqz+9Dko=;
        b=P6KVckUlQH26Z3m/xAvLTPVDJTWPfSQvu86u+pCTvjZ9mtqK2rfk5OinwouDpSSg1L
         4vS1M2aPpDeFCf+Zb2Q+bLGtKJiOGaWuicXN4HQ+06tmFGI+geRdosiqx15WbsuHrzAW
         BYEY3G/IUUoUi8SME8BUNOLjHMyDCest9HllgxWqQ7erUy48WmkUat3PsEWLOddLorLs
         yduR91Kw9QgRdRi2ILdMStbdv2iRPMVfXXWSUEytP5PajG8EqID09rKTQ+RZLyebXSLO
         N8eb5QFzELtj/CgFT1HUGJV9Szcirvb2KKxT9wEGsvPwVEvZ5u1ubGB3VAKxGDGUmr05
         GSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716284727; x=1716889527;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jecFdq9XX1dTw2yUnC7PhQdscC925IcSiTTnqz+9Dko=;
        b=Vpp78sURBx6M98jVRZTiSW4j5SlSL63nz0VAdtuzgjD6xEH8x59Ounyq+nEkkiJ8XX
         l959DVZozV0OBZxowzyPfoEafUY9mQVQNfcZf1pExEYUWUmiPvHCTbP+3XmZddS1bdcG
         i8bEpfAZHf1eoxoVdNtexKuhn/0ugIK05fp48NY2hJFlN1ghTv1JF5Hgd4miJ6vocmHJ
         YobnqS8A0Wt3e9te6Fp8nSO76bYYy10/51JzFwlnioBihDuYWhTv9qBvBEabknoOFOwj
         FfVxdezHzdQqJAonetVI2K3r7DmUPTALqjUh6yiSDmOD+WmWWVDAdSmEsjy+xvld2pSu
         NImA==
X-Forwarded-Encrypted: i=1; AJvYcCVSgy4kLlHJnOotwxqvlxDx+EhsdNA7KWsVO39csCzZTohhgmGe6pfxsjKVejRnmP0RgO0ue9vXlBkI7m6uUs4eH6CD4ybXGvTTeg==
X-Gm-Message-State: AOJu0YzZH7P2jZJ3kB1LMgKJ+VHNL/7dzD9dM/cJM5jMtkOWY98uAMIq
	rBSpl8S2zUogxMaZKDO76fYchikh5UdwlRfz0TKxjSlC/qVQoQeQsefn/OTIEpsBnnRCiBKelWW
	Y
X-Google-Smtp-Source: AGHT+IFTxQkrJDCzeLWrCudD84gAV/X79zi7LkAL7T4OG8XUDBbu4uZYig0wCSFlBu9Er2kpiaOZAg==
X-Received: by 2002:a2e:4c0a:0:b0:2e6:cbe9:daf8 with SMTP id 38308e7fff4ca-2e6cbe9dc49mr129754251fa.6.1716284727368;
        Tue, 21 May 2024 02:45:27 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e706ee0a65sm13906261fa.112.2024.05.21.02.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 02:45:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 12:45:23 +0300
Subject: [PATCH 03/12] soc: qcom: wcnss_ctrl: make use of QCOM_FW_HELPER
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240521-qcom-firmware-name-v1-3-99a6d32b1e5e@linaro.org>
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
In-Reply-To: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1682;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=mNFfoGKwazQZaJjxyTEqcayzLDaum8DceVCVSofmCS0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTG0ytxCXD9qErfoBB4dLiYJqZd9eQQ5WqLLah
 hC2GzIGtE+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZkxtMgAKCRCLPIo+Aiko
 1W0UB/0WIxQQuziOGJq6OrXgP3+CaPpTzT4eYVYq2Aqpda96s2TL+2HgwxZB/uhUg3keuJioam2
 9FdpHEdSyzfmBX/Jtr9CO7KY6GIZWhdJl6J6hb0HwcBQn1Pc+048CtWwfaPTL9AHgEcL0Abd5Jz
 Q4YyqYvjEAhJachwYRntg0uKNHMtPR3FIUb+FMljvlT3tn6R+KYmD1vOiITNw5VB1wUcebPboDv
 EHCYLGaXllm97WQ3ntZTnb1F93Wse9ykyrTgR5tE22wbeGPehMr3Ze1RX8C8+ha6YnX/ImB072Z
 9wkcz4k5PtVBXYjoAGylAC5zsPWVbvexxxHPusupRZJRWnvI
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Make the driver use qcom_fw_helper to autodetect the path to the
calibration data file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/Kconfig      | 1 +
 drivers/soc/qcom/wcnss_ctrl.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
index b663774d65f8..3af3f15175e4 100644
--- a/drivers/soc/qcom/Kconfig
+++ b/drivers/soc/qcom/Kconfig
@@ -238,6 +238,7 @@ config QCOM_WCNSS_CTRL
 	tristate "Qualcomm WCNSS control driver"
 	depends on ARCH_QCOM || COMPILE_TEST
 	depends on RPMSG
+	select QCOM_FW_HELPER
 	help
 	  Client driver for the WCNSS_CTRL SMD channel, used to download nv
 	  firmware to a newly booted WCNSS chip.
diff --git a/drivers/soc/qcom/wcnss_ctrl.c b/drivers/soc/qcom/wcnss_ctrl.c
index 148bcbac332d..7d1a4536226a 100644
--- a/drivers/soc/qcom/wcnss_ctrl.c
+++ b/drivers/soc/qcom/wcnss_ctrl.c
@@ -12,6 +12,7 @@
 #include <linux/platform_device.h>
 #include <linux/rpmsg.h>
 #include <linux/soc/qcom/wcnss_ctrl.h>
+#include <linux/soc/qcom/fw_helper.h>
 
 #define WCNSS_REQUEST_TIMEOUT	(5 * HZ)
 #define WCNSS_CBC_TIMEOUT	(10 * HZ)
@@ -214,11 +215,19 @@ static int wcnss_download_nv(struct wcnss_ctrl *wcnss, bool *expect_cbc)
 	if (ret < 0 && ret != -EINVAL)
 		goto free_req;
 
+	nvbin = qcom_get_board_fw(nvbin);
+	if (!nvbin) {
+		ret = -ENOMEM;
+		goto free_req;
+	}
+
 	ret = request_firmware(&fw, nvbin, dev);
 	if (ret < 0) {
 		dev_err(dev, "Failed to load nv file %s: %d\n", nvbin, ret);
+		kfree(nvbin);
 		goto free_req;
 	}
+	kfree(nvbin);
 
 	data = fw->data;
 	left = fw->size;

-- 
2.39.2


