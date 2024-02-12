Return-Path: <devicetree+bounces-40882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EDD851AA1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBB251F27631
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E593A3D57C;
	Mon, 12 Feb 2024 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xp/8UMxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50EC3EA87
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707757381; cv=none; b=ID3hrXZqtqC+jtS3TGu19kbcXWBLfcw7RY0M9A5NKekpVs86nT6x8/hFy5fX8Kx6SfinNxUW0JAqB1SRaUtgu364D0mtsJlx78UglbgcdjZumCU48MkdaNz9KxSVQlfP46wDM2P3gWC6Gmp0Shx9Wgl2waGDFLkfR13fPC703hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707757381; c=relaxed/simple;
	bh=KYbfcSCObq9Y7TWbsBt1X4vUh7ieGGCaQrtS25nOIKs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QbaqCAn16OLTlBm5ROT64oVfRcfutePpufAb40NBD53ywp1t8zyK7biQaFWobbutfWxElAanjseyK6akPFQlBlIhqMYi5nSAjaMPOiuVisFSYZU2tU4n6R7jOxE2qaehSQgb+nA1k6As24OmtxIIAPocySlWJYIwHyc/UyRfS00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xp/8UMxS; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a3c00c98d32so405117466b.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707757377; x=1708362177; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzBgpfFit+87YhLNiV85KS1arSw6rjj+6NBv4OlIr7s=;
        b=Xp/8UMxSi0pdIGPESVP8v7BhHfAN6pwrmrkLWAmDPbjDYol1UA029ZZA/RcuXIzlAP
         whdaWPDMbE59vApZRX7cwGldGWFlLo8U1+uoV10X0xHjoKo14XaxxXFOUcJhj955wOpa
         qWhbtgA3gQIdzuNa8HJ8xWxJqu5Ss/hSqBjPyxZn/3zq7aIlI81mzVg2pu52M34GXGzA
         +KF0idprO6v9Bz+1jVg7lXDSELMPYnlbtVurknjejshW7T4jJTWOhm76pCucjbUJM+3X
         vOH2oEJ6egN4P7Pp4ozbWKsZOvQgsB+pkt3RPKxw0Gktx/bCEfqjIsrBl045t1lzyPS6
         rU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707757377; x=1708362177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzBgpfFit+87YhLNiV85KS1arSw6rjj+6NBv4OlIr7s=;
        b=wT76l+GdYHN8xEkjJ6y/wFsQLbtoyFEl3FerFI+vEmOkc84eVXspEhFKR5hGpfXmqQ
         vabqV+tBFDgbJxdwbwZNJBWF2Y0CpuILKK0iIwM29D2SFhtbwGQdFczyPJDS72LNlYAn
         Qdv3t/juCVuolnyer2PuMAiCmO9M0J47jQ69bEeUVgKvlJK0nzr++zmmgg9SzKJKtDLU
         J0oMtuT1Rq1/IK1iAJWT+XaJbdTdT10+0lBxNVWTQrqqNND8+Nmlw5puizwzd0dmxfH9
         tb2+/AJRjsQcciDneulaKZjRgEVhQhaiFmlkBfla57Z7D8e3emdn2puiKl2QUz+PXQKE
         pPEA==
X-Forwarded-Encrypted: i=1; AJvYcCVigprM1FWyb6ekxIWrOQ+yYz+/KTJ6fzFPM6AvOVb5uR3Tit37pfkIOfbyYoIzO/TdvVFIHyJWCKR9wXrXSG7PF02WeBN2+vKM4A==
X-Gm-Message-State: AOJu0YyZpUL/UW3dmnCrr1FpPvv7NWY9fuT388iJbB7zxW9wamYnXsYV
	DMnY9ax2n23P/vCvWCQP+uLA+3/5cv9bNs8V1uNnu5voWtsmkmz1+0XBf02RKUM=
X-Google-Smtp-Source: AGHT+IHa4jR6TElh6E4GUFNdVvbg2RFBB3k+KwmuZowq3Ev03MT/YjERFfeyWxB2Mhaf3WhtNGA7ww==
X-Received: by 2002:a17:906:5002:b0:a38:45fc:1f01 with SMTP id s2-20020a170906500200b00a3845fc1f01mr4799708ejj.45.1707757377152;
        Mon, 12 Feb 2024 09:02:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWCe0+hF+inQus/Rc8nTATr1d5w+Tc3H+Q65e8rOpHKOW7rz55IlR/lDuhOXBi4bzlJuaVwgif6eLZWBIQA2z0Y6K6CeI9r940uDKCEsFHDZmIcgX0wNR15bBxav1VJvbAuOgxFXrWAytYkL6wajO6e1RE00+V1twS8jcMYG+Hg+sbrpjWuIdz11hXxjlGsc+wHHI92kx+SaCtPnCrvnUwHpTPWx8jtsmdBM3mzsGy38cRoZsJw+j7tytVHRwCLPzUfzmDzGfLmxPpFrAywoVESAJJrej0jYMxT0aQRR0PipvWHfHTOSMaCAHEvUTSZPtijeF1fhwVfLoTJrxHfzlu64rkNMbzC1Oj9x4jKZepU8cp8XvoZwe1MMf4iBGhe6McVnJoBSVc5ljMDobyfTqJgZOoJTwvcByckL9fGwzhnYo78fHug379ghw1ECmovX6W4PZrsxQIaVOvWLrwrxHLFgnPY39tWnANUTWhAEw==
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id h23-20020a170906261700b00a3c9951edf1sm379600ejc.115.2024.02.12.09.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 09:02:56 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 12 Feb 2024 19:02:44 +0200
Subject: [PATCH v2 3/3] remoteproc: qcom_q6v5_pas: Unload lite firmware on
 ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240212-x1e80100-remoteproc-v2-3-604614367f38@linaro.org>
References: <20240212-x1e80100-remoteproc-v2-0-604614367f38@linaro.org>
In-Reply-To: <20240212-x1e80100-remoteproc-v2-0-604614367f38@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2097; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=pK64jih4vFPFZcmgDeFClY35f13oGGe3b+xiPwzQtC0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlyk86letr6BgkGNok75q8FkQqp+5XwcEzKCPlo
 e5Fn/1UnDCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZcpPOgAKCRAbX0TJAJUV
 VhmLD/9D2yaRbOyfC+DrEoSDGVOiC9PAQg/srH+JDUAuuDxUgEHUC0/wQQEvB4ict4/mds0bv+w
 gwuiwSBssen0pdFkeqTWpFx36dpN1+J7h8ZUtMhCrQ8aJMxy1PK9Ph3T9RZm6Nlp0tVY6drg2oO
 rQsWfJgN3CoaLxmmCkmfw9oIVDBWPrcwGCnfi3eZTssXt0VFENEOTwnNCrhBq4XW2h+Szg5AuKf
 WQJUrronakABCgX5kXCXO8Ej9AvVcqPNizovIKnzd+IkY23WH6521veTxeZOY075TW1odA8a3zT
 GxZaDJDyQiQ5s7vlne2XAlgdnRWR5CrWHTPTtmyyTRqjcF+NNor8QeTSpt2qoW88O9eLu0b0hDq
 DhdgB+b17hMx7vWbblCPCwLwSyRzoI5GJGRAW32aadNtFnCMsMvs4MkH3IB9XIoUNPw9YXSSine
 1FzjCFuNWIXC6AMRtQJ6pycgKiCOij5IiGHlyFo+JGrTozr45a8IA16H5SGoAVE9xRQeizufpWi
 6wKgKV5xdikwzBxXnyL+ybhL1WP70LYrskuRc8DuM+BH0TMbz4EF3qvupe11ru7HX1EyeiR5Ck2
 naVt1Be5de9fuRSUimpOOyMvtfRhUbk7F71fz4Mx1enizlU7/p49JCjxah/hbwfIU4B3ycAZB1t
 WCJM92K3yw1d2PQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Sibi Sankar <quic_sibis@quicinc.com>

The UEFI loads a lite variant of the ADSP firmware to support charging
use cases. The kernel needs to unload and reload it with the firmware
that has full feature support for audio. This patch arbitarily shutsdown
the lite firmware before loading the full firmware.

Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 117fdfdfbc26..581ae5e570e8 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -41,6 +41,7 @@ struct adsp_data {
 	const char *dtb_firmware_name;
 	int pas_id;
 	int dtb_pas_id;
+	int lite_pas_id;
 	unsigned int minidump_id;
 	bool auto_boot;
 	bool decrypt_shutdown;
@@ -77,6 +78,7 @@ struct qcom_adsp {
 	const char *dtb_firmware_name;
 	int pas_id;
 	int dtb_pas_id;
+	int lite_pas_id;
 	unsigned int minidump_id;
 	int crash_reason_smem;
 	bool decrypt_shutdown;
@@ -218,6 +220,9 @@ static int adsp_load(struct rproc *rproc, const struct firmware *fw)
 	/* Store firmware handle to be used in adsp_start() */
 	adsp->firmware = fw;
 
+	if (adsp->lite_pas_id)
+		ret = qcom_scm_pas_shutdown(adsp->lite_pas_id);
+
 	if (adsp->dtb_pas_id) {
 		ret = request_firmware(&adsp->dtb_firmware, adsp->dtb_firmware_name, adsp->dev);
 		if (ret) {
@@ -720,6 +725,7 @@ static int adsp_probe(struct platform_device *pdev)
 	adsp->rproc = rproc;
 	adsp->minidump_id = desc->minidump_id;
 	adsp->pas_id = desc->pas_id;
+	adsp->lite_pas_id = desc->lite_pas_id;
 	adsp->info_name = desc->sysmon_name;
 	adsp->decrypt_shutdown = desc->decrypt_shutdown;
 	adsp->region_assign_idx = desc->region_assign_idx;
@@ -1020,6 +1026,7 @@ static const struct adsp_data x1e80100_adsp_resource = {
 	.dtb_firmware_name = "adsp_dtb.mdt",
 	.pas_id = 1,
 	.dtb_pas_id = 0x24,
+	.lite_pas_id = 0x1f,
 	.minidump_id = 5,
 	.auto_boot = true,
 	.proxy_pd_names = (char*[]){

-- 
2.34.1


