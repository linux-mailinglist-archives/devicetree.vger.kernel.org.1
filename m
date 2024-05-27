Return-Path: <devicetree+bounces-69519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA888D00AB
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D31861C22AB8
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA6615FD0B;
	Mon, 27 May 2024 12:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="A/S/VATZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0033F15FA62
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716814615; cv=none; b=KENpFMdpZS22cz53EATeRL6mbw1OjSwxSNcPgTODQ9PIoys25sZ9gYVprrf6XPvzDjwd3yBCRtPoCawfLZJj9oFkWflBRxojY4okELMWoBk5SqaMMNeQtfCNu4Cf91GY+u0r3b0VUyXChI9vAE0icUrDrs4/8XxXTxvRxjIYKso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716814615; c=relaxed/simple;
	bh=1yzAnjpudAn6GAdkPF5EAZ6GJR3hcWBOvGh/EqSoL6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WLbq14ZN/5cZthvL6/JWnEmFCVnxlAp0ObTc78WA11s/HCFVSzIbLkz/XcVPUCHnp0DarCNXsqIDoBKbGfL0n7MSxKiDb3PkU1oWFoFT43Paiw2Kg+V+Hd9HMOzpw2YTL0m6YumJQ/CEwtv0YhvV9qdOFdv35xJ+t7S/YuSdCZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=A/S/VATZ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-420180b5897so45028985e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716814611; x=1717419411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7As7Pf6G/hV1h3Ey95u5CfG80vP81J/j45cSsKKCTWU=;
        b=A/S/VATZd2p0Ysb9woKD3Tcbzcnv3Kzvo8RJkkCvAMAm6npsxxV9gjpW5C+aEBi6HJ
         UFZ/H2US0e0TMQ3jSom86UG/BpGGbwnYa/K+Y0a8Hf/d2TjNuH3BJQ7tBvNPdKUinORV
         iklwkJ34XUw54we+0UKZrGeFPionn5GV8nXXu6M5ZvZ4AbcyV5pfveYktePmTQpeqb72
         hAZ4C0yjjUD7Ae9LUFNXMbrTpgplhKU+9RmUqW/ezwGLYdgyJnqQlQdJqtbHRrnRIFLQ
         wdEYGHJGKyYrxpRl4d09tJOcw2a9K9qhobRadqT1atMhZQdgftu49so+rbY3KOxPOdyH
         Lbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814611; x=1717419411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7As7Pf6G/hV1h3Ey95u5CfG80vP81J/j45cSsKKCTWU=;
        b=VYTQO/2nHrzUSnEg5xoBDMpBpKEt/z68hjnPtEpi2IJBgJl1P+p1pqfLJd+OxkhKX2
         qbYi78ihlqjdwptgjlYUWqnChgzEipzaTUHBvD2khkoJz3tvOmdPm74M8gVYDQSiffY3
         JX43uHkrLAFQOueswmSL+XovLbRunFLNGt1z8UMi7caAV83sMARH4BUJpZz0wGsZfW+q
         ZevdlNISwDaSHXT61oOB2MPIEP+W/KgYGs0KgyuNlgcgn8PxuTFPllshbU4Zc2uNswuI
         zIu11oWPvlEpkRS7kMygXhKVNnPLCW3TN9WX5emT8k8kwEO7Oaok4KLd5VhvROOKGyoW
         eSTA==
X-Forwarded-Encrypted: i=1; AJvYcCWdDErrx+rdjK6sOXmybLShQlhcGV2IB6u5gKJQSuseCnPuE44OvA+aY72QpOVEsiOKfX6F1XcwuQCDQuVv1d2kG6+PA+aV1s5IQg==
X-Gm-Message-State: AOJu0YxT4wyx0r+z52C4MoVIP8wDKw3YMJF/kMDqY2RSsrba1/nGq5HX
	Amxv/qfIJn8uTuk82hLwHC92CqQ3Zn0r7YZWhmZu4x3nv5klgYtQj1tUyxCECXI=
X-Google-Smtp-Source: AGHT+IFDkoVmx20IGGH6ONvLMGqFlUHjz0w87BRBxDaAOe40qnJ2TAftpyz3HfCVNoRGzx38/nx2wA==
X-Received: by 2002:a7b:c00c:0:b0:419:f31e:267c with SMTP id 5b1f17b1804b1-421089d18fcmr66894205e9.7.1716814611426;
        Mon, 27 May 2024 05:56:51 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:c322:131e:ff9d:ef41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f64f98sm138753635e9.24.2024.05.27.05.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:56:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 27 May 2024 14:54:57 +0200
Subject: [PATCH v10 07/15] firmware: qcom: scm: make qcom_scm_lmh_dcvsh()
 use the TZ allocator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-shm-bridge-v10-7-ce7afaa58d3a@linaro.org>
References: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
In-Reply-To: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Maximilian Luz <luzmaximilian@gmail.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, Elliot Berman <quic_eberman@quicinc.com>, 
 Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@quicinc.com, Andrew Halaney <ahalaney@redhat.com>, 
 Deepti Jaggi <quic_djaggi@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1927;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=ccNi+/2cVrwYK/FlOZHun8hUJt/1weLgkQkfP/49qfM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmVIMJXiuUV4um9jG2pga3byQ2edB6XT9XASHYQ
 37O7TvxYTuJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlSDCQAKCRARpy6gFHHX
 crmDD/4wi1vmUxHQ7UxDBl5o9C5P+ki4uXhb199ow3MfzdReUFh3mwh1oSxFrinmbmOd2WE1aar
 AflMky+43nXzzhOvxgK99KiLLFXuqyyhfRO28EBYcEX9lwRA42XVUeXRNzTvO6S4AQu5lyFDmTc
 h/w9EEh/yVwP1BPhLu1IN2d0kDlFBBotxN1n2mlLuLMwjctrpVs8m5O6f0LJrrbVu45T8UIjObY
 LQqMQcPXGIPbnFb5f2nSxnmyeTSJx2u161fMLbNKRKjYVw8/PEMQZRTciK4D/0cIQELIEcV9Cop
 OhpVA4ymdYvyXcjL4669D3i2FCurPy72Gpdsgt1OIPZXRUTsVSWxqh1DbKawVHeVxHwHg9KQVha
 i2pxdaicQchzsD1BGmAe4WNxJoPqrOdtknzPULTgNakmH5bNS2i3U4l07MWSwzg1/w18NsyFMZ0
 xePtFOfG/Tfve0hRTfEcQLbxeB9NvVZ1IInqzKspqrQvjbbrNJ4gdjfB9wjBrG36Js0edtMQmo6
 5XJRWOW1EgEgx5In/OGtl1f+UpTTq9vtJ26b/8VB/Q1tMwKxbs6YWyldsQXQbUy5IkwqnDpyR3G
 fP5fhUyCyXYck4P8pnY6D1yXxgjvPk2ls9pSs38HSGGDHZFFShNu2YIwgzvKMFwVV5wYKJLuVPb
 j5FVUVOu+zowTdA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Let's use the new TZ memory allocator to obtain a buffer for this call
instead of using dma_alloc_coherent().

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # sc8280xp-lenovo-thinkpad-x13s
Tested-by: Deepti Jaggi <quic_djaggi@quicinc.com> #sa8775p-ride
Reviewed-by: Elliot Berman <quic_eberman@quicinc.com>
---
 drivers/firmware/qcom/qcom_scm.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 2c350de1df07..431c279df12b 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -1361,8 +1361,6 @@ EXPORT_SYMBOL_GPL(qcom_scm_lmh_profile_change);
 int qcom_scm_lmh_dcvsh(u32 payload_fn, u32 payload_reg, u32 payload_val,
 		       u64 limit_node, u32 node_id, u64 version)
 {
-	dma_addr_t payload_phys;
-	u32 *payload_buf;
 	int ret, payload_size = 5 * sizeof(u32);
 
 	struct qcom_scm_desc desc = {
@@ -1377,7 +1375,9 @@ int qcom_scm_lmh_dcvsh(u32 payload_fn, u32 payload_reg, u32 payload_val,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 
-	payload_buf = dma_alloc_coherent(__scm->dev, payload_size, &payload_phys, GFP_KERNEL);
+	u32 *payload_buf __free(qcom_tzmem) = qcom_tzmem_alloc(__scm->mempool,
+							       payload_size,
+							       GFP_KERNEL);
 	if (!payload_buf)
 		return -ENOMEM;
 
@@ -1387,11 +1387,10 @@ int qcom_scm_lmh_dcvsh(u32 payload_fn, u32 payload_reg, u32 payload_val,
 	payload_buf[3] = 1;
 	payload_buf[4] = payload_val;
 
-	desc.args[0] = payload_phys;
+	desc.args[0] = qcom_tzmem_to_phys(payload_buf);
 
 	ret = qcom_scm_call(__scm->dev, &desc, NULL);
 
-	dma_free_coherent(__scm->dev, payload_size, payload_buf, payload_phys);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_lmh_dcvsh);

-- 
2.43.0


