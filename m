Return-Path: <devicetree+bounces-197278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F68FB08AF7
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EABFA3B6A2F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 10:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44FC29A32D;
	Thu, 17 Jul 2025 10:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E2a9c3Dx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6C1299923
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748869; cv=none; b=AbzVyhaDgqid7y3ppGk0WUkM89Zaybk6oY/r3zudI133W5eEtIjdqHK7NP8IgHrsVCh3FQva176DPNy1lJi6956uZxW/cNxaGFJGM6piRihpnOf4x5g7Uv/MxGrhqjHZ48wNrY/4yZOjlrGW2Wr+lzzameItMp19BM0ZH4I6ULY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748869; c=relaxed/simple;
	bh=vdDaCsgg+mzix/TDV9PNvSoi1uwYVW7Q+4PQrxVkON4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=sCNsAtnvQ42Ts7Ap2+S35nIB90HVkuacIjh+x4zQvnqkHm6F97Tj3LqgZLHrZbCyEBS/6aW31HbTBqBCWtJCmfAkHUOV3JhIZYJo+Qijfkl6kgeqQAVaPoFJvlr9XPqWSZ0Kntcd1Dob5zanpPX3JkFYvAUByqKoJTRrFRUWX14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E2a9c3Dx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H42ePs000564
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:41:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vvaPiIP/2YOcPvhpEWW2f9
	EDPwOJcKg1JiX/Z/YjNAc=; b=E2a9c3DxhrbauPaA4Fi3I27+5qlA6jTGqmzy9Y
	tA1Ok6fj32brzI51w6Tfpde3cyljiLXRywnOLHx4c9EBvDpiWFTjngZNdBNa1rDn
	eQxsNkRqdfuR3s+JbTWqyHyfYEoj8eYD/vE2Ui512W4XhG9ZUgbi4U+kpgJlOb77
	Ts0U7a5JUY4vaxfG2sDIRITkjF/ecep0x7sckyqVI2GX6N7KmUxta2B/jyyWrda6
	1yh1kSMA+Ztr6ZNDYdf1ZI8OPS/VjzqsEAGVT8vJM5WfW/H1hCqxg1U4Za2IHDt7
	G8JetY17EoNjeV540S0uWEm7GUsFKFP+X/bbpvru40SUkwkA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drtb23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 10:41:06 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31cb5c75e00so460842a91.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 03:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752748865; x=1753353665;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vvaPiIP/2YOcPvhpEWW2f9EDPwOJcKg1JiX/Z/YjNAc=;
        b=X1/9DHauDtfTgmnege1s3WZoRY92W09uELd4eleHgElgf02L70msU+PY1z6XYs2VMH
         uASo5PzFcozT1vTvxgvuqBRyDg7EloDN1JoxdmpySDzxrl+tHUYYRiKGrBLdwzkSS0DD
         VI0AwsuZ6umeGS3oxgTxC0hX/seW2xyOjneWzm2gy8GVF6DITyRFXb4dI7bVJa4aVk0A
         DKzyxHjSJLGpi2Q0IGrcPE+nAGk3eem9CSPF3ux85LrPTZ3jzduy9x1icbRce+L72xrB
         /5QGaI3H79Mj1gt9RFMd/izj5EtgRRrIkzwZji2o898rbwO1Bs0U3ZpzN9mXio2ndfVV
         JOEQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5AYRlm2I4O+qRc/8Mm6Z9Cu455nPvMAlanP3GekOTCt6NFDLold99M43NF7gYQkaRUyojJMwSChIs@vger.kernel.org
X-Gm-Message-State: AOJu0YzWtP3j0ll5IKsmcHZfQUWurnC+vlGM7d5fWrkoG5syc3oUfgEB
	IIzgOc7pWr+mQ8UgcdwphkgiHpeRgJ+pEJdYm2GpZn7d+B0zXu3yMbdjgXbiPNaqudZQGbzbiEr
	RD8GobHOubyWkYUDOWmnhRmkODW9Tzav+Zl7yeN9ZlYqynS+b5CTnoAdRDb9NrIGH
X-Gm-Gg: ASbGncshYRlr7UzVlRfFKz++9Y+BskudFiVXKlnuKGoMk9ssLbOSRNCOsMEmZ7ngJgv
	YhQCSWeN5Hp54hK4IGMwOh55TO4anbRzkpagNW7zKNCDAofHs8IowhDZjz6DMiBGInIwW8dBoJk
	ZPYJ3Ha/aajeZYXRfZZ8mM6O51PVj2ksVEnQ6gQss/5y6qQpu7/M78Xz/wz9CSYzgbwZ5fhn4tX
	8tS4BC2ChQgRkohnQYSg3cQWlLUSjfbovurZbd6SDfPXrnewWPi6ejBdaUrVqVuMOLltWOG9/nM
	l4OryP9RvxD71SMGVxXRve8irnrzkRBM4upw+HQGnnkHfzOFzFM3CO8FHHppR6fbq9JOTMFIRlc
	=
X-Received: by 2002:a17:90b:33d0:b0:313:d342:448c with SMTP id 98e67ed59e1d1-31caebbca7emr4133600a91.17.1752748865058;
        Thu, 17 Jul 2025 03:41:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpJjSWWYAeNvexRCsR/Tzdhod+tNeFiGrWUj8nUYOQzb9aCTR6+cAgW/5Olu4yII3KrmJuaA==
X-Received: by 2002:a17:90b:33d0:b0:313:d342:448c with SMTP id 98e67ed59e1d1-31caebbca7emr4133563a91.17.1752748864513;
        Thu, 17 Jul 2025 03:41:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f1e61d2sm3035425a91.11.2025.07.17.03.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 03:41:04 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:10:57 +0530
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add missing clkreq
 pinctrl property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-clkreq-v1-1-5a82c7e8e891@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADjTeGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDc0Nz3eSc7KLUQl1LI2NzyxQDY0MLM0sloOKCotS0zAqwQdGxtbUAPtC
 B0lgAAAA=
X-Change-ID: 20250717-clkreq-92379d031869
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752748861; l=1142;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vdDaCsgg+mzix/TDV9PNvSoi1uwYVW7Q+4PQrxVkON4=;
 b=F2hokmab+sa2WThH6SS2y2DRkDfG2FoEB+aWtVHDN4HjIEW0LxF0hoy0kjVFER+SBnKAkRzKT
 KmgfsuYWo96B5dHY4IiueuxcQ85qPjmleYmINGLPSYl8s4jtLzbPLvX
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: xLb4N2Tn-vPqDXi6ExfWHaz7gAh7_MY2
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6878d342 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=_k9ig2nQFDp-gxZIyLcA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: xLb4N2Tn-vPqDXi6ExfWHaz7gAh7_MY2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDA5NCBTYWx0ZWRfXwPHWPv6qx53e
 2Bst33QvTFXwJQ7z46yH7IeLRfruxTUw8l5JbXWsQg9KHlv+7pfUFmPQ3Kaic/HLldc9ArfEn9a
 /dTDMU44S7gTTSAHRgEhkpWpprgnfmPCXhaxF7/EEeEny6kMhUv4dJlBaQ6+jkRfP6P7hqpVoym
 qGxcXWXpgPiMK4Pw2DoEW0IbGZoQu0NlggeKNKWfaKBKGv2YLMc+wYpGvLZ1/CBTjkM+LlstH3v
 QODP27CApxAq3zQchc+CWMnBmV18qR/gefpFId3Htws3enWJFznlUYUJPGbPE84U2qs28ePZ0d0
 GicfwJ+10SRmB6wWxaqvT8oHCNb4ShJPBBaHGm8NJaKW69hrd9b7Y89RXOBc0V/2coUyWDri2LJ
 RN71AR4oteULE+Zt2RPB/qQyTYuNl/66otwJ4vKL1RTzGf1SSxClEYJjvuZqHw8+Eha4290W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=844 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170094

Add the missing clkreq pinctrl entry to the PCIe1 node. This ensures proper
configuration of the CLKREQ# signal, which is needed for proper functioning
of PCIe ASPM.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 5fbcd48f2e2d839835fa464a8d5682f00557f82e..8f15be63394658a6168175a5d2183a7a77e34426 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -811,7 +811,7 @@ &mdss_edp_phy {
 &pcie1 {
 	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
 
-	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
+	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>, <&pcie1_clkreq_n>;
 	pinctrl-names = "default";
 
 	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,

---
base-commit: e2291551827fe5d2d3758c435c191d32b6d1350e
change-id: 20250717-clkreq-92379d031869

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


