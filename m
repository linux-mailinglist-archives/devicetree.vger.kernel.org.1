Return-Path: <devicetree+bounces-243961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AC5C9EB78
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 11:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DE0A84E11E7
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 10:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941322EF667;
	Wed,  3 Dec 2025 10:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xscw3QVW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XlSZv4+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165A72EDD7E
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 10:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764757940; cv=none; b=hl12R6ix/NEQiNnRHkK8uUCzrTTWsr86LLTR35Cssjouv+6dNO3r/gcu2u2DpBMJq20sDbNgIwiXW7OI065G01OscspQuQNVwfw5xiv3Hpt4VeB+T7SYJymB7g3bUW7Vp7dRqB6cIqHJfKtiX47ynhcoqivx+kere6Nw0FX2+qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764757940; c=relaxed/simple;
	bh=t6ojKAJRe5gc/C10JlkUQRjUJgW7yOHaKBNTfKRlhuM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Ss+Wv6BIeTZ8yD5JG4YRknB/a+7Ffwrxvtf6staRzT43utRnMO1rsrQ3x/oCm/kq/MTy4npGhz+tg4e0OsTCdN7IZPYxR5QXN7JNgnhi8piyyQhbNMRCmd3aNZd4A6+gjfFLmRgsoLO7QRNqyikLLrG9Us7VpOzy5XbJh5mccxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xscw3QVW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XlSZv4+H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B33tuFt3194560
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 10:32:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ubvg3Utdp+RqIiDzx58hQS
	Mht2/N2N+4vCGVCGK+fvI=; b=Xscw3QVWjuDGnPvWUGs/UJNkWW1dPJfJ+ZBSsp
	fNHrbDmL4mE9KY6ho8M6oi0NY9stqZZ4+MRsAyoEMuj1vgMNzYXn3PSLmkYQ7iiQ
	Uai60J+INSOVsz7jErt2ZPE+SeAiH7Nc7+LUTsqwLNFXDUyNKNX5ISm53oShtz+N
	QVrT/6Dl6vbTFTqH6j3LSUw0q6WASgvsyRzBJyw6rBCYRVeAUyjTRBy5uGieDoDN
	/OXS6MMCo363LoQ7t0M963ouAVVoB+f0wmDwNukEx/1oe0F1SmK+xO1kpudljMiB
	hVo54OZUWnagarzpl5fRXKUN1OQek0WNNIvZ/rpSqVODcsTw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at3qjk026-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 10:32:18 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f8a2ba9eso114939025ad.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 02:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764757937; x=1765362737; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ubvg3Utdp+RqIiDzx58hQSMht2/N2N+4vCGVCGK+fvI=;
        b=XlSZv4+HElOUuV0bHc6jO9i4MKn4BC47FOFmoz17O9bZ4A2lim1nporucnB0JVth23
         eMcvTwrmHnAyzbYyQKucuZ8nKGAFtjT74bqL84fTPDSUg+w5m9Ra2vFYtklySODOqRTO
         Qwzqwhvhz4lLQ7lew4f1MLh+dPJKJ42CD7fkX6LgLL+KY4KfTSkTp3V9tJnGadYZWLGS
         SajRf3vTUSBlcEu3gUwnXe21oKYQHYRWAi0E91zWbQPcH5nxS0g2roASK/Yvr3cBCnFu
         yW+l9buo3I1rp9N9JNwsiD64f8tpimrWUIJcdUE7uIH/XOa81m06m2NLJXAIZZ8FzzAQ
         EB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764757937; x=1765362737;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ubvg3Utdp+RqIiDzx58hQSMht2/N2N+4vCGVCGK+fvI=;
        b=D+MCSrO6HsFaKGvwJXZyU4FCt1ZzYxPC84+vf5Nd+y9aHwGQEC3Fqpv4xC/XSRTxbZ
         bXzQbs40B9Cm0AaLaJ6pf9H/EmLZpz0LnUJ9I7y0POzRgt+FL6OnATwNr+UI1gIWyavb
         IzF9mE/Ot0adYe6hSDOAzoa6Xm76P1QDoouYkuOH06s0+DzrWSInBaLzj9LblafAMOvv
         2+5jv+yw2pWZyz9o6NHE6GujzKJCIggA24Q4hVGaaKTVAh0RsFibHntGuHBc8pzYzWU+
         G0YhqjKp0TXVy0NEGWMt1LIcae+CNcljltEOZOuv+e+dMWEFAlc3dn8KfqSnwXPbpARE
         nWFg==
X-Forwarded-Encrypted: i=1; AJvYcCW6fEN6oU4bdOQbZuReN+d8qVnlX90Uy8OoOmq5WWDeL17GLsBUtClAoZa0UK3NPXpS0ACcxNye+mxE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb553d8nZYnHeOFJglpP0qjttcHX4I0JgFJcOpeGCr/lTzsma7
	//1ZwrmXA8a5mMizHhJWB1Tb4wQdoAoLwmvZuSOHFDFfHvABGXZ8Dorgo8H2fuKbeXs/jQJuJ8d
	4XV5+0/D62+iMFppUCIe9i1YFf6K6S2tLyZnK9qLpeVbXYnI5UMUjl752cNxKXhQX
X-Gm-Gg: ASbGnctlAognY5gnOA1+aFUe7EVIbIxbRdKcE1YllP/n9496QU+Heg2O60cNMXURpJl
	mZcOwhKLIaAE85SdslSgENdUnV3R2aEN9JDg+s1NrN/g7rdyb7b3x6tkiltq7yTrqeajefySKGL
	e/zLdhN4GNah5f/Vr+zwNZo5RsG++41f5jWFzcruD7EwperkEeuZzcfJlQZQpFpoojrMHppo2dk
	EjN3ViMQkWT6Y84ZiXliLvH1DuV8s1q4tG487X7mRuRAQcAcLI31LU70yvihTqyB0Es6DPCn6yR
	32z8cPK5V7UI1pk8bauXIQtCcfi+0OH3XuOK9rZXlcDRX/+PJtEYt0o3aD6aZQ0qBlgX1f5bQIx
	JmuY3+IUfcKGznQhAl+5lsHctBeRbGg8DoA==
X-Received: by 2002:a17:903:984:b0:297:fec4:1557 with SMTP id d9443c01a7336-29d684c565cmr20261315ad.60.1764757937075;
        Wed, 03 Dec 2025 02:32:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0CxCXg/Sxp/Z8h5NWHvJ8e0rC9JWByoh3jci/8E+MG08d++VdGQiHvygk+uTPLlNPNp/bwA==
X-Received: by 2002:a17:903:984:b0:297:fec4:1557 with SMTP id d9443c01a7336-29d684c565cmr20260905ad.60.1764757936436;
        Wed, 03 Dec 2025 02:32:16 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce441afdsm183531775ad.31.2025.12.03.02.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 02:32:15 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 03 Dec 2025 16:02:07 +0530
Subject: [PATCH] arm64: dts: qcom: sm8750: Add camera clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKYRMGkC/x3MTQqAIBBA4avErBP8wZSuEhGiU81CC40IpLsnL
 b/FexUKZsICY1ch402FjtQg+g787tKGjEIzSC61kFyxEq3RfPEuer+EiynNnQ1SGGUGaNWZcaX
 nP07z+34dzLLiYQAAAA==
X-Change-ID: 20251203-sm8750_camcc_dt-350a8d217376
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4MyBTYWx0ZWRfX+WBQ7jt8sZFT
 T1L65YOfzmaQHXeGEtPQk0uVQW1OuUeWFe1evNobACIZs7yKhxyhhIDboW74YvYFINQkMiAIgOJ
 yR+cSrCXvv397XZcQjDGRvF27CMLatniioog0hLkp1xPnm04/x8MyFfuZRdCXgUZe/pIWRj+Q8Z
 p/68GynsOSg1zJsSXqQltU6ggLBDJbhmBdVVdityz31idpSPOZuAmAnT5z61GTIGtsv5d1MqZgl
 Pk/lnb+GNeLLPzU7VXJBnt3T8Ko0CNV6LaTiduGdhyG4zg+xDvMtG7d8iAgC/XOgkEfgYZeZFsa
 zzTDIR523yIXQPWfaJDFF18yn8vvPj5SjyyM71S+MxTrbXWw9cQ0rCrQrvIAd1tva7DJ7y4uXyB
 6sbBbD2ZHoo0im3B9qK4h8SAgZI+zQ==
X-Proofpoint-ORIG-GUID: aV2AJE5vMGjNAFDF3QrCiLp0GdVsK-T8
X-Authority-Analysis: v=2.4 cv=QohTHFyd c=1 sm=1 tr=0 ts=693011b2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Tv7FWnznUHrVCKwkyLMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: aV2AJE5vMGjNAFDF3QrCiLp0GdVsK-T8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030083

Add the camcc clock controller device node for SM8750 SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..f09cec6358806f21827e68e365b492e563c0689a 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2,7 +2,8 @@
 /*
  * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
-
+#include <dt-bindings/clock/qcom,sm8750-cambistmclkcc.h>
+#include <dt-bindings/clock/qcom,sm8750-camcc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
@@ -2046,6 +2047,22 @@ aggre2_noc: interconnect@1700000 {
 			clocks = <&rpmhcc RPMH_IPA_CLK>;
 		};
 
+		cambistmclkcc: clock-controller@1760000 {
+		       compatible = "qcom,sm8750-cambistmclkcc";
+		       reg = <0x0 0x1760000 0x0 0x6000>;
+		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,
+				<&bi_tcxo_div2>,
+				<&bi_tcxo_ao_div2>,
+				<&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mmss_noc: interconnect@1780000 {
 			compatible = "qcom,sm8750-mmss-noc";
 			reg = <0x0 0x01780000 0x0 0x5b800>;
@@ -2740,6 +2757,22 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,sm8750-camcc";
+			reg = <0x0 0xade0000 0x0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

---
base-commit: 47b7b5e32bb7264b51b89186043e1ada4090b558
change-id: 20251203-sm8750_camcc_dt-350a8d217376

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


