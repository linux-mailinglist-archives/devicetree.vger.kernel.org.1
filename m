Return-Path: <devicetree+bounces-209657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7BEB38374
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 15:12:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DBE768271C
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 13:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4982F2917;
	Wed, 27 Aug 2025 13:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hlpX3Cgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778DE352FDE
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 13:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756300362; cv=none; b=uGO7W+mnGaFVn1iz/XO/cjnicJqlFWPSFwpvL/kD6DMp1F+JLjuBgyzulXaT3uv+exbWwY1+yq76JzPVnLFvCVq3qZSXVIvhcRWGBTKCJm66o9LNSD9sHqHdUNLf17TJypoGUHOQ2IFR/yOikKNOBNq6RHQvkKiqxZfdPgzK6yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756300362; c=relaxed/simple;
	bh=nKzM8+DhB3mWRo1Uw19AVwyiwRjw8Y1noKAdLwZJkWQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bxCFSTDjQyYwOtXHjpV8WYLwDTtzNEb3BsuYVTOHN2GIW1a29mynerF+OJOJv2CtcHSN4x4ZrO3/tSAHFxeRsFMnqkci/7a94AUHjzon6oXE9UuzXc3iKb5jX0rVun6iTHbcYZUzUA88469BKt51U+gJZeszehWtAgZxD2KhIC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hlpX3Cgq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kMSK031332
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 13:12:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0K02dLIrIWIN69se35x4CnkEpVg0hHnCCy6M9lvO6aU=; b=hlpX3Cgq9PI8Ogtd
	ZnmfYnpQ8xVLGqxxpquvw6T4+YvPRuQAMtm59eS0ObxoENEv7uikORUSbGIvYdwg
	wlfr7RYl6/4dX+lZ2uzUalVqebaBpqVAv9UBRQeDAkBH3r5CNLMtTSfgwl1+KJ6t
	Zd2G9nPqADz+xFNYovJXBRTVA2Jmj1K94w2TddsvcgRQv798DkjWTvC91ofQG43W
	dBNH1598mJJvSATE/ejERQc3psYMuaMIgHk2/KAVkcQb9w4/dTJHB8ipk0dT2e+J
	1MJrMwk0I1OCLgq0g01D29gnroviDUi6DRng/t4faIsyXkMMgq0o8ys8hZbAONb5
	0ccSQg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615mmbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 13:12:39 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4c3547bd78so1205571a12.0
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 06:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756300358; x=1756905158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0K02dLIrIWIN69se35x4CnkEpVg0hHnCCy6M9lvO6aU=;
        b=W/nzzK9vcfwZIIexswB56A5OouhK2aklcdvivZEjYS5bFb4ulJQaz5DT5Elj1LaewT
         nCPEp7Wqfmj5OLd+C7yXdMAx6IHB4bhVngzJ5RcHJdsrsFAWWONWWpk7Wji//69xamA3
         CYfuMUgooyHsRKPfnAxKCNTZIIiUVvI+zZxUlMf1HOMUa61PsOL4loWtCWNr57tWOuUa
         +y3HDGvtAQwkBMq3BcXBC+HiOSzc6aApzONRHU5JS8lu2l9U8SpuM+OUsag2wfTR1XWq
         eMGZiQdJz9Nv5GiD3tbbuOaIU0rSTG97TkxiQZTlq0oeNnG61KXKCRNoU1WfUDpbGpEN
         HNpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR7ayu6HKmOi9XnOeUoX/8jQCZsDezJc79RC5zwCDjKB8g0iiIzurx5sf8/jn7E1AtkVZxQ8+W/rAZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4jMb57PTQQQ2DZk/pZNV7iKzpdhuzzT5OTM1fV8GMQ8NLC7n2
	QvlZ5DQmJLYrX/GkZGbbWIhqmwl8SnaaZkmqr3RmGvPfB2g1e+vZAiQbQS2RdC2uFKgruLfSD9K
	IXFLfea2WZ9uarGG1vgz3+FyxwbBo4vgG76vfrVlEditU0JYafOK7cBj/YiXSwQzT
X-Gm-Gg: ASbGncvcj/at2VO5ECd/Au6Cw9+9KeqPttk/7kdW7X2eXPCTKJPxdRS6pywcoKry4cB
	VDRM+35iV7xu5GzbGysOBoVYB1y4ze3IKbw7WRJM8Z7oKZCPjkm4cF6ekUb2JjmiU9kQf6urJWx
	mnm49ezhSjUISmnZ0g73+ca6+3zpv41VaK74KJ6jzAcRwy3t27Cju1kriRG1Mx4mdwFqZcQsLji
	WfnDm/ybhRkBXrLjoz9wF5DzTvP7ykF0lOLHOpDwPjOz5ItNsTvwRWyyMcic3HaSvQINNu3aj33
	SIdDEp82u0AXclKXEXEnMicTPTk3//vC3+0aLA5K62gvyM34zB2pY1/ZQafOCysFL+CRWgmKiVD
	oW4wIB2gUsS/ZySoeati8P4JJ5kXvg1+CAzibeRXz8tvGbL32swrhZj97
X-Received: by 2002:a05:6a20:939d:b0:243:78a:8294 with SMTP id adf61e73a8af0-24340e2f1a5mr30724904637.59.1756300357965;
        Wed, 27 Aug 2025 06:12:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBKKDmbMeCpOSy/V169srY8qPeL/qgsPevEwM/hT8H/icksjXaQ5N1HO9nHIp0yrYZozdFGQ==
X-Received: by 2002:a05:6a20:939d:b0:243:78a:8294 with SMTP id adf61e73a8af0-24340e2f1a5mr30724851637.59.1756300357399;
        Wed, 27 Aug 2025 06:12:37 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b49cbba615csm11432972a12.44.2025.08.27.06.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 06:12:37 -0700 (PDT)
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
Date: Wed, 27 Aug 2025 21:08:38 +0800
Subject: [PATCH v7 1/2] arm64: dts: qcom: Add display support for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250827-add-display-support-for-qcs615-platform-v7-1-917c3de8f9ca@oss.qualcomm.com>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
In-Reply-To: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, xiangxu.yin@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Li Liu <li.liu@oss.qualcomm.com>,
        Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756300349; l=5827;
 i=fange.zhang@oss.qualcomm.com; s=20250714; h=from:subject:message-id;
 bh=uXlwezLY7U3gqs8X4zeTpdCd9Lux78E+OqnciVI8/Jk=;
 b=4QCsko4TNHA7JgPUEWBuuCeWIgOcS62ypyAm4JzHV39qtIaFzMwkIcz0WAvVQsBP8CBYD02bK
 vipxDCz/ZfyDzndyLIhPVUbiPCd2AGodzIDzFlKfZ+W/c8lhFI30MP6
X-Developer-Key: i=fange.zhang@oss.qualcomm.com; a=ed25519;
 pk=tn190A7bjF3/EyH7AYy/eNzPoS9lwXGznYamlMv6TE0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX7XZDqRPip0kZ
 hIPq2ixgABdUCwC66JkvXBuwn9oVSNQT/hKMPV1fZqzDc+ikCkfJD2C4SRLmdurCkYx8cg76FXd
 nMplf+AdHBkvdLIG/WjZ8B3hgwkCPttfdyzaUHAdubC3WQZxF5rJ1ttuOF42Y+eDUG5aIs++8HB
 wpAipDvEu/lI1KlTgLlT+1T9cVBsW2nerNNCMKwqFNkfh2lAG7FskQet5GZ/2DSiJIDJioZifPz
 ukfUC/m3HKjd9VGiUdCWpFnTgonJ4iLz3y9B99an/27C1zvjj/K6QVINcWyEGbW9VU3CMxlH1WD
 QGFtdlg7tXkr/6ojqaNmzSKB1QCT+Qx4yeCL/F1WeX/UapK4iQZfxMZV/QPDHNU3Rw1Z5roCxGV
 wz2D23s8
X-Proofpoint-GUID: TCFAXDCDALuLkXRwfOHXAVs6M02htARm
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68af0447 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=Roi-LC9FDB9nNxv02foA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TCFAXDCDALuLkXRwfOHXAVs6M02htARm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_03,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

From: Li Liu <li.liu@oss.qualcomm.com>

Add display MDSS and DSI configuration for QCS615 platform.
QCS615 has a DP port, and DP support will be added in a later patch.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 182 ++++++++++++++++++++++++++++++++++-
 1 file changed, 180 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 53496241479a05fec7bffa893b96b2d12b2d7614..c0e6485c148a059f6c0b2d221a9ee34b0220ea06 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,qcs615-camcc.h>
 #include <dt-bindings/clock/qcom,qcs615-dispcc.h>
 #include <dt-bindings/clock/qcom,qcs615-gcc.h>
@@ -3579,14 +3580,191 @@ camcc: clock-controller@ad00000 {
 			#power-domain-cells = <1>;
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,sm6150-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc MDSS_CORE_GDSC>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			iommus = <&apps_smmu 0x800 0x0>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss_mdp: display-controller@ae01000 {
+				compatible = "qcom,sm6150-dpu";
+				reg = <0x0 0x0ae01000 0x0 0x8f000>,
+				      <0x0 0x0aeb0000 0x0 0x2008>;
+				reg-names = "mdp",
+					    "vbif";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "iface",
+					      "bus",
+					      "core",
+					      "vsync";
+
+				operating-points-v2 = <&mdp_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				interrupts-extended = <&mdss 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dpu_intf0_out: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						dpu_intf1_out: endpoint {
+							remote-endpoint = <&mdss_dsi0_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-192000000 {
+						opp-hz = /bits/ 64 <192000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-256000000 {
+						opp-hz = /bits/ 64 <256000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-307200000 {
+						opp-hz = /bits/ 64 <307200000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+			};
+
+			mdss_dsi0: dsi@ae94000 {
+				compatible = "qcom,sm6150-dsi-ctrl", "qcom,mdss-dsi-ctrl";
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
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&dsi0_opp_table>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				phys = <&mdss_dsi0_phy>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				dsi0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-164000000 {
+						opp-hz = /bits/ 64 <164000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
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
+			};
+
+			mdss_dsi0_phy: phy@ae94400 {
+				compatible = "qcom,sm6150-dsi-phy-14nm";
+				reg = <0x0 0x0ae94400 0x0 0x100>,
+				      <0x0 0x0ae94500 0x0 0x300>,
+				      <0x0 0x0ae94800 0x0 0x124>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface",
+					      "ref";
+
+				status = "disabled";
+			};
+		};
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,qcs615-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <0>,
-				 <0>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <0>,
 				 <0>,
 				 <0>;

-- 
2.34.1


