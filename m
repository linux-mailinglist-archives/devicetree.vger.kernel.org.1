Return-Path: <devicetree+bounces-231777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9CC118C2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 52D314FD26A
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E175632B9B1;
	Mon, 27 Oct 2025 21:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NR6lGFAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E132AAD4
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761600177; cv=none; b=Z4HRT1surWSzcc8FFhTfzoeH5iFBBfWLP6kMTOMNKS5G/Kvq6a5k8NSskGnjGRqO8ur/b4u8QybZ2JELX7tRX2znq5M5a5EHrqA8UD+DLN1VB6xa5MhpBeVus4nAbo+H6pVgZfqx9vpovurMUkgHEu7bPRzV3B8nx7q5rGjD7e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761600177; c=relaxed/simple;
	bh=CcpDVpY/CMTToIm66HwuHkzdfc8rOaDLuM0ugpqd34E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OTUSoFN5L1UQtVPIBFRsufpV19eEfnT1iO8OamivJ4bTB+wS9nVSLFAOZvs2ySJMBD90M6yumDctt+eCogWZKyJtIghaRh3MvF08H5k1s6csIst9ZvNTevar7xjju0PaNXlpjg05m1k+VK7CHSN/ji4wCpbaLtKbTgxT46WqZPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NR6lGFAg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RDfm332881887
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5QVqH4rj9jg
	TP2tcxWJcAaq9uJE9i2zyg79NKbM0ACc=; b=NR6lGFAgUbh+lOuG51w0uhHe6ET
	NO8knWyieIhZHPlk/jqs7km9FQLqRNRr1GMxJR8uIX9G+8scsJd98N3UPcaDVkiB
	8JZC4OwBY3+SfUxDeklXrvqK+5FGXa9IjzFCxUU1HxsdGB99dczIlXR0hUtR4PLZ
	1DYFyLy/9l5VyLquFMQqDLJzjwlaVlPTl+EvSh/HiNfhydCHTEUiC829BI3S+RzB
	RAHy5xIw0WprVZTF+CJj7Hr41uW6b2ZZWFDOfHj5QIi/tf8ABdHX24+xCrvxv60w
	4lNbOUnmqVtV9ap/+jwe2t30dPmRAtqiqbLZW9JjSw7VWLIpBkiDYDNPjJQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29uh9exy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27ee41e062cso57051535ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:22:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761600175; x=1762204975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5QVqH4rj9jgTP2tcxWJcAaq9uJE9i2zyg79NKbM0ACc=;
        b=oxmkIvKJayN08DndkYIsHIE3uQ1rHJNq0WA9Nm1anEW5bFYcqIghtWQHBzHvlOdLZB
         1Cr4oeDk7wC5CBjGqNQiie+MT6KvW2x0th16cnQOqakll4TN+8NVbecFW8e2Feubx9Ky
         R8GU95R1OKnmZwWPcl1xoEO7czHDYbFUDNIEe+9ZcAABCNBQkZ+tWHmbpMGE7UHBH8oy
         htBFxHCxpFH8L0LkQm8Mmvo5V/++vwTyMh4U/vuTzzpiNjzLsbPlbxP7z1yFWgTFMKM0
         x3zOiqZCO+dq4L0iGDnSZ9zJXHkRpH0vrSP8LmS0aKrl8d0mvSBHL8B7ApkHb9Dfeu7z
         4Dag==
X-Forwarded-Encrypted: i=1; AJvYcCVPo3LVv4EDwA4dNDptk4vUt1q9sluYiS8bmAEpGHUj2cadyjaJk08AOHNjTbvwHRIjvdIK1QSmNkJz@vger.kernel.org
X-Gm-Message-State: AOJu0YwEZ0DKkiF0FOmOWlxnaH6qeZmR+1rb8dk+MH/y6P67n2SQRRTF
	oNb2A8xHVOb738sGKHgeNCBQczyeG0njG5lbnETn4xKn9gbS4bzAWbRF4SntRwpRJ7QpuibJA6T
	0XG25W9WpwxsK435+rSTZ/naK+ZEfQoT0mkcWetfbQIPY43/WSOFTl4suCf5A8YHt
X-Gm-Gg: ASbGncu/H41nO0kLAutXs7sHAR7rP0NI+Od2rMnTdDEIXn9NLbWPO/rxsxsdp8lt/Ob
	anocVHkS1Hv5pVx5vzkcJfL7/dfcxS6jCsAZ+hXP/L4vD7GwsW7zYI8VQhVUTwQ0Coo6xK6O3Bq
	YPHER2o+vq/d50B614R0Do9bvbQVrz/yMlWoc0fKD5VYsNOdlNarNVgX/fHJgmKfpFSVMaDDeYn
	VSpNE7Z7R54kQvZVUYpkH3OR1C9I2m1mt2ffcPYyfGJ3RqPwy/LmiJZh/C3QIgwX4iZdPsZwSNQ
	VpR+4j8cHoLIMPiv2P2ICyKVDU9po9yYXzB+t3wNp71YIk2qIYWDDkgZ+pW513Nc1NtUhwAcjBV
	avk5wgONvjkSa78bLnhGAESj+UDAx4e1z1ncWOYgTgaA3QrmQKZGN49ZYRfKe3g==
X-Received: by 2002:a17:903:1a70:b0:25c:8745:4a58 with SMTP id d9443c01a7336-294cb35eb5cmr16866015ad.3.1761600174752;
        Mon, 27 Oct 2025 14:22:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGc7+BqdDpT95rzu+b5iXYfHPGKXxtw9ATrooNg2dqssQr5tcX0w86V1I2WFwTJPodpAISjOg==
X-Received: by 2002:a17:903:1a70:b0:25c:8745:4a58 with SMTP id d9443c01a7336-294cb35eb5cmr16865755ad.3.1761600174254;
        Mon, 27 Oct 2025 14:22:54 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42afdsm91073055ad.99.2025.10.27.14.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 14:22:53 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] soc: qcom: pmic_glink: Add charger PDR service path and service name to client data
Date: Mon, 27 Oct 2025 14:22:50 -0700
Message-Id: <20251027212250.3847537-3-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vlYjRvE_Vzi_61MGGLtjJ1Gs9LUuB2Sm
X-Proofpoint-GUID: vlYjRvE_Vzi_61MGGLtjJ1Gs9LUuB2Sm
X-Authority-Analysis: v=2.4 cv=QuFTHFyd c=1 sm=1 tr=0 ts=68ffe2af cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=X7TptQfD4XCScbvf-kcA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDE5NyBTYWx0ZWRfX5jJhiKDvxffZ
 Svz/30Eu9vhv6Ji/23fHuKygr453gSNIqe4dT4fV0mHd1fLr3Fn3b6F972Ccr6aI8IapHfuHRHJ
 /X+WUiuZ/7gA0hrQt28jzpZ8jig2O6V37pSwwE5E6rkJUx+lTc68ZWZeG2c3XXAptxUFiJ7d2sr
 McmgXoFI7nQSFKsNDwYzWnb8V15HbOuKvvns81d1M9Ci4AHztn+oPWS03QYB5ctNTwEn66krDiJ
 80hQkMvRQml/WXudewWM5bwC/fAWbCvbW4JGZXVW+Lda0/YO9R6qMKKn+HhiuAOKk8vLYl1gq2U
 qEoRfXIsrrXYiSWvpZyHFR47hEpSl0NHC6mYvzPdhuwfYL8mZYvA1Mbxknu0wSvb3/MY16ImPwl
 Sf22cuBydHOunYog7Qx2haCc5XAKBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270197

Currently, the charger PD service path and service name are hard coded
however these paths are not guaranteed to be the same between PMICs. For
example, on Kaanapali and Glymur, Charger FW runs on SOCCP(another subsystem)
which does not have any specific charger PDs defined.

Define charger PDR service path and service name as client data so that
each PMIC generation can properly define these paths.

While at it, add the qcom,kaanapali-pmic-glink and
qcom,glymur-pmic-glink compatible strings.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink.c | 66 ++++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
index c0a4be5df926..aa5ba9a0285e 100644
--- a/drivers/soc/qcom/pmic_glink.c
+++ b/drivers/soc/qcom/pmic_glink.c
@@ -23,13 +23,19 @@ enum {
 	PMIC_GLINK_CLIENT_UCSI,
 };
 
+struct pmic_glink_data {
+	unsigned long	client_mask;
+	char		*charger_pdr_service_name;
+	char		*charger_pdr_service_path;
+};
+
 struct pmic_glink {
 	struct device *dev;
 	struct pdr_handle *pdr;
 
 	struct rpmsg_endpoint *ept;
 
-	unsigned long client_mask;
+	const struct pmic_glink_data *data;
 
 	struct auxiliary_device altmode_aux;
 	struct auxiliary_device ps_aux;
@@ -285,7 +291,6 @@ static struct rpmsg_driver pmic_glink_rpmsg_driver = {
 
 static int pmic_glink_probe(struct platform_device *pdev)
 {
-	const unsigned long *match_data;
 	struct pdr_service *service;
 	struct pmic_glink *pg;
 	int ret;
@@ -302,12 +307,10 @@ static int pmic_glink_probe(struct platform_device *pdev)
 	spin_lock_init(&pg->client_lock);
 	mutex_init(&pg->state_lock);
 
-	match_data = (unsigned long *)of_device_get_match_data(&pdev->dev);
-	if (!match_data)
+	pg->data = of_device_get_match_data(&pdev->dev);
+	if (!pg->data)
 		return -EINVAL;
 
-	pg->client_mask = *match_data;
-
 	pg->pdr = pdr_handle_alloc(pmic_glink_pdr_callback, pg);
 	if (IS_ERR(pg->pdr)) {
 		ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->pdr),
@@ -315,27 +318,30 @@ static int pmic_glink_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->ucsi_aux, "ucsi");
 		if (ret)
 			goto out_release_pdr_handle;
 	}
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->altmode_aux, "altmode");
 		if (ret)
 			goto out_release_ucsi_aux;
 	}
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->ps_aux, "power-supply");
 		if (ret)
 			goto out_release_altmode_aux;
 	}
 
-	service = pdr_add_lookup(pg->pdr, "tms/servreg", "msm/adsp/charger_pd");
-	if (IS_ERR(service)) {
-		ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
-				    "failed adding pdr lookup for charger_pd\n");
-		goto out_release_aux_devices;
+	if (pg->data->charger_pdr_service_name && pg->data->charger_pdr_service_path) {
+		service = pdr_add_lookup(pg->pdr, pg->data->charger_pdr_service_name,
+					 pg->data->charger_pdr_service_path);
+		if (IS_ERR(service)) {
+			ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
+					    "failed adding pdr lookup for charger_pd\n");
+			goto out_release_aux_devices;
+		}
 	}
 
 	mutex_lock(&__pmic_glink_lock);
@@ -345,13 +351,13 @@ static int pmic_glink_probe(struct platform_device *pdev)
 	return 0;
 
 out_release_aux_devices:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
 		pmic_glink_del_aux_device(pg, &pg->ps_aux);
 out_release_altmode_aux:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
 		pmic_glink_del_aux_device(pg, &pg->altmode_aux);
 out_release_ucsi_aux:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
 		pmic_glink_del_aux_device(pg, &pg->ucsi_aux);
 out_release_pdr_handle:
 	pdr_handle_release(pg->pdr);
@@ -365,23 +371,35 @@ static void pmic_glink_remove(struct platform_device *pdev)
 
 	pdr_handle_release(pg->pdr);
 
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
 		pmic_glink_del_aux_device(pg, &pg->ps_aux);
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
 		pmic_glink_del_aux_device(pg, &pg->altmode_aux);
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
 		pmic_glink_del_aux_device(pg, &pg->ucsi_aux);
 
 	guard(mutex)(&__pmic_glink_lock);
 	__pmic_glink = NULL;
 }
 
-static const unsigned long pmic_glink_sm8450_client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
-							   BIT(PMIC_GLINK_CLIENT_ALTMODE) |
-							   BIT(PMIC_GLINK_CLIENT_UCSI);
+static const struct pmic_glink_data pmic_glink_sm8450_data = {
+	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
+		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
+		       BIT(PMIC_GLINK_CLIENT_UCSI),
+	.charger_pdr_service_name = "tms/servreg",
+	.charger_pdr_service_path = "msm/adsp/charger_pd",
+};
+
+static const struct pmic_glink_data pmic_glink_kaanapali_data = {
+	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
+		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
+		       BIT(PMIC_GLINK_CLIENT_UCSI),
+};
 
 static const struct of_device_id pmic_glink_of_match[] = {
-	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_client_mask },
+	{ .compatible = "qcom,glymur-pmic-glink", .data = &pmic_glink_kaanapali_data },
+	{ .compatible = "qcom,kaanapali-pmic-glink", .data = &pmic_glink_kaanapali_data },
+	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, pmic_glink_of_match);
-- 
2.34.1


