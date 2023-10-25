Return-Path: <devicetree+bounces-11605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5D17D6379
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A407281AE4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7AB91944F;
	Wed, 25 Oct 2023 07:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E4G0B6dB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529AAF9EB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:37:25 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B502510E0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32ded3eb835so2899782f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219350; x=1698824150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFS6uLMBkeCO+XZ4DSFRy3UXiTLFXZJD5rsdUCkpYtI=;
        b=E4G0B6dB4rjczvpd+liggCOpEGQ/qupGS5Kx2rWsDwPcnEsQsdFyFo7e6T8qF5Y7wt
         aM4eZVYHbpBzVvSQrzRdJMo+orkFvrcpTp6xxOxARXSngL3hqlSvSXw9ZlmcIBUt3uGe
         MAF3Uzv7aI1/gjSUQCvRqwnijKawkDqJbeaxSjUnF8eoL7bW1HVfPgqyUSZZjvD23mxD
         s2PXpJE1g8lMdiaxcYu6SiMn04zLvFYe3YdOlE8foIsfbvCPlHKkvm5kKLQRTkzPL6oF
         D6+e4eeIWbMrz06XjF++SkFqB7NHwWMGYqmmg4yafPO4BUZwSsZnhoaMYhnQTKST36sZ
         Ki2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219350; x=1698824150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFS6uLMBkeCO+XZ4DSFRy3UXiTLFXZJD5rsdUCkpYtI=;
        b=EvksHnYyRf5CP4xRNEq/q8BeXNPgx+a5xMthPUt4WXMuhPtXjzGBLmCOOmrddSWgUg
         bPBtQI+PTKjiBwdDZBHmryxnMabdnjLItJIn3C15cSwvfWwRaY0i9+QC0EpmIcKmFcZq
         y5cYkGjoAHCBIZBlU39trbLJdKzl9rEwhlwFhuYBt1PoePn+v8a70QLWQXrEhGXgimZk
         CbZm7vtHwQ4Q6it4ZFjVD9SdYWhpGA4k1R3ABZsUTw5SdiUBrHBPxcTgHkG53ku+o/Rs
         zZ+EfJ2qXO+7P4HN6GV7atVW3kwp0pmR3+0hbt+WoERRvqrszqM+JbsHRVnXyhE3vnMg
         /2Vg==
X-Gm-Message-State: AOJu0YzPO1Thv8MTJ1RsEnRfsL/AkVQSo6yEmO12TVXy6bBQ1M+tspdN
	yKbpeAC+6UuDoe3PQR4JijhJpg==
X-Google-Smtp-Source: AGHT+IFWd/1xT93knyRXvxkTW+bvrQorHwzELNTt+DH2ayJdFEqwyzmnRuc5a96cfWt3ymPgl+CsgQ==
X-Received: by 2002:a5d:5b1c:0:b0:323:2f54:b6cb with SMTP id bx28-20020a5d5b1c000000b003232f54b6cbmr17132510wrb.8.1698219350220;
        Wed, 25 Oct 2023 00:35:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d14-20020adffd8e000000b0031984b370f2sm11416346wrr.47.2023.10.25.00.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:46 +0200
Subject: [PATCH 3/3] remoteproc: qcom: pas: Add SM8650 remoteproc support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-remoteproc-v1-3-a8d20e4ce18c@linaro.org>
References: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2514;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=vs8Qx+f+b2SPlgUgFLinN/sTAsKbSY5qUTCBQ7RJOsk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMVRU48vKgBreFEMoKGqvThEoPP3Gxk+LteU0JXg
 0Pas0CyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFUQAKCRB33NvayMhJ0bmOEA
 CW2yB7MSJKn3wfakv0ZIvoIjbIzvBKtsdnpduiok6y5mdue0SaWIBwCtFpEsertJ72V4ydvyCYLInn
 /GZDIU6sufuiLiZk8fINRDAeJTK4hEn2HKT73FSCRegFPZgajyzTKaEbITdFFRcVmbroDi9G+G+svh
 ZKWSri+k9CeEC8ekAjMzpZTCZd9CgwSEybiUU8Cy6NWedSNaT0McF4pVsXm3cc+r9cgktde9Aa6Gqm
 Sxs60gUfZTqIw//cRJRCLxo02ey9ihqyhAwVeOCQwCD2oBxGdzMforN6EXy/DsO2PQO/19yhF5f5hV
 wi35Dn+Zv3shv7Mj43RimnOjjp+dnn9g6CvQdL4Azo9PBI5QOmr1SCeorIC8UkQJjloE7TAGReM0u8
 Mh/2w1HcggW8SQQh2ny/8+xLOt9K34BkZWTS+tkVmOHMCBf/Td6s4DsHXIYrxMa/hysbxHAATGCsC0
 9oQrbQvp57p7ERQMkMnQci5podc7VJgHGwllTX4qGYtM2rFQRhWZ2Rs+JPWrdspjguS5a4ux8EJShF
 SRq1ZOCJ49Fz9j6AkYPCCj4ndX6Q8/w/XprrCQqiuaKZ/EF2QdVdWNkYVSdIt+RvnUgzRT9yHwhlZd
 Zl4B8JGbFnxpSYzOQNQlmPQEYkvnpcVwlEo4zxIlc0y0ASy8R9TGRyVFNi2g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add DSP Peripheral Authentication Service support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 50 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 4829fd26e17d..c593e6d529b3 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1195,6 +1195,53 @@ static const struct adsp_data sm8550_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct adsp_data sm8650_cdsp_resource = {
+	.crash_reason_smem = 601,
+	.firmware_name = "cdsp.mdt",
+	.dtb_firmware_name = "cdsp_dtb.mdt",
+	.pas_id = 18,
+	.dtb_pas_id = 0x25,
+	.minidump_id = 7,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		"nsp",
+		NULL
+	},
+	.load_state = "cdsp",
+	.ssr_name = "cdsp",
+	.sysmon_name = "cdsp",
+	.ssctl_id = 0x17,
+	.region_assign_idx = 2,
+	.region_assign_count = 1,
+	.region_assign_shared = true,
+	.region_assign_vmid = QCOM_SCM_VMID_CDSP,
+};
+
+static const struct adsp_data sm8650_mpss_resource = {
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
+	.region_assign_idx = 2,
+	.region_assign_count = 2,
+	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
+};
+
 static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &adsp_resource_init},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
@@ -1247,6 +1294,9 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm8550-adsp-pas", .data = &sm8550_adsp_resource},
 	{ .compatible = "qcom,sm8550-cdsp-pas", .data = &sm8550_cdsp_resource},
 	{ .compatible = "qcom,sm8550-mpss-pas", .data = &sm8550_mpss_resource},
+	{ .compatible = "qcom,sm8650-adsp-pas", .data = &sm8550_adsp_resource},
+	{ .compatible = "qcom,sm8650-cdsp-pas", .data = &sm8650_cdsp_resource},
+	{ .compatible = "qcom,sm8650-mpss-pas", .data = &sm8650_mpss_resource},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, adsp_of_match);

-- 
2.34.1


