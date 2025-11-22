Return-Path: <devicetree+bounces-241314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 91400C7C7B3
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 06:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CA0654E3873
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 05:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D552C08D0;
	Sat, 22 Nov 2025 05:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y2A9yWiH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fv1F2nCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE2729CB4D
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787709; cv=none; b=ayB8+42DdRvH9whPFIRJgAXs+vcCiG7d3VaZaI3b0r7XKKY3gX3BEv2I2OR0VXb0+6Sua3UZgBzYHIsvCnVhXXgfN2UqelLdsDUKlJ/HzckbYHe3LlYSK9Cwd9gCEVKaceJPYteKHqFYO9DnwTEqLZ3O0k2QG9+wwE/1yKeeHOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787709; c=relaxed/simple;
	bh=mbJR727ggrtrvgHXfUkmla3xXcuIgQNfVcXl74QOnS8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Po8p/lVqc1XM9pd6dzvSSdIx4WZOiXRFJofDwLXEYnYF4DdnZXbNlRjBsR8BEuyoSKPVF2wo/6WWfXVLWJI4Tg2Uwql/dE8byfgg6wLyGSZVLlriCoOm/u3yAF1cb3PhLiTzMQt5N7QKVf3ZHrTQE6mVxuxbQ+L2I2K8jjyp2Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y2A9yWiH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fv1F2nCL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AM4W3d91468080
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cYCVHWiTnrq
	EYRLdnl7gmKSduhx1q7VxqZ9bihRVOkM=; b=Y2A9yWiH2h8PnKlKwMmELGn/esn
	4YP6EU39sTHCsSRqvo/cuRSZg+yrY5MxHmJpbHiOy3QqeGNjgt9rOROTNLpt+f6K
	w8ZOqGKEMObVdf2EKkWDFNfUcU1tFA9d3wBH4+uNbATFmVOV30JeokbKx3oh0RRa
	vq6U6S/ptnBdwH6HdG7C9BYbbELwZx8zMUPQLtz2h8HejgYIX+tfgbg0jwdvwbkn
	zh/3E/MDnupynFWrk5D5i6bsh57gp5j5rvTqzhOxSe0alwozGx2rXrZB1bImnMPR
	3sx/sctzhpg0hmZCE4Dhp3fsYdbGdTUC+53pIBOFmkwkk4ro5F2VsSgP8HA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak67x01hy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:46 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-298535ef0ccso29235605ad.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763787706; x=1764392506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYCVHWiTnrqEYRLdnl7gmKSduhx1q7VxqZ9bihRVOkM=;
        b=Fv1F2nCL5msYVTIfLht4+hCaUXsdqoYQvUV2FOfKMLdlZ7wEQxkpTQCZR8S9NzE3pm
         ++8ASv69xJCXGAkXQ2TJkn4Aho+2Prgyj5gvuCAOdZ7MDgJdx26Xcjr3XQDFx7PRI0Si
         cK93bM1ymBcbLub+fj+jLrbyX7wvabjpVXnh3a9em6MwVrHN39HLIcOROZY7vokvpRgC
         +Nk6Oys0UCFjZBzdZiIm0l8htu20C28b4GndPqZgZ7SgOz0HHaRN13njNjmJjPztfsQ/
         IKFlS8QSWYD0ftGXQJpxeaEuRTH29scDjTDHLM1yPxAxANaUaAPOe2Ebxj0p0JOROlNc
         wt6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763787706; x=1764392506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cYCVHWiTnrqEYRLdnl7gmKSduhx1q7VxqZ9bihRVOkM=;
        b=u77t9AVWGWlQD+Z+guXbK/tC8z1PqDY2znzOv7g0zZ8YizokrpTcgVRaWLHsOeKbv/
         QHaTMg4oEFyqLIT8fT0Q+B/v1rU1BiEaTjDbmF4+ee6RaBQd4mpR+kkcZe3CkAGpWnbw
         +I/nKawtsbhi64tmX4YGhYwjJdHS1MVWJZ+ml0llncI1keywzACooaIc0M6cvV6PysXt
         ohSmuXDH4OV++GNxjkQVdOw6qkhaKAJbOwvPFlNu4HrKU9iFHDx1SZV1QHdBxgyA5+en
         g2RJ4vBcBiAOBoYYu6YD38E0RmkWDl/b9JP58KDN/Clk1kLfNtdVhYUxPj2o6ifMu40V
         XODA==
X-Forwarded-Encrypted: i=1; AJvYcCUYob60X8mBAPiQGIntOSMuHLJoYJneUnEYXFRVBP9vpuHVKJL9lR4VAWV7Z5LHc2S29taB9szqKlTj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+bDBQU7NnVBSef0kBaDr+y9pA8W0Pgk/NYxmSI9eH7s8SdSgU
	MOHCeUmNWTZCFCyhechhM9n6s/hDe+rRnCDYLUu+7yLaF1dgTQE6uFltKBI6eTgmIcu/aX6WYMF
	ZojpfjEX1n58Gfujnh7k3Gh34iFHDjK4vRU4PHnsaWpM91GrFk+P3JCknp9hcHtXp
X-Gm-Gg: ASbGncsLtndvax7I6lYe5mIEzxltVKKtz7mFzLLkre9+ujHSi95cgTbskJWzSa5jYf2
	r5C2+ETE0BOPMq6NQRPyGAmXR36D1TGwnqn0AaNq+NiG0grRSKay0xckzOWQvN65BC3exOcQGxu
	cBX+zfnry8n0qgdjQvgyrJi9ayUvogDXVGb7eh7P62nZWDJDMeDSpKRpKFasta4LrET0FKz5kmb
	C1X03LD2eVCu5arJb0lNX+ViFNvNCb/CenxcIqZ7RWN9q+sjHzxkz8I/zoDJgtx66mnc1/RO0vZ
	csfCIJxQzbPy7lA24+FIKmmsFIPGXPw8KHrOIIRfADXwFQyMalGgY2q9/leSPGjTuse/CjY+iJo
	5TnH9VFcnlMoGm4vhSq+WS35PAqsG7Knm+/9/IEedknw=
X-Received: by 2002:a17:902:d588:b0:295:c2e7:7199 with SMTP id d9443c01a7336-29b6bf38528mr51869675ad.29.1763787705419;
        Fri, 21 Nov 2025 21:01:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8OAiROK7F5GVWbTxASpswDLwPXSs+Afy8DSzGXuPGImfgg2wHiAcv4P7FgsnG632nij/7gQ==
X-Received: by 2002:a17:902:d588:b0:295:c2e7:7199 with SMTP id d9443c01a7336-29b6bf38528mr51869315ad.29.1763787704849;
        Fri, 21 Nov 2025 21:01:44 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138c08sm70688725ad.25.2025.11.21.21.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 21:01:44 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com
Subject: [PATCH v1 11/12] i2c: qcom-geni: Store of_device_id data in driver private struct
Date: Sat, 22 Nov 2025 10:30:17 +0530
Message-Id: <20251122050018.283669-12-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3X4ynpDih7LdKlNtZzLKxYSt6a4hIRiS
X-Authority-Analysis: v=2.4 cv=AcC83nXG c=1 sm=1 tr=0 ts=692143ba cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mUiiJuWc4wU39pmrI74A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 3X4ynpDih7LdKlNtZzLKxYSt6a4hIRiS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDAzNyBTYWx0ZWRfX5K0tAef8/AKs
 7USzBuFzWUPh4xnDLm4Ei2mGg1L9xP5i7lJr1QkAIrSBmv0R3NxkvnyrnGIG9IYgQ/xzg4zNaX7
 O0jafEXRH3BqTRgye00SPprv+Fdc2RKHj93NxI63jagIbRVsHbn2FqQgy++C9o24cSkiBCY62RZ
 dSzV9+Gt/dYHWo2kDEy6+zYSco2b7y20X+lAHh5R0hFPgfpCSz2UU7mRkE+jC/dN69UeZ9kwztV
 Lh8utiymO0EqAsTAPkBq5muekFwXXLuQT6tzSUzVCkDkmeSVccBFDAmgpPBVJUYgPU8uA2UcvKx
 gosp2JoSeuX6fSMzTAbwOGJBcnbjeG9ShFP0FUw1VpPgaYbvq2rEJHdg+gBSfDxpBzLFa67YDcl
 XOcyLqjLqw/oV9paa7CzcHZOQwqzjg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_01,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220037

To avoid repeatedly fetching and checking platform data across various
functions, store the struct of_device_id data directly in the i2c
private structure. This change enhances code maintainability and reduces
redundancy.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 32 ++++++++++++++++--------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index ea117a4667e0..a0f68fdd4078 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -77,6 +77,13 @@ enum geni_i2c_err_code {
 #define XFER_TIMEOUT		HZ
 #define RST_TIMEOUT		HZ
 
+struct geni_i2c_desc {
+	bool has_core_clk;
+	char *icc_ddr;
+	bool no_dma_support;
+	unsigned int tx_fifo_depth;
+};
+
 #define QCOM_I2C_MIN_NUM_OF_MSGS_MULTI_DESC	2
 
 /**
@@ -121,13 +128,7 @@ struct geni_i2c_dev {
 	bool is_tx_multi_desc_xfer;
 	u32 num_msgs;
 	struct geni_i2c_gpi_multi_desc_xfer i2c_multi_desc_config;
-};
-
-struct geni_i2c_desc {
-	bool has_core_clk;
-	char *icc_ddr;
-	bool no_dma_support;
-	unsigned int tx_fifo_depth;
+	const struct geni_i2c_desc *dev_data;
 };
 
 struct geni_i2c_err_log {
@@ -978,7 +979,6 @@ static int setup_gpi_dma(struct geni_i2c_dev *gi2c)
 
 static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 {
-	const struct geni_i2c_desc *desc = NULL;
 	u32 proto, tx_depth;
 	bool fifo_disable;
 	int ret;
@@ -1001,8 +1001,7 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 		goto err;
 	}
 
-	desc = device_get_match_data(gi2c->se.dev);
-	if (desc && desc->no_dma_support)
+	if (gi2c->dev_data->no_dma_support)
 		fifo_disable = false;
 	else
 		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
@@ -1020,8 +1019,8 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
 
 		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
-		if (!tx_depth && desc)
-			tx_depth = desc->tx_fifo_depth;
+		if (!tx_depth && gi2c->dev_data->has_core_clk)
+			tx_depth = gi2c->dev_data->tx_fifo_depth;
 
 		if (!tx_depth) {
 			ret = dev_err_probe(gi2c->se.dev, -EINVAL,
@@ -1064,7 +1063,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	struct geni_i2c_dev *gi2c;
 	int ret;
 	struct device *dev = &pdev->dev;
-	const struct geni_i2c_desc *desc = NULL;
 
 	gi2c = devm_kzalloc(dev, sizeof(*gi2c), GFP_KERNEL);
 	if (!gi2c)
@@ -1076,7 +1074,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(gi2c->se.base))
 		return PTR_ERR(gi2c->se.base);
 
-	desc = device_get_match_data(&pdev->dev);
+	gi2c->dev_data = device_get_match_data(&pdev->dev);
 
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
@@ -1221,6 +1219,10 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 									NULL)
 };
 
+static const struct geni_i2c_desc geni_i2c = {
+	.icc_ddr = "qup-memory",
+};
+
 static const struct geni_i2c_desc i2c_master_hub = {
 	.has_core_clk = true,
 	.icc_ddr = NULL,
@@ -1229,7 +1231,7 @@ static const struct geni_i2c_desc i2c_master_hub = {
 };
 
 static const struct of_device_id geni_i2c_dt_match[] = {
-	{ .compatible = "qcom,geni-i2c" },
+	{ .compatible = "qcom,geni-i2c", .data = &geni_i2c },
 	{ .compatible = "qcom,geni-i2c-master-hub", .data = &i2c_master_hub },
 	{}
 };
-- 
2.34.1


