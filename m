Return-Path: <devicetree+bounces-130202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 492969EE42B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8724B283E6B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982D9211485;
	Thu, 12 Dec 2024 10:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fg4kvoYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A4F20E705
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999581; cv=none; b=OGk+7p9lmFU3cUcGw+F/+dT2TvTmnhozqwG6Z2d73/cjCenticpRCupQQKJ5yQhg+soTEe9Tk7MAtT1pbJT4UDxGqiiZQXdTRRgsO0P9OezjaW9CPGQAcusfgeQrlFySt34p7xmmLrM7QlEsPdlNAFXiaFNXznR0GI08jqIP7n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999581; c=relaxed/simple;
	bh=4fCd/oHWBBMGki+2Akb2EhfJBr7XyM33W9JbVVWkoo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iHBWwefUV+KVkDBwNMGksY5eA/cQs67dKBOsQbKSA8SmSP/ocMNCUDWdPFphqtbHpTlPq7/3+hNEAU2Z65MMUp7k5PV4tkcvZLTtZKYH7AAEqKaFlcpcXV0Ijutk6kvI9ssVxkpjUsChMVEbJmUqXXYBKbHt0nzQgrwwBpQZ8Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fg4kvoYB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC7QhIt029905
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UFi/NAR+8ct3gpDsCqFqJF7Dhff9C0GYs0AHfEaJe9s=; b=fg4kvoYBzrFiYwqd
	9gFbVCjB0cONc5NOOqkWYD6RVLuqatdFEcvpD9hZvc3DOjbzzzbZenePtHeS4siq
	FNLf981CDoTSmKCGkWuHE9EYn6qUAtoPVfRtRXXy3xvbBGYOJHpAdwYwydIHL9xJ
	jK6+3ri1r+h2RPR29hK3IJfNbXZ5jr+Xx1ATAteeqKsci0WCH93SV9fsd1UfR7wm
	q+kJ5jnqK3RRkBgxHf5/CuIzdtGoL5gnHpXtVz+Bvso6eJ108WCL+EsMBUGWwHr9
	0JyfiUSgLNuxSxLg7zIzhfFE8C/ne4NUT2OiwpYtduAtvZFB7ZFWFuA9arlvPtc4
	DarZXQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xtjy4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:58 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-216311faa51so5323775ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 02:32:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733999577; x=1734604377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UFi/NAR+8ct3gpDsCqFqJF7Dhff9C0GYs0AHfEaJe9s=;
        b=kvl+0D9ZFME20A4s+4YhtzXLn5INCzYLeHixEDm6S0OlQM1CjcBTCi8wfcZ/2+h5J8
         4YGztbfdKa21Z+ZBX8BTp7FFZUje58A9q64XluNGU25Nj04GYWPwrVqigVpGy1NrXbpW
         /GjthHx+KLFBjzvNhouOEaLXUe4ipyDmPlULsRkPEY/+5p+rqhAsJ7RFbyVnlU77f84o
         uIYXidMoyzQG3dYLyHKehwR++HeCrp0glAuDLbyuc2KQbSVxEnDd/L/zex9GZeJxot1E
         eGiht5O7+eJG+HoPF27gWESizf2Iejs4Nyv8L+TimJY4mivboJ0FmC6du96uLq4bMxvE
         hjPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDmi0E197npcR8AS/SiX6/szdWp3QXK+SjSE61QEFhxrsaGKpRQfMDV8ki2qDKpv3lZx1/mvfn2Js4@vger.kernel.org
X-Gm-Message-State: AOJu0YyqMUqZXWZIdDach4gKhs7o51htbBrxa7nJBp2fes/peCaoZSeL
	A2xiwC71HV5pHuXbx4Vn/Elt/3XWLNGf0wcDbJJZxhLpdPTmodwnwI8xQZtJcgNS9B48uTwr4p1
	1aMZ5/NoIUB9FkuHPLTu3/4PnAKaYFPTdAQIOXzrUvFxDolMA7+hX7BfjI+bG
X-Gm-Gg: ASbGncvX8zdGbAgzOWK8K1usJbfDsFJ1XFSZQbCkOu7gSMDISiY0yT7CO0Y/Y+lEet5
	xP0ueewbGXHFRz/phZuyE1WfIGfQYNYYOEfYw69yyGVjH45h4vIm2OjO6Zd/U+d91HKMLeX0mOt
	qmUrhP9vLBYzgndK2FCn2lKDmi4Vo8VF8hTatyRjPK8reliRrYsfhL3KofbLm1uapIPUYJDWzUJ
	yvMrT2lyPcpB3j1zgFxJMYWHlL7vKun72duId/McY0a29qC0nZHOnDO67UvVI44ReIgltR/PThg
	1n9x0ITQKLlnWELY
X-Received: by 2002:a17:903:1250:b0:215:ba2b:cd55 with SMTP id d9443c01a7336-2178c81b9cdmr40064205ad.2.1733999576621;
        Thu, 12 Dec 2024 02:32:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4mWFutgU/rw+IbbYhTINt+7e7TrZ+SzlYpSE72R3VJGux3DghiIZM29EuOXmiXCYsxTsX2g==
X-Received: by 2002:a17:903:1250:b0:215:ba2b:cd55 with SMTP id d9443c01a7336-2178c81b9cdmr40063785ad.2.1733999576024;
        Thu, 12 Dec 2024 02:32:56 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2178db5b42asm11102335ad.244.2024.12.12.02.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 02:32:55 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 16:02:15 +0530
Subject: [PATCH v2 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-preset_v2-v2-1-210430fbcd8a@oss.qualcomm.com>
References: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
In-Reply-To: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733999565; l=1238;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=irG7UL2NaAvTYd39uNjfeRdm3pgEDinubSnLkruP6A8=;
 b=CazABzxzN/P1pKOWbv7yNJVkC1w8AmIQAil/8JT+kWBq+7dUUmaVzm9WhSYaeYAFC0K/s+yIv
 47ULRs3PEu7Bin9vMMCplzISGOtpdHtVUV/TG00Ps59Ul/da98wA7QP
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: bPw6nT9ef6pqB_mWsXSaS9rbLcievOFX
X-Proofpoint-GUID: bPw6nT9ef6pqB_mWsXSaS9rbLcievOFX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=792 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120074

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
rates used in lane equalization procedure.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a36076e3c56b..6a2074297030 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2993,6 +2993,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie6a_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
+			eq-presets-16gts = /bits/ 8 <0x55 0x55>;
+
 			status = "disabled";
 		};
 
@@ -3115,6 +3119,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie5_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 		};
 
@@ -3235,6 +3241,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			phys = <&pcie4_phy>;
 			phy-names = "pciephy";
 
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
 			status = "disabled";
 
 			pcie4_port0: pcie@0 {

-- 
2.34.1


