Return-Path: <devicetree+bounces-251813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9566ECF766A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A446E30EBA68
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2150230BBA5;
	Tue,  6 Jan 2026 09:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PLyCKetW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gh3Z0MQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F532EA468
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690277; cv=none; b=Yafj+YWxFC0cVw8UH6BRH0GWltd3SoRF/e969BuYi9tO5I16gJVPZHeRiYZB584QMsyX0zZE84Uc5DSPxXuDHnb6NiHHBk80NYQfhbvEv9VRQE9o5ZZyKbCyO15xQmKu7eox5ClTshGUT4pIXanPzhbF6ZdWELfCTYdfUtAWGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690277; c=relaxed/simple;
	bh=xWAS8X5OIoZiHIup9uFxy5bcYE/3a9DMYOww7QCpGP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qj+19C/JXvQNOxJphPJyD1dZ30JA0zLC7dbPTPi4CI9wMCiMCzWtPYC1WfeF+uJLNrSCCo0MZT3Jg97Rzp3aKWetoGyedRemtOxwh6XRswXcndz7VFrAx3YrYwQfDgE0yFGk8LEMLk9AhkB2Os1KnJWulgHQMDfHEokgNOqa0to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PLyCKetW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gh3Z0MQy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QYrD3272137
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:04:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mBifb40rSfHG73R5YhDkZ9xZCriysMjEFojnmvKJNMI=; b=PLyCKetWa3HLUjdP
	eLC2v8pzy8TDBqDxrLY+Mx3hQku4v81mDDdOcLU1DBPPUE/jGUi14U/U3Xfz5UV8
	rOQhKrn0LQGM07xmeefBp4F8HeHDHcWzofpzWSE3bl04CDG9c9HDqRURoQNnLx9p
	ZTpQJymZsEURYxz8GhJv1HuTSoavYNGjX3yLYgTeMacVuBLifjqjK4amevebCjaX
	6cjLKPTnbEZPdtwYu3qGwmgMresGY64TZOkga/Rv29T0oV/PePMi79bRCGF0P81a
	GMWstUqHZFMoW7bRVKJgHAVekaajp5HywvyP+fvf7pMnY3xz7LCOJy4VpFu0j/YT
	RY1aNg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv02p6f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:04:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c38129a433so120811385a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690273; x=1768295073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mBifb40rSfHG73R5YhDkZ9xZCriysMjEFojnmvKJNMI=;
        b=Gh3Z0MQyrVvpreKWdT0aTx3XbnzwBbmR7E3b/NP4ffMyON3B9cNH9Pw+/N4UMXZ8Sh
         5GWm2x9vt9GBjwuB3e4QOkhuFEjgST4D7arygOlW6tvvdytVwsNMblfZ3DK8DS+UCYv0
         V9UnhnDWByoFyAD/F6/EBCs26LNeIgErrzTp9cTzYDniz16ckfncYo+dF5B5otLtKUtl
         qN7Uoye/Y+ZxQbRrNzoz05bCV1LYfNiV1fEmYq2R/SkwJZNmfzdAh+ITJ9OzZIVCtEeP
         DGQbOdO47I0N5nixQbZVTWZF85BNcUkDVks+9G6DKOtaW2Lh0/NydZ95Uiux1IdeQvzI
         vP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690273; x=1768295073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mBifb40rSfHG73R5YhDkZ9xZCriysMjEFojnmvKJNMI=;
        b=LC9RoSw0oe6IJ6s53UtfBBt/hfBtm+EFPAlYFVvqlJavD+6mutnGwzGGiOE6UlGtuU
         fQ6R+8thDX7nPV6z2VooVWM4GL65m9KpfgC/BvWZs9Vevnb0XjKFGr2yF4o45uLjmfA6
         twWnUrqmP0LcT3iCbodFDAr0j1rlkhTJ5v6WdWC/vMrdrVBpX8RYaQbqWVVg9TqidzI3
         DVBPNT6j3NveW1z4bZ6zgW5ZdIZOm21wwqUw2joDHz5bvvFcleau3ruOjsjow9KzyfbU
         DbcesEYw7lcqM4soFT87RywDMIWJvOoU9ObLo4xV8ECiSeXfUpynVO/07UX/OL2lv2cb
         qbjA==
X-Forwarded-Encrypted: i=1; AJvYcCWPqPMb2qxY3W93SFsn22xlu8sfosksgKbkjXLp0dA+fl5iGW/OcNCmnZF1YCGpz7JFwnVkOmxuxM2e@vger.kernel.org
X-Gm-Message-State: AOJu0YyWjsoEVy1PhMVrC+FCeeUWWiKeWmnz9vgtGtszD/9PhjEgipjA
	AYVubFln5cJvZJHBvby3lxpyTUk712bvIbEvVWcdLiruGFfGRG6r0UtLCoxaO8xoGGmkmFd++29
	tjurqpZxv4WctXoScFdKqD5X2DoMLYuhZ64XE0fpUv8MUOkPzKoPnMzrYQpea7+vE
X-Gm-Gg: AY/fxX7BJ6Mc95/8R5bXf/7hOUQHRu9KSy/6W1xzjX3KeF/oSu0sAdYh2E99TWGdE5Z
	0fl0iy+euyeOYVnUyVcDZ7lCnG2ejqkcrCXGRCBoSdjtV9qocM/27DziJKbmcxBOsSm105bGhhe
	RGTPxulaqt4F01Jc8dC08W6733Bri0qgbHZYaXej5t7g5NVf4B6ueNPmZMGNVmiEk0e0MXRTKW5
	0irANWWPcQGtlaZ3ujjjpnlxkDE91YGp82gyKTrZEyLYRA+MTMxDecUE5ufB7ZcfcXFbFOnTgMc
	cObls4rXXVDOSkeBnvDVx7GhMVn8FDrUzZbeeBuecI1ZZrq9IR8ZX3X6lvAlYSzXtj2mp8cWkHj
	RCQErVneJHUo1vrTZ1kCnWLMUfrCO8idwPTkThCYQ/5RJuNVsEVMBi5nY4zLqTqHlA1d0iSNqYS
	KP
X-Received: by 2002:a05:620a:f15:b0:89f:7feb:fd71 with SMTP id af79cd13be357-8c37eb6cbdfmr310019385a.19.1767690272644;
        Tue, 06 Jan 2026 01:04:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaFuUHq8blzSAKdtc4DgmhIt1dm2SnKlFFIA0zvb70JspytgFxRDovgJcpstOCyMDihMXP7Q==
X-Received: by 2002:a05:620a:f15:b0:89f:7feb:fd71 with SMTP id af79cd13be357-8c37eb6cbdfmr310015185a.19.1767690272126;
        Tue, 06 Jan 2026 01:04:32 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f53113fsm134368185a.41.2026.01.06.01.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:04:31 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 17:04:16 +0800
Subject: [PATCH v3 1/3] media: dt-bindings: Add qcom,sm6150-camss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-sm6150-camss-v3-1-d1d5c4d02b0b@oss.qualcomm.com>
References: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767690260; l=17062;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=xWAS8X5OIoZiHIup9uFxy5bcYE/3a9DMYOww7QCpGP4=;
 b=NWI4doKV0RqvxZJ9GPTa8RNA1C4/SjbmdKkWfXBZxni+JphvhzQFHNnPfqUBTX5s62yOtc96e
 FdJLN2u9GNhAplmx5z/+9cteZ6/izbidRCePZ9fR543ADp1EOn51Gau
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695cd022 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=aFcfZ3UtOBUUIK6fB1MA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 1FW8ZGqmMj6FSkOWpjr8mCM2FCgke3Uo
X-Proofpoint-ORIG-GUID: 1FW8ZGqmMj6FSkOWpjr8mCM2FCgke3Uo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfXwQXY9oVsP0l9
 nVh1UKwtfwo36pdmRg6i+eaUEQUYSnnj2oJpwZ4mQSq6zIYTlARv5MPv3+oPySHVytRzNkhyT4g
 KTBR82whEI1jt3/hXWG/9o5B2v4GjHigvbIsyXuMJIJ5PLFPdewdQGjdC+Gy2ZcOq+Bdgh/1wM4
 k/r+bkye3BVIMaRNEcaYzRrTyTns9Eip6CNQKLACnqM67pE12Q4tJA1HPHHkQMkGkcZgy6/N+rG
 uQMU6O5C0m+q11jx7qYS+85LVrD0u4+A8xnujmxyJwyqN+7b7Qq9pQYiKaXYa3oL7nZa1tJNy0K
 WkrUHH4zDgcFpsVOLn8SpeUKwZKRAEVrTbcnjlSFdrm5V7m7JrlARMuif/N5J3qFcwVHJ3KKokf
 iLHqeKePaVWnLZf+rL5zXMHpxwdMv1sL19gFST43H0JcT1dUxocElg1WM0HLWLY0fWlD87rhBzW
 iMU4SUwgnhco5M1IRiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060076

Add bindings for the Camera Subsystem on the SM6150 SoC

The SM6150 platform provides:
- 2 x VFE (version 170), each with 3 RDI
- 1 x VFE Lite (version 170), each with 4 RDI
- 2 x CSID (version 170)
- 1 x CSID Lite (version 170)
- 3 x CSIPHY (version 2.0.0)
- 1 x BPS (Bayer Processing Segment)
- 1 x ICP (Imaging Control Processor)
- 1 x IPE (Image Postprocessing Engine)
- 1 x JPEG Encoder/Decoder
- 1 x LRME (Low Resolution Motion Estimation)

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm6150-camss.yaml          | 439 +++++++++++++++++++++
 1 file changed, 439 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..ba7b0acb9128b5dc9b09a863b4be0ed630e75d69
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml
@@ -0,0 +1,439 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm6150-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM6150 Camera Subsystem (CAMSS)
+
+maintainers:
+  - Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
+
+description:
+  This binding describes the camera subsystem hardware found on SM6150
+  Qualcomm SoCs. It includes submodules such as CSIPHY (CSI Physical layer)
+  and CSID (CSI Decoder), which comply with the MIPI CSI2 protocol.
+
+  The subsystem also integrates a set of real-time image processing engines
+  and their associated configuration modules, as well as non-real-time engines.
+
+properties:
+  compatible:
+    const: qcom,sm6150-camss
+
+  reg:
+    items:
+      - description: Registers for CSID 0
+      - description: Registers for CSID 1
+      - description: Registers for CSID Lite
+      - description: Registers for CSIPHY 0
+      - description: Registers for CSIPHY 1
+      - description: Registers for CSIPHY 2
+      - description: Registers for VFE 0
+      - description: Registers for VFE 1
+      - description: Registers for VFE Lite
+      - description: Registers for BPS (Bayer Processing Segment)
+      - description: Registers for CAMNOC
+      - description: Registers for CPAS CDM
+      - description: Registers for CPAS TOP
+      - description: Registers for ICP (Imaging Control Processor) CSR (Control and Status Registers)
+      - description: Registers for ICP QGIC (Qualcomm Generic Interrupt Controller)
+      - description: Registers for ICP SIERRA ((A5 subsystem communication))
+      - description: Registers for IPE (Image Postprocessing Engine) 0
+      - description: Registers for JPEG DMA
+      - description: Registers for JPEG ENC
+      - description: Registers for LRME (Low Resolution Motion Estimation)
+
+  reg-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid_lite
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite
+      - const: bps
+      - const: camnoc
+      - const: cpas_cdm
+      - const: cpas_top
+      - const: icp_csr
+      - const: icp_qgic
+      - const: icp_sierra
+      - const: ipe0
+      - const: jpeg_dma
+      - const: jpeg_enc
+      - const: lrme
+
+  clocks:
+    maxItems: 33
+
+  clock-names:
+    items:
+      - const: gcc_ahb
+      - const: gcc_axi_hf
+      - const: camnoc_axi
+      - const: cpas_ahb
+      - const: csiphy0
+      - const: csiphy0_timer
+      - const: csiphy1
+      - const: csiphy1_timer
+      - const: csiphy2
+      - const: csiphy2_timer
+      - const: soc_ahb
+      - const: vfe0
+      - const: vfe0_axi
+      - const: vfe0_cphy_rx
+      - const: vfe0_csid
+      - const: vfe1
+      - const: vfe1_axi
+      - const: vfe1_cphy_rx
+      - const: vfe1_csid
+      - const: vfe_lite
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+      - const: bps
+      - const: bps_ahb
+      - const: bps_axi
+      - const: bps_areg
+      - const: icp
+      - const: ipe0
+      - const: ipe0_ahb
+      - const: ipe0_areg
+      - const: ipe0_axi
+      - const: jpeg
+      - const: lrme
+
+  interrupts:
+    maxItems: 15
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid_lite
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite
+      - const: camnoc
+      - const: cdm
+      - const: icp
+      - const: jpeg_dma
+      - const: jpeg_enc
+      - const: lrme
+
+  interconnects:
+    maxItems: 4
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_0
+      - const: hf_1
+      - const: sf_mnoc
+
+  iommus:
+    items:
+      - description: Camera IFE 0 non-protected stream
+      - description: Camera IFE 1 non-protected stream
+      - description: Camera IFE 3 non-protected stream
+      - description: Camera CDM non-protected stream
+      - description: Camera LRME read non-protected stream
+      - description: Camera IPE 0 read non-protected stream
+      - description: Camera BPS read non-protected stream
+      - description: Camera IPE 0 write non-protected stream
+      - description: Camera BPS write non-protected stream
+      - description: Camera LRME write non-protected stream
+      - description: Camera JPEG read non-protected stream
+      - description: Camera JPEG write non-protected stream
+      - description: Camera ICP stream
+
+  power-domains:
+    items:
+      - description:
+          IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description:
+          IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description:
+          Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
+      - description:
+          Titan BPS - Bayer Processing Segment, Global Distributed Switch Controller.
+      - description:
+          IPE GDSC - Image Postprocessing Engine, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: top
+      - const: bps
+      - const: ipe
+
+  vdd-csiphy-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSI PHYs.
+
+  vdd-csiphy-1p8-supply:
+    description:
+      Phandle to 1.8V regulator supply to CSI PHYs pll block.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-2]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+
+        description:
+          Input port for receiving CSI data from a CSIPHY.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-camcc.h>
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camss: isp@acb3000 {
+            compatible = "qcom,sm6150-camss";
+
+            reg = <0x0 0x0acb3000 0x0 0x1000>,
+                  <0x0 0x0acba000 0x0 0x1000>,
+                  <0x0 0x0acc8000 0x0 0x1000>,
+                  <0x0 0x0ac65000 0x0 0x1000>,
+                  <0x0 0x0ac66000 0x0 0x1000>,
+                  <0x0 0x0ac67000 0x0 0x1000>,
+                  <0x0 0x0acaf000 0x0 0x4000>,
+                  <0x0 0x0acb6000 0x0 0x4000>,
+                  <0x0 0x0acc4000 0x0 0x4000>,
+                  <0x0 0x0ac6f000 0x0 0x3000>,
+                  <0x0 0x0ac42000 0x0 0x5000>,
+                  <0x0 0x0ac48000 0x0 0x1000>,
+                  <0x0 0x0ac40000 0x0 0x1000>,
+                  <0x0 0x0ac18000 0x0 0x3000>,
+                  <0x0 0x0ac00000 0x0 0x6000>,
+                  <0x0 0x0ac10000 0x0 0x8000>,
+                  <0x0 0x0ac87000 0x0 0x3000>,
+                  <0x0 0x0ac52000 0x0 0x4000>,
+                  <0x0 0x0ac4e000 0x0 0x4000>,
+                  <0x0 0x0ac6b000 0x0 0x0a00>;
+            reg-names = "csid0",
+                        "csid1",
+                        "csid_lite",
+                        "csiphy0",
+                        "csiphy1",
+                        "csiphy2",
+                        "vfe0",
+                        "vfe1",
+                        "vfe_lite",
+                        "bps",
+                        "camnoc",
+                        "cpas_cdm",
+                        "cpas_top",
+                        "icp_csr",
+                        "icp_qgic",
+                        "icp_sierra",
+                        "ipe0",
+                        "jpeg_dma",
+                        "jpeg_enc",
+                        "lrme";
+
+            clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+                     <&camcc CAM_CC_CPAS_AHB_CLK>,
+                     <&camcc CAM_CC_CSIPHY0_CLK>,
+                     <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY1_CLK>,
+                     <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY2_CLK>,
+                     <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+                     <&camcc CAM_CC_SOC_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_0_CLK>,
+                     <&camcc CAM_CC_IFE_0_AXI_CLK>,
+                     <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_0_CSID_CLK>,
+                     <&camcc CAM_CC_IFE_1_CLK>,
+                     <&camcc CAM_CC_IFE_1_AXI_CLK>,
+                     <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_1_CSID_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+                     <&camcc CAM_CC_BPS_CLK>,
+                     <&camcc CAM_CC_BPS_AHB_CLK>,
+                     <&camcc CAM_CC_BPS_AXI_CLK>,
+                     <&camcc CAM_CC_BPS_AREG_CLK>,
+                     <&camcc CAM_CC_ICP_CLK>,
+                     <&camcc CAM_CC_IPE_0_CLK>,
+                     <&camcc CAM_CC_IPE_0_AHB_CLK>,
+                     <&camcc CAM_CC_IPE_0_AREG_CLK>,
+                     <&camcc CAM_CC_IPE_0_AXI_CLK>,
+                     <&camcc CAM_CC_JPEG_CLK>,
+                     <&camcc CAM_CC_LRME_CLK>;
+
+            clock-names = "gcc_ahb",
+                          "gcc_axi_hf",
+                          "camnoc_axi",
+                          "cpas_ahb",
+                          "csiphy0",
+                          "csiphy0_timer",
+                          "csiphy1",
+                          "csiphy1_timer",
+                          "csiphy2",
+                          "csiphy2_timer",
+                          "soc_ahb",
+                          "vfe0",
+                          "vfe0_axi",
+                          "vfe0_cphy_rx",
+                          "vfe0_csid",
+                          "vfe1",
+                          "vfe1_axi",
+                          "vfe1_cphy_rx",
+                          "vfe1_csid",
+                          "vfe_lite",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid",
+                          "bps",
+                          "bps_ahb",
+                          "bps_axi",
+                          "bps_areg",
+                          "icp",
+                          "ipe0",
+                          "ipe0_ahb",
+                          "ipe0_areg",
+                          "ipe0_axi",
+                          "jpeg",
+                          "lrme";
+
+            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                            <&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_0",
+                                 "hf_1",
+                                 "sf_mnoc";
+
+            interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 459 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 461 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 463 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 475 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 474 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 476 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid_lite",
+                              "csiphy0",
+                              "csiphy1",
+                              "csiphy2",
+                              "vfe0",
+                              "vfe1",
+                              "vfe_lite",
+                              "camnoc",
+                              "cdm",
+                              "icp",
+                              "jpeg_dma",
+                              "jpeg_enc",
+                              "lrme";
+
+            iommus = <&apps_smmu 0x0820 0x40>,
+                     <&apps_smmu 0x0840 0x00>,
+                     <&apps_smmu 0x0860 0x40>,
+                     <&apps_smmu 0x0c00 0x00>,
+                     <&apps_smmu 0x0cc0 0x00>,
+                     <&apps_smmu 0x0c80 0x00>,
+                     <&apps_smmu 0x0ca0 0x00>,
+                     <&apps_smmu 0x0d00 0x00>,
+                     <&apps_smmu 0x0d20 0x00>,
+                     <&apps_smmu 0x0d40 0x00>,
+                     <&apps_smmu 0x0d80 0x20>,
+                     <&apps_smmu 0x0da0 0x20>,
+                     <&apps_smmu 0x0de2 0x00>;
+
+            power-domains = <&camcc IFE_0_GDSC>,
+                            <&camcc IFE_1_GDSC>,
+                            <&camcc TITAN_TOP_GDSC>,
+                            <&camcc BPS_GDSC>,
+                            <&camcc IPE_0_GDSC>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "top",
+                                 "bps",
+                                 "ipe";
+
+            vdd-csiphy-1p2-supply = <&vreg_l11a_1p2>;
+            vdd-csiphy-1p8-supply = <&vreg_l12a_1p8>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    csiphy_ep0: endpoint {
+                        data-lanes = <0 1>;
+                        remote-endpoint = <&sensor_ep>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


