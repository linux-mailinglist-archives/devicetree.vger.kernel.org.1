Return-Path: <devicetree+bounces-206264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B06AB2BE23
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:55:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D2735A1B39
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B5132039E;
	Tue, 19 Aug 2025 09:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D3aZM1X4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6712131E0F0
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597169; cv=none; b=BUWiDnH9ViOS9UJu+aDQJHV8E4d3/0C1LZ2BpEdFkbbwEJu8g9iUJLff90uS4BqcFJH2Apl89CzdZHWF8qr50yZYhPdvN0vSVrL6zF52qBQOFc1qI0qmXAyPVnA/6TBtSnFyk4c4w+SCbnrK64cbtKS1jAsAsbR0I/sRGrv/PnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597169; c=relaxed/simple;
	bh=OYLGPSROlM94Y8YMfz+cAy5T78h70o72gHxUfKcZJ3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WYVJGTrkRH2AH5LsZuhdHpGrHGK7FiIpJSgFs5SR4kX70ZQBLJPTUitTtKr6iP/r2UzxzR361V2jQcm/RMaqQtswTTBncnAHJHKw6qcF3/ARzW+cEeRNmhJa+1h4W98l89TX+jKQ1L0zDE8bm2b0udzX2sv2yy5O+FnPQcPEXQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D3aZM1X4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Z0M021776
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=; b=D3aZM1X4B+HF/L/z
	KdsFIuNEcRM8a/tWk2IWn+TNS7sPwOBYXWwMMnIhoqF4frlheK3Vw8EFA5G3nBfP
	/oTv+FierlwtsDUhX8inf+frGxFiVp0wscVHwuVwBCiI87YcV8mnVHw52R2erMcB
	SgdzCOKpreAXtIDwIjm5QrUQhTYPbj+ynliQIkBOtgSxdVvXMZWAfSSqEp4b5W42
	GBtHFkkPMN1RyHc0b3HrKRDn5cQq/tpf7lOjuTqQBpm1en3qBIDKF4mhm8WD5v05
	6swlUG0cjB6DMOEbOmZfum8jidMEJd5T7ORy+QDDufAzito3Iz7NROtM/82EKs1C
	c/YK4g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71cjsnc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b47156acca5so4192523a12.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597167; x=1756201967;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=;
        b=hNcxVmS/Wm9Zgwu3M6OhSgssyHbVP4EgLeDgWb7eLSbmO6uJliECFy2CaD5P78PKM0
         CrUkmYW8aEXk+T91u9PoLPXLCSue4HuByliHrQh/Cacjn/KiYGR9+owG0VIJx5I9io/y
         mZkrS383Vfbm9WEk8rPjxf6Xm2YtBwDHmTiLHg/Rk2g46G0L7t69bXmJwk7fRXVFGKAH
         TGkh+iMQdzFlFT1HwgGHJauI06BlDHDDuMsTDi1ECJTDgwJITcgGGxAuckXX8jfGDrQu
         6iaIFS5PaItKFG5Q/8OFtCD59SXWxpGghEo+wPQcazrk3Gjsaz2o16lSYC7BXxwj/Ijo
         T1qw==
X-Forwarded-Encrypted: i=1; AJvYcCWYLMB+TfxiCx4LLfOylIMYG+34uZYSIE3lEwcGdI74wKRSLGPe2tnk2rYRtCm7cqpyyKkJXfSKWbyX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm1qulio2fK9QrGUDDXZRd2U4E7iP2JoIg5crj0pIdmTeyjYMj
	+qTNB859/VLVPMOoacF+uJjfSLJngUIJ7G6Pm791iHys8f5Jpxo4iLnIcDgUExg2RJDDcBgsZcB
	Rh0VkLCkI6fwpqO3qqlv2HzxcQOnUCmegbMoXimMBC6kjwBMbGfsc4NFwfROs46Ac
X-Gm-Gg: ASbGncuubG2N7YQ5JovEWP5icCEM0P97LJgeRE4YGZMIBUz74Z5LNKz5qd2nt8ML1U+
	kwHejJjc7RXZ9O0NZeU4xr4ESQrPy72Z1nVpHrvEyasyS8tf5nC2J4daXhiVUOxLZvB9ZVka0d/
	IDLb2n0T4n4XiNyLdPIve14fpt3z8oT04ZMsDN7reGTVBTFA7GllAc6uySHC3cA49sg/B0dyKGP
	ftl4I3umGRCnqT5vt2DhdXezWnbqSZxjZEsjur+udUBqzLEZM2n5DHQzyMDa/l8BJdlo+9kKn+R
	ASUaRbr76orxalit64Nz/AC47d6jiZ/yuLVnAayW6rUrg6mCIgL4vQP2hhUpmaNMc3qccaNHVCb
	+Jb9MAdJZIEFSyKc=
X-Received: by 2002:a05:6a20:9143:b0:23d:45b2:8e3c with SMTP id adf61e73a8af0-2430da566bemr2343302637.6.1755597166615;
        Tue, 19 Aug 2025 02:52:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK98AH04v86DoafQcwelaWJ3iL3gQkWuwwa/UBd5s9Smm42EVUfqRGbSC923jHrqHy28a7HQ==
X-Received: by 2002:a05:6a20:9143:b0:23d:45b2:8e3c with SMTP id adf61e73a8af0-2430da566bemr2343266637.6.1755597166153;
        Tue, 19 Aug 2025 02:52:46 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:45 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:05 -0700
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document
 the Glymur QMP PCIe PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1596;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=5L5bgft0hY3UL+GD99tTktGev1AZdAzNOUPNY/hYCs0=;
 b=iSxkRvwPR0upKVd4VfCSpydV5AIWuhTgF5bNTgzrmAQMKSGHkafm6fwJOSYukO+Z8sRfTNEnN
 zVYCLHdo1m5CkxFG3qY7uMnOpRWEnekdHJPHAK5A2R3t7B4Hbw1jPjd
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: ZhnK-J33IXSR5glLd-wTTixS2zUmUwES
X-Proofpoint-GUID: ZhnK-J33IXSR5glLd-wTTixS2zUmUwES
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a4496f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfX6Trx2yrqXkmI
 DjoHUlBPyAOi56IOUow91LW8e6X+P2Bt15mP91VYNLAwdL5l3bCTvrg4kSrpMeGgxVcjFYKpQLG
 tRr6v3ggXHxaLFeS7aX/41fNgEVefNg/dCmrXGHtH18FI7CZTZEEx7YYgA45BpxftFD1YbPg2C7
 cwqmjlk6JLCt+G33WahSQSdMqxkc89FcfNjVEfHe20mdq/1wXOuC8qTUbDoQGM9DitbtDbumGI1
 vMu55zvNy0p+0ttejGvV0FSg5tc/6xUVXkAnf8qzXuG9R8AijkoxgFcuvp668+T2MIpw8/1Pycv
 XTf5Rff/aadpsRc66pEMAkxNOL2TFUgGadzyLje6Ms0QX9q+3+rVHloKxnHi6Wgcigo6aux4YSr
 RSvW3plV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b2f79b5c96e591ec0edb76cd45fa5..61e0e2f7ec7f9cb08447e4cd9503698c0a2d383a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -176,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -211,6 +213,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


