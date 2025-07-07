Return-Path: <devicetree+bounces-193479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F7BAFA9EA
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 04:51:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD9653AA989
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 02:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C05851D9A54;
	Mon,  7 Jul 2025 02:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i0ZJvzJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452DA1CBA02
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 02:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751856682; cv=none; b=qyg8HB46BEclMuGS4G2aklX5f0zbZEoGVO/+BLwD/YGemfd9pJgJlo7fY3Ib3G+oxIoW/V4df3rqQR/yTLTq4HJrlwDuHL+XUwsk0EKkv/yOfjZ1L1EJZAg5WV8FANiFrR9+o9CvMAvAw2+lvfyCEuvk4pV6eESH8ZWNrgv9w/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751856682; c=relaxed/simple;
	bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eMEAtdLtK9au49LcumYmflEbqsztGNwFvVsg0XkmcHKh30eyWcUmBasHZPdU80Mkq1v9CQGBc1tgwzQnHZ+RZIGosp+gW7BzK5qjfBxV7M9aRcERxT0XhTf9QCKxoCTUnigwtZ+3XN3uH5iJ0vojUO/EYovxYdFh4AklydaBEkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i0ZJvzJX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566N7prG029139
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 02:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=; b=i0ZJvzJXbVDkPZBW
	+CPfZSBE6VhPrLKaCiagYHJ1z3TPfBsKC4mfTLhr5v91Mt0WaZfYhUXqvnTxY4bd
	zsn3f0bOrtAEBdlHb3ZifoXw6Fn0jAwjZXFuB8OA/7G3magzi9FnPfoZ+H0BVpiq
	mz1Htozuh7Hm1t3suXUa3o/3DCkTNp/LZkEm9WHNdTeI2f8HxJpJVDe5l77txRdM
	BnfKcx9u+jWf7rHAMMtrkfSrJyza8S1WsOwMuxRiPGOczWArmLfVl0jAjP7NPkoL
	am1MTRe3UwOFwVShZ1RO9HWuCscC/ZWjTZNn/jZBoa65Rhh7EXGKROwqKRLWj87S
	FeIVzQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucmgkvx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:51:19 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235e3f93687so40917635ad.2
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 19:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856679; x=1752461479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=;
        b=Ot5xf7QVrx7oRP7M8nc9h1g7IUE5F6evkYs3xS1EU/utKu78Z7wLeGLEDoO3++2Vry
         OXpakvvALnshbfXRKlugxo/tF8sVgMqwm3oaKGEmWvLMMnmN+yrF9ZFYWFFR4fggbHIs
         JazPLwt6oPbp7lSNTg7eIsTBbPXOW38kfkF6Sd0+ss/2WiVyWP8JDRF8aG8zuOziUmBW
         yf2JdJD+YDCrLWUoPJNYCxbN/p7nM6AY22FJ7b7+rLgB4UL4zcdZlBdh6oz0p1MHfDLS
         EGdZR8wyXjSfBPfQs5XVsPm6q/i1qqABjgSot/wKzNWs1VLs/HLnGh3ZKoXuPs1i/h1d
         Y3UA==
X-Forwarded-Encrypted: i=1; AJvYcCUDczba5euYnxq0b0iBCqajD0x2aZqXR0flLxefG6z+ElcBYduJWYiyjOVDJ9KR1BJtrxV688NRWdqE@vger.kernel.org
X-Gm-Message-State: AOJu0YyEsP4butHc5JWi/K40nG9IqTFCjLhblVw7v23drK5OMd5FR7rQ
	uvIF856ZPB4x16TQcJ9NfSmTZS5YUFZiGEEutxWijahd8jtcXmwOcf1JxoGZew/3GqT6K0axoOe
	efS+guRu2gMesD0SZSHeg1+bDFE4+qESE/1vC5MFetyLIzSo4YEVyz2gsng1maCT4
X-Gm-Gg: ASbGncuRQ/DpwHQec4ES3yVE80hxWkiTyOD23dXJwnK00TI5+sooJmkUbcCt3Ylip4V
	fvPjpaFsaXjPQBUpyM0HJp/29fxbeFvzU8oPHE8Fe1mWMDi5G+85JBBQz8XktwI6uwXV2UAFUlG
	6mQpudPMYlbiVOHTA70KtqcH8AJDhTFG6suvjfiv3SGzMPQ+hAyAMEt5xdDYcw2NCk49NQUkvEp
	cZywwNXcA7AktZU23eZ1mztextZBJ4bH5SK0BDrVTNQau8lgbB0s+8R8qiR20V3ZuboRmFF3b40
	v50q7zj6wPOWsVCqxz/vWOdq2XCE4OmbzQ/EPwrfg8degzVMEVYkk5lmyHi7AC5wi7TJCly1TlD
	qq40TZOpUwA==
X-Received: by 2002:a17:903:2a85:b0:237:ec18:eae3 with SMTP id d9443c01a7336-23c85d9bf04mr201496325ad.4.1751856678745;
        Sun, 06 Jul 2025 19:51:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFc5s8qkeSZbv5wDCez5mkcb0QGqHhrfn4YDLFi9kCALY7pLII/zVBlA7LtNzhjAnxVK1Rxbg==
X-Received: by 2002:a17:903:2a85:b0:237:ec18:eae3 with SMTP id d9443c01a7336-23c85d9bf04mr201495995ad.4.1751856678286;
        Sun, 06 Jul 2025 19:51:18 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c84593e0asm72478025ad.193.2025.07.06.19.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 19:51:17 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Mon, 07 Jul 2025 10:51:05 +0800
Subject: [PATCH v4 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-615-v4-1-1a2f74d167d7@oss.qualcomm.com>
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
In-Reply-To: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751856673; l=943;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
 b=BD/wbKXjCXQ8kuvJ12mzIrI7Z2PnJYg+SAheI1K5cLqtEyIwlMBTiGR8eGhSwea1YX7HKVeCK
 sidzOQWEEiAB3iSVo7FZCWjunjmcm3f/mNb+Fxe2GjDh5FEIa9Wb6c8
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686b3628 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=dI-8CA4c5Xf8_vBnWYsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: WUbDZohitLrsjHzimW1VBYbcjl5wfL6O
X-Proofpoint-ORIG-GUID: WUbDZohitLrsjHzimW1VBYbcjl5wfL6O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDAxNiBTYWx0ZWRfXz3l6IlyEQdAy
 nYSCt1pTPI/J6zycgd2hCoz5YG6K0P1D84RTSlgmxtR0l8j/RCkroB2jUtNFi9YS3K08UduB6z7
 5HYBX3nfNgXC0d4k15WbxdTtdlSKhQ3gyMvVmIQ4lWia3pcRpxe/QpJoMPpDRIIUfcvlHyGWS4/
 8Yz9Lf7TF2rv1+aeFh+J6OAFaJS97/3RqlMU8qHlS0UU8ucHTLYI75n8O6zxDbm36Z6dbXJ+vTB
 5ai34ZDQzDWngCJQVUht4mUcQCYlWgWWKNGniVHNDzLJXVHFTTkvG5C17qQRJxcNa5yjs9J48/0
 uCHvmQ+NrdHZjFd8xHFYEBSH24nQWK4305bdz0SxG7VBievGBaE3keWp15tjff3ZJkO2+IHyiBd
 CcrzNA3NLbBZTgW+ezPyHR/Jz3fbpmMhGH7WzlAI0MQoun8iabsQMj9xTymh9HFYyYRQVzKT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=942 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070016

Add an original PCIe port for WLAN. This port will be referenced and
supplemented by specific WLAN devices.

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f4b51cca17de5518aad4332330340a59edfdc7ec..b4fbed517cde18e088096d182fe6b482363e403d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1173,6 +1173,15 @@ opp-5000000 {
 					opp-peak-kBps = <500000 1>;
 				};
 			};
+
+			pcie_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie_phy: phy@1c0e000 {

-- 
2.34.1


