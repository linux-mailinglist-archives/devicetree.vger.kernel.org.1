Return-Path: <devicetree+bounces-206739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 902D9B2D684
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5D921BC1FE8
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B872DC323;
	Wed, 20 Aug 2025 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="APlLwN5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522A92DC331
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678563; cv=none; b=NlIArjKqYidSe9p5uCvnVlsu4J1ezODvxUbTRbhs4+qCjDcpIDKKZoHccJ5PVvTL0ntiwDsy0UpmTt7QQRl4VZSc2KqwLUJaekL9T9EZSGfEnRWYI05o7v/AClrEzPOJFsCBVbbLkvnYqLEKRgW1qSfZiGYFtgzs121NQkPOVE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678563; c=relaxed/simple;
	bh=RCqLqzAj0VbpAlvyc8i8vBnL4zMGPgKy7ycod+X79zI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XgDr4youCRU8pLfv7F53yX1tuPd5bDOjT2yF4WZ/fnT6lqw6Iv2NrtLIR3UgNmJOBnJGeJeT5howHM2dKaeIuzpV6cOgU+Y1bXA2x5QYr8rUVRYPj166Sbs1KgLmX3d+Q1j30qzmpTIujeTdYxJM0F0A/KqODKkkQ6mo8O2R0D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=APlLwN5b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1pDud031596
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JJBFPCt+L+VnPnU7H1DGRHxwQbocBi4RyukAe2zpcSA=; b=APlLwN5blKMPb1o8
	SBR515M+e3z6V4MqnG9qvl8WWgkTlMYz/JHWI6dBW/BJYKNPnzHcT0jdUDCW0Rdk
	81gtcBjKNGsBJ6TIo/bL6bnMZIvARlW+j/aXQs+3SaAMORSQw79dJUf3VUfTVYJD
	dnCB5jdz85QiNu2yvtRNHRg2G03wehAv9ID7lDD5DthEtxADlhSyipr2ipZIjp9Y
	XqNul/f3+G1ydSYrpLpZr4Bga/Pb6zQhD4DsZAE4iGmJXufpYCaf9pZjwlYZb8wr
	WakIH0yyFp58zYTIQnbmMk0tmKuu1PqsJQ+8KThjSp4o8b8zonUeO3mTsuaEToeY
	Zkmgfg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dgy5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:29:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581c62faso68102185ad.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 01:29:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755678559; x=1756283359;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JJBFPCt+L+VnPnU7H1DGRHxwQbocBi4RyukAe2zpcSA=;
        b=Tntss0k5JLm2pZiEoW0iycyNN/VBfj+fdmUnEpl2yZsmNwqSwi2WmvqT06bo6QQy0n
         zR1mikCHogdj+bBhA46VtIxlxssJlxin4FseF8VCW/DY3fldh5uL42MCV4jTfh79KnoU
         yJVGCnNatkZWTDbKVCSnWalKC2SC+TOoACVwIROpvDMxrR+tZZHNSQHTEVIo9+bMsDef
         NcsMzm0vDipuuif2GoXCYvnERpLV++7UttebVzi8eUzEolW0HarAtJJFKNevJvP1HDhb
         uYJnw6JTgyfQqpVOpwdHlKAyWucJiNLGmBYfzzGfRxUN4A5WK1en8d0cR1kvMCvYxMVQ
         jObw==
X-Forwarded-Encrypted: i=1; AJvYcCX6EOSgUejQiA7uhCr90spiXu+HIWivdPTnqh4Q5opg9wy29p4MRZ+zBwjXXIwBMU063SX6NbKPifw0@vger.kernel.org
X-Gm-Message-State: AOJu0YyFm0ov41w+T83rMBZKwG0P3dfnwxM0J/FyMrsVMohiR+I8888f
	BmKew16MaLJQ4bKtWofb61X6abEivla7Fu8HJc19l1Ku3U12pIc/KyuOLjCu/48CD9pPGs+MDRg
	U2Bkr/07pgJL8Z0LnyKiqyu5gSfcU7eSGcJ2A71dN/Kfz/eZwGSiVyUWle7/X82ls
X-Gm-Gg: ASbGncvIrSC7Yy91sPrL2QcJkEYDhrnyOrPYcZgKEJ734MCAhfHhnm0VOODNLvgACBz
	EaDbpoLrltoftWNo5CYmYLDp9I7X+czDXby23+K5Dn0tgdeUlMVdRpzMj8aCwuHbplWymKw0BR9
	dfEaHdJ/d0f61zOMkA72nFIZUshDJenPV4GmTc0JorEgq5hj/s1Lps83oljRt2CxNauSGQ4+zCc
	bPXfBeOtrUwGyhEuv5j7yFivA0DbQ8egX1YRZvc8DDORT5Hh92LS0RrHyxafyBOZrPjUg00jZ6d
	kmvPgALbQ4xCT15lGFkCgFuRMu3/rEcbkN3VCUV3G/Vbbg4Jc98EzqNyVC0XzlIdb36DVmfPWUk
	=
X-Received: by 2002:a17:902:c950:b0:240:3584:6174 with SMTP id d9443c01a7336-245ef1557d1mr26588325ad.21.1755678558856;
        Wed, 20 Aug 2025 01:29:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2FNLCe31c4QhhpjPtyR62p+yyy0HN+CAztXKtXBb/uTVv/7m1TwUNP0egRlhYzKGL2hQPuQ==
X-Received: by 2002:a17:902:c950:b0:240:3584:6174 with SMTP id d9443c01a7336-245ef1557d1mr26588165ad.21.1755678558413;
        Wed, 20 Aug 2025 01:29:18 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed53e779sm19037735ad.160.2025.08.20.01.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 01:29:18 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 13:58:50 +0530
Subject: [PATCH v4 4/7] arm64: dts: qcom: sm8550: Add opp-level to indicate
 PCIe data rates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-opp_pcie-v4-4-273b8944eed0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755678529; l=3994;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=RCqLqzAj0VbpAlvyc8i8vBnL4zMGPgKy7ycod+X79zI=;
 b=L5GD4S5OqH9uGalT9rHWcMkO5a+pC4X5lxTx1KJMhz3RMeEGQLlfog18M+QxVjbG3SoCXYy6K
 3NhuUQzWlP6DJhMbNAoCuVzzrYhprt68D+hFNIDn34vIqlRQmH916Vz
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX7Eped9Vj9IJ9
 ym96e6zulpUv1TDQyzIzwGvBl2d4m8Tx+kHeJEkQdvd2vPp42cIEPvtS83N3GSxJP4gEiIfPzIP
 YkAUKW386oPM+0cSOfmOi/Alngx+m3KcF4u6yzWnaqRisoaZvZbXVWv3Qvuyz1sbPt2z48mNMkH
 XhfRLeT95niqbYhvpHD9c5NsYVzsfg8JB0jyglOZYRncbx6Q1/xC+iCEht21h+JbTDETK2JF+mY
 ax82hCD4wN/+f2h1LPCN6oDT0H9eewiUmx10K/BzGbT36zdr7Ivi+UlroJUxh2QtspZ249FRqTQ
 rxdLsWbTmAXb5nHqU3ir/5dYMH1fPDl0XkpRYmXVab99INb6L7HUnaHUSttqlaAdwScW2/MC4Cg
 1nmIFsxaodY/DaAiSTzpWaYNnkPupQ==
X-Proofpoint-ORIG-GUID: LUnO7gRt5EEIVxV2Ey5eqGcFgEYsL9R1
X-Proofpoint-GUID: LUnO7gRt5EEIVxV2Ey5eqGcFgEYsL9R1
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a58760 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=qQkGquXN9PvF_GGjQ98A:9
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
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 63 ++++++++++++++++++++++++++++--------
 1 file changed, 49 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 45713d46f3c52487d2638b7ab194c111f58679ce..c51489b5cd8a5e73797f9a4381bc7588259a8bf5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2028,38 +2028,51 @@ pcie0_opp_table: opp-table {
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
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000-2 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
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
 				};
 
 				/* GEN 3 x2 */
-				opp-16000000 {
+				opp-16000000-3 {
 					opp-hz = /bits/ 64 <16000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
 				};
 			};
 
@@ -2195,45 +2208,67 @@ pcie1_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
 				/* GEN 1 x1 */
-				opp-2500000 {
+				opp-2500000-1 {
 					opp-hz = /bits/ 64 <2500000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x2 */
+				opp-5000000-1 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 1 x2 and GEN 2 x1 */
-				opp-5000000 {
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


