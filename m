Return-Path: <devicetree+bounces-253632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B2ED0F5B4
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA8C630873AF
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC9634D38A;
	Sun, 11 Jan 2026 15:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R1QnqXQk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bTpoXT/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C592434C13D
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146574; cv=none; b=BcOA0sQYVo1xc6SM3XtljBYHE9kkzg/qzq6+5PgOs/WRx+Y/XozaR4y97zxZU072izRcGFNYLnXR18IuT9pTpOf2N7a6YAInbfj0S74PYb95PdmoCy+qzvAvcMNt1GOSdtzCebX+umQBEAT3VKlkvqoqxX4q458jqS6l1r7QpIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146574; c=relaxed/simple;
	bh=JIDJccGK6VCXUI5GwQl1csj/I7WBbeD2m5Vc289HB7I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aJALp1VxcC1vXszuxUUMzE2WDlNXxLwpfgmmgfIZTkNEuvnfZQbriGJqek1VLQ+AQzyU0KEfUOvdeNQE/A58yOIyC7iZzDQDQaMJ19fedsk0MnElEPJ7vl0hZd1Vfc6g9K8UfpQ464coCnX4PPx/VMNn6wv7WbLnmEeWqhfcOOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R1QnqXQk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bTpoXT/A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60B5q1x42070456
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=; b=R1QnqXQkTzRhjCts
	8u6NE1oPVSrcHA8ok3BM6UV+c0etqmLJZQZqnfJ3E+PCI+rgQ8bObVDkh5j7CzgO
	xgCsePW6hjMLlz4MCtUEuNHZ9tMyADfBUt5guF7w2jlo6U9/GcDUKQXmQUn2PQAg
	dMpTb6CMlNEnhQpj3B/XehmXYO0rG3d2x1QTyiR48XwamESVqx69QyWd5ue0NUzU
	Ec+NA5pDQr/qbhtah91e83Fx5vCkloEBtmX13Sb1+14rEzOMla9u5NNIZMaqWEng
	dGX9tDKBT1w7vjSsvLB8bbAzt4+Nja4cgmYmVkmDR95J3CAlzyxCGMJGo8iKJIuW
	Hl7RsQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkfhajb6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bbe16e0a34so1372889385a.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146567; x=1768751367; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=;
        b=bTpoXT/A+U0fOo5NjRkd9YJUgIPi3yUWCXYDrc0fwmjrb/zNNPGnKGvOjLRC09ESNV
         A9+FQXWGdjIjIWTdmZ9kxUPlALN1sT6fxfGFAntct5uVMcPKzyAC2uk52hkfEBVrvABs
         xcemaUNWm8TwpHdrFdMCx9A/LeGuS30q5MlIGro3Vdd2l99FtICtjWXb6FOoUwGCqpMz
         xzyBAXY1l4408RAHhNlkqIWVaq1I+IIqyLn3my8HSGcZVbGHMUSRBNc41TLYcCqedl+1
         7MfSHm6l7uP5RSCJ2yflVbS9H+sScgL0MKTLUH+zbUtXS9B7VbvkqfFCkmbTmsAGm0Ti
         I0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146567; x=1768751367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=;
        b=M6oTkCzdRksaqs1nO69pcBKaQNFf5KfJB2a6Ukx+c6a68LGugA5XgB3eO51CGbSVtg
         Wp39gmYfn/B7J5/6DfWFiMDi17hbITXQLCeMR4khx2wMtXQuX+RuLo6EtaatMgcaNwMW
         hldoohRE4kBfbfcjQmIc4dOSNkZ/YqoCRmQfq1Eu7WUu/n2YlKhBtYuTa/Waldpr6knv
         G4Dt4mkteXeU6/1nDX9owbQw12HBcXDSycZCrYgslKh8HSxBPbEl6NTHUIxSQXzwNibx
         4vjtbJEdQ+OlFRf5qzTnTWgko70iOEAFZyDNvyVTzMh5tAGreQIP4BWoZpDZP7048hqq
         /4rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgS0hhYUhwFD9vo+cPq9zkZ1Wh+EYNIojNF3ih0PuVa3gSZA0/TL+jWR7Ey0uJLrGWXeFdDA7kA+sz@vger.kernel.org
X-Gm-Message-State: AOJu0YwnEqMssFCzZZwIGeEBBEsoJBx53bSwMI3+63fRgUxRIY8iBDqJ
	fjshKgvtZLH0zMnwaTgo9pSIl/Hk4EYQoYgqVAW9wTBo1VfxhiX0zL4Nakz5Qr+iavqVYseTBM5
	Dq2pTzSKgnLNEm6kndJnL1AOsVGEmjh8jlv3xW9jZ+d0FKSRL1Qk27gE4IuuTkFGM
X-Gm-Gg: AY/fxX6BmEYDir+MAn8eLBQ2dZtfLoCZuvvhUoWSEiRxKTtTphi0eQcAMYb7ebpR7Ta
	pbWYvCQ2OfGQf9C0v8fHEFDY0q8GL2zY3KfpCMrW12r0yROKSjb1li5xE5kRdeaflLkZW1WY2/r
	L/n/MWE66ZDjb1MNYJ3pN2SVwiU57QDOv3u8u7eb8pfF/6aiHKtIMf7AYslIbAOWCdwXXVD4Rfz
	y4IeKmxGVmv7b6RSHztTfaxu9BrLk5FOhsmp9Ni8Dmz8vW7EYQm5CImBl+Hf2q5lL4aeQqpghlP
	Uwqj8WTksOhpQ/jQKJT8QliPzv4lNj7OCzDwDKoTNa4Tki/sZVgqz1Zi7rL0ARlHG13WiWRpORU
	xGJgXnQydtR0KVisX/bGqfCrAkXBXpJy1BA==
X-Received: by 2002:a05:620a:700d:b0:891:8c16:283b with SMTP id af79cd13be357-8c37f4c2b68mr2726974485a.9.1768146566950;
        Sun, 11 Jan 2026 07:49:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzq8ZGzt2rNPXkPrZtoXzEJSxDqHFRUmnm65uLI7N5xGOXTQyLaaW/jPA669AxROOGZSrf0w==
X-Received: by 2002:a05:620a:700d:b0:891:8c16:283b with SMTP id af79cd13be357-8c37f4c2b68mr2726972585a.9.1768146566516;
        Sun, 11 Jan 2026 07:49:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1637163166b.57.2026.01.11.07.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:49:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 11 Jan 2026 16:49:02 +0100
Subject: [PATCH RESEND v3 05/11] dt-bindings: bluetooth: qcom,wcn3990-bt:
 Split to separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260111-dt-bindings-qcom-bluetooth-v3-5-95e286de1da1@oss.qualcomm.com>
References: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
In-Reply-To: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5226;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=JIDJccGK6VCXUI5GwQl1csj/I7WBbeD2m5Vc289HB7I=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8Z3fbgOmqhVJhXJHbHWh+GpSF6cw30/Kvqon
 lD/z3CbouKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPGdwAKCRDBN2bmhouD
 18sRD/9NbyfiSNsBYdFncL15gQTgihmHSHOG0zC6GFLa4vsQGbWwO53z1ggQASPWpHOu3T/I9vD
 ev6GRcA/bgl6NTpg11g3SE+ICXzbuVhQIzZ0E2D5jQCgIhU2Eufn+F+3TTFVtIstw3z8tYP6ms8
 BhB4kWRDVrHhoP4qUTbkIC87lt0q1wDOrHKLLbO3fgTbLVVWi49KubbHv8gCi14uwrkKfN2Jx+n
 sCBF68Ug4iUFY/LFvpOGfueZO3kiKom2gmsG/OpU9CClgJObB40r7LCOxEjLf9ASrDSIVCgrJH3
 qiBXZ5+O2vZcKHZGR+q0s2fYe5p95BWXXPL8JMC9kszsQ+G28x/qlFjyEVdVZQqGBWQAKtYv4K5
 lZsJUqmEyKhbUwK8zW3V6yChbD0bD+ai2YBSvux3jYGJAhZAdCdKBmH6Bq3uq/Xxlh2+oVU0DPI
 KiZxxUH8L9A1Y57CmfnlHvOFOE00S2G07qnsI5GVHylnABP2F4FX7aQuni6nh5xvls4Vp89g823
 LHfUtui7VE59zVWg/9ThKN6ApCFLDUH2J8XVCRkozvGK32wTtFNBH4MmlB4UHlH5Y5v0AVZSCau
 tqCnSiddT/lfgQqqYKAohNrCF/FGWIuO8rn+XxWvfLG6Sx8ixwJessV+UGL4R7/+IQ8Mg754A+r
 msJpBNu6KY7Ih/A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: mVFTqTKi8WYJOpk7d6ByZE0DY709vYU6
X-Authority-Analysis: v=2.4 cv=bOEb4f+Z c=1 sm=1 tr=0 ts=6963c688 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TJdhL1X_YdA7ouKO9xEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: mVFTqTKi8WYJOpk7d6ByZE0DY709vYU6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NiBTYWx0ZWRfX4M5aD87vacrL
 mKFww1z/urBSznmp8ehyVjITpuOb6XFq4xC5VFCc+7clO1JvS/U6pgj/rjItKGIXo8Ht8d0Jpg4
 Ahorpel/SJ8WV9dRCNidX1bWN8vmP6mo029xzUKcuM+5nViGWdohp9zPYIDNaTX3kQ6k4A+KEp5
 HZZL/SQOkn6JeIBppv/nJR7SYTBDbjtPiM6Ph1pkj2iBkdHIgIKxqbHwXyXqd8kSEpfCOO3hnE7
 BezqKVHIM/gLjoKyl8M0JiCrgrdJ3TzAfjox92UZFaEWszjBTGCHKp1mvBb44Z3dl1JjSrmNfJO
 H1FEnjWNkoUKRMnrj6B7Pf7a/iXr2n47svxKGne1fXqM1CP+Y4b7sTBHIsKZDI06T9WQsjCUBXW
 LAhYBsz9ySiNQ6+dvk2AfDLFKgr5kBDwPkc1Tt375NEdstqOiv4p7CaahZeB6jC4zP//bXSBMnd
 aO6IR7FuyxD9AuaKa0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601110146

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn3990-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

This binding is very similar to qcom,wcn3950-bt, however devices have
additional VDD_CH1 supply.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Changes in v2:
1. Drop few supplies from qualcomm-bluetooth.yaml which are not used by
   devices left there.
---
 .../bindings/net/bluetooth/qcom,wcn3990-bt.yaml    | 66 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 47 ---------------
 2 files changed, 66 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
new file mode 100644
index 000000000000..89ceb1f7def0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn3990-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCN3990/WCN3991/WCN3998 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn3990-bt
+      - qcom,wcn3991-bt
+      - qcom,wcn3998-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  vddch0-supply:
+    description: VDD_CH0 supply regulator handle
+
+  vddch1-supply:
+    description: VDD_CH1 supply regulator handle
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddrf-supply:
+    description: VDD_RF supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - vddch0-supply
+  - vddio-supply
+  - vddrf-supply
+  - vddxo-supply
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        bluetooth {
+            compatible = "qcom,wcn3990-bt";
+            firmware-name = "crnv21.bin";
+            max-speed = <3200000>;
+            vddio-supply = <&vreg_s4a_1p8>;
+            vddch0-supply = <&vreg_l25a_3p3>;
+            vddch1-supply = <&vreg_l23a_3p3>;
+            vddrf-supply = <&vreg_l17a_1p3>;
+            vddxo-supply = <&vreg_l7a_1p8>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 82cce508e295..5581e810f08e 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,9 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,wcn3990-bt
-      - qcom,wcn3991-bt
-      - qcom,wcn3998-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
@@ -32,25 +29,9 @@ properties:
     description: gpio specifier is used to find status
                  of clock supply to SoC
 
-  clocks:
-    maxItems: 1
-    description: clock provided to the controller (SUSCLK_32KHZ)
-
   vddio-supply:
     description: VDD_IO supply regulator handle
 
-  vddxo-supply:
-    description: VDD_XO supply regulator handle
-
-  vddrf-supply:
-    description: VDD_RF supply regulator handle
-
-  vddch0-supply:
-    description: VDD_CH0 supply regulator handle
-
-  vddch1-supply:
-    description: VDD_CH1 supply regulator handle
-
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
@@ -117,21 +98,6 @@ allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn3990-bt
-              - qcom,wcn3991-bt
-              - qcom,wcn3998-bt
-    then:
-      required:
-        - vddio-supply
-        - vddxo-supply
-        - vddrf-supply
-        - vddch0-supply
-
   - if:
       properties:
         compatible:
@@ -178,19 +144,6 @@ allOf:
         - vddrfa1p8-supply
 
 examples:
-  - |
-    serial {
-
-        bluetooth {
-            compatible = "qcom,wcn3990-bt";
-            vddio-supply = <&vreg_s4a_1p8>;
-            vddxo-supply = <&vreg_l7a_1p8>;
-            vddrf-supply = <&vreg_l17a_1p3>;
-            vddch0-supply = <&vreg_l25a_3p3>;
-            max-speed = <3200000>;
-            firmware-name = "crnv21.bin";
-        };
-    };
   - |
     #include <dt-bindings/gpio/gpio.h>
     serial {

-- 
2.51.0


