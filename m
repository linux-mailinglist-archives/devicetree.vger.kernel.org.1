Return-Path: <devicetree+bounces-248690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA85CD5333
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:55:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B3018305A937
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0666C33A00C;
	Mon, 22 Dec 2025 08:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BZ58OXCU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yw/hAgma"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B931339713
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766392149; cv=none; b=cZRglIFMkHQjFKyMiewQU7jr9mEcNbJJ+KRbL8jX+oUjjbcvNKENzzlObA2euMWbKgCf36eJczIqRlDLVJc/1+ZHl7/8kFkw1XKrWXfWxUBQzMC7FtDPr4INnmdkPL6NryFvHq+9Y7OkMcpww4ru6TCc8AFZ7U1r4H4haFQ7ScY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766392149; c=relaxed/simple;
	bh=PvRX6buVf5SzAEhfOLc8YkXfXVesNH9qpy1Tkh3qFcM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G9Q0B00iYt6C2x0fCU2cs0tXJ5sYFYh7hRIxmJnCRcQJGJ2tA4zEjcocft4PdCRvKeG2SECIsQIeDfBIKq/IW/MbD3PAxuUJ1hDkRlcNZ/7voKXXZFtx+es3UjkNc4fXejQPUEwlCl4L4Ct56o6Uo0hr2GHum59YytYxTG5fZhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BZ58OXCU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yw/hAgma; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8J9va072612
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:29:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GBnihOtFbK8HujBlcYwjs3g6paibvwJ26w/d0W2YggA=; b=BZ58OXCUdWQc0D8W
	1Rf1wGDbe4V69gHJZw3fusqm/dqbZSizmlLbkn5jOy3EPhEDeMn9Vy39ua2sGQOi
	dXPSKFEbodLtn5hGRHeQIl/PVKMWJnJt8AGmcDNIdQTDc0pdWK6HQ13T+5JknAmw
	k3uCpbCs1Ct7OfZYATvk3jXlugQ7M9eBmsy8dQGeZKnXPpcd/tC0Fmsf2V35zGmB
	MLznRoE81pXQqJ4ckwyUf4AW53VJlT2zq5KBqbkzKpQqcCCtmY1un+13UIZniWyZ
	Ky/IoA8VTy7D0cVqD53CfBFm9hCN+MjL6ZyKzIBLzSOISqUUMLEeqtaCP9Feqn3s
	pG9PpA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrac9g1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:29:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b55a033a2aso1048846885a.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766392146; x=1766996946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GBnihOtFbK8HujBlcYwjs3g6paibvwJ26w/d0W2YggA=;
        b=Yw/hAgmahL19YvYu1R7ekpxfVJDWdMvyTq+5ty+OT6fPR5Fc6c1LepFXnmp/8GhOTO
         wmu9o+zZMe1MQcAjX9Lf5bNdrLrj0MwHPoOO0X/ZFuFi5mfltxIQQ0GErNLrQ3OgqZiU
         CUqX7t/ZB+WE3gXC9hdvKEokHziXrznStAitikgxITF2CtuWNQ5Cuwyit+AwOAnNPvKv
         fvmNBQuKTNYm/iIQHlM6GoXFgA9z9VUr5ZypkjpWxoBNoz6OkXvA5VuRFbnu/fcClpMz
         cUqWy6ldXFYRwSADA4QRAdPUs4/BnT/OtnZmZU1xcVAreoaJHicxhzYhrfq9T0+GoF7d
         w20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766392146; x=1766996946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GBnihOtFbK8HujBlcYwjs3g6paibvwJ26w/d0W2YggA=;
        b=r16LafEynCQiUyBMqjJsOs8j075/vChQ+l7+uCElXN1pVey109Ev1VkIanVWRTaH/9
         eH9AwLmDJqd9Vlg1Fi7bcR7mYQE3nOGAH594G6x4pV8T55yVtDky3oUFODUpcbF65xVS
         sc2TCCH79qGLlCfk4BUC4C6rdh7mX3jD0MKDV96ArKpOB6Zjf2tdO6BGSGtWeIM0QqNc
         /EbR/QWC98ZsySX74/kPdXOXIoiq8T5NuBkc57bYYDAZjXlRECV+0soI/uiY8tS+3v7I
         H18FqBAHUGZVpNDJankeDZL4smCWkR5Fa1pNrFu3Rffv66j61BcEIPeiYEzoZ/UmJbXF
         63/w==
X-Forwarded-Encrypted: i=1; AJvYcCXqe1Kc7TDEHDEmEmbzqjxXe7ogk1IuQmagqzY9epiBdmZZo/aA/VqBQbktj/4PJf248Qv/zjrHgoxz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5IRaWmAHGmGSX4YCqT0SgffcUHoZr2M+wu6pmf1HgoJYc5QCw
	dtZ7/YwJ5ANlqlM5mVGySlYNYNYn9GDDqbFOa5GjW6gRWrayoLJpE4AspiyBNdBesmphIJuNQ+E
	dcjtBp6PT9vpUbgXnMn9+MzjFK1liJG0CcVMLBbvkr/4tR8AX0WF4+dhTGxiBEHtANdOI15xk
X-Gm-Gg: AY/fxX5X4sOGb2O8kxryfRw/ZQgWAzsF5h17mdvTps4XPQY3QhM0kPsVxmE0XNr/2PE
	L/KmC7zn+TJcSiN7jqxk2p2rZH6AeXAtB+J69jfxzZabqg3WH3X0e+g4ARD5tgMHb5ssZcU1lUp
	V8s2jxJE71KEylfPuhFJr3ZNoa+POBrj3SWPFTLSeVjG+6WhiapozxmdQ2ngv+7ELGBZfGpK/nG
	JPyZtRjQEJQDXw6zlg8kqN8GYHRT7QjDq8T2D9MZ9YA+KX8KG8kAhYQQLAImaxFGOLButq1Dp5O
	z6DuTyuviBT+IKMtm7kTVmOFTAeFjf0n0CYtfuYNSVp7uvowsv0C9rW3ty0QisD3jB6CPT7kK9w
	d6/jqAn9OBVf3udSJIvr7/Kb/qLTQJML0b9d/Dz2i7uN1TV3RB3aon3qJZlqzIWm86NNc8qfiQs
	ZS
X-Received: by 2002:a05:620a:29c4:b0:811:8bbe:7a3c with SMTP id af79cd13be357-8bee76c9096mr2066095285a.23.1766392146433;
        Mon, 22 Dec 2025 00:29:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzjlp5cT+8Lby+0xl3XfUmmXEv+Es/HLnbIS0DA46el1a6iXp2tjSKjdXA7oB1bvq9BCVWXw==
X-Received: by 2002:a05:620a:29c4:b0:811:8bbe:7a3c with SMTP id af79cd13be357-8bee76c9096mr2066092285a.23.1766392146024;
        Mon, 22 Dec 2025 00:29:06 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0970f8572sm764046585a.25.2025.12.22.00.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 00:29:05 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 16:28:41 +0800
Subject: [PATCH v2 3/3] arm64: dts: qcom: talos: Add camss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-sm6150-camss-v2-3-df8469a8343a@oss.qualcomm.com>
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
In-Reply-To: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766392123; l=6661;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=PvRX6buVf5SzAEhfOLc8YkXfXVesNH9qpy1Tkh3qFcM=;
 b=m3uwHTIzqYsYrJoWS2TmzBGPjk0+cfRZgJsGEbxQDIAhV4TeAQnD1/Ckd9sem0TSxxVJWjcoV
 A+rdtunTRKLAh07dWRStSEVZm+6zo05F/yAIYAi8/nv07nH+8s2Yca6
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: cEu2Q9v-K4LVetVuxaZzUtYk3HbZbydp
X-Proofpoint-GUID: cEu2Q9v-K4LVetVuxaZzUtYk3HbZbydp
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=69490153 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=_q6n6E3gDzqWkXQ7FWgA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA3NSBTYWx0ZWRfX5YNYD+VSqlYb
 YkUpxM4tE2nOvEN3NKVIq6R78ZL+sHO4ldK4Hqhj7pylg9/JvhxQlLeZsMyEI+neovT9BszsbDH
 sFCZp5tntb7+pZKDf7NAyR1t6YW2SicTrCsnrnZmzzDGBsAb5+gqfaR1MFxpiwAP5GeV5iLzHZS
 BljcTULVFwqk/R+ejNE+yUtXR9BZKHOELQsMeFhibyeuO14C8pWOYbIwlnTUaHAyberWaEtgegS
 Efx5LuhH+y8hKJ23c2J6zOpBvtZtJSzCx8LlrPeDo+B4NQiCnWCPyFdC+2qS4r22ciKlkQ168CI
 IwfefZx+R2twnwlfut3CgO7dAmEAaM9x2IgKo/UQjeqECh0Y7NnrnFezpbvIv+K5l9KBu1fRbGU
 Jxz8lDoHkfRHZ5VfxUC/hX3DQn9rPfqzysVLhwwEgpGbW4yIs8CscGy940mxf3XjhNwN+30OyfA
 Ycdc6vbH+pDGWa+Ed9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220075

Add node for the SM6150 camera subsystem.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 200 ++++++++++++++++++++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 95d26e3136229f9015d49e2be22f6b28f1e842f4..61c01bc2e4ee143097bbdb7416da7a8e0734be64 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -3785,6 +3785,206 @@ videocc: clock-controller@ab00000 {
 			#power-domain-cells = <1>;
 		};
 
+		camss: isp@acb3000 {
+			compatible = "qcom,sm6150-camss";
+
+			reg = <0x0 0x0acb3000 0x0 0x1000>,
+			      <0x0 0x0acba000 0x0 0x1000>,
+			      <0x0 0x0acc8000 0x0 0x1000>,
+			      <0x0 0x0ac65000 0x0 0x1000>,
+			      <0x0 0x0ac66000 0x0 0x1000>,
+			      <0x0 0x0ac67000 0x0 0x1000>,
+			      <0x0 0x0acaf000 0x0 0x4000>,
+			      <0x0 0x0acb6000 0x0 0x4000>,
+			      <0x0 0x0acc4000 0x0 0x4000>,
+			      <0x0 0x0ac6f000 0x0 0x3000>,
+			      <0x0 0x0ac42000 0x0 0x5000>,
+			      <0x0 0x0ac48000 0x0 0x1000>,
+			      <0x0 0x0ac40000 0x0 0x1000>,
+			      <0x0 0x0ac18000 0x0 0x3000>,
+			      <0x0 0x0ac00000 0x0 0x6000>,
+			      <0x0 0x0ac10000 0x0 0x8000>,
+			      <0x0 0x0ac87000 0x0 0x3000>,
+			      <0x0 0x0ac52000 0x0 0x4000>,
+			      <0x0 0x0ac4e000 0x0 0x4000>,
+			      <0x0 0x0ac6b000 0x0 0x0a00>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csid_lite",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe_lite",
+				    "bps",
+				    "camnoc",
+				    "cpas_cdm",
+				    "cpas_top",
+				    "icp_csr",
+				    "icp_qgic",
+				    "icp_sierra",
+				    "ipe0",
+				    "jpeg_dma",
+				    "jpeg_enc",
+				    "lrme";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_SOC_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_BPS_CLK>,
+				 <&camcc CAM_CC_BPS_AHB_CLK>,
+				 <&camcc CAM_CC_BPS_AXI_CLK>,
+				 <&camcc CAM_CC_BPS_AREG_CLK>,
+				 <&camcc CAM_CC_ICP_CLK>,
+				 <&camcc CAM_CC_IPE_0_CLK>,
+				 <&camcc CAM_CC_IPE_0_AHB_CLK>,
+				 <&camcc CAM_CC_IPE_0_AREG_CLK>,
+				 <&camcc CAM_CC_IPE_0_AXI_CLK>,
+				 <&camcc CAM_CC_JPEG_CLK>,
+				 <&camcc CAM_CC_LRME_CLK>;
+			clock-names = "gcc_ahb",
+				      "gcc_axi_hf",
+				      "camnoc_axi",
+				      "cpas_ahb",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "soc_ahb",
+				      "vfe0",
+				      "vfe0_axi",
+				      "vfe0_cphy_rx",
+				      "vfe0_csid",
+				      "vfe1",
+				      "vfe1_axi",
+				      "vfe1_cphy_rx",
+				      "vfe1_csid",
+				      "vfe_lite",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "bps",
+				      "bps_ahb",
+				      "bps_axi",
+				      "bps_areg",
+				      "icp",
+				      "ipe0",
+				      "ipe0_ahb",
+				      "ipe0_areg",
+				      "ipe0_axi",
+				      "jpeg",
+				      "lrme";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf0_mnoc",
+					     "hf1_mnoc",
+					     "sf_mnoc";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 459 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 461 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 463 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 475 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 474 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 476 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid_lite",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "vfe0",
+					  "vfe1",
+					  "vfe_lite",
+					  "camnoc",
+					  "cdm",
+					  "icp",
+					  "jpeg_dma",
+					  "jpeg_enc",
+					  "lrme";
+
+			iommus = <&apps_smmu 0x0820 0x40>,
+				 <&apps_smmu 0x0840 0x00>,
+				 <&apps_smmu 0x0860 0x40>,
+				 <&apps_smmu 0x0c00 0x00>,
+				 <&apps_smmu 0x0cc0 0x00>,
+				 <&apps_smmu 0x0c80 0x00>,
+				 <&apps_smmu 0x0ca0 0x00>,
+				 <&apps_smmu 0x0d00 0x00>,
+				 <&apps_smmu 0x0d20 0x00>,
+				 <&apps_smmu 0x0d40 0x00>,
+				 <&apps_smmu 0x0d80 0x20>,
+				 <&apps_smmu 0x0da0 0x20>,
+				 <&apps_smmu 0x0de2 0x00>;
+
+			power-domains = <&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc TITAN_TOP_GDSC>,
+					<&camcc BPS_GDSC>,
+					<&camcc IPE_0_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "top",
+					     "bps",
+					     "ipe";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,qcs615-camcc";
 			reg = <0 0x0ad00000 0 0x10000>;

-- 
2.34.1


