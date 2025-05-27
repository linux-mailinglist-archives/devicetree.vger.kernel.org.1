Return-Path: <devicetree+bounces-180959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C22AC5BED
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:06:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B78CC1BA80D9
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A1F218ABD;
	Tue, 27 May 2025 21:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nASkK0tz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B63218589
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379908; cv=none; b=lfXP/4sUrppNRj7uWvOFAtYVLyO59/hQ/2Sg2NEtxnJvNtp/K0tJJ9q4JMLA74/Wg3MKxJwxuww0sXfteEgUzbR3zX7+YPnqjiyPzEubmWBTTN+YtkzS06rhTYB6EvTG+Vlt7Dzl5jYcgba9vVym8f843NfU7di1HgIu4SZeXb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379908; c=relaxed/simple;
	bh=ePo20IfBlWaDjd5XYF16s1b6NNlBz3KQ6V6aZLM8Uok=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cv0CVrKmbvKEM1BN+dIgeB6ObQqVZOcJ+SPnNiuhkRvLhMLo7c9lpNTIUppku62SvYj1P2LllvHImvrrF41ND36oqjTlzV17pJcCNa3EBOdLEymc0DWvHSjaizqBQECDL8wwledzJIMVmVPuaF6BOwHexC3axKhimTMMTqNnXXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nASkK0tz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHTYtD028888
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+R55bDvd2i6fMCr67D+fFGu07eFzF+YQ+BvBZJYOtis=; b=nASkK0tzI9M1YF1e
	ctEpsw+a2EFynb0E/6ceqpE8PeV4GAzsEDI9iYXQntOBVWTRIlHX9M7B9WM+fKLr
	1hGJlfYIYMdLa+BsoguxUDJlsnJblXFi6ZxLuOdGoShuc9aBYgZ4fzmGMASjy4cI
	OPIddWCpeSHtzS13QEpCA8x3NjQIFAjKNIrOdS+6HDWVw4yTpWK2WgpmEAjU3HDJ
	uCGmSYGRA2YUSMQd25LtJ87QhOX4PzIcJSoSKW0HG2Rx82a0MP8VXNfW0c+GIF7U
	7BK2OGf5L/bAy2gXt0ifS5GfYf3nTXCwyambSHbnp5tzje6QaBmnNDUG+8GuD6Rh
	97d8tw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf0jgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:06 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7394792f83cso2875305b3a.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379905; x=1748984705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+R55bDvd2i6fMCr67D+fFGu07eFzF+YQ+BvBZJYOtis=;
        b=eT2NeghW+P7Kani0jEaL4r4U7Pllkyz32U7QbkIZ/fPftPPh5V9MF7TLoPlvvD3fE7
         jae9S6Zd6eyOkEcwzVtD0sxyduUv8RWJg8Ydt2LgV11LX01tqBWAYC6nC8CZaQ1ZnGAK
         069J7wWqCl+5zcCo0PsFUTPftliqU0ozSxRpsrT5QCMfwmFTUZeARIXr0FT7ZJLJe7Kx
         tTl3jlGeoBBrKMpE/2Y+E7ic3fDj31SqRthZVuAtTG1pwzgr4F+f+8OGMLeKVnXbgeAm
         imO/Xd4F3F7CbOLJAO3enFyDQyqjLBbLcofkVT2RNnkyotF5hweKomxxMQH3jpZ80udT
         BdoA==
X-Forwarded-Encrypted: i=1; AJvYcCVqHI7HNDa/IPWpqipKhq7p0OUoncEjWkjlLhL/Or2h5OydU5xFRylt4uDHbLYyWNgktUiqms8nHCbk@vger.kernel.org
X-Gm-Message-State: AOJu0Yynsv6Xu65xoApN7lwiZc7A3O02kEaBFswFHiTvOHhzdPyh9pPL
	x+5eZcoIN/6P5dICB8nqDjGYWEiHq9qFwtZQEbcSwG40/ngE9P/xSxnq7OD0YdLWP0s29OffqFJ
	6NRiA7a4yJU0EEI/v/hu1K4luMUxSnV62DxXP2Pk1jQgkO2y7MoN6oAwvi/tZwDXR
X-Gm-Gg: ASbGnctkBIB8AIszEot4LrqP/bPsfpcvbO9zBRyzxAbFuoR0IjgwLNp7M+jAa2WmbWt
	bOJQhklSIyX6NU6MtaTXv+K1Bd5U6oQLy7ExFvHoMlRe+fHtzXDF7p3HOtqm5Qo64sTxCpiG+TF
	IEoCxbor4kXZDI2NNIklgsJWBO6SlmkeDrdxMt/t0O1/Ro2e6Nx1DdoSzK12LC0lJL6kIxqsixz
	JowxEc1aIHQJNPHEyQQ4K6vLbzCYeQ8hhkBV7gPnsxsTDx8b1Rs8bR7to/B5RB7fMfbjlhsb2jn
	80CmqAPeClqxHiEig47Y1z7QRAe9/absdb2ibFrcJ8H119MUgLTDaHlD6Ukaigi6BNI=
X-Received: by 2002:a05:6a00:2d1b:b0:740:4095:4d07 with SMTP id d2e1a72fcca58-745fdf4aabcmr23423670b3a.12.1748379904945;
        Tue, 27 May 2025 14:05:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGF3F/0WuD1I/uFyifDLb+DPIbx6i8n8BnLXMFGs56DuGIiLm5xJPWIJar210TA0fKEm+zAug==
X-Received: by 2002:a05:6a00:2d1b:b0:740:4095:4d07 with SMTP id d2e1a72fcca58-745fdf4aabcmr23423588b3a.12.1748379904421;
        Tue, 27 May 2025 14:05:04 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:03 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:43 -0700
Subject: [PATCH v6 07/10] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250527-sm8750_usb_master-v6-7-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=5686;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=+Rqpl60bvMJUwvbS+tvLZ+jZaj0RAwENmyzWKv4OcjE=;
 b=NQyoaBHmECAVGHIGRBOL8RKALjCiTvQacv/P61bnVDWHA0mO1TPh+XBlwznl8HgyNawFpp4lI
 ShPBlLR7OBsAggDbkxU57YRcprYao+1cAkvAwPmMuVq8iVsEfeefgHa
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=68362902 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=n1SQX4eW7R_9Zp26JX0A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TMMhQ1vWGdWmhenOywXPkPluTLbjT718
X-Proofpoint-GUID: TMMhQ1vWGdWmhenOywXPkPluTLbjT718
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX985T83FMTi8v
 5pIFLzAefOoMhSX7kaMCE83RHbL+KMY9BUu0PHs0TXlmD/fpOhbuz3KQXXF+7IRXmPf/z5BnXty
 wg935pJJ47UZY2B+Hf+DWij08U5fH+7UVkO7SvgXle+C81tAFwJ+N3fexM1poS9lM10tQYml9JY
 ZKBZsQa24CFJWgTMZksg4SO22PAOpHjrh9VdJHjPw8JD+8ufanVvyPBwvGebPyOo6YvibZsl4O2
 IOpGWvl0KL+qXXv4lBUcr4MKsX3fQ3/DN0FehCuY8dWpDmN13Z3sdfZynyH1J0geg82bXBo880m
 Hb2OFdm54GnLeYw4nVjN2CTNQ3bmQsUNB6ZupEm/TUEY5Wk4cZ2Jx52y3B1V3iu4ncCeCkcVFwG
 ran+vUe2paI5uVqjDk9tkwTsbWn4Uxy+wftJKf+BJtXTKj4FFzhkOiMmsU1n3//cff+kz/WR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add the base USB devicetree definitions for SM8750 platforms.  The overall
chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
(rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
transition to using the M31 eUSB2 PHY compared to previous SoCs.

Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 164 +++++++++++++++++++++++++++++++++++
 1 file changed, 164 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 980ba1ca23c487b9225b73872889f02c2611e68e..a1c54ced7fe5b83671ccab3bbf870c9c10c27e05 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
@@ -2462,6 +2463,169 @@ data-pins {
 			};
 		};
 
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sm8750-m31-eusb2-phy";
+			reg = <0x0 0x88e3000 0x0 0x29c>;
+
+			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_dp_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e8000 0x0 0x4000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&tcsrcc TCSR_USB3_CLKREF_EN>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_dp_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_dp_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
+			reg = <0x0 0x0a6f8800 0x0 0x400>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi";
+
+			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			interconnects = <&aggre1_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr", "apps-usb";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			usb_1_dwc3: usb@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x0a600000 0x0 0xe000>;
+
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+
+				iommus = <&apps_smmu 0x40 0x0>;
+
+				phys = <&usb_1_hsphy>, <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+				phy-names = "usb2-phy", "usb3-phy";
+
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,usb2-gadget-lpm-disable;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				snps,dis-u1-entry-quirk;
+				snps,dis-u2-entry-quirk;
+				snps,is-utmi-l1-suspend;
+				snps,usb3_lpm_capable;
+				snps,usb2-lpm-disable;
+				snps,has-lpm-erratum;
+				tx-fifo-resize;
+
+				dma-coherent;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
+						};
+					};
+				};
+			};
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

-- 
2.48.1


