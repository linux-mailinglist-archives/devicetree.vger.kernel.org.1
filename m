Return-Path: <devicetree+bounces-209220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81550B353B9
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 08:03:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB840174F1E
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 06:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1E42F5335;
	Tue, 26 Aug 2025 06:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iYl0MsJp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6EC2F49FD
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756188192; cv=none; b=e5PP/dRbF6riSrfYBD9BOXcDX4SZxAFYbAHKDUeK58JaSLYLSy5PMgQtLM8/dsv83ElanGtN1mKLP2jUay40dkg3cP+Bqybof8uopQA7QdD1FoM26Rzuis3vY7qttbp10c9P/gbSpUeEYG48RUIcw8nZf9rdiw9pxm5BCSqWCf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756188192; c=relaxed/simple;
	bh=Z59JyNXY1bhJzhN5VigUElth0S2Utp0rRQ8o37kZbzo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r1/JPGod+DxMKBaQllkcAQjPLYe2BkNnohjRnTAd/rvo5c9atQdhzp0QvSXNCwb8ESutu2xoZUrChQ9dKctuK8Vy3L5xB4idPRTSKHDMR9V8l3z8PqUyx8OL+wVVqbcdFKX0eZmmz6bP9GdQI8XvnGhBicOn65hW7SE27ytJCek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iYl0MsJp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q0WA5t027681
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=; b=iYl0MsJp27Kknz6t
	hyobAzDkq4KAVMfkfhD6iCLryJM6MjakS+co+iGgfu2hDjeIaEYmV//fwJSdDrzf
	zXzk5xpCyY5EI+rP3tDAFnT3et3vPPcvJzGGyUcED5qZ7lXuzqly3afDn4yVgaIe
	Pddld/uzSAjJNPaRhTuldP1Fq0I+799qPElFbmS1H5VpIpJDXhhz+ifqLDzsQZW0
	c+5dHOce8IlzY0/xvGdWGG+s6lRkzzFLC2FYU9eWPp+dYBeMJ3dTKD9M3EEebJzU
	YikDY0Xjz3bDX6efPskkPeDBryyND3cLkPV8MLl4u4fAJV1cD8IGWP6a5U/veBN5
	NEScwQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48s2eugree-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-246f49067bdso15440705ad.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 23:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188189; x=1756792989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=;
        b=AAZxjqL++hXPl+qV9SP1PuMz2L66KJPnKMS8oUNmTUPrVlvXwBpxS9cA5dhqBAODhX
         jfGjLh/7bSwvbZfRj6hWqmS5KdRyxoDw+/PmLtW0lx7jcKxSK6vagCVeRq75YoPM6MQk
         CWaxbXyu9GyPMifb9yBSYAvyCMD5Wld4kxgmB1rbSGtFtRdTksCyCcMy5UecwXiNwmsm
         tNiQRgacbZ7fKNgz7TJSqYcUOnk7RXX6sJ/Cvt5Wy9QJP6sUlwWrP43cgIeehJfO/Aym
         YpbZh91MNwrTZd0ZmGu+KN/VRcyOTnpBTIpDVTQ0fdM1Y7E8GqXUoRq+8OVTXuJ08eB1
         CGVg==
X-Forwarded-Encrypted: i=1; AJvYcCVB7zek5KiI5dfNTy/kYrV6Lq/6ZmSY5rF09DF5EaOW8D6hjkx44S/ryUmAc2gJCY42hMD7HHoDGLyX@vger.kernel.org
X-Gm-Message-State: AOJu0YzTGjYl+YGbkYY21e29x5/HIC8C+MVbzCb3HjyPgov9kmX0Gr2c
	QlrB0i1eziYaUA7NdekxuuVwJeleRlRNeB9KmInRA7uv4mqYT2OYlUBPVuwAEKiimZDJAHa7nBU
	qdr+dn2VoyMEEn5hWYzlN2BKUIe+jEnR2t+mnNt6p+KkF0JTUXvX0XJemxGEbGT5L
X-Gm-Gg: ASbGnctvVtP3Ku7T4XMRGrrb4OQXEyv468lPv4ZNofWoXi4HYXvORRc2aFHvoGH4Blq
	IBAjyUtCqEV4lrXdyrpMe2hEgNJ6D+HwEJTofLJqSHe5JNg4duhxzXVqdG+TA+BF73zXyya8PAl
	eRpNS5UhgDwN0EsBbo35lz4wBzG2wx053LNCIIbMeCggHXbiFJgiNETyqvvb72hxo1w376xdd70
	7HuSbQ1SUi3xP/7oa2CAUS2k6LH/4iqQij0DXlawKJ3ERjvDKMzcxBH0iNZi1O6mIi1MB414V/h
	DtxtbA1h5m3heoH3hYdrmoAyxTvBY0wEhdocVrlBXn1hMUv+9a7XTPcppqnqdCpL1PPUhVXUiTz
	/ljIhP2On9Vb2YLo=
X-Received: by 2002:a17:902:ce01:b0:234:914b:3841 with SMTP id d9443c01a7336-2462ef036c1mr206242335ad.39.1756188189272;
        Mon, 25 Aug 2025 23:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPv084Dt4hnW5Zi6YWCsq9muv/c3TBUeRCKcrebtzv4eUqKfQpl97L7mhcppIGA72kG1DfDw==
X-Received: by 2002:a17:902:ce01:b0:234:914b:3841 with SMTP id d9443c01a7336-2462ef036c1mr206241815ad.39.1756188188802;
        Mon, 25 Aug 2025 23:03:08 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:08 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:01:48 -0700
Subject: [PATCH v3 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-glymur_pcie5-v3-2-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=1219;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=NNqB0T3SwC/nQPPpaZYNgmY4nF2H4V0Dr0y62les5Jc=;
 b=ZDarMZfCReeORTZs5PxdEl4S2aPFqVIxv2EnYj6iaL/AYqteR1RV6Dx6wxWy0mBpmOZZXxiff
 hcewqh4Nz6CC5EfKXz0o2ljqB7nquJPGkQqdIBMLCPirIG861GtVj+H
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: qoElqoJm1ceaCyqcZSlE01OBDct6VmCC
X-Proofpoint-GUID: qoElqoJm1ceaCyqcZSlE01OBDct6VmCC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDAwMSBTYWx0ZWRfX+Udl0kr5zg03
 3ey6IS7zHDRS57x0WIxNMUH6y/T+IeoYv4vTeLBawk75vCy2/kYHo7WmjmK+kLYUdk+HovABJA5
 jhpVkm4ZHprRt3tdPtCZs6OBulcUTn0ju6ULkI940g2lCUT2s5P+MQU49hTYLR7UwcEfow3dD0F
 9oA0wlCfLfO2wwmPzKRL0eQkiweoT610onAqLFoLzBhhVIQNNbvFEuYetZFj9QMst5AKq9AWstM
 OI5aw7XGqoy3fkLnKtOkqXQyYbUqWeL4q9M7PITM3Ad3W1BPhI6mScpKCaEYFUQT7vJVzVKoPk2
 fUDJO6xKmJU4nCKtDVYhuUtWGFB5ZOKZUSHDLFiPpaau5tX0EkKfiLvZpt4pg9tIrUSpGvk8h2s
 WFGzTG/Y
X-Authority-Analysis: v=2.4 cv=PJUP+eqC c=1 sm=1 tr=0 ts=68ad4e1e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260001

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-x1e80100
+    oneOf:
+      - const: qcom,pcie-x1e80100
+      - items:
+          - enum:
+              - qcom,glymur-pcie
+          - const: qcom,pcie-x1e80100
 
   reg:
     minItems: 6

-- 
2.34.1


