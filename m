Return-Path: <devicetree+bounces-247247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D17BCC61D4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A80B30601AD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 05:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 809DE2C0F8F;
	Wed, 17 Dec 2025 05:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jVIA5Em8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cWfQ9WTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11112BE7B2
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765951022; cv=none; b=tx7wv8eJgaRSsIvjVkKpnREfh+c5YF7F4AmBx6F2k6h1HqjzD40tUXS7truI7VPNJxGdgMg6JYJAuz2viWO/laNEZgpu2vExq9ump7ay6h3LodEekMzFW0OgX4iLWQ30NWzBgZDs8Lw4pvLf8EUQIBy7c96Cicdj8lW3AY8aa/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765951022; c=relaxed/simple;
	bh=8Vbqll0QwNYxbBm6ysjRNYuz16IcW5WI3ZZ2Fv91yq8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MDv3EsuTjgt29mgfwkCfbXWWoD1+PglR2DQYbSaVLhfmhU+6ymJaNkwJwMvMvW/7mhiYEKOsPVQTvpW0ngvgwKW3CghdZZpqcfyEWdUeSVRQz+KWx54nMh1AvVrioEFAxZaFy3Sc9T5+Z+sOLoBrFYGS53bs86vbm2wAPm4Zx60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jVIA5Em8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cWfQ9WTD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3F4Jl2024922
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CX7M1+NGmbQ
	DNXLJxOsHzhvk67PnXvKhGYQPuDvt1xQ=; b=jVIA5Em8v5HPN7L6b5M76tJoKCe
	p1Zc2CbWVTJWIWD444pneEpDrPwNuS5bQAkr7hBP3sRTS25PYiyxcHCU9kAGna43
	eBlnZLKaBLYeveWZsF+uGdS3CNQhT+2ltpZToLDKmD71BnJX0bKGn8DDI0cV85OV
	jY1SzCXKWAuqsJDKFGu0YwY1xI+WGS3XYJ34jRgQgZ9ThDNmMcoTe6Atyrjdj6/3
	iKsdyiz711wOnpLlWPpeAGN8vKY+18ZPdeNxqBShrhEmG5ltA/iEUAYSbbLd2TWB
	ABJxeh42HDTKWgq5IN9iWmueajKlBJrPdXvejgihivRqpBUbE0c2JT2ZC7w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3j39grqb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c0c7e0a8ac1so8797019a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765951019; x=1766555819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CX7M1+NGmbQDNXLJxOsHzhvk67PnXvKhGYQPuDvt1xQ=;
        b=cWfQ9WTD1H13UyBoagQOugpimPsPccHH3aAcPZeJr1I/nLDXdZbXA2TYzoub+kZhyX
         Yuu3upTqCObk7BhPDEXGxxD60hNr08vLxWJioP9U/4MP8qDpU59K18Nx2RWc/2KoM8V9
         lYMeBEAJFMEw+5ePzMvfCuvg0JV2Y/ZyuUSg6JLqyYm5XagUONXBey6BxeFv4ofY8FYp
         +BbaLdNIIOWEMvyn8gRWw9Vqh041SsdAhDPUcBQNKeKxelHM+ISK6cMn5UvqOZcBGdqs
         87lBaDJHd34Ja7uJ57xJIm7rQ9VX09fIH4NlnzL4BSwV9cFqeeKV0JcqHU3QMXAW+Lo5
         MWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765951019; x=1766555819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CX7M1+NGmbQDNXLJxOsHzhvk67PnXvKhGYQPuDvt1xQ=;
        b=LeEjBpGCM4yo+70j8Ln3iNo4cpbS8LqYP2J5dHJH2DZrOh0pDVWhCW56Ee0wgJayu0
         PRO8fddfbALAf3eGM2B2gkeHGL969gnklQbMGqdvjlux+DD/q/aCoTc5Jqa3WOkDGf7o
         wIXGP1pgn3h38ErSgHoWmE3QKJ1NiXLAfU9855RNVzcHqg4z6+ULU7mdIIuSWu4b+/3b
         kjbuXf9cZKWTywDodAsD2zwKV3yMyxlkg+zGTpc9DYLIwRrAbTdOUhIosGKgj1fm6D9M
         XZ+X4vPCtaFH9BwHkyJ27i5V3a2R//J3OP4GtWmLxcK0CtQiL/F1idE4By1EF1alGnpV
         N7vA==
X-Forwarded-Encrypted: i=1; AJvYcCU2m/K6gAiZlDCVYAf5J26qKXiyKVa3/SLmtzbEdxedzBb8rLBNgk8cwiliolkeB4xa6aQ159fO7AHM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0gF/wqi0JCk38i5m0qei2aozax87aBPPbGkgZ9ycRuUqSJ5Ou
	LZlHNaFE0Ie2mGVo0HDlCp1XVFLaInZxjYUGUq6dKK0LW2PThvKM9cXJovI2THZXoqj1nQ1Fi9N
	zluW0M5NhFxb1llJlVDALhwGM23flrLMzbHGewaKhadMSzsFdnKdNpslLNrINSAIb
X-Gm-Gg: AY/fxX4jWGScm0ziufrDq0CTT2pjHS6Ycn9rWnThR/ZvJLb7xTFriRm6OhXaDEa8qZ8
	/AXs1EC/9HFQHfrUaeJ72EQ0VxbBIeIz98xDm01lHXKW9Zk4mhQPFOMlQpx3YGIGSyvVDkRs7Sw
	bQ+U1O73dyxETCur3XS/M2mhrTgp4tP1uIGf+HCQ7rQm7Tm4qt5jG3gdOi5FFGQT+5Iz17EYlBx
	2AYTRu2wfpn8G4AThoP7NVvzTpVyvWdN4dMLbxTBcFAP8sdJ5/mTn5HmWoCfGlu+WY/E5br5xub
	OwiaqsEp2NnG7yrJFzLihZoUQxxH6i+py6IHfeiars6OfRZ1curgmfLYWh3FoM0cu2h3aBaDX9/
	NEiCQS6pNQYMFrMAmYSzkBy8MR6+r75Let7ZfdfHeKQmu1mfKdWej3n+ir8XU+t6viDCD8DlQ
X-Received: by 2002:a05:701a:ca88:b0:119:e569:f620 with SMTP id a92af1059eb24-11f34bfac4cmr13755191c88.25.1765951018457;
        Tue, 16 Dec 2025 21:56:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGra67942FylfimAmVNsmQR51oIWmtuGmIxSZ51H4fFiEPFYilIfELlV/t/CZn6bcXnaGrjxg==
X-Received: by 2002:a05:701a:ca88:b0:119:e569:f620 with SMTP id a92af1059eb24-11f34bfac4cmr13755177c88.25.1765951017891;
        Tue, 16 Dec 2025 21:56:57 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e30497fsm60166484c88.15.2025.12.16.21.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 21:56:57 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] soc: qcom: pmic_glink: Add charger PDR service path and service name to client data
Date: Tue, 16 Dec 2025 21:56:55 -0800
Message-Id: <20251217055655.638594-3-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
References: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA0NSBTYWx0ZWRfX0OU1FFwCHZGe
 6oyneReaLim9o/9k4qghtF1Glq3hcyHgRLvZC58/iAFBpyubbHdhhaSqQ6XRZ6rnTZ+TwxsnLEl
 sXOXyVkpb0oIwwoGONWX5dmatC7uPIDO/wUIKHEKgdCeYxT70DyfOl0B8XQHowRXKnBccyKzT/B
 r79aI0UCsGYY+r17IW3Bo8ElaBX58O8rd1G0aDT3uA8ItTCmIooQMqXU2iHYNNKpB4s7wIlWWix
 lf+A1ksTFmTbj+p3qAJF2qC8aibZ/4fTUpqMFuBSYmubl7PQ7f8nMWdIsQfA/YF+ukhSFRA/ifv
 gwdZuYQo4KL4cHOgwe3mipboMTxbHvSDTCNjGF3xy1X9MBHfiUh24yIFHe/wP+gjg7FHpfX5x+v
 WyS3IuEr8kyYRTfY7B02XJKULSVrCw==
X-Proofpoint-ORIG-GUID: vQ5vBbkIW_AES-JvqCPsr6Rhn1ISFCCV
X-Proofpoint-GUID: vQ5vBbkIW_AES-JvqCPsr6Rhn1ISFCCV
X-Authority-Analysis: v=2.4 cv=ToXrRTXh c=1 sm=1 tr=0 ts=6942462b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qLYHXgdTuLTpAkILo5MA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170045

Currently, the charger PD service path and service name are hard coded
however these paths are not guaranteed to be the same between PMICs. For
example, on Kaanapali and Glymur, Charger FW runs on SOCCP(another subsystem)
which does not have any specific charger PDs defined.

Define charger PDR service path and service name as client data so that
each PMIC generation can properly define these paths.

While at it, add the qcom,kaanapali-pmic-glink compatible string.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink.c | 65 ++++++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
index 627f96ca322e..3ea8fec3b32b 100644
--- a/drivers/soc/qcom/pmic_glink.c
+++ b/drivers/soc/qcom/pmic_glink.c
@@ -23,13 +23,19 @@ enum {
 	PMIC_GLINK_CLIENT_UCSI,
 };
 
+struct pmic_glink_data {
+	unsigned long	client_mask;
+	const char	*charger_pdr_service_name;
+	const char	*charger_pdr_service_path;
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
@@ -292,7 +298,6 @@ static struct rpmsg_driver pmic_glink_rpmsg_driver = {
 
 static int pmic_glink_probe(struct platform_device *pdev)
 {
-	const unsigned long *match_data;
 	struct pdr_service *service;
 	struct pmic_glink *pg;
 	int ret;
@@ -309,12 +314,10 @@ static int pmic_glink_probe(struct platform_device *pdev)
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
@@ -322,27 +325,30 @@ static int pmic_glink_probe(struct platform_device *pdev)
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
@@ -352,13 +358,13 @@ static int pmic_glink_probe(struct platform_device *pdev)
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
@@ -372,23 +378,34 @@ static void pmic_glink_remove(struct platform_device *pdev)
 
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
+static const struct pmic_glink_data pmic_glink_kaanapali_data = {
+	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
+		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
+		       BIT(PMIC_GLINK_CLIENT_UCSI),
+};
+
+static const struct pmic_glink_data pmic_glink_sm8450_data = {
+	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
+		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
+		       BIT(PMIC_GLINK_CLIENT_UCSI),
+	.charger_pdr_service_name = "tms/servreg",
+	.charger_pdr_service_path = "msm/adsp/charger_pd",
+};
 
 static const struct of_device_id pmic_glink_of_match[] = {
-	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_client_mask },
+	{ .compatible = "qcom,kaanapali-pmic-glink", .data = &pmic_glink_kaanapali_data },
+	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, pmic_glink_of_match);
-- 
2.34.1


