Return-Path: <devicetree+bounces-12756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FE27DB654
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B711281450
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6E9DDBC;
	Mon, 30 Oct 2023 09:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dq1WGBMF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88CCDDA6
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:45:23 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A023B7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:45:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so2422860f8f.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659120; x=1699263920; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XXYjILCjl8eqmKwACuqBhWbhVJPplnAoksQobZQDc5M=;
        b=Dq1WGBMF1Lk0wOmkZBLpjiiOwqUT+89JFefscR8QXGycWKySY7qqI+O2dJGgSpoO/A
         Q3HRD7rRN8FkfiSUaSnggBjZX6LreJ1hdFAg165RgowmGKk2SFxQLWAyJ3w+01k5QSVe
         1hxhxLevwIizBRcEqi4SxQ+B6IOrkMevRkWU4Yghlr2nZnpPUpoCNo6Ww2Hy2g6iliRh
         jfGEADQKEhXccAkQ/B2/b+y1WzXcsJqRFm8A06mibsPcRU77zso6FuJjMBn8fcYBgpWk
         BUxeI00ylaY9uJ1xqCv5suL4fd9Dvt+YOz2PHRiNK4Smz0SByVpgebxqBBpTv0SxcEca
         cvJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659120; x=1699263920;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XXYjILCjl8eqmKwACuqBhWbhVJPplnAoksQobZQDc5M=;
        b=kXcnQ9TW7XPTUNUFS+vtSalHMMs0ld6/NAHCUoriDaTlZLDnknM2fAZZ5FkF4Qs3hj
         +iMVoei8aP1uOOPZ5eWjsH8kLcD6HrDJa/NecvAOOFPTG31sLUiFzvM0pP+Zjeywy0ZA
         uTh/VkFv0NPSuuc66vz0/UYOOX9C4ERRpzIu5FUj3oQ6pomKGnYCclF5pCuFcNpyfEvf
         MoAj7Y6w+cWJyANCVDgKI4og7b8g7ECCdtE5XXmTooRDm/uM0Wl/xIsdLIXmXQcWRvJl
         Bu+hMeDF356rwSZJBq+f2waQdTSSPN9vxpuwgnMrO/72Wvnvs2g3XYWeexejXGzWzQg6
         aitQ==
X-Gm-Message-State: AOJu0Yxpna8/v1zSH4GJy8BnZueFYto9BohbK9Mo/8zOphjIH9j18i/c
	WGyvear26Tx8Q9dCJpe308q36Q==
X-Google-Smtp-Source: AGHT+IEk8pSpXfBaA3FkLCzNlWVEoHf1wXDfYctNX39ftL6oJp+P1Gswk+ftGJTiclQUwpkLUY0U2Q==
X-Received: by 2002:a5d:54c5:0:b0:32f:64f2:815 with SMTP id x5-20020a5d54c5000000b0032f64f20815mr8706764wrv.33.1698659119783;
        Mon, 30 Oct 2023 02:45:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a10-20020adfe5ca000000b0032f7cfac0fesm5069446wrn.51.2023.10.30.02.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:45:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:45:15 +0100
Subject: [PATCH v2 2/2] soc: qcom: llcc: Add configuration data for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-llcc-v2-2-f281cec608e2@linaro.org>
References: <20231030-topic-sm8650-upstream-llcc-v2-0-f281cec608e2@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-llcc-v2-0-f281cec608e2@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4593;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ix5W4mqHtsLudqtcMaJsM3/eoQtEfT0ZMiit2cMREHE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3ssr1tVUY10KfKLxZryJpRWUcIA5UPRwsvnRKFQ
 KLa77/KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT97LAAKCRB33NvayMhJ0bGkD/
 4rlVPtkiQ5TGLe8v32h2iuhv4FZ4lhg5lERqOo49mcXp4PiUZtaTUTK/GzHeCDDaLmwXlHSfYEIUg/
 RN2yo2wNLaPXuq4iywC03T77MMIwyVTNbFTbedP5LZfUfzTNbgOpIzOmasXob6WUZiyJcNtM3zQ2xY
 4o+HFNNHwfTBpL0g7691mtgt22tl6Vtb/thcP3qrlicGr6e5JgX5NZiANWKN6VXHGgvJQ7JFQc3oOf
 hZxbPCeGR7g2mifPEgdsUOUT3XKCElrxGxymqyKGq0Jeug++RWBGUtCUk0fe+MyJNRasSHUIb/7V3c
 P297b9MqTHeKHZp6TlkklgPOibJDzxzboG+CvPwvkRNBsbPqKzlatiGZQgCEGzpmvOCIIyr8S4pWF9
 Joc26FlHb9GInjrtXViwpiOmUcOo6Koc86ckwUe0y6bq0fuMA15bNDRLLp5o34Y8Eea8+1A+2TqNKT
 VSGxwj7gm6GhcRI0HZdGE1aqHXjfJT9VdQfubWCl/ElVkeGeI2gOXemv++Le27AaYXT+oUbT7RnUeB
 lsIJ2lLLT1hjP0y6mKSiEoQONMs5cgazgMuOfRoDu4uTnLVu2zi6XSOEA9VqyQAoQ2djPAElS+vOeQ
 x2szNs6jmAFuLXrN0Rrg8g98dbW1XpxN9aIuw/EBTK3g765dS9WijFV7/tZg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add Last Level Cache Controller support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/soc/qcom/llcc-qcom.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 674abd0d6700..e92b950c2a9c 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -362,6 +362,33 @@ static const struct llcc_slice_config sm8550_data[] =  {
 	{LLCC_VIDVSP,   28,  256, 4, 1, 0xFFFFFF, 0x0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
 };
 
+static const struct llcc_slice_config sm8650_data[] = {
+	{LLCC_CPUSS,     1, 5120, 1, 0, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_VIDSC0,    2,  512, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_AUDIO,     6,  512, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MDMHPGRW, 25, 1024, 3, 0, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MODHW,    26, 1024, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_CMPT,     10, 4096, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_GPUHTW,   11,  512, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_GPU,       9, 3096, 1, 0, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MMUHWT,   18,  768, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_DISP,     16, 6144, 1, 1, 0xFFFFFF, 0x0,      2, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MDMHPFX,  24, 1024, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MDMPNG,   27, 1024, 0, 1, 0x000000, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_AUDHW,    22, 1024, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_CVP,       8,  256, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_MODPE,    29,  128, 1, 1, 0xF00000, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
+	{LLCC_WRCACHE,  31,  512, 1, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_CAMEXP0,   4,  256, 3, 1,      0xF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_CAMEXP1,   7, 3200, 3, 1, 0xFFFFF0, 0x0,      2, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_CMPTHCP,  17,  256, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_LCPDARE,  30,  128, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
+	{LLCC_AENPU,     3, 3072, 1, 1, 0xFFFFFF, 0x0,      2, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_ISLAND1,  12, 5888, 7, 1,      0x0, 0x7FFFFF, 0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_DISP_WB,  23, 1024, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+	{LLCC_VIDVSP,   28,  256, 3, 1, 0xFFFFFF, 0x0,      0, 0x0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
+};
+
 static const struct llcc_slice_config qdu1000_data_2ch[] = {
 	{ LLCC_MDMHPGRW, 7, 512, 1, 1, 0xfff, 0x0, 0, 0, 0, 1, 0, 0, 0 },
 	{ LLCC_MODHW,    9, 256, 1, 1, 0xfff, 0x0, 0, 0, 0, 1, 0, 0, 0 },
@@ -610,6 +637,16 @@ static const struct qcom_llcc_config sm8550_cfg[] = {
 	},
 };
 
+static const struct qcom_llcc_config sm8650_cfg[] = {
+	{
+		.sct_data       = sm8650_data,
+		.size           = ARRAY_SIZE(sm8650_data),
+		.need_llcc_cfg	= true,
+		.reg_offset	= llcc_v2_1_reg_offset,
+		.edac_reg_offset = &llcc_v2_1_edac_reg_offset,
+	},
+};
+
 static const struct qcom_sct_config qdu1000_cfgs = {
 	.llcc_config	= qdu1000_cfg,
 	.num_config	= ARRAY_SIZE(qdu1000_cfg),
@@ -675,6 +712,11 @@ static const struct qcom_sct_config sm8550_cfgs = {
 	.num_config	= ARRAY_SIZE(sm8550_cfg),
 };
 
+static const struct qcom_sct_config sm8650_cfgs = {
+	.llcc_config	= sm8650_cfg,
+	.num_config	= ARRAY_SIZE(sm8650_cfg),
+};
+
 static struct llcc_drv_data *drv_data = (void *) -EPROBE_DEFER;
 
 /**
@@ -1249,6 +1291,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
 	{ .compatible = "qcom,sm8350-llcc", .data = &sm8350_cfgs },
 	{ .compatible = "qcom,sm8450-llcc", .data = &sm8450_cfgs },
 	{ .compatible = "qcom,sm8550-llcc", .data = &sm8550_cfgs },
+	{ .compatible = "qcom,sm8650-llcc", .data = &sm8650_cfgs },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_llcc_of_match);

-- 
2.34.1


