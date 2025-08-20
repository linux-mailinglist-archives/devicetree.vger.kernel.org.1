Return-Path: <devicetree+bounces-206738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEF7B2D689
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0AA93BE728
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1CF2DAFD6;
	Wed, 20 Aug 2025 08:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N6rkdm2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18F42DAFB7
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678556; cv=none; b=WvpWzGP39AD963TndZBCewxTmo2+Z62URWasTQU3GojzMayaPD464u2+L9LkffEEZou1ceiSkUmrlvSSWMcjXOFdYezc/W5vb6VjvBzV1N38K3+BA4y52YaQdkS5L9wp9IwHPRWGVEkkJhUD1QbnE18yuYC7UxwZnetHKPqXhPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678556; c=relaxed/simple;
	bh=2rSyjnOXNH6jZxqRWat3S+IfaQ+klyL79lUq0adK6VI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OZ0vKYIPfTJHqLT05UXonKDRvApvVgQo53EwO7tc+OGmO8L7L9ifYmufBmCR6oVY9BDrA3lkqkjXx/LGtZES4bUsImdZ+EAYxR1EM+0aEPV/n/AWpzMzD+ZmtKSCtambdO/mef2jJEMp1wGrzR6bIRAUADb6AbhAkiWOQJS+/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N6rkdm2S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oeDw010469
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B8vAYM0Ri6HzYPqPusEESOhjr79e1ErFVtCFN1cMUUQ=; b=N6rkdm2SLD4tiqge
	felAGgUHNHlk9bbtBNZuzAiwTUMzTXnBMc5eovI95FucIC9RvKeGkx3+OTL4TaIK
	YH/fta/o3yluTkpTyXUzCxsHRdSfUlMPeL61hIZ257Ed3GMf6ZWdyQxnT1niTs2E
	WnJNEmHVeDLWOAuv7O7DphELJvVReCQhMl8DdDfwOXY2tU+l5Vqs2BgQ6Jp4CDSY
	8VSs0iRUMVMgTQMWG+Pzq9swu+6lL2BRdTBzbjN3Z4HJ4ggRjtRB8JuEgNtdOV7C
	LZmORbrXONpTurUMVuZihZ9LcPk2Tmi0uyWPbUaZTkCQnELYfs8SMsKvalY+aaNS
	7YdIyA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bh089-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:14 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457efb475so72582855ad.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 01:29:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755678553; x=1756283353;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8vAYM0Ri6HzYPqPusEESOhjr79e1ErFVtCFN1cMUUQ=;
        b=ZIfi3nh3o3UcCxITvVaGhfcdHJnin2ovM4y5WKOnxcBpDcdo432p9W49cz10YDYhPm
         6IGcp/jP01mqmLyH55S/kVgSRY29e5oqSq2g7xv762+gaPI9/lJq6TL4/J5dODTuUyFm
         Zahwpg49/LnT5nlFUpzbj8ZEtyeByOFQzfVUinP7Hy0FFmXeSA2NenUui8M8TGO26uvQ
         U3JqFhJ56mFok5FPgOsJYZtHmfBvnrAtxTXv8bp0mNgQgGB+xPxa9+0IhISqxx9Ln4EH
         K7wreLKUT5B87U/VYUb7fJeKX9wPRjg+yQnG7N02RwmYrgbhuJSY+8VdNni1EJV34c+C
         VTmA==
X-Forwarded-Encrypted: i=1; AJvYcCVKJZwuuPdSp6VXSEnWUk7cWowQdbjTPlnFu4RsEf98U6z11T6MuLe9JaZVY9RGi0Fe3lPYP77JjlcZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9WQuyRkormdRJgHUJ+mO59sEB8vCpLChcUxIBMaQd0oV0uoEm
	huPZW5gMyzMqC9CEvJUhZFSm+cBNmypBtQbAuvFlsSwEGaunM+MICC7SXj/OBx2MyXHPo1g8ubm
	72KaQV+rvVHjMUJz+bOB7scVI0QwQ9viVcNbolb+cRq5tvLxnJ0K/TotLpGVKGlYs
X-Gm-Gg: ASbGncvkT6Lm7iHv+QycaUsktjWI8b0JYCfZdv/Ai64iWVtBz9sEUxRIG/8B/Sb5Dw3
	bX05rZHB+tjtYPajokm6lcVKKnVMqmXsL4O754toH4Qjyywrm7kEdbxpqDZPgXMtL3A/PZ1BnK1
	n01ZvGT4a/+EesjCU3aiGjbEztfLqZpUUmyy4Hdb1XoPftaWrQIyjSZ4maNwnt3vRe2FM5fvZWn
	V4JoTIiH3vxd+kyIidamy08cT3knjZi0/pJc+em6kDFcAQT8qdQl29Pxfwht1DTbhe8+9BqLdgY
	B8UhDTmhj44aUBPCHj+vTFzwSoDpRWGWxtEPSOAMgxTbktF7HBPhilZDl8gZZqMzN/rRnnHa77Y
	=
X-Received: by 2002:a17:902:da8e:b0:236:9726:7264 with SMTP id d9443c01a7336-245ef11259cmr21816985ad.5.1755678553187;
        Wed, 20 Aug 2025 01:29:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEH58s+l49kW9kCSGQZvGGVUFWqSm2Tm7559FEKLDrLbXRmO7pk0REh9tawRxJs0dbxdX2M4w==
X-Received: by 2002:a17:902:da8e:b0:236:9726:7264 with SMTP id d9443c01a7336-245ef11259cmr21816625ad.5.1755678552732;
        Wed, 20 Aug 2025 01:29:12 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed53e779sm19037735ad.160.2025.08.20.01.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 01:29:12 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 13:58:49 +0530
Subject: [PATCH v4 3/7] arm64: dts: qcom: sm8450: Add opp-level to indicate
 PCIe data rates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-opp_pcie-v4-3-273b8944eed0@oss.qualcomm.com>
References: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
In-Reply-To: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755678529; l=3189;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=2rSyjnOXNH6jZxqRWat3S+IfaQ+klyL79lUq0adK6VI=;
 b=KMmLYXCx2jpkOHi6xaQPHpldFZ07RBtLf+K6gKtKbz9lBE6uK1iQtrlG7AMP4UMtkYLRWuxK8
 4KzMEreo8atBndl2xMueG3ny6n4BmAYSQJEnth69/GUc4Qp54fwwepy
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+aMg0dzoj3an
 vGyArk18KisGqfOdCytnN5oVzCDayQEZsYL0Dw/ISz9u30fpeJIgR2hFBRgGIuQtXfvLTVAkTns
 Ze8fSYtCidxsfZSOKIXMQ9TLwVCgmP1miNlvuq0+eoGyTei6wOfciYS3W0yg9mi0gbIJOkkb71u
 YGmRgerWBrG7M2wcdO5NVdMuogpbd58Aa0/ZmaHw0E70gVSEXnmDbC9Bu2TRGJahRwYNuZc3vlo
 u9mt6JnATNZ+EMZZ7JQLPCv6v+ySvjuwjyxKSg1Wd5FMOdi4mpjL860mPnyEd1y0J3TTvb7GK7D
 LnbRDY39PQQfZnoL3kMPGCDJ/Jvkm/Wkiaiqv6h4hjTVb1sQgNnXLov4G2OpZrcQq64Ybe8zrQ/
 g2CdUT8zjS0mm8QF9pWvgHfONm8pUg==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a5875a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=qQkGquXN9PvF_GGjQ98A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Gq_AgFsT2YssFdICCTpdSySnGmtLFy4I
X-Proofpoint-ORIG-GUID: Gq_AgFsT2YssFdICCTpdSySnGmtLFy4I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add opp-level to indicate PCIe data rates and also define OPP enteries
for each link width and data rate. Append the opp level to name of the
opp node to indicate both frequency and level.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 41 +++++++++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 33574ad706b915136546c7f92c7cd0b8a0d62b7e..d7f8706ca4949e253a4102474c92b393a345262f 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2052,6 +2052,7 @@ opp-2500000 {
 					opp-hz = /bits/ 64 <2500000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
 				};
 
 				/* GEN 2 x1 */
@@ -2059,6 +2060,7 @@ opp-5000000 {
 					opp-hz = /bits/ 64 <5000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
 				};
 
 				/* GEN 3 x1 */
@@ -2066,6 +2068,7 @@ opp-8000000 {
 					opp-hz = /bits/ 64 <8000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
 				};
 			};
 
@@ -2210,45 +2213,67 @@ pcie1_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
 				/* GEN 1 x1 */
-				opp-2500000 {
+				opp-2500000-1 {
 					opp-hz = /bits/ 64 <2500000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 1 x2 and GEN 2 x1 */
-				opp-5000000 {
+				/* GEN 1 x2 */
+				opp-5000000-1 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000-2 {
 					opp-hz = /bits/ 64 <5000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
 				};
 
 				/* GEN 2 x2 */
-				opp-10000000 {
+				opp-10000000-2 {
 					opp-hz = /bits/ 64 <10000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <1000000 1>;
+					opp-level = <2>;
 				};
 
 				/* GEN 3 x1 */
-				opp-8000000 {
+				opp-8000000-3 {
 					opp-hz = /bits/ 64 <8000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000-3 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
 				};
 
-				/* GEN 3 x2 and GEN 4 x1 */
-				opp-16000000 {
+				/* GEN 4 x1 */
+				opp-16000000-4 {
 					opp-hz = /bits/ 64 <16000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <1969000 1>;
+					opp-level = <4>;
 				};
 
 				/* GEN 4 x2 */
-				opp-32000000 {
+				opp-32000000-4 {
 					opp-hz = /bits/ 64 <32000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <3938000 1>;
+					opp-level = <4>;
 				};
 			};
 

-- 
2.34.1


