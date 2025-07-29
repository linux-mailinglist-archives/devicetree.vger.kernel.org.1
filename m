Return-Path: <devicetree+bounces-200334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E384B145C7
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 03:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0B0A3A8ABB
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 01:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708121F8ACA;
	Tue, 29 Jul 2025 01:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eo9KS3/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9741F4622
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753752757; cv=none; b=tZD1BJGFfxWbHHcZeQwBCx/hRfiZjaDA1NvjquwGo7Wt2vfjBVtGZluffEcYB+ZifvsdPKMys3bL80Y84GsWSuWpJ5wb0xPR++1TSfphyctlMVq6uhZQsIoJxCyG5PX6tpcTsDElQKbSpeC9oNK4G6hJL9ql7OVLhgyTQwLjiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753752757; c=relaxed/simple;
	bh=V/BYua6XV5/Slbr7KyRoyAjVXwrPIJnzOCaS+fPHr/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B6ivMYqzruOqJDxsUoC/qBxQ3PMS3rhf5+OnFUkI8RmqqGROGszjIHRbfWTPqt2A6PVAOlflyByPdSmm5qp/s9LMj2cF/QI2U/AGFJc/tSoQLd2qzdl8gwD2hnQG7XvEkrl7prpqf+FSsubU+LbUEe6WD/EKWKyGs1UlWucO3Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eo9KS3/z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SKwJGI012855
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aiEHcRFSNvC19gKAUGSHHtMUwHZqb4Vo2WDBxZKJZbs=; b=eo9KS3/zDF6fnfMz
	MVCyWDUv60kzcvYBaiQ30Ac4MhSQn730f+PStpnei90FnaPFvWXoAosx/jyeffy+
	GTdSKa2ITeB0tP/Yy11+K+sBB+WN7qL5OGZlFQo2IbX91SLZ2CQX2A9x1rOxHNT8
	13mQfArWvb4mAlyLQapVvudVMTOSFGGnr6jcgMF0QqklBIrih+Xw8IyZY9Qt9u9u
	ASifOrpHI4tvUGtRmQLo9pb9j69RwTSAdHJG6jHTUDiU5nlB2QUyP+bK290LqJG7
	QV1dKmPD1DHBtzgA3UWw464p/eg7ytuhVsyLdEn9d2USptyE+tcVCPkgXxKNYsD9
	SqssrQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qd9xaha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:32:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2400a0ad246so14652515ad.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753752753; x=1754357553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiEHcRFSNvC19gKAUGSHHtMUwHZqb4Vo2WDBxZKJZbs=;
        b=sAVgQ8dtqqb2UXsg+7F2DCUb6+rTuhGAq8/89Db+8Ib3nzLWT7v1U5nJWUEXTE8R7e
         961zk/raKsl24M06WMi0vauLi7pOWsOJnRQYoDFPI5HS/IpMVutedJ+7Lu18/tJ/j1Cm
         Qz2YnJJprg/ZtuOYd6r3E1mpn3VWmPY6XNZH5fYMnIO2ZSQDI0R9JhXy8yUZ8DL7hhju
         cKSDi5UeeO5EMOxVfl3NfKCxPHbQv5lSRILgQYO6TF+O94ikYqBQHiaNw0pKaVIRyNaS
         iAXuY/Hh/9I41EX9yH699RQWO8UKmmAa3nar6jWQrR48dumdWrNVjFF21Tiaeve1vF2k
         9KXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlt9em2vWwvGtL4KCAeuewDIVpR0JI9wCIULZF1UXazguxgR1BR7JMNy3Ivqv/7x+Z24JtlGh0k5gM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm4F+LAK6N62mKvcP7Z0C3Dn4QpH5kfZ+GTRb0gwF9uVSZqe4h
	oij4CeHCtF5/ieuuK/1jYiHhKKRMMwSmTEtyclfLyb/FLDroeEzCPEjHPLIodLvaLoPRLPo4uvX
	zER7IICkyZ0SCop+wcN7+L/sx7Hpr416yE3AA4J1GdDsX3gyNiDvYtXCKyVb7Ih92
X-Gm-Gg: ASbGncvVOPN1edYDbpIDrttvUS6yLAHpErvD5mXvj60h9mWtibtkf7lCZUC0eygr8zt
	tCOncId5Tc9Lr+FyEAD/kVZU+iIsSjWQ4l8sz7xMKSuigStkMeAr5I+ht9ACv3awEUVaUFdCzZy
	Xj3Bx/Q4HGcRdIOkLAhdPSvR4VdsWQeCERqY1HBVXaCGpkYJ7JGvXS/gxvACS+vp5DcUS0ZkXsL
	Dg3tGqlndbC59ULOrF84AShBIH2fnK8xayiSvH/TNoO6y/gRHiCwklgG3ZIJk6w5W95zMckcYEX
	A4yFAhAPhY90ugvR41QzKbeShXoLttfnUYpj59LaIi9vKO04fEFXH81uVa539yOT5FAVTuNJWBg
	wTIBgBFq+RTXOdvhccG19gdPHCUoIIs0TBg==
X-Received: by 2002:a17:903:b07:b0:240:8f4:b35c with SMTP id d9443c01a7336-24008f4ba02mr101012885ad.10.1753752753123;
        Mon, 28 Jul 2025 18:32:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFA0DJQLyo6uFYmcVpFDq4c7tgBIsAVsNRpcx8bgpwkzKnMfZjMLM54SIhP+teyT4i8kz5row==
X-Received: by 2002:a17:903:b07:b0:240:8f4:b35c with SMTP id d9443c01a7336-24008f4ba02mr101012565ad.10.1753752752715;
        Mon, 28 Jul 2025 18:32:32 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2405bca90ebsm11210625ad.6.2025.07.28.18.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 18:32:32 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 09:31:57 +0800
Subject: [PATCH v3 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-hamoa_initial-v3-1-806e092789dc@oss.qualcomm.com>
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
In-Reply-To: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753752746; l=1169;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=V/BYua6XV5/Slbr7KyRoyAjVXwrPIJnzOCaS+fPHr/4=;
 b=hbWKGwBk6osvTAY7lNFqYRDcEvcUgSdipvrnJKHUeHpYaSt94QDYhew7WazfpMe0fq8lDipBU
 ZqUfMtrhQrdCAua7qS4rQbuzCRltYqCc/4OnSQQL3uYOzECl+CXTOsJ
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: 7qm9XyPVm16pOB0GhWYKVjmz_PNLBw_v
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688824b2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Bh1HEMNN3wmc11-eFpoA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 7qm9XyPVm16pOB0GhWYKVjmz_PNLBw_v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDAxMCBTYWx0ZWRfXzEBZsIysErXK
 Vr5mVmVtJQLrwjOU+8Yl1l40hbi+ZY4ndrBaSIp6YvZoSVug5df9cipZP0GMkU/J6TqKeOSQb3T
 ywzULBOzpO+N5o4Ya92pTtCf8XvOlxwellmbw0KvGtdS8qK5duAJvEq5gLE9bXXdvPLvgogU2KY
 RaN35kAaoAeokHFD3jZvzQwcsxy4Ac9RuVG/mOpgLRvfaHyFRCHq2ACAKoqTOaX/XIEi5xdlNyL
 JNfkvScr6kLDaK4m13MCuewRv4nLNEGPvH2nA7YsD9DTFu09zbMLcJF5m7jCpvbOu3cDv/k69Tu
 KVF6eU5NKSQBBc8GthajEM76W2wwjufX1yjU7uq0q95SrqOWamCCDpYtt1ojpP/n6R1+aOiTe2M
 750QaZkzh5FqLHBqp3vogYgBzSwutXTAi/SN+bmCwavEki7jXxql9q1ddx+VgLHZUKCN54EN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_05,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=953 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290010

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 47a7b1cb3cac1150bcde8c2e2e23f2db256ab082..65003e16fe72dd4eec9423030fed6078b4a79959 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1165,6 +1165,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1


