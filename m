Return-Path: <devicetree+bounces-11568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8720D7D62DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16F06B211D6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A330A18621;
	Wed, 25 Oct 2023 07:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DImA6h1A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6BC2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:32:16 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D6A4133
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:13 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9be3b66f254so749007066b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219131; x=1698823931; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEl6CeVofgkSmlxhJVVUPe8R9z1EBoEri4+KtLhRxgw=;
        b=DImA6h1AF6io1ZOH4AVndCw3fdjKP/lURon640gvhNdF7HezOTQiIiZaNUjPcBo6H/
         ISFeIz5BUkuyMyk5nU8aUvA75N6bnY4kVnr+boPOOhQ34aggXVmWB165GYx8Ih8AJWF3
         14y0XFO7JaMRjSqP7dIO/fnTaYa8Wq7aXgWfWsWU4c8/wROj1VqzvTaJg9VDkVF3726J
         N0gYZOI8YaFkXYpyieErF25/n72P8JFaxgZg88BTtG5WSrQE9ITZnBQxc6gYIeajfQDG
         fjvzd8gXi19imiXKpzf0uaVMRwj3zpd6LlCY5r+QqrCXmteJZyaGjwbydCCAkdCejpyD
         k33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219131; x=1698823931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DEl6CeVofgkSmlxhJVVUPe8R9z1EBoEri4+KtLhRxgw=;
        b=hB9bVRjEBz1KKuhawesl5c4a2pqGeoOe0XujWY2tixTCz8HhhXhOKkN/DMIaR5UAcB
         Pt928G9uKeIxu/Mvm7uP5+YOsd/zgjOW/biVIr6WLC1JBw/y1OcqqZH89AXKwdqXMHB7
         6klkvO90WHk9Uvkjo+oeyAJuBm7YRqFnqfq3L6MjrPF1jwRdpHd6MoluW+FMYCf7euGb
         dZ1bjRXdt+uBrFpG5a/6D6dCMGUl+bvZkRyPoVl/D3qP7w8aBiM8MVT2Tdt7JxtThL+P
         p4DarB6PD4/RtJRyiXD43nbSm1lXk7Bt5SeDMdRbbjVtRfw6ZE6OJ4xauycFXJw2/G+M
         pILQ==
X-Gm-Message-State: AOJu0YzB87xp7MUc8txTGIZK+Z9Lw9KIt8OT6pOViAoiUFeAoaddB+XJ
	q0VLlD6V4w2yMwsj++8DN9zsI8vNQUUd61ndmtm62MFo
X-Google-Smtp-Source: AGHT+IElI56qjtNbDfhubW0NsRm+A8KF20hs9WE+8zIIXTxBtKHRPgg8lCt/G61OsoBsfC6wkcJecg==
X-Received: by 2002:a17:907:2d08:b0:9bf:d65d:dc0f with SMTP id gs8-20020a1709072d0800b009bfd65ddc0fmr10692726ejc.4.1698219131278;
        Wed, 25 Oct 2023 00:32:11 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c4f5500b0040841e79715sm14036237wmq.27.2023.10.25.00.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:10 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:03 +0200
Subject: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add SM8650 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-rpmpd-v1-2-f25d313104c6@linaro.org>
References: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1963;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=hAT6chxV+deZaIvy8RroY/kbSzlU1xIefmMxtRfKR3o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMR3RL+P9o31avF2mPaUE2cMVo/LbJq7wbh5e6FX
 VMGIf76JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEdwAKCRB33NvayMhJ0ZjrD/
 4+eDSbc2bLZplcv3gQehQWjyhBHBFVkYF0zwyKTKVGKC0hyCouIuGxHrMETElQRdemQyB3jBApsHoT
 HxxL8zSa2NuXADp7KuqCX5HTqQIc7J52grprYWaq3Wo91ZEQYRbYbaljxeudK7oYuUXAoj6PT+LmWa
 7jkj20LCorT0g5xHyZFe8IJeUcjtGoxy5Zj1YqY4TTaNvIZStAfgcsNi3lgIQXRRz/qYl42FcRlRjd
 A1fiRxJsCEQ2VXwjeNTcFx+sMStc/ibpwMQWg3xBcLx7FiMAeX9zD4h2H/gOFVmi+/TS/75cN6lq1U
 HONnbqnPGWEFYH0yZnL86d/lZbQ3hbWvAP1XOMHlwsLkErzguIPAtr/3OOSUFqe3ZGCC1E88MSxMEI
 MB1lZtvbRCaSw5KF5SlIqwh45FvUfuhq0Cz+NKEynsv5n87jC0lt3eWAH7Nj9s9MVv7rg6JeM46oaN
 lc0p/J3kBxczbAn3y9Ax2Bxc3c58u5GRodCLq14pPpaodoCFt/DjNWgMm4PG08FZaiO1bMt5LEjaJw
 d2ZJeLdsYd2Kj9D5GGesV02qmcNhXmSFY5WTBzcVwJOyskLdI8OwZ1JxppTvpRrtS9XS6JQ5pMg9kv
 m+9JrF46X0jxeIjWKTsbdB3YuZMccu9csx5KW73tRHHy/K9pdPxivsqorVFg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add RPMh Power Domains support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/pmdomain/qcom/rpmhpd.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index a631fe1f9a06..cf25ba1cac66 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -197,6 +197,11 @@ static struct rpmhpd nsp1 = {
 	.res_name = "nsp1.lvl",
 };
 
+static struct rpmhpd nsp2 = {
+	.pd = { .name = "nsp2", },
+	.res_name = "nsp2.lvl",
+};
+
 static struct rpmhpd qphy = {
 	.pd = { .name = "qphy", },
 	.res_name = "qphy.lvl",
@@ -475,6 +480,30 @@ static const struct rpmhpd_desc sm8550_desc = {
 	.num_pds = ARRAY_SIZE(sm8550_rpmhpds),
 };
 
+/* SM8650 RPMH powerdomains */
+static struct rpmhpd *sm8650_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MMCX] = &mmcx_w_cx_parent,
+	[RPMHPD_MMCX_AO] = &mmcx_ao_w_cx_parent,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_MXC] = &mxc,
+	[RPMHPD_MXC_AO] = &mxc_ao,
+	[RPMHPD_NSP] = &nsp,
+	[RPMHPD_NSP2] = &nsp2,
+};
+
+static const struct rpmhpd_desc sm8650_desc = {
+	.rpmhpds = sm8650_rpmhpds,
+	.num_pds = ARRAY_SIZE(sm8650_rpmhpds),
+};
+
 /* QDU1000/QRU1000 RPMH powerdomains */
 static struct rpmhpd *qdu1000_rpmhpds[] = {
 	[QDU1000_CX] = &cx,
@@ -585,6 +614,7 @@ static const struct of_device_id rpmhpd_match_table[] = {
 	{ .compatible = "qcom,sm8350-rpmhpd", .data = &sm8350_desc },
 	{ .compatible = "qcom,sm8450-rpmhpd", .data = &sm8450_desc },
 	{ .compatible = "qcom,sm8550-rpmhpd", .data = &sm8550_desc },
+	{ .compatible = "qcom,sm8650-rpmhpd", .data = &sm8650_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, rpmhpd_match_table);

-- 
2.34.1


