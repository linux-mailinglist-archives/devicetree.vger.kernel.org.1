Return-Path: <devicetree+bounces-206741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA5FB2D66E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED8327AE876
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1D62DCF5D;
	Wed, 20 Aug 2025 08:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cD52eMG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926C62D9786
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678575; cv=none; b=DvPDKjwE+Z+pIz8MuLlL7uY7SUpTsKIsFzjOqu9WU21siAULFF21rHOk0ZIq2CI/GReQglpFYcmaF+pG0b5m5RdOZkkr3aJMHEUqsew4myw+YeOwaiZB2EZngdcnMZKp/fmvCwyndEOhcwfOlEWqA029jezC1Gc3YbdmmMfvg+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678575; c=relaxed/simple;
	bh=X3JieKiGrbzpcpUf9dETjBnX6ENnEPn9ryahTm5csmk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ARF2btDp7SkB+a6xvpsGknhjGXctl6ad85EK4ywM9Zo7OUmoZ+n/0EAtVxIXrytxFwo67TJeGhowzp8ajYLOQ/RultMJ0ZAXPYmRDZin482qlyUuslQbbYuDPJOUOwG6RC6Wv3DS+XvBbCVf9ZwiEm9JmXmZwh86HYKCtHh3QZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cD52eMG1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1orTA031108
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TLYYOeSkC0vWS5m7p6WzBJHWogZZSLtvzFoDMbjU4tU=; b=cD52eMG17louFCj4
	XFeCP2I44ENLWbYrgeNJSGdiCDQXfpKOnNE8nl3toli6pW+VEj4EZA/RHBq+o56Q
	OY1QZQcojyO/9V1mllCXmPtVBcQkIoj+dtDHmdC4Av3T+V/CDaf/Y8wehZJSS81D
	B7X1aP8dpnu4Hm9UWkpFOTe2PyRxTPOoex3QddzfhVaC3AotBHF4InbpieEp8J43
	ud+QGgwlzSHLTVWOjCAB4dCVLoQ1z9aAIkWLcXiJ2B1+C0to/DklgTmaYzc0sJg/
	+D89KKnIXpWz0d/cXyiLPjpXesSlI94LzpRVErEeOxjrlIHNH3Vvj8uaMy8Q6zBj
	8VMDLg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dgy6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581c62faso68104685ad.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 01:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755678570; x=1756283370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TLYYOeSkC0vWS5m7p6WzBJHWogZZSLtvzFoDMbjU4tU=;
        b=dvb6B17TXUxPxA9e2l5hE+/+a9x7uZUjA3LwGAWwZYR0yxFfHsw8G0dEgu+XMrAgid
         ybkWl0W8GgGylMGrTXdR3ykM5Ee6xt9uqluQ+zaAFkw5GpzWQkjgcsaC1zQ+UT0qUMyf
         RHYer8cF63o0uFi7Sjv8Ks3yeqebwr//tb1TbOlcbvNQCW4rO4UEhCFX996IJsfNxbY4
         /9jBumR6O89O9wyfnqJMHr9HZ1h4MUIxYB2Cv8pGxIAHKm0xfcwfDM3KBKw2aZ8GDr3L
         hfO/tgCvlgXTLxFEvsKqzNQKv9BJ1VLSsy/gEMv8BjVeweq/MYjatvOWBkOUcSl5oH8/
         v1VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWp1hDmEQV5xRktygXVcfg5t9Cd7JBRVWFGVMB/cBCCXBf3TpDTxxIJ3A76p3opng9jsMjKFZiF7UEe@vger.kernel.org
X-Gm-Message-State: AOJu0YxDfZRkdhVR8HMzqXyfjFL/dV/AX6JXH3RPQGC5ciBrUOMVH++X
	HXG9+h5xDfPb+PxA04TluMsFfKyraXSAyApdzfl1aiQH9Iub1CDutT2nqv0D1h8v6FxBxAiH/SW
	niM2ADo6UY9b43OA7n6tuuxJ1BmQGoQf22b5xYtJFZKVTjEDXIF7a/Q87WvD8mguj
X-Gm-Gg: ASbGncvGIe7V+LhveLtCBLAS9wWr8kw4W22D0SmuyNPt7DvSvXPJrhvhVq/1eSb1rF9
	BGQT1dPt0fnFH3PvIfbuP7ZEKW2WjLxvxut5JVCb8NQcAux9nFhGZabs8uLyK9Uz/D6XSHT1I1O
	vX67HtP/uQttjrUTA0RTL2hNX2g/WOmL/QGZpU4wO8CY0A66e++SCUh8zImJ4wRIl411JnbmwkP
	TgKepLBejVqhgcDHDrUauKf4rRYZuELZSVmmJfZmgCsImsGkdvoKKeOBFbMAQc4c2uRnIb9mDsq
	JzlVs+slnjTAYCtsWlwRnmUYthf3a2fHqLvESO9PIzeY+5TjCnqSIktqvZAzcODkyb26VTWfQSc
	=
X-Received: by 2002:a17:902:d2cd:b0:240:1bba:fc7d with SMTP id d9443c01a7336-245ef226c6bmr25534755ad.33.1755678570211;
        Wed, 20 Aug 2025 01:29:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgFRO4SFI/az62W4NvsRPK8ThASGxzV98yrYTSm2+Cr/JT9TMlIljWBDyHFZaG54Wx5AyVeg==
X-Received: by 2002:a17:902:d2cd:b0:240:1bba:fc7d with SMTP id d9443c01a7336-245ef226c6bmr25534325ad.33.1755678569736;
        Wed, 20 Aug 2025 01:29:29 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed53e779sm19037735ad.160.2025.08.20.01.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 01:29:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 13:58:52 +0530
Subject: [PATCH v4 6/7] arm64: dts: qcom: x1e80100: Add opp-level to
 indicate PCIe data rates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-opp_pcie-v4-6-273b8944eed0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755678529; l=4392;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=X3JieKiGrbzpcpUf9dETjBnX6ENnEPn9ryahTm5csmk=;
 b=xCM0+u+MtriiF+Ee8OQ6M3MuLmsOxCxVlto5TNAerliX4oV74o2Jmi7DMZXMx/MEO8Pj58NKb
 dp5DSPx/SzSD5OnDAAY2oXg8Nijve//7z7RLAqz6bOVc+WOUWHXf2xy
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8Zwx7zJ1OHFo
 YL1S4FKuiEdWV8/6QnQJ19heWDS4HXxiESw7Padsaq6YiFvv68bjtqs9XaW5lGhWD6FaSSuCHni
 8SPQN5+7vYFu+bJrev8Vf3iErTiiF3IbauZ039U5quqOPeqsDiAJZtF6njA5w3Z2BOJtmSz9giF
 bDLwH1CmiSjfYKDG4Cf/Eqw3W+Gf6Z7l6GiU0axGCpKUcZKih0ljwzB4Hs7uLhtdgm///QHUThH
 BWt2uwiWeo6DLEyEhwaFvqw0WpEQUd8B9z7eJAri9fBDqXHhLQA8NIPymNdo+vWd2K1VQfx3PFN
 /oZtKX88WbQmQ1aZDjcafZSADOiXGGDivXuV95hn4PE9y9RyNdruGitnGrgRi7TZtnslgIamZ4f
 t7V5Lja4GSiKL5eXx4bflQCyaeuIcA==
X-Proofpoint-ORIG-GUID: 0oX8SzEkL1yEVbiCmzD6mngF8-3ZDIhF
X-Proofpoint-GUID: 0oX8SzEkL1yEVbiCmzD6mngF8-3ZDIhF
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a5876b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=xTuWgevKKEmUOcCBws0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add opp-level to indicate PCIe data rates and also define OPP enteries
for each link width and data rate. Append the opp level to name of the
opp node to indicate both frequency and level.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 90 ++++++++++++++++++++++++++++------
 1 file changed, 74 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a9a7bb676c6f8ac48a2e443d28efdc8c9b5e52c0..6644017132bdd7677dcb4fccf90b1e5b36326647 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3237,73 +3237,131 @@ pcie3_opp_table: opp-table {
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
 					opp-hz = /bits/ 64 <5000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 1 x4 and GEN 2 x2 */
-				opp-10000000 {
+				/* GEN 1 x4 */
+				opp-10000000-1 {
 					opp-hz = /bits/ 64 <10000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <1000000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 1 x8 and GEN 2 x4 */
-				opp-20000000 {
+				/* GEN 1 x8 */
+				opp-20000000-1 {
 					opp-hz = /bits/ 64 <20000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <2000000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000-2 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000-2 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x4 */
+				opp-20000000-2 {
+					opp-hz = /bits/ 64 <20000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <2000000 1>;
+					opp-level = <2>;
 				};
 
 				/* GEN 2 x8 */
-				opp-40000000 {
+				opp-40000000-2 {
 					opp-hz = /bits/ 64 <40000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <4000000 1>;
+					opp-level = <2>;
 				};
 
 				/* GEN 3 x1 */
-				opp-8000000 {
+				opp-8000000-3 {
 					opp-hz = /bits/ 64 <8000000>;
 					required-opps = <&rpmhpd_opp_svs>;
 					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000-3 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x4 */
+				opp-32000000-3 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x8 */
+				opp-64000000-3 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <3>;
 				};
 
-				/* GEN 3 x2 and GEN 4 x1 */
-				opp-16000000 {
+				/* GEN 4 x1 */
+				opp-16000000-4 {
 					opp-hz = /bits/ 64 <16000000>;
 					required-opps = <&rpmhpd_opp_svs>;
 					opp-peak-kBps = <1969000 1>;
+					opp-level = <4>;
 				};
 
-				/* GEN 3 x4 and GEN 4 x2 */
-				opp-32000000 {
+				/* GEN 4 x2 */
+				opp-32000000-4 {
 					opp-hz = /bits/ 64 <32000000>;
 					required-opps = <&rpmhpd_opp_svs>;
 					opp-peak-kBps = <3938000 1>;
+					opp-level = <4>;
 				};
 
-				/* GEN 3 x8 and GEN 4 x4 */
-				opp-64000000 {
+				/* GEN 4 x4 */
+				opp-64000000-4 {
 					opp-hz = /bits/ 64 <64000000>;
 					required-opps = <&rpmhpd_opp_svs>;
 					opp-peak-kBps = <7876000 1>;
+					opp-level = <4>;
 				};
 
 				/* GEN 4 x8 */
-				opp-128000000 {
+				opp-128000000-4 {
 					opp-hz = /bits/ 64 <128000000>;
 					required-opps = <&rpmhpd_opp_svs>;
 					opp-peak-kBps = <15753000 1>;
+					opp-level = <4>;
 				};
 			};
 		};

-- 
2.34.1


