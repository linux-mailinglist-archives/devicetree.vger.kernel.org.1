Return-Path: <devicetree+bounces-189214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFCDAE729F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:55:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1343117053C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1BE25E834;
	Tue, 24 Jun 2025 22:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GZXI4aAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E83325E44D
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805623; cv=none; b=pUKL0XAZJ2xqkER+YwxCL+NfiQcxg/Q/Gsbj7YE+7p3mf25res9i24pVenIuiRgJPQb/Nq2bpc52DFc8m4Tj30C79fwtaUBnHWoFDWI21cZ/ImT+L8WtBzPPYfYAuUjj6tTmSGgABC60uEUs1mp8by/dR5EN1yV5lT+XvydNQds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805623; c=relaxed/simple;
	bh=fzBC2xoL+zqcCdvdFp6QOzxB8vCAph7pd10rAyAoyFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UsXbEujh09YRPM9vNgcwSPsGEPp+UOsX6I7Yr1OsylDe5AgzLqt5nJtRfDWvbh/6b4cpxt+/KoZQBAXCWmhCo2ikWiaydQ3xAHOt9QtcdYAbar75oTFGTMkZhwYC/LkXUGs4rbeL0My2Itm0OjDMMe/qi0jEDYAI08rVsgNSZZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GZXI4aAg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OMfNUr021624
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8NIM9T6hNdyQApd2V3NHJVIC0mrVXV0ISFYbKqPxryc=; b=GZXI4aAgC5zdYbkB
	RWawKfyY6Gszevvpx/HE1AhxdO1l3b1aQvRiwdVVQH+cdZtvNoh7mEy24yq16o7c
	IOOSt6yDbJcCw/Lc3ZbOeCJ1a/OtGzSWyxDyhmarWdFHPXJd98uArZUm6JcSJHfy
	+ZxufvRbZHJltHsoWkPK84LPlboRVv0PqTI4i3GQoVTb5RgssSmWk3EJYLR/TXUw
	JU/zTRfNKDp/2sdn/xJhcKtahfsOIzDCuarTuWOqRphDxt8h1lvLd3MdX4SVyXRl
	3xxXxi5pFLnAXnRQaD7+pX4oeAykFg7bGjJFIjHYOv24iQTyLQGkNB52dexFJqI1
	JI5fsg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpx32q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb2910dd04so17465166d6.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805619; x=1751410419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8NIM9T6hNdyQApd2V3NHJVIC0mrVXV0ISFYbKqPxryc=;
        b=wvwfXVzWqrJCiizIqDDoqvzbmx0aj2vynSC1H1iUq+DvTWLbtYlgMlvoOWV5kbP6TC
         d/qgIayumUWi+2OCSnqD2C/LCFBi5CecgfPbTuNuwdjhiG9uydwM+qftczu74aG9oNtd
         0V/cw6+SH2L7q1hOVrX8tWzAvOBz/KUEEROvITzfXURa18HTvaOIUfW0GLuopPz8Shfu
         egLLCM8J9PJqXumPWYDaJA7kf4uA+QmyKLub+HVytuzsEhKkAplQKVYlmpahY1ExDK8t
         lfGot2GrOotR86m7Nn2HOVI5Ks4GMdxDWxf8wnPwd6p220oDWVpOpAGoG2ncUFkT01yh
         Bigw==
X-Forwarded-Encrypted: i=1; AJvYcCWYmvQV+q98s2wRN76Ri+quFuEmJzAHwPcea2e5X/ttZMB0GRc0qoPw8o5vQ5gqAxxlB01h/gMiKRmX@vger.kernel.org
X-Gm-Message-State: AOJu0YzV3hUIcMlpAxURBcL4tAYMeCr4z6uAywaOg0MCz+xEyZkUiyHh
	+i/hUJDSQRdXfl2Nw9mv/k+9iCzdSNVw4oNe9wD9YxBIRyfHkGCCtpg94iZkG/N7pL5Cd076Xt/
	9GUAvfvCXB/g7cHFBotNymMoe+leT4xrXVY9joJpIh/bEiJGWxKihz6TgAo1AddpJ
X-Gm-Gg: ASbGncv3j73M9XxXZJCG1Nwm1OlUytXRn5E3qVThu37i+oPWfcXwilgZtXU73QsFQxZ
	40OXKRwevkdVdUlQl155NtpNjj/utKcCAvItP7nVf2ZrT3ESEJAwJkC5spseuy61wDjKjmSo7c8
	Zw9uZjtaGdiY6Sve4/l4NUK2jwoP40ASDfpIEVgBwdp0M7Sxpno9vKpT0kLMv7RyuK7lf68VZeB
	KqqKoJtpU2J9vnf6LacNPSNrtlTPxGOruWIELkN1IjvtsvgYPy20YWq0CvENDm2EihMUmUz3GIF
	YA2BriZ4SH/DvWbqRmxMeCW/4LMzqHlvWLuhteNZ+Ds/O6sqNC4mA+sjaUPrq6PiCg4wIB+TvD1
	Xu2zqoW4DkTMcBMO6XV5o7MikrF8nVng2ApQ=
X-Received: by 2002:a05:620a:489a:b0:7c5:4463:29a3 with SMTP id af79cd13be357-7d4296eaeb3mr136491485a.25.1750805619194;
        Tue, 24 Jun 2025 15:53:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEArHTt7L3yra76vcOX9pHi5y0XwXAgplfEwKMaA+D1SyjqM/8XRnYIHLsA2KpxGeCCOQTelQ==
X-Received: by 2002:a05:620a:489a:b0:7c5:4463:29a3 with SMTP id af79cd13be357-7d4296eaeb3mr136488985a.25.1750805618744;
        Tue, 24 Jun 2025 15:53:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f5980bsm17843851fa.7.2025.06.24.15.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 15:53:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 01:53:26 +0300
Subject: [PATCH v4 7/8] firmware: qcom: scm: rework QSEECOM allowlist
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-more-qseecom-v4-7-aacca9306cee@oss.qualcomm.com>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
In-Reply-To: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4931;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=cWoHO0MsVGuzMZsWaCgpVEQsk3VIUIcF/KJvccYMdzs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoWyxjQwD68t32h8d/QHOesm1x5z3pruiLn7HRU
 w9Ub4Us1bCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFssYwAKCRCLPIo+Aiko
 1RH2B/98/HW2wQwAkPEHQXtfRUHSuLSmvcQvdNliBhX9EGiDR26KoItjdnPz353c2hroFgqzkyt
 5MlUIJNAARicuZ17oB8HsJAs1Fj6/kHYJil96po9yxEFUGO7CJgkVZRuDY7/RCN1mlcWlhaK53N
 RANcoWMs068o6HEAQblUSEMpUgB8kgxm0C/TsClgmyO9Z0ridT6n/pxmSDzhRhxPSFG5wwkpcyL
 mW5abuK1SGFEoUXfafScbF6uJ9/jkWQDpFWBFj1NNFrNNrfDDxhpMNJ/RkG6m7O1qDTmbQTetWy
 HVzEhf+q9fJ+pJl9Cx/AN1hUGGAfCt06PlpPPAcH/pCuW4qY
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685b2c74 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=-DwM1zgTEUuOfulMvEAA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MSBTYWx0ZWRfX0QzWJ28J2vtD
 7H13146L3JvkW48EmNvnOhOKntJgTPrwaStwWLpr6D5OhFPzuDL4tlGinRDN7cQrm+qTfOFFZaK
 rk4zDRoagoMBt3j7SPrVJwxzSLGbmCuXhWGcCAYoackxvZJS26vLVEYwdQHQi0LSGGxhGzsnoQD
 KI3G4fqW85c9f0nR6Cb8usOYOgUbjrh71MeTC76G9AJjEWEnleO6nIRc9KHEUMCOhyeRIHeEiSb
 nUNEV4KU9OIH14w+5GamUgnBl/jAHXz8/3GcFQd7vXujnRStM/dhgqqGS9IQeO6Gxj69qvKSI6H
 okrj2lawn9ld9gunJgJWoSywgdzQ/Reg0UIiQxP8XV+tayWRggOk1fWycAN2yK5egDoMp5TH8Cx
 YkaHkN0aAN7YD7+MoRxdAzo18hLQMgHHChKKWrlrIFpqHMDREhkjHCKg3TJ7DFU9wr188+GI
X-Proofpoint-ORIG-GUID: nZKeZeojDY9ILCDr0wgnxIILQmcAOboK
X-Proofpoint-GUID: nZKeZeojDY9ILCDr0wgnxIILQmcAOboK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240181

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Listing individual machines in qcom_scm_qseecom_allowlist doesn't scale.
Allow it to function as allow and disallow list at the same time by the
means of the match->data and list the SoC families instead of devices.

In case a particular device has buggy or incompatible firmware user
still can disable QSEECOM by specifying qcom_scm.qseecom=off kernel
param and (in the longer term) adding machine-specific entry to the
qcom_scm_qseecom_allowlist table.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c           | 49 ++++++++++++++----------------
 include/linux/firmware/qcom/qcom_qseecom.h |  1 +
 2 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 5bf59eba2a863ba16e59df7fa2de1c50b0a218d0..025f834e95b537b76d41b59b63871a4ce5bed717 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -1981,6 +1981,7 @@ int qcom_scm_qseecom_app_send(u32 app_id, void *req, size_t req_size,
 }
 EXPORT_SYMBOL_GPL(qcom_scm_qseecom_app_send);
 
+static unsigned long qcom_qseecom_disable = QCOM_QSEECOM_QUIRK_DISABLE;
 static unsigned long qcom_qseecom_ro_uefi = QCOM_QSEECOM_QUIRK_RO_UEFIVARS;
 
 static char *qseecom = "auto";
@@ -1989,32 +1990,20 @@ module_param(qseecom, charp, 0);
 
 /*
  * We do not yet support re-entrant calls via the qseecom interface. To prevent
- * any potential issues with this, only allow validated machines for now. Users
+ * any potential issues with this, only allow validated platforms for now. Users
  * still can manually enable or disable it via the qcom_scm.qseecom modparam.
+ *
+ * To disable QSEECOM for a particular machine, add compatible entry and set
+ * data to &qcom_qseecom_disable.
  */
 static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
-	{ .compatible = "asus,vivobook-s15" },
-	{ .compatible = "asus,zenbook-a14-ux3407qa" },
-	{ .compatible = "asus,zenbook-a14-ux3407ra" },
-	{ .compatible = "dell,xps13-9345" },
-	{ .compatible = "hp,elitebook-ultra-g1q" },
-	{ .compatible = "hp,omnibook-x14" },
-	{ .compatible = "huawei,gaokun3" },
-	{ .compatible = "lenovo,flex-5g" },
-	{ .compatible = "lenovo,thinkpad-t14s" },
-	{ .compatible = "lenovo,thinkpad-x13s", },
 	{ .compatible = "lenovo,yoga-c630", .data = &qcom_qseecom_ro_uefi, },
-	{ .compatible = "lenovo,yoga-slim7x" },
-	{ .compatible = "microsoft,arcata", },
-	{ .compatible = "microsoft,blackrock" },
-	{ .compatible = "microsoft,romulus13", },
-	{ .compatible = "microsoft,romulus15", },
-	{ .compatible = "qcom,sc8180x-primus" },
+	{ .compatible = "qcom,sc8180x", },
+	{ .compatible = "qcom,sc8280xp", },
 	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },
-	{ .compatible = "qcom,x1e001de-devkit" },
-	{ .compatible = "qcom,x1e80100-crd" },
-	{ .compatible = "qcom,x1e80100-qcp" },
-	{ .compatible = "qcom,x1p42100-crd" },
+	{ .compatible = "qcom,sdm845", .data = &qcom_qseecom_disable, },
+	{ .compatible = "qcom,x1e80100", },
+	{ .compatible = "qcom,x1p42100", },
 	{ }
 };
 
@@ -2046,12 +2035,22 @@ static bool qcom_scm_qseecom_machine_is_allowed(struct device *scm_dev,
 	match = of_match_node(qcom_scm_qseecom_allowlist, np);
 	of_node_put(np);
 
-	if (match && match->data)
+	if (!match) {
+		dev_info(scm_dev, "qseecom: untested machine, skipping\n");
+		return false;
+	}
+
+	if (match->data)
 		*quirks = *(unsigned long *)(match->data);
 	else
 		*quirks = 0;
 
-	return match;
+	if (*quirks & QCOM_QSEECOM_QUIRK_DISABLE) {
+		dev_info(scm_dev, "qseecom: disabled by the quirk\n");
+		return false;
+	}
+
+	return true;
 }
 
 static void qcom_scm_qseecom_free(void *data)
@@ -2086,10 +2085,8 @@ static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 
 	dev_info(scm->dev, "qseecom: found qseecom with version 0x%x\n", version);
 
-	if (!qcom_scm_qseecom_machine_is_allowed(scm->dev, &quirks)) {
-		dev_info(scm->dev, "qseecom: untested machine, skipping\n");
+	if (!qcom_scm_qseecom_machine_is_allowed(scm->dev, &quirks))
 		return 0;
-	}
 
 	/*
 	 * Set up QSEECOM interface device. All application clients will be
diff --git a/include/linux/firmware/qcom/qcom_qseecom.h b/include/linux/firmware/qcom/qcom_qseecom.h
index 8d6d660e854fdb0fabbef10ab5ee6ff23ad79826..d48044ece20cc9ebac3357a642dc671c349d4343 100644
--- a/include/linux/firmware/qcom/qcom_qseecom.h
+++ b/include/linux/firmware/qcom/qcom_qseecom.h
@@ -52,5 +52,6 @@ static inline int qcom_qseecom_app_send(struct qseecom_client *client,
 }
 
 #define QCOM_QSEECOM_QUIRK_RO_UEFIVARS		BIT(0)
+#define QCOM_QSEECOM_QUIRK_DISABLE		BIT(1)
 
 #endif /* __QCOM_QSEECOM_H */

-- 
2.39.5


