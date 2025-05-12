Return-Path: <devicetree+bounces-176508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A164AB45C3
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 22:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 854E84A23E3
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0604D29A303;
	Mon, 12 May 2025 20:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Am0TAGUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADDE299A9B
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747083296; cv=none; b=NO2stxGks9S1HcD2Ut82Sj15ebphPenJV/BXiT3OOCnf19eAcTXkA6Wux9U/APpPy2oxESFBvu2ajaI2WPpdzn16edl2zFR1R2myo0gWY02zfCEZx9tzCYLlGdSIOPJfccDV9rg+ecoQKSAKFoBHV9Y8SuGQHE8R8ITCgVKxt8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747083296; c=relaxed/simple;
	bh=Y26Uhiax7G8sUEDMgjWq7ztl9VANn4jMjRayAOUnWFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X2hijY0pZLiMEQGWwn/paEhUwZbenl5g80HJd4aLBYMyZN1KltQaRQvAQjuvhYdwKgx9Sccy+ryQNYth3XqCH6Rlu6k8xKD72YIy6PwyytjtO8UUu19FtrKHLFshy9NMwYP5vnSRLPQKpqCJRKt+hBFMo6g6/Ds02u1OeTqjoG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Am0TAGUG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CH04Vt010824
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yoy9PsLWgKeThBrkczbDdghhyIyxuR5eQn630g//EL0=; b=Am0TAGUGc/8STzRQ
	ejdTYobEjMA5od74RS6o7VZM50f/NJvEZtPQ52pQWh/O6A7c+kgKKu/FxGqQbrat
	jJHbpuoludIhTK2tUOqmrdhgJS6GX2z8dr9QLi9Q8Mx6ORRZP5dQjHJD6GcQvKqs
	o1JS/LC0LOe4Fx0lI69ILBAZP/nmvL3tZ3z/VqjdYNlZ8Hqur8EnpBlXzXxYPnMW
	NzdYVUuzGBS1qnjs5dj70Ekbog3x0yzji2mz/RVIG0eYO8vD3MdlorPqLN2f3xHt
	jipGNTGfUDCgbcfp6eg6Nsf9HkZZKKOKPPdyRivBhoA+/WtvBKYy/8gFesPk6EtZ
	LEGL1Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46j03bdhw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-30c371c34e7so3983364a91.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 13:54:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747083294; x=1747688094;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yoy9PsLWgKeThBrkczbDdghhyIyxuR5eQn630g//EL0=;
        b=D/be1f8pfLse0KmxvDVGjBks27OMsiQ4ORakoNaIzR0iw4vtplRAXEL3lO0tIp231B
         wEC/F/WrdeobN/lnXLVYlbXyK4odsXikJCx/wRcF8JItHb9CBOSTceWQhtpBZBhdAkny
         cE8gwNwVFP/iVUbBL61kJBLWxMun+Po5+jBffD6N41TlvEMoXlfHq+u9fvoEAog7zEAO
         ZsiVk/4j14h5dK9zbRTKtOli3Sfcf1VxHp8rOuG2+UGPp5fVw9BLtrvAeo2eCMUGRp7e
         Wd/Epj+MZARg5CvP47gzd6WPbERRJsucwsWtMY7RvYAdP5TGKKR+g+KtXFXpbUulAjwE
         ZzMw==
X-Forwarded-Encrypted: i=1; AJvYcCXNr8J55XOiYGpc7G46RyWW906GFBOLIW19G2tiyiH2K5gzuT1hPqc/CzjoDxppFfLJWacba8klju1g@vger.kernel.org
X-Gm-Message-State: AOJu0YzjAzcxjwb8Tdre62dnEEjXrgE1kNWo6V1nnN/HWSc/0t6IVkab
	D35PJx7AYEk5SBcdXK+d+LLk20rP7h4OgCytNVvSDr0UqFzgUS16EeD1PhFU8aWMkb7E9GGFopZ
	bfSXAeB3JK9N9MyC5CmcWXa0t8e8PaWU4XEukHICDkvV+It8FBUTKNIWAb01E
X-Gm-Gg: ASbGncszSLXBId32y9e0CuTUfrZ2grLiQvSFQN+S5p+bZ/2ET8jJJcjkNnToUib7WKf
	HBRqDZ46zt1TVFLteZGG41EdM7ylfnZ4Nc672Cslr0B9FoYcBb+TgdgEHnHXCqkbOR7QxSoqfAr
	1hlpseREidbEhllpXSs8F3Gh1qIWGWjdjs574U6TggmD+8o/Kkx8zUK45RfyzXX/XEWsiUfYArq
	YpLkUHchrufx3UpSWZun51bdlyZzTynZtk0OQYmFkzpk6UFBTAKJphkP59fsv18nDAZ1mMvcWIV
	kxokxbhR6XGfTk9/NjndZoEOJGQL4NSD53h3ph/UvoONLsJE5jD+3A6szqCGHIKfcnk=
X-Received: by 2002:a17:90b:1b0b:b0:2fa:13d9:39c with SMTP id 98e67ed59e1d1-30c3cff61e0mr25897037a91.14.1747083293700;
        Mon, 12 May 2025 13:54:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtSgsc3fAzqEn4+5DUFx+rHn0Vq/09BHOt8ZUoac7ndBSRyefwtbPMB5PCX61w305SR4ts3g==
X-Received: by 2002:a17:90b:1b0b:b0:2fa:13d9:39c with SMTP id 98e67ed59e1d1-30c3cff61e0mr25897015a91.14.1747083293346;
        Mon, 12 May 2025 13:54:53 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39df09dbsm7084867a91.26.2025.05.12.13.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 13:54:52 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 12 May 2025 13:54:44 -0700
Subject: [PATCH v5 4/4] arm64: dts: qcom: sm8750: Add LLCC node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-sm8750_llcc_master-v5-4-d78dca6282a5@oss.qualcomm.com>
References: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
In-Reply-To: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747083286; l=1338;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Y26Uhiax7G8sUEDMgjWq7ztl9VANn4jMjRayAOUnWFo=;
 b=yXbfnjFs8Zlj/HOkYoDoXpHHq7s2EfLz4FJyHF4GEOSsr06+W0/m/bX+cVuRZnhoUQbypY/Dz
 kPwXmcCR1+WBupZbPqz70X+qjxEmKc7Ja9WeXrMXqtjK8wDmqGqPe3+
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: xPn6jqLiLi1hVZ-RY9ozZ_p2o6UbxhBW
X-Authority-Analysis: v=2.4 cv=DOuP4zNb c=1 sm=1 tr=0 ts=6822601e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Gx2GX35Bv4c8b2S2wRcA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: xPn6jqLiLi1hVZ-RY9ozZ_p2o6UbxhBW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDIxNSBTYWx0ZWRfX68imsGW6fqPW
 J8W5YEWtROiVMjY39jO7VxhRLyyN+Anqu9/PSTZtWnA1iq9NT96EsH7ORJuNIueXGVs7VgW6yu0
 Dw1JqtNyNRCzKDkML2FNS0d0v7XipAcssAS4mRH/lUI2f0SGUhz8gipJioDT27KLEhSp4T10esV
 hGrf4lm0jXsMx0BPOqIHn28nXLr9tP18wpyfWwYDvvQSLm8XsnES2nSMDnlIZC/JxzcSvtbMksj
 FCDCnmTvdyhv/ZKM5v4hCZ+ldcjH3PrfvVnicQ9cPfma9wzq1t6Jd09hmqStZE3vH+BMLlkXlZ0
 i9WIt2/k8OtpzEqHrLJZUn46eq2wzHAHUYoscohZxRz8QUBXt60svMW2ar38yBqQ7E81jDrQtpN
 6T3bwa4KxTL3ekQCznwhlNx2IJos+FZ4+Q0T7N/ya/c5+BRRomH0U8qEjiw3RdC5/KwlTBdO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 spamscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 priorityscore=1501 mlxlogscore=676 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120215

Add LLCC node for SM8750 SoC.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 149d2ed17641a085d510f3a8eab5a96304787f0c..980ba1ca23c487b9225b73872889f02c2611e68e 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3402,6 +3402,24 @@ gem_noc: interconnect@24100000 {
 			#interconnect-cells = <2>;
 		};
 
+		system-cache-controller@24800000 {
+			compatible = "qcom,sm8750-llcc";
+			reg = <0x0 0x24800000 0x0 0x200000>,
+			      <0x0 0x25800000 0x0 0x200000>,
+			      <0x0 0x24c00000 0x0 0x200000>,
+			      <0x0 0x25c00000 0x0 0x200000>,
+			      <0x0 0x26800000 0x0 0x200000>,
+			      <0x0 0x26c00000 0x0 0x200000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc2_base",
+				    "llcc3_base",
+				    "llcc_broadcast_base",
+				    "llcc_broadcast_and_base";
+
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		nsp_noc: interconnect@320c0000 {
 			compatible = "qcom,sm8750-nsp-noc";
 			reg = <0x0 0x320c0000 0x0 0x13080>;

-- 
2.48.1


