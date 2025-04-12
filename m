Return-Path: <devicetree+bounces-166227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5200FA86A38
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 03:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 722168C6196
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4761714A1;
	Sat, 12 Apr 2025 01:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hKSMDR/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1EC137C2A
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422652; cv=none; b=LZtoWGz3sL8sXw4N8AU2soM8b5QwQAzgwjrm6HQyUrr4OfhyIMvA8p+gkUq2memjYa8BNzeFrPAbm0l0Xqr+bYcK1dW0tggLt3+odnMc3Ib66BxVae/Lm5uh9cEhTWP3QLk7EbxYVjbhlbXFJmG22cD2izgJp5qKdBbgDkMGYWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422652; c=relaxed/simple;
	bh=qa2fHYZnesCAui3XINcjkvPJz2DvBVRgbP18f/Va4Zk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=slRIIA5t4n16tzqBmJ9ECas9FEhwE1IlzRmF8SrHIr3OQ4WvnO84H7J2zl45aHe2O9CKcl1veMls/wJ0BdBU61sodM+7iWhhLuuziI0cGQApVBgxSAIZf4G7W6YjW42KjQUeZbvTRJdXkZyT4R4K3x7M+2gNFJpGhPhJ+vWOn88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hKSMDR/j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53C0KNsY007174
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NJRLMhm/fdnX3kykc4RU85KtWG/m4mG8gJyCB+VYr+A=; b=hKSMDR/jVZwpgReX
	/h4uOooHzy5NAZIN4YhavqYzKyTnqQ+PG9WEJ06awKZuWK1mRXTTtyCCKhlgmdEn
	44PbnftUE2koOkZ3AQUvMLVm1z/UZ7wMMSE+0Ek7ITbbys30nFWHd7lMLe7oM2bc
	kHzDXZ9I9n9JapbTKSPVqK6u5IurHs713D+kkKEiXOtIw+hOLq1OTjvOzD5tW4El
	uzofJD2EylQSVRrBBEt+RqvbBJddzLKTAB96+cYE+YVfdOhmLxSI+mtiGdoLywIb
	R2x0J8mb+p4gWGP3J2EiuDoOEAHFRrUL1geEdXvpMR9Y8n3f4six/b3y30ljHoo3
	ze2QZA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq03uk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:49 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736a7d0b82fso2985895b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744422648; x=1745027448;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJRLMhm/fdnX3kykc4RU85KtWG/m4mG8gJyCB+VYr+A=;
        b=TgVIcPTSpTRS8Vw/5RVkuRDG4BYfvMjQXo5tJ/m28tA5Gx2Je6fL/5SRRspZhvqfsm
         A5F4xagC8V4fBGjBs+oRzc5ENA8DGtTWm4Kp5TeGrZI7KWHqPiQYHTHrbz54gcrZmuWe
         9if0T4H93BvmHBUmNWwjXL8WOPaWX/Xx/fFOQNC7EgwazwEAqhq4EFz8qqdZTs6Q8kbp
         dfyawst9VzXoxB0D+e7eh4D300aviqnao+nxUbo2DCaLb/0/42XeDyrbYfTgJAWj6CRj
         Y8UD0ooeMW4x7zWuOz64Ehh1M+j7a884tHRKpT+peKR0a3gHZfwJl9J+Vs0wB/HjivAT
         0IWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeSbuZz8aIedjYTE0FoTkyeq8891hkM1MV0CzxNDMYI/U1HAVykv5ZhF81p6Z4xjRRPWLhKkn877Z8@vger.kernel.org
X-Gm-Message-State: AOJu0YzaQdTPuXURwKddOGC/wFQeRESNzlAS/bZG1OMxAqhKCApz0nFC
	fWDPmAzVP7vI5H1bGkFhIzrWh7LLZUttpbNYtUQ/IjiMjnbK3WXNVV2BMyc7U/owIZqPxlg1FAS
	dRouFiRf0Hi0We6yO6XZrzgFgGA9zHvQ1LXDDT62z95pDYn/Rpm7GOTcgPA7B
X-Gm-Gg: ASbGnctZPiA4eeesvhqKNHg9LiLFc7cZWH8SXs5FZ4tEf9z1It8myFYo9Mbd0pX95xx
	isp6R3BDSArCUGdVZ0DH/sJx/onylMFryVcpQYT/tQZBmPWeQL/lPFP8PXhnHbwAnCCZCxVu1Ku
	9wl2kGkj04DVDb6NlMEigoIL5PZftr47Yk4c8Q8GyJU7nCPx3G3h7L+nTyte7LutSVWxQCEtVCK
	etJWSSMpb8SG6/tKuPdqMGLaYTH90WHEwD58ADQAHFbRwTcP7qg3sxjQInAWu8/HIuX/F/P2wUw
	2KBw4+R6XGkMzje+L2j/wR0QZtN8QukW/MAcpB+hJP5LwZw=
X-Received: by 2002:a05:6a20:244c:b0:1f5:8655:3287 with SMTP id adf61e73a8af0-2017999700bmr7758398637.40.1744422648120;
        Fri, 11 Apr 2025 18:50:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqIidenWwBo5ifmdW9Dnc2XoM1wM7wagR0rEJ4R9Ggv4H1iuLINVAiCN3icYk7kDfKB9kxPA==
X-Received: by 2002:a05:6a20:244c:b0:1f5:8655:3287 with SMTP id adf61e73a8af0-2017999700bmr7758356637.40.1744422647664;
        Fri, 11 Apr 2025 18:50:47 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221832sm5516825a12.70.2025.04.11.18.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 18:50:47 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 07:19:55 +0530
Subject: [PATCH v5 6/9] PCI: qcom: Add support for host_stop_link() &
 host_start_link()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250412-qps615_v4_1-v5-6-5b6a06132fec@oss.qualcomm.com>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
In-Reply-To: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744422605; l=2832;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=qa2fHYZnesCAui3XINcjkvPJz2DvBVRgbP18f/Va4Zk=;
 b=3e2iwoROGAqjYHvRyc7vAQT087G+WiXCaP0XMUBQQJpHOkE2dMQVICDsBzXvly17NY9rP07Y7
 u4h75QW+AzyDf2qxepI6PT6vBseh/fhbRk0U8fF9E3ziUyIkr4dem7O
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: SuL29QE7WZbwgTBwuumYNiIJ6a2mu3AH
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67f9c6f9 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=dstPO7x8LWyc_yWpthkA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: SuL29QE7WZbwgTBwuumYNiIJ6a2mu3AH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504120011

Add support for host_stop_link() and host_start_link() for switches like
TC956x, which require configuration before the PCIe link is established.

Assert PERST# and disable LTSSM bit to prevent the PCIe controller from
participating in link training during host_stop_link(). De-assert PERST#
and enable LTSSM bit during host_start_link().

Introduce ltssm_disable function op to stop link training.
For the switches like TC956x, which needs to configure it before
the PCIe link is established.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index dc98ae63362db0422384b1879a2b9a7dc564d091..2715838b1036d68a10f6bbf282fde505802227f7 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -247,6 +247,7 @@ struct qcom_pcie_ops {
 	void (*host_post_init)(struct qcom_pcie *pcie);
 	void (*deinit)(struct qcom_pcie *pcie);
 	void (*ltssm_enable)(struct qcom_pcie *pcie);
+	void (*ltssm_disable)(struct qcom_pcie *pcie);
 	int (*config_sid)(struct qcom_pcie *pcie);
 };
 
@@ -618,6 +619,37 @@ static int qcom_pcie_post_init_1_0_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
+static int qcom_pcie_host_start_link(struct dw_pcie *pci)
+{
+	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+
+	qcom_ep_reset_deassert(pcie);
+
+	if (pcie->cfg->ops->ltssm_enable)
+		pcie->cfg->ops->ltssm_enable(pcie);
+
+	return 0;
+}
+
+static void qcom_pcie_host_stop_link(struct dw_pcie *pci)
+{
+	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+
+	qcom_ep_reset_assert(pcie);
+
+	if (pcie->cfg->ops->ltssm_disable)
+		pcie->cfg->ops->ltssm_disable(pcie);
+}
+
+static void qcom_pcie_2_3_2_ltssm_disable(struct qcom_pcie *pcie)
+{
+	u32 val;
+
+	val = readl(pcie->parf + PARF_LTSSM);
+	val &= ~LTSSM_EN;
+	writel(val, pcie->parf + PARF_LTSSM);
+}
+
 static void qcom_pcie_2_3_2_ltssm_enable(struct qcom_pcie *pcie)
 {
 	u32 val;
@@ -1362,6 +1394,7 @@ static const struct qcom_pcie_ops ops_1_9_0 = {
 	.host_post_init = qcom_pcie_host_post_init_2_7_0,
 	.deinit = qcom_pcie_deinit_2_7_0,
 	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
+	.ltssm_disable = qcom_pcie_2_3_2_ltssm_disable,
 	.config_sid = qcom_pcie_config_sid_1_9_0,
 };
 
@@ -1429,6 +1462,8 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = qcom_pcie_link_up,
 	.start_link = qcom_pcie_start_link,
+	.host_start_link = qcom_pcie_host_start_link,
+	.host_stop_link = qcom_pcie_host_stop_link,
 };
 
 static int qcom_pcie_icc_init(struct qcom_pcie *pcie)

-- 
2.34.1


