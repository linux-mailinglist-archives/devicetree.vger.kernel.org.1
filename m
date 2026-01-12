Return-Path: <devicetree+bounces-254071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB959D13A66
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C47663016663
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E34B3570DE;
	Mon, 12 Jan 2026 15:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B0qvEX8P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OV4Oi1J3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C2A2F12AC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768231095; cv=none; b=ZMMCbYgdRf57OdGSTuMmubHepkaKPi5SLAlvMgLXjs1/w6cCJB9Z9iD+tOjTT7Qf3CaOXM67feuSSjifFh+D4PTxcnsM0D8AOeC9TlwjqiiJdzMXIBNnBST5twItL2B6ReNwfECvzx+cWwB8Q38ibjtu7NlWY7OLqN47iAChTRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768231095; c=relaxed/simple;
	bh=NxFptabU2j+7xs2D5bUqViZ6pvqo8VIQkUa/OgQ5A6E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YO7hlhRU3TXqlIyZShT0wbJvh0eDbiLzhDX8NOfWlmjSAvLJ0lU6Y2f8fS4GElI3G9zS2UYUj++ME9yU4w8qFVAkQCqalFyk6vcP+gPEJXVe91nXsuPeDtSFVwgL7VUHv7eX9jd6AeeUQNmIS1AFzbLfF6aed4wNXwdIOv6aI4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B0qvEX8P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OV4Oi1J3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CA6lqC1381100
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1uz7GdQ1OohVNys4vghnlrN8fx0G37LqbV2
	TdppSdrY=; b=B0qvEX8PG0LjLuKGAwZYe1i5POpLuEr7VgUtNTLQ0waDNXDmcCU
	Y+bIxH8JaY5nf+XV6LFLbDiCeMheXb77kZR86R18dlEplBRxLjGPDweODQoll6M5
	F0EZ1+IEjZk1merruRqti4kOP2320/KRS2Q5jn/+/9flPI0GkqTlduwDTJHby82e
	J/gc39rut5P5USt+1N69zISNgEx1ifdLhARJA/MbMUQ6+LSozb7WbnDa6BTaGyU9
	w+7qYg1QzAFBAsM+IuHlcAvqFt2GbR+EB4nKVjA+m4PX1prn5onTvGYdAeKjw21O
	69Ic9duuWRnQWnAA8mB8qoPgmq/veJwOYeA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmxwv0v24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:18:12 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d59f0198so71050565ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768231092; x=1768835892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1uz7GdQ1OohVNys4vghnlrN8fx0G37LqbV2TdppSdrY=;
        b=OV4Oi1J3xB7uHa/0/OdWxXxVx6O1SdR4maLLAe8yTgtI7w7Nalyq/69I8ZVneOFyUp
         0oT2McxSEyI6qITc9loHy/su91vS7qO6K4qfN9DZPJdYoA7ZRjhv/Z0g2C4wDvKXXmm0
         72vV0KFSB5BnovrU3LWU6MAwAbpioEZcFMcLEyBrO+eRjas3P9tTK88CiQj+xzJ5vcff
         ew0lWBVm25ShM6q+mcSYQgB4qyWfLCaklTMfexLpaHK1hrjQnBAeh+fy+AcMocj4MBBL
         jeiY393udpHuKmXrNJYMyqJaGnAV6r2ZwZpFmqS+8kahi2ScRs5VpYQ0B5xChqPjvoCD
         Ig2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768231092; x=1768835892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1uz7GdQ1OohVNys4vghnlrN8fx0G37LqbV2TdppSdrY=;
        b=ptYiamYYITWhW2ir397yfWCAAH6PNqT1FxSY2+edfToyXwHJZ1XfJf4xSVofx37d0+
         fYV8wnVzHVp1v2u8Is3E5dSB29NcMUWmZjfc96FqyHUFwfsX6MGVoc7fnxSoCoAA2YqN
         obKRwbrBpjYTnJ62/KFmjefaco3HTTKF2rLJ/3zs31Xl4xxfL8Q1Np3D4HGwSfwAKyii
         tpcLC5EtBWAuUjPwLydyA85NftD2nJCxIaz/FuPTmpADJWpBoC80oZFehKUPzaAkZIWp
         A8CXKZcAoFPrdMLB3vSVt2fzgMLB7vUe+8SUEN2XbVcTteg+9GXGBpocH7yjYd94WWGu
         MB9A==
X-Gm-Message-State: AOJu0Yx+HY3eW2y2qDwBt/8oWRQepjM3uy/QI3Q1Kjxp8xAk5uR5Gl5X
	M4AcAlYzXV5J9Ecg1sy0IwevBZbTtMaOvgeabmt6O3ynj9ysmxScFmbcXU01yAdgupSchuSfJZL
	BAcdmeNH8lGLjj/mRmVD1iNETlyJOl+2OrK9ktjHgkWnUhtNtH5pEXW2YNMfBTwxd
X-Gm-Gg: AY/fxX5MCdG5oTjxlwJBO+SVqzdxDbr7skbLEFBRzqsbdBB9CNY9nfIhRsr22fwlXhr
	OeY3UitI8Jr9Mmi99ZJlBVx5IDCQf79Csbd/E/+RyJAdZXMiTquIlFMOKb9G0SDkW/fMM75RCzZ
	loXjQZkj0FbfEgIPjIj6HLrUDJkrQo8gqMOtb2GcO2t/5LnufM3dATDET58XCsYPgwYjANYNuT+
	N7guapt1KlGKWtxh5hR7LOCikfVpb+li3tsBKcA0HTHZrhEwiYGXr7+XVEdllfJ0O9Lo/iIwjQf
	yDf2wmgDnmTx7nbdm42mGMiP9w6ar4gZX7CcV9XmVI2JfWn9i2MxersIW+xYTtvM1TdUryzesFy
	nIF4YY6OZ5ua0v9YuM2iko+sKj3s1p+7Ut/nd
X-Received: by 2002:a17:903:3c30:b0:2a0:fe4a:d67c with SMTP id d9443c01a7336-2a3ee437a5dmr174542305ad.10.1768231091350;
        Mon, 12 Jan 2026 07:18:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFirjPHFwFcnM1DT/rHG0kFhSwVGgGjGlP/Wu/BnhCFZbEnN97JNwYjXc0mQEprqSGdz2Xvfw==
X-Received: by 2002:a17:903:3c30:b0:2a0:fe4a:d67c with SMTP id d9443c01a7336-2a3ee437a5dmr174542015ad.10.1768231090679;
        Mon, 12 Jan 2026 07:18:10 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88e3sm176103675ad.75.2026.01.12.07.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 07:18:10 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register write
Date: Mon, 12 Jan 2026 20:47:25 +0530
Message-ID: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hdiUad_33eRrCNf1a-IvtBQ1iUqXCH1d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDEyNCBTYWx0ZWRfX/vn9xT4cCtRK
 WiPJfq+27T3EHnZXSExWQZ0AOPQVXxItlQev64tvmUJ9D9gGwSI63XqeNLuEMsmbxycJVIH9XwG
 f2CDaXEwE3zC3dnrWZG1ZrPr2m5b+eaiga0R5cCyfr0V6brJf7jhTXYWKRPIzlU31x+f5MLDVaM
 S1nXQM5fJdZCKT2gpNwR9lVRDstEAsjTlXAnsxrzga1QLCrVOH50B/Zs85dwmmV2vJMBZDcuM6q
 C9VZRouAOtkyxjWUp2/z07feO6cPExqnrcaVNw5cIfPIiquij+1im2ABz5yYqF4o17q5GbKYCUs
 mlefY02sH1qYWxuBUx+29ZotTKRyf6PQifMkLCH94yTcQsOVZj5QSMvimUdUHY9QpoaCPOsZIj9
 M2Xc4h3kLuBQyyANewHXYPxgoFbUyhz+yFUlPBUq5LzVjZrl6UKSVyernFThtIpyPerJPDQcaWU
 rnQYaRBWAs3I9eZc7Pw==
X-Proofpoint-ORIG-GUID: hdiUad_33eRrCNf1a-IvtBQ1iUqXCH1d
X-Authority-Analysis: v=2.4 cv=C/XkCAP+ c=1 sm=1 tr=0 ts=696510b4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZJQsJAtiAu0WCEyc7p8A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120124

Enable download mode setting for sm8750 which can help collect
ramdump for this SoC.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index c0734f6185e1..c812b2d26483 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -203,6 +203,7 @@ domain_ss3: domain-sleep-0 {
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm8750", "qcom,scm";
+			qcom,dload-mode = <&tcsr 0x19000>;
 			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 		};
@@ -2097,6 +2098,11 @@ tcsr_mutex: hwlock@1f40000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr: syscon@1fc0000 {
+			compatible = "qcom,sm8750-tcsr", "syscon";
+			reg = <0 0x01fc0000 0 0x30000>;
+		};
+
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8750-mpss-pas";
 			reg = <0x0 0x04080000 0x0 0x10000>;
-- 
2.50.1


