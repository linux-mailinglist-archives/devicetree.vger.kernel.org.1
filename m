Return-Path: <devicetree+bounces-69468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBBF8CFEC7
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D03D1C22126
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A46713C8E4;
	Mon, 27 May 2024 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="CqQXoW8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BD713BC3D;
	Mon, 27 May 2024 11:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716808841; cv=none; b=Bq7q2fmn2dRUGpBZCqDjXKt31wQqGYYAY3WBqEis13qNqv6pxHFyHSNukz/SQtMhC4DPpR16bl7/w4TXL6t2G+L9dud0eTLa/TL3fd3zHFIZc0PQ9bpHymbebddaAu/L6etbFU6Ib2tc2aFCiaPK3gpegYin685xIf7anvHa8hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716808841; c=relaxed/simple;
	bh=WCg6n4q5M85c+JpnYAU3VMyQQVqPgvIn0XpeUFZ1nAQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cUV5owVsY8iNFFzxoJw5PwTHZqKNU7/zZ1fzQXo6rxQSMckAr6DBVrWlctODwU8eY7Xdvvwhusx+f3k/WWbtMRcP/FzGzFKYOYNbb7HoBJIm1Qt0dZiQ+xO9DTVQ2VmTVFFiVnPzpEFheBqAKZtR+Y5FF5rguSlELUEzAwgmt9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=CqQXoW8o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44RB5fHa003888;
	Mon, 27 May 2024 11:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xxCIDQQhefwuM08SiJpA6C7kyx3M+6XK8D63z9/CR+Q=; b=CqQXoW8ov5fV0fAf
	PZmc3c2/7aypwCZH8bZYIxs+SnpQmhEnvp5f1asfOUhIjgXbgzrcCejWLV0GsJLh
	xEeZaRHiHPWizn2/VKwh4p8BW4s2v97RDaaZCu5z0cEsNH7iVtqCTEXs8FHZdgQH
	xKYony5fZnfu/APptYBxbQXK7fr+U2KY90wyDCGfdMSD6NY1jtnFQhHy6AXaemDP
	Xxw5GsdWN4fc9gZ+0PHwy1SZPNXFKXcIi2avncJnpsrN64p9PXvIPR9CCB9DbjoP
	RWnnif/rst7e8Mc/lrFmGjRWG+HEv1lnkTwOPwBXDR8BSBqOtA/19UDIc43Ifqmh
	c6eoag==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yba1k3m1f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 May 2024 11:20:25 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44RBKPiO000479
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 May 2024 11:20:25 GMT
Received: from hu-mohs-hyd.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 27 May 2024 04:20:19 -0700
From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami
	<bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela
	<perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
CC: <alsa-devel@alsa-project.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_rohkumar@quicinc.com>,
        <quic_pkumpatl@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mohammad Rafi Shaik <quic_mohs@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [RESEND v5 1/7] ASoC: dt-bindings: document wcd937x Audio Codec
Date: Mon, 27 May 2024 16:49:50 +0530
Message-ID: <20240527111956.444425-2-quic_mohs@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240527111956.444425-1-quic_mohs@quicinc.com>
References: <20240527111956.444425-1-quic_mohs@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: i3Z2jZgWYWM60l0VdM_kyY6oEJf-hNWo
X-Proofpoint-GUID: i3Z2jZgWYWM60l0VdM_kyY6oEJf-hNWo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-27_01,2024-05-24_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 suspectscore=0 phishscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2405270093

From: Prasad Kumpatla <quic_pkumpatl@quicinc.com>

Document the Qualcomm WCD9370/WCD9375 Audio Codec and the
Soundwire devices than can be found on Qualcomm QCM6490 based platforms.

The Qualcomm WCD9370/WCD9375 Audio Codec communicates
with the host SoC over 2 Soundwire links to provide:
- 3 TX ADC paths with 4 differential AMIC inputs
- 6 DMIC inputs that are shared with AMIC input
- 4 Microphone BIAS
- RX paths with 4 PAs – HPHL/R, EAR and AUX
- Stereo Headphone output
- MBHC engine for Headset Detection

Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Co-developed-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,wcd937x-sdw.yaml      | 91 +++++++++++++++++++
 .../bindings/sound/qcom,wcd937x.yaml          | 82 +++++++++++++++++
 2 files changed, 173 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd937x-sdw.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd937x.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd937x-sdw.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd937x-sdw.yaml
new file mode 100644
index 000000000000..d3cf8f59cb23
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd937x-sdw.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd937x-sdw.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SoundWire Slave devices on WCD9370/WCD9375
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9370/WCD9375 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire slave devices. This bindings is for the
+  slave devices.
+
+properties:
+  compatible:
+    const: sdw20217010a00
+
+  reg:
+    maxItems: 1
+
+  qcom,tx-port-mapping:
+    description: |
+      Specifies static port mapping between device and host tx ports.
+      In the order of the device port index which are adc1_port, adc23_port,
+      dmic03_mbhc_port, dmic46_port.
+      Supports maximum 4 tx soundwire ports.
+
+      WCD9370 TX Port 1 (ADC1)               <=> SWR2 Port 2
+      WCD9370 TX Port 2 (ADC2, 3)            <=> SWR2 Port 2
+      WCD9370 TX Port 3 (DMIC0,1,2,3 & MBHC) <=> SWR2 Port 3
+      WCD9370 TX Port 4 (DMIC4,5,6,7)        <=> SWR2 Port 4
+
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 4
+    items:
+      enum: [1, 2, 3, 4]
+
+  qcom,rx-port-mapping:
+    description: |
+      Specifies static port mapping between device and host rx ports.
+      In the order of device port index which are hph_port, clsh_port,
+      comp_port, lo_port, dsd port.
+      Supports maximum 5 rx soundwire ports.
+
+      WCD9370 RX Port 1 (HPH_L/R)       <==>    SWR1 Port 1 (HPH_L/R)
+      WCD9370 RX Port 2 (CLSH)          <==>    SWR1 Port 2 (CLSH)
+      WCD9370 RX Port 3 (COMP_L/R)      <==>    SWR1 Port 3 (COMP_L/R)
+      WCD9370 RX Port 4 (LO)            <==>    SWR1 Port 4 (LO)
+      WCD9370 RX Port 5 (DSD_L/R)       <==>    SWR1 Port 5 (DSD)
+
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 5
+    maxItems: 5
+    items:
+      enum: [1, 2, 3, 4, 5]
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3210000 {
+        reg = <0x03210000 0x2000>;
+        #address-cells = <2>;
+        #size-cells = <0>;
+        wcd937x_rx: codec@0,4 {
+            compatible = "sdw20217010a00";
+            reg = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5>;
+        };
+    };
+
+    soundwire@3230000 {
+        reg = <0x03230000 0x2000>;
+        #address-cells = <2>;
+        #size-cells = <0>;
+        wcd937x_tx: codec@0,3 {
+            compatible = "sdw20217010a00";
+            reg = <0 3>;
+            qcom,tx-port-mapping = <2 2 3 4>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd937x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd937x.yaml
new file mode 100644
index 000000000000..de397d879acc
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd937x.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd937x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCD9370/WCD9375 Audio Codec
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description:
+  Qualcomm WCD9370/WCD9375 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire slave devices.
+
+allOf:
+  - $ref: dai-common.yaml#
+  - $ref: qcom,wcd93xx-common.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: qcom,wcd9370-codec
+      - items:
+          - const: qcom,wcd9375-codec
+          - const: qcom,wcd9370-codec
+
+  vdd-px-supply:
+    description: A reference to the 1.8V I/O supply
+
+required:
+  - compatible
+  - vdd-px-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    codec {
+        compatible = "qcom,wcd9370-codec";
+        pinctrl-names = "default", "sleep";
+        pinctrl-0 = <&wcd_reset_n>;
+        pinctrl-1 = <&wcd_reset_n_sleep>;
+        reset-gpios = <&tlmm 83 GPIO_ACTIVE_HIGH>;
+        vdd-buck-supply = <&vreg_l17b_1p8>;
+        vdd-rxtx-supply = <&vreg_l18b_1p8>;
+        vdd-px-supply = <&vreg_l18b_1p8>;
+        vdd-mic-bias-supply = <&vreg_bob>;
+        qcom,micbias1-microvolt = <1800000>;
+        qcom,micbias2-microvolt = <1800000>;
+        qcom,micbias3-microvolt = <1800000>;
+        qcom,micbias4-microvolt = <1800000>;
+        qcom,rx-device = <&wcd937x_rx>;
+        qcom,tx-device = <&wcd937x_tx>;
+        #sound-dai-cells = <1>;
+    };
+
+    /* ... */
+
+    soundwire@3210000 {
+        reg = <0x03210000 0x2000>;
+        #address-cells = <2>;
+        #size-cells = <0>;
+        wcd937x_rx: codec@0,4 {
+            compatible = "sdw20217010a00";
+            reg = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5>;
+        };
+    };
+
+    soundwire@3230000 {
+        reg = <0x03230000 0x2000>;
+        #address-cells = <2>;
+        #size-cells = <0>;
+        wcd937x_tx: codec@0,3 {
+            compatible = "sdw20217010a00";
+            reg = <0 3>;
+            qcom,tx-port-mapping = <1 2 3 4>;
+        };
+    };
+...
-- 
2.25.1


