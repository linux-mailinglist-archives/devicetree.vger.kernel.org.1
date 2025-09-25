Return-Path: <devicetree+bounces-221192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A201EB9DAFE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C2DF2E2AAB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967052F8BCB;
	Thu, 25 Sep 2025 06:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WfpX62q/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC5C2F7AD9
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782045; cv=none; b=RLqgc57z2CVS5dW8gN/YPZhlc9SGsqCN3AEhGAesye6U3Pa3cQZRHkyHE0pWwseUgkTvtQrBA9obXZc+aK9yum5KXXWluP0mYBxl/bieWw6qvt7/UI2eGxV+ZSp5vaauGJDK11r+dTBqIsn26LUo4cggE1IPbIqy0PEX281I7CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782045; c=relaxed/simple;
	bh=RDdBDErVPYkb7kQ40hn7vPiyirE4liN5DKCLZ9h9OKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YDbymPTVLdaG779r07Hdru7NtEVHSSrqcCW4DXJp+9cjbN6mCNR3oPA1DrBhT0QHjg9Ui8meGN0xCqehx3SENRyjLD8o6EcG6Fi2jqyoLBl0f+RYRT4LdEd581HaBHsmGo7K6f6ZervyKDvBzeoBoN5HISYTwzsBQm6s1CPSlww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WfpX62q/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4adWS027863
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KPvdBTUqrNUETXTQBR3pTDVkd6wGbjn3B7OmL+KStu4=; b=WfpX62q/4GsiIfut
	uE+xpwlbsmoO9dtOoufieNFOXw//7IikGiemx9BQPxHgigzMzLyx6zesycWP/P7F
	j3qk0mmWUcd4jPouEqfBuRiUwvLfFeAoVayaihGH2UxyukRLbprRAeoUqUpDyG+R
	N+Q07r6V21Y8Z0Ir/KBuNxkEM7ygWmEXtlxHoD0va9KWYmTi6kkl3kYblTChTWex
	eYNBWr5xoj0+D2m8l2QP0tkgWjx5Gp392u7yjjGJsaw4xAf/wgVD9hoIajZZmnLb
	t1mmMxxLQA+Qy6PTUY91wnsD+Joi4GjqOHAlk7FFWCdZlRxbbF5xAnhgakVX3W9n
	Si/+/Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup08vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2699ebc0319so6599465ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782042; x=1759386842;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KPvdBTUqrNUETXTQBR3pTDVkd6wGbjn3B7OmL+KStu4=;
        b=crDEM+CX8Fx7ZOxIC92H7+1VQH1ty5Z7pIlGROgfQXW8I3QpLxtqoDtHEbDCyENcmK
         gZbNhsWgEU8p0kI79On7TFsrIGgm27RASK99+yR7D2Ll7WzJwPb7c7LaRmSfRTNIMi9F
         IjS1chIsN6601EwuVNHd7NxzO7shOzdukxfAoIWPBscIZ0LkkOGB0u8MHvN2e7hjnf8p
         8IVXUZWGGYWpm3vLAOCDNEdnIT4/EkkAqdmB/5h9w/8pwOQaOM33t0A83McLuK+/SeTo
         LEQV4R7YJOVkefiyADqyyA1UtzZmuNbIKa0wviMOJDUOBTvW3MbaXx103jwj6xR/SNyY
         kZ0g==
X-Forwarded-Encrypted: i=1; AJvYcCUHDPYW1pgDQ1F4lmbo2UedFwleiwN7bb9SQU9M5pqfA6N52RyNm+4PlOkSSI0GNYhd03dPeejEyUUg@vger.kernel.org
X-Gm-Message-State: AOJu0YxvCp0GfqeNca/UW5y0ZksUGk3grpfqWmANy4la8fq23ZFMEi69
	M63nig9EM9hWPyObplbwTfvlK7sXmUp9PJYklt0u9X8tHTYGLTqw7T0sBXWOFS0YO9UW8r6HvZR
	NSisJ8e0r5RRDmCXUo0m/ZL6JrD47vNvMqZ5TXvJnF9rdStWSYhQY62ykgGgUVTZp
X-Gm-Gg: ASbGnctLwfMmVSUUD7CE8g2A5xhKtECGkj8L3k5Xo1zTkTCsQ476/oqNcdi+wujeD7Q
	rNvVUf2J1i99oiW6bkdJe0eyHFh+HyoylccrqRywDCB6NxohGHkvruH7Zz6nzgpOrp48O1m5j9p
	vqzOYG7cTcrIP1yvyAVi90Y6ZmoQKNeBlT3fkwTmzJ3xlfEY1lFWb6LwdkqjdTo83YeWNblbxxC
	q9U7ICBDpviY5zUBGaOg/FHaJ7Zx/SaLcLFDqBWoaLH+B03v6NdgPMXnJvS/583DvS5owNivRHr
	TOoW3/fb8fOCFTrwh41TXzRhfzJIefOOdAAIvvEGfwd7TjMUK9HgjFW5FT0TzZwNfLEhjvr/9xW
	JrhxhaMfCTlCH8xpQeVbMJn3Fh+5Xqz7i620ke2ZIT+cxqMCP1P0m/jE4G5Ot
X-Received: by 2002:a17:903:320e:b0:267:c8d3:531 with SMTP id d9443c01a7336-27ed4a315c1mr26738705ad.25.1758782041962;
        Wed, 24 Sep 2025 23:34:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQgcgZDU2SunFVKkD0cHmqO8lPq32ZQY5YtfTzu7YAWS30H85HYs0CKzASqq3pi5ekw9rxsg==
X-Received: by 2002:a17:903:320e:b0:267:c8d3:531 with SMTP id d9443c01a7336-27ed4a315c1mr26738365ad.25.1758782041421;
        Wed, 24 Sep 2025 23:34:01 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:01 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:21 +0530
Subject: [PATCH 13/24] arm64: dts: qcom: Update pmh0104 dtsi for Glymur CRD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-13-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e25a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Bl1eJC4Zh2N44W0__HIA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX7jy1Le1TD7qO
 Eh0r7G49WMSaAo5UQ6ItC6lC8xjaJuNoCbKXmDkhZegnNFlq+MUsFCtE0FfOiAeg0VNPulgJt7k
 pY56P1uXBjwTSjS8rTCVyLnPyojYXpAZA4OueXv3ZqwEulsi1lEzwOjDrXyxPdTvulG258nh8FV
 YP8VGGVgb+/fgqVs/UI9Vks/umHWUQfIdEQXM0LFhcBRLCyGQu1rUPyX5V+0Gdu5cCm0QbjfZJG
 roSj3mKIDYfuBy3n6VzJUip59nyXUM2eD/ddgfkj7SkqjOXyJ4aWA5Gp0muUECXYksxmF11I6s8
 xpqT36x8yBDb3vTj6FCWPZUF+eWeibu19diiVo287AZULFA0RtUyVkter+xiIWawkXVev7wi8FB
 uQjNxkOS
X-Proofpoint-GUID: G2oc-udYAXKR5XNhNsP9voODu3GnYlPb
X-Proofpoint-ORIG-GUID: G2oc-udYAXKR5XNhNsP9voODu3GnYlPb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Update the pmh0104.dtsi to include multiple instances of PMH0104
DT nodes, one for each SID assigned to this PMIC on the spmi_bus0
and spmi_bus1 in Glymur CRD board.

Take care to avoid compilation issue with the existing nodes by
gaurding each PMH0104 nodes with `#ifdef` for its corresponding
SID macro. So that only the nodes which have the their SID macro
defined are the only ones picked for compilation.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pmh0104.dtsi | 84 +++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
index f5393fdebe957ea0caf4bbc16117374b4759bda3..d3ea7486d842ec813a79268fc1466e1513426d78 100644
--- a/arch/arm64/boot/dts/qcom/pmh0104.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
@@ -6,7 +6,63 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
+&spmi_bus0 {
+#ifdef PMH0104_I_E0_SID
+	pmh0104_i_e0: pmic@PMH0104_I_E0_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_I_E0_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		pmh0104_i_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_I_E0_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_i_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_i_e0_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
+
+#ifdef PMH0104_J_E0_SID
+	pmh0104_j_e0: pmic@PMH0104_J_E0_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_J_E0_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmh0104_j_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_J_E0_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_j_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_j_e0_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
+};
+
 &spmi_bus1 {
+#ifdef PMH0104_J_E1_SID
 	pmh0104_j_e1: pmic@PMH0104_J_E1_SID {
 		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
 		reg = <PMH0104_J_E1_SID SPMI_USID>;
@@ -30,4 +86,32 @@ pmh0104_j_e1_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 	};
+#endif
+
+#ifdef PMH0104_L_E1_SID
+	pmh0104_l_e1: pmic@PMH0104_L_E1_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_L_E1_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		pmh0104_l_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_L_E1_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_l_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_l_e1_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
 };

-- 
2.34.1


