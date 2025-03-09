Return-Path: <devicetree+bounces-155747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C567A580D2
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 06:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C00FC7A3AFE
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 05:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 803F218FDC5;
	Sun,  9 Mar 2025 05:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bPEvttyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEFF18CC15
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 05:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741499198; cv=none; b=ZqtzerLVz5Roc6pUVwHcfthw34LyQIPbXODi0cgomNMhPj9mXrNfBY4GvhCGXicbUkmrzzeLxQfRHvRjHn7dwaz6OKw+K0xSrKtsXGu9uiJO8F1tJEMHDr9UamrrdUu5tzK5i44SjPSzwSbTbKh38UICvpBMxJvWSJwEfksNcRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741499198; c=relaxed/simple;
	bh=81/vVwFxL0jzMog/n4d85Jse8xDYPZwtnQhVNyZfnLc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Onq8Yj4vDQqzUQCWkjuO/dg8fwEC+kyG/phzTCWq2B08YAxtOjUTnmY2V8qdz/CP8w3qxXMEc33LOswZllS8V74VCXrTorrPfkHcpQmYSKwahoyR8XA7ZKSzhKMcxL0er4pk3+uVHaNu/aRzBf0mIZYZThyDbFHWTWJEDZlKIhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bPEvttyp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5292P2ig022564
	for <devicetree@vger.kernel.org>; Sun, 9 Mar 2025 05:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pmJu0qd08g3DmrbnDHL60bg166tlYVZOyOZzOELvrUY=; b=bPEvttypITU2sbnz
	JIcS2RnAb7WUN1GaR1VXM33i2zhll4shSM+YY6W8FdSqViQdckFITAaVyNad4g4s
	3ey5/FGPKqUtTuGSSccqLRjLiZYSPZYLCVMsMl+WZfHwOz0Vl5XIJuj96GvcN20J
	XZb8Gw2OjTl8id9F4cx1f9ZS3QSNkc2yu2WUUyCWnyGiChpvdhhDdWNy+x8uLCd1
	2ltaDSoL0J3Ufo3JIfURsaCtzLaadoqsBMjsQjmOITJGHLNwLMt4hzhQsUS3BbmS
	v9xB20QmUZ2kVbhWTtqRldqHVL06VU5yoMbYeCxRy4kVRuzGUQit0b/QML+Na42L
	NH3KMg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyu9p4r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 05:46:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-225429696a9so27416045ad.1
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 21:46:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741499194; x=1742103994;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmJu0qd08g3DmrbnDHL60bg166tlYVZOyOZzOELvrUY=;
        b=cgxDZW0SadmP0fBWv9bhOTbTcd/QpHEhBpXbtllVcdRPdo4C8kq6sh3RGgEsMZelDK
         QiNSh+uQZqn2BYiepDmA1dPbQPvdtFQJgtRoSdzXC/qSC1654qWeBEih3BdtS7E/riKD
         M3PKJGNGis5FKvn8eKxaiZn6Rks2ApiW/IwoA5vICKNXa8pZ+zEZ9xhJK4b8Y/25RZ1D
         UPoUXf4jv3VL0BfHN9wdCCeJOU/s8Anj2L/jQ2HduloI1bd20GGs0Uy46u8jgNIxyAur
         PQqqNX+jAxrGHm6P1CI2b7+zOzZbRdEIGVeAUDEM7yqDkIXDgz94kFFypprjxbFfpmPa
         +vyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMvdQoCVMeAzk1g0vIOxUPLFY5wo0gX0YWKM0cCRptGzaUzJZB8l/26JY7VVHiZ0GE0IHluDp/PgZ6@vger.kernel.org
X-Gm-Message-State: AOJu0YynO2/U17HsEf/qh/rWr0iBPNwvAZ1qlL+clPUpUrKf7mDakQwr
	WgThxSG3TYJVp5978sNRQ7i3FxYrwYdXLPKm8OfSBaUyJXNb00Cstdby4GvdX3ZT2PkKDD0zC/K
	ywxjlY4rKwPeHxEmk2e67CIgt+0s/0bjHCTxBziQvCG7BChv8EkToNqom3gEd
X-Gm-Gg: ASbGncvCnuWpWOni64U1tQ/pdJcH3FiYnbcZr1EIvM8V8YHMWTTZ9Duw1VSHyA10xnr
	fgcT8jes18jPndcqn/1VNURNvPKvv4Sz+7LB5Z5ywQcWN/eStGEZlCIV6BvVEmNe2U/Bd1AF0sG
	EYtPTqabWSbCYxwV0LDxdn6R/3uYfD07eFARKg1S6CmG9+mdTNtmtAeZvro5P9mFgY9pb4IL/Ao
	aTFfm5yPDmZMAQMVsuhJaE29n0VL7tsU5a7mAPhxm4L4yFyJ9h01wF5gwxnt1VSDykmofmIkEXp
	QduTADDuAXVdFzMy1i+KCjUkrBCDgFWychzPOGr+wLoOY3Frn+E=
X-Received: by 2002:a17:902:db10:b0:224:1781:a947 with SMTP id d9443c01a7336-2242888b368mr147417035ad.21.1741499194490;
        Sat, 08 Mar 2025 21:46:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7EqKmUifl9FiLpfhqKC/uUfxlqltaoAzqT42NnpiPzcFpgEY/tC7+mzwKbOuhT/JXR1Txmg==
X-Received: by 2002:a17:902:db10:b0:224:1781:a947 with SMTP id d9443c01a7336-2242888b368mr147416695ad.21.1741499194106;
        Sat, 08 Mar 2025 21:46:34 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-224109ddbe7sm54887145ad.32.2025.03.08.21.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Mar 2025 21:46:33 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 09 Mar 2025 11:15:27 +0530
Subject: [PATCH v5 5/7] PCI: dwc: qcom: Switch to dwc ELBI resource mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250309-ecam_v4-v5-5-8eff4b59790d@oss.qualcomm.com>
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
In-Reply-To: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741499159; l=1711;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=81/vVwFxL0jzMog/n4d85Jse8xDYPZwtnQhVNyZfnLc=;
 b=5Nj3POrnmw0KGBcZAiS3fq/7pcfbYlbtjwpf+jPF6NHYKQNPqP+dHtc2CB5cHGdYhEE42fYWe
 UyHf/UoRTsdBTT3x1jjF+JoBsUpnFzFcM6+/qekAiSV/7DuiWjZ87VP
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67cd2b3b cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: zFNmcQOr_osb78C_HONg-45zoO3X5m3F
X-Proofpoint-GUID: zFNmcQOr_osb78C_HONg-45zoO3X5m3F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-09_02,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503090043

Instead of using qcom ELBI resources mapping use dwc mapping as this
ELBI is dwc specific.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e4d3366ead1f..258b2d615080 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -265,7 +265,6 @@ struct qcom_pcie_cfg {
 struct qcom_pcie {
 	struct dw_pcie *pci;
 	void __iomem *parf;			/* DT parf */
-	void __iomem *elbi;			/* DT elbi */
 	void __iomem *mhi;
 	union qcom_pcie_resources res;
 	struct phy *phy;
@@ -390,12 +389,13 @@ static void qcom_pcie_configure_dbi_atu_base(struct qcom_pcie *pcie)
 
 static void qcom_pcie_2_1_0_ltssm_enable(struct qcom_pcie *pcie)
 {
+	struct dw_pcie *pci = pcie->pci;
 	u32 val;
 
 	/* enable link training */
-	val = readl(pcie->elbi + ELBI_SYS_CTRL);
+	val = readl(pci->elbi_base + ELBI_SYS_CTRL);
 	val |= ELBI_SYS_CTRL_LT_ENABLE;
-	writel(val, pcie->elbi + ELBI_SYS_CTRL);
+	writel(val, pci->elbi_base + ELBI_SYS_CTRL);
 }
 
 static int qcom_pcie_get_resources_2_1_0(struct qcom_pcie *pcie)
@@ -1631,12 +1631,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
-	pcie->elbi = devm_platform_ioremap_resource_byname(pdev, "elbi");
-	if (IS_ERR(pcie->elbi)) {
-		ret = PTR_ERR(pcie->elbi);
-		goto err_pm_runtime_put;
-	}
-
 	/* MHI region is optional */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mhi");
 	if (res) {

-- 
2.34.1


