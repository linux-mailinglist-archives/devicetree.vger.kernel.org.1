Return-Path: <devicetree+bounces-203824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 867D9B22A15
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4C6A188A97F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 13:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19CA2877D0;
	Tue, 12 Aug 2025 13:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gH8Q6Cou"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277962877C2
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755007028; cv=none; b=jSFX6W/6cbZBNOY+DIJ/Cur7rEQDerkkHtDDzhK5AW3VREOoS38uL6R9qQivbD75fCvpISd0h4/bVyXU7+ynBuUG2ZpCVCBkOmBKgWg9KT7jsT2PaOBdyvC5k+icpo2eMBJYry1gEAeqcn+EBz9RCm790uhI/MMOWAhB7yr5UL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755007028; c=relaxed/simple;
	bh=ZHN1GYoa/UjGJmJso0YGyCQ2QI6I2ebKzKZi1WqJE3U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VZTVThQqs5piG9SQglHgH4v0cI8IC8fazvEdM3a7TKvi9iQVS9jvmT0Mqb36AyTYY13X+4rAkjUm0spl5WGU0FzicXtDbcywu5+jWosgSzSUth0pud/N/f/chezGXJyxKaUqybuSrcd+ZHIWoWgUlBPEKXTaitHxyoCyMpnyscc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gH8Q6Cou; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAvfFZ012907
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vC9kVYpsmo7G6F9s1+W/Z0x6YZORmkun/3JdzHvaSEM=; b=gH8Q6CounJqUU6Ez
	jrdnrJknDqh6Y4uLItQBP09lDLP1XINCFIXGFl/TAAxJibD/N/r356F7zDxmnIBq
	Z/KGiwrdQ01XAXIeFC/U/iBrH08jltBNccOA2U2B/MWKI4PPBtbFTGE3gTcgx0PL
	synrXkJLC0yd+sYKYLbPIDyqklB3GG1kj8XpbWxbT1cRzIqE9JKdqVJ3hk7/arXq
	C2ZSWLgTEbns19xJf51c/8cFcZoT+d7Ubt7rQywxs6su7n0Isrc0P2RrXMcqKOBD
	nTM/FzuH4BuWf/PhthPMIg+l+rCjLDjrgI9pBiIRY/a+to8zq91by4bMJ0T9xqXS
	fgyoyA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbbgej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23fe28867b7so73904405ad.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 06:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755007025; x=1755611825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vC9kVYpsmo7G6F9s1+W/Z0x6YZORmkun/3JdzHvaSEM=;
        b=FF02lifjgy7sxa+arymSLugIed7dldB3zDU3Lx6Ve97qaHKDNQD6VH4taRUavqkuGM
         Yhs5jfMNgCCopi5I9oexZrft5FtSw1p7RdXqAhTKTHt0CM5foPmvvBW9pVld41zIOHCF
         8Rpi8iIcKLYp0pYtsGQ+eKDyBiq4Qab698A3ZCP9gkFVHziOQPP3CDvCvhUhRfU3v/wr
         PKnt6x+ZpIkm3ft3gVBwcxHVSmQvq0Nt+hO/qT1fq6wU6yfcbpV2Ka4GUb9bfY+6y/1t
         G9Akr0GP50XTXtpZXM8V1pcv0HAIyOqCAgbOZUJEjmt6jcTuN3Wp/55efghyZ1w/Xl13
         bPcA==
X-Forwarded-Encrypted: i=1; AJvYcCXZx4/O5nbxTNOx9WyhZRnHWpiWJ9TWhuiu62OPvdiD7nTqMayeiBUsXmEKwxi2Dbk4Ol7amXOAzGTr@vger.kernel.org
X-Gm-Message-State: AOJu0Yztf4IVkpnNlMnDqZmVVDxTs3RdfVv03v6Axh/AH4LPW5Ofitz8
	Rc3hhT9675Mt0j7EwU+5i4tlLw0NtvixOI5jqmW6ss7+n/qM1zpXFpGv7WED1TQ1FDIF/VZXW1E
	toL38nVvt1mpXdYWlSZYkpHPshjvmmrgJBwkxYw8fF4icP+p73rvgOpob664Ouh3X
X-Gm-Gg: ASbGnctHjCTsJYeQikMTGJ1RW4DQzaR9ZvP0hrwkGFjMVfa/2YXeBmRRgcACTEsrzDZ
	KfGCzsXyCjENR3Rliul8aVRNOrewiWRzlBWDEjmnFLyhisvX2DUxQ74qDC5pFYaKtvwM8QTELSG
	7bQhsvPqdiTGhTJnWvgHoQVNFOF6Gl4j1Jst8PbBMsgfodBk104I62sGhxprs7H9KLeaxqxUX0G
	uFgYxp55EE4yD9nw4zgpaBdTD15jWpwlQ6qyRZV0MY5Cjt2b8YQMo/6BYMuX53+s4MnBbO1GnYs
	QF723n/dk50Qt5CjWP6+ppART82NrQ2FEATT5yExwrK/DCm04rpY2gxSe4v2BtprAavkuU/m7ME
	=
X-Received: by 2002:a17:902:d4c1:b0:234:e655:a632 with SMTP id d9443c01a7336-242c225f5edmr251590145ad.51.1755007025177;
        Tue, 12 Aug 2025 06:57:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2skVoQjxqv2NdGTdZLMTCJHQUl9+Juy6XzRWzaTW6Fsaq0wtQm8R6pVqSia8VInKNIJ0u7Q==
X-Received: by 2002:a17:902:d4c1:b0:234:e655:a632 with SMTP id d9443c01a7336-242c225f5edmr251589645ad.51.1755007024540;
        Tue, 12 Aug 2025 06:57:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24302e028dcsm16703265ad.91.2025.08.12.06.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:57:04 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 19:26:45 +0530
Subject: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Add PCIe0 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-sc7280-v2-2-814e36121af0@oss.qualcomm.com>
References: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
In-Reply-To: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755007012; l=5970;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ZHN1GYoa/UjGJmJso0YGyCQ2QI6I2ebKzKZi1WqJE3U=;
 b=tyJEfhajjY7k3a/2MiR5Av5yhH8Wvva+GPaFMZ/KIiYQ8xV7O6o5tNwIgKEfvHctMWTCztqho
 XzKcqisRDjhBx6iAtgQtgJamPszkeG/I6QO5FnozyqaxAGSoMcyDwlo
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689b4832 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9
 a=joUWkbzKA2oh4xZ8:21 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfX+/HqN7hHIeKN
 G6o6uE0XWj75gT6x/b/ihpT7rnmUFdhuPY3H6FUEFxf+Jdbc0n3Fw4pmzxbxxIK3i+3ERnJlaSE
 B2T0N4kceLbMBY/58cngw2aPj0mvVZxWbkrIoKGOUlhvjT9H+4gkHVhipxK4vybN2K2aN0uKEE2
 WdqYpmAKGb8wl/H+kKgOGMmy5ucxN+itYxLpFqJkzQyFkemh+nKME5IklKkd2OS+drXpvVfwjHV
 8ZkHst7WQGxoLggQfbFdt4A2gz9l7uE3s4db9pizMRqfzhdu2LtTZ5PJUx9QrOjHf1+kNPQ3mQw
 AkwdlJjvi3SGnAVk3Vdvhd6WB53+zAQG9Fgx5F6nypC3sUDzqcUmey/1ZxKj9jkVeJpQ3/4b/Vu
 cAUFyZS+
X-Proofpoint-ORIG-GUID: zGT02EJu43Sw381k9W7hxq59P9elriMn
X-Proofpoint-GUID: zGT02EJu43Sw381k9W7hxq59P9elriMn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

Add PCIe dtsi node for PCIe0 controller on sc7280 platform.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 170 ++++++++++++++++++++++++++++++++++-
 1 file changed, 169 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 64a2abd3010018e94eb50c534a509d6b4cf2473b..b0f688ce1c285888c05ed718e58dfafd51e2c1cf 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -970,7 +970,7 @@ gcc: clock-controller@100000 {
 			reg = <0 0x00100000 0 0x1f0000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
-				 <0>, <&pcie1_phy>,
+				 <&pcie0_phy>, <&pcie1_phy>,
 				 <&ufs_mem_phy 0>, <&ufs_mem_phy 1>, <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
@@ -2200,6 +2200,149 @@ wifi: wifi@17a10040 {
 			qcom,smem-state-names = "wlan-smp2p-out";
 		};
 
+		pcie0: pci@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sc7280";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf1d>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x1000>,
+			      <0x0 0x60100000 0x0 0x100000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+			num-lanes = <1>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
+				 <&pcie0_phy>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_CENTER_SF_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>;
+
+			clock-names = "pipe",
+				      "pipe_mux",
+				      "phy_pipe",
+				      "ref",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "tbu",
+				      "ddrss_sf_tbu",
+				      "aggre0",
+				      "aggre1";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&aggre1_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc2 SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			iommu-map = <0x0 &apps_smmu 0x1c00 0x1>,
+				   <0x100 &apps_smmu 0x1c01 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pcie0_clkreq_n>, <&pcie0_reset_n>, <&pcie0_wake_n>;
+
+			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sc7280-qmp-gen3x1-pcie-phy", "qcom,sm8250-qmp-gen3x1-pcie-phy";
+			reg = <0 0x01c06000 0 0x1000>;
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_CLKREF_EN>,
+				 <&gcc GCC_PCIE0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			status = "disabled";
+		};
+
 		pcie1: pcie@1c08000 {
 			compatible = "qcom,pcie-sc7280";
 			reg = <0 0x01c08000 0 0x3000>,
@@ -5285,6 +5428,31 @@ mi2s1_ws: mi2s1-ws-state {
 				function = "mi2s1_ws";
 			};
 
+			pcie0_reset_n: pcie0-reset-n-state {
+				pins = "gpio87";
+				function = "gpio";
+
+				drive-strength = <16>;
+				output-low;
+				bias-disable;
+			};
+
+			pcie0_wake_n: pcie0-wake-n-state {
+				pins = "gpio89";
+				function = "gpio";
+
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			pcie0_clkreq_n: pcie0-clkreq-n-state {
+				pins = "gpio88";
+				function = "pcie0_clkreqn";
+
+				bias-pull-up;
+				drive-strength = <2>;
+			};
+
 			pcie1_clkreq_n: pcie1-clkreq-n-state {
 				pins = "gpio79";
 				function = "pcie1_clkreqn";

-- 
2.34.1


