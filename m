Return-Path: <devicetree+bounces-247601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B347FCC8E31
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E1230F229F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87DD43587D0;
	Wed, 17 Dec 2025 16:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mruSXSbQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ty3gaeqj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CA434DB71
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989343; cv=none; b=MUAzobfBKsVMF9tgy5YAj9klTacebuPwhqQ537+XF8YfbL28SQF/5rIrc/pT8TvPCYClRVIdjdTytdNh6wkBKhkTz9Ac+Z+65vpD7LE4Lsy5DS027usRakL5xfoFtLaEI1ltSNFOhyauqm9XOY1LzVexD5UVeYyqoRkIgnBp4tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989343; c=relaxed/simple;
	bh=pM4mmlZ5nFXTHkk3VIa4nwnosLDFYYB1BLQ8kvsmvPY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OoVS7r0xhBbN/eY6qVQ0y4ZZH/HCy7XHZaLR9VuQvZgJSoNtI2cpwME+Y1ZDQZ6dgOGMvI3yQhDtnC2Q5GkQ159wpu+MP3W8XoXqmhIoOsKp4EV0uuBRHT32xPn6jB6+8LW6jwgHDvN/T69nrBu6c6M1PRSZDxz+u++KaemzUz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mruSXSbQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ty3gaeqj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL2XV330842
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f5iS/QfPo41o29sper4O46Z1M/HTU3Zvne2daPdF9aY=; b=mruSXSbQePG+IlNN
	r43ZXIIkPLTA1p1VpRfqOLD60HCN49saGGAntrn68cGCkJisAuGIjHBZKBV1D9iw
	n/3waPRPox20WztBWJ+1u5SMML5atr1PIbd+zowDxTVb8NDwI5CmG8DgWSggsNyv
	vPa4hZfejqgDxUMRARbd2i6ABSOAhdHg9fcfr4b0SXIuOnLBOteJkHh7BzI4eS1h
	El2yxiKJsHh8Bvrpu7A12VN6iXAsuoy9sfrVO640g1BgJNkcm3FA4g/MVKPM4QjE
	gRsSbbUKpW+uDpGsYSOQmhaU3IlwUG3qqq6GxzWbw0BJQ0sdpmQkJKkQpfLEW0I9
	2gUj6Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e18tx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f8e6a5de4so60764125ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989340; x=1766594140; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5iS/QfPo41o29sper4O46Z1M/HTU3Zvne2daPdF9aY=;
        b=Ty3gaeqjh2Az7ub/aMAp1TZrQ3lea/x3jSUpUDeXJcsOH7pJ+weHw6mUmpORiIpTH0
         TJ+z1eeMLsjsid1nYVMB3Vvja3DfMlWzA3vQC0ICsZ4ycDEocOcst6RFJBfL9QWHetXe
         NOV0Twvr+dnvL+U0PEMwjerfgruDCgTIoptxsw0tAGukqvtEmHzIcLWiqMVgz4dtEY5c
         aE3fRSOajCyejDp0EhNzZKAOnvHbhltUJ6UHq1GSXXryy10j5agW+ieJptRuQELjIBN5
         dyeR+8ZpZH5SKYt4v+YO6fhSkzcUdDuTylm6Gx9uPLZDcdgGehhAtDNArq3H7/IzWyzx
         tlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989340; x=1766594140;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f5iS/QfPo41o29sper4O46Z1M/HTU3Zvne2daPdF9aY=;
        b=HpAv2HFbA5RIEOSPTevXnX7kRzlPQNwu08wJ8GwPndrWYVHnAKMpQBZY6OZeyyv3RC
         /vthkKfz7VcCSqaByq96cLlwQidpX7j2kD2bq2Z6upGucEaku01aRHW9IzeatkgMSKsk
         sY8s//aqb339Ht7mwz64ACORkyivzg8tPxqZPmoayE98A/JaeRJe0A55baZOTA5qqbsv
         ShOyL93laZ8yG9z+qe1BaqX6tuZOkbEA1GNfRoH2HzFxd99VvmF2YlDUv+N/TKpgUe4H
         iN853nkcGv5HTF0rUDiRcguqAaqZJU6ozpMvhEE9QY80cYdHmcHpd54bWh/8kjHFZcYL
         OZPw==
X-Forwarded-Encrypted: i=1; AJvYcCUlCuPC+XqnQb2fca91gXNAe9se5lUVdxVncCqGl7dZBY6V8ZjIisopwaqs5CtMsp80QM1wvqTdSCB1@vger.kernel.org
X-Gm-Message-State: AOJu0YxTKiZcoivhXiPQHnJgAP6Sv14adTtyHP0ulxJUe1pJfzdV5nif
	koKQi453F0tAW7jIAK7H7yBUehgpLxGv3JXMehi//vrrqRL41156qmG9vzeRZ/Qu0ZyLWBfc1XW
	P2KkrlE1W3H9v+lsPtQJlqQlRyakJo8iQLI6IR6MTveIckVQQ1W+a5TZZ8aKl66uV
X-Gm-Gg: AY/fxX4pWgv4+nn1kMjJxye/GkqYRZYXocRPK/7lWkgk8sHqWqyQ46VD2kBWX2ws2lB
	Lqr+J7SMc3lIOllqroSTAtfOI0qlWPTHBHk3XCJX8j5YNcraa9b3iobgGVs8hHGEl+7r5gWfnVE
	laQhky/+w+smkXw/RcMDxJEYuS5HkRzB6Ic0Ba3XYrKsP3+7PmwvCPDk+AMa7Lg87Hf/VcLdPNE
	BARzDbJJwtXezZt+tWYourNtTPceHjcioSeY8j9mRK2uOqmbLSMUinR6BQPGpUFMpERdmFlmZo4
	P2jEAiNpw66v79l/m+XyWmZ9fqoxfZ9XNDqRuClE5K9w9mss9RAxQhgSkSx3ZIerRYIy8+wPCv3
	wGrCFJFIDhkwL8Wjfza5L1RHLNCBgyk61EfYI
X-Received: by 2002:a17:902:e546:b0:298:efa:511f with SMTP id d9443c01a7336-29f24141337mr196993845ad.39.1765989340113;
        Wed, 17 Dec 2025 08:35:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEX+SdviMUWiyVuzsMz3Ld5ddaGjWVNejk86tyENDi0xG+nJsPKOiPr9ks+l6i9iU1J2qEoVw==
X-Received: by 2002:a17:902:e546:b0:298:efa:511f with SMTP id d9443c01a7336-29f24141337mr196993465ad.39.1765989339556;
        Wed, 17 Dec 2025 08:35:39 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:39 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:45 +0530
Subject: [PATCH v9 09/14] firmware: qcom_scm: Refactor
 qcom_scm_pas_init_image()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-9-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=3096;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=pM4mmlZ5nFXTHkk3VIa4nwnosLDFYYB1BLQ8kvsmvPY=;
 b=PkXc98LnM72sFveXgFVB9OLdTInURlN58d49dShyLcvhIT3GhUG4xOcFKM00/ZpsRnEOVKjv/
 9nIWdAqXn//Dj5qkmpo0bHLGHJhqh0cTvb8oRbyY1OXIOEZ1Z3Vn7oZ
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX0izRV0HhnHs3
 u+fgP6TjYfWhoJ6IoIuhLRkDOMNlF0EFbvUGlftaUI5En02aSH/8Sk4O+3VbN9s/IVqJpmUaeLG
 H/ew/obAW7y8WAA0YxZkvx8yfdnzwpInGqhBVpyCEFKln/h6GyYHk8psmXxtnaG8l5fRAyOWzWt
 KIa+rAnlvexXzDyvLgM4nB3rUuy53u8Ba2WgpJUO04Iq7b8jiMvTkjmgEEw9usxhJtTdoQiGKZE
 DzYdY54A3apNpeZfYo2So3rYEDQeqCVOS5iNe3+xP7okWnEHu6fdBreb37H9Pogs9n+HqAYi660
 mwpuBfw2YCXI5Sh2oaMbP1Zu2Ts/alS0FOZf1AF8eXlQdxRia6G1fpqDlGSMAOJFRT62CJHYLKM
 +tdrfD68B9NgxkXYBhCLt5xQfVybBQ==
X-Proofpoint-GUID: UONB2Pjnrhvdl4zIsoeXUxyfALfoT2Np
X-Proofpoint-ORIG-GUID: UONB2Pjnrhvdl4zIsoeXUxyfALfoT2Np
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942dbdd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EGCBOWN0xxkO3F07DQYA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

Refactor qcom_scm_pas_init_image() by moving the memory allocation,
copy, and free operations to a higher-level function, and isolate the
actual SMC call in a separate function. The main intention is to allow
flexibility for different allocators and to respect any constraints that
the allocator API may impose before invoking the actual SCM function.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 58 +++++++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index d3783166fea1..bc3b8dc7d3e4 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -592,6 +592,37 @@ struct qcom_scm_pas_context *devm_qcom_scm_pas_context_alloc(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
 
+static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys,
+				     struct qcom_scm_res *res)
+{
+	struct qcom_scm_desc desc = {
+		.svc = QCOM_SCM_SVC_PIL,
+		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
+		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
+		.args[0] = pas_id,
+		.owner = ARM_SMCCC_OWNER_SIP,
+	};
+	int ret;
+
+	ret = qcom_scm_clk_enable();
+	if (ret)
+		return ret;
+
+	ret = qcom_scm_bw_enable();
+	if (ret)
+		goto disable_clk;
+
+	desc.args[1] = mdata_phys;
+
+	ret = qcom_scm_call(__scm->dev, &desc, res);
+	qcom_scm_bw_disable();
+
+disable_clk:
+	qcom_scm_clk_disable();
+
+	return ret;
+}
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
@@ -612,17 +643,10 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_context *ctx)
 {
+	struct qcom_scm_res res;
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
 	int ret;
-	struct qcom_scm_desc desc = {
-		.svc = QCOM_SCM_SVC_PIL,
-		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
-		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = pas_id,
-		.owner = ARM_SMCCC_OWNER_SIP,
-	};
-	struct qcom_scm_res res;
 
 	/*
 	 * During the scm call memory protection will be enabled for the meta
@@ -643,23 +667,7 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 
 	memcpy(mdata_buf, metadata, size);
 
-	ret = qcom_scm_clk_enable();
-	if (ret)
-		goto out;
-
-	ret = qcom_scm_bw_enable();
-	if (ret)
-		goto disable_clk;
-
-	desc.args[1] = mdata_phys;
-
-	ret = qcom_scm_call(__scm->dev, &desc, &res);
-	qcom_scm_bw_disable();
-
-disable_clk:
-	qcom_scm_clk_disable();
-
-out:
+	ret = __qcom_scm_pas_init_image(pas_id, mdata_phys, &res);
 	if (ret < 0 || !ctx) {
 		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
 	} else if (ctx) {

-- 
2.50.1


