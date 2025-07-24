Return-Path: <devicetree+bounces-199281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C9DB1032A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:17:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54174167F7D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A2F2749E7;
	Thu, 24 Jul 2025 08:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TlFDArXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3D82749D6
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753344962; cv=none; b=tHHi+O/q5elcg002kyTKsb173/Li0n9SdYA2X8bLDqPEaKVl6chyN3RR4+xjQBU2+C+X56xb+oBJn8k7hTrZeazYLiZMtGXRToqPb9qmZfJQYVAvAg1mupaIUIye/d2dFp+3Eo2dI7mUj8Fj7JLvdGeoLiOPi3u/Bzx2ZYxLiic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753344962; c=relaxed/simple;
	bh=ZcJEhMl8aRXGhWKoedNGnq1deLTIo6Y1rB5+WklLcZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQupZpqKqzuJDGy7N/ePk0lqz+E1cDHLrvLuEmNRfXJCt0KyViTf1qbe+sroAOpPlkBLUlDJGv3kKIstlINCZwdx9zl+vQXjeq3pmeUPReV6QXfI6odeLlY+E1HL9N3T4ONNvjLPrzmb8RWBjqf1tY5D8ZrT8U0+NvQhiR3D1A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TlFDArXX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O6dGUx026311
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bm3aovFQ/K0kdRKvGL94PyzsvpCmxQWUujwTzg2h1Tg=; b=TlFDArXXRyqs6h7Y
	G+GN1cjqYrEwafzY8lQxHId5bEGmCoahaegwbrx7JmTxsImVqV2KQPjcKQzk/o2M
	a3ck6USDZwnmsT1MIkZH5FtJPR319eVN6tWuKKnhZ8Q1OAn8O9KXDhTHn5MYxAZX
	sh9KkLnk+aHi+qo3L/ujeEC8qarM6MRlGwr4zy5x4eDb1aPnYLydO9o5iKZd+5v8
	pgEOU38T82lfABFNa5h+KXxmPOxN2eyCeOOUwiE/IiLwD8Q8N1/WWe0/g1znxGH3
	jW7eEK7eYOeBb/3CCj093XVFRR1tLf3SnNPpiZnQau5iLdceGws0LTUaHKNC8Fwj
	0T/UCQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483frk08y4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:00 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b3f38d3cabeso588170a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753344959; x=1753949759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bm3aovFQ/K0kdRKvGL94PyzsvpCmxQWUujwTzg2h1Tg=;
        b=Tf78C/uXfqqRYPbz5Pd/sx2OKP1M28MCbGPrqQO6PkT0LRPi0ATwVTpBSMsTId43MH
         oDUN4XYS4Bm72YP32nP9UaQC8MtCO1smWr4FhLYucA3LpeYzc+HcipjvEr8OP7qA2Iwl
         faAb2XMgQdYumCsqVrWh2eKcXfDme6UzfFdnm8Uio0v96GEdKGxnSuT5tDVTc/qAkjap
         9cGqH4HMxapkwcHXU8RuC67KKj8iSPLjnwtZkYWmVe1yRdPkPtlq8qWBPdGQWMKXjzvx
         nZZjkh3xN716s2oBvoIIi8UZx/Eb21JxTGn32jVFYYzTGxh6tToJC293clgYa1M84h12
         +utg==
X-Forwarded-Encrypted: i=1; AJvYcCXaeYTcl6zNxoI+XnGEvJe9DFD9viPCX7gnoDuOemKyZ5Y7dOKTLOE2KbR1kKDzgT3AQMBOVlSNonMf@vger.kernel.org
X-Gm-Message-State: AOJu0YwdCMQrBy51lKTxbSAMlpBzzbWiB6b4uuVAc4+4fjQfp+jd0QwY
	GRr5LUbk4SJkX44yvA37sWp1fhXXqe4XKmNsOQ+pUaZ1qiA+ypm0HWTEl59Oq163Y5alR1iFtPS
	MPlkoQJaIt1z+9ZJnyAuvSYbAfdZPq4TmawJAO8fqsXrXDaMzkRn5hWMmkxrCrOM8
X-Gm-Gg: ASbGnctkGYGYe0o52iGMeXUkyV4gpI4y6CZc+RpNirv5urYYytWq//l6U/DF965hjF3
	hSG9PdthNZZgHFQcJencU3jIp7SQ5bHvPKGOrhFZWJ6tefhQwyevM7jih9nD+G5aS96kqJawuDW
	pX/SgxC6qr3XJT+YwWPc+Gsor2hXAHFf1pflcZ0oMnOtYoHy3ukwO6VOuRvlsdA9z4EZjOR7ATq
	4YRNt/eV1fWNeB+I6X9tCm6wPDozXoPbACXD+cK1VMpLurj/xwHLa0Z04pmyONQb1ifN9RvJJi7
	5ZHfohluWUrVpusffM9SmHeuaRVoCeZalu2eidDaHrLwvDu2y7rNQ4/4plMXuPBD3pm0hw3WCyB
	1pofJShhx4YDyXcuk2DUdJ2Q0PQwBUkLExw==
X-Received: by 2002:a17:903:1108:b0:235:91a:2c with SMTP id d9443c01a7336-23f98222756mr80195955ad.42.1753344959546;
        Thu, 24 Jul 2025 01:15:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8QThZMPnBD5usjJurD2Nco802MoUQDuB84FdLmRcEGGnZ5jABk3voC7kE0hdHOcQyT2fWyg==
X-Received: by 2002:a17:903:1108:b0:235:91a:2c with SMTP id d9443c01a7336-23f98222756mr80195675ad.42.1753344959117;
        Thu, 24 Jul 2025 01:15:59 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa476eb07sm9770595ad.65.2025.07.24.01.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 01:15:58 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 16:15:23 +0800
Subject: [PATCH v2 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-hamoa_initial-v2-1-91b00c882d11@oss.qualcomm.com>
References: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
In-Reply-To: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753344953; l=1359;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ZcJEhMl8aRXGhWKoedNGnq1deLTIo6Y1rB5+WklLcZE=;
 b=rs/99e5tfSDn4Oy32jYJUz1CY7pa1am8gw6kaWuQH4/GStUUMCtJVnjq5XD5Pw1HdZYlDKNcS
 GeyxYTb44U1BITSwGyXn8Sjiupbw4PytE7IJgGrfHwuxlLJAHGxaLL3
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA1OSBTYWx0ZWRfX0P3JOKtBexJL
 +Y+Yvi8aps0a3vmLCgy0UheP/fYrakSsE27pQXj96vFI8vX4jmfQUYag+4xpiAZ9lpSPRSRucxM
 x9QOWO0uDXDDMaD1+gn7UkW+wo8HUDN2755lFJf2nYJ26ncHSfWQvN4xYSk/PKuJeTyHnDcbWZS
 HD1lcEMG2II1d9Ek4oEts1s0ktclTEj9zT7iTMqVEoAe/+F1luPUd8ou/mcTJp9eJurH1AkqDpP
 TzLPQMQhLWUPqgazGSsacnbK3qIaqeGsKO1Az1HPuiF/0VjNYfE9oB1uRZjie/du0Xy/3/e1g6F
 RrXjLi+HK9ZJi80je/Elw2TlST2pqWhA1NOe1JLFYqiMqFIQMvSbCKaiR9j6tHgfrBQfp8dVwAr
 0KKzJ4lF070JZTl8E9pGuhxvhVRWcWOAC4KXKJ8mfRZjinwPIsKXekiPPTVile++h3stBVd0
X-Proofpoint-GUID: kJe1oyUhB1LM0cSPimcxkSoVJ5gpCDbF
X-Authority-Analysis: v=2.4 cv=WbsMa1hX c=1 sm=1 tr=0 ts=6881ebc0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=X4CchLBkMRYhfesQTxMA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: kJe1oyUhB1LM0cSPimcxkSoVJ5gpCDbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240059

Document the device tree binding for a new board named "EVK" based on
the Qualcomm Hamoa-IoT platform.

The "hamoa" name refers to a family of SoCs that share the same silicon
die but are offered in multiple speed bins. The specific SoC used in
this board is the x1e80100, which represents one such bin within the
Hamoa family.

Although "qcom,hamoa-iot-evk" is introduced as the board-specific
compatible, the fallback compatible remains "qcom,x1e80100" to preserve
compatibility with existing in-kernel drivers and software that already
depend on this identifier.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 47a7b1cb3cac1150bcde8c2e2e23f2db256ab082..f004019c5691e0a9a3d56a0e3af395314ceb3745 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1161,6 +1161,7 @@ properties:
               - lenovo,yoga-slim7x
               - microsoft,romulus13
               - microsoft,romulus15
+              - qcom,hamoa-iot-evk
               - qcom,x1e80100-crd
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100

-- 
2.34.1


