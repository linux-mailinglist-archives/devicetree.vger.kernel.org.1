Return-Path: <devicetree+bounces-221025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5431B9CD71
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B57247AFCDD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F47E1A3172;
	Thu, 25 Sep 2025 00:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vi4zLkGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642F3195808
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759460; cv=none; b=Sx3Sr/pzdTihsRa7vUxiE59V3DcpuMj+73c5ujGYke491OkhNcYdR17Uuef+/7DcnUswIaO3RH998UqD1fwfwKBE8tVGft6nHT0p9BT7p5AUTyRaPWHusj7xhWXE9YGLdrsH4Y8W2VBR9JcUiOl75xHMSq5JAdYwsIMJ4gGxn+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759460; c=relaxed/simple;
	bh=7ormL0LuZNajy7+OXUp/DpGtny1w51nUfnlJsJF8/74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ptMpSWZRTiNGV8tKGI1siq2KGA9HsdJic51H9dcTcKdVMDFaDgFH3HcQFLBeSjPDvP2ufKf9JUDnrYzeGnerbqwrLbmT0qBvTVlWCzOSM4HdYdu150apMPfRFhtdTco+/WKBXydqGqmI5O1HH3XGFpGK5YLdzHmVuC/xxF6HEj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vi4zLkGA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0AwTp018033
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6G956MGJ+80kTDlnB+OiVUBMqMprWRMmfSRYK/4mMD0=; b=Vi4zLkGA8IopbM+a
	YR5qD1RAIIJutsx1uKWI25GnZJhriGfMqr9JPAwHC/mZ/x1QjZU+Ko7+RWTkEQ2+
	VHcxsOMfvGcUetygdKC9+cTQQYcOQDzEy2UNzARj5LzM27gFhMzLDEiryzQL/DcO
	Jl6coOXKVaXsESwCHKn4NXeDK7nDV07POgVWhjFdOEpoKN0C2yzZlPya8Ucz87UN
	L4n69ORiye25/oE6augD59HrhRHqJBqawCYog1OjlpS2qOECFX0GcwEL0cZCiSIb
	v5QMVabixwrhRqKXMmPU2N5ZS+jISa0y1TYhztDHnCIQAhA7Dl9xn9UtXnB2/xN1
	QlBAlg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka3ya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:37 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f2f0c3e62so274486b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759456; x=1759364256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6G956MGJ+80kTDlnB+OiVUBMqMprWRMmfSRYK/4mMD0=;
        b=VFi94FD7dlmK61/1VorfkaEZbI+ky5qEY3n6XCZGxabCEOt6h4KxEwvq66M6VstRUi
         uw32D2ZkGyclQrrcCu0an5jWibvjEsPhkeHKHjUgeCwiHO0mF7Gdu/S7nAVo1jiKzAMo
         ftQBRIVKlU0+KZczL9JDomkjtbdxGovInxuaR21wyTNrvRdEmZodY59XilOeky4WpL3Y
         8nvvPUYkjz7DBNxbZ44cE4noCdVCClNIbmB6LTgGIT5GYkWDgBw8KV0qS7BYBA+JQh/F
         s1RRTihbNlfT+A9v7bZ/6KyAS3CsCEUl9YWtuUbtUjQYJUYodP1xsFe7cqBbB07IuSss
         8qww==
X-Forwarded-Encrypted: i=1; AJvYcCXSXqdoWs0Ckxwj5j4gq2gm0gYV5Q17T91QDARWr1Qcq3g6NQGjKrG7Np/ji0UY7xyZPnB3ZZ8VO8w2@vger.kernel.org
X-Gm-Message-State: AOJu0YwMvTvKV/7WqdGrM4wyb4bWpGZMfMryCt/IeBc3OGk6qo210N6C
	pf0bHq5Jgfzc1ArcXIOPoLclksMNOWEWJM2QgT80TxaUxuzG4e1D5nkyp6G7Vhfwb1KfEWKjt9i
	JlgPZVcqCJ7l31gQiAjWQZPB13yKMmCBx0zciakBilCszclaNKMTVaaLiqv5wGMVu
X-Gm-Gg: ASbGncvmErOjgu2ZIZvPRhxPq4Z29hEjwiWPeRKY7z9kkANexSWEXLxf6v+Bm4s/41k
	ViT001NbAY0ff3IRAOVFhlrb1e38VB4w5uRDJEYphDewP2Par19r9PGzyHSIJihidp7CM3+pDyZ
	waX3gbPmMXqaq39LF58UtBaQGHSvGISHjCWjtBL/G1TbwvV/TB/8VLeWj+GaGfaLzlpRI1+o9fl
	Ju8QVA+wO6rYNFhOkSsGZjdkG/g/vGRnzRrc1aFnVloNtPabiHzxsFjYTYacqa0AcO8Nu5+k9fp
	gkTmiTnN+YF7fWmZd30XfBB/PQej/kfjRpusRerd2yjZZEfObWQxX9vhir4XRsxQ4N3vj6kIaDL
	R9DzMNnXApQh+psQ=
X-Received: by 2002:a05:6a00:4fcb:b0:77f:532f:94de with SMTP id d2e1a72fcca58-780fceba4e2mr1868066b3a.26.1758759455861;
        Wed, 24 Sep 2025 17:17:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtey85IvgKiVy0qGIM3Lf6JscmVRfg0FcCe+8QOKk3KnV2DekatB5SMGyz8IBtwDt/2F5q3Q==
X-Received: by 2002:a05:6a00:4fcb:b0:77f:532f:94de with SMTP id d2e1a72fcca58-780fceba4e2mr1868028b3a.26.1758759455361;
        Wed, 24 Sep 2025 17:17:35 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:35 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:17:21 -0700
Subject: [PATCH 04/20] arm64: dts: qcom: kaanapali: Add support for PCIe0
 on Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-dts-v1-4-3fdbc4b9e1b1@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=6097;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Fe+PVfwLGjDmXrXePpfobS5nH5KwCiqvr36m+lEZ4yY=;
 b=e6D898LOH+hv3CjJqPu6+hh6StByQUTlCW3ZwlpBJgp8dGfVNS/UFyFWITcVeFIMTME+gFWk4
 qXVQWFqWdIOADKUjTqNhqiMmxgZwzhKaHKHnUKpI3l6X4odn+rNFjry
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: rgpv-Cu0nOEankkVTL-kGC3smX7reMbp
X-Proofpoint-ORIG-GUID: rgpv-Cu0nOEankkVTL-kGC3smX7reMbp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX7jFeRZo/6+gi
 it2kRGjq2gUaShsM8ZZAiBrrLtRSorLI2vS2QO0P9ztcJOyZnxxngOCbT3+AXu7FGMjJqngZGix
 5G1qYtIt+VdWV1tpoTaJqd43qMk9EGNVZ204YEFGqze01kx9IDrl/Pbg/F+8KQsaDrKjUSkOJHp
 gDC8C0nlDeNWaUhW59mYA1VUhmE6Dt/ck/4OBdt8ASl1UJTUJzWUDjIaZxF0oaKDZnnJ+EWBNhK
 XqCZ8puzO6pnGnSgL1+EI2u7h0TPp1gyjg4mOMPxc6ux2oQ1xrMIZiWNEzr2iHaB3q+It7Eheli
 hjpU1llCQ7HVQJND/ptYPWOAmsL0RQAtiHoN8wRpz2R8k9vwpXLPKeiG57g+991n8quBiUnH3d3
 54Qlk4iW
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d48a21 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8ZHTqrLIFuk328nbHdQA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Describe PCIe0 controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe0.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 182 +++++++++++++++++++++++++++++++-
 1 file changed, 181 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index b385b4642883..07dc112065d1 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -452,7 +452,7 @@ gcc: clock-controller@100000 {
 			clocks = <&bi_tcxo_div2>,
 				 <0>,
 				 <&sleep_clk>,
-				 <0>,
+				 <&pcie0_phy>,
 				 <0>,
 				 <0>,
 				 <0>,
@@ -561,6 +561,186 @@ mmss_noc: interconnect@1780000 {
 			#interconnect-cells = <2>;
 		};
 
+		pcie0: pcie@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,kaanapali-pcie", "qcom,pcie-sm8550";
+			reg = <0 0x01c00000 0 0x3000>,
+			      <0 0x40000000 0 0xf1d>,
+			      <0 0x40000f20 0 0xa8>,
+			      <0 0x40001000 0 0x1000>,
+			      <0 0x40100000 0 0x100000>,
+			      <0 0x01c03000 0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
+				 <0x02000000 0 0x40300000 0 0x40300000 0 0x23d00000>;
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
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
+				 <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "cnoc_sf_axi";
+
+			resets = <&gcc GCC_PCIE_0_BCR>,
+				 <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
+			reset-names = "pci",
+				      "link_down";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc_main SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+
+			operating-points-v2 = <&pcie0_opp_table>;
+
+			iommu-map = <0 &apps_smmu 0x1400 0x1>,
+				    <0x100 &apps_smmu 0x1401 0x1>;
+
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			#interrupt-cells = <1>;
+
+			msi-map = <0x0 &gic_its 0x1400 0x1>,
+				  <0x100 &gic_its 0x1401 0x1>;
+			msi-map-mask = <0xff00>;
+			max-link-speed = <3>;
+			linux,pci-domain = <0>;
+			num-lanes = <2>;
+			bus-range = <0 0xff>;
+
+			dma-coherent;
+
+			status = "disabled";
+
+			pcie0_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+			};
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				phys = <&pcie0_phy>;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy";
+			reg = <0 0x01c06000 0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsrcc TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>,
+				 <&gcc GCC_PCIE_0_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
+
+			power-domains = <&gcc GCC_PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,kaanapali-qmp-ufs-phy", "qcom,sm8750-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;

-- 
2.25.1


