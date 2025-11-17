Return-Path: <devicetree+bounces-239199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C70BBC6295B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 8910C24154
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 06:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9E7316905;
	Mon, 17 Nov 2025 06:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jk4AyU3q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="elHhCrdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E6E3161BB
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362214; cv=none; b=IxMDilyHZJ6FEntwWfjniPjgTNy17TtZ4GtVeQd9UOzenFT5KXlGTcOPKcVFaFzcpmhgnj8EoZdK1PCBq33ChNarX54AuLtKCRUGHYCvyTxjNiVeBJp8ptXhZDp2ywLJ7poWQUAFHDAbtgI3YQyiZo+cXIWvLJFgo5A98BCmNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362214; c=relaxed/simple;
	bh=dmLZzuKEbsIDV08HNgYOEZ07SsWbkHlT3HhDa9Bp5L4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dZIln/pNb7N/csF/QW3TRVMbIwlyW/bhqxJaZds7GhDxjwkGk0uqrRxzyiAefHX122Ur8jgUujeplkn6Oi66AIuzU1h9ddkzNX3Lhbx0bF4iINfPf3tcy9FUJt3GNUccWKclq2mltJA3CgAeeogcDdSiP6zcKoHS+yqx6LlU6T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jk4AyU3q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=elHhCrdT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4o6wo3040394
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XrgRWENCzy7nh5ZW6Pr2rprzB8CmmTcZw74l071v8z4=; b=Jk4AyU3q5zPEFCzK
	oc3goRBWICc6rd8VlQJhW+lKkQdEA8k0FuSD/MO+hQyZ/mMoVel8f5L2bW5bfLRq
	FcGV3xYrseaLh8JpTC1ryybvaq8De+ehYG874XEsvF+5IvXcP5HOntEE8gr69McR
	vfHZqRpnF3O1A5W/VMRDhn5G23GYTlhCuMa6/DOBGVC0UTZSsgGFO/mfaSZthsji
	5YIx6CKclt67/PzeYzYgtsOpIejilCzVwWByN56IRzl1vru5p/Jdq7iNJl8J2c3+
	Igtch0LbZMuQK17m5l2S6qTVp66pIrvGQ7I5PrjMxaBKguU2NokZXbnBBQ81dO0P
	7eH3Vg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejh03nj5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:50:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b286006ffaso1345227085a.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 22:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763362210; x=1763967010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XrgRWENCzy7nh5ZW6Pr2rprzB8CmmTcZw74l071v8z4=;
        b=elHhCrdTnGabn84UZSTA5mx6neSUI0gf4W7EhyXflhlZaIwmnKhELmTFF3yeIJpV+n
         HArDgkM+k/PfCiizIB0DntC/YkX2APQYMyh1XCaEcXtDuqVdtdDFRmHAlHZ0OkbeRtAC
         Lby5st8mCSYn/6YZ70f9Qho1TsaA2qIfa6QpEGifdSzx7GfpcWhm+ggkni0u651+NuGr
         oiIbGBW4DKdSyGBoLQ8pOI6kNbHwxHoXbEV+whHeLfKDUVWZqkzVZ+0T5wWY/d2mDQND
         Mlns7Me7f4stTRyGdLO658fkAXiaMDx6ltmcuC4doTLDAHM0YFLuPA1jBpGN4ECvrC3Q
         kUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763362210; x=1763967010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XrgRWENCzy7nh5ZW6Pr2rprzB8CmmTcZw74l071v8z4=;
        b=paYHyaRT3TEBwQdthQjGGcP229TGOBUP4YhVGe3F4Y5HUqWn649sKECEDX6dK4tOUc
         fgVg/+1wez4n6FHiaxmh9vj0UxXWwEVN3EtdHD616jn3lXXsK3JO/tPGGiSWRYy+aKX2
         h8sIDIQk/lZQjtGlWZbWlB9dqiWhUGIrtX0i1/j7pt3gjaVioTcd2BhbMggiMD28a1Ir
         ef+mwQlOC6i8kmkIP3zL3r0QhzompSkgoSvyvhLu/6OSuflSYtHYyOBQs5REsyS0B/8P
         Ta7u5rWitxtUBjBDNSG7DEfCfHjXsMd4qx23TajrvGkDpmEN+BrPmBDuVs/Ae9gIARAH
         c1KA==
X-Forwarded-Encrypted: i=1; AJvYcCXa8Y2JNOyw07zwyTtXfGY+zKbn1e2h9q8BCfctqaDvNlIRxz+DOAS4I6oE+to3Ul2aYMwdvNmlGrwf@vger.kernel.org
X-Gm-Message-State: AOJu0YwgM0WUz/ToBpkNg4Cv3r9OThwYGVtPeGM07bOlUmhrMs/HF0gc
	taLyREvGhyPyIvFPGuLT5RuGQveFpd1FUdLgrnbSoHeXFbIZDpqdqLLL7mVavPIubaIkehbIFV2
	ecnLVzlrN8FkAlfL6GY14JXap8sq2CQlWTPCh++KGP7xkHclTZXNzcFnWs4j1MGNv
X-Gm-Gg: ASbGncscJxzhTDWJqjUMNsn3O2P1RFanhw72YIWM5bwfwqSHvyj/RNw08qYlpHoHS2L
	GTJJpEGMt+t2tBOvuNNTieixFTdc+mBnJ862tWvGvzXrjJL67HecKwxo3zkjmCoufsVMI6QS68m
	lqK7eZXqHfPk1XCtNwOndmddyYfsspIUjiZw/Kpps5Rv5b8VLxqXScaJGlW7L78EagaN7x7GLe4
	hKju2BE6tyASKIfj3fGkV/f3jiXTXvwWmoi+oAzR9u42KmIWQVJm5eFda+q7jWGqJg/BhlT3jdt
	cfgt9QG+oNac7FUoqV/3RDOHdRBehMucRFjqYi49qJS0gyO3EOYiQOp4FBmZli6FCC+jlt3ny4U
	WttVIwW3rMxSdNZ+uo8o57l8nTW+Kp9icxmSNfMPiIw==
X-Received: by 2002:a05:620a:2943:b0:89f:5f63:68eb with SMTP id af79cd13be357-8b2c31306b0mr1431346585a.13.1763362209616;
        Sun, 16 Nov 2025 22:50:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdeoGbccTvmcB+P8bz8EhisphiIhQAqbeTYpjxhEv/Afkb2M9pq3MhccgUGQG4k2PFA+J4rg==
X-Received: by 2002:a05:620a:2943:b0:89f:5f63:68eb with SMTP id af79cd13be357-8b2c31306b0mr1431345185a.13.1763362209175;
        Sun, 16 Nov 2025 22:50:09 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b2db481f57sm498961085a.4.2025.11.16.22.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 22:50:08 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 14:49:32 +0800
Subject: [PATCH v7 1/2] arm64: dts: qcom: qcs8300: add display dt nodes for
 MDSS, DPU, DisplayPort and eDP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-dts_qcs8300-v7-1-bf42d39e7828@oss.qualcomm.com>
References: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
In-Reply-To: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763362200; l=7287;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=dmLZzuKEbsIDV08HNgYOEZ07SsWbkHlT3HhDa9Bp5L4=;
 b=9M/6aMyHoxFB8pB6NdOZIkeghlNo5ye7VzvIoxgFNevZ0ZD/yuVBfcU5Pn+Tec6texStKiPdY
 VZsM+e0NFHRCJTETazv8D95abe+8cxhez++DDobGSZO0bGuTQOz28zz
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=W9U1lBWk c=1 sm=1 tr=0 ts=691ac5a2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AJW_lgGcPnFSnOaGF9sA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: DYuxJuqCn8i3ceTsFxEQ3gxmZ68qZJ5E
X-Proofpoint-ORIG-GUID: DYuxJuqCn8i3ceTsFxEQ3gxmZ68qZJ5E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA1NiBTYWx0ZWRfXzJWMgPtu7iuB
 8XzHusvYNPwy3PdiT36tsgTYNHbRLPbzHLqa9gM8/D5CUm/nI77kWA0+DHi+trfNikaL2z6WuCv
 FTyHdvjUxs+Chw2F5ihIajMfrbsx3fF2fPkFO6xyoM6w2ShCa46CNNpen/XMUXk+03jwy2MgnR2
 2Kz++yaFGrYip6f3WLwNDrmgTf/FjZ8057xNnc2MtzQtUMfZ5aFWcn7L5xA6XtOQnpGDy3rYaEG
 /wsahTNnois9rv2yk23XdUoHvyKWWdI69VTFMWgvvnVxNtHgSaFVnWqY/NXcZg2/peQcCG2cwfB
 /XMEd4Cvq7qBS8LESwT+I84TCRdwN3UxUl6Cip/gbJABOuwBpcjPzwHr1KXp/ZHFbMVOUFy48qH
 FApjFG3bZ+SU0BEvng8wZw+RnIoODw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 spamscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170056

Add devicetree changes to enable MDSS display-subsystem,
display-controller(DPU), DisplayPort controller and eDP PHY for
Qualcomm QCS8300 platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 220 ++++++++++++++++++++++++++++++++++-
 1 file changed, 219 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..e44fd5c33816 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4789,6 +4789,222 @@ camcc: clock-controller@ade0000 {
 			#power-domain-cells = <1>;
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,qcs8300-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc MDSS_DISP_CC_MDSS_MDP_CLK>;
+
+			resets = <&dispcc MDSS_DISP_CC_MDSS_CORE_BCR>;
+
+			interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_MDP1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "mdp1-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc MDSS_DISP_CC_MDSS_CORE_GDSC>;
+
+			iommus = <&apps_smmu 0x1000 0x402>;
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
+				compatible = "qcom,qcs8300-dpu", "qcom,sa8775p-dpu";
+				reg = <0x0 0x0ae01000 0x0 0x8f000>,
+				      <0x0 0x0aeb0000 0x0 0x2008>;
+				reg-names = "mdp", "vbif";
+
+				interrupts-extended = <&mdss 0>;
+
+				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
+
+				assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+				assigned-clock-rates = <19200000>;
+
+				operating-points-v2 = <&mdp_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
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
+					opp-375000000 {
+						opp-hz = /bits/ 64 <375000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-500000000 {
+						opp-hz = /bits/ 64 <500000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+
+					opp-575000000 {
+						opp-hz = /bits/ 64 <575000000>;
+						required-opps = <&rpmhpd_opp_turbo>;
+					};
+
+					opp-650000000 {
+						opp-hz = /bits/ 64 <650000000>;
+						required-opps = <&rpmhpd_opp_turbo_l1>;
+					};
+				};
+			};
+
+			mdss_dp0_phy: phy@aec2a00 {
+				compatible = "qcom,qcs8300-edp-phy", "qcom,sa8775p-edp-phy";
+
+				reg = <0x0 0x0aec2a00 0x0 0x19c>,
+				      <0x0 0x0aec2200 0x0 0xec>,
+				      <0x0 0x0aec2600 0x0 0xec>,
+				      <0x0 0x0aec2000 0x0 0x1c8>;
+
+				clocks = <&dispcc MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>;
+				clock-names = "aux",
+					      "cfg_ahb";
+
+				power-domains = <&rpmhpd RPMHPD_MX>;
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			mdss_dp0: displayport-controller@af54000 {
+				compatible = "qcom,qcs8300-dp", "qcom,sa8775p-dp";
+
+				reg = <0x0 0x0af54000 0x0 0x200>,
+				      <0x0 0x0af54200 0x0 0x200>,
+				      <0x0 0x0af55000 0x0 0xc00>,
+				      <0x0 0x0af56000 0x0 0x09c>,
+				      <0x0 0x0af57000 0x0 0x09c>,
+				      <0x0 0x0af58000 0x0 0x09c>,
+				      <0x0 0x0af59000 0x0 0x09c>,
+				      <0x0 0x0af5a000 0x0 0x23c>,
+				      <0x0 0x0af5b000 0x0 0x23c>;
+
+				interrupts-extended = <&mdss 12>;
+
+				clocks = <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK>,
+					 <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel",
+					      "stream_2_pixel",
+					      "stream_3_pixel";
+				assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+						  <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>,
+						  <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK_SRC>,
+						  <&dispcc MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dp0_phy 0>,
+							 <&mdss_dp0_phy 1>,
+							 <&mdss_dp0_phy 1>,
+							 <&mdss_dp0_phy 1>,
+							 <&mdss_dp0_phy 1>;
+				phys = <&mdss_dp0_phy>;
+				phy-names = "dp";
+
+				operating-points-v2 = <&dp_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				#sound-dai-cells = <0>;
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
+						mdss_dp0_in: endpoint {
+							remote-endpoint = <&dpu_intf0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp0_out: endpoint { };
+					};
+				};
+
+				dp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
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
+			};
+		};
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,sa8775p-dispcc0";
 			reg = <0x0 0x0af00000 0x0 0x20000>;
@@ -4796,7 +5012,9 @@ dispcc: clock-controller@af00000 {
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>,
 				 <&sleep_clk>,
-				 <0>, <0>, <0>, <0>,
+				 <&mdss_dp0_phy 0>,
+				 <&mdss_dp0_phy 1>,
+				 <0>, <0>,
 				 <0>, <0>, <0>, <0>;
 			power-domains = <&rpmhpd RPMHPD_MMCX>;
 			#clock-cells = <1>;

-- 
2.43.0


