Return-Path: <devicetree+bounces-216172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BF1B53DA5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 23:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D626B3A6A98
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F2B2DECAF;
	Thu, 11 Sep 2025 21:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hr4NFg7j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9645F28312B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757625671; cv=none; b=TEoP0cnoq4YkK9/+qWFLTPR1+kUpud4WVX2vIxr7cGEYC3NAJBqMuvm9gRKdRP2tq4pno/COBsYESXNlERyR4KgaIVLQnhHYGi4RyK4dkg7d8xozV8gbLeJ5Ukwm0rAbAP9NzP9vUuNZ6egGygaH2HTyFfnMojglYPnSMTGtmL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757625671; c=relaxed/simple;
	bh=s06lMSgFUbsQsftyLPOCIcILNY+VCV8h/628COtxgqY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jvwGPvbbDJSmiyjd7smqG4ytGXCvZ1YJjg0M4zwnabHt7DpYsd087GxVmM8EbeqX81ioBYeymklrSvET8XAUxQhdSUFxSrIU2OHWPp1nn+VfH32VAM/RZ+Y8kndJ55Egxf+8dpAH35StpFIEp2wCmdhiQNxHuGv2TA2Ii4ucH2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hr4NFg7j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BIuI1j005760
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PT1gCayuGIF
	IlQqnQzKpVckx59blbv/GdiBq89GHfVw=; b=Hr4NFg7jJaPF9xvZayufZfl/xG6
	UzrUzg7xLNWUBf4a629PsR0H2DEo0xHoDFDKFWGbdSLeneoo1YuEnXQcU3tBgcG1
	kK0/iFNVaRIZM7pBGSzA87JGpWcp3wGmiHMHe73NLnrZgA5HuiC5qp6HkgfhZWkP
	U9Yr8E/JysRHVlXg83GzXE+dHG74J27Jl5ZwQ4OaG4A1PYjQmb1p2A2Fu1TLxh5y
	fMOAv7W0zo098msvLqWB9RF2exmG87Hg+PTcmCE7JZ7NvvUTxoaKv2L/9tydYo4Y
	/+yPnJJYvbXlohuzBGreEByVw+vjWPimd52gLAPpYtOr32VoJjNldG3qarQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2dcqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f9673e56so31533921cf.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757625668; x=1758230468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PT1gCayuGIFIlQqnQzKpVckx59blbv/GdiBq89GHfVw=;
        b=bTd6HeAC4hatZICpA8MndJoX/shugUAVBn9Yj2xqygE3p491iD9xtRVP9Dgo1igbY+
         JbNdUJ0cg4nU+2UvbPmEN0dCby88Bob1GP1XTFaVct7HVja/ef3BsGHMnaF3xcJ/jPiP
         Zg7RLtpU+C07xenyl/eE/JF+cv9YpSZaaM0umoo4jj/T/1EOvdQG9bOy4giGBxp/N/SM
         5cOlYB4LZgXK1aNu6wc7aNUPbrnPyW9UON+dLbBLUyjBW981+QtYxwd0mwsnC5nmFr4Q
         m73MK7y0Ev84IdaneK/M7/O2QSj7zzFWybxFYi4vKgo4SsnMqbNg6g3PAbHrmF16XzHT
         mqKw==
X-Forwarded-Encrypted: i=1; AJvYcCVayzOOQzqmB8l4DEPDsRr0+qNyopiTLveXylwdTf2l6gkRdvlJOqMEObCvLMLSXigA9buDC9YN5Lz3@vger.kernel.org
X-Gm-Message-State: AOJu0YzEKjrxwq/jzau7/xPJ0kFKGEcFY1d8155/YJ1g4Qw2rw8qycLG
	RZsqhmcuecriED6nnLAznqv8JyQCTTTYP6cxuFdlsNGLzH5X351bhofAquskbcmq+HntdtjEFwX
	4IksjnpFjSfe4tMAScpMhTmjAegCRIh4wWaqBH+8w/31W56eFsySh0fc+Rd7GTGtpq8+AA47YwF
	4=
X-Gm-Gg: ASbGncsnfn1tekdzPvqe9saHOaT9dYoh+31lXOKTySbL1U5IpJI9Tyy/dxBEMT7upKc
	OxsSXZBjjg762zRQaQtjwnaTgvO09wEqjMdPdjowYs+F5aNCifpR7R7egYOkc0heTCaOFOe9Ijd
	sDmc5b+QOukNBuKJRIe3kOft46P40/6Ro3Co5Zd3BLiPy1+bMNsFMrKWU8q78y6Hu24nwkCUqoe
	9gFkezK0lXrpjmC4jkBXYtUsUHYS4kApmz594OuCX3S1f79SWFWG4NANCqoeLJCG0hwlTFOIdc/
	x1jSf5w9v3wIAas01sfnu/usbjSf6IKRZmXHQnXgW+OaHGnSQMzJ9z4RWILWJzfQxQnyLy7d7U4
	=
X-Received: by 2002:a05:622a:5449:b0:4b4:8ed1:2241 with SMTP id d75a77b69052e-4b77cfc2330mr8536611cf.15.1757625667303;
        Thu, 11 Sep 2025 14:21:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrO2PLPKA2mCIyBGV7Kqv20BSBqgWRCXp2pmuFmfOEs/8og5PKPIxRUT9YJrGxkW7UhKbLEA==
X-Received: by 2002:a05:622a:5449:b0:4b4:8ed1:2241 with SMTP id d75a77b69052e-4b77cfc2330mr8536161cf.15.1757625666685;
        Thu, 11 Sep 2025 14:21:06 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3c22:d6b4:15f8:475e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0187f0a7sm21843935e9.3.2025.09.11.14.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 14:21:06 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andi.shyti@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH RESEND v5 2/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Thu, 11 Sep 2025 23:21:02 +0200
Message-Id: <20250911212102.470886-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250911212102.470886-1-loic.poulain@oss.qualcomm.com>
References: <20250911212102.470886-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c33d44 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=7004nz7suiqLHAzt4fYA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: _fcaBA2IgYVEEnsRBjgJJWrne0SD2fLj
X-Proofpoint-GUID: _fcaBA2IgYVEEnsRBjgJJWrne0SD2fLj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX9FOCduAeNZPp
 p24Uis/6nja8EVCgmVrXWPCxXcwTf79Tm6yJJq7UGMoq1LnkBrNu2IskxYVkmHa2hZgJH+N3reC
 2XiZaAFWdNPSxN2S9ir/+FQ2qjaF32nIO/YEIUCMw6HCY0IJDDynONmchqED/qBIJKQbtuw91jK
 kHsstnh9D+cf4xbtQmXswLMTMXa9o4EXIchBLltj0AQe2oLYwLIE9jNsHmraTYmRe/CRfoXooF/
 Wn+XjnTnkekIx08tod+t5T6ObvlEbR2yaLQ1ic0F3ObLM9J783OArwhwOqE5ec/1ozNQFtKDGbw
 ZMKBZ6EvqpkZ2ZOFwuLQCy07br/htPP3lGF81HyQxWoqBJIkuT5beO7k92O1BPQukKd3f/ml7qf
 S6Z5z9L4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 v2: Reorder commits; Update dts properties order and style
 v3: No change for this patch
 v4: change AHB clock name from camss_top_ahb to ahb
 v5: No change; Resent with missing recipients

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 527705c7d212..08141b41de24 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -566,6 +566,20 @@ qup_uart4_default: qup-uart4-default-state {
 				bias-disable;
 			};
 
+			cci0_default: cci0-default-state {
+				pins = "gpio22", "gpio23";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cci1_default: cci1-default-state {
+				pins = "gpio29", "gpio30";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
@@ -1635,6 +1649,42 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		cci: cci@5c1b000 {
+			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x5c1b000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
+			clock-names = "ahb", "cci";
+			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
+			assigned-clock-rates = <37500000>;
+
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-names = "default";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camss: camss@5c6e000 {
 			compatible = "qcom,qcm2290-camss";
 
-- 
2.34.1


