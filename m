Return-Path: <devicetree+bounces-72870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 456618FD360
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFAD01F25910
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37EC194A5E;
	Wed,  5 Jun 2024 16:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="UHRlUucd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9FD194141
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606640; cv=none; b=jtjqpgbkXJ3liGBSinHXt15AWHbjONJ2uVVaFbekuXUCD25KvG318LnyGoqlcrKalB0m6TMGlw2ULiQ6kCbkrkgQ+8apNi0ENHNYiEDVrUX7+W317C8QOdtgc/0M1Kt+QrAg/ZGm73Tl3SyP8MwbDKy5mTmWnl037VKYq4b2XnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606640; c=relaxed/simple;
	bh=YaTa5EYQXDSzdINFd/ks7NPUuHH58RD2nN+wFoZTwPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ELMLmf8/sXJDW+8jts8eBWWNd+/pyl91ipx4sTJOR02TFKE+y+51WZrHGpHOiNgV4uyPVaxGhnUgUQ3++E6408Df52Yv6ZDvpKuY2ufm2w357eQRbYePeiAL2ImXKdKi4kyOvB2Uf+lpZpPk7SG2bKRgB47fYF26tkuaffEtjUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=UHRlUucd; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-421572bb0f0so807925e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717606637; x=1718211437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IGlMDUqtOKm46z4y4TMNqLOnTLwAqyCpuwFcRwppXqk=;
        b=UHRlUucdnbwt5o2UJmMnG7NyIUupj5eDYTUqb26efg13mngcRM2UI0CqLSQ4F+PZND
         qUOHNnq40htyGav4O/38nWyybSye4eIrj7Cq/YkL5XOSGjWK+Jp6QwKVh2HOHxMuCctn
         Bj9/fSgx6fmS8qd6WavQ4Fol4YWi30EM7XjZTjKD6UR+rz4XH0qp+VEBqqSMAXAHGUTf
         OJbm9PwYpU/E838bPcnYhilqk14OeT8eO8yfVrvIBa1NQ2QdaLcdg13N57cNF2D/wEdi
         FRWB4ULpeGUemdE27E1/Z7MrmLSoim67Qkw7ceatWLWV5fFqxyAkeGBG1Y0jp9SZy+BW
         fb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717606637; x=1718211437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGlMDUqtOKm46z4y4TMNqLOnTLwAqyCpuwFcRwppXqk=;
        b=NRhQx5psjMdVBlH2QDBRqd2akTnh0SklB2aZeHebKsAgp0jPgw622jpKBy9huinLuy
         pBAnCUG/bsuO9l2X8HauQubOTHpJo3l4lYwf3B0dTaQ0MmV7H17/GTtdsDu3v72f4h3T
         rjdNkdw0+OjKFSjlfdueBwJZy86nkHiBAMpLWoJ+6F1u4FfWqvf+UH2WR7ngzz4l1P9+
         7bBcdOro+Q3pJT0pUuTGaB5QanURVwxN52d06cdJST+kt2nOiInD2aX3XYqOvshKWpHS
         lT6EuL4figC9kLqoIzMB3ndQjNQ5OeHMrhSF62QNcRCk4kzGktj/ShCqZcrfI+RosPvr
         ncgA==
X-Forwarded-Encrypted: i=1; AJvYcCWLitS4EYM5sY2TQlUY/zyV3bP5NDrI/AkKopWm1f53eTwuhrt2ALKFmuzBQBr+9iy4SUxCdQlxQd2jU40fE6D1k5KtYG7wImgWYw==
X-Gm-Message-State: AOJu0YyFfp/utdnSrPWTZYYXoceQgEeVPEm7MNPfmFo2e2s089lgShDC
	kbP1k3kgUDOFAUdDUhpzWK4uDKnMQyHa95FJ5jnUA5h/SaxieAk6k/5cWs9c2ak=
X-Google-Smtp-Source: AGHT+IG5eGYJW3036c5k1G65k+BEjJqLjLqkM1k8RoVbHhgDjqDRX7VAyd2HUiuSPsY6Z2uUetuWNA==
X-Received: by 2002:a05:600c:444b:b0:41a:bdaf:8c78 with SMTP id 5b1f17b1804b1-421562cf3fbmr25600265e9.8.1717606637208;
        Wed, 05 Jun 2024 09:57:17 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421580fe343sm29099175e9.6.2024.06.05.09.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:57:15 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 05 Jun 2024 18:56:53 +0200
Subject: [PATCH v3 3/5] remoteproc: qcom_q6v5_pas: Add support for SA8775p
 ADSP, CDSP and GPDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-sa8775p-iot-remoteproc-v3-3-a437355b8c7f@linaro.org>
References: <20240605-topic-sa8775p-iot-remoteproc-v3-0-a437355b8c7f@linaro.org>
In-Reply-To: <20240605-topic-sa8775p-iot-remoteproc-v3-0-a437355b8c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, kernel@quicinc.com
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4033;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=+o7mo0RvTPDu1mFo1/t2gujyCjivJn57uc48wCW/zv0=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmYJjm+3n4CRUTp6QNo0IYBTnc8M+gTNZglKZmq
 JcZMAfXSwOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZmCY5gAKCRARpy6gFHHX
 ct0TEACtWqQg2QqXzBr97oL3PyKa+C46KQCnbT5+gYo6K8uLGvXX2MoDQ4cIFQUAzTraSPJtKMP
 D7L+k7f4etyoKlz/dH8iPaYnGlwY+7+BMObdy2gzGJrFm96t+/PkHOYL8GkjR6oQQ4EWVEeR7kC
 ooltOWHaUubZPXZFrbjEvx8q5LQ8hJQGfYORgErt3ZhTyzcMP6HDT8ADcFK6YP9Lsx3t7+zfqQC
 j5BOEJ2xXv3zobBhr/X1e1+tU5/aeVj8ygk5bC9XZ5NitbVZIfZDH8yFGhWs6ty2u46nYx8KfIA
 mESAHw7ynUA/pmEW58X7sG+TeMtQHJ0ZMUgCOd6HJxXvY8OXNpfcu7obixboO45eiP74FpNDAaz
 /lRpTBPgv5mgR/tkOD67GIxnmLud+qR3Jefzp8kHx3P/6Yh7DqW7KD6cdwbkf1IPDZf4x1k+3E7
 0u47UmGEJy+K5vJ1wmeXUBOL30ZjPqssaPAIhWr1wk1t2o3pcLBxRVky96+mYyUP/PSpTZixJno
 rtjowkhMRaoia6+5W0GzEh1gzRKWUs6fsgeeF1FEFNSocoL2g3XoUxf1Ayz2H3SQSUIUfK65+e7
 +5GHAPUxRSCMOfigZNiYHcJN6+tPE2vt5VzWWHr64hkWP6p7JYAmUEaKhmaGl08s8RxVSVe1OiE
 0Yl+wLcF3ICtg6w==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Tengfei Fan <quic_tengfan@quicinc.com>

Add support for PIL loading on ADSP, CDSP0, CDSP1, GPDSP0 and GPDSP1 on
SA8775p SoCs.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 92 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 8458bcfe9e19..f4b82db00266 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -826,6 +826,23 @@ static const struct adsp_data adsp_resource_init = {
 	.ssctl_id = 0x14,
 };
 
+static const struct adsp_data sa8775p_adsp_resource = {
+	.crash_reason_smem = 423,
+	.firmware_name = "adsp.mbn",
+	.pas_id = 1,
+	.minidump_id = 5,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"lcx",
+		"lmx",
+		NULL
+	},
+	.load_state = "adsp",
+	.ssr_name = "lpass",
+	.sysmon_name = "adsp",
+	.ssctl_id = 0x14,
+};
+
 static const struct adsp_data sdm845_adsp_resource_init = {
 	.crash_reason_smem = 423,
 	.firmware_name = "adsp.mdt",
@@ -939,6 +956,42 @@ static const struct adsp_data cdsp_resource_init = {
 	.ssctl_id = 0x17,
 };
 
+static const struct adsp_data sa8775p_cdsp0_resource = {
+	.crash_reason_smem = 601,
+	.firmware_name = "cdsp0.mbn",
+	.pas_id = 18,
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
+};
+
+static const struct adsp_data sa8775p_cdsp1_resource = {
+	.crash_reason_smem = 633,
+	.firmware_name = "cdsp1.mbn",
+	.pas_id = 30,
+	.minidump_id = 20,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		"nsp",
+		NULL
+	},
+	.load_state = "nsp",
+	.ssr_name = "cdsp1",
+	.sysmon_name = "cdsp1",
+	.ssctl_id = 0x20,
+};
+
 static const struct adsp_data sdm845_cdsp_resource_init = {
 	.crash_reason_smem = 601,
 	.firmware_name = "cdsp.mdt",
@@ -1080,6 +1133,40 @@ static const struct adsp_data sm8350_cdsp_resource = {
 	.ssctl_id = 0x17,
 };
 
+static const struct adsp_data sa8775p_gpdsp0_resource = {
+	.crash_reason_smem = 640,
+	.firmware_name = "gpdsp0.mbn",
+	.pas_id = 39,
+	.minidump_id = 21,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		NULL
+	},
+	.load_state = "gpdsp0",
+	.ssr_name = "gpdsp0",
+	.sysmon_name = "gpdsp0",
+	.ssctl_id = 0x21,
+};
+
+static const struct adsp_data sa8775p_gpdsp1_resource = {
+	.crash_reason_smem = 641,
+	.firmware_name = "gpdsp1.mbn",
+	.pas_id = 40,
+	.minidump_id = 22,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		NULL
+	},
+	.load_state = "gpdsp1",
+	.ssr_name = "gpdsp1",
+	.sysmon_name = "gpdsp1",
+	.ssctl_id = 0x22,
+};
+
 static const struct adsp_data mpss_resource_init = {
 	.crash_reason_smem = 421,
 	.firmware_name = "modem.mdt",
@@ -1326,6 +1413,11 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,qcs404-adsp-pas", .data = &adsp_resource_init },
 	{ .compatible = "qcom,qcs404-cdsp-pas", .data = &cdsp_resource_init },
 	{ .compatible = "qcom,qcs404-wcss-pas", .data = &wcss_resource_init },
+	{ .compatible = "qcom,sa8775p-adsp-pas", .data = &sa8775p_adsp_resource},
+	{ .compatible = "qcom,sa8775p-cdsp0-pas", .data = &sa8775p_cdsp0_resource},
+	{ .compatible = "qcom,sa8775p-cdsp1-pas", .data = &sa8775p_cdsp1_resource},
+	{ .compatible = "qcom,sa8775p-gpdsp0-pas", .data = &sa8775p_gpdsp0_resource},
+	{ .compatible = "qcom,sa8775p-gpdsp1-pas", .data = &sa8775p_gpdsp1_resource},
 	{ .compatible = "qcom,sc7180-adsp-pas", .data = &sm8250_adsp_resource},
 	{ .compatible = "qcom,sc7180-mpss-pas", .data = &mpss_resource_init},
 	{ .compatible = "qcom,sc7280-adsp-pas", .data = &sm8350_adsp_resource},

-- 
2.43.0


