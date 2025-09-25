Return-Path: <devicetree+bounces-221176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB35BB9DA41
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9B971BC478F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B352F2911;
	Thu, 25 Sep 2025 06:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HDZJ2Jnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABAF2F2900
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781810; cv=none; b=HY8w5kUurfC4ujzdG43nWagwQXaoPdVn65nEx9l4kFC1TrxyH/6DDSIsJMMciHNT/7jEucFe6v/Q41ZHc5a0VdROer68bt632VQno27pqTWYaNK+IN6V2UPSIFjIJaE7vw5HsKPL6Qglt8/vkLCyqpja3I0ix7UR+12fakFCMN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781810; c=relaxed/simple;
	bh=xP3mwQRtUF+y7ngL4/MSOznuYxF3R1hx7J2yaHJ2mqA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U9T+Nqb6RSsfkM1W06wvwxDjXcnvBqpP+k8E12Ti38t+h4p0cGjA5FinZQCTlVJb6v4B/siBbn74GsjGtazVPMmUw9B7X0R/YcUEwgA3lbaev9AZbISO8/IOCH+4AXQh3t4SBU231/g4oDZMh7EiZJ7n4tNoGkTymAPMBn4+28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HDZJ2Jnq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1000N019923
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y+ym1GIkn6KQx+5G33RyPIpJNvqhHUVvcETu0uk7voE=; b=HDZJ2Jnq9rdYeDI5
	x7ay+diwF7nARlZCaiM4Ai4C69TlOUP1UkWZnsC8rdYASMOJWpTRvJ9c5VZBhVQ2
	8H8sbCvfs7AGC2su4G14YoNtpli465qcs1eeoYyG50+URGGl0t3hdanwK9sZWe9d
	lkl3pM8NOhRIKnWPgXCc+SvL1sSTpmIytIBk/EGV8WsuxGJANoMsG4SJ+r6igDcB
	O7tKjma1VyYMaXc/Vu+wfMJP8ZgOGJPDWmkxSBSsRnrPO0e3EtX04xQpNkDVFrFo
	HHqPLePnOezuJ+ZVc4NlMRnG1+cSUX9z01qv15XKMb8J7z8XRVx8vcz754m385nj
	LBKgrg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe08gw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:08 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77ec1f25fedso1063550b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781807; x=1759386607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y+ym1GIkn6KQx+5G33RyPIpJNvqhHUVvcETu0uk7voE=;
        b=edV37rgtgFp5yNQ6DrkC2Dftq1oV4jfYu5lQf8wUtso1cbHADxX7sFnWaklegfInRu
         GUNnjnaPql3eguNoYiAmwX3HktOrETJhr4LVO+wxSHTcyVjGqZIGSc/YAibIgpMw8Dt/
         bDNG7x04bkZdATEH1S8Irzg2CISkd7mXKs0IFS7f9MAd2UCpVW8WwQwcpPwXKg6w4PYe
         TWRR9OloZPcrLntOGaulipPw+BOQxHz0pM9/JgFsow5j6d6/SpDF8CqggaobT7ylYhi3
         OyOj0kZ5O2CP3xeD0kcXmNaVDH98OhXcxZ1NhYQD7OGAwvdDisWSy/XJZ913SynXoxVE
         JxiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVA45sbH1cZ9XX7EgQhIRoiDeMOqYBUp3vOYFbNy68TVT/SqH7qk53KfV3WC14nKERU8Y/Ko53yRPce@vger.kernel.org
X-Gm-Message-State: AOJu0YwNfP0ZjfsknY+9C7LIm00eXUAO0f6Kzg0WK7bb7WlyArz536jf
	yjSpEdo14mcbD+b2lFXmfK6n6BFegs5WGzFH1WIvysz+alcsqtdMOhS91AkyGr60dqwpBPyec1E
	uwJpX7rCjQyC7hqFoYGTJ8yHKNreP1rBzNNjs0lhD5r7sICgTRXvyrt6TTL1AwphA
X-Gm-Gg: ASbGncswquvFG8bJdpKggGA05WQBaMSPqqO+PJw/JsO8x3xnP8r46T3O58AciHwKh2a
	b2gNeCtyn5hvQwttF1peonZXRZwWCccM8sQAeOYviMwcH5hEGyCCrrUdLIPuFONhYjvQhXfbsgj
	LHUV5OdPlFcAZ1TPNCrmwvyYP4OxrIOSk3jooVOfpBPF8ZIYAxeKglxCbI71rL0asAZp3Y9lGa+
	iK/i6sRGY0szYOpjaIPoETIk0AK/kLvn9102VbCKt68vwXd9D21/nMGHRcEcGX4KiXGRNuMQreb
	RzlHTIJ6awBrIJndpBicmmFpEp722i24zqQJW0whQE6KblPkyEx0RmA4corL24dNQlkTt7sy4oB
	3TO6wZoedS73CFLD54Ti9UWBLvsFX9DxRcwMelYIQ3W8RNeXRv3SMJvXJiIvH
X-Received: by 2002:a05:6a00:b85:b0:772:40ba:61c0 with SMTP id d2e1a72fcca58-780fcdfd87bmr2805508b3a.5.1758781807226;
        Wed, 24 Sep 2025 23:30:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDyMWV3c4xqIYvQqjTD4r7ImNPNGXQgJ/3o978WKGnQC+yTOlVKlfvpDwMiMVxe5P+cZz10A==
X-Received: by 2002:a05:6a00:b85:b0:772:40ba:61c0 with SMTP id d2e1a72fcca58-780fcdfd87bmr2805486b3a.5.1758781806801;
        Wed, 24 Sep 2025 23:30:06 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:30:06 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:28 +0530
Subject: [PATCH v2 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-22-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: Qa6g2pD79Crc-6511-dQ_UTPVLLfAGfA
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4e170 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xJZpmU4_KKqDGsKAShUA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Qa6g2pD79Crc-6511-dQ_UTPVLLfAGfA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX1ZJsDrOh84ue
 M0Whu5T0NO+yUfDX1zRy9QGav2LGIiC62CZ3nPr9sr+r2R0aJGH/tYMow/WigGDtHHxpYpeP2eg
 n8mucNROHc8vVLwES+LQ48z1aYOaNM9Rr/9eEnVIlSdmuLIdb+VS8nj5JNrR9qK51/n90fVEqpr
 X6clBt5CpC8e033VA5Z4F4a7bAWAqt7mbbuYp4o7Xx+bUpjJkPmwnYHXsYXy3we93MybCyD6wKd
 RY1JgQhpKXnR9I1eeUPmLTiJh1AvJNxwwpvlvGpjhSYIl1CExwK+nyP8ahZ0JT0rCK44kG8VH8A
 5H0mNvtOZViRXV02TENcZk0SNEB5CEjEm6B2JjUDPv940tBQiG3V8wAi4uh41DUyObxJExw8S7s
 JsbKcV4i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

From: Taniya Das <taniya.das@oss.qualcomm.com>

Support the display clock controller for GLYMUR SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 986dc385200029071136068ab79ff8dd66d5284a..8a563d55bdd4902222039946dd75eaf4d3a4895b 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+#include <dt-bindings/clock/qcom,glymur-dispcc.h>
 #include <dt-bindings/clock/qcom,glymur-gcc.h>
 #include <dt-bindings/clock/qcom,glymur-tcsr.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -13,6 +14,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
+#include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/spmi/spmi.h>
@@ -2775,6 +2777,34 @@ lpass_ag_noc: interconnect@7e40000 {
 			#interconnect-cells = <2>;
 		};
 
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,glymur-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
+				 <0>, /* dp0 */
+				 <0>,
+				 <0>, /* dp1 */
+				 <0>,
+				 <0>, /* dp2 */
+				 <0>,
+				 <0>, /* dp3 */
+				 <0>,
+				 <0>, /* dsi0 */
+				 <0>,
+				 <0>, /* dsi1 */
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_turbo>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,glymur-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>;

-- 
2.34.1


