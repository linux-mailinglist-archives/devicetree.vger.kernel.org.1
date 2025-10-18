Return-Path: <devicetree+bounces-228335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72156BEC39B
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 03:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30B964227C9
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60B51E51FA;
	Sat, 18 Oct 2025 01:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WZFkYHsT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508951B4223
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751227; cv=none; b=joHhN/u8GzzKU0skiiFTjFWv9X3s5EC89qJexb1kvJff8DqzgJXnTNNf8v7PDUu6Dd1zeMLIDvM34Ivb7xqXY2UXagjVBP2eCrd9o1BI/eMUi6WwoEcm+vV8HrH9DwKWTrGMMOJGr0w2CTi7lv7OFOAfBlV/+HZoYrmBedn2r1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751227; c=relaxed/simple;
	bh=buXpzzB6V8sEDjGSLlS3HLSwcvy9LS6XrxQaYUlSJAU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nqBUvHJ2ZomZ9miLkrm9/IUjc3bVqq+PpiNtpALhgZjf9w1GWuvM6VZjVPoNot0AsXJPr30uY98HPW15RFXwWbqu6KFRf79RtLd/Fk4v09Tccnzzj8D07WATOdWdE2xAZnYJO8FdAehusR8vaTaaDsjD/wdOEjWCFuQqpmZs+4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WZFkYHsT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HNWVKt028683
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nyHt6+e//Wm27OxUhgiz4v3Hh8EOKz906PnWuB/Ipos=; b=WZFkYHsT1Yal2fvx
	D1iFhNbGt0819LtqmCDw2K0E/LG0hlK/4iL/pDtyOLcd+3gGNN0V0XOQ/DvuM3fD
	AMmV4m8kd3PJwmma8iVl/b9bWPiOk3Czxf6q+y/LDrZj+l6CbruIkR4gCgQt21le
	ecTpR4CGjc6ga2x49j40NR9eRyCOJWQEUJ9b2XLqe7oSneE2Gw4atkm0SzrODhkA
	82Dpl7BBtSKOyD1nRRBz4S2i6rLaJrsLisrECY3q5ubTQaHxvydolPkKVp9gsYx+
	oTGsvUfvKjex4s+iRBC+/tzSPPNhCEeJG6uBO2OR3Qhknajy5fXSqPBkDIYudodn
	FDleeA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49uqun9kad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3304def7909so2130735a91.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751225; x=1761356025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nyHt6+e//Wm27OxUhgiz4v3Hh8EOKz906PnWuB/Ipos=;
        b=alEnBaqYda01ZIipPWeeTL0YWOt6CQVlN/rOCRjSc7E02kHj3XfUSchp0hR9x2hDzh
         eAVi+Tt6tw4nPbZs6XKJ880WlLMFIc7MVtpwZDN43bk2H0n0zJG6lGm2h9v7q0r07FSS
         E6EF96/+x5ehHhzYZXkIFSZ2isJoUVXjnLrvqCgMWXiqzsDkT1J+R/XSMn20xJ569WN/
         QqeZPkZqX6FBqsKLefl6/NcNxEWtncO2eEjSflCPs4CbC9bwdsm/cIkfmrWCi17iYsfr
         LrVN1PL9kYZfOeBpZT1diFqSFAT9JThJqXb7oQoD/C2JJ6nBVra93QYnzb+eyfzAkGee
         4qCw==
X-Forwarded-Encrypted: i=1; AJvYcCXx42oP47l6SxMN70K6G5JEPA85ihCwajvyDGwtg3Hj8hqD83wKFV16CiOfGuiaedRiA/ky9w08CyVv@vger.kernel.org
X-Gm-Message-State: AOJu0YzWeSF31TgWo6rd9B7Q2nzucMNgqYRnt5X9UoobhzLMBgVGzv0n
	V6W2UM1dj4rCBnoH0vFZZn1K0MqBwknvj1KLSXakF8lC5mldFBhTrPsJDVDaisEF4MeyfLqPkdu
	+WmxvbOtXDtSkWOndRRQLysSG+2HgPAgbTXj0mA3zDxcEVDDm6AUkKMGH8NYj19fa
X-Gm-Gg: ASbGncuWK6Hj4vuW62VCkjEPicRmaTYBb7bMfrS5thVMJY9FuI2X+z1Gf/IvIGzw7MS
	KXc8ge7CpbkFYShgIQuhpk3nqEVwCNFE3ubpMWYZfOGmHoq+4tXfQWrl90xeYwB+JJbF7r7MpZW
	2G9UHJbUaUQrvnex5fl7+fAuCe6xkGwCYa9JLdTApnHZsxgyvyr+Zs3DfCUpH8B2pyrdErZsTIw
	6VXyla+YCmpvZa7sRHwfgJiVcJa0jjtrhuq5mtS85VzZhM6JsnOdiAc4xHUwzGQiK2QN1R2pBue
	2hoxdFSNrGvXSsOhHDRwN+d5k2ely2OIaZSeTO8xp+bI+uQOxdkC2kv4SOuFY2ZDYUhMANSS+tI
	yjsKfjOhDkGpN0NomPJzqB7OpRiGWZEy2wAUxi8esE4pwyQ==
X-Received: by 2002:a17:90b:1d09:b0:32d:fcd8:1a9 with SMTP id 98e67ed59e1d1-33bcf9184fbmr6171142a91.32.1760751224668;
        Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIKBsbjRuVOEEafzTskcxI+RIZweN4v3yg7SFBNeHWuxqa9Up6EUtbI6hu7qPV7UnkBxYrVg==
X-Received: by 2002:a17:90b:1d09:b0:32d:fcd8:1a9 with SMTP id 98e67ed59e1d1-33bcf9184fbmr6171120a91.32.1760751224239;
        Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:43 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:38 -0700
Subject: [PATCH v5 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-glymur_pcie-v5-1-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1696;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=ORqLDn4tPxAJKBqLDSOiTLOmLrdC5p3+AUzGMEo0jrI=;
 b=CX/0QSCszI3KvpDNAdbz5w/KezYYoQGSTW/BMRP/Y/UANFpHNaQ7g3fYwWTse42LYKhiCnKtk
 yMwkgU4A+l0A3wrq190ZEWJwbKdWxzkI3EjKDLU/hS1jJtPSuaOGu6T
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aM/9aL9m c=1 sm=1 tr=0 ts=68f2ee79 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=prgL3jgsdPShhDvlN2UA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE3MDEwOSBTYWx0ZWRfX4zMFb/MlC7yL
 Nk6Uw8A0j6cL+K6leUW0w5SIdvo+znPnicFkiqaNTj4OQx2dD5kJgxLajulJhfC/RE2ZJd+ssAn
 qGDVIajwH1bA/Ofa5ZsmA0Z3jtUsUeMUC63KeY5A8ePOJDNZoaRHmSsH30hABHdvh+pMsgy2E2k
 v1zcsJTwIwA2PyW5h9djGmSF64BddQkvYR8b0/tZ6c717FwYw8ygnIi/Y1MUvJbDbP64SG/I6Q1
 76+jMnx8g4vQ6fq4dESoqteFt1K+wdTjL+hR7DtCvwy1GU19gP0SDpDBf1rJn2+QOFLF96Dexy5
 Su0+nATdLU+4i2EUkGqmxpR3+LKbjnlYaoQ4H4iC1uHpkekCVH1Og6ntC/Hoz/t1YC56J1DYepF
 chiMeLt4986f7wE7bUgpIsgTdYtRxw==
X-Proofpoint-ORIG-GUID: bAEAGEoFbeLvq5RfnpTiKkFPz0dtU89e
X-Proofpoint-GUID: bAEAGEoFbeLvq5RfnpTiKkFPz0dtU89e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510170109

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd66fe59d91c377449d27d2f69e080..3adeca46d9aadce103fba8e037582f29ff481357 100644
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
@@ -178,6 +179,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -213,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


