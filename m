Return-Path: <devicetree+bounces-212943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19046B44322
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:41:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64E233AA9F8
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6930430BBB9;
	Thu,  4 Sep 2025 16:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QLVbaUjf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B639330AAC7
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003974; cv=none; b=CcbWMOr5kekSLqV//1n2k2KCjOsRFxF640fsbJE//fKv4+RK1gaXzJDFLL7rsHz0zRFSkXTLvd2/smMOAh0U/Kc8OvcNKrUVz84v9I8Dd5tqvOlExLCTwZpNBnt1LhiNhPtVzGHOVpfuF+eNXJxpAQ4TJwIfcMjCb0Fayq/Ohk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003974; c=relaxed/simple;
	bh=tnjwoYFOxB8Z3hS73lw33WNffBxGOTtiL39sgx1IMKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XjDwILh01q81kn70UBK5GvA8IsXoMjMPKblTyOp8lX7UIk7q2PNB6QNGLP+thPRD+x/zV88a/yyOK0zGj6V4UZzZoIHW/hJ8xQcOrM7uGOt5U83CZUqTqwReyVjstXaIfVPpDoYT49+SxKZeP5VmGk1Suwk+zKe7HAuqqnRFZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QLVbaUjf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XCaB023981
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:39:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TNhN2lvtb0HZlQVBeI4DEhPDS0dLO1GoNzry2xznyxw=; b=QLVbaUjfSoekQrRq
	ufUDrA7vp3Y9fL+b6xJ+LEs8jRjwdsKKI0lnvHX5w/k3bMi3K5bN9H8lM7uvZCcF
	6Nb1AbWho4SddLiAT+THLJ87tzQLo+EPQPnZmFNEuhuJrDz0Gxd2DyCCuJ1y8ubc
	TfJA9uCWp+9wN2tLeyfrFDjiKwcUMJ7BcUxuboPTFn1geTZDmSlE8/sVEAc29sW2
	DKUIit2V5I/OJ5OxyBuihBwXyc2k92x1ZZApCYnVNGdUcCArMivT5XgWk4JToIFN
	NuxcregA47mNlsBlIyH8AL9Nf9xBtn2bVuErhxQKzUqgbWmoZElREmolHl5zn1sT
	CK3jQA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fr1aq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:39:31 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24ce3e62946so5100045ad.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003971; x=1757608771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TNhN2lvtb0HZlQVBeI4DEhPDS0dLO1GoNzry2xznyxw=;
        b=UYoUAAiJahThfpac3YDMzS3jsJvfKE5JvnsgkDot4FjomX+SnSO1Q2JZ5soNwobzKa
         qCiLgQSIXqxpmHEVockRXeKwpTgBGyoGMIA//eT+zcwmIH8hzrEg5SQyTJ0badvFae/Y
         Xnv2ZH3kzysbzLvJwJBP+CMyVXIFacjerlVTX+qghi/Qf3BvvvGdGissTSWxIEOoGrTg
         dzmcqSH5G+RtBXUClU/P3ton0zPNoRjaxbK3FUU33HJIQshPUzESa4G4HhExAgkvHcXA
         Rdl3pqR5iJFLilfNwJuiQCbhm+5+eYNaE5x+PGyTsNsarfy0MhicOQhrvn9d1aVtlwVF
         7LNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1cZLfCQ3ohkQx155miMm9qOBp6Or9o4IRHebeN3vM+FfqcoRRnPHEpuQaGC4vCVWV1a5UHX7xWigz@vger.kernel.org
X-Gm-Message-State: AOJu0YzEZWaDLe9NCk/IvL3L6ez/HJs4J5sWIo8piOUekUYHGaDoRDjU
	YGt9PPcAgwv2mn+d3ViOx/8okHMWmN81ip7pRw4GwxE6uLMT8pXYSLWrZCQnQodji6hofRUJZZm
	XqGL/NQjlI3FpQU6sUp8uwq2ZNDY1fEFH3Fd0tvxdFMEunFdxWbS4WEECdVM99HNi
X-Gm-Gg: ASbGncvUqMpl+guVUflUE3kDOgrK4BLBWUSD51/C7AuRurEPFgjkrheRQeycNTJLExS
	tz5LvIPojXqzMH/UUDGrUwKJEH+9ok2Qfj7zl20neC/UNFgIR8er0Yd39qi1aLo8jc/pFB7Wh4b
	+lIvrvB+A/X1kNY0FvIssY/qSnRg89pW3Zq1t03SOcKZDERg9dE99FzET/C42rqVF5QhUM/gahG
	VX7u7NpKW2phWSg3GrJaYfT4vk97jZJUxqahq1kF1CM5mZxXdMrSCZuD5f3zUH+HNkUOXu5dWYL
	y+o0Yu6glzpX+Bt8lFZZmuhQpYqeedy/ESVHVH2cGNGdYzDPtksw/W+ZtaHfD86qfZ8O
X-Received: by 2002:a17:902:ce11:b0:249:2ba0:7f7f with SMTP id d9443c01a7336-2494486ec6amr248523035ad.9.1757003970993;
        Thu, 04 Sep 2025 09:39:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECVzts0UmlOqZ3zmzTeZl0b2myxnYG4xhwfjA8NKD4MvThRrDtNbTos8PH8v2GUOQazWFW4Q==
X-Received: by 2002:a17:902:ce11:b0:249:2ba0:7f7f with SMTP id d9443c01a7336-2494486ec6amr248522735ad.9.1757003970505;
        Thu, 04 Sep 2025 09:39:30 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:30 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:08:58 +0530
Subject: [PATCH v3 02/14] arm64: dts: qcom: lemans: Add SDHC controller and
 SDC pin configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-2-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=3458;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=ABkLWC+KfeCB98/nh4FW4v5sUxC/yCussNpVQMtgYnw=;
 b=GYMHpQRGE6zo8AF3jPIe+vAVJ2R8wEHg5JhtgDSqbTu7gJ/qiN0+2piCyVHOpdlB37OuK/ZFs
 1BI73WHx+EdBxguAs6o2QvHNN0zK4lIY58U/97XJIOIKRXHUjn0G1a3
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX+q8wB8msHmzL
 qGIBHgrTGA4RB98Wux3jW1E5VbWSX9KAqUUQs+ZdplAEa4wh70cgfFBb8vOt44I+5Br5uonlj9z
 NFXy4uLxe0obeWmopy/mt7LYIapgmEedPiqF9n2MyR+8qAoShrIjYEISw5DYqDjmwxcX8mJse5Z
 OoJO3kbsLGymYyzAnL7ZNKITICKC6Ng63Zol2lEnpYDsM/Ri4kOWk6ROwDngCQ2RRpbQEKlgnN6
 4Ldc1ekCIVKXzPTQC22hqaNYXvJAxSwQCdcKBYN28LdUterEx0wZyApfBOWG9/mBSL2F5G5OE6c
 ksJ8qsH9WGhoJlEIchbCzssf1bH0XaVbhAKkSm90hB/AAio2NEeWQeh5toKqJqMpL5q6UBAfoOy
 /p9W8ZqH
X-Proofpoint-ORIG-GUID: cnh0gLH8c2q6jCNlE-hsnyAnihIosnJ_
X-Proofpoint-GUID: cnh0gLH8c2q6jCNlE-hsnyAnihIosnJ_
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b9c0c3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=X8p_deJK1ww8tEnDWQsA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

From: Monish Chunara <quic_mchunara@quicinc.com>

Introduce the SDHC v5 controller node for the Lemans platform.
This controller supports either eMMC or SD-card, but only one
can be active at a time. SD-card is the preferred configuration
on Lemans targets, so describe this controller.

Define the SDC interface pins including clk, cmd, and data lines
to enable proper communication with the SDHC controller.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 93 ++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index f5ec60086d60..a34f902c1358 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -3834,6 +3834,59 @@ apss_tpdm2_out: endpoint {
 			};
 		};
 
+		sdhc: mmc@87c4000 {
+			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x087c4000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
+				 <&gcc GCC_SDCC1_APPS_CLK>;
+			clock-names = "iface",
+				      "core";
+
+			interconnects = <&aggre1_noc MASTER_SDC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDC1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			iommus = <&apps_smmu 0x0 0x0>;
+			dma-coherent;
+
+			bus-width = <4>;
+			operating-points-v2 = <&sdhc_opp_table>;
+			power-domains = <&rpmhpd SA8775P_CX>;
+			resets = <&gcc GCC_SDCC1_BCR>;
+
+			qcom,dll-config = <0x0007642c>;
+			qcom,ddr-config = <0x80040868>;
+
+			status = "disabled";
+
+			sdhc_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1800000 400000>;
+					opp-avg-kBps = <100000 0>;
+				};
+
+				opp-384000000 {
+					opp-hz = /bits/ 64 <384000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <5400000 1600000>;
+					opp-avg-kBps = <390000 0>;
+				};
+			};
+		};
+
 		usb_0_hsphy: phy@88e4000 {
 			compatible = "qcom,sa8775p-usb-hs-phy",
 				     "qcom,usb-snps-hs-5nm-phy";
@@ -5643,6 +5696,46 @@ qup_uart21_rx: qup-uart21-rx-pins {
 					function = "qup3_se0";
 				};
 			};
+
+			sdc_default: sdc-default-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <16>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+			};
+
+			sdc_sleep: sdc-sleep-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+			};
 		};
 
 		sram: sram@146d8000 {

-- 
2.51.0


