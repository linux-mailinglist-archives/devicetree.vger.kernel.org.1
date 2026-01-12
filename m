Return-Path: <devicetree+bounces-253749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A886D11186
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0150230DCA8F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523F033D6F3;
	Mon, 12 Jan 2026 08:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aEdpnvTk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O8RRrUgh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FC0182D2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205128; cv=none; b=PXElG0pUfsrClpAMF0ZIqxA5LgWE86l1TSW7Lk0fjjdQxkSoWg9dwZv5pyAGs7IiMDDmdOMSm920OhaTKNWuAorVl5tLjQ0herXRZt+tgIoiYSMka+xhnWPSXJxzE/DdS41lsMilKtrlRt0JU+JN4EbGW7irElkMOWYGBdz3jTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205128; c=relaxed/simple;
	bh=Rznn69BMnFu8KCTVIlxe/uOLPM3+JAJ2/akNkwjXKOA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pPcWSMXPVn+OknecAp2rKmryEbKM9ibZzVaj0ri4308cGIu7Q4ANx6C7gdpz5DHhHUdYKGu1hRWRrgqPDWX8NL46h9CCIfdBH/h0n0Ri9Exm0lqTdAKArl7Auo/AOsQnnmjCX8paSrs1QHocg3b9qV6pu5jjsFxIzvdkPx0F1tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aEdpnvTk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O8RRrUgh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C7OmH6555754
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:05:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S0AqcK/aGd/HowihO3yP7zwaEYWx4e/UTFbz2GKudFM=; b=aEdpnvTk1Jgsdckt
	NBiYrB5hwzVsxXOZ9aOUeHRXTy+KRSNsKMYBSaQ9v0u9Rv7K73AlgU2LEgfA4+V1
	gc/C19U41Ep2DALFDJ6svdHTnB/JF/NckLfE38oj4F6Hka+b6g5/5t0un2zLmMOi
	fsvN9DkMtyP+PBnA0uJgCw/AMsXxp6t54ESkmSvY10Q1CRB+WCHiDkzfoCkKrh7i
	mUA7zSSX2O5/1A1teFw64smVntqBjFAmdwlxuSR9rUlaOVbxvrGJ56lN9FIwecLf
	r317Lho8DH7MeeV7he1iIl6rg/UqFcZRVkKLs9jbN8VwTEkhXDnZp4PzNfyCOwD4
	e+wRMQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmvhw059q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:05:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a39993e5fso163633656d6.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768205120; x=1768809920; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0AqcK/aGd/HowihO3yP7zwaEYWx4e/UTFbz2GKudFM=;
        b=O8RRrUghwLt6Se+a8/Q+X7kgAYvHvuS6mj7E/oI4wCe9OIBi11ZOBsmFFi3lIseF8P
         RmlhdSrT3/n9sHDPPdPH/qqeA8nxBzGcohWsHePObpJzHFwF4w+OrKb4aV5nHlLZk2Nm
         GC6NpWbh5BVpMXt7VHi+8mL+2HSOp19wsHcRA8/sm7UotzLb0eA4vlQLyyNw5DM/g/JJ
         opCIWUFhuR+IerIQrO6DtZ0aRTdk5O8n8ff2/iYnrg19zrdFoW57mB+MAEdNhlElQhSH
         JNPq35kEnBDtqscitA1bWj6B9g1viRmIYOBE/BhbvLORD/8Lnbr5KaRt1mO1P9C7/7Tr
         exMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768205120; x=1768809920;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0AqcK/aGd/HowihO3yP7zwaEYWx4e/UTFbz2GKudFM=;
        b=J5cpuSPPLNnzMugZ/Bn17wjEldpFxFr3BBMgTS4yQn2cNy2d+AV1SJ5m2l7EM352yF
         adAos2KKDBexWlhGJ7Dnjoq5zubG1vewBwGv8gpFlsGXV1WFgX9TQLxHbQ8ucoHbHOBk
         Dl72JJuE0lNj/KnpJtU8dvvFgPaouCpxaQRkjr2F4Rabb0Wy4YuN82Wf4vAGHkGzF+0j
         IAhcmVuGXIUJIeLjLBLxDh9ziqH/CjL08BR8ES/7LAumZeKPiNxCIi4XLiA+0uxARJEi
         PZPWjqP8GcYb6OQaZxn0Kfrp5XLMDMeK7jFBQMpJS2xmlFMrkf3hiQo0ep2Ia2VVBwNP
         ITAw==
X-Forwarded-Encrypted: i=1; AJvYcCVAlEh8liozG1IbsvvPzQRsosTz81Lk/nDX2MK4uOYD9OGVO3IJTTCZv2LGyws59i/TdJxAzOpU2nds@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxs2lutKyzZk8VwVUkq8H92YFYsQiYK5o9HNR6+YfOnOrIq6qU
	UWbo4jLa1Q2X6RsgFDczMAj/TeTz+qESrZx+9F3pEkAbfPyvSZbrhPjlo4sMPWfXqFu+/H1IRRD
	JTHg7w8kYiTvImS+e9y+Yc7wSvrgsQVp8e3jd5lSO0WMz+5oUfmhCqMR2pUKiwli/
X-Gm-Gg: AY/fxX4fhZyKsF0FsY8wU94IaAV32Kp1EIw4hS7ZOankcfbd1C4UTapO+13dnwggLQy
	us2K40ThXkEgKCkxDxHpZgQbPYK4j9bBJWwmeBfWwxwliKmt8EBKk0kPz59wAPcjJoYgfZ/1o7i
	Dh2aBhA/hjGGecRvGMPCneA694gUOJCd3mXkzkSkHyD975ekE3D/zcxZMTqFcy/1CeZHBTbXD4r
	NfOnCie1JbaaAe61EoUtokwTEPicwCWC1gYMs22FjrLLS5OzgfZpB4xat8UdyuZjdxp+3xNy29Q
	KaU9nZNi5QCRMXALZQi3svsSrDWxUSk8hZWAzfZlryOfk+wzNIsUuOCS3FFifKZbylGmP9woGXk
	Xeqf7wtkRPKXT+LigGnf7+xkt8GJQGOZ1vPB3Lebi40JSW0HUXjpAJ20nO45gg+WFcIJT78fihY
	+w
X-Received: by 2002:a05:6214:2f06:b0:88a:2578:9fa9 with SMTP id 6a1803df08f44-89084179b9bmr274160636d6.2.1768205120380;
        Mon, 12 Jan 2026 00:05:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEehrPuHXXfJYz9y/WqmcMX89D1FQq1g6rZ9YUZsO8aFa/dx0fVhkEsAg2IZ1UmrAeJC8I0rw==
X-Received: by 2002:a05:6214:2f06:b0:88a:2578:9fa9 with SMTP id 6a1803df08f44-89084179b9bmr274160186d6.2.1768205119912;
        Mon, 12 Jan 2026 00:05:19 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8d39230sm123116201cf.6.2026.01.12.00.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 00:05:19 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 16:04:52 +0800
Subject: [PATCH v4 1/3] media: dt-bindings: Add qcom,sm6150-camss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-sm6150-camss-v4-1-0cd576d627f7@oss.qualcomm.com>
References: <20260112-sm6150-camss-v4-0-0cd576d627f7@oss.qualcomm.com>
In-Reply-To: <20260112-sm6150-camss-v4-0-0cd576d627f7@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768205107; l=17195;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=Rznn69BMnFu8KCTVIlxe/uOLPM3+JAJ2/akNkwjXKOA=;
 b=DyLOO8L3lIumHXe04qV64BSD/kMEKFtkwiKVxsamHokgzsNpNzbGCka7WNXZ3T+ekCD+ahbEn
 +9tK24+jVHqDqwHRFHUMuwSiTTCZEMnR7V5suvcA7O9bJ1ch1fQc1iG
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA2MiBTYWx0ZWRfX2aIWXHMQSgCV
 NwAmVIHT0xu8osQ1hxfK/EkA46Ytt5l7Df0/8GDRwafd5nyhO07hbTMMZilI5dCVtVIVwfgWvKk
 jhUp0NcdMDVRCF5GkkYLJOLKDfnGCE/kvVpvDwEa6Tr6B3Sgn81DixVmter9d2SnSa6qoiZNvQi
 NS+OZRfLeZLulrlc7KL7IVv9vvWAPjfpEGhj7yjKKl2dvEcsW27Npco/rbQjzx39qHnjB60xy02
 LumL0Hqz9TZE24dcABLl3m+zh2LWiKCgnLwHISCha8O8wFazvUOlx2VC+HzsOGfaE8wWLlTtOmT
 lmF8+5iFxOIWXpU6g1jR9K7WkuaGAv5GFzhPCzWbqVLWKSA/dNH8DVZb91wJNVdua904PI1yZbP
 wikLRXZoZT9rVc7gc6qCg7YevHMTHHoP96YhgAXOOfCka2gfVp8e7GNq81nLaPusBZaM4nd3fpc
 mb6qOcF4rrv9k57xIfQ==
X-Authority-Analysis: v=2.4 cv=JP02csKb c=1 sm=1 tr=0 ts=6964ab44 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=aFcfZ3UtOBUUIK6fB1MA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: p9Daz1gJy_B0iisOWIjIq2zQBJfGtsfV
X-Proofpoint-ORIG-GUID: p9Daz1gJy_B0iisOWIjIq2zQBJfGtsfV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120062

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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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


