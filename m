Return-Path: <devicetree+bounces-221041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C57EB9CE03
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECF513B4015
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FA62580E2;
	Thu, 25 Sep 2025 00:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fvSHb1Tj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD045240611
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759482; cv=none; b=dV1dSjrAlGI3LpbDZmI/7RDCaIMOL6NfAYVESOYm6qftI1/iqKpLNmEfBcEYB7sCjSt1Xanu38WmYJTQKTb6IRhAjUH8WpQaCoH2Q9ylo5SSWuaSZQjG8xCbvzqkFk4ho7zCorYjGPq4e0EOpiRnw02qgzvce5g9FQZtHLi8QGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759482; c=relaxed/simple;
	bh=ULHfqkaQ0GIzJLhfihywb9vN3xmhmgDCA1GUVO0Gey8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E19oawQuG5jJpyPc/Cycg5oyoiaL3iShJpGg8EktZ/Z5hJQVO2S2x2c5h9JvRV9UZWtFFEb4JvyMwNCTsxUl8ExgQ/KdsyVQCIi0/ndzqlZn/PQswRUb/b++BLy73KwwkwAyI32LkZ7vNT78npOdFNQTngICJuSD3XYOUBODUqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fvSHb1Tj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONHgMh027912
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	di0HtQL5GCSWZ3LdJJMaCUyeXREKRxFtz2WCJT900OY=; b=fvSHb1TjlK3wjtOm
	9TCNipZCv08gV7g4amf2dWhEPSYQCa3XcIU1LqY3VLMk6Xi49xf7SfqUMu12Plm8
	tKAqkKlAplgYvFO6dAC2b8Li2x3HpveIBBIMZifF5FlfRnVwVMFrBzqDMbHXYz3g
	rVdWupXpph2wTor8eYGMDPDLKfxyx9lYqnQqZ2+VcalHTI73/evq3LTklEnA6xtV
	KeUAnSAbfX0NMHGUgw6AJj+9nSO+Q1HVU1B9E8CaYGSBMC3XnOKCQ6zZ7znLmFcO
	KrlTib8Ky2Qi6e0Kts2Xc70lPWm6pKjnopNyemXvw75ciih2nzp9RbjWKZfF15KW
	yts0bg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxga3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:58 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so268752b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759477; x=1759364277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=di0HtQL5GCSWZ3LdJJMaCUyeXREKRxFtz2WCJT900OY=;
        b=gLS2XH8PBwa7eZRjZQwZ7erI0zbPaYHO4+WagzhJ478v9B+rtW2oKm/ew9fZqfDjdX
         sBZUQS277o0PQWAJQAwuwoPuA8yt3ub+9rOOoxC6E/MMn5ooeFCwWXuwWhktBUHnUsOi
         PbsoLywLKwH3Nt0OKqztqFG8OIwxDsHJBz2rIw63zJyzg0FGAeH+MzTDwe8YbY+ywPZU
         7t5cSro4S0WCRIhUVHWPSKpMnt8IFp6wfCH1pAp7ePmC7AYrDTLNm1zs0yxCj2onG/Pr
         H5WVa5qcp5arsOQp36ndxvAC/4hpPwOlGjIOkZT5HLbZQZo4y7ZScVMClh0t2TWKa8Op
         y1GQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkl0x4s1rm9hg6P0owxXoMYrD9pFJxuAtJ3N0Ubv2SHCSqa1Sh2NfrfWQcLnxOgW/RO7ZZmaprnxnG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5dYg97CxWl3/I55QLP10/yNGnuinSJtttjMudTulQG0RRICr5
	KUzWEfiqS1gtr3PCIJPlL2SkY0h4RTNFZjrvCauHL/ByN+EhD5MoAwoCTJO96bk3PDklPmy4pp2
	4Q0fnW5k9ItC+GELQVy0uBwnBxYYQAm4p1BQN1lTBw43faz5qouzf6ixoJFA0EXxH
X-Gm-Gg: ASbGncvuSN5M1UEBUswyilGNFxQ4Pqjv3MfIarXWFP3tcF0XkwrmUsluvgNO7AILCy8
	8nm956cNJSw9zlS5GeoxqubRh0BDeITpf4FXWnvzd8OcMeLvq7I6SMXQH0GdwSmky7cN35Hlwk8
	rApsCEnto8URqZEGEsynuSpae0NhCHPWkYAU2Vqc/dpSvSHqGaMvtEQ4gbPC/l4OY6CIj+ElKvJ
	P3d0E/ihFS8lithB4IeUhNmUT93OXDYG0lqxWi2boD0G+Fi+5vZoGkTTuHe+p2gipPF5ZF7aYyj
	3fdiJDlBNNO9CbVtfnb0LgMFl91tihsTQuw3dVUbJ2Qb3zbsCKhnkZiACH4QHIo5UQ01xdsUsL8
	t232CbZFqNcdX6f4=
X-Received: by 2002:a05:6a00:4b46:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-780fcebbc8cmr1570418b3a.16.1758759477482;
        Wed, 24 Sep 2025 17:17:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmu6CoG1zqA8dP0rY/3I16XyKi1pyk8g9gJVO3LKwwgBBrbrnC5S4Cc4gaqkivnqVJwkT4sw==
X-Received: by 2002:a05:6a00:4b46:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-780fcebbc8cmr1570388b3a.16.1758759476974;
        Wed, 24 Sep 2025 17:17:56 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:56 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:17:37 -0700
Subject: [PATCH 20/20] arm64: dts: qcom: kaanapali: Add iris video node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-dts-v1-20-3fdbc4b9e1b1@oss.qualcomm.com>
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
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=5611;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=ULHfqkaQ0GIzJLhfihywb9vN3xmhmgDCA1GUVO0Gey8=;
 b=0SsyJuKB+EnM4HrCknrzTKLTG13umrZN7f7ZqBvw7x5cVNZWgmJ8mhePM8ujOuejVTNFnTiDi
 L00XMU8T0viD42rf6CPgpu4SAqlgIkSuz9d17KBDvHh6c6bGjSYCtY+
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d48a36 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JNZ7rJ4N_jiuHEimdBEA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: cP58a_m0kQD-P5sKXb6J8RxD1ZOVrQuU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX/C+3UmfguavE
 yucH4AcOdOJriQLoLyJCoUfBxE7XVMjuyCPfZ5nqO/+3AMmg0N33S07IlvbkBk0RQNW0ipLw0ar
 MeowvQ81PSaT2pMwooAAAVfxkVC8Vw7IWsQkD+0Yfba5/s7EXOm8s/wyFUsNQ7vQuPbHAMRd6Yx
 /rvBGsKiIgyHJUEeRgZc1mEIlwmekFyMPu+kd3qqKaHuL48JLmyw7MD8lLYG8TmpFvLSS+Im8LE
 O3Gv/TKO7OdNrKWRRMvwhkcn/LgsVKS9hWdnvMNvgPzotLjz+qexGnRMWUoPREia2GpyrNZvTOP
 YAlc3K5JlxU/D58/jwEsw61VsP2dR1fd8kqtGW88Gm5ty3X3rA1g2qvFrhxc/7xA3xiHn9kR/HJ
 jAWAzUaO
X-Proofpoint-GUID: cP58a_m0kQD-P5sKXb6J8RxD1ZOVrQuU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Add DT node for the kaanapali iris video node.

Written with help from Taniya Das(added videocc node).

Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
 1 file changed, 155 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index a95274fa3c31..23c4fd9a753b 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h>
 #include <dt-bindings/clock/qcom,kaanapali-camcc.h>
 #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
+#include <dt-bindings/clock/qcom,kaanapali-videocc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -2707,6 +2708,160 @@ tcsrcc: clock-controller@1fd5044 {
 			#reset-cells = <1>;
 		};
 
+		iris: video-codec@2000000 {
+			compatible = "qcom,kaanapali-iris";
+
+			reg = <0x0 0x02000000 0x0 0xf0000>;
+
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
+					<&videocc VIDEO_CC_MVS0_GDSC>,
+					<&videocc VIDEO_CC_MVS0_VPP0_GDSC>,
+					<&videocc VIDEO_CC_MVS0_VPP1_GDSC>,
+					<&videocc VIDEO_CC_MVS0A_GDSC>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "vpp0",
+					     "vpp1",
+					     "apv",
+					     "mxc",
+					     "mmcx";
+
+			operating-points-v2 = <&iris_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>,
+				 <&gcc GCC_VIDEO_AXI1_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK>,
+				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK>,
+				 <&videocc VIDEO_CC_MVS0B_CLK>,
+				 <&videocc VIDEO_CC_MVS0_VPP0_CLK>,
+				 <&videocc VIDEO_CC_MVS0_VPP1_CLK>,
+				 <&videocc VIDEO_CC_MVS0A_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core",
+				      "iface1",
+				      "core_freerun",
+				      "vcodec0_core_freerun",
+				      "vcodec_bse",
+				      "vcodec_vpp0",
+				      "vcodec_vpp1",
+				      "vcodec_apv";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_MVP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&gcc GCC_VIDEO_AXI1_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK_ARES>;
+			reset-names = "bus0",
+				      "bus1",
+				      "core_freerun_reset",
+				      "vcodec0_core_freerun_reset";
+
+			iommus = <&apps_smmu 0x1940 0x0>,
+				 <&apps_smmu 0x1943 0x0>,
+				 <&apps_smmu 0x1944 0x0>,
+				 <&apps_smmu 0x1a20 0x0>;
+
+			dma-coherent;
+
+			/*
+			 * IRIS firmware is signed by vendors, only
+			 * enable on boards where the proper signed firmware
+			 * is available.
+			 */
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000 240000000
+							    240000000 360000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000 338000000
+							    338000000 507000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-420000000 {
+					opp-hz = /bits/ 64 <420000000 420000000
+							    420000000 630000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000 444000000
+							    444000000 666000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-533000000 {
+					opp-hz = /bits/ 64 <533000000 533000000
+							    533000000 800000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-630000000 {
+					opp-hz = /bits/ 64 <630000000 630000000
+							    630000000 1104000000>;
+					required-opps = <&rpmhpd_opp_turbo>,
+							<&rpmhpd_opp_turbo>;
+				};
+
+				opp-800000000 {
+					opp-hz = /bits/ 64 <800000000 630000000
+							    630000000 1260000000>;
+					required-opps = <&rpmhpd_opp_turbo_l0>,
+							<&rpmhpd_opp_turbo_l0>;
+				};
+
+				opp-1000000000 {
+					opp-hz = /bits/ 64 <1000000000 630000000
+							    850000000 1260000000>;
+					required-opps = <&rpmhpd_opp_turbo_l1>,
+							<&rpmhpd_opp_turbo_l1>;
+				};
+			};
+		};
+
+		videocc: clock-controller@20f0000 {
+			compatible = "qcom,kaanapali-videocc";
+			reg = <0x0 0x20f0000 0x0 0x10000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_VIDEO_AHB_CLK>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,kaanapali-mpss-pas", "qcom,sm8750-mpss-pas";
 			reg = <0x0 0x04080000 0x0 0x10000>;

-- 
2.25.1


