Return-Path: <devicetree+bounces-199431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8415B10A0C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:24:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 469275A265C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653952D23A5;
	Thu, 24 Jul 2025 12:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWm3Wxez"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA80E2D1936
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753359834; cv=none; b=RyNgFO63RXath4TQJJAe066RGfSs00tgx4AcTcnG0yBXz0HcJuuOtjnahZaj+7hxvA3XHhR5fOTnFH/hu2XsT3wsqWBSmn7wDXiB4tweycaGcz2BiURJTsyMjFdgfS6HBi8w8mGZfcdZabGUo430HfI0+fohDChsegdzih0w1W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753359834; c=relaxed/simple;
	bh=t1fsoomQTdKHmSYf4YNAzfz/bTh0dXQlnOCdV3nTZWw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bhSPzZmdHvBM/z83Sbt746IRctUOqE/U1osQuMz3+5twu4NN01KW9fW8xcUOtyM82yGypp/vp9g3Hm9rfZsN3gprlsu2b0z1K7f3BW8XwMdmmGSzMOqrMbbHjKoz4ENkEAEiUMysmv4RGYsPVjunhIZQ7OBedqnqgw4F5TZcYVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWm3Wxez; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O6dHIA026719
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mrBehtJzY/E8cbjcCxObAePzEBB0bFtum/6QBLPRm1Q=; b=SWm3WxeztrB6nlHE
	UG9jowCJc1VqhG6aGoYcxlgib2v3V6v/OTaftCMoH4RJCw/5ZxzteeHerhOJVrZt
	Gb8PCKSrggYl8XNa/uaaBl86DN18bAWEr80Uz7sUgXibbbPfsd7YdcDyauFSJnrm
	wLwK6Opx1jWSSpIPC+kAaTy7jjHevcI8GC9mRDmMsXx/LmxqcmSfbltPKCWSzJC6
	SnXGkX7/l7CLZznaDi07Sj2vFEGkJfGmBrEYJAv0PQgCUxwHx0jav2Z/nUPGULRM
	QMqkblYqtzIoHeKYAloZ7b20/h/A8WD0HqujBS/ckHD4k/87XLE6I9QB5/PeApbp
	PgZU6w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483frk10e0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e269587d8eso174159185a.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:23:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753359829; x=1753964629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mrBehtJzY/E8cbjcCxObAePzEBB0bFtum/6QBLPRm1Q=;
        b=YL49A+QoUGzfqCW5h6NoDDAdHMiEp94rM/iZlYsrkn8eD3Oy8Prj2enDvazcJ8HXof
         gLZlylUMyYHuS5080EZgRwIkRxhwrEAYT2X9LHmSaDK19lEoF0G8F4qOqTkxL1RnP6V2
         ZEjIGySPKWLFzPeoS1A1H/umAE0Ibw8rJewoKd4g11ebLXZZFHJgptlKHRqlGUCzWrsP
         L3g43hf0btJK1hLIIvmXfr+fMYkYRBXgzv0Kkag9iXVdYUYTVRioFRbiKl2/R2Xsu7ix
         VYPJQTLUx7tdf0sx0IULc3VsR256u4i6r5dmzal01h64K0O7Hf7mq/x7l2fa4o8TMoJi
         20Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWXdIQFmy0RNXLo/QZtIb3/aZCEl9kG74TDLsqNpyXEBYMqBHrZjfPzjhvPlny9DcqQ1ZQTGofa8xLU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs0d7sZimh3pkWFQG/fabDyKSZKfyQkD0JnNLxHPdR8xiDsYua
	HaNAUKUsgi27AwilUYLYvvRyk+ONXQDu2FiJb6DTkU1yXo/1d2NwPEBrk2In3OJbGn9O/TJ7K4e
	G57GG+m7OrCGqr66YBnv/NcddtB0AG7ADHU3CgFIo1CGimWAKUSrjIKqlxWAJdB2W
X-Gm-Gg: ASbGncu3iJ+6gaFKnqd9Zjnkac31EYnWhGJT7Vy3Pfh6s3CUiPSDGkHWPEHb+NBQfnC
	RPsWdCq3O0Q5uOW/Z25JU30SxDUxEuWCL8NbmyJjMTTPzZTWRYP16aF5zCDCn/ZnE61gv94EWEB
	x3C+NXrPT1v7ZGz18V7WxSWx86Io37qDPskpxWyOdEvR7vQVLlTd+Kobur8kLR4BqRpYPBo+OMu
	dapDU1UnOFP+qAOYZC2BB9iYhW49gzUTddqqCVrW2DMbWp+iwXOGp3b4zXRFbvJw9X8Q61irSV+
	zKyve4glMe53binsQjV5dvLi24wCj7kRdOp6isvK/5aHs6aj0GXzK4gtKotrt17DAIkOx3gGCD3
	mcVdVDVn+AfVihWLdmyHuLRbBqCGhUJWWS43t98fZik61zTMbRciA
X-Received: by 2002:a05:620a:148a:b0:7e6:218e:ff2 with SMTP id af79cd13be357-7e62a1789femr609657685a.20.1753359829116;
        Thu, 24 Jul 2025 05:23:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsm5NDVfEGrqe2Xi+OqgOl+HBQ8Msm5qkz+/ct4ELlxn4Qw8w8TGfBwCuhKyruOT7ptUncZA==
X-Received: by 2002:a05:620a:148a:b0:7e6:218e:ff2 with SMTP id af79cd13be357-7e62a1789femr609652285a.20.1753359828439;
        Thu, 24 Jul 2025 05:23:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53c83978sm327389e87.126.2025.07.24.05.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 05:23:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 15:23:40 +0300
Subject: [PATCH 2/5] arm64: dts: qcom: sc8280xp: add empty mdss*_dp*_out
 endpoints
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-move-edp-endpoints-v1-2-6ca569812838@oss.qualcomm.com>
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7509;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=t1fsoomQTdKHmSYf4YNAzfz/bTh0dXQlnOCdV3nTZWw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBogiXPmL3Pgb3kEr/G9OsjUqO+tljyHFzYLCTbG
 2dc59s5LUqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaIIlzwAKCRCLPIo+Aiko
 1XgLB/9c07xGFrTH9NEkheQDPq08FKWHRYacEDD6QGUhkej42MgsJSX/AfIcWT2xsrxCFdC4Uv6
 7v2AZvYe5P3x8aKUaumyA9TG8g9lNCcSuUALoebGRykM9GcRrTgyNcTkn04p1txhyMjwLaW3ymL
 Obu0oyy7aQyee8rYtm/AqRgUy7S331j8ZdUevBdhR/IbIOFrmySinnkECSI+IMVg7gJLLZrHjuI
 EZ4MejTE6FSXMSvDzwQDj7FwfNLco3EFeo6UinIt8510oFitom2kfz171CAKUZgJi+5OceyOa95
 EW6P72rxt1aVZcvjO81IfP9eptV2pNOOQIQ37q/htds6XVpe
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfXzB78C8o7Oiko
 8dHvOVNdSAoBDspj4J/RBjFQ0WKfb9vM+nlVcUUyaHHBYInpV6zU/lMBTU08lobH7e6INkjgx8J
 f7nXR95s7LF6i8KfzWDSvrplYeTEAZN7qSgoFGzJSn9Xv4qz4xN7Z2+xz5wgxlLpILxEYrNKbGK
 geNKTonefHHAgxeESt20GYtpYumRj67vPy7SdtlaaWpqu7wD6hL3YNWswiUoRpPHE4B1pr4eMlV
 rxt1hKUrIkpQfJ40AFf7C6Xt4rFLbaTFqa4RxoYu0IBVWnJLjzWGnKxgJ8iy7UqBmL2SoyeQbbZ
 NyJbTXz8hvE+LopAdc9tq6mxB6C8gBjb3Gxri1ziQVluQGx02YfFv9RtT3B9HGzVSudYDPCw+IF
 KGSr48ukk6xZxxWaYViz5ktd3vvgrXbNJlbuf1Y9Jsg4K9+Fl37xAKVhLvGeAY/dVcf6vtVU
X-Proofpoint-GUID: spB5WPs41RHohRnmhK1pR_ByDYbetnEP
X-Authority-Analysis: v=2.4 cv=WbsMa1hX c=1 sm=1 tr=0 ts=688225d7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Jj94Sfu2rptiHS_jDOAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: spB5WPs41RHohRnmhK1pR_ByDYbetnEP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240093

Follow the example of other DP controllers and also eDP controller on
SC7280 and move all mdss[01]_dp[0123]_out endpoints declaration to the
SoC DTSI. This slightly reduces the boilerplate in the platform DT files
and also reduces the difference between DP and eDP controllers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts           | 78 +++++++---------------
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts          | 11 +--
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     | 11 +--
 .../boot/dts/qcom/sc8280xp-microsoft-blackrock.dts | 13 ++--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 18 +++++
 5 files changed, 52 insertions(+), 79 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
index 2fd1dafe63ce7a4f409d19946b9f10ffe324fba3..d5015ec4b23d00b5a51c81c99ea46f7c57c3fd13 100644
--- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
@@ -35,7 +35,7 @@ dp2-connector {
 
 		port {
 			dp2_connector_in: endpoint {
-				remote-endpoint = <&mdss1_dp0_phy_out>;
+				remote-endpoint = <&mdss1_dp0_out>;
 			};
 		};
 	};
@@ -49,7 +49,7 @@ dp3-connector {
 
 		port {
 			dp3_connector_in: endpoint {
-				remote-endpoint = <&mdss1_dp1_phy_out>;
+				remote-endpoint = <&mdss1_dp1_out>;
 			};
 		};
 	};
@@ -63,7 +63,7 @@ edp0-connector {
 
 		port {
 			edp0_connector_in: endpoint {
-				remote-endpoint = <&mdss0_dp2_phy_out>;
+				remote-endpoint = <&mdss0_dp2_out>;
 			};
 		};
 	};
@@ -77,7 +77,7 @@ edp1-connector {
 
 		port {
 			edp1_connector_in: endpoint {
-				remote-endpoint = <&mdss0_dp3_phy_out>;
+				remote-endpoint = <&mdss0_dp3_out>;
 			};
 		};
 	};
@@ -91,7 +91,7 @@ edp2-connector {
 
 		port {
 			edp2_connector_in: endpoint {
-				remote-endpoint = <&mdss1_dp2_phy_out>;
+				remote-endpoint = <&mdss1_dp2_out>;
 			};
 		};
 	};
@@ -105,7 +105,7 @@ edp3-connector {
 
 		port {
 			edp3_connector_in: endpoint {
-				remote-endpoint = <&mdss1_dp3_phy_out>;
+				remote-endpoint = <&mdss1_dp3_out>;
 			};
 		};
 	};
@@ -364,15 +364,10 @@ &mdss0_dp2 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss0_dp2_phy_out: endpoint {
-				remote-endpoint = <&edp0_connector_in>;
-			};
-		};
-	};
+&mdss0_dp2_out {
+	remote-endpoint = <&edp0_connector_in>;
 };
 
 &mdss0_dp2_phy {
@@ -386,15 +381,10 @@ &mdss0_dp3 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss0_dp3_phy_out: endpoint {
-				remote-endpoint = <&edp1_connector_in>;
-			};
-		};
-	};
+&mdss0_dp3_out {
+	remote-endpoint = <&edp1_connector_in>;
 };
 
 &mdss0_dp3_phy {
@@ -412,15 +402,10 @@ &mdss1_dp0 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss1_dp0_phy_out: endpoint {
-				remote-endpoint = <&dp2_connector_in>;
-			};
-		};
-	};
+&mdss1_dp0_out {
+	remote-endpoint = <&dp2_connector_in>;
 };
 
 &mdss1_dp0_phy {
@@ -434,15 +419,10 @@ &mdss1_dp1 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss1_dp1_phy_out: endpoint {
-				remote-endpoint = <&dp3_connector_in>;
-			};
-		};
-	};
+&mdss1_dp1_out {
+	remote-endpoint = <&dp3_connector_in>;
 };
 
 &mdss1_dp1_phy {
@@ -456,15 +436,10 @@ &mdss1_dp2 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss1_dp2_phy_out: endpoint {
-				remote-endpoint = <&edp2_connector_in>;
-			};
-		};
-	};
+&mdss1_dp2_out {
+	remote-endpoint = <&edp2_connector_in>;
 };
 
 &mdss1_dp2_phy {
@@ -478,15 +453,10 @@ &mdss1_dp3 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss1_dp3_phy_out: endpoint {
-				remote-endpoint = <&edp3_connector_in>;
-			};
-		};
-	};
+&mdss1_dp3_out {
+	remote-endpoint = <&edp3_connector_in>;
 };
 
 &mdss1_dp3_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 8e2c02497c05c10a3a5a43a6002467736a3b7f95..bcbd668f562fdfd3558e7138e98ba21987603162 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -548,15 +548,10 @@ edp_panel_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss0_dp3_out: endpoint {
-				remote-endpoint = <&edp_panel_in>;
-			};
-		};
-	};
+&mdss0_dp3_out {
+	remote-endpoint = <&edp_panel_in>;
 };
 
 &mdss0_dp3_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index cefecb7a23cf579b1f62ef6fccf9a27a6ea92ac4..0b479e98ba387de8e9d5b2bbaf43e2ed083fb94f 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -761,15 +761,10 @@ edp_panel_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss0_dp3_out: endpoint {
-				remote-endpoint = <&edp_panel_in>;
-			};
-		};
-	};
+&mdss0_dp3_out {
+	remote-endpoint = <&edp_panel_in>;
 };
 
 &mdss0_dp3_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
index 812251324002b50f3b48845b6c244f692d42b9b2..29efbef5ef69263e9a59a43e27d158ae8e793ab8 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
@@ -63,7 +63,7 @@ dp3_connector: connector {
 
 		port {
 			dp1_connector_in: endpoint {
-				remote-endpoint = <&mdss0_dp2_phy_out>;
+				remote-endpoint = <&mdss0_dp2_out>;
 			};
 		};
 	};
@@ -602,15 +602,10 @@ &mdss0_dp2 {
 	data-lanes = <0 1 2 3>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			reg = <1>;
-			mdss0_dp2_phy_out: endpoint {
-				remote-endpoint = <&dp1_connector_in>;
-			};
-		};
-	};
+&mdss0_dp2_out {
+	remote-endpoint = <&dp1_connector_in>;
 };
 
 &mdss0_dp2_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 87555a119d947dca75415675807f7965b2f203ac..421693208af0d5baeaa14ba2bbf29cbbc677e732 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4526,6 +4526,9 @@ mdss0_dp2_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss0_dp2_out: endpoint {
+						};
 					};
 				};
 
@@ -4598,6 +4601,9 @@ mdss0_dp3_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss0_dp3_out: endpoint {
+						};
 					};
 				};
 
@@ -5701,6 +5707,9 @@ mdss1_dp0_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss1_dp0_out: endpoint {
+						};
 					};
 				};
 
@@ -5773,6 +5782,9 @@ mdss1_dp1_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss1_dp1_out: endpoint {
+						};
 					};
 				};
 
@@ -5845,6 +5857,9 @@ mdss1_dp2_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss1_dp2_out: endpoint {
+						};
 					};
 				};
 
@@ -5917,6 +5932,9 @@ mdss1_dp3_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss1_dp3_out: endpoint {
+						};
 					};
 				};
 

-- 
2.39.5


