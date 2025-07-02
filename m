Return-Path: <devicetree+bounces-191974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB131AF1178
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95C5F4841E2
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF7725394C;
	Wed,  2 Jul 2025 10:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cMJh4pC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455D4238C1D
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451468; cv=none; b=OIshqSpF7WKwx40LelMGtFJJ1lUmX70SAEF9hawDzoQE5X55AqkA4S6uv7iBBS3HPFQLIORHDWgOg0stZNRJUOyc8ZJOobXbXlnNC0EL/N9uwlbw6izYWagjJxT85udnt31RaJ8HnWq6bVsCcfxxEPEP63fisQ1T74fg5lcaU/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451468; c=relaxed/simple;
	bh=+6A6wyU6zI45xM0J89Nwmzn/yIxfMgM9fnnSnd48Y0g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XSbZlrxDD+aq02oqRYvWt5HmEbqy3HVVVsCfmDyd+iqZ8YmWTFdWdOYRMUoWlBtIgZL+GB9sri0fqB2jhm57UAaTX6rGXyH5UyzxaUfClGV1e3ms08w3Sv/EsFIjhjdsr4txDc5L7axaobzR+pDHSAVZ3iXRDxBV3uMRWq+VDs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cMJh4pC+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56262kCM018559
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:17:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=B+WepaBZTOBX8Yn9x8dvlB
	2T3GbomLkPCorGKitur4Y=; b=cMJh4pC+PNVm0o51RMxvflOV79/RjJyhxQ/elg
	hT1wSVyxuVrOPQB9NhivyZkg2Bxvbtphy9m5w82nqOU373+M/NZ1TNmVtyULaFKw
	f/CbLIkJ36aj66mdvfpcKH/aaY2VrAylPhYuQ85XWxkOhXGV55GuDkLAYoJ9t9c5
	rEC3eY8eh1P9Y1sE50XYd7dQsXmu7712pop3Yi3OhPsqJ6Fyq3UAR97n0pwr6p5b
	+criASfoZggk1gwjzdnUXoYotmW9xihUBJzwVEj4rBJN/kKpvRqinMKz88vNzbPZ
	ihFAotRB4F8mwQpm/GYWMwlImgEbx4QpwsSNirhSI8DanO0g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxm9pb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:17:44 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b2fa1a84568so5127217a12.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:17:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451464; x=1752056264;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+WepaBZTOBX8Yn9x8dvlB2T3GbomLkPCorGKitur4Y=;
        b=Pvl3Rs8fUJkISuiBbi6Oe/X/2NfawPsSvnTCdIloG1jd4xQ1iOqO0RNifc5cdtBvvx
         38D9QbsT7koXGVfK8261hQIHp1kBBQvH1RwraomIbbQcsQSCSYGd+YQWxc7U5lETaQjP
         AEYNOWBQqlXsnOexSgKk4gID4UbQ42spbOlCuUtZOd3SSn9rl0wnQDriAOH6i1oyESGJ
         D7150UtZNoD5YIwTqvGbdtPoRORuG+SovkVSowNcZm2IQLVEyWt46WIS1DNQPJBmGTMf
         d2Otz9XSvaEB0QPJiw71+uidhXmlwfKqcTEFq5nDP0QYC7QxQAeot7DNN7f+HuhpX49k
         BT+A==
X-Forwarded-Encrypted: i=1; AJvYcCVjfaTiu9iXFeJF/VFJyzBN1a4h3kQXVbvmjzqQSkWJFNRpDNwpbTB93DA7LYDHuNF7aiuyH+lPi6tw@vger.kernel.org
X-Gm-Message-State: AOJu0YzNzhdbzFBByHOdMEMCJfzOhTx8MeCZJl0wQIhloUQXewZKdEox
	fPTptq84dodbsoi1YbSQxPGvRuMzsbhkkJ4dLh9DHWgI0AUoEzzs+jv/TgOASMqaLA9r2pTeIIF
	bNmmKs1Yi8MQBa/Z2z5zrwzzlhh5++YYr/nP4Z07xk+1fQBoJD0n+m9xEQl+xIKra
X-Gm-Gg: ASbGncuUlpklePue+8FFamx/kI0wmmSXLDnPKHeD2Fivdu2yaS3CStX75NSDM98KjE5
	mQ1dbVwVs8E7kHgdqa10r2KtgkiLXD5P/8cVaZJU5veZtnW6z8QnfbQ67lwTTj4N3AfRaReOcqk
	37lHSwuu62SNZ7hNH5kc/icJKnlY7NxKzq2ix5EKXdS7s2PnnHnn6M9Y+u7YAFx7euN8s0qX7z+
	z1rRAC2HZBfewQFaTVDH5EXJ/jwWZpAEzofICSSe+lWcaZgRyAQk0aM2SO+v68iO1vNd/IwrCeq
	6nJ83xhah/boZScvziU7NCi0+WiIFmyht7askuYbl3bUkMsrhZ412wYuuldGXIBym57PBYNQ2gP
	4ViGBX6KyE4NUhOqff6aGhUoN/m1PBUxHrcLiHRQLzPiwihHh5YnFpLxzJA==
X-Received: by 2002:a05:6a20:734b:b0:220:8ccc:2feb with SMTP id adf61e73a8af0-222ecfaf13dmr3665851637.12.1751451463636;
        Wed, 02 Jul 2025 03:17:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKvznRZf+yAxKwVacb6nCker3LzQt3QaRDf4NSJfZpVLxTxkqKzyh96xEJjXaH0nxt4iv2yw==
X-Received: by 2002:a05:6a20:734b:b0:220:8ccc:2feb with SMTP id adf61e73a8af0-222ecfaf13dmr3665811637.12.1751451463214;
        Wed, 02 Jul 2025 03:17:43 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:17:42 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH 0/7] Describe the IMEM present in Qualcomm IPQ SoC's
Date: Wed, 02 Jul 2025 15:47:32 +0530
Message-Id: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADwHZWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDcwMj3czc1FxdS3NLy8RUcwszQ3MDJaDSgqLUtMwKsDHRsbW1AKoczRV
 WAAAA
X-Change-ID: 20250702-imem-9799ae786170
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451459; l=1973;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=+6A6wyU6zI45xM0J89Nwmzn/yIxfMgM9fnnSnd48Y0g=;
 b=r2KB83+Y4w26tgvDWJQfsbypajKxJr2qc1F1ZPIaEewOD5Q+unDAtBr8Z9FqQdMKOYcLpd1Ep
 EeMfULVm+4FAXSRsgKaNviPfZGBRwgvqOO+B4muiRYraj3C/T2HxcCD
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfX9gaFHQOwXG++
 /t2CyH447CY+laK8hEIMF3+uynEyNhHAswjs9iYWXd+NZSj1pEjIeIm3flwXvmyeNp/OBm9osS2
 IY39S7sIXnJj//ioC1QlqyECIXDlw4wRBbXUC0rSQzVCuzj6dgwdYPPwEye65aFRS4g3xQ+w+4q
 MOv2M0KEeMQ1tkzc7nikbUaXaAKKoc/YcIWlncx7OKNBXA0AuPYI58mhv1uzcb7IlM3c9D6YOjY
 8vxfB5eN/Qy+s+2FG7ts2XohH9TYe04cYNMcvV948jalsAYAKKNo+DZevXAtkot+fcuMBwpJIdV
 a2idjkRqnwgMkmpQPoBaxStsCqv5Ysv7iphOTicscQbWpQ5+j8IUB123UeYWU9ASpq8qfCDFTwV
 Cn5pv0rEZiYmOzB/yElY7pwV65tkz9MM7ulITaFwTmRKGFxHhQl2vnDMB+8rjsOh5dRIpklr
X-Proofpoint-GUID: 9WuR1jDTfwb8oXSKskMp8Vo-JYCvI_6-
X-Proofpoint-ORIG-GUID: 9WuR1jDTfwb8oXSKskMp8Vo-JYCvI_6-
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=68650748 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=EPM6MFIlYUcrubcLGAcA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=444 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020083

Qualcomm IPQ SoCs also have the IMEM region and used for the various
debugging purposes like storing system restart reason and so on. As a
preparatory work, first describe the IMEM region and susbsequently add
the required features.

In IPQ8074 and IPQ6018, IMEM region size are 0x5FFF and 0x7FFF which are
little weird. I have cross checked with HW docs as well.

Across all SoCs, only initial 4KB can be accessed by all the masters in the
SoC, remaining regions are access protected.

DT binding patch and IPQ5424 DTS patch are from the series[1]. Dropped
the Rob's Ack from the binding patch since new entries are added.

[1]
https://lore.kernel.org/linux-arm-msm/20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com/

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Kathiravan Thirumoorthy (7):
      dt-bindings: sram: qcom,imem: Document Qualcomm IPQ SoC's IMEM compatibles
      arm64: dts: qcom: ipq8074: Add the IMEM node
      arm64: dts: qcom: ipq6018: Add the IMEM node
      arm64: dts: qcom: ipq5018: Add the IMEM node
      arm64: dts: qcom: ipq9574: Add the IMEM node
      arm64: dts: qcom: ipq5332: Add the IMEM node
      arm64: dts: qcom: ipq5424: Add the IMEM node

 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 6 ++++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi                 | 9 +++++++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi                 | 9 +++++++++
 7 files changed, 60 insertions(+)
---
base-commit: 3f804361f3b9af33e00b90ec9cb5afcc96831e60
change-id: 20250702-imem-9799ae786170

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


