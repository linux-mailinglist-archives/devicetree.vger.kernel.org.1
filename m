Return-Path: <devicetree+bounces-158578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC21AA674FE
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:26:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D01C18946DA
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F85720FA83;
	Tue, 18 Mar 2025 13:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljnAu7tx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838E420F095
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304166; cv=none; b=WnOS/mW8FNr+mfbccV0ehAVSzOD9poRnkVsRzQa5fSqnznF3kjmL/+kpq90N4JYYS5ECvqf6c3bY5IOf0oJq4U+404akY8t/xQIt9csju77LBn93T3V0ABHOe6HS83D3qVN2SIC9rNzjU+uHKavKvRc8/Tzh0Xx9PZdDt8mFHTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304166; c=relaxed/simple;
	bh=YYmo07roKcW7ib7dlxEqOnCz38XSWKk8QyvkfSaIp/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oJnEh5WxDKSNNwMEmQQHUkYPIyZxus09jD1gJR8d9SVwAJs8A5mZUFHfjcFXOTBa1/HZhWKMriLMjOvOiq3PIFzNwId0yirYTK+0C+yOM1xoredDn+M5R0GRo3vdB2SLvd7mFbmQ2ziNL7k8oOFvI3d+wK6hKQJbLiRGIjGVpjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljnAu7tx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I9kYJJ021228
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rV1IlqnHQ/o0RgJA1eBMQdA9vXcN4qMsDFTtrI79Z6Y=; b=ljnAu7txJ66WqqTM
	V0qJfcvAC9VpkTlWfI8L5i02WfpMIBN8s7eBwzNHS/Kmj7nKO5XfdQCseY6+C75Q
	oICWB3uuFf/ufluwrbzF40xFhilu2pCi9X+xo/Xi+4IgnLsxBuWJUcZbWKkfoupZ
	y22q4gMCRgOztpmOgUKlN20cV6/HSFcjMCJiofKCOtoS4nHX0kNXAqN0vqu0XzpP
	/TMmmkzA5SmSUR/UacTi2qWfRZ4ATT7nD7CUnPylQ273KZweVi/j02MJui8wc3nj
	pxtK7WaQrGe6/PvOXC3MNQQZzn+VKY0jZv8pR2XCXh/+ZUWYt5mKJo7NeTcVHqgC
	ExabAw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1x80eb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e916df0d5dso102010366d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304144; x=1742908944;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rV1IlqnHQ/o0RgJA1eBMQdA9vXcN4qMsDFTtrI79Z6Y=;
        b=vf25E0Tw2XN4e4hzUvAbqN2tugmH19txvHoast0HRHJhmkXHl0K4tjlZA+dUGu1c+a
         P0S9G7RTYcYtk6KVNARVUF5s1lmFeR2yasCZZTTZZ6+LM3xkVVTh49Ul2kLmfJt8u9PF
         w0UafmKEm0eyDFwWhBqSLwjo3PiuQw5BpSjEa+7O1a3e49w3Jil2AXdSLKyltfSAtmXu
         ZB+iI1hhS/EhicNFTLlXQQkHd/5vD1rYC1wXH5MLnIXZWkvDV6QR/4cysQAB4NA927sL
         VoRxIn4v5veGBhn+GjDFgGzjX9J2+rxW3yEj0DavjjAEG51ITtPasKo6yKtUOJZ1w1Qj
         5isg==
X-Forwarded-Encrypted: i=1; AJvYcCU2ju+ge7pAC/WJW4zqrGR/uo7fc4mkFOX9SpvICh6IK3M0mXMnzawP4VFalJ4q4fQnWIEO0ILLwGhF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4p596eHrNfIZanQe2o6zUbDtSNXyMbxxqnbfa3yYzkiK5JBHs
	/iF3I+Kt3N9UlkkO/tW9mw5mJh6L5JCI98ulPh8JSgsEMAo/bHwZp9wifvOCiS2lDB7zR13KKhq
	tHPK/ZEcf+c0XtS5ZCNyHDjxL/NdwzNLS7Uu6hPmfug00TPOAOkMuXFqxdPqT
X-Gm-Gg: ASbGncvRLw0QnlJNYoFAezAyb1XlZ3h4i6Ss0KERyVwA7qyu9k5/zSMj4xbKVXN1ocy
	Y3woX1SfhfB5V8fwUIDoFCUEe4qYMHBARk8BWUhDpwml35UCof6HNLidsHMggGko7zLZz38ofnt
	QcY7XCLoiv22ddrBrq28q61lU4mVo9CpRO1ZvwkhePtbnhL8jzlWSUk/cO+RKNH+HRhD3ydB4YS
	64LgHYpw7RcaJ8P2VaQ1ZF2CdWVBeTNeAZNhIkBysZOPSN5HljYn8ppe9wn3ILz4Cj/Ssv64S8U
	t5kyEIqP/3kELfeUn3ymLH4wnwYgvUI24fl9Ms3gzsES9yxUamOYcAeWlYNZgW8bptemTaE3X0c
	F9QcZc72VwfGB4ND71wmnMXes/T42
X-Received: by 2002:a05:6214:f28:b0:6e8:e828:820d with SMTP id 6a1803df08f44-6eb1b923b9bmr61022686d6.36.1742304143830;
        Tue, 18 Mar 2025 06:22:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFT29uNdkPTC8hLiSVJtVNM0J6OKkSWUgcwgv9PhSfYfcfwdVm+rFQt8CN7Y3i8guabZwOiLw==
X-Received: by 2002:a05:6214:f28:b0:6e8:e828:820d with SMTP id 6a1803df08f44-6eb1b923b9bmr61022136d6.36.1742304143454;
        Tue, 18 Mar 2025 06:22:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:22:03 +0200
Subject: [PATCH v2 10/10] ARM: dts: qcom: apq8064: move replicator out of
 soc node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-10-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2350;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YYmo07roKcW7ib7dlxEqOnCz38XSWKk8QyvkfSaIp/I=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/rN4rJlBtasApm/mjKF2LnuXGs4qqIg9kD3B++9H/NTh
 TI7ztl2MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAi13XY/0dW7P1w8e7+Ovf/
 ek8PxHXZybRLznNQdPzAsKfs4O6o/dJC2q1KC7j2sjc+eVTZs2Se+R6tt9nT3JIDTgQwB3cWO4g
 HngxSOO73x4xlQtnq+qmzU0RZjPZvlLm1YwtLmxfrm9nVzNrlEryTFblrP5XyV0yJ6RCbb8ZWPV
 E42dX+xT7eM8nhMfbyL7m2Gt7MKJ2t+yGCR1bR8RTrb643Xea5Zwt2bg90VRTaERjpK+3dN3NuX
 NiNL/frDnlrtJgf+uX78n4E3znpEP+lslGzFh65wSq489v8+Nbs7IBkxmsdKzIN/DYfK1yzaJ6E
 3xK99EtqpyewbE626Nhy4ppY8bX/uxc4iK+Zs2H/jFuhAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: -gPuDe7XTH-irIe3tsyWiPCIKiLNQfZy
X-Proofpoint-ORIG-GUID: -gPuDe7XTH-irIe3tsyWiPCIKiLNQfZy
X-Authority-Analysis: v=2.4 cv=Jem8rVKV c=1 sm=1 tr=0 ts=67d973a3 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=LFh-nz-jDHZ_m6HcgWkA:9 a=QEXdDO2ut3YA:10 a=B72P2sQ2WZ64KWKWCyzG:22
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=893 spamscore=0 mlxscore=0 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180100

The CoreSight static replicator device isn't a part of the system MMIO
bus, as such it should not be a part of the soc node. Follow the example
of other platforms and move it out of the soc bus to the top-level (and
reoder ports to follow alphabetic order).

Fixes: 7a5c275fd821 ("ARM: dts: qcom: Add apq8064 CoreSight components")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 67 ++++++++++++++++----------------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index b6533630e347c8fc5e3f0791778cd05760b3f3c8..b02e6739ccb20a287095d8c3e212040e4ac50fdd 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -278,6 +278,40 @@ scm {
 		};
 	};
 
+	replicator {
+		compatible = "arm,coresight-static-replicator";
+
+		clocks = <&rpmcc RPM_QDSS_CLK>;
+		clock-names = "apb_pclk";
+
+		in-ports {
+			port {
+				replicator_in: endpoint {
+					remote-endpoint = <&funnel_out>;
+				};
+			};
+		};
+
+		out-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				replicator_out0: endpoint {
+					remote-endpoint = <&etb_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				replicator_out1: endpoint {
+					remote-endpoint = <&tpiu_in>;
+				};
+			};
+		};
+	};
+
 	soc: soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -1529,39 +1563,6 @@ tpiu_in: endpoint {
 			};
 		};
 
-		replicator {
-			compatible = "arm,coresight-static-replicator";
-
-			clocks = <&rpmcc RPM_QDSS_CLK>;
-			clock-names = "apb_pclk";
-
-			out-ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					replicator_out0: endpoint {
-						remote-endpoint = <&etb_in>;
-					};
-				};
-				port@1 {
-					reg = <1>;
-					replicator_out1: endpoint {
-						remote-endpoint = <&tpiu_in>;
-					};
-				};
-			};
-
-			in-ports {
-				port {
-					replicator_in: endpoint {
-						remote-endpoint = <&funnel_out>;
-					};
-				};
-			};
-		};
-
 		funnel@1a04000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x1a04000 0x1000>;

-- 
2.39.5


