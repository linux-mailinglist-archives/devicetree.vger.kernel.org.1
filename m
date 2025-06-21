Return-Path: <devicetree+bounces-188112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FB6AE2C14
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 22:00:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 020BD3BE264
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 19:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558A627145B;
	Sat, 21 Jun 2025 19:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qh68WRGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3254270EDF
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750535785; cv=none; b=Az8mak4GbMUZYyZATtT1buvq1bjrA6CaKrxhrV4ZVcaewfDHmlC4ICXSNRv96VR8LXYbyxzfWFqPQTrLqi2U9SoMCo0UV7y2pQl4UA65GD2LINUNWuXHyxt4qpojnXVzcEDO7YI/njG9zdh6CnWBXqR6Ox/7IR4X9RAuGz5E6XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750535785; c=relaxed/simple;
	bh=21bPuONwZiRIZFNxfegj7j0cvEH9t3yTZXRBj64vmOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hBn4rmDt9Q8DuBrq6BuuIaGzBJTqW7nksdbw+tjFgRT9bJFvOZiZAnm7HdtnunZDVCwRmzEr5uVTbrnunlvGDUYd/FkaKvRbzBp4aKzMR3KjlpOJoCe65DvZ2Hj4uJq5GW9WhpuEgjNUKLK62VnakhujX82jvwurRfbEdj269IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qh68WRGY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55LIoKnP003932
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:56:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUVe7ITUPqyqYVHeOTH14ov/xBRaTDTuVazF2UDYYD0=; b=Qh68WRGYFOzGEb+0
	BnSqJfPWgfOQaYguqGUGi1PydfNm1gigS7ihX6Iqex+GIUIWf7QX0DqE8zvSiKnT
	Tzh6nStYjRIJWQD+F9tQKRzZNT/IXEGqKVTaejWFuKxVI3WNudWooV8YduifxTLF
	uGtx3Q0iHTll+df4SPMJvoCP1r8NCqx4XQkLuj4ZWmDsYrNtqPZVmqvQ1sYHuGUG
	y1hBfjnPd2UnD/n5o1ua5Mvat25r9KWg4sGgqdwBuAI30WqDT2EB5QsaPFcbC4S1
	rsfDmgms5mUzrQ6EoBkD7zjJagjBfOcaGCXEkyhA+ikVvjDVR4OjDEQFDRmeZbHN
	KQX7XA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dpqtrxnh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 19:56:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d38c5c3130so493242785a.1
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 12:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750535781; x=1751140581;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XUVe7ITUPqyqYVHeOTH14ov/xBRaTDTuVazF2UDYYD0=;
        b=ZfuY2hN8VgGE02bCFAfZLeARaxhOYRrLp2vsKBd6W3iUoI5bB0JfdPRRvtxcVbWjMw
         w2jnn9fkDOBnPEsuqa4z5xzjSpGNP/oZmQTxL+dcvFDT3A9j5ma29m5DDQGZVrDqkXnx
         rfugZoC1n3RpX+FzP2GXnnhJB7wI9X08Y30s+Yh3MM+elFBN65Wg0hW/Pfeno6Ew+Ozq
         9JVbkpA+TV9pLPoGaJy7eYg2vKNLnIEeWSLmzayz8T3Xu2hNiTTffQYdPssYn/sWWe6S
         KEGKyeDJrX/Fvpd7IKxtBgkTPnltEWWoxH16RZR4da7SUJt0QyjSRS+qe1MoJaXHa80i
         YihQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrQWPr3zkSx4t5qM6zimDU38ZCPrnyg5KuPqufJeB3o2l8kQrRKnaW/jJPmM61jiynCZxN+PBUzguC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf6s4QwOODJ+EANG32K5i2MHYQdn3SZSK+5aeUe9EKbZgq2H8H
	kvh1V52NMnkR05ll158GzXp5yR5wJeQXJd/hKq1wn/uJDrhljgYJZNyzE+6uDfnP4V+OK2i1R5e
	9XuNktdTjaeogF2zpc5TgC0FVrtGoNN8De9AaWWFo4D/tniq9AXlcFQ1NuSmUFm/d
X-Gm-Gg: ASbGncuE8bdIsd96KJMFNDZq0PxBuanbOAHgFlByQWVZhuntpVYA+oFQvxInL6yuo66
	T22yf8LImYfftLx63jrhhKOApvDgWyEjFb50Iope9uw1it2f6/jyh5zsShruDsRWn4zhg7UsKsN
	6b0V8TbqE/9lOfikPSIGqIjifKytGGRhv6DTXWT+1w+fxSl0Pdb8TCfxQDTCIQrRlK26aduZmE2
	nCgSeLFF7+tTAoPVrLDt1MgSvTVVk/bKUgXWu2NnPgDGGbi8lmAL+rehb63IGWJyzBr1V5BGogB
	FTaSwlZLNTGHGFhPye2H7JJDFts9X9otiCZQIYxZc5VzPnh7tNYv78dFKN1+gCwai94RuUWn+ti
	rWJrBA436woTfmdDBD0r2mixs+P7iDeMybM4=
X-Received: by 2002:a05:620a:1792:b0:7d3:ad4f:ce0d with SMTP id af79cd13be357-7d3f9939029mr1228159785a.47.1750535781289;
        Sat, 21 Jun 2025 12:56:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEczp0MIcOxWZp2evH4mmB+hJLicRclZ6gwYKbDPv5vCTz7lCxR1k8cqWFdZUfuUURN6+8D6A==
X-Received: by 2002:a05:620a:1792:b0:7d3:ad4f:ce0d with SMTP id af79cd13be357-7d3f9939029mr1228156785a.47.1750535780843;
        Sat, 21 Jun 2025 12:56:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c3db9sm777299e87.179.2025.06.21.12.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 12:56:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 22:56:10 +0300
Subject: [PATCH v2 1/4] firmware: qcom: scm: allow specifying quirks for
 QSEECOM implementations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250621-more-qseecom-v2-1-6e8f635640c5@oss.qualcomm.com>
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
In-Reply-To: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4151;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=21bPuONwZiRIZFNxfegj7j0cvEH9t3yTZXRBj64vmOs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoVw5hbhGFspHA26nzXWOV4TXa6iy2zuIB1+khU
 ktHc4UyitmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFcOYQAKCRCLPIo+Aiko
 1UAPCACZAdY8K39NMIStkMZ1gjcotQNyiawh6SOFVEfo0h3PrR7JQHtGBG5tS/IoZ9PkZFc18DG
 UVdLBsg0fEG46ox5IAKmwiZaU3nb5EoCRYWOFuaS8jNxh9UcYF4bPxpmHcKpkUJnZmcM46+ggxA
 4dCAle8tUJQQp2WzkvWjrUNMNVrcKKrb5wgT3dmu/bLbeTClx9ekyRPYz+E7/6cA3quDYi5cn3y
 s+se97uLfpuEPvoQsAYDi27IN+gCjuTNyDLYJnzROpEb/TevKJYlM8wNY4mNxF3qRlj46GxYIiJ
 LZfmiWPBbW2fpPwHY1IDTpwj+L9a7DeVXLQYsarvQowTXcpO
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDEyNyBTYWx0ZWRfX0wELt8Erilpg
 m7lji2DKHx/4QxuqRDoi9M+qEfdrhL4GuCtjc6sls6CcGQzA+2rndEdZJi/lVB+5TIB1IGWafor
 VzALfnV5fgF09GtRP7XL91Rbv9qAkMUISMpyX/+r/SUfilXEcbbqfetY7kuiwITro8pMTHteS6u
 kCX9TIfmJg8imt8P3a0Hi2kfFPDU9c8/UAIV110i60spkP9k811LOMo9yIQDnl/tBb4Kgpty5QH
 sbRU8bigF9dLVf609g1Cs+lMuP5Oq+xTOUbL3BLMrF6E2oEcBs+dsEt9AXQarev4P+JmKVlbTeH
 YJiN+2x+lm2pOO4X1VfOqe9zLQ+UnvLzCLwfS6SOEij0Dkuhr9cXA8VFdVLALwd6LY0E0FIP6Y7
 XNMSJMn38+Il1frJeqKqSW9YFaDzJy5VLVz15UDbWDh9QKKdImZyMF8VGhLKPZesBXfXBA6O
X-Proofpoint-ORIG-GUID: 6oMbjVtRoM45RE61o75nu4dxtiRtQiRQ
X-Authority-Analysis: v=2.4 cv=cbPSrmDM c=1 sm=1 tr=0 ts=68570e66 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=wTlJEWXFZO-q-0qxHBMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 6oMbjVtRoM45RE61o75nu4dxtiRtQiRQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_06,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506210127

Some of QSEECOM implementations might need additional quirks (e.g. some
of the platforms don't (yet) support read-write UEFI variables access).
Pass the quirks to the QSEECOM driver and down to individual app
drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_qseecom.c |  6 +++++-
 drivers/firmware/qcom/qcom_scm.c     | 28 ++++++++++++++--------------
 2 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_qseecom.c b/drivers/firmware/qcom/qcom_qseecom.c
index 731e6d5719f9e3e9e698f5de0117540f51ebab63..aab0d61f0420c4f3d6c1a73e384195b9513f3ef9 100644
--- a/drivers/firmware/qcom/qcom_qseecom.c
+++ b/drivers/firmware/qcom/qcom_qseecom.c
@@ -36,6 +36,7 @@ static void qseecom_client_remove(void *data)
 }
 
 static int qseecom_client_register(struct platform_device *qseecom_dev,
+				   void *data,
 				   const struct qseecom_app_desc *desc)
 {
 	struct qseecom_client *client;
@@ -56,6 +57,7 @@ static int qseecom_client_register(struct platform_device *qseecom_dev,
 
 	client->aux_dev.name = desc->dev_name;
 	client->aux_dev.dev.parent = &qseecom_dev->dev;
+	client->aux_dev.dev.platform_data = data;
 	client->aux_dev.dev.release = qseecom_client_release;
 	client->app_id = app_id;
 
@@ -89,12 +91,14 @@ static const struct qseecom_app_desc qcom_qseecom_apps[] = {
 
 static int qcom_qseecom_probe(struct platform_device *qseecom_dev)
 {
+	void *data = dev_get_platdata(&qseecom_dev->dev);
 	int ret;
 	int i;
 
 	/* Set up client devices for each base application */
 	for (i = 0; i < ARRAY_SIZE(qcom_qseecom_apps); i++) {
-		ret = qseecom_client_register(qseecom_dev, &qcom_qseecom_apps[i]);
+		ret = qseecom_client_register(qseecom_dev, data,
+					      &qcom_qseecom_apps[i]);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index f63b716be5b027550ae3a987e784f0814ea6d678..fa7a3c4c8f006599dbf6deec0a060e1158c91586 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2008,10 +2008,10 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ }
 };
 
-static bool qcom_scm_qseecom_machine_is_allowed(void)
+static bool qcom_scm_qseecom_machine_is_allowed(unsigned long *quirks)
 {
+	const struct of_device_id *match;
 	struct device_node *np;
-	bool match;
 
 	np = of_find_node_by_path("/");
 	if (!np)
@@ -2020,6 +2020,11 @@ static bool qcom_scm_qseecom_machine_is_allowed(void)
 	match = of_match_node(qcom_scm_qseecom_allowlist, np);
 	of_node_put(np);
 
+	if (match && match->data)
+		memcpy(quirks, match->data, sizeof(*quirks));
+	else
+		*quirks = 0;
+
 	return match;
 }
 
@@ -2034,6 +2039,7 @@ static void qcom_scm_qseecom_free(void *data)
 static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 {
 	struct platform_device *qseecom_dev;
+	unsigned long quirks;
 	u32 version;
 	int ret;
 
@@ -2054,7 +2060,7 @@ static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 
 	dev_info(scm->dev, "qseecom: found qseecom with version 0x%x\n", version);
 
-	if (!qcom_scm_qseecom_machine_is_allowed()) {
+	if (!qcom_scm_qseecom_machine_is_allowed(&quirks)) {
 		dev_info(scm->dev, "qseecom: untested machine, skipping\n");
 		return 0;
 	}
@@ -2063,17 +2069,11 @@ static int qcom_scm_qseecom_init(struct qcom_scm *scm)
 	 * Set up QSEECOM interface device. All application clients will be
 	 * set up and managed by the corresponding driver for it.
 	 */
-	qseecom_dev = platform_device_alloc("qcom_qseecom", -1);
-	if (!qseecom_dev)
-		return -ENOMEM;
-
-	qseecom_dev->dev.parent = scm->dev;
-
-	ret = platform_device_add(qseecom_dev);
-	if (ret) {
-		platform_device_put(qseecom_dev);
-		return ret;
-	}
+	qseecom_dev = platform_device_register_data(scm->dev,
+						    "qcom_qseecom", -1,
+						    &quirks, sizeof(quirks));
+	if (IS_ERR(qseecom_dev))
+		return PTR_ERR(qseecom_dev);
 
 	return devm_add_action_or_reset(scm->dev, qcom_scm_qseecom_free, qseecom_dev);
 }

-- 
2.39.5


