Return-Path: <devicetree+bounces-164217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B19A6A7F896
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4226F17FBE7
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 08:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F4E26658C;
	Tue,  8 Apr 2025 08:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mtqcE8Pe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F050626656F
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 08:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102213; cv=none; b=MZC0sNeyCIAaJ2JZMQNWPW+Ef7JqmomfOiSueler3uwmBBXbQ57cGCw2aSWtKphesUA630ymiYJ1tshfFrbPe4GVSzN1+K30287c/Z35/pTZZlEM++DyoohcQnwcUBkdQaWGXKcGBzFy/y/YUASmO9n5aJMvd6hs3OBdk8ncy3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102213; c=relaxed/simple;
	bh=wg25rGgJb51l8j90aiDWVM9XpCM+HrOAyDR2G1yCzu8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XkFdTLQUxl8X48HDwnqTPpE/5u2MEcTFOMMtmHrSPZIigLio4GNooLQxTe1Ntae3buyP6gMHvwh7nHv8Vvn16QW+Vk44dWCogSmhigeQ0ImyL5Q7XgNYhnHMuRZv3CT/n4vL4FGD42FMBzqu2uanhV8j5l+3IxUHHgAqFQ0CHfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mtqcE8Pe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5382GMdQ014971
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 08:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	27NBhoEy2du6Q4/8LfMbFlMU0Ee6Sl5Su0armAPxRpY=; b=mtqcE8PeN3d5NzIN
	YeuKQhoiO8UW5yao1Po4LBOYR//dDoUebRihzHtX5ui6dGFQliAWW+oFT49+rR0j
	BvV34MAlhXw6NvweiT0LHibGJz3otoxsDSAiAO823L/kBCUET1JtM8gmRdwRo3MZ
	gk0J0ec68J3d2eOPW5X73h6RYB9vrjj16ZdHIS8orMPl2bYbedORW1Dh+J2FlrIw
	DTL5ngnzXTqtuvVCw81pbkHlCN7SGtA3NZKLMI4Laxau50/s7kzegNdFjswuMqrj
	yXyFz7kK/ZCUONk6W1WJSir1HqAcbRK+aGb9BrYANLEIsBGxlhyI+87B4iuc/ut+
	50exFA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbuf4s0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 08:50:10 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-af5156fbe79so5943778a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 01:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744102209; x=1744707009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=27NBhoEy2du6Q4/8LfMbFlMU0Ee6Sl5Su0armAPxRpY=;
        b=vLQXmSFKKaTo7rWlW8L5nA1rVblJapU0JcQz1cBsYwXA/2sFuGD5v1SeWaNKzhy5J9
         dN5frPQoBDSNMHGMMjp18NiZRQvpYwBm2tsZFHYW9/Jm2e9f9Q99vf/WHId0neijL2Ct
         wo4Os3E4R+h3z24gf1tVP9OfxEVGLGrGxUNguceepEQBDL9k1vZZSIMDCo2ySydx5K++
         NT8WoaSLLqmvEnUdczAvcbINC0PfwY/8K/AIm18BhV3fF0IEEiSfCZDKcO5H2eFLtPqJ
         hB2tY767gU1ukrsn+gq8n2slHeV25V6webrRKRPm/Zy1aaMuRnLZZgp2WRCniB12whYk
         FkxA==
X-Forwarded-Encrypted: i=1; AJvYcCWClKsfc7M1IAXykYnGGaLhsxTd2x7rQVUeQo5KCBXb71pAshSnPwrfqo/z+y2dqctb+xUoeboDV9v+@vger.kernel.org
X-Gm-Message-State: AOJu0YyH8jp7q/nm2+ByL6t0sSaTgflSgq9zvLYntMdeFBcyg9zvivM/
	9X8FZDJ4Or/BfYM/Szuy7kNTv0UXm9ucWD5hPL+zfVIeocBilqsyqfRUbOvuacjrymbjbXpCLvd
	pCYZopG8j1j8tHA06FIC5U+CFK68BJjCHmECjJjyMMvmmlvhMuVUiBexw+cAx
X-Gm-Gg: ASbGncss4QO1yLAL6ZPG8InfpnJ+IOVUbRTbaQObCtLGPlFTBx8MtfWCT+6IuNjwFCj
	zM8lwiWdRDMjbKrOFZDkzwTFPnju8Q/AmIeX1h4nRZvfPZHQs+bG+h9Evkh08q4XU2r4AjkRiaS
	RMOyvX+G7Tqup2ifhL1lZDOah++QjgGzl0pmSfZKSFxkXd3fxlUFc2Wr5k6cdiTOhZh/Yu+0Jss
	leZ93WRiqgK9YjfTE4MkFa6N+1ldq3FVbYrO2Vq2wD4xZ2g+9vLVgOvrn8pn9yYXCiLowhawUf3
	9QpE5Bv6VMRQa1caH/hkzZDqSaFeBVYPNwmuepgH021kAPYs3+AhaIC56FRGsz9ja33Mqg2snze
	fUmxIES98mgHs5TXNTPSHkcryGfBLP6Gsp6G6x9LNB6MQ4z8NqFQ=
X-Received: by 2002:a17:90b:280e:b0:2f4:4003:f3ea with SMTP id 98e67ed59e1d1-306a48b391emr24196804a91.33.1744102209271;
        Tue, 08 Apr 2025 01:50:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfGlPsXrOJLeQRSEXfWds77zcH9NxMS0qbTvAKAsWWWSNrFeI0ExEzN+bmcSgAFTWCM6YeCg==
X-Received: by 2002:a17:90b:280e:b0:2f4:4003:f3ea with SMTP id 98e67ed59e1d1-306a48b391emr24196767a91.33.1744102208887;
        Tue, 08 Apr 2025 01:50:08 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057cb5a823sm10480846a91.34.2025.04.08.01.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 01:50:08 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 08 Apr 2025 14:19:52 +0530
Subject: [PATCH RFC 2/6] arm64: dts: qcom: ipq5424: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-wdt_reset_reason-v1-2-e6ec30c2c926@oss.qualcomm.com>
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
In-Reply-To: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744102197; l=1136;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=wg25rGgJb51l8j90aiDWVM9XpCM+HrOAyDR2G1yCzu8=;
 b=nRs4e/njdUA6zmbiVfwi1g4hbBZlP6yyFq7nWXpXrnSrORfevKpgfbUgV3C0sVXWRmaUBqxpO
 R6M0TiGdlCZDTteK0mBwkorzjh5jQTtZPPlvCir/dMT1wflQekx1ZAy
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: 3w7gqgvfJ-ipyAEpDafnZrTXRqSs-6kB
X-Proofpoint-ORIG-GUID: 3w7gqgvfJ-ipyAEpDafnZrTXRqSs-6kB
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f4e342 cx=c_pps a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QDJorwyCwNfNgOuVDpwA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_03,2025-04-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=624 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504080062

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality. Corresponding DTS and driver
changes will be added incrementally.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5d6ed2172b1bb0a57c593f121f387ec917f42419..a772736f314f46d11c473160c522af4edeb900b7 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -486,6 +486,15 @@ ssphy_0: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
+			reg = <0 0x08600000 0 0x1000>;
+			ranges = <0 0 0x08600000 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb3@8a00000 {
 			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
 			reg = <0 0x08af8800 0 0x400>;

-- 
2.34.1


