Return-Path: <devicetree+bounces-217905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 210FAB59B27
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D80E91BC310B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9D934A327;
	Tue, 16 Sep 2025 14:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GkbFwWts"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC27A34A301
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 14:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034787; cv=none; b=CYsin4f0WUlvcWC/gsDkYkjO1N+NMyc9TkCP1Gq8ozLLJDHd6AOQVJYO11vkT5x6hxw9PvRC3WPqTB7dMFpIMRsfx8O2zE8EQ3UXWjtH5MMP/5nsefWGEPmzTGcEko4KKm92wgN6r0CLNrgIBZTGNdKgFxkAb4tFOx40XU3knsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034787; c=relaxed/simple;
	bh=N+DvkIEf+jK1FXGRrKsm8BXra7/1jp/K2c4WlAE5nwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H8q5e8IUud8Ppo/TyHCWxq+pcaV49ro7AplyhLdx8gvTtXY8vPBmUrgatAM14t1Db8AgnKZ/7ko4zMxQ2eqjJkcvhtJ1y3fhTTr+TTA+AXxNeFr+TQ9wllAogLakJ4CGnhvZbgwt1BHQlIMG0Gbf3boLByMeRD5a7SN+VsJCDK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GkbFwWts; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA4rpu001667
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 14:59:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LGivlFPRUFzyqdDIJCQVoLwxyXyURMZg/RLnf3kJUBE=; b=GkbFwWts5iUCJ013
	4VG1GtpapIatmlerSzt7TsNl2fXvLsKcmoc8KRa4p/qtTmCZASLWDikQYg9ZGH+u
	njFA84FXkb80ZzVfYeakvmR6JR7GltU+o+td5zqhfgzZKD/F9szUsUU2b4Gno6Ws
	lvePQgcQBlp9FWkfzoJutvVXqkOfbWF2gPv0kZu44eDRGt+MOf90UYmtMsUSuhZ8
	jwvGyw4NBLskRjbcnKbplS+8EJ9qPuOn4lD8SwBLftmI2f0ffcd0zv2fCr8zrN3F
	LsBbLoIf8GLovUBEAVNkMRjSh3mPvy/g4DE7QiAv51Cl8OX/c0xldkWPrur/vsv+
	HQ3xzQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqq0858-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 14:59:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2507ae2fa99so103848615ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034784; x=1758639584;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGivlFPRUFzyqdDIJCQVoLwxyXyURMZg/RLnf3kJUBE=;
        b=MmgRhbOpvgMKPLklFOXddB51Ovf74c/L7d2aOWIWXrYBxhZzbJKtOX+kEbc2T9Sv+p
         bquSJfcBTzU7L51VH2PJgKRpbaHkf0fU1cKrjvJiWDZUvK4EskLBhqTeC1JBP+DUJSWi
         TMK93sP8LbM4VMHubtl98j3YnzZJdYdPx3Kooh2aoxJrJb+Rb3ER5ENFg85CwQyj5Ntu
         5OlcXiXKfrnGuSoW2dOOSsVnDeiw2WHElJjAHndGRN8ThEExTAohbt8hW/kl7gwDvUeO
         NiutzrmdIP9nhhPPHIYm4nuhH1VSiGub2zg6jrXr5KnkkNyF1n38hrlI2CTz/1VkWwLq
         aSYg==
X-Forwarded-Encrypted: i=1; AJvYcCWxmfqc7sz07PlgEODkfzhv75PAwCS1oM7omBNpumveljohmgva/+zkI11f3pJ3ebx4A9tqnzJXBjsp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2qt3xTxpCnVWHCklJqO6pevvQ1PKMlm/epV37Ob0qZUJ+XY84
	P6hx0W0uMWgta3uNEMuzSpmeKIlNX2fcKb6I8E3vmuKlomvqUW4CFJoVnjwONgzNhA7gd+xU9i7
	GdsCP9GiRL8sDOJVXCTqW6JSyZJVriCvvew3Of4C8NaTA2sBSRc3RGHYYsYpuxIT9
X-Gm-Gg: ASbGncseMsy/NIxEKjVC8khKPX2X2YMKXbZM7fXqawjF7hccrBLI++8woror80jYs1x
	03XYW930NOrx7HWXyvlXuhYHXADsHdee7HLGxC1Jgn2rpmamks/svMQKunj8b0dh8DPNZT5wBB8
	HzRClLpAY7jwkBxeKTQV6r+aNRzQPlPD9WequCcbxgyoFGXVA3eRhbTAcJsA2tJvfLTQQGN4bHA
	FwVoiZNPQYSnkGDuRPIr95V7WwIHT3R5E1mjWmTTFAVSuf/tSTpljamNkfPAM3DGorY5fME9nYJ
	sZiq0wpvqU5mCrq3jKZ/4LOuKxsFdnqIy+7VtxxeqoiFnsqUAoheOH2c6cuHf5JGRhfD
X-Received: by 2002:a17:903:244f:b0:267:d0fa:5f75 with SMTP id d9443c01a7336-267d0fa6b33mr43336355ad.1.1758034783884;
        Tue, 16 Sep 2025 07:59:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8A9Ir70Z/p5m6VgOr+1WTpcLrwaUQVF/ndq8V6egXMmz0Evup4AB0T6k7P2GKkxD72d01Bg==
X-Received: by 2002:a17:903:244f:b0:267:d0fa:5f75 with SMTP id d9443c01a7336-267d0fa6b33mr43335815ad.1.1758034783324;
        Tue, 16 Sep 2025 07:59:43 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.07.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 07:59:43 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:23 +0530
Subject: [PATCH v6 01/10] arm64: dts: qcom: lemans: Add SDHC controller and
 SDC pin configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-1-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=3497;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=DwrtxD3ZLmemkOPdq7lhEGfiDfoe4W0WX7TMCKQ8d9I=;
 b=XtWgAoinX5GmsWiRsNvjwzmDS5RO5ART8RCF8c+fIkjVP/Z9NhOvQmClzsliu92VDWOskPaJS
 iB8qALGpyjRAZwmpi6TZDxysGhJMlPkFsOFFMk45VT5PaPtrt3sJcFW
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: JHMwcRO5ll14qsHihzQX9iF8ht_08COl
X-Proofpoint-ORIG-GUID: JHMwcRO5ll14qsHihzQX9iF8ht_08COl
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c97b61 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ALy2IlhOjgNbs65Id4kA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX/H1z8sQ5lK6J
 LBacE53VWFPaBIQWAu9P4ykR9jDdSFiDIU2bAHP6rfazvP8POlNUjU8jzaDSE2I0ghnOfMQYC/w
 okdae/njjLnW+2cBhkj7wLQUiZNumaHqgs8S3yBiV4YfM4IDQAOapkQQpAyR5E1Xws/ywxMwryO
 fZC5uj8ul1NZSXuXePMdlaUwB35tYZgq2pKmxq4soNCCwfW60OUhhB6N6Z2Eyx497aCud8eW0FE
 f+rjBWdHJJOg7Q9AUBBPix6SmsesqCUtLOFvhonL5ellPcYZalE+jlGfeRXTZJz43quHicMRKIM
 WUrJv8u9zQh10VrA7PNojXuHYBhD1NNPfpQGy594HM7Bzbm68WqLldZJHHLjWtEy+aVNZRhkb/F
 8YbzQPsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

From: Monish Chunara <quic_mchunara@quicinc.com>

Introduce the SDHC v5 controller node for the Lemans platform.
This controller supports either eMMC or SD-card, but only one
can be active at a time. SD-card is the preferred configuration
on Lemans targets, so describe this controller.

Define the SDC interface pins including clk, cmd, and data lines
to enable proper communication with the SDHC controller.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 92 ++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index fd6eb6fbe29a..b7e727f01cec 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -3835,6 +3835,58 @@ apss_tpdm2_out: endpoint {
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
@@ -5658,6 +5710,46 @@ qup_uart21_rx: qup-uart21-rx-pins {
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


