Return-Path: <devicetree+bounces-209435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13121B37224
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 20:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A58FE366873
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 711CF371EA0;
	Tue, 26 Aug 2025 18:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SVIs0grA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312F336C096
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232504; cv=none; b=Q8LoiuDru88fxI9TpBhQmPaEOYoY6nj28WUIzpuhLFGkoqOna5Qm93pJ7AD8yqhXdrT8OZdx2WOSQAWkm2mLFMafewOJnlw4uaXNHdYHpc9KAWUUAQtIo1MLo/+8ShVJCpiXTVsl4jDpNAtTHeGWKL7Qs3IzO+niPDw4LtoI5ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232504; c=relaxed/simple;
	bh=xOgv7zJjUxTUkuZxadg//0KJhmC8y3VYrXmju+3Ofds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M/MR27dTc6Z+HN5bTlQfDjffuSsMg8TfOWmuyXQi6wpPbsqKGG9a+RVFIjkPeKrROkO+zk1BWLuhEkvSrjpa1fRE/kplRakzG0faNoNTTMCYCSPfKCmc9MFFVcOpfYoenlDJiv2JI6rTx+8gcnoWBTrjdj2hjcgr6BSBzUXYT18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SVIs0grA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QDWh65018085
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FChFkETmwCKzhb04Z4mzU3cThn++D6k4p3IfeMQ223Y=; b=SVIs0grA1OEqiSaZ
	/wE8aQL27Y3g4HuO1/4bxN/BirRhZ4bSACR4j3ZvItyBmtMSKLPZxSSMZ2YE9826
	YSrPQM0cZPZALfz80Bqv+ZtA523eAvZtTC8nXt64BLsoqP1Tvg74SMkbgeMAlbW2
	Ri3TVKfg9Z404GKAEnjFpujEGtecWl0tINTgQxWvPravHMk5ual+MZWrHyI1+aea
	ZkSTglV3MH6g5UY4N1OP4HoM8+zOQKT4+BPjWJCfi+JBVELJ+IfNHvELnW4gfk6g
	UwywKAaB3blf8ePPIH6M9ixTXDiw7yyb92N6Lyz3MY4yVeguubvuGziBSW+Cn951
	06wPkw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unsunn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2eb6d2baso11166662b3a.3
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756232499; x=1756837299;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FChFkETmwCKzhb04Z4mzU3cThn++D6k4p3IfeMQ223Y=;
        b=CeiRmmT5HPpOnB5bjrM+cTYjXF0G8NlgZfjkMd97GPn6aN3lLhSqL3PUUbkMOcavc7
         kNo/FaRL0XdGCj6Y8E48D+zuVACgIj/OZnBjWo0Twc6L5NikB4y2bvcSMegy2/Vfsy/e
         Ij+RRA4gy2gFsOky60hOqe0ScciFtYT8jfHWzyvK/QpbhoxARLxZ4SFkKn3Mn1IDlpeO
         oubkOukaXHJ4NSSlbEHbZMY2y4SfyD2tcM4kQoUTO8Mmy47dEXXQhxuSMfuOUTeqFGD5
         FWElIJmc59S4j/TkwWlS34D4NWLdLPj2Oyu2M+fznGOm8PF/cQB315jbLesZ74f3qIRN
         nb4g==
X-Forwarded-Encrypted: i=1; AJvYcCXiXasu8uzqwBd9S56wGFUX9mCxJdJgYf5aDF5/BvPYVadWAM76P7ZImfFOUyqi8wLuVdxZuLjVm2r8@vger.kernel.org
X-Gm-Message-State: AOJu0YwLV9dRzoreSOSbsbvr1w9FhFdUK6TYSMC4HZ3SMafPpXp7MwRr
	cTIyLusOpSVECIzqj9IOOPP7E3YOMnu5Dq9jfvSThc8BYx8pCHj1ympc9gLMyZMOXWsXx5IIdN7
	DS4eSe22awLKqQ69aZk0DPlL1pyzIhiv/AKahfV6yMATOz8FArmzIfCcmR0gEW2OU
X-Gm-Gg: ASbGncvu5FYaFjTSH+Ouguk4flJhpB4q0nrEpkiO/4Zzl/IVApTe30Z/N4bUCzY/2lC
	UajMNzhU/T+QL5uqkrGFW8P+emOSMKwMzxdFGXSKp3mdgnYtMfP9X9hPyOclSTtwAwKXMIlOSO2
	oDgW4YQQhoxvfeLMG9UWcEwlGRjSb9nWZ9OZq0+29VkVxwxm88hMiGMlou1LMUrFfwXynYch1RG
	iXhE7JtoND+Hl8AHOuti5u83uFIhfsIGURI5TIgXz6WcsM+ZCeaXMVH7xNrYk4s768T9MurbDw/
	zHJ6hKsqnEjNtUzfmch+nQL7C/EHsjwgch/+ZIjWaKFDuXmwQrv6OlCOd+MzZuNE45Wg
X-Received: by 2002:a05:6a20:938e:b0:243:15b9:7662 with SMTP id adf61e73a8af0-24340d6e2d0mr23095139637.60.1756232499246;
        Tue, 26 Aug 2025 11:21:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqTO7Pu0wOsLUCAduferZquK+24b2fZ5cpErQjBpKf3mge15QU2OPVpb0Li9cR7UXqWFEfvg==
X-Received: by 2002:a05:6a20:938e:b0:243:15b9:7662 with SMTP id adf61e73a8af0-24340d6e2d0mr23095093637.60.1756232498783;
        Tue, 26 Aug 2025 11:21:38 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77048989fe6sm9881803b3a.51.2025.08.26.11.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 11:21:38 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 23:51:02 +0530
Subject: [PATCH 3/5] arm64: dts: qcom: lemans-evk: Extend peripheral and
 subsystem support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250826-lemans-evk-bu-v1-3-08016e0d3ce5@oss.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
In-Reply-To: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vishal Kumar Pal <quic_vispal@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756232476; l=10592;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=xOgv7zJjUxTUkuZxadg//0KJhmC8y3VYrXmju+3Ofds=;
 b=ZBDUOyKj72T2Epo88S7kxV1KbaHgLdo80+cqZfVrLUo7IRmBJSaI6wh3yfUQUbfHGP+/THE1/
 GaFh2EtgzPZB6wOLZVWOPNtP8MYLDFtVbOd7EvUaPktuJ1V1HEctrgE
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: 9CVqRdUes4SnV-FdcXtftCziOwYQMmJ4
X-Proofpoint-ORIG-GUID: 9CVqRdUes4SnV-FdcXtftCziOwYQMmJ4
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68adfb34 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=fhKFeyVKGdTqEzYY0RYA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfX/b9tj6+BMOXl
 LqmkOLCnhkKtkEHTr8EV4k6zmEivLDGiHvcDg8v1L7+sLrV+OKjvZPzy6asewMfP9cICncE7grX
 sd/i6nDLoDB9e6whiaEy8SY6CiBXt+vBnJjkrZVP+QoK4l5/d2M8zdP3pWHratE6chVQtljXaT7
 zEWh1/xEoLu4pFOCdvVrPllk1IPPjEdTEDRdclKCb2Qj92IxwBNkZ0RpEaRNwHKMxriSo7oLeFO
 DpCPf+sa75aZP4JEnTAAyF/d7rVA0lLTv14+TmIoB43GBGl1+9qEg7mFyzi/JJ8COJUxJqdaAz5
 rxMF3CUz/a9PhW4nPLOLojVYE3IIWyUXISFcusDQuyySv8JOs3wD0VMdDf95eu1Pc8ThXfffgcU
 xXlN/5uy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

Enhance the Qualcomm Lemans EVK board file to support essential
peripherals and improve overall hardware capabilities, as
outlined below:
  - Enable GPI (Generic Peripheral Interface) DMA-0/1/2 and QUPv3-0/2
    controllers to facilitate DMA and peripheral communication.
  - Add support for PCIe-0/1, including required regulators and PHYs,
    to enable high-speed external device connectivity.
  - Integrate the TCA9534 I/O expander via I2C to provide 8 additional
    GPIO lines for extended I/O functionality.
  - Enable the USB0 controller in device mode to support USB peripheral
    operations.
  - Activate remoteproc subsystems for supported DSPs such as Audio DSP,
    Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
    firmware.
  - Configure nvmem-layout on the I2C EEPROM to store data for Ethernet
    and other consumers.
  - Enable the QCA8081 2.5G Ethernet PHY on port-0 and expose the
    Ethernet MAC address via nvmem for network configuration.
    It depends on CONFIG_QCA808X_PHY to use QCA8081 PHY.
  - Add support for the Iris video decoder, including the required
    firmware, to enable video decoding capabilities.
  - Enable SD-card slot on SDHC.

Co-developed-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Co-developed-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Co-developed-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Co-developed-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
Signed-off-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
Co-developed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Co-developed-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
Signed-off-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 387 ++++++++++++++++++++++++++++++++
 1 file changed, 387 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 9e415012140b..642b66c4ad1e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -16,7 +16,10 @@ / {
 	compatible = "qcom,lemans-evk", "qcom,qcs9100", "qcom,sa8775p";
 
 	aliases {
+		ethernet0 = &ethernet0;
+		mmc1 = &sdhc;
 		serial0 = &uart10;
+		serial1 = &uart17;
 	};
 
 	chosen {
@@ -46,6 +49,30 @@ edp1_connector_in: endpoint {
 			};
 		};
 	};
+
+	vmmc_sdc: regulator-vmmc-sdc {
+		compatible = "regulator-fixed";
+		regulator-name = "vmmc_sdc";
+
+		regulator-min-microvolt = <2950000>;
+		regulator-max-microvolt = <2950000>;
+	};
+
+	vreg_sdc: regulator-vreg-sdc {
+		compatible = "regulator-gpio";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <2950000>;
+		regulator-name = "vreg_sdc";
+		regulator-type = "voltage";
+
+		startup-delay-us = <100>;
+
+		gpios = <&expander1 7 GPIO_ACTIVE_HIGH>;
+
+		states = <1800000 0x1
+			  2950000 0x0>;
+	};
 };
 
 &apps_rsc {
@@ -277,6 +304,161 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&ethernet0 {
+	phy-handle = <&hsgmii_phy0>;
+	phy-mode = "2500base-x";
+
+	pinctrl-0 = <&ethernet0_default>;
+	pinctrl-names = "default";
+
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,ps-speed = <1000>;
+
+	nvmem-cells = <&mac_addr0>;
+	nvmem-cell-names = "mac-address";
+
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		hsgmii_phy0: ethernet-phy@1c {
+			compatible = "ethernet-phy-id004d.d101";
+			reg = <0x1c>;
+			reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <11000>;
+			reset-deassert-us = <70000>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <4>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,route-up;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x1>;
+			snps,route-ptp;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x2>;
+			snps,route-avcp;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x3>;
+			snps,priority = <0xc>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <4>;
+
+		queue0 {
+			snps,dcb-algorithm;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+	};
+};
+
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&gpi_dma2 {
+	status = "okay";
+};
+
+&i2c18 {
+	status = "okay";
+
+	expander0: pca953x@38 {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x38>;
+	};
+
+	expander1: pca953x@39 {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x39>;
+	};
+
+	expander2: pca953x@3a {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x3a>;
+	};
+
+	expander3: pca953x@3b {
+		compatible = "ti,tca9538";
+		#gpio-cells = <2>;
+		gpio-controller;
+		reg = <0x3b>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c256";
+		reg = <0x50>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mac_addr0: mac-addr@0 {
+				reg = <0x0 0x6>;
+			};
+		};
+	};
+};
+
+&iris {
+	firmware-name = "qcom/vpu/vpu30_p4_s6.mbn";
+
+	status = "okay";
+};
+
 &mdss0 {
 	status = "okay";
 };
@@ -323,14 +505,196 @@ &mdss0_dp1_phy {
 	status = "okay";
 };
 
+&pcie0 {
+	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_state>;
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	perst-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_state>;
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
 
+&qupv3_id_2 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+
+	status = "okay";
+};
+
+&sdhc {
+	vmmc-supply = <&vmmc_sdc>;
+	vqmmc-supply = <&vreg_sdc>;
+
+	pinctrl-0 = <&sdc_default>, <&sd_cd>;
+	pinctrl-1 = <&sdc_sleep>, <&sd_cd>;
+	pinctrl-names = "default", "sleep";
+
+	power-domains = <&rpmhpd SA8775P_CX>;
+	operating-points-v2 = <&sdhc_opp_table>;
+
+	cd-gpios = <&tlmm 36 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+
+	sdhc_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			opp-peak-kBps = <1800000 400000>;
+			opp-avg-kBps = <100000 0>;
+		};
+
+		opp-384000000 {
+			opp-hz = /bits/ 64 <384000000>;
+			required-opps = <&rpmhpd_opp_nom>;
+			opp-peak-kBps = <5400000 1600000>;
+			opp-avg-kBps = <390000 0>;
+		};
+	};
+};
+
+&serdes0 {
+	phy-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };
 
+&tlmm {
+	ethernet0_default: ethernet0-default-state {
+		ethernet0_mdc: ethernet0-mdc-pins {
+			pins = "gpio8";
+			function = "emac0_mdc";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+
+		ethernet0_mdio: ethernet0-mdio-pins {
+			pins = "gpio9";
+			function = "emac0_mdio";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+	};
+
+	pcie0_default_state: pcie0-default-state {
+		clkreq-pins {
+			pins = "gpio1";
+			function = "pcie0_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio2";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio0";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default-state {
+		clkreq-pins {
+			pins = "gpio3";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio4";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio5";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	sd_cd: sd-cd-state {
+		pins = "gpio36";
+		function = "gpio";
+		bias-pull-up;
+	};
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;
@@ -356,6 +720,29 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_0 {
+	status = "okay";
+};
+
+&usb_0_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_0_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };

-- 
2.51.0


