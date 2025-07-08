Return-Path: <devicetree+bounces-193888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4258FAFC21D
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 07:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CAF2426031
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 05:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4908D21ADAE;
	Tue,  8 Jul 2025 05:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T4B6HOIs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BB321ABB9
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 05:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751953165; cv=none; b=QUE73sn/F3gtxLFY75nbX2+zcEGeUna1n4Z9OlajoEGtZUJtyawMqU4pjWavw+gEoFOl3h1xfmcdODK/ZIufbk7p0dvb+/IyHGlNulv7nNwD3M7qXTsZ8rgvxkh+j93A3vDjqviJ+COuPW01c1uD/OPLJpJndTw6XRhho9WLiv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751953165; c=relaxed/simple;
	bh=ewtixLILXuUupT8S9ur7sLgsTuEmEKzJsaSwPqBRb2A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CxaAYq65sN1Njuym2UFckvM6+DzKNoaJ/j+Y9wcuk5RUCVnW1UeM03wGe91f1Bm1UgXt76m7OmV4uN5agHzYQ0MD/jTjHTR5N89F5Ef8YFbPcWA1f4/K7fsYNkltNdnIA7f4iw/dYzbQJXMVbKwn/ykm4Hf0pwS+lX0VZ5jjeFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T4B6HOIs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 567JKfJD027442
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 05:39:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B/BoOaHH6Emeq/T4ksmjVoIEvoJ1Vn+kDUShTxoxkB8=; b=T4B6HOIs/8WCkLdA
	/4OylXRb1MauNiOcwAVK2B8P/ulkBk0ka5chvxM1iSsqqPDGlYmAe6jEMjyufLzP
	Bqj+Xw79Cm+8vTqOgc9rzHPNdPagzj5qMPGOCGt2hV6UrpZ8/Z7kOG+78QRgHHEQ
	OVUFC40mhT2Vy0cz3hze/Yt3G6d66h/QdKrVTRHu+HACXbWKuDwxhT/ZIjlLr3jp
	UX1jIRdT7wfOd2p/KRsx16IoJ7o8WIlgFDdRk4HNUtB08SB5HgTotPM7yd6t+dJc
	Aemakdnfb1uiRSwtSbmkAuF7gRcgulxpC04hwo0ciUY+3jaEksh9ILgqNRlvD+6K
	uWCxOw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucmu86j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:39:22 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74d15d8dcd1so1242177b3a.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 22:39:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751953161; x=1752557961;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B/BoOaHH6Emeq/T4ksmjVoIEvoJ1Vn+kDUShTxoxkB8=;
        b=pgGLuiZ1YtChtfKkzwS9wWJ920xrVnIzG+Yovg7g37c4ThdU66NLTyCxOiSyQcyO8S
         W3eX4Cu57FJbhxOpatumsIRLxsvZ6BQu7lOCczH1MsyxV5gmTvOy9fBwI/tEVQR0x2oo
         +o+2g3OkNBKvYfUP9w/FjX44uTUXcYGPBdheFSaCUwTaMbIhboPHcFIGE1T3bvF6YrRa
         C/tT/RBwBxTVg4F72UYdsK3fG/jGEP0bClCpg5zLfyhymXmONiK37oAFDZEdGdaXH63c
         jrjPCPYEU/cun5XYlK1Ggz0ciEpYeUSDI+/60e7HdUXMu3GcYqtOaQu6KlPz8OZxKt8M
         jLsg==
X-Forwarded-Encrypted: i=1; AJvYcCWj3o7z1RzcV21mvsfBikDGUsDe9pdLv/Hp6oLKF3PEBcMMxMDfTFAUvRYEmE8ZSwF12gpvQgSEVsh2@vger.kernel.org
X-Gm-Message-State: AOJu0YwT4l+TwoAwO1vbUnmsQS+bK4VcwT8YCDMWIdQ7XWfEDTeuLXzU
	J9mqsJSed94agPdro+4r7JNUPrI/ZM+EnnCLlDIMa8mSOmWPmqXrGWtp6WmFO2kG646uckEfYvO
	CF4KK4USN2Jv/ok3PeH96+zQJKLe84rePf4NPKsXPXJKkrgT8sokM4KGnRk91g+OE
X-Gm-Gg: ASbGncunUU/ck8R1x2PMwLSWV6m7ZAXWBMOce/IRYNNUZcu3+UrSKaXX9pyJv5yfNiD
	gnTBLbUQBUBxarcEMAzzMtUSBDEylNKKmTdHQel2mJs4dLGmN4x1dKCrekPbEFMYbXVoINWweDJ
	ObrwghrpKOm3XxjznM8aMyCWKft8j3F+a7uNQLOb5R5eZZ1JYGunqPtZzIPkytIknvUMHNGwumP
	tFdKaRViNVOoZaqSh6IWwmTA54+xs4+gdbKWBGs2y8EQ4mUSeM1F8GcPWoJxydIBZU6PSn//aso
	F2FlDik6NUJFbu4t1DCcgJCfgXUYJCW02PEplb4TlfsfR5jlI5NLZw3mlIQkz/FBaPg8LLsBEGf
	JW72ltI6Jx8eZwvB5OOwAq8RBKtYQlT6VVZRSAK29Bvth8VomWSGubLlHUg==
X-Received: by 2002:a05:6a21:a49:b0:218:59b:b2f4 with SMTP id adf61e73a8af0-2260cff1094mr20982780637.42.1751953161263;
        Mon, 07 Jul 2025 22:39:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwNp3gv2H7sK8hVMcolto0PcXk8SmW0HJiiXfXI2O9DCyoF+Cd65tPz2eI6jDh33/5C9l0dw==
X-Received: by 2002:a05:6a21:a49:b0:218:59b:b2f4 with SMTP id adf61e73a8af0-2260cff1094mr20982754637.42.1751953160889;
        Mon, 07 Jul 2025 22:39:20 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b38ee450db7sm10531829a12.4.2025.07.07.22.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 22:39:20 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 08 Jul 2025 11:09:11 +0530
Subject: [PATCH v2 1/6] dt-bindings: sram: qcom,imem: Document Qualcomm IPQ
 SoC's IMEM compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250708-imem-v2-1-692eb92b228e@oss.qualcomm.com>
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751953154; l=1045;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=ewtixLILXuUupT8S9ur7sLgsTuEmEKzJsaSwPqBRb2A=;
 b=mm7xEE3lnmbKcAUwof5hB3G0oArKrGSN92xulB+4LAZb41z0zBshZtBD3rCvZRLgtCXsw7h1U
 +OnUYOZEFzgCPabTRQOfSJngn9QuLIQ+aby1s4l5Iy8GZxI4VPgSwlV
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686caf0a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=YX5-feIjXtt2TVtCS1UA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: ZK5BruVPFTHyAJxu2_bMDlkkfDJsMZai
X-Proofpoint-ORIG-GUID: ZK5BruVPFTHyAJxu2_bMDlkkfDJsMZai
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA0MyBTYWx0ZWRfX3Ah9nZmz4F78
 YSkIyEqlvv7gDL4pReXca8U/YVCrvRurW4yf1QCGn6yaylSMIfhbWdQ8Z2KUcngGFFT+sjzpYvk
 uxtuJuU8/0LYonc81gYi0HX066HslAA8zoywIlqPeCj9P7b0v+e8KcNCLzPfClpgzci7C9/Bnul
 omCjmCr1aGIp89hsqbNOKcwdgh3Q4odMog/0jP6nYERKwBLS8K540nv8ecosRvRSMvMdSM9i6p0
 uhf7HwDuVQsnM8gIjdvBMg0arQUzesZdEXg5ABCjjwMWfYhYx278+Hr8G/No8Cr0QPLqdGAcWRI
 K58ASrl172hvH0xgWCEuT3v/XIITcAMeMkLyU8T7C6hUxyh6yYt7PPV0+CPDuILUJ0gRLk6l0sD
 wifW1+4DdRPrPh6f6ubSUuJf/QLxvSly9kTUNuUEMNkCrJ5uSUmC/Dk6+j8EaSUN2vBCORiy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=846 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080043

IMEM is present in the Qualcomm's IPQ SoCs as well. Document the same.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- added the entries in the sorted order (Krzysztof)
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 72d35e30c439ccf4901d937f838fe7c7a81f33b1..7286014e698f99184c1d6871f9a012c25c9147f6 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,11 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq5018-imem
+          - qcom,ipq5332-imem
+          - qcom,ipq6018-imem
+          - qcom,ipq8074-imem
+          - qcom,ipq9574-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


