Return-Path: <devicetree+bounces-254598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 23192D19B1A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCB80302649C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 675C32D94B2;
	Tue, 13 Jan 2026 15:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E2wAdb2u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YJPh3WKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B283D2D7801
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316421; cv=none; b=MR0sCpHyJo8MQGKCwm9KwNfAEEWaGn8JxU720v1e0hi9/kJ+XVBP2Y0NyZl1FIZl9CiGiYycI3hw82Q7RNl3inDTn07j90hTmnaZHGNDJhjtj3bOc5NwBsNg/3R5W1cA7qSWLH8aJTW+IBzsukA0tRxCgFy7HgpsKsWY+IZ5Dd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316421; c=relaxed/simple;
	bh=ThZ0b8eUhY7yD7ENyUsKPs8BGG8kVqmS/eCCL4DespY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qi1RWy4qd/CcL60Q8yvROdJVJUNskSSB8oVRH7JSCnYZjuJbzrJ7VexRo2FzlIOnPzmFO8R0xEv79jDl2cOvPtNOhitFYvcHnVmZTaG3FZuiogkn0rrdX0kbh44lVyKu6elCtS+zh+FYEhtD+H4DVwHtSxgLPI41t6tWQ0kjmi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E2wAdb2u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YJPh3WKZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCUL883637494
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZjsHMcKbqzB/IwBMVpW5S12AFJ5wBlx7jkpmBTCuFnc=; b=E2wAdb2u3fQ2/2uw
	6XtKI18yt18Fp65p3rdmP3RGMWGBpurAYZLhShDFLEcpGgPURNsN3v77CSZvpz7v
	xSa9vXoOog4lVWxT7B8utVA8uPSfh0LvvYwdVyrGbf9MvEg7IabkkbpU/FVbnJQg
	94DAQrrX9Y3PhpZ3STlvgXz5oC1uSkY3cy/XhMNbcuTDO/LL7udF7A+8aLNC+aI+
	fe8ssVcTl6W/CZF56GH3GKysN9rDjQJP0bNFY15CM9XZUBH9+2AiKx9xudDdlBz+
	aCEie3ce4r17PXgLLdAHcbyXdYwsRLLfBy8RI1OtW9FR9GOOoYuOIkkH3bDqbB/G
	VzlXlw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng2c1qj3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b234bae2a7so2156772385a.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768316418; x=1768921218; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZjsHMcKbqzB/IwBMVpW5S12AFJ5wBlx7jkpmBTCuFnc=;
        b=YJPh3WKZOuUBUKavMrUY8iR/uGomtuocg43/BjAPijfqMtXZ9MRzIqpV0+meA8Cd1Q
         fjgheJqUM90xnN145Zn97qMBD4wRN3PCK5tGBQz7XjRvAQXBqYoc40GdaPQ/fKXT7R8F
         h8EbLaRtVP+Wt0lD/gMu6hFSZvhWCO9V++QSzPGTctvjev4uB0WWXt6Dfyy/KUumSonu
         M0jL/D7nqPh7drmI3OR2nqr8WimO6w2BeA2Ux2B96VVqVj52OUPb4MpDxp7TnbRHU1r7
         qntQ9edCocCJ3EquT7JHqBzvxdXJ12BvNnKpQc7o5CnXDPIDsONeodINP99nbih/SxRl
         rXXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768316418; x=1768921218;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZjsHMcKbqzB/IwBMVpW5S12AFJ5wBlx7jkpmBTCuFnc=;
        b=d0GeX9izcVUiLl6or1T0JUucxMHhifvR8iryRNPdgY6SuRt49T/I2NdFiT4IandykF
         TKsmHkFXcQgkp2nQCamTVJFZJNvin+G7Mxaq59jExVemibD4GbrXpYU1AgXKC3svmV+r
         Kf770PiM5AMdxDncp8j6L7l5MDn81CB5eTlsfOPw012DQ9u2NMF1XkiYVT8SRon6amqq
         roS1nbDczm2aZn8NvDYLwAO3zPNnfNGEoVI8GLmW1BtnM2NMHq4XPXmUuwKOn3DLiUUa
         Lli1E9d2YQnr8bk/cdym9C5Yoj0DdQd9Tf/k/NxWhs8uS3gGNh9NHmliTeMV8pZv+H6R
         1v1g==
X-Forwarded-Encrypted: i=1; AJvYcCWIN0cMZjhl1CX5+4ajPWxxLDqsj6Zq61VfxjIFVNJK7N78MIG4TM1AufIA0tgNzQLGZlv6gUOzOdiA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3/nJXR9PRyv8s0bACHTiaF6yzo66zVq7z4bfV4m6kqA6o3MBx
	Fdcp0UwqISoQQtvsx8yccHgSHzuWGWjbBPJB6O3sKq1hP4NjRDnFKJU49nOByr7ZFbpU6ADgxDD
	uVo8u6i8PgTvfn9bRIfspQo203aDvIW4FC9iLuaXXygcm/G/g11WQKZE7EaWqh/MM
X-Gm-Gg: AY/fxX4JavwKARgENgs3iV1N2NiIIoskgW6q0a9WAAD5h39Ke/7SGQCZSYi5nxEyjtF
	wepCCL83w2FCz+m9kIyec7q8s7ieaZfHqe0CyGddxEOm2hmF44bq525tbqS/9oPSGxFYrLTwXFU
	6UZ2706PJuBH4tuiAnitxjiGTAULIhCOCbAZHFzrZ59CDNB9LN3vJVRuwW/6yz2aBsAJH2nyiwJ
	QUxc+WCzEsi4LHXlCpAKgV/Mx4H1BgoN/sy0T6e9Wp6YjPQ1rhgSHy1pBS93zug7QGUyTOc4Wt2
	RM26n7UYw2H+u36LeBjgwKixlbXf920blyCxad6qZLvsZTWe4lJmu2Gc8g7i2h9l628JQVB1yFj
	2qNHjNvqpaA+NzIX1NA==
X-Received: by 2002:a05:620a:26c4:b0:8c5:22b2:8b4a with SMTP id af79cd13be357-8c522b28be9mr259807385a.16.1768316417616;
        Tue, 13 Jan 2026 07:00:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZDL5GFw7VfOAzwIyd+EUg5rdwU1Sz7q+tdCbL60k+bFjyMRGbIpQXLW4K7D9KY+mpGZCkOA==
X-Received: by 2002:a05:620a:26c4:b0:8c5:22b2:8b4a with SMTP id af79cd13be357-8c522b28be9mr259795285a.16.1768316416531;
        Tue, 13 Jan 2026 07:00:16 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3831sm2317392366b.44.2026.01.13.07.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:00:15 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 17:00:05 +0200
Subject: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=13066;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=y/ZfPyLXPCO7xnlFk6TlFFFbPvTLNZXdpb2GZWDeY1c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpZl36l89KQqmuTA/L2tyToH0SJuwxQOHzeHuKh
 DxE8AzvDoOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaWZd+gAKCRAbX0TJAJUV
 Vr7TD/9c4LCCDxRDDZXBCoyRwoua/bgiLb+DohWqvkHeqOMuraZLQDwR1VeSxNlExioi06vo/MV
 TAt2oVRowX+HbWp+uVHi5GR1Ii6dutln4i3JOIl7zYkYyvri4uowpfWd1WfZUO3E3Q6+HCzYAiq
 lw/qpUQXKJOi+nQ+SbU39JRVQnEAcbmkM1zPLAWc/XOWFM1IlOBH4VFqQMnyneg5+AA/F+Ue+uj
 Zl57d8+PzJry4dyk1a6KnChEXaoK6gboVDJWwdoHaTNioMiwOnjxYT2XNsaRfHSoGgoq0y4ZY0Q
 CI0Gf3OCJAUOIRol51eftgvFS9X1phuYPDZOReHGsPll/bnJrzVgtt6qvStYQLPECqAeqpTigY6
 uHVBn7AGEU+PoMBTML1w9K2vPqjaX1k3VxQ2iif+ttD3vb9GKDWZNVqEGVBZL/kW89j16M61UFs
 qVBQwVh8+VgC20ycrt2uf47nguOP2whCdRJ3P9Jlc9ANuqQm9gIWl3uODZHaW82Xv2OR2ZTKxDF
 jngt9zInXFxGoGroJCYtEsiGfTLSaFjva7r0BFHBIU/ZcPigzQ8V9MiDu0k8MyX897weHMeLhOS
 Hl+tg/7tnLdosAGpsEcAuA/WpXAfCTTUw1n0FYrm7/WIhUwMhEVzUUgX4o9TwRwPkIrKs5IGmr5
 M3/2yXnuJ9ZcxkQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNiBTYWx0ZWRfX8yrOVCZdZ/ld
 JuHnBjGlp9XRHxTi/HfBlYPEArWAdW8E/t7ZwpX+j2ZMd8IXEDZqeUpP0C8BNAA79HzkajPMIIU
 5IBSrqlU0j2FJaXhiNJlw2WfCDMkgVMCy2wMKVtj0Qe8qQP5D3Yeyzc1KdsGfCmoDvGi6TsUDZ4
 jxXz/87ARl/czYCFvrezGcl3vVcTbSKzugUvnoAQZwxVyOQQk80gdOZY7V/79r17S2mdEdFxZuv
 fkN8RZrJDYOwiJm63Il/nDQD3Kkz4fChL0tlv2ht9CyrzQmZox9n6Tr39d1hrAj8sfru8Odqbce
 c5RFdcYDFpxtKSRh/K0/jjsUU+czQX6puZiWTfr5Pqz4ruL5JqATWbz/Pc7Q8ejD6uNerRnS424
 nPnkmMhkpzXRs9KrQoI53GtdD6NyCLxe1Q1PCi1G3L0A5vcxJBBcnBgbLNUtfJJVIvcOq4/C4bc
 Y0d09+uIFO6JU7LSJjQ==
X-Authority-Analysis: v=2.4 cv=C5TkCAP+ c=1 sm=1 tr=0 ts=69665e03 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=3WL2eb6VgTF0ylH-tGoA:9 a=zj-Mov-pLWzwzHKL:21 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: XAog9WvPjy6eoLGrPVxBn0DZdVnZLv4W
X-Proofpoint-ORIG-GUID: XAog9WvPjy6eoLGrPVxBn0DZdVnZLv4W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130126

From: Abel Vesa <abel.vesa@linaro.org>

The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
controllers. Describe them along with display controller and the eDP
PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
clock controller and link up the PHYs and DP endpoints in the graph.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
 1 file changed, 423 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 53b8ab7580bd..0b7b2756508c 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -2377,6 +2377,7 @@ port@2 {
 					reg = <2>;
 
 					usb_dp_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};
@@ -2447,6 +2448,7 @@ port@2 {
 					reg = <2>;
 
 					usb1_ss1_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp1_out>;
 					};
 				};
 			};
@@ -2466,6 +2468,27 @@ usb_2_hsphy: phy@fa0000 {
 			status = "disabled";
 		};
 
+		mdss_dp3_phy: phy@faac00 {
+			compatible = "qcom,glymur-dp-phy";
+			reg = <0 0x00faac00 0 0x1d0>,
+			      <0 0x00faa400 0 0x128>,
+			      <0 0x00faa800 0 0x128>,
+			      <0 0x00faa000 0 0x358>;
+
+			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref";
+
+			power-domains = <&rpmhpd RPMHPD_MX>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
 
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,glymur-cnoc-main";
@@ -3475,6 +3498,7 @@ port@2 {
 					reg = <2>;
 
 					usb1_ss2_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp2_out>;
 					};
 				};
 			};
@@ -3816,20 +3840,411 @@ usb_mp: usb@a400000 {
 			status = "disabled";
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,glymur-mdss";
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
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc DISP_CC_MDSS_CORE_GDSC>;
+
+			iommus = <&apps_smmu 0x1de0 0x2>;
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
+				compatible = "qcom,glymur-dpu";
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
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp0_in>;
+						};
+					};
+
+					port@4 {
+						reg = <4>;
+
+						mdss_intf4_out: endpoint {
+							remote-endpoint = <&mdss_dp1_in>;
+						};
+					};
+
+					port@5 {
+						reg = <5>;
+
+						mdss_intf5_out: endpoint {
+							remote-endpoint = <&mdss_dp3_in>;
+						};
+					};
+
+					port@6 {
+						reg = <6>;
+
+						mdss_intf6_out: endpoint {
+							remote-endpoint = <&mdss_dp2_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-205000000 {
+						opp-hz = /bits/ 64 <205000000>;
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
+					opp-600000000 {
+						opp-hz = /bits/ 64 <600000000>;
+						required-opps = <&rpmhpd_opp_nom_l1>;
+					};
+				};
+			};
+
+			mdss_dp0: displayport-controller@af54000 {
+				compatible = "qcom,glymur-dp";
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
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb1_ss0_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
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
+						mdss_dp0_out: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
+						};
+					};
+				};
+
+				mdss_dp0_opp_table: opp-table {
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
+			};
+
+			mdss_dp1: displayport-controller@af5c000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0xaf5c000 0x0 0x104>,
+				      <0x0 0xaf5c200 0x0 0xc0>,
+				      <0x0 0xaf5d000 0x0 0x770>,
+				      <0x0 0xaf5e000 0x0 0x9c>,
+				      <0x0 0xaf5f000 0x0 0x9c>;
+
+				interrupts-extended = <&mdss 13>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb1_ss1_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
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
+						mdss_dp1_in: endpoint {
+							remote-endpoint = <&mdss_intf4_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp1_out: endpoint {
+							remote-endpoint = <&usb1_ss1_qmpphy_dp_in>;
+						};
+					};
+				};
+			};
+
+			mdss_dp2: displayport-controller@af64000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0x0af64000 0x0 0x104>,
+				      <0x0 0x0af64200 0x0 0xc0>,
+				      <0x0 0x0af65000 0x0 0x770>,
+				      <0x0 0x0af66000 0x0 0x9c>,
+				      <0x0 0x0af67000 0x0 0x9c>;
+
+				interrupts-extended = <&mdss 14>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb1_ss2_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb1_ss2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb1_ss2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb1_ss2_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
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
+						mdss_dp2_in: endpoint {
+							remote-endpoint = <&mdss_intf6_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp2_out: endpoint {
+							remote-endpoint = <&usb1_ss2_qmpphy_dp_in>;
+						};
+					};
+				};
+			};
+
+			mdss_dp3: displayport-controller@af6c000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0 0x0af6c000 0 0x200>,
+				      <0 0x0af6c200 0 0x200>,
+				      <0 0x0af6d000 0 0xc00>,
+				      <0 0x0af6e000 0 0x400>,
+				      <0 0x0af6f000 0 0x400>;
+
+				interrupts-extended = <&mdss 15>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dp3_phy 0>,
+							 <&mdss_dp3_phy 1>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dp3_phy>;
+				phy-names = "dp";
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
+						mdss_dp3_in: endpoint {
+							remote-endpoint = <&mdss_intf5_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp3_out: endpoint {
+						};
+					};
+				};
+			};
+		};
 
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,glymur-dispcc";
 			reg = <0x0 0x0af00000 0x0 0x20000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
-				 <0>, /* dp0 */
-				 <0>,
-				 <0>, /* dp1 */
-				 <0>,
-				 <0>, /* dp2 */
-				 <0>,
-				 <0>, /* dp3 */
-				 <0>,
+				 <&usb1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp0 */
+				 <&usb1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&usb1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp1 */
+				 <&usb1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&usb1_ss2_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp2 */
+				 <&usb1_ss2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&mdss_dp3_phy 0>, /* dp3 */
+				 <&mdss_dp3_phy 1>,
 				 <0>, /* dsi0 */
 				 <0>,
 				 <0>, /* dsi1 */

-- 
2.48.1


