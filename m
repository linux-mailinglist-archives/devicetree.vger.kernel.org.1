Return-Path: <devicetree+bounces-148998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A3A3DEF8
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD70E17482F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B4E1FC7C1;
	Thu, 20 Feb 2025 15:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vINIICQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696F1DF754
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740066101; cv=none; b=NlXe+oFc0AmYYm/4AQbICa+UW361Vf+S8c0vjy8xuUPndNX/jlGTUfeM1T2CLChkloww2Lr8+MZkiztBOntvuM0s5v4T+PvS9hAmK4ChaIFvA58N0NLom2VCtPXCXKpfglyy9Ja0RmxWv3dDKyaz/KLPpedDd+HMpGcQxND3Zb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740066101; c=relaxed/simple;
	bh=iDnkUJ6+qKrz4yi0lcczfYKLL8cZ5N7uOIHYPvi8lfk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p3KVXJcP4zV5AILrVWI1cI/deq6xtBWCsgPGnmsq8sKJ/erJBQlORqF6RhyiqLiOtWWuXOJqzpRnphBOtTFp5kex2GTiTXc2kMor7G6PNEqSBwrD7Ph07Qd5eGM4BkDVyN9SBjnNUU17pDd/JoxkQ7UXg/+OneZ3ddJ+f8zIhDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vINIICQt; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5dbf7d45853so168137a12.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740066097; x=1740670897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMexPyi4X/XFWoEQeqC/jUtxuZa+FuBdiAX8hec2Nrk=;
        b=vINIICQtPZ1LNH+8AZ6DutURhlBEGPHhCRB47+ys321ojK3YzSDKPV5H5hrSbxR0or
         SmqhQhbE9yIWLF5ezIv/62pwlG9TJ4Zht50l2IfFW14pDtR4iWlfzNRm/uJSE6cFwFW1
         3ZoX9aLGWHGkGcbhyfWj9qCgmaMuPd/skOk8fRtHlUsp4ZI/7gOSkobWJNaqvo+CdJu0
         /ZbfXMYWqyYqg75DfU0KEhaWDOrlJAyzZdmX4QGAZGzEBYKl2QG9NY+e0H+gPbffpl/M
         u+I+p/cBh8HjNSZx4myrleNepUIbUJA659TyNgeQp+gVo3KNIj1L2AvW5i/14gygDM0p
         hKSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740066097; x=1740670897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xMexPyi4X/XFWoEQeqC/jUtxuZa+FuBdiAX8hec2Nrk=;
        b=R+jbelaTR7avyO7zNUoQiPHB6E0IJWwPsoXaGOyBfBIJvU75HVhTg6APgcT9YrP8Kt
         kvGDMstVzt8MzMzDof7oA83glIc2BN6E18e9dzVYtvTnzK/FhGK9EBNSe88FYZtVfCAu
         mWXcgOKUUZ1GEiEBLw/FgUzL4MqeNLuu4ZvDsPJq22Z8WhcvrT6b/bd4OYqzTeMYenHM
         gu5DwM2Ji9bHKbcqJhD9YLYjkRopZ+wCD5SxIJ8dM0Kwk4LdrietH/IlIp4SHRhNCaD4
         PmHgjg8e4RYf3tF3ZpDjmXTcanvL1N4tNyx3DXJShkiSf7ItnSoWsLLcBDjlP3x/qmiD
         8Img==
X-Forwarded-Encrypted: i=1; AJvYcCXsKP/j3wpa8kBIux55iyXZxAwc6JNJtHCLWA+PeQnkJV/DbtwLw7GyYPBwB8JEwaYakRZTP/CBBOKH@vger.kernel.org
X-Gm-Message-State: AOJu0YxrcBvfXarghRAYzo9ndpP7wuzqV40/VVdPHuDfTjbmJCsdLaRB
	2CZCrkMqlvkPhOHFCy1Lm3dV3hKgASVddASEmwfy41fuGjNaLb7DI6mE0wSEsXM=
X-Gm-Gg: ASbGnct/NozD3WeZEVLaIny29FOv6YebW6fPlQdchhkHMdzm9mjnlWoGRajMPkM1xdT
	WRv7GZGjDUpU4NjbWPunScgpRzsiRBlafpCd0DfyiBaKceAhVF6ckocCGPLf3tJHjS/AG8web6B
	NGoNEy0uIlsIZrK7czDuWtIMEpmo91mPSI30zgiKu6VTXreC3Qz85W5XTTdrMGC0CGw0r1ObJ/c
	9FC7nsj6WFZ8BTqrHeynC6popZINdGDUcngzzQX468LTV5VbcWY4/Ej9dRlvX9yicncdeHV8CM8
	tOOl7ZQr2MbtZMbZazFej6EQwQyKKKM83d+kBsebHKsOIYS0djLzYvBk5rowf56s
X-Google-Smtp-Source: AGHT+IHVrRSBtxWk0xruTGzrrqWlO/GFxEj4pebcghpMR+QZr6zgSIjoWLBIHWmQUFf2sytBbCsuiQ==
X-Received: by 2002:a05:6402:234f:b0:5de:ba38:b691 with SMTP id 4fb4d7f45d1cf-5e0361db9f3mr8506084a12.9.1740066097529;
        Thu, 20 Feb 2025 07:41:37 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece287c7fsm12097608a12.70.2025.02.20.07.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 07:41:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 2/2] remoteproc: qcom: pas: Add SM8750 MPSS
Date: Thu, 20 Feb 2025 16:41:32 +0100
Message-ID: <20250220154132.199358-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250220154132.199358-1-krzysztof.kozlowski@linaro.org>
References: <20250220154132.199358-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add remote processor PAS loaders for SM8750 MPSS (modem), which differs
from SM8650 by lack of fifth memory region for Qlink Logging.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 97c4bdd9222a..c34b7780f786 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1409,6 +1409,30 @@ static const struct adsp_data sm8650_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct adsp_data sm8750_mpss_resource = {
+	.crash_reason_smem = 421,
+	.firmware_name = "modem.mdt",
+	.dtb_firmware_name = "modem_dtb.mdt",
+	.pas_id = 4,
+	.dtb_pas_id = 0x26,
+	.minidump_id = 3,
+	.auto_boot = false,
+	.decrypt_shutdown = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mss",
+		NULL
+	},
+	.load_state = "modem",
+	.ssr_name = "mpss",
+	.sysmon_name = "modem",
+	.ssctl_id = 0x12,
+	.smem_host_id = 1,
+	.region_assign_idx = 2,
+	.region_assign_count = 2,
+	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
+};
+
 static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &adsp_resource_init},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
@@ -1474,6 +1498,7 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm8650-adsp-pas", .data = &sm8550_adsp_resource},
 	{ .compatible = "qcom,sm8650-cdsp-pas", .data = &sm8650_cdsp_resource},
 	{ .compatible = "qcom,sm8650-mpss-pas", .data = &sm8650_mpss_resource},
+	{ .compatible = "qcom,sm8750-mpss-pas", .data = &sm8750_mpss_resource},
 	{ .compatible = "qcom,x1e80100-adsp-pas", .data = &x1e80100_adsp_resource},
 	{ .compatible = "qcom,x1e80100-cdsp-pas", .data = &x1e80100_cdsp_resource},
 	{ },
-- 
2.43.0


