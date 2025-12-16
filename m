Return-Path: <devicetree+bounces-247119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E0BCC46E4
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 505BF308CF86
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0951E31ED88;
	Tue, 16 Dec 2025 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M8g9JyM/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TKwJVb6u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A6731986D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765903695; cv=none; b=gUROjmtEsgdWi29W6+9ZCcID4XrTQeI1loyAu+IrsIhcWQB8ZdH9K3P0Uk2Pyng5B9b11WAWxWXq4s7zvoezon5zrNBB/NLhtT0rPLmcyYuN/tr7QoMhLsBoy90JI55Pcnoy+womme/hAqhp8wyERUFVs0GjZILe9kWt0jcN1BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765903695; c=relaxed/simple;
	bh=q8Of4GsQjTZfxl/aEY8++okN9DuOuBIHYepps81NVZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X5G0pC8T/EyZhwBZeN/W8O7cnplWjtjzMEVN+ShgJduQ09IlRN59O7I0KHgKqy+xgLmQjR3L4W4012PpmdP9/atBWQ/3h9MXSqRxemQeTqA9DUVg02F2x36e//vEuA2YWUWY85EEjwbY95ism+hXli02NzqT7rPjjPK+nwU5JGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M8g9JyM/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TKwJVb6u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGGiqgK4077105
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:48:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g4Lm9MrrvOYUsiV6ljnUQcDeSs7/hmrmUDjtnLaqWdE=; b=M8g9JyM/mQLsCPDV
	gjYKCDDaP9I9EY9gdLOzWLNSbXZ5g+Rnl2S/4l50iBNlHE112tLjPwxnjndXPCBo
	gAwytBfatKrcxhc6wDsU6WuniKKVu8iBV8KcesTucQO5kIbpenaVV3TkChHGbdVI
	RiP1O2x5sLOXbkUmXQEUrlegmtnYq2oBs0f6hyRKM2UkZOddf6AHrSIUyHccyaHq
	JA3JPvHyoOcE7MSzdsh+eHl38ae1DH527Zh+N/OOmxCoEUy0LW1oWqe4LuVKw5NN
	hmQvo3xBgY1J6+aJRA8jr/elmOuV7N3nBhGSpPtLp4528+dfZqUjF+qRLi6iVr+l
	W9tuWg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g00e0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:48:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so102624721cf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765903691; x=1766508491; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4Lm9MrrvOYUsiV6ljnUQcDeSs7/hmrmUDjtnLaqWdE=;
        b=TKwJVb6ulTaPVRAZBNlBwqcSpx9qMVvzyswEnvVQ+KLCsnSORJNGWLqW3d933l/jvi
         QnEk4Lj8sb6R/CUQcL9ENUQsAtujLWSBsijLhvyM/mdgqK0D3yW2JClxP6UhOAyHSzg4
         w0V4FK3iHTu28JHAurAfq8FrYYh+F397uVshz2xV3cqKxGV8D0bnlHUiYY4mu96zPtye
         yBG01Aqg4mxC0PcG1caucShqzbBjJjBN4+PTnFGe/npo3Mtz2zjCZFRMvDuD6SNtzWol
         OjsTUtLQBO3IbUtSwZLeWAxOabq+HLUEWpW4I/y3NjC7i04a7uneAtG2iCmKtym2HbuK
         khDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765903691; x=1766508491;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g4Lm9MrrvOYUsiV6ljnUQcDeSs7/hmrmUDjtnLaqWdE=;
        b=qghdifkQr3+rEWUyAgQpWrGhJRAeu7Mz+6EVVp5MNbeH0iog5uNQPULdgFXSnuwX5l
         ADtmC3Fl5A/d/KuV6qT77KEZV9LVW5zsDFWnptD+QztuqphDDBRrkhwQApUfO8Fp/Lkk
         adcdOVobXmCj52Jh3gaMKxENa84zmdXAHVm6rSVgC5/1VYeCc5bndjkIpfvfWCKQN5yi
         xJQzCVeIj4oMInH6C/bmqg++kLfEvT8qz1gHJlVkqYF37Xgi6BYsotNpsjoXNJEURiBG
         wIZ6msLpJEc3t0elDsaLvIgxmrK43rJcYOWJR6nm2z/SMWjUDifZXFbZ6XLOH97BTkX7
         Op8w==
X-Forwarded-Encrypted: i=1; AJvYcCXBEIFfS7IOCp1eLACa1j9FcfWK5HIiJZDJ6lb28PCU+/QvTnCv+Y1l5aOm2e90qYzTntS1dnaGWyrc@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwyhlLGJEwmMcMM1/c5KS3jUDNH2EbUY64Gga7yMnS1/6CI1T
	NmjTQwSzfv6xoHODfP4lfN8Apf8Mbsa/stLhvpvUj83czN/3lMH5HWOwq7RG4woqkcLyrRbAKCq
	E65UGJBq4GwFTVVqTWBr00xUsgd4IuAokA/7LjeBNDwDAFzMWUowdH8cegsej2oOfKsx7zu3D
X-Gm-Gg: AY/fxX4TzUR9Z+OFGqPBPNq97yur4JE7MfY2u0rQMMub34LANJhEiKFwFeya0EMu+L9
	QNICnCagoZT3KPLo9YQ8gb4mGCTw/qL0bkV10wTkvcpiGCBVCNaC+UmVOH2u6r1VBfwiNkBK9tv
	izzR8faTd9B0yywN87YTElI1G/9BzY4VFpSXGUoLdmJN0HCcsVxkuK7ld7w141SfMOE0LKgMTUq
	QnS81PXAZrz1qjc6UHZjpXE1MHfyMGK9eQ0SUP8fIumFNSIXpmuXRuIWMGaheyaEkAlrbaqM5MH
	YUtF/wCt5agfcWU/mGFEK/cLGYew+IYWwaylUpZGC6Vjxc7xa0HSdj1064/WMmgh9fj20yLAxRr
	d588PSoQ/COux7jYwUMypOpDVA1FutI6S
X-Received: by 2002:ac8:5c90:0:b0:4ec:b599:2879 with SMTP id d75a77b69052e-4f1d05effb0mr235349501cf.66.1765903691394;
        Tue, 16 Dec 2025 08:48:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCPG4w0ZPvgPposprplPRJ0a84vI7Sl5+rvT2Y4KGwWrzz5sQn9UxVniC9Paout58VIMHoXw==
X-Received: by 2002:ac8:5c90:0:b0:4ec:b599:2879 with SMTP id d75a77b69052e-4f1d05effb0mr235348811cf.66.1765903690769;
        Tue, 16 Dec 2025 08:48:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2ea57csm1730719066b.22.2025.12.16.08.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 08:48:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 17:47:31 +0100
Subject: [PATCH v3 1/4] arm64: dts: qcom: sm8750: Add display (MDSS) with
 Display CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-sm8750-display-dts-v3-1-3889ace2ff0b@oss.qualcomm.com>
References: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
In-Reply-To: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=12185;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=q8Of4GsQjTZfxl/aEY8++okN9DuOuBIHYepps81NVZM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQY1D3rt+UCXFPmR2OF+qexUeU2sLX9BSCGEWF
 qey5WqcTJ+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUGNQwAKCRDBN2bmhouD
 15U2D/9Q1Z60idLT/x/XMfYa94QQE/s/VK4oqSqZt/GOkKVl1Ltamid3oYqqLYe1yTOyiz7DtIY
 F4KYCLcCdO9E9oenDkNhz49scEv1+9PcmjklrlgCMHUlCSOF7q4G8Fwie8Xs9rrhoKrgMrX3BZm
 nd43u7FyjwpyMgQwkNio3sGgoV2E2Pml4lCOtp/I8vKJ0XDXuaTEvyiPv2U6lQ8EWLN3H/LDB5e
 g1XteiNvM4nhlgNJ1vWQMXUFP1qBtub9556gqe6jA+dCs6RZrg2W4j4ly1IDuwn/xZpageu0QK6
 n+PpJT86CfaAm/0FrruLQ6kzzQ6OMl1yS6L5BC6Z1Go6iQ4gFN94a/FCoXYD0+HSdwe3tzvPRyQ
 uP4CvshPtLnsZpWBUZnCDO3AXNtjf+TMybLIvM/2yh5l80K5Sqwfe1W+3yAbSB4SUtp6+NZO5Z0
 meYVOBxCJ+1FRLKxOx1iGfQ9v1JbqJe3YHLe73uNlMdo2vIl62DRjBzBNSOlBVNEHAsFkAh60jn
 +n7rwdq2SThkLG7D4AOKSqfuhT4u3UdMZWeMg/bug6u06y0o70GUGHAhUpZwKi0E5k6imNhut3Z
 Yt80lR+vQiLKOf7qYRkhxx+ooGGw0766r3itxYumqywCEcX5ROUCBwcs45ifvbE9WC1wOvAaTgs
 EgEqAHYuUyqCGNw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: hkY9IQNQuSZuCRTLk5f5FTWp6y-Hy6fX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDE0MyBTYWx0ZWRfX4X9VUu+ppYqi
 XPsSXk0zAQr6E+5em7i1rbDae3il/kAytO2z3PFS51SjvOzBx46HLemCzGubxWE7qrAaETD96dA
 CDbIejvCuyxiMYbryuCJ/uEF+5h1qfp20M4I3W6ZpbBYp4achiYnwtGoP8d9HBFeA8H5DbijbyS
 4rl/akv2VgeONqUbQKkipgqn9Dg3bCZuQEGT3KnjsvFJooDJ3CbpKDA+9HPVTRYzZ7kqUmJn1rr
 XmdQ0NyRWak4qmlCZYgEBB+Z7HfgBjFaV0aSCvyOH2a9yf3NG2tuFBUuOU/fGt7iyov9QQYl/j+
 SR/YEOXJVLr/cYTbcG8skZ1o/RqaLLCgmWN/o1wxl4gaE0pMZVBigwJpnQ5h2c5YT5dgyV60mKr
 GrURqhmWatKkqBtjyMNrdlfOq8Vn5g==
X-Proofpoint-GUID: hkY9IQNQuSZuCRTLk5f5FTWp6y-Hy6fX
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=69418d4c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DjZH3HX0Fn68CDBTfG8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160143

Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
DisplayPort and Display Clock Controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 437 +++++++++++++++++++++++++++++++++++
 1 file changed, 437 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bb..11194b34e6dc 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3,7 +3,9 @@
  * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sm8750-dispcc.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -2740,6 +2742,441 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,sm8750-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
+			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc MDSS_GDSC>;
+
+			iommus = <&apps_smmu 0x800 0x2>;
+
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss_mdp: display-controller@ae01000 {
+				compatible = "qcom,sm8750-dpu";
+				reg = <0 0x0ae01000 0 0x93000>,
+				      <0 0x0aeb0000 0 0x2008>;
+				reg-names = "mdp",
+					    "vbif";
+
+				interrupts-extended = <&mdss 0>;
+
+				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				assigned-clock-rates = <19200000>;
+
+				operating-points-v2 = <&mdp_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dpu_intf1_out: endpoint {
+							remote-endpoint = <&mdss_dsi0_in>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						dpu_intf2_out: endpoint {
+							remote-endpoint = <&mdss_dsi1_in>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp0_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-156000000 {
+						opp-hz = /bits/ 64 <156000000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-207000000 {
+						opp-hz = /bits/ 64 <207000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-337000000 {
+						opp-hz = /bits/ 64 <337000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-417000000 {
+						opp-hz = /bits/ 64 <417000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-532000000 {
+						opp-hz = /bits/ 64 <532000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+
+					opp-575000000 {
+						opp-hz = /bits/ 64 <575000000>;
+						required-opps = <&rpmhpd_opp_nom_l1>;
+					};
+				};
+			};
+
+			mdss_dsi0: dsi@ae94000 {
+				compatible = "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0x0 0x0ae94000 0x0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupts-extended = <&mdss 4>;
+
+				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_PCLK0_CLK>,
+					 <&dispcc DISP_CC_MDSS_ESC0_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+					 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+					 <&dispcc DISP_CC_ESYNC0_CLK>,
+					 <&dispcc DISP_CC_OSC_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+					 <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus",
+					      "dsi_pll_pixel",
+					      "dsi_pll_byte",
+					      "esync",
+					      "osc",
+					      "byte_src",
+					      "pixel_src";
+
+				operating-points-v2 = <&mdss_dsi_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dsi0_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dsi0_in: endpoint {
+							remote-endpoint = <&dpu_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dsi0_out: endpoint {
+						};
+					};
+				};
+
+				mdss_dsi_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-140630000 {
+						opp-hz = /bits/ 64 <140630000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss_dsi0_phy: phy@ae95000 {
+				compatible = "qcom,sm8750-dsi-phy-3nm";
+				reg = <0x0 0x0ae95000 0x0 0x200>,
+				      <0x0 0x0ae95200 0x0 0x280>,
+				      <0x0 0x0ae95500 0x0 0x400>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&bi_tcxo_div2>;
+				clock-names = "iface",
+					      "ref";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			mdss_dsi1: dsi@ae96000 {
+				compatible = "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0x0 0x0ae96000 0x0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupts-extended = <&mdss 5>;
+
+				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_PCLK1_CLK>,
+					 <&dispcc DISP_CC_MDSS_ESC1_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+					 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+					 <&dispcc DISP_CC_ESYNC1_CLK>,
+					 <&dispcc DISP_CC_OSC_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
+					 <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus",
+					      "dsi_pll_pixel",
+					      "dsi_pll_byte",
+					      "esync",
+					      "osc",
+					      "byte_src",
+					      "pixel_src";
+
+				operating-points-v2 = <&mdss_dsi_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dsi1_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dsi1_in: endpoint {
+							remote-endpoint = <&dpu_intf2_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dsi1_out: endpoint {
+						};
+					};
+				};
+			};
+
+			mdss_dsi1_phy: phy@ae97000 {
+				compatible = "qcom,sm8750-dsi-phy-3nm";
+				reg = <0x0 0x0ae97000 0x0 0x200>,
+				      <0x0 0x0ae97200 0x0 0x280>,
+				      <0x0 0x0ae97500 0x0 0x400>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface",
+					      "ref";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			mdss_dp0: displayport-controller@af54000 {
+				compatible = "qcom,sm8750-dp", "qcom,sm8650-dp";
+				reg = <0x0 0xaf54000 0x0 0x104>,
+				      <0x0 0xaf54200 0x0 0xc0>,
+				      <0x0 0xaf55000 0x0 0x770>,
+				      <0x0 0xaf56000 0x0 0x9c>,
+				      <0x0 0xaf57000 0x0 0x9c>;
+
+				interrupts-extended = <&mdss 12>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&dp_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				dp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-192000000 {
+						opp-hz = /bits/ 64 <192000000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-540000000 {
+						opp-hz = /bits/ 64 <540000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-810000000 {
+						opp-hz = /bits/ 64 <810000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dp0_in: endpoint {
+							remote-endpoint = <&dpu_intf0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp0_out: endpoint {
+							data-lanes = <0 1 2 3>;
+						};
+					};
+				};
+			};
+		};
+
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,sm8750-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+				 <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <0>, /* dp1 */
+				 <0>,
+				 <0>, /* dp2 */
+				 <0>,
+				 <0>, /* dp3 */
+				 <0>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

-- 
2.51.0


